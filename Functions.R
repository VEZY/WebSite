
Update_Publications= function(id,default_image= "Default_preview.png",
                              selected= FALSE,type= "2"){
  Publications= get_publications(id = id)

  for(i in 1:length(Publications$title)){
    namelist=
      c("---",
        paste0('title: "',gsub(pattern = "\"", "",as.character(Publications$title[i])),'"'),
        paste0('date: "',lubridate::ymd(paste0(Publications$year[i],"-01-01")),'"'),
        paste0('authors: \n',Format_Authors(x = Publications, i = i),''),
        paste0('publication_types: ["',type,'"]'),
        paste0('publication: "In *',as.character(Publications$journal[i]),'*"'),
        paste0('publication_short: "In *',get_Acronym(as.character(Publications$journal[i])),'*"'),
        'abstract: ',
        'summary: ',
        paste("featured: ", tolower(as.character(selected))),
        'projects: [""]',
        'url_pdf: ""',
        'url_preprint: ""',
        'url_code: ""',
        'url_dataset:  ""',
        'url_project:  ""',
        'url_slides:  ""',
        'url_video:  ""',
        'url_poster:  ""',
        'url_source:  ""',
        'math: true',
        'highlight: true',
        paste0('image: "',default_image,'"'),
        'caption:  ""',
        '---')
    namelist= paste(namelist,collapse = '\n')

    Filepath= file.path("content/publication",Publi_file_name(Publications,i))
    write_publi(Publications = Publications,namelist=namelist,Filepath = Filepath,i = i)
  }
}

Format_Authors= function(x,i){
  paste("-",unlist(strsplit(as.character(x$author[i]),",")),collapse = '\n')
}

Publi_file_name= function(x,i){
  Authors= unlist(strsplit(as.character(x$author[i]), ","))
  if(length(Authors)==1){
    Fname= paste0(Cite_publi(Authors),"_",x$year[i],".md")
  }else{
    Fname= paste0(Cite_publi(Authors),"_et_al_",x$year[i],".md")
  }

  return(Fname)
}

Cite_publi= function(x){
  unlist(strsplit(unlist(strsplit(x,","))[1]," "))[2]
}

get_Acronym= function(x){
  if(x==""){x= "NA"}
  Splitted= strsplit(x, " ")[[1]]

  if(length(Splitted)>1){
    No_tiny_words= Splitted[!grepl("^for$|^and$|^de$|^of$",Splitted)]
    First_only= substr(No_tiny_words,1,1)
    Acronym= paste(toupper(First_only),collapse = ".")
  }else{
    Acronym= Splitted
  }

  return(Acronym)
}

common_words= function(Filepath,Title){
  File_old= readLines(Filepath)
  Title_old= File_old[grep(pattern = "title",File_old)]
  Title_old= gsub(pattern = "(title = \")|\"",replacement = "",Title_old)
  Words_old= unlist(strsplit(Title_old, " "))
  Words_pattern= paste(paste0("^",Words_old,"$"),collapse = "|")
  Is_words= grepl(pattern = Words_pattern, x = unlist(strsplit(Title, " ")))
  sum(Is_words)/length(Is_words) # % of common words in the title
}



write_publi= function(Publications,namelist,Filepath,i,index=2){
  # Test if the publication name is free (no other documents with same name),
  # then writes it. If there is/are other documents with the sae name, check if the
  # title is approximately the same or not, and it is not, add a new publication with
  # a letter appended to the name (do it recursively).
  if(!file.exists(Filepath)){
    file.create(Filepath, showWarnings = TRUE)
    writeLines(text = namelist,con = Filepath,sep = '\n')
  }else{
    ComWords= common_words(Filepath = Filepath, Title = as.character(Publications$title[i]))
    if(ComWords<0.8){
      Filepath=
        file.path("content/publication/",
                  Publi_file_name(list(author=Publications$author[i],
                                       year= paste0(Publications$year[i],"_",letters[index])),1))
      write_publi(Publications,namelist,Filepath,i,index= index+1)
    }else{
      warning("File ",Filepath," exists already")
    }
  }
}

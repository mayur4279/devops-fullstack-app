FROM  golang:1.19-alphine AS backend   

workdir  /app  

COPY . .  

RUN go build -o main 

EXPOSE 8080   

cmd ["./main"]


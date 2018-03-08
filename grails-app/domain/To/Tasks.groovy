package To

class Tasks {

    String Title
    Date dateCreated
    Date dateModified
    Date dateCompleted
    static constraints = {
        dateCreated nullable: true
        dateCompleted nullable: true
        dateModified nullable: true
    }
}

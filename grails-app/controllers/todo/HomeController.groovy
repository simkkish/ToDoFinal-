package todo
import To.Tasks
class HomeController {

    def index() {
        List<Tasks> tasks=Tasks.list()
        render view:"index",model:[tasks:tasks]
    }
    def save(Tasks tasks) {
        tasks.dateCreated = new Date()
        tasks.dateModified = new Date()
        tasks.dateCompleted = null

        if (tasks.validate()) {
            tasks.save flush: true, failorError: true
            flash.Message = "Your info is recorded"

        } else {
            flash.Message = "There is some error!!!!!!!"

        }
        redirect action: "index"
    }
    //    I helped Alankar Pokhrel below this line so it may look identical
    def markCompleted() {
        Tasks tasks=Tasks.get(params.id)
        tasks.dateModified = new Date()
        tasks.dateCompleted = new Date()
        redirect action: "index"
    }
    def completedTask(){
        List<Tasks> tasks = Tasks.list()
        render view: "completedTask", model: [tasks: tasks]
    }
}

Todo =  $.mvc.model.extend("todo",{    validate:function(opts){        if(opts&&opts.trigger)            return "error validating";        return true;    },    text: '',    isComplete:false,    isArchived:false,    archiveItem:function(){        debugger;        this.isArchived=true;        this.isComplete=false;        this.save();        return this;    },    finishItem:function(){        this.isArchived=false;        this.isComplete=true;        this.save();        return this;    },    resetItem:function(){        this.isArchived=false;        this.isComplete=false;        this.save();        return this;    }});var todo = new Todo();
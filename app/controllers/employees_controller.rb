class EmployeesController < ApplicationController
    def index
        @employees = Employee.all # Se invoca a la clase product en el modelo, y se le indica que traiga todos los archivos
    end
    def new
        @employee = Employee.new
    end
    def create
        @employee = Employee.new(employee_params)
            if @employee.save # Valida si se guardo bien el nuevo empleado
                redirect_to employees_path # Redirecciona a employees_path que es el inicio
            else
                render :new # vuelve a mostrar el formulario
            end
    end
    def edit
        @employee = Employee.find(params[:idEmployee])
    end
    def update
        @employee = Employee.find(params[:idEmployee])
            if @employee.update(employee_params) # Valida si se guardo bien el nuevo empleado
                redirect_to employees_path # Redirecciona a employees_path que es el inicio
            else
                render :edit # vuelve a mostrar el formulario edit
            end
    end
    def delete
        @employee = Employee.find(params[:idEmployee])
        @employee.destroy # elimina el elemento de la db
        redirect_to employees_path
    end
    private
        def employee_params
            #
            params.require(:employee).permit(:idEmployee, :fullname, :occupation, :idBoss) # retorna filas de la tabla employees
        end
end

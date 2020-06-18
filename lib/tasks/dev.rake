namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    
    
    
    puts "Cadastrando Departamentos"
    10.times do |i|
      Departamento.create!(
        name: Faker::Name.name, 
        sigla: Faker::Name.initials 
      )
    end
    puts "Departamentos Cadastrados com sucesso"

    
    puts "Cadastrando Cursos"
    10.times do |i|
      Curso.create!(
        name: Faker::Educator.course_name, 
        sigla: Faker::Name.initials 
      )
    end
    puts "Cursos Cadastrados com Sucesso"
    

    puts "Cadastrando Professores"
    10.times do |i|
      Professore.create!(
        name: Faker::Name.name, 
        matProfessor: Faker::IDNumber.valid, 
        titulacao: Faker::Educator.degree 
      )
    end
    puts "Professores Cadastrado com sucesso"
    

    puts "Cadastrando Alunos"
    10.times do |i|
      Aluno.create!(
        name: Faker::Name.name,
        nomeCurso: Faker::Educator.course_name, 
        matAluno: Faker::IDNumber.valid,
      )
    end
    puts "Alunos cadastrados com sucesso"

    puts "Cadastrando Faculdade!"
    1.times do |i|
      Faculdade.create!(
        cursos: Curso.all.sample,
        departamentos: Derpatamento.all.sample,
        professores: Professore.all.sample,
        alunos: Aluno.all.sample
       
        # name:Faker::Educator.university,
        # telefone:Faker::IDNumber.valid,
        # endereco:Faker::Educator.campus
      )
    end
    puts "Faculdade Cadastrada com sucesso "
  end
end

# curl 127.0.0.1:3000/departamentos -i
# curl 127.0.0.1:3000/departamentos/10 -i
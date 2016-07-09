profesor_1 = Profesor.first
profesor_2 = Profesor.second
profesor_3 = Profesor.third

profesor_1.grupos << Grupo.first
profesor_1.grupos << Grupo.second

profesor_2.grupos << Grupo.first
profesor_2.grupos << Grupo.second

profesor_3.grupos << Grupo.second
profesor_3.grupos << Grupo.third
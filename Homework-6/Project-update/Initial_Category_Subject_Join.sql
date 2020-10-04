SELECT * FROM phount.expertise_category inner join category_subjects on expertise_category.category_id
inner join expertise_subject on category_subjects.subject_id = expertise_subject.subject_id 
where expertise_category.category_id = 1;
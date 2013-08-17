ActiveAdmin.register Section do
    controller do
        defaults :finder => :find_by_slug
    end
end

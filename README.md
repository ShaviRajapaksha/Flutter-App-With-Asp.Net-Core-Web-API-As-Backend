# Mobile App Backend – ASP.NET Core Web API

This project has a frontend developed with Flutter and a backend API built with ASP.NET Core Web API, Entity Framework Core, and SQL Server. It provides CRUD operations for managing users.

## Backend Technologies
- ASP.NET Core Web API (.NET 8)  
- Entity Framework Core  
- SQL Server / SQL Server Express  
- Swagger (OpenAPI)  

## Backend Screenshots
<table>
 <tr>
 <td>
<img width="1920" height="1044" alt="image" src="https://github.com/user-attachments/assets/63c89fba-1b25-42b0-ad7d-9f501c21fe75" />
 </td>
  <td>
<img width="1920" height="1039" alt="image" src="https://github.com/user-attachments/assets/222256e1-661d-4023-821c-889672cc8539" />
 </td>
 </tr>
 <tr>
 <td>
<img width="1920" height="1039" alt="image" src="https://github.com/user-attachments/assets/ac467e23-4657-45c9-9ef2-5c1e6a464ad6" />
 </td>
  <td>
<img width="1920" height="1035" alt="image" src="https://github.com/user-attachments/assets/c0aa7703-acca-4daa-a23d-a5372e5f6d4e" />
 </td>
 </tr>
 <tr>
 <td>
<img width="1920" height="1034" alt="image" src="https://github.com/user-attachments/assets/a6ff86f7-7dee-4e68-a4ac-92cfad427421" />
 </td>
  <td>
 </td>
 </tr> 
</table>


---

## Configuration

### Database Connection String

Update the connection string in `appsettings.json`:

```json
{
  "ConnectionStrings": {
    "DbConnectionString": "Server=YOUR_SERVER\\SQLEXPRESS;Database=WebApiDb;Trusted_Connection=True;MultipleActiveResultSets=true;TrustServerCertificate=true"
  }
}
```
## Migration
### Run the following commands in Package Manager Console:
Add-Migration InitialCreate
Update-Database

## Swagger API Documentation
http://localhost:5206/swagger

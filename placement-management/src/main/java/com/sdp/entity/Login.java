package com.sdp.entity;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="login")
public class Login {
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
    private String username;
    private String email;
    private String phno;
    private String collage;
	private String password;
    

    
public Login()
 {
		
}

public Login(Long id, String username, String email, String password) {
		
		this.id = id;
		this.username = username;
		this.email = email;
		this.phno = phno;
		this.collage = collage;
		this.password = password;

	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	 public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}
		
	public String getPhno() {
			return phno;
		}

		public void setPhno(String phno) {
			this.phno = phno;
		}

		public String getCollage() {
			return collage;
		}

		public void setCollage(String collage) {
			this.collage = collage;
		}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class AuthenticatePlayer_SampleScript : MonoBehaviour 
{
    public Text txtEmail, txtPassword; // these are set through the editor

    public void AuthorizePlayerBttn()
	{
		Debug.Log ("Authorizing Player...");
		new GameSparks.Api.Requests.AuthenticationRequest ()
			.SetUserName (txtEmail.text)
			.SetPassword (txtPassword.text)
			.Send ((response) => {

					if(!response.HasErrors)
					{
						Debug.Log("Player Authenticated... \n User Name: "+response.DisplayName);
					}
					else
					{
						Debug.Log("Error Authenticating Player... \n "+response.Errors.JSON.ToString());
					}

		});
	}

	public void AuthenticateDeviceBttn()
	{
		Debug.Log ("Authenticating Device...");
		new GameSparks.Api.Requests.DeviceAuthenticationRequest ()
			.SetDisplayName ("Randy")
			.Send ((response) => {

					if(!response.HasErrors)
					{
						Debug.Log("Device Authenticated...");
					}
					else 
					{
						Debug.Log("Error Authenticating Device...");
					}
		});
	}
}


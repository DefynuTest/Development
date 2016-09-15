/*package com.defynu.Controller;

import java.io.IOException;
import java.sql.SQLDataException;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptions {
	@ExceptionHandler(value=ArithmeticException.class)
	public String handleArithmeticException(Exception e)
	{
	
		return "ErrorException";
	}
	@ExceptionHandler(value=IOException.class)
	public String handleIOException(Exception e)
	{
	
		return "UserIOException";
	}
	@ExceptionHandler(value=NullPointerException.class)
	public String handleNullPointerException(Exception e)
	{
	
		return "ErrorException";
	}
	@ExceptionHandler(value=SQLDataException.class)
	public String SQLDataException(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=ArrayIndexOutOfBoundsException.class)
	public String ArrayIndexOutOfBoundsException(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=ClassNotFoundException.class)
	public String ClassNotFoundException(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=NoSuchFieldException.class)
	public String NoSuchFieldException(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=InterruptedException.class)
	public String InterruptedException(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=NoSuchMethodException.class)
	public String NoSuchMethodException(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=ClassCastException.class)
	public String ClassCastException(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=NumberFormatException.class)
	public String NumberFormatException(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=IllegalThreadStateException.class)
	public String IllegalThreadStateException(Exception e)
	{
	
		return "ErrorException";
}	
	@ExceptionHandler(value=IllegalArgumentException	.class)
	public String IllegalArgumentException	(Exception e)
	{
	
		return "ErrorException";
}
	@ExceptionHandler(value=StringIndexOutOfBoundsException.class)
	public String StringIndexOutOfBoundsException(Exception e)
	{
	
		return "ErrorException";
}

}
*/
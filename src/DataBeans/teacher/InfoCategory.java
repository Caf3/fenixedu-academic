/*
 * Created on 7/Nov/2003
 * 
 * To change the template for this generated file go to Window - Preferences -
 * Java - Code Generation - Code and Comments
 */
package DataBeans.teacher;

import DataBeans.InfoObject;

/**
 * @author Leonor Almeida
 * @author Sergio Montelobo
 * 
 * To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Generation - Code and Comments
 */
public class InfoCategory extends InfoObject {

    private String shortName;
    private String longName;
    private String code;

	public InfoCategory() {
	}

    /**
     * @return Returns the code.
     */
    public String getCode()
    {
        return code;
    }

    /**
     * @param code The code to set.
     */
    public void setCode(String code)
    {
        this.code = code;
    }

    /**
     * @return Returns the longName.
     */
    public String getLongName()
    {
        return longName;
    }

    /**
     * @param longName The longName to set.
     */
    public void setLongName(String longName)
    {
        this.longName = longName;
    }

    /**
     * @return Returns the shortName.
     */
    public String getShortName()
    {
        return shortName;
    }

    /**
     * @param shortName The shortName to set.
     */
    public void setShortName(String shortName)
    {
        this.shortName = shortName;
    }

    public boolean equals(Object obj) {
        boolean resultado = false;
        if (obj instanceof InfoCategory) {
            resultado = getCode().equals(((InfoCategory) obj).getCode());
        }
        return resultado;
    }
}

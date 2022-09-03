package servlet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateTime
{
     private static String []months={"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"};
    private static String []days={ "Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

	
	public static String sysDate()
	{
		Date dt=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(dt);
	}

        public static String sysDateTime()
	{
		Date dt=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return sdf.format(dt);
	}
        
        public static Date getJavaDate(String date) throws ParseException
	{		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		return sdf.parse(date);
	}
        public static String getOracleDate(String date) throws ParseException
	{
                SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd");
                Date d=sdf1.parse(date);
                
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MMM-yyyy");
		return sdf.format(d);
	}
        
        public static int diff(Date date1, Date date2) {
                Calendar c1 = Calendar.getInstance();
                Calendar c2 = Calendar.getInstance();

                c1.setTime(date1);
                c2.setTime(date2);
                int diffDay = 0;

                if (c1.before(c2)) {
                    diffDay = countDiffDay(c1, c2);
                } else {
                    diffDay = countDiffDay(c2, c1);
                }

                 return diffDay;
         }
        
        public static int yearDff(Date date1, Date date2) {
                Calendar c1 = Calendar.getInstance();
                Calendar c2 = Calendar.getInstance();

                c1.setTime(date1);
                c2.setTime(date2);
                int diffDay = 0;

                if (c1.before(c2)) {
                    diffDay = countDiffDay(c1, c2);
                } else {
                    diffDay = countDiffDay(c2, c1);
                }

                diffDay=diffDay+1;
                
                int year=diffDay/365;
                int rem=diffDay%365;
                if(rem>182)
                    year=year+1;
                
                //if(year==0)
                  //  year=1;
                
                
                 return year;
         }
        
        
        public static int countDiffDay(Calendar c1, Calendar c2) {
                int returnInt = 0;
                while (!c1.after(c2)) {
                c1.add(Calendar.DAY_OF_MONTH, 1);
                returnInt++;
            }

            if (returnInt > 0) {
                returnInt = returnInt - 1;
            }

                return (returnInt);
    }
        public static String getElapsedTime(Date dateTime)
        {
            StringBuffer sb = new StringBuffer();
            Date current = Calendar.getInstance().getTime();
            long diffInSeconds = (current.getTime() - dateTime.getTime()) / 1000;

            /*long diff[] = new long[]{0, 0, 0, 0};
            /* sec *  diff[3] = (diffInSeconds >= 60 ? diffInSeconds % 60 : diffInSeconds);
            /* min *  diff[2] = (diffInSeconds = (diffInSeconds / 60)) >= 60 ? diffInSeconds % 60 : diffInSeconds;
            /* hours *  diff[1] = (diffInSeconds = (diffInSeconds / 60)) >= 24 ? diffInSeconds % 24 : diffInSeconds;
            /* days * diff[0] = (diffInSeconds = (diffInSeconds / 24));
             */
            long sec = (diffInSeconds >= 60 ? diffInSeconds % 60 : diffInSeconds);
            long min = (diffInSeconds = (diffInSeconds / 60)) >= 60 ? diffInSeconds % 60 : diffInSeconds;
            long hrs = (diffInSeconds = (diffInSeconds / 60)) >= 24 ? diffInSeconds % 24 : diffInSeconds;
            long days = (diffInSeconds = (diffInSeconds / 24)) >= 30 ? diffInSeconds % 30 : diffInSeconds;
            long months = (diffInSeconds = (diffInSeconds / 30)) >= 12 ? diffInSeconds % 12 : diffInSeconds;
            long years = (diffInSeconds = (diffInSeconds / 12));

            if (years > 0) {
                if (years == 1) {
                    sb.append("a year");
                } else {
                    sb.append(years + " years");
                }
                if (years <= 6 && months > 0) {
                    if (months == 1) {
                        sb.append(" and a month");
                    } else {
                        sb.append(" and " + months + " months");
                    }
                }
            } else if (months > 0) {
                if (months == 1) {
                    sb.append("a month");
                } else {
                    sb.append(months + " months");
                }
                if (months <= 6 && days > 0) {
                    if (days == 1) {
                        sb.append(" and a day");
                    } else {
                        sb.append(" and " + days + " days");
                    }
                }
            } else if (days > 0) {
                if (days == 1) {
                    sb.append("a day");
                } else {
                    sb.append(days + " days");
                }
                if (days <= 3 && hrs > 0) {
                    if (hrs == 1) {
                        sb.append(" and an hour");
                    } else {
                        sb.append(" and " + hrs + " hours");
                    }
                }
            } else if (hrs > 0) {
                if (hrs == 1) {
                    sb.append("1");
                } else {
                    sb.append(hrs + "");
                }
                if (min > 1) {
                    sb.append(":" + min + "");
                }
            } else if (min > 0) {
                if (min == 1) {
                    sb.append("1");
                } else {
                    sb.append(min + "");
                }
                if (sec > 1) {
                    sb.append(":" + sec + "");
                }
            } else {
                if (sec <= 1) {
                    sb.append("0:1");
                } else {
                    sb.append("0:" + sec + "");
                }
            }

            //sb.append(" ago");


            /*String result = new String(String.format(
            "%d day%s, %d hour%s, %d minute%s, %d second%s ago",
            diff[0],
            diff[0] > 1 ? "s" : "",
            diff[1],
            diff[1] > 1 ? "s" : "",
            diff[2],
            diff[2] > 1 ? "s" : "",
            diff[3],
            diff[3] > 1 ? "s" : ""));*/
            return sb.toString();
        }

        public static String getElapsedTime1(Date dateTime)
        {
            StringBuffer sb = new StringBuffer();
            Date current = Calendar.getInstance().getTime();
            long diffInSeconds = (current.getTime() - dateTime.getTime()) / 1000;

            /*long diff[] = new long[]{0, 0, 0, 0};
            /* sec *  diff[3] = (diffInSeconds >= 60 ? diffInSeconds % 60 : diffInSeconds);
            /* min *  diff[2] = (diffInSeconds = (diffInSeconds / 60)) >= 60 ? diffInSeconds % 60 : diffInSeconds;
            /* hours *  diff[1] = (diffInSeconds = (diffInSeconds / 60)) >= 24 ? diffInSeconds % 24 : diffInSeconds;
            /* days * diff[0] = (diffInSeconds = (diffInSeconds / 24));
             */
            long sec = (diffInSeconds >= 60 ? diffInSeconds % 60 : diffInSeconds);
            long min = (diffInSeconds = (diffInSeconds / 60)) >= 60 ? diffInSeconds % 60 : diffInSeconds;
            long hrs = (diffInSeconds = (diffInSeconds / 60)) >= 24 ? diffInSeconds % 24 : diffInSeconds;
            long days = (diffInSeconds = (diffInSeconds / 24)) >= 30 ? diffInSeconds % 30 : diffInSeconds;
            long months = (diffInSeconds = (diffInSeconds / 30)) >= 12 ? diffInSeconds % 12 : diffInSeconds;
            long years = (diffInSeconds = (diffInSeconds / 12));

            if (years > 0) {
                if (years == 1) {
                    sb.append("a year");
                } else {
                    sb.append(years + " years");
                }
                if (years <= 6 && months > 0) {
                    if (months == 1) {
                        sb.append(" and a month");
                    } else {
                        sb.append(" and " + months + " months");
                    }
                }
            } else if (months > 0) {
                if (months == 1) {
                    sb.append("a month");
                } else {
                    sb.append(months + " months");
                }
                if (months <= 6 && days > 0) {
                    if (days == 1) {
                        sb.append(" and a day");
                    } else {
                        sb.append(" and " + days + " days");
                    }
                }
            } else if (days > 0) {
                if (days == 1) {
                    sb.append("a day");
                } else {
                    sb.append(days + " days");
                }
                if (days <= 3 && hrs > 0) {
                    if (hrs == 1) {
                        sb.append(" and an hour");
                    } else {
                        sb.append(" and " + hrs + " hours");
                    }
                }
            } else if (hrs > 0) {
                if (hrs == 1) {
                    sb.append("an hour");
                } else {
                    sb.append(hrs + " hours");
                }
                if (min > 1) {
                    sb.append(" and " + min + " minutes");
                }
            } else if (min > 0) {
                if (min == 1) {
                    sb.append("a minute");
                } else {
                    sb.append(min + " minutes");
                }
                if (sec > 1) {
                    sb.append(" and " + sec + " seconds");
                }
            } else {
                if (sec <= 1) {
                    sb.append("about a second");
                } else {
                    sb.append("about " + sec + " seconds");
                }
            }

            //sb.append(" ago");


            /*String result = new String(String.format(
            "%d day%s, %d hour%s, %d minute%s, %d second%s ago",
            diff[0],
            diff[0] > 1 ? "s" : "",
            diff[1],
            diff[1] > 1 ? "s" : "",
            diff[2],
            diff[2] > 1 ? "s" : "",
            diff[3],
            diff[3] > 1 ? "s" : ""));*/
            return sb.toString();
        }


       
}

/**************************************************************************************************************************
 Note: For Pig only, in order to call other pig script, so that statement from the script are available in command history 
/**************************************************************************************************************************/
run /home/student/bdm/pig/1_load_data.pig;
run /home/student/bdm/pig/2_query_data.pig;


/********************************
* Query data for quick insights
*********************************/
/* (5) [Communication] Top 20 Listings Based on Review Score, with review number more than 50 */
top20_comm = order join_listing_50review by listing_reviews::review_scores_communication DESC;
top20_comm = foreach top20_comm 
			generate listing_reviews::listing_id..listing_reviews::listing_url, 
				 listing_reviews::review_scores_communication,
				 filter_50::review_count;
top20_comm = limit top20_comm 20;
/*dump top20_comm;*/


store top20_comm into '/bdm/SINGAPORE/output/pig/output_p2_5';

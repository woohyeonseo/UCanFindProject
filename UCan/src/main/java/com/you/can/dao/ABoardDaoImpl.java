package com.you.can.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.you.can.dto.ABoardDto;

import com.you.can.dto.ABoardFileMapDto;
import com.you.can.dto.StatusJoinDto;


@Repository
public class ABoardDaoImpl implements ABoardDao{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public int aboardInsert(ABoardDto dto) {
		KeyHolder keyHolder = new GeneratedKeyHolder(); 
		
		String sql = 
	              "insert into aboard ( "
	            + "USER_SEQ, TITLE, CONTENT, REG_DT , READ_COUNT ,PLACE_ID, PLACE_NAME, PLACE_LAT, "
	            + " PLACE_LNG, PLACE_ADDRESS, DOG_ID) "
	            + "values ( ?, ?, ?, now(), 0 ,?, ?, ?, ?, ?,?)";
	      jdbcTemplate.update(connection -> {
		         PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		         ps.setString(1, dto.getUserSeq());
		         ps.setString(2, dto.getTitle());
		         ps.setString(3, dto.getContent());
		         ps.setString(4, dto.getPlaceId());
		         ps.setString(5, dto.getPlaceName());
		         ps.setDouble(6, dto.getPlaceLat());
		         ps.setDouble(7, dto.getPlaceLng());
		         ps.setString(8, dto.getPlaceAddress());
		         ps.setInt(9, dto.getDogId());
		         return ps;
		      }, keyHolder);
		    
		      return keyHolder.getKey().intValue();
		}
	
	  @Override
	   public int aboardInsertFile(ABoardFileMapDto dto) {
	      String sql = 
	              "insert into board_filemap ( "
	            + "BOARD_ID, FILE_NAME, FILE_CONTENT_TYPE, FILE_URL, REG_DT) "
	            + "values ( ?, ?, ?, ?, ?)";
	      
	      
	      return jdbcTemplate.update(
	            sql, 
	            dto.getBoardId(),
	            dto.getFileName(),
	            dto.getFileContentType(),
	            dto.getFileUrl(),	            
	            dto.getRegDt()
	      );
	   }
	  
	  @Override
	   public List<ABoardFileMapDto> aboardDetailFileList(int boardId) {
	      String sql = 
	            "   SELECT  FILE_ID,  " +
	            "         BOARD_ID, " +
	            "           FILE_NAME, " +
	            "           FILE_CONTENT_TYPE, " +
	            "           FILE_URL, " +
	            "           REG_DT " +
	            "    FROM board_filemap " +
	            "   WHERE BOARD_ID = ? ";
	      
	      return jdbcTemplate.query(sql, new ABoardFileMapMapper(), boardId);
	   }
	  

		@Override 
		public List<ABoardDto> aboardList(int limit, int offset) { 
			// TODO Auto-generated method stub 

			
	        String sql = 
	                "SELECT SQL_CALC_FOUND_ROWS A.* FROM ( " +
	                " SELECT b.BOARD_ID, " +
	                      " b.USER_SEQ, "+
	                      " u.USER_NAME, "+
	                      " u.USER_PROFILE_IMAGE_URL, "+
	                      " b.TITLE, "+
	                      " b.CONTENT, " +
	                      "b.REG_DT,  " +
	                      " b.READ_COUNT, "+
	                      "b.PLACE_ID, "+
	                     "b.PLACE_NAME, "+
	                     "b.PLACE_LAT, "+
	                     "b.PLACE_LNG, "+
	                     "b.PLACE_ADDRESS, "+
	                     "b.DOG_ID , "+
	                     "'' DOG_NAME, "+
	                     "b.STATUS_CK"+
	                " FROM aboard b, user u " +
	                " WHERE b.USER_SEQ = u.USER_SEQ "+
	                " ORDER BY BOARD_ID DESC "+
	                ") A LIMIT ? OFFSET ?; ";
		    return jdbcTemplate.query(sql, new ABoardMapper(), limit, offset);

					//jdbcTemplate.query(new BoardMapper(), limit, offset);
		}
	  
		@Override
		public ABoardDto aboardDetail(int boardId) {
			String sql = 
					" SELECT  b.BOARD_ID, "
					+ "       b.USER_SEQ,"
					+ "       u.USER_NAME, "
					+ "       u.USER_PROFILE_IMAGE_URL, "
					+ "        b.TITLE,"
					+ "        b.CONTENT,"
					+ "         b.REG_DT, "
					+ "         b.READ_COUNT,"
					+ "			b.PLACE_ID, "
	                +"			b.PLACE_NAME, "
	                +"			b.PLACE_LAT, "
	                +"			b.PLACE_LNG, "
	                +"			b.PLACE_ADDRESS, "
	                +"			(select DOG_NAME from DOG where DOG_ID = b.DOG_ID) DOG_NAME, "
	                +"			b.STATUS_CK"
					+"			FROM aboard b, user u "
					+ " WHERE b.USER_SEQ = u.USER_SEQ "
					+ " AND b.BOARD_ID= ?";
			
			
			return jdbcTemplate.queryForObject(sql, new ABoardMapper(), boardId);
		}
	
		@Override
		public int aboardUpdate(ABoardDto dto) {
			String sql = "update aboard set TITLE = ?, CONTENT = ? where BOARD_ID = ? ";
				
			
			return jdbcTemplate.update(sql, dto.getTitle(),dto.getContent(),dto.getBoardId());
		}
		
		   @Override
		   public int aboardListTotalCnt() {
		      
		      String sql = "SELECT count(*) FROM aboard ";
		      
		      return jdbcTemplate.queryForObject(sql, Integer.class);
		   }
		   

		   @Override
		   public int aboardDeleteFile(int boardId) {
		      String sql = 
		              "delete from board_filemap "
		            + "where BOARD_ID = ? ";
		      
		      return jdbcTemplate.update(
		            sql, 
		            boardId
		      );
		   }
		   
		   @Override
		   public int aboardDelete(ABoardDto dto) {
		      String sql = 
		              "delete from aboard "
		            + "where BOARD_ID = ? ";
		      
		      return jdbcTemplate.update(
		            sql, 
		            dto.getBoardId()
		      );
		      
		   }
		   
		   @Override
		   public List<String> aboardDeleteFileUrl(int boardId){
			   String sql = "select file_url from board_filemap where BOARD_ID = ? ";
			   return jdbcTemplate.queryForList(sql, String.class, boardId);  //string  두개 쓸때는 queryForList
			   
		   }
		   @Override
		   public List<ABoardDto> aboardListSearchWord(int limit, int offset, String searchWord) {
		      
		      String likeSearchWord = "%" + searchWord + "%";

		      String sql = 
			            "SELECT SQL_CALC_FOUND_ROWS A.* FROM ( " +
			            "   SELECT  b.BOARD_ID,  " +
			            "         b.USER_SEQ, " +
			            "         u.USER_NAME, " +
			            "         u.USER_PROFILE_IMAGE_URL, " +
			            "           b.TITLE, " +
			            "           b.CONTENT, " +
			            "           b.REG_DT, " +
			            "           b.READ_COUNT, " +
			            "			b.PLACE_ID, "+
	                    "			b.PLACE_NAME, "+
	                    "			b.PLACE_LAT, "+
	                    "			b.PLACE_LNG, "+
	                    "			b.PLACE_ADDRESS, "+
	                    "			b.DOG_ID , "+
	                    "			'' DOG_NAME,"+
	                    "			b.STATUS_CK"+
			            "    FROM aboard b, user u " +
			            "   WHERE b.TITLE LIKE ? " +
			            "     AND b.USER_SEQ = u.USER_SEQ " +
			            "    ORDER BY BOARD_ID DESC " +
			            ") A LIMIT ? OFFSET ?; ";

		      return jdbcTemplate.query(sql, new ABoardMapper(), likeSearchWord, limit, offset);
		   }
		   @Override
		   public int aboardListSearchWordTotalCnt(String searchWord) {
		      
		      String likeSearchWord = "%" + searchWord + "%";
		      
		      String sql = "SELECT count(*) FROM aboard WHERE TITLE LIKE ? ";
		      
		      return jdbcTemplate.queryForObject(sql, Integer.class, likeSearchWord);
		   }


			@Override 
			public List<StatusJoinDto> fileImageList() {
				String sql = "select f.FILE_ID, f.FILE_URL, f.FILE_NAME, a.BOARD_ID "
							+" FROM board_filemap f, aboard a "
							+" WHERE f.board_id = a.board_id "
							+"  AND a.status_ck = 0";
				
				return jdbcTemplate.query(sql, new StatusJoinMapper());
			}

			@Override
			public int aboardUserReadCnt(int boardId, int userSeq) {
			      String sql = "SELECT count(*) FROM board_user_read WHERE board_id = ? and user_seq = ? ";
			      
			      return jdbcTemplate.queryForObject(sql, Integer.class, boardId, userSeq);
			   }

			@Override
			public int aboardUpdateReadCnt(int boardId) {	
				      String sql =
				              "update board "
				            + "   set READ_COUNT = READ_COUNT + 1 "
				            + " where BOARD_ID = ? ";
				      
				      return jdbcTemplate.update(sql, boardId);
				   }

			@Override
			public int aboardInsertUserRead(int boardId, int userSeq) {
			      String sql = "INSERT INTO board_user_read ( board_id, user_seq ) VALUES ( ?, ? )";
			      
			      return jdbcTemplate.update( sql, boardId, userSeq );
			   }
			
			}

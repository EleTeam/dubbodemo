package com.et.dubbodemo.base.service;

import com.et.dubbodemo.base.entity.BaseEntity;
import com.et.dubbodemo.base.mapper.BaseMapper;

/**
 * 服务层根接口
 * @param <T> 数据库服务层必须传入类参数(实体), 限定添加、修改和查询等的操作为实体
 * @author 黄治华
 * @email 908601756@qq.com
 */
public interface BaseService<T extends BaseEntity> {

    /**
     * 获取该服务层对应的mybatis mapper
     * @return
     */
    BaseMapper getMapper();

    /**
     * 添加对象
     * @param entity
     * @return 受影响的行数
     */
    int add(T entity);

//    /**
//     * Insert新对象list【object】【map】
//     * @param objectList
//     * @return 受影响的行数
//     */
//    int addList(List<T> objectList);

    /**
     * 更新对象
     * @param entity
     * @return 受影响的行数
     */
    int update(T entity);

//    /**
//     * <p>通过实体对象方式变量更新</p>
//     * <p>需要设置【id】</p>
//     * @param entity 更新对象
//     * @return 受影响的结果
//     * @throws ServiceException
//     */
//    int updateChanged(T entity) throws ServiceException;

//    /**
//     * <p>通过实体对象删除更新</p>
//     * <p>需要设置【id】</p>
//     * @param t 删除对象
//     * @return 受影响的结果
//     * @throws ServiceException
//     */
//    int delete(T t);

    /**
     * 查找对象是否存在
     * @param entity
     * @return
     */
    boolean isExist(T entity);

    /**
     * <p>获取对象</p>
     * <p>备注：具体能获取对象由mapper文件决定,类型不匹配，会产生未知错误</p>
     *
     * @param entity 参数
     * @return 返回对象【与mapper文件相同】
     */
    T find(T entity);

    /**
     * 根据字段查询一个对象的若干字段
     * @param entity 实体参数, 该对象必须有属性queryFields
     * @return T|null
     */
    T findWithQueryFields(T entity);

//    /**
//     * <p>返回list</p>
//     * <p>备注：具体list对象 由 mapper 声明决定</p>
//     *
//     * @param entity
//     * @return
//     */
//    List<T> findList(T entity);

    /**
     * 翻页
     * @return
     */
//    <T> void fillPager(PageModel<T> pager);
//    List<T> findPage(PageModel pager);
//    int findPageCount(PageModel pager);

}

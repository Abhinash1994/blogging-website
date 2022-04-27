-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: CodingBlog
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20200613173828-create-user.js'),('20210129132143-create-cd-blog-article.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_blog_articles`
--

DROP TABLE IF EXISTS `cd_blog_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_blog_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `metadesc` text,
  `sortdesc` text,
  `description` text,
  `videourl` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `keyword` text,
  `slug` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_blog_articles`
--

LOCK TABLES `cd_blog_articles` WRITE;
/*!40000 ALTER TABLE `cd_blog_articles` DISABLE KEYS */;
INSERT INTO `cd_blog_articles` VALUES (3,'How do update states onChange in an array of object in React Hooks','reactjs','Bechu kumar','In this article we have change states using React Hooks.','In this short article, we will show you How do update states onchange in an array of object in React Hooks. Sometimes we have to change states then we unable to change states so will show you ','<p>Now, when you are fetching data from API then we will get data in Array but when we changes any row value then will get error so this is big question for us.</p><p>Changes in state and/or props will both trigger a re-render of our React component. However, changes in state can only happen internally due to components changing their own state. Thus, a component can trigger changes in its own state. A component cannot change its props.</p><h3><strong style=\"background-color: rgb(255, 194, 102);\">Methods to Get data from API Using Axios</strong></h3><ol><li>useEffect() Method</li><li>Declare States()</li></ol><pre class=\"ql-syntax\" spellcheck=\"false\">export default function StateChangesArray(props) {\n  const [applistLocale, setLocaleData] = useState(\"\");\n      return (\n          &lt;div&gt;\n              Hooks method\n          &lt;/div&gt;\n      );\n  }\n</pre><p>In this article we are using functional component using react Hooks. after, that we assign variable inside the state.</p><pre class=\"ql-syntax\" spellcheck=\"false\">const { applist = [] } = useSelector(\n        (state) =&gt; state.orgDetailsReducer,\n    );\nuseEffect(() =&gt; {\n        dispatch(getOrgPatnerList())\n }, [dispatch])\n\nuseEffect(() =&gt; {\n        setLocaleData(applist)\n, [])\n\n\n//let applist = [{id: 1, name: \"a\"}, {id: 1, name: \"c\"},{id: 1, name: \"b\"}]\n</pre><p>we are assign state inside the function component. we are fetching data from Redux so don\'t be confuse why i used \"applist\". It\'s means we stored data in applist it\'s depend on you.</p><pre class=\"ql-syntax\" spellcheck=\"false\">&lt;table className=\"table table-striped\"&gt;\n  &lt;thead&gt;\n     &lt;tr&gt;\n        &lt;th&gt;#&lt;/th&gt;\n        &lt;th&gt;Banner&lt;/th&gt;\n        &lt;th&gt;APP_NAME &lt;/th&gt;\n    &lt;/tr&gt;\n   &lt;/thead&gt;\n     &lt;tbody&gt;\n         {applistLocale.length == 0 ? &lt;p&gt;No data&lt;/p&gt; : \n             applistLocale.map((row, index) =&gt; (\n                &lt;tr key={index}&gt;\n                   &lt;Switch onChange={(e)=&gt;handleStatus(index,e,row)} checked={row.STATUS} /&gt;\n                &lt;/tr&gt;\n                ))\n              }\n    &lt;/tbody&gt;\n&lt;/table&gt;\n</pre><p>Just we show data in array format. First, we got data in array then we stored data in locale then we fetch data in table.</p><pre class=\"ql-syntax\" spellcheck=\"false\">const handleStatus = (index,e,row) =&gt; {\n        let list = [...applistLocale];\n        list[index].STATUS = e\n        setLocaleData(list)\n        let finaldata = { ORG_ID: data.ORG_ID,APP_ID: row.APP_ID, PARTNER_ID: row.PARTNER_ID, STATUS: e};\n        dispatch(createAppDisabled({ finaldata }))\n    }\n</pre><p>Now, when click \"handleStatus\" button then automatic state change in array then we show data in table.</p><p>we are giving full code for this article just you have to find your best solution from this article.</p><pre class=\"ql-syntax\" spellcheck=\"false\">import React, { useEffect, useState } from \'react\';\nimport { useDispatch, useSelector } from \"react-redux\";\nimport Switch from \"react-switch\";\nimport { getOrgPatnerList, createAppDisabled } from \"../../../../../store/rootAction\";\nimport {\n    makeStyles, Modal\n} from \'@material-ui/core/\';\n\n\nfunction getModalStyle() {\n    const top = 40\n    const left = 43\n    return {\n        top: `${top}%`,\n        left: `${left}%`,\n        transform: `translate(-${top}%, -${left}%)`,\n    };\n}\n\n\nconst useStyles = makeStyles((theme) =&gt; ({\n    paper: {\n        position: \'absolute\',\n        width: \"60%\",\n        backgroundColor: theme.palette.background.paper,\n        border: \'2px solid #000\',\n        boxShadow: theme.shadows[5],\n        padding: theme.spacing(2, 4, 3),\n    },\n}));\n\n\nexport default function PartnerAPProllModal(props) {\n    const classes = useStyles();\n    const dispatch = useDispatch();\n    const [modalStyle] = useState(getModalStyle);\n    const [open, setOpen] = useState(false);\n    const [data, setData] = useState(\"\");\n    const [applistLocale, setLocaleData] = useState(\"\");\n\n\n\n    const { applist = [] } = useSelector(\n        (state) =&gt; state.orgDetailsReducer,\n    );\n\n\n    useEffect(() =&gt; {\n        dispatch(getOrgPatnerList())\n    }, [dispatch])\n\n\n    useEffect(() =&gt; {\n        setData(props.data)\n    }, [props.data])\n\n\n    useEffect(() =&gt; {\n        setLocaleData(applist)\n    }, [])\n\n\n    useEffect(() =&gt; {\n        setOpen(props.open)\n    }, [props.open])\n\n\n    const handleClose = () =&gt; {\n        props.modalClosed(true)\n        setOpen(false);\n    };\n    const handleStatus = (index,e,row) =&gt; {\n        let list = [...applistLocale];\n        list[index].STATUS = e\n        setLocaleData(list)\n        let finaldata = { ORG_ID: data.ORG_ID,APP_ID: row.APP_ID, PARTNER_ID: row.PARTNER_ID, STATUS: e};\n        dispatch(createAppDisabled({ finaldata }))\n    }\n    const body = (\n        &lt;div style={modalStyle} className={classes.paper}&gt;\n            &lt;table className=\"table table-striped\"&gt;\n                &lt;thead&gt;\n                    &lt;tr&gt;\n                        &lt;th&gt;#&lt;/th&gt;\n                        &lt;th&gt;Banner&lt;/th&gt;\n                        &lt;th&gt;Status&lt;/th&gt;\n                    &lt;/tr&gt;\n                &lt;/thead&gt;\n                &lt;tbody&gt;\n                    {applistLocale.length == 0 ? &lt;p&gt;No data&lt;/p&gt; : \n                        applistLocale.map((row, index) =&gt; (\n                            &lt;tr key={index}&gt;\n                                &lt;td&gt;{index+1}&lt;/td&gt;\n                                &lt;tr key={index}&gt;\n                                 &lt;td&gt;&lt;Switch onChange={(e)=&gt;handleStatus(index,e,row)} checked={row.STATUS} /&gt;&lt;/td\n                                      ))\n                                  }\n                              &lt;/tbody&gt;\n                          &lt;/table&gt;\n                          \n                          &lt;/div&gt;\n                      &lt;/div&gt;\n                  );\n        }\n     }\n</pre><p>That’s it for today. I hope you will find your solution what you looking for couple of hours. Thank you for Reading this Article Happy Coding..!!</p>','','/how-do-update-states-onchange-in-an-array-of-object-in-react-hooks.png',NULL,'How do update states onchange in an array of object in React Hooks,update object in array react hooks,react hooks usestate array push,react update state array of objects,react hooks remove item from array,usereducer,usestate update array at index,react setstate array,react lifecycle methods,react js,componentwillreceiveprops,componentdidupdate,react setstate example,react setstate callback,react state,on state change react','how-do-update-states-onchange-in-an-array-of-object-in-react-hooks','2021-02-09 09:30:20','2021-02-09 13:04:29'),(4,'Best way to encrypt and decrypt json data symmetric key algorithm in node js','nodejs','Bechu kumar ','Encryption /Decryption logic is achieved by symmetric key algorithm. That’s constructed as a block cipher. It supports key size of 128, 192 and 256 bits. with data handling taking place in 128-bit blocks','Today, we’ll explain to you Best way to encrypt and decrypt json data symmetric key algorithm in node js. we have using symmetric key algorithm which is give to some parameters so on ','<p>The symmetric key algorithm is the best security provider to any website &amp; any key. so, Nodejs provides a built-in module called crypto that you can use to encrypt and decrypt strings, numbers, buffers, streams, and more. This module offers cryptographic functionality that includes a set of wrappers for OpenSSL\'s hash, HMAC, cipher, decipher, sign, and verify functions.&nbsp;</p><p><strong style=\"color: rgb(255, 194, 102); background-color: transparent;\">Encryption /Decryption Logic</strong><strong style=\"color: rgb(0, 0, 0); background-color: transparent;\">:</strong></p><p>Encryption /Decryption logic is achieved by symmetric key algorithm. That’s constructed as a block cipher. It supports the key sizes of 128, 192, and 256 bits. with data handling taking place in 128-bit blocks.</p><p><strong style=\"color: rgb(255, 194, 102);\">Use the below parameters for encryption:</strong></p><p>Padding: PKCS7</p><p>FeedbackSize: 128</p><p>Key: Codewithabhinash123</p><p><strong style=\"color: rgb(255, 194, 102);\">Need One package for encryption &amp; decryption</strong></p><blockquote>npm install crypto</blockquote><blockquote><span style=\"color: rgb(86, 156, 214);\">const</span> <span style=\"color: rgb(78, 201, 176);\">crypto</span> = <span style=\"color: rgb(220, 220, 170);\">require</span>(<span style=\"color: rgb(206, 145, 120);\">\'crypto\'</span>);</blockquote><p>Make One file in your project which is global access. so, we\'ll create a separate function &amp; file.</p><p>Import all those packages</p><pre class=\"ql-syntax\" spellcheck=\"false\">const crypto = require(\'crypto\');\nconst key =  process.env.ENCRYPTION_KEY || \"Codewithabhinash123\";\nvar keyBase64 = Buffer.from(key).toString(\'base64\');\nvar ivBase64 = Buffer.from(key).toString(\'base64\');\n</pre><p>Now, JSON data create or send from your API like this</p><pre class=\"ql-syntax\" spellcheck=\"false\">const plainText = {\n    \"name\":\"Abhinash kumar pandit\",\n    \"address\":\"Delhi,India\",\n    \"phone\":\"888888\"\n}\n</pre><p>After that, you have to make a different function for encrypted &amp; decrypted data</p><pre class=\"ql-syntax\" spellcheck=\"false\">   function encrypt(plainText) {\n        const key = Buffer.from(keyBase64, \'base64\');\n        const iv = Buffer.from(ivBase64, \'base64\');\n        const cipher = crypto.createCipheriv(getAlgorithm(keyBase64), key, iv);\n        // cipher.setAutoPadding(true)\n        let encrypted = cipher.update(JSON.stringify(plainText), \'utf8\', \'base64\')\n        encrypted += cipher.final(\'base64\');\n        return encrypted;\n    };\n</pre><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\"> function decrypt (messagebase64) {\n        const key = Buffer.from(keyBase64, \'base64\');\n        const iv = Buffer.from(ivBase64, \'base64\');\n      \n      const decipher = crypto.createDecipheriv(getAlgorithm(keyBase64), key, iv);\n    let decrypted = decipher.update(messagebase64, \'base64\');\n    decrypted += decipher.final();\n    return decrypted;\n}\n</pre><p>we have to also create one function for checking which Algorithm we have to use like \"AES-128-CBC\" OR \"AES-256-CBC. it\'s depends on your secret key &amp; so you have to write the same as this article.</p><pre class=\"ql-syntax\" spellcheck=\"false\">function decrypt (messagebase64) {\n        const key = Buffer.from(keyBase64, \'base64\');\n        const iv = Buffer.from(ivBase64, \'base64\');\n      \n      const decipher = crypto.createDecipheriv(getAlgorithm(keyBase64), key, iv);\n    let decrypted = decipher.update(messagebase64, \'base64\');\n    decrypted += decipher.final();\n    return decrypted;\n}\n</pre><p><span style=\"color: rgb(255, 194, 102);\">Encryption in JSON</span></p><p>To protect the private key plaintext you can use a KMS (Key Management Service) on a separate system. That keeps the private key out of memory access on the machine with the&nbsp;<strong>encrypted JSON</strong>&nbsp;file. You submit the&nbsp;<strong>encrypted</strong>&nbsp;file content to the KMS to be decrypted on load or vice versa on the store. so, the Full code of this below.</p><p><strong style=\"color: rgb(255, 194, 102);\">crypto.js</strong></p><pre class=\"ql-syntax\" spellcheck=\"false\">const crypto = require(\'crypto\');\nconst key =  process.env.ENCRYPTION_KEY || \"Codewithabhinash123\";\nvar keyBase64 = Buffer.from(key).toString(\'base64\');\nvar ivBase64 = Buffer.from(key).toString(\'base64\');\n\nconst plainText = {\n    \"name\":\"Abhinash kumar pandit\",\n    \"address\":\"Delhi,India\",\n    \"phone\":\"888888\"\n  }\n    \n  function getAlgorithm(keyBase64) {\n        var key = Buffer.from(keyBase64, \'base64\');\n        switch (key.length) {\n            case 16:\n                return \'aes-128-cbc\';\n            case 32:\n                return \'aes-256-cbc\';\n    \n        }\n        throw new Error(\'Invalid key length: \' + key.length);\n    }\n    \n    \n    function encrypt(plainText) {\n        const key = Buffer.from(keyBase64, \'base64\');\n        const iv = Buffer.from(ivBase64, \'base64\');\n        const cipher = crypto.createCipheriv(getAlgorithm(keyBase64), key, iv);\n        // cipher.setAutoPadding(true)\n        let encrypted = cipher.update(JSON.stringify(plainText), \'utf8\', \'base64\')\n        encrypted += cipher.final(\'base64\');\n        return encrypted;\n    };\n    \n    \n    function decrypt (messagebase64) {\n        const key = Buffer.from(keyBase64, \'base64\');\n        const iv = Buffer.from(ivBase64, \'base64\');\n      \n      const decipher = crypto.createDecipheriv(getAlgorithm(keyBase64), key, iv);\n    let decrypted = decipher.update(messagebase64, \'base64\');\n    decrypted += decipher.final();\n    return decrypted;\n}\n\nmodule.exports = {\n    encrypt,\n    decrypt\n};\n</pre><p>Now, we write this some line of code which very help full. just I have to convert JSON data into an encrypted file after that we will get some response.</p><p><br></p><h5><strong>That’s it for today. I hope you will find your solution what you looking for for a couple of hours. Thank you for Reading this Article Happy Coding..!!</strong></h5>','','/best-way-to-encrypt-and-decrypt-json-data-symmetric-key-algorithm-in-node-js.jpg',NULL,'nodejs crypto,npm encrypt decrypt,best way to encrypt and decrypt json data symmetric key algorithm in node js,nodejs encrypt password,nodejs crypto sha256 decrypt,crypto.createcipheriv example,node js openssl decrypt,how to encrypt json data in node js,cryptojs,createcipheriv,cipher,\ncrypto nodejs, codewithabhinash,\n','best-way-to-encrypt-and-decrypt-json-data-symmetric-key-algorithm-in-node-js','2021-02-12 07:20:02','2021-02-12 10:25:44');
/*!40000 ALTER TABLE `cd_blog_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `verify` tinyint(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 10:18:01

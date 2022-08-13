Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F391AC19F2D
	for <linux-phy@archiver.kernel.org>; Sat, 13 Aug 2022 12:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqEAxuymRSdh6otKfAYdEY7uEH9BQkQqE2L6tXR67pU=; b=ghPtT06Rd8ht57
	+WhLukChiK03eS7fx1gNuWUHzQLLjO9zG1+LC2V+UUAXGmVXEc3LFWSU+TdQH2f/vBKFOA/TmLYVp
	v6Gx8LpsLp6OPzV+qjBo6lXGRu1jkmL5bcM8tXLzTUKcqjmuRcexjcsoP+SvpkbQXlhsM4PXeq2aw
	sctIu904BXoeAbzkKeoy9senONXjz8ftksdxovJK6livDaMfZOXKUs9ECKEe9idttTkGmtQCCtXgQ
	HWtg05M0WIxuuBa+LrvzX2mprrf+B9LOy4HnfIO//upOb6m0Ag1Ca3PhRQ8pUiTSasrLBE7qD7DQb
	HTYku+5S/Ps72cSIm4YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMqYF-00EYVi-71; Sat, 13 Aug 2022 12:47:39 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMqYC-00EYUy-G1
	for linux-phy@lists.infradead.org; Sat, 13 Aug 2022 12:47:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1660394856; x=1691930856;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=GuWesOH9jhSzsfqoaBaFoGLbS8NBcKM7+82sEbkFY1k=;
  b=k4hqEQQhcgVHtoeNWfozzj06a74ISaaxreb73VGouKeHTSl0nhO2cjR9
   MfYaaJcmWpI+QolL6YEVxTbuUQiLjlXTV3JXCNPnFNsWJw61oSEVjECg3
   UjzyT8yf87UcJ5qKz9qvL5h95tTOsQ8esGplRejwmQzgE+vpf4akpWdUH
   ZOd8vP2BdrEfgeOI11omampRrB2wHCtmVKE6lv8XjK4UNAS+doyGT+2OG
   L2i7Z6HFrBKfUHgqfRMK7BYR9Js0TjPFmk+fWulQwnIrNDToeYL+8Z3iC
   ftyJMj8vluLB/rXrWSTOnIX9+7n7FpDEP4XyAyVDOSgAUAH1Q1tjmvVwe
   w==;
X-IronPort-AV: E=Sophos;i="5.93,235,1654531200"; 
   d="scan'208";a="209153294"
Received: from mail-mw2nam12lp2040.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.40])
  by ob1.hgst.iphmx.com with ESMTP; 13 Aug 2022 20:47:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IEDlFm6+A/lriJSjWP8jULHjL6fUa62g5Jte9EDwJrFZSXM3/skat+W2booYZU++FTv4IFnRimZJS2bBHpKcseZ1feyFCBB/WJ9tuyCji4U+FPI7ua2/rWahm9YM1eleJvFrKnTMOYNmnBlOAzqYEmx11zO5e0MOKd9lhfEbuETYnXklulfTBfKcjcz/ry6e/+6n3L8E9aENlNGzUEySIIoG9jx4mglT20Xgxld4WIulUn6UgD4CMko+++AfIQ/o28kI9u557M7IlERyDn+8PYaswCWy9XmXWYY+6vrRdJbHV/Jffwk2JuBGb7Y3ZvaiLj+isOZzj2dYQm9wJI9Bhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=432NZGXK8CXgIpcFck19hTMcyWbcBb/d6ZcCYoXHBjc=;
 b=O1rvnJ1ORudW+kFtN6UNLCcXUA6VDEVvAXW27e4Y/hAFbrwgKirg2EX8y2o6urqHv62Ntt1AZzY+b6wwqjcH5AVtGMNS3c2Ki9ZK6eDyVBgnQJwgyXzplLx9/2da4Rnxs4BMhyLrFMD7mUV1vfEcH+Pmp84/qAM5/NrLeIC3OmQEo3sYmKEwKCDQHDnZ7LQ936PDZhCL0JmuurVq+TMhTD7r0yJ/GVw2p9Kukyt1JlXCO55AHmXtj44o8OE0Qeo3K9fkPj9eoJXUGbB7cDTAT8CdkMox+Vba5FZJ9mmEDMIqpMPWrukIYnRpJU7TmP20Drf0EqCvq7jsx4gzP1C+rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=432NZGXK8CXgIpcFck19hTMcyWbcBb/d6ZcCYoXHBjc=;
 b=cDs0+Y2Tfh9EJ2aaimYlK2BMLHR3RzT+PzMzwlsgoijMsHYaPcfbKW3DGhzyBedHhcc4ntbTOWgq0GUlMr5Ix/kzpNQ3cAHR19oLSDONLZvqXmVxpjCj7QEY9tkfLwT8srmcgMbg6Z+ub7Vhb3jFA7bftcisvGCTlh+BYYkOQck=
Received: from DM8PR04MB8037.namprd04.prod.outlook.com (2603:10b6:8:f::6) by
 BN8PR04MB5953.namprd04.prod.outlook.com (2603:10b6:408:50::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Sat, 13 Aug 2022 12:47:30 +0000
Received: from DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::59dc:25d4:781e:2a89]) by DM8PR04MB8037.namprd04.prod.outlook.com
 ([fe80::59dc:25d4:781e:2a89%6]) with mapi id 15.20.5525.010; Sat, 13 Aug 2022
 12:47:30 +0000
From: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
To: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Thread-Topic: ARMADA espressobin SATA drive detection failure
Thread-Index:  AQHYdOvSBcLBZWQYIUC8b9MlWQLEfK2mvtwAgAGhgwCAAsWmAIAAOQWAgAA9WACAAAwygIAAE9SAgACpvICAAAN5gIAADLmAgAAA7ICAAAjcAIAAhS4AgAAnggCAAAIYAIAADPSA
Date: Sat, 13 Aug 2022 12:47:30 +0000
Message-ID: <20220813124729.qondfc7z5eoeoq7p@shindev>
References: <20220812124407.pdjjxpsf6pddsmsr@pali>
 <20220812135505.vukoik6moxzedlq6@pali>
 <20220813000235.5vwwmamngm6lirwv@shindev>
 <20220813001501.ib4wayiw3qsgiqhu@pali>
 <20220813010033.erkdwf24arlz7zer@shindev>
 <20220813010351.fauxwpi6w4d4shmn@pali>
 <20220813013534.l5hzxv7mc5fylx7m@shindev>
 <20220813093214.6ved4ka3l2thkn2n@pali>
 <20220813115338.uq4xbznngjradzi6@shindev>
 <20220813120108.vaiwnzhofz6hy5kc@pali>
In-Reply-To: <20220813120108.vaiwnzhofz6hy5kc@pali>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f812917-279a-472c-9fb9-08da7d29fc21
x-ms-traffictypediagnostic: BN8PR04MB5953:EE_
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  QawTLwqnxNXdxEbgmhVxpnTJVdq2qASZwpK9zzKy09J3ursgu7kXhlFp6a5A3I+56jgcF+7r4wzdESgMPR9XwmJ3E3XnBnO81xPY4NAtBD4dSpcKGhr4tr4OUP8P6lOcG0oEBz8lBAxSGj80xgyNz5LdiBSOccfKnTaVUvl0VQMcivxLl4AsLzyGzKWaBOBgRgXXrnbNPoUslXKI4/KAYUWni+6m6RTdOpQTaFa/0ACbahCZyqT3gzqz18o+DfxxC3zFx0dsYDdNZYh/of+uP4exMRgwKXHNCweRox1MB+vuYCeKrkwFe8/gaXIJ923pMOXOnCSekpV3jf672OciD2IUUNo6lG48j49QM43DhaVxYJrSvMdHWy//e9LDq7UHGOqiaWsM+Vs7beI26GmRYbTzww1QC5ujRe1Le23AvfCod21P7C6ILfYx6RhBrNj469k9STPi7HPSjVDerdEDZ+/belFOXxpZl4oLiQLwO2AT17EDaSFZyhkY7iHNVMURlu8QcIRw4PoSo0yoryTgoppmFKhU/5l9pp0x2Osa9YjH0TwCVj+aaynJJiW1JEeG2MrASff78Hjph8dscUnucZUeEpivyGUVXshSkRXADy0fDSNNW8SiiJSTvZAzNFd8XIpSVhL6DHNhNeWFR1SRERd9tAGGNH0glMBxRAX8YvJ6V1cwFWWk6p4oPMv8qC31KyJ5pqgRl1wWNdJbLCoaWzErGyzteFcf/P3GRN3jxteAgrBr7DZCCVh6sonePZHNJcVvKfVag7FryyFw7PCk8Gc8p0ev7FxqFYeCNeU30t7I9qgtAyetrtgjr0Crcdb8
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB8037.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(396003)(136003)(346002)(366004)(376002)(39860400002)(41300700001)(66574015)(38070700005)(6916009)(1076003)(54906003)(186003)(478600001)(6486002)(33716001)(316002)(122000001)(86362001)(9686003)(71200400001)(26005)(38100700002)(82960400001)(6506007)(83380400001)(6512007)(2906002)(8676002)(44832011)(4326008)(8936002)(91956017)(66446008)(64756008)(5660300002)(66946007)(66476007)(76116006)(66556008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?iso-8859-1?Q?GFnY2Gdja5LmoMuVq9hjS8f73J83lVzpV7PLCkf6q/uycXiVBhIALEbtmN?=
 =?iso-8859-1?Q?FmfHA3QBJfhvzjWNnd23/zoO400ANcFT2R5pseFxaG5l6ZcUfzbDnVIaD5?=
 =?iso-8859-1?Q?ot9vfQXO0pmaZHgjfl3l9AGnjRG6AoIvMQLAa5bhPfXNlHKKD8S2ntRccc?=
 =?iso-8859-1?Q?/VWa0+iiEEmLcCqfGP0z5Vw9TRyacZRvZKmKnMqZMp8Wj+T5iPpt44CxTh?=
 =?iso-8859-1?Q?BJ0DW0miOuCcqp1kwwHG7swEzKX+0XMta+OLPf+J0ex7FZVUl97UE6e/Rw?=
 =?iso-8859-1?Q?t7k5O6hBaLY6yHnpygT7TnLNt4Ni5sKySMsdS3eTHtPA0JfjYrSk4BSZQX?=
 =?iso-8859-1?Q?d58i7bX7gjOauNqD5Fw3wRpAPe2Em6bh1GE0uIsJeIclKr9s65BT7e9oCx?=
 =?iso-8859-1?Q?qncSkgQvr79/O1FUFn+5s2QrhF8D5uarCiDssD6NX49BcnQpr7mj21J7p9?=
 =?iso-8859-1?Q?DicraC0DrXXOQ9yD2FK3CBpQOprpKm3mXKga8BWcC7vy0Nm33/7YmR6LAj?=
 =?iso-8859-1?Q?03r5eXy3c2EWbeURIDzFYWUCODfAseftXmDQDHI5TQZG6bdK5s6C2gocIQ?=
 =?iso-8859-1?Q?odIbCf3EdwougD7qTJM2O+Eohrd54oSa6iHxz6GWOJ/vZ8M7AIQiahO3P7?=
 =?iso-8859-1?Q?jagWC5CvXauMYAd0Two67cLm5cawKfrAkquXcsiZQh1MLVAUThHBOdoW+F?=
 =?iso-8859-1?Q?dnB/+X0CGBLTr23eIbDJYZehvxXtdfDglpEJXRhJ0YZfCBl79QV6JyBsfq?=
 =?iso-8859-1?Q?wNDO7UKpmUcKQFKVTx94sfBPKb9Yh9hJD8SrBZbsTHcRfteqmNXF8nK2To?=
 =?iso-8859-1?Q?l7VEQQ4fGBQJLuiVV96D2SYKCOP7AOEABshzWihETWb7ISbVv+/l+lsxN7?=
 =?iso-8859-1?Q?2jWovuM8d/3YAfdyI0vxIbnN1jS1s5MDhglSKSuWLq5hK7GxPppi++V3kM?=
 =?iso-8859-1?Q?SxJUvKsv9OqxbQdIQP1FXyhoeVs26c4rEiYM7EocWRYQFLQOCcxdsS3mQh?=
 =?iso-8859-1?Q?+osbokULiX/iGWGx8LGzdbIPBC6/eW1EpSShQw1M4cTvWP20AXozyJ8O0/?=
 =?iso-8859-1?Q?GNPHLx5gQlVpUIxy+J54F/MT0ymX+SRgJgJN/znPbtrjOKF1UGTb0SsWZT?=
 =?iso-8859-1?Q?pQ+gxFQiVuWW1xydLfYTbg0LOrh9hFYHYaI+9ktEZVUEiWyMowoEO+Beg6?=
 =?iso-8859-1?Q?+w4nJZpV2iprjnhhznd4lbKQIidjid+G+7oZkfvLu72ftoRniQ5BpAVu/G?=
 =?iso-8859-1?Q?sbOpc+bgBJFaXJ56WJK18f28mHHlTqy8mBhinAtSM9uGu29V5JP2k/viPA?=
 =?iso-8859-1?Q?FgxxpHTTr2kLroFAyeIH/+/XMi3m1ZQu3GA4XwYMrjiPHcKVylJNT83Pk0?=
 =?iso-8859-1?Q?ShlcSM8+fQFjVmXeyZOcu+AqoU9cWXs1nSKvygfVY+Yws+Gr1q6ysPVyx+?=
 =?iso-8859-1?Q?dFN9ZjCavvCw71sAQUjrUrGaVZPCp2Aq9NJ42mSKmP6jCFGXJbC39BL1Pn?=
 =?iso-8859-1?Q?869rPpvl7qudOMjpWuGufC9CiRrTYdIyF5+gHjkY541pCxz3YkEswuq0en?=
 =?iso-8859-1?Q?yU207mYxnSvG0ABOI0Il4YYjoRJw6Cs9vafP1QbD79rvYbzqZJUuEbYLmj?=
 =?iso-8859-1?Q?Jq53hnuodiJT8xBqwXwRE6ySPM4rp+Ol15Hmu5UFeruGYbW5XGQQeGZXTt?=
 =?iso-8859-1?Q?upII5eoGlJqXliZdR/4=3D?=
Content-ID: <6C015AA190C7594E9FAC5A2F8601C3E0@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 	clFm6+2+LJpubhvrZz5PzG876d1gTeKXeJFiUHEnwMozs/LfAnZtQzoHxzZY6aP5QfSLMpmhRGVVXb+Uw9G583IQwzfS4sgRIkDNAelY57Ul81IydfXz5KvXcLJ9itQCHNh5KRRgEqn6JeLOdm49LdSvFyHnunCOjZuSNMq5G7NILb5yLlrImU2BJYaaww+z9Pj9c1dwjtBskmPRYBsiPdWtIvmfY3ZRQT+is1/b0/xYLyC3e5MAUG0nAyzfZAbdvam665n7n0bFqOOx40Vk/I38XYEZf5CDVSDRSfsp6c1RQTgS1Wc04suWL0O096byX6jGA75uTreIF72oLjf0S1OEZHtw703MpuOI+Z+sjJnUPFbbvtvhiHoqPwWLydS7ob89VMFC9HxUte5qdxVpckucMjTNCkCuQlx6JPsAJvAxc/HrVczesUZhmaHxE/IK/l9SIKlV+d1Ae+AuuPGm/aSz+yfHjaTZIP0JtpJmtb2l6HnSvcLtqPCBCvLSNRysCdMxzNSTCBzeZx0x6dt4917lpHd3axwpgHrXMsnI3jqXQgr04NR5v9YRw4sjaKKPDMiku/p09svIZKHaGjz9ad++CB+8NcR9h4LuIVgHPoBllDcjH7FMH3qoCGbvXHZXkjMkXbskNvaSqs0eU0NE8r5Nha1tkRThg02c5XpBVazWwKVtcDuNJCW/xnQSCVuas4nAlaQlUQU9GDkwMZE+4vZdW8UhBEXJNaE6va9d7NZndIf9a8A0imV6PzeDktlFecX9T6j5/e+AY5mQjoHDDDEOlni63QK8tLv4O2YjbFW2juGuzQ1qAuOLdPCTm2ONU1KjWG5x++fLrbj4u7ec4g==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB8037.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f812917-279a-472c-9fb9-08da7d29fc21
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2022 12:47:30.2914
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TQKFAYEKr6NrpPfwFqXhp1lQ375Yp8AhPmKVBcoPDZN0l3+eT/cDDbqsXIBcyj+oQYq3hEZvy9GsBO5rYdmcs/VfvNIMJ3st4gCigpWLT38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB5953
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220813_054736_679870_E28861F4 
X-CRM114-Status: GOOD (  24.86  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Aug 13, 2022 / 14:01, Pali Roh=E1r wrote:
> On Saturday 13 August 2022 11:53:39 Shinichiro Kawasaki wrote:
> > On Aug 13, 2022 / 11:32, Pali Roh=E1r wrote:
> > > On Saturday 13 August 2022 01:35:35 Shinichiro Kawasaki wrote:
> > =

> > [...]
> > =

> > > Ok, thanks for testing. It looks like that reset code has some issues.
> > > =

> > > Could you please test this change?
> > > =

> > > @@ -1393,7 +1436,8 @@ static int mvebu_a3700_comphy_probe(struct plat=
form_device *pdev)
> > >  		 * To avoid relying on the bootloader/firmware configuration,
> > >  		 * power off all comphys.
> > >  		 */
> > > -		mvebu_a3700_comphy_reset(phy);
> > > +//		mvebu_a3700_comphy_reset(phy);
> > > +		mvebu_a3700_comphy_power_off(phy);
> > >  		lane->needs_reset =3D false;
> > >  	}
> > >  =

> > > =

> > > It should replace reset code by power off at beginning / probe time.
> > =

> > This change also avoided the "ata1: SATA link down (SStatus 0 SControl =
300)"
> > message, and my SSD was detected as /dev/sda. Good symptoms for me. FYI=
, I
> > attach the console log with this change. (This time, following messages=
 were
> > printed. Not sure if they are important or not.)
> > =

> > [    2.937376] mvebu-a3700-comphy d0018300.phy: invalid COMPHY mode
> > [    2.943581] mvebu-a3700-comphy d0018300.phy: invalid COMPHY mode
> > [    2.949679] mvebu-a3700-comphy d0018300.phy: invalid COMPHY mode
> =

> Those errors are important, it means that power_off did nothing and was
> skipped. So test did nothing.
> =

> Could you please replace mvebu_a3700_comphy_power_off implementation
> with this one and try it again?
> =

> static int mvebu_a3700_comphy_power_off(struct phy *phy)
> {
> 	struct mvebu_a3700_comphy_lane *lane =3D phy_get_drvdata(phy);
> =

> 	switch (lane->id) {
> 	case 0:
> 		mvebu_a3700_comphy_usb3_power_off(lane);
> 		mvebu_a3700_comphy_ethernet_power_off(lane);
> 		return 0;
> 	case 1:
> 		mvebu_a3700_comphy_pcie_power_off(lane);
> 		mvebu_a3700_comphy_ethernet_power_off(lane);
> 		return 0;
> 	case 2:
> 		mvebu_a3700_comphy_usb3_power_off(lane);
> 		mvebu_a3700_comphy_sata_power_off(lane);
> 		return 0;
> 	default:
> 		dev_err(lane->dev, "invalid COMPHY mode\n");
> 		return -EINVAL;
> 	}
> }

Thanks, but this hunk failed to compile with the error below.

rivers/phy/marvell/phy-mvebu-a3700-comphy.c: In function 'mvebu_a3700_comph=
y_power_off':
drivers/phy/marvell/phy-mvebu-a3700-comphy.c:1229:17: error: implicit decla=
ration of function 'mvebu_a3700_comphy_usb3_power_off'; did you mean 'mvebu=
_a3700_comphy_usb3_power_on'? [-Werror=3Dimplicit-function-declaration]
 1229 |                 mvebu_a3700_comphy_usb3_power_off(lane);
      |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                 mvebu_a3700_comphy_usb3_power_on
cc1: some warnings being treated as errors

Do I need to add mvebu_a3700_comphy_usb3_power_off() function?

I suspend this work here today. Will resume it tomorrow. Thank you for your
actions so far. Wish this issue gets resolved soon.

-- =

Shin'ichiro Kawasaki
-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

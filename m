Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA0D6CE9D5B
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 15:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCUh3cHNSpZgkqrxFw7R2rWDK0fmeew5g/GWW8wOqmA=; b=NozoKFDakxkxH2
	sq1cWPfAoHTU0kzEIw3v2mKG58IxhQKtaPVxEhsS9to8cuVZK/YXkBza+OJy7aaDipDSOUO43jreu
	sXTvho9HIFFGrriOpZWgEa68AUgdiu7jYrPrcdNHKFG0agQUk4LoG0ZoHo6HcMXWQPLvxiAXJrlWh
	1m0L5WAf1PCAGJn+bkloTUIEaGU4itZe+374yMbnmtPfmvPaa3jao7ZVerEwl4O7Zn9fDSnWU7d5e
	GFugVVMQy5tUmGEt1DY2U624mDdgEBOVddq1SFzUT/ilR22vURIt0bG6NQbJG4O5ok2KlrJg0WxqZ
	//AfsDqQId1RoZxOityA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd8zH-0000000DPUZ-1Vua;
	Tue, 06 Jan 2026 15:28:47 +0000
Received: from mx0a-00015a02.pphosted.com ([205.220.166.249])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd8zE-0000000DPTf-1Oyt
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 15:28:45 +0000
Received: from pps.filterd (m0264209.ppops.net [127.0.0.1])
	by mx0a-00015a02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60681f5k2776859;
	Tue, 6 Jan 2026 10:28:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=belden.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=podpps1; bh=a0
	WzlU8Uu5Svx3gMOyaKHtdNhzayVHnDms4vrRnzKlE=; b=Q3HdAWBxKDnT9ZAcvb
	fyoS4jg5+wSzHOOe/bs15U84OLPem7lHVdYPRd4RpHmSUGhrT1xLrMeY9DG+rTlB
	XPT2K/MB3+RF4BZ8Qqvb47DRBQ9m+xy8mUDBH1jvTkYEqXiI6Bu0Am6WGhkuXPoH
	I0M2C6Jflbn6km75EgInnsIykfOc70XzKIl9Ur1gmcbddilsaDhTr43yaj61gfXG
	QCCw4ozOVUQnJdnMMODX+OEECrJ3ulTKGbZu7/9G8cbSGqDvHE4eFTLiy0VOvIMG
	pp6x1RX5CF9lSntcJ75TCvX8FgUanOjZwZKjNTcjPPg3MnYP7bBYcnfjHnrKib7T
	oDtA==
Received: from bl0pr03cu003.outbound.protection.outlook.com (mail-eastusazon11012060.outbound.protection.outlook.com [52.101.53.60])
	by mx0a-00015a02.pphosted.com (PPS) with ESMTPS id 4bf0acnr5q-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Tue, 06 Jan 2026 10:28:41 -0500 (EST)
Received: from SA1PR18MB5692.namprd18.prod.outlook.com (2603:10b6:806:3a8::9)
 by SA1PR18MB6404.namprd18.prod.outlook.com (2603:10b6:806:467::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.5; Tue, 6 Jan
 2026 15:28:38 +0000
Received: from SA1PR18MB5692.namprd18.prod.outlook.com
 ([fe80::2461:6b6c:ad97:fe60]) by SA1PR18MB5692.namprd18.prod.outlook.com
 ([fe80::2461:6b6c:ad97:fe60%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 15:28:37 +0000
From: Aleksandar Gerasimovski <Aleksandar.Gerasimovski@belden.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        "kishon@kernel.org"
	<kishon@kernel.org>
CC: "kostap@marvell.com" <kostap@marvell.com>,
        "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
Subject: RE: [PATCH] phy/marvell/phy-mvebu-cp110-utmi: fix dr_mode property
 read from dts
Thread-Topic: [PATCH] phy/marvell/phy-mvebu-cp110-utmi: fix dr_mode property
 read from dts
Thread-Index: AQHcfx4ivTkN7fyrq0idb2K3faHt+bVFQ6PQ
Date: Tue, 6 Jan 2026 15:28:37 +0000
Message-ID: <SA1PR18MB5692D22712BA8A30BADEE3329987A@SA1PR18MB5692.namprd18.prod.outlook.com>
References: <20260106150643.922110-1-aleksandar.gerasimovski@belden.com>
In-Reply-To: <20260106150643.922110-1-aleksandar.gerasimovski@belden.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR18MB5692:EE_|SA1PR18MB6404:EE_
x-ms-office365-filtering-correlation-id: 1a9a79a2-123a-4fe0-ea8e-08de4d384335
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021|7053199007;
x-microsoft-antispam-message-info: =?us-ascii?Q?GTNBYbdn/k5JEE1LjfseVPFfQqLCSOvXJb5MUaYqTv4hI1Ynzw3iK1L1a3ce?=
 =?us-ascii?Q?Q5mxbe+184UGWe392/61JMf52Z7YyV+Sm5uqgJhgyJGdMNB2qDl2wCXxyOsq?=
 =?us-ascii?Q?NhZPGDMBnnbCnkiBXUoLWFgTAGXjnHRUU1fIwkgjRLU7GFhucLcIJA9DMF8h?=
 =?us-ascii?Q?hmafrG613wIO/pzn5IJuEQtfmRS+MPprZPoIHt/MQoihg2cq+Hgmiw/zBEsD?=
 =?us-ascii?Q?hcJXpIn46zLenXL3nSHLVwZUF7+qqnBmf9vL+KnRHSBUkkv8ynkJeP1eCVz4?=
 =?us-ascii?Q?eE7FBYTqMRKjEsrwuLuTwusOHFlWpSLxAlyI6iW4/UOFieIdo6JFJcEfhc1x?=
 =?us-ascii?Q?muv4SAv3VtdnXj0oSLmreiczgY7ZsLY0vvRhZCArlJx8nhh2/pPGhlCEBKSs?=
 =?us-ascii?Q?FouIH2VMQJDnNZqTjfP3LTu4EMKaa34cMxHGSg0ngqvpQKk+RvT7J8l3ywDZ?=
 =?us-ascii?Q?mW47mKyACciEJg+W3dCExMCYICP3GqRN5N3NiIwpBxqW6LRxj4fYPqo6Ofv0?=
 =?us-ascii?Q?9RjPzNY20SFl/4d9Gqf415ZRnxSWiJSYFIrq45ZYOSjRWtiugpbShmS6eBR+?=
 =?us-ascii?Q?8QpcodtyNPzLFC+wqsca5KrrHGuLcl+RMRHFdf/yHHtKCmnrULLJ4AdJSVD2?=
 =?us-ascii?Q?DpKTG2iwPYy9aStJOj4JPXAwtaK8+qQXBGKvf33guUMFrisVYZXn7yiGNikC?=
 =?us-ascii?Q?lecUxvCsPYVhRcJJ2HBHYq+hTJL9aQxNAxdBFCUbjVNvJzlHAqBK+pyNs2Wr?=
 =?us-ascii?Q?LA2JJcewYX/mhwnq0Ki8dXSXSjpXhk3zUuRt/Qxr9AxnN1aLgg6XVW786xrM?=
 =?us-ascii?Q?/Wnvj9kDUWg/MDK8vvDc6U/7q0/eVT5LmgvqCzA3rFPDePG/PjQ8oqlmMx+F?=
 =?us-ascii?Q?xu1xI59kxVyqzajj+BP6SShhxYHBzkCRaimqcWSlm1O5nz3uxEAiqoTQBTnx?=
 =?us-ascii?Q?uacR+d4s0N4n0LGvB46dNzosNzh6RvsgR0GRQc4DJF74LkUMsNMpoiGzRoF4?=
 =?us-ascii?Q?Vxx6o7G21kCC900ZXcxKwg0zbqmOpMGyfFL8fD71PbNhDaGaLUq/EEI/OB96?=
 =?us-ascii?Q?zoZv7u5MwTeabO4XsSFywavwmbJ0S169SdXbE+qXvhbchS6qt/fxWqwhdEQY?=
 =?us-ascii?Q?w9wQB1FfQbdcDAMFbnuJkt3S0WHETDfLfbIZfe1mcc60+azyANw4nOVBbObj?=
 =?us-ascii?Q?HxB+O8a0RSxSDIGxpoUlmELpgIH6KJCeHDcxGPtEBQZxGOXvVBjKH/wLbaPx?=
 =?us-ascii?Q?I71/S3iRj5Xei3e7cJEPiVpM3XguXPYHKQaBiE5sL0KpDSzh2Pj7icRwwAHN?=
 =?us-ascii?Q?ImPCqPKOAhTdVvR8oM5dWxvoZ2IwSkW6EXrwklAtY0EbHSRTB0ve8DoIkvUP?=
 =?us-ascii?Q?zK3WK3MfneyZZUCCLTPFWFPbXDy/oPQdzGErXNAyLT2niyvpud97MJC5fsLb?=
 =?us-ascii?Q?gJXf+M7e7NiDGzpls9mlafplV3rckn/lZ1esrIKpLEEGOK5FkaBIuUGLKAIH?=
 =?us-ascii?Q?m5bmoKBvwcE5OIln/fw01Ge4ECidgMsmTk+h?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR18MB5692.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X2lgYAusZJ1WUiwFEQIzvIA7nje0c1jiIni/2i/lrt+PrrgQgKa75/EM7l8B?=
 =?us-ascii?Q?gR+pgT02Af7NSgBOqIIOeFJaMPbeYEExepP59kTuqIc9jfSEmnVjKnnq1qRG?=
 =?us-ascii?Q?Z26mzgqHyWvS2nsu3T2yZdXzZR9YWcAtKaximif6+/yA6/h5vOP1xXLg4xo7?=
 =?us-ascii?Q?R/3cehTeL9lCZSrW8tX+dm3xF/hvoPfpAgSvIA6cqnxg84uozVwOOT5eWSKv?=
 =?us-ascii?Q?Bp62rNkfXcFF2gt39HxZswFLkRE/Ws/XrimANYVnx9HOrSwDwz6DT8dsXWU3?=
 =?us-ascii?Q?S4cpvsNlgTANQFwrSfGypU6PXHxDlGXv6YLoOuXSW8yzqs/uA2wj1hCg1MFf?=
 =?us-ascii?Q?V//3Q9fzzrGuZG61SlavQEtYqxfVIaIvDha6q06E96d8rHVkgNLj0oV258ul?=
 =?us-ascii?Q?yJka00RWWanT47HwbVf/SY2tt1fZc7I6ZEw6lPEio4S2QsarAFdL0op1NWoH?=
 =?us-ascii?Q?Zaf9/GA7LnsD3utV/CtawMuI2AgjM/py7bKKOHUB49vWwOvZ3tJUU+k+v3+4?=
 =?us-ascii?Q?dM508J8XeKd0/WrzE0ZL4YlRZmbrJH2ROoNpLXIZTui7qAjn6JPyL/RQ61do?=
 =?us-ascii?Q?Vkw7bAKx1aRDvWQPwMgOG+AwZHsawYTMgA8BcKkpV8aoTxrFrIGTx6UhxVBa?=
 =?us-ascii?Q?MVMgK+jjcgox53t3Ovp+OdP1HdVpNBZ6AAB+DZRiYZtt78t8tu7xfIyHa2jy?=
 =?us-ascii?Q?NKWkT75bMwqiwpFIAFtVDb7FEuLpBuIB+cJfTnXCq35rt1IOTxQhKsG7V6OB?=
 =?us-ascii?Q?9LpcXvJ8Cb3zJhf+HaJ3EfBkHSk5rziJlIgTUThpEnUMTw4yG9hdQO9o04Se?=
 =?us-ascii?Q?G0JJ1ZuiOYSYu9o3EfClFt93IugNQnEZRtOHQhkP1sz+BZy0LPpoZxAz9VMT?=
 =?us-ascii?Q?isIGJwl7xJ8OCyCkVQSfgExPn7CEPt+KqGz6NeWPun93WngQC+OH4pRWutG8?=
 =?us-ascii?Q?QIPK9Ea1kergeoImi6iUVokzblPh9eJRrbtaapSz9mfO9NmmZhU2eJ3SX8//?=
 =?us-ascii?Q?bYWLvkpQULoUjXy9yAk5FrHGoV4t+ziO9xnIHaXU7ARh2abdY+d9mUpKi67e?=
 =?us-ascii?Q?OsnZURQ+sHef55Oo7H6yEUJCh+s4wsB/Ta+ShQrN7IcKw9htvVr5Kh9u8Euv?=
 =?us-ascii?Q?GZXRotpCp/zINsY5ZkeBuuOx12i1BER6KY7cqDEYpwGzAVn4U5pm7Yp0RQRt?=
 =?us-ascii?Q?/veRQ21rItqsc0VOccEz0y2CheR3NcT+kQJ1dHiZ3oivEeoErCy57WmFZgoe?=
 =?us-ascii?Q?RlGVPF5SDJjcv5PGMKMHUnZAwWAcsU9ilzSRuv5X6ghCMoF4MIMoz4KRFT9A?=
 =?us-ascii?Q?4R/FKQc33KN+YESKkaV58PQ2pnhX5Q6/qDHR0UV/eHmCi4q3gm6lT/PL8CUp?=
 =?us-ascii?Q?w4G76LjW6RJ0sqwsPS8GHCfYreIXSMu5lirJ6eEMH7yZLel5K9LVs5f8WHo0?=
 =?us-ascii?Q?GnbU/+cQMbibX6gOSUEYrDzUj9ynqX5AsyBNGenS8r8pRn6rLtSC4Bpdp7Dd?=
 =?us-ascii?Q?DoExuVytc7ARVvzXEqGJ5Dg76Mwd2w4gkqfVb/bfQUhfEY9p/WkVFbOGjxLu?=
 =?us-ascii?Q?aJPq0ylMrsxBqWiTdCTdL9nurjfZ0Bee3aXbNoBOS9mH/HQkQSWGTnhb+7DW?=
 =?us-ascii?Q?pM+fXUIAQitKuH6OBZhinEi67NpQuuGbhc6xXowz7zlypUOjWZJB+ddYb1qL?=
 =?us-ascii?Q?d6ThusBVoQ5LOBpmSSEbqfBe0vBj9ZeY1Cat2soncM6iQ1ysqnzru5pqOeJZ?=
 =?us-ascii?Q?wBUFGzh7qlSrSI2PfsdJJTGZKRvGRwU=3D?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 3Fm6STdhjJCqLV0RUsSumRT0WSY/I4Bg1FdclIio6jdY9CkKAcc+MC0E8fWuAXRy6A2tNP6t/14mpPPS/YWUVD419PhEdnNUXKdTBJ6k2ksrj33jABo59de8zA5e9MJHkwAYRWP3kRh9QJR5g8gd3L7uUNMcuB7kz7/G7RQ/rqRXbgs9SaUoQHNE8R/Uqo+vipE5KFj1HzdwDQ34Sliu+2DFQHLktjaWuW2Y1K2y5MWeJAEjReCcAQg0JRBz4niHw0xjSqUvHKf28HdX+E26GI5K0zBt8JAIt1f9wjCIi8F9BFoFU+1EbFgtAhf6bF0q+hsx9OleqkEcaURmerwp+AAMNvHy3PJnCFMC8qX9cTzw5XDIL05P9A4Zlxsq+nm5gH0+vmyOyvCmsKhvOfJZbQJq90bNVEVqLXQVN0A+ZVlL/Vd+rGQ/qsvhtl7QD6t8IlBEQoY/xsyaqHJ8sHOgeIArSebRBlQPQ0YrvfWIDxRifF4Qz9WVJVPCVe7dPHcvHRG0pAhmzuKjM0rk/7dCgtbJ8wpS7xwj7Ekdg7R0NAUF4oayRmlqUuWpADtzgoyRvJ38lm2vw23ZBtK5WZfVEXNryh//GY7i6X8QOEYwY0M4JTEG/hqsnrkqAHrcdycd
X-OriginatorOrg: belden.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR18MB5692.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a9a79a2-123a-4fe0-ea8e-08de4d384335
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 15:28:37.3940
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0f7367b1-44f7-45a7-bb10-563965c5f2e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OFFiTcqcpxsBhg1qwUwvfmFpCCdRiw/YQ5GTW4adglZniitupTAHm5oUxEqGvQSJW5/9Iy56d62yq9PfzZNNLd89gX+aJkZ9/Mt7wkO/1QvOBVCAHtlEUzXj1dhv7fWV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR18MB6404
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNCBTYWx0ZWRfX6KHdOLOb5Ueg
 XN+/kIP+hWL9wIxwNszaZJ4ulcySz8Nu3+7SUYx7avWDb9GaPnu/ppsSYWtPOSP+ExujjPAovk1
 10nnYnsI1Jmv6XzY0shrQgVlpBjpqSMjnMXxTAW4d6Lv9GfhNV2TiPEbxrLQXHEg5d3Rc8y5B94
 CQuhyrWQFlVzoyZTUMFeW3NyQlnIwLboYdcjJNFDzyxy3UAMBUatd/Zow9kDDOTGGrwPrCwKazo
 hcdUyMw2Iw/dXiEkh6r8+hvhDPtIr+if21i9V7NS4OSR3WS3WsTrgBiVVXxCtHMyFyUx8Ie2X5m
 PTKaL2oKuT1VTCVGR+PKHjeMZ7lVnibRIV4n/9pBUjUnFtz2UgnzzWfyy4Q56EEMirdY9V3qL6J
 zWVCTrXAhC0oeNcK07gTXrNR/mosnmWLFznp9cxbzlh44Aq8kCRnpdvV/l4ykLtUc0/MunqrdXN
 4vGiyzAiOw5mIN9TLvg==
X-Authority-Analysis: v=2.4 cv=balmkePB c=1 sm=1 tr=0 ts=695d2a29 cx=c_pps
 a=yaJUXpcFNTkE3gTvo4ZtIQ==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=mCf63rc527wA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WDlp8lUfAAAA:8 a=VwQbUJbxAAAA:8 a=g8XFJDrlKuk2_Rp72Y8A:9 a=CjuIK1q_8ugA:10
X-Proofpoint-ORIG-GUID: ptbsjRwwmTre6CZfVT1X19-N5jwuJ_5T
X-Proofpoint-GUID: ptbsjRwwmTre6CZfVT1X19-N5jwuJ_5T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 adultscore=0 clxscore=1011 spamscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060134
X-Proofpoint-TriggeredRule: module.spam.rule.outbound_notspam
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_072844_380294_63AB1DF4 
X-CRM114-Status: GOOD (  13.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



-----Original Message-----
From: Aleksandar Gerasimovski <aleksandar.gerasimovski@belden.com> 
Sent: Tuesday, January 6, 2026 4:07 PM
To: linux-kernel@vger.kernel.org; vkoul@kernel.org; kishon@kernel.org; Aleksandar Gerasimovski <Aleksandar.Gerasimovski@belden.com>
Subject: [PATCH] phy/marvell/phy-mvebu-cp110-utmi: fix dr_mode property read from dts

The problem with the current implementation is that it does not consider that the USB controller can have multiple PHY handles with different arguments count, as for example we have in our cn9131 based platform:
"phys = <&cp0_comphy1 0>, <&cp0_utmi0>;".

In such case calling "of_usb_get_dr_mode_by_phy" with -1 (no phy-cells) leads to not proper phy detection, taking the "marvell,cp110-utmi-phy"
dts definition we can call the "of_usb_get_dr_mode_by_phy" with 0 (#phy-cells = <0>) and safely look for that phy.

Signed-off-by: Aleksandar Gerasimovski <aleksandar.gerasimovski@belden.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-utmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
index 59903f86b13f..dd3e515a8e86 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
@@ -338,7 +338,7 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
 			return -ENOMEM;
 		}
 
-		port->dr_mode = of_usb_get_dr_mode_by_phy(child, -1);
+		port->dr_mode = of_usb_get_dr_mode_by_phy(child, 0);
 		if ((port->dr_mode != USB_DR_MODE_HOST) &&
 		    (port->dr_mode != USB_DR_MODE_PERIPHERAL)) {
 			dev_err(&pdev->dev,
--
2.34.1

**********************************************************************
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message. If you are not the addressee of this message, you may not copy, use or deliver this message to anyone. In such event, you should destroy the message and kindly notify the sender by reply e-mail. It is understood that opinions or conclusions that do not relate to the official business of the company are neither given nor endorsed by the company. Thank You.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

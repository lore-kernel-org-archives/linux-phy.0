Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA7F3C9EC6C
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 10:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHNV0cmndHRPcEu9j/G2dsn73noB5lbSqxUntSTDvc8=; b=ZehDQxMZZzZm4m
	fyrdFExPpofGSGlGYS3JsQrgOUgI4Bx0jJk/y/DxmDoeyKlJ3FsoGZxTEWE6gkZoKQoSt7ok6gWo1
	PH7y+i4KABHDGPzvW7P7auarrYw8e/hUNenkQYo6FejXIu+yYx/8kagUfg7fLSnhvxRFgHKFI2WKg
	0i/FK/78+vHbAdpsqChneVb/KaXO4ZgGvYZSdggCT67bf9iBoiLRcUQ6AG12vh01YZkMw328V+kq6
	NtpychWOQYQ7KgV6KbjKlrKfwyni8iQ1D/jC4lHQ8/bGfC9Wnfg2saxZtG0O3FY1iqMrVOu+4o7R/
	6TOR/hHLN2gCDGJ9cE2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFO1-00000005Bfj-3KxQ;
	Mon, 12 Jan 2026 10:43:01 +0000
Received: from mail-francecentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20a::7] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFNy-00000005BfI-2QVh;
	Mon, 12 Jan 2026 10:42:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bw4e84bNdJgmrjdi4FX4yv3mu4KJFYocSc53pRl8L/eaVyfYnzpk+4pajfpaDObMpNL+1r8dUwL9IOri2X2P0Ep7vamz9HsAGBCrKjXFJVFO1PObxUwnhGhreondBR3J3GoBB/Xk+gY+YCNrNKzGODBtfmCCvuzaCLVYPSEggHt7ywq3DZzsENo+OEFXdyxQ7kemMaiQKn8QuEqoyNKHyMT0xEQYRa+tYL9OEc0xsX0CbiHnuuZaStaISlZ9D4IHwZIiV9U6Upj5MN0BFynQU+jjtk+QKuvo86+3W3KeTqO6/5UWGIVP/jMadfuRhtp64pi6kMd8WkZPKOsOZKd2Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eUlrW1FLvOsuftk6hH5ROn3Qkh1zAwi7HiU8uiehMbM=;
 b=tP+h+F81d2pjzGvaooiqigfCEgyfPH+Kuo6TKG0YdPJmJx4PdpdPtJiz8mq7MlNqTYdkPtADSnB0DKFypvTEsvZ3/ikc6uwehW+3nQ3zDSKI2hzeR8QTm3jheuVqq/qzQXSW4ukGY1QvuJbTwX72uPPnagkIgFXVS0sm/37dr2lTFnJpNlVuFyEj1PF8zbBcQHZzWcJ74bhGKExT48xa4O6GhzKcFyyGND2ccmqvcW8biMJcFFvopMFsEw8GJsFklusjfyjliSiuPxSgCxurYa19p1KdaXYAa4UpsoAK29BUiQff/0eQx+Lw8FISdBGYyBiNsex/ABogS2EerDFFKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUlrW1FLvOsuftk6hH5ROn3Qkh1zAwi7HiU8uiehMbM=;
 b=dzfoV7XY4JSG94glpNWO1orL0379baXgwqVMlY1Ii3CfcPj5hETaQ2cv02zYC5Pic1lzXIVDDRmAufbslynZoyUlUgBP0lwNsxd1FGy2DXXMHN2XQdl1/SSeqhHwGcRxsX6VIIEzYBm9tMRdBl0n5YafDC1qvL2qfnxFxz5ZVI4BvKTZKTHot4m1PE8br4039tzZn6PkqRUG8xvppzsC/DCzUZlfgIRppdNq7fh7LJMRLKcK/dgAoGMY0nM0FSN0GDszDxulOSF4Q6IfIn/+z9H+NFfCbTbcJcviL9WvGUFRsJOvDcobPEfd8TYG0zzYI/J22/gbGfZrCT1qwOLtLg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by AMDPR04MB11556.eurprd04.prod.outlook.com (2603:10a6:20b:71f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 10:42:54 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::c67b:71cd:6338:9dce%5]) with mapi id 15.20.9478.004; Mon, 12 Jan 2026
 10:42:54 +0000
Date: Mon, 12 Jan 2026 18:35:39 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org, 
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com, Frank.Li@nxp.com, 
	linux-phy@lists.infradead.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: fsl-imx8mq-usb: add debugfs to access control
 register
Message-ID: <6j2yhzqt6x3k55vrqjrol2k2qrhqmobvwjedkujyet4loyajxa@vy55aajfuvxk>
References: <20251224111716.2925597-1-xu.yang_2@nxp.com>
 <9870fd41-bafb-4ab0-91ff-8fcea53ca0a9@lunn.ch>
 <7bbvfiy5wceantklz6lav5rwak53yhasfvzddtsirqorcylrf6@rbcrocqftznj>
 <0b61c962-9aa1-4275-a40a-220f6d7f1210@lunn.ch>
Content-Disposition: inline
In-Reply-To: <0b61c962-9aa1-4275-a40a-220f6d7f1210@lunn.ch>
X-ClientProxiedBy: SI2PR02CA0017.apcprd02.prod.outlook.com
 (2603:1096:4:194::17) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|AMDPR04MB11556:EE_
X-MS-Office365-Filtering-Correlation-Id: d0b848bd-5871-4f51-ab14-08de51c75759
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|376014|1800799024|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZnpLTXJpTFJQSGRLTlMvNzZJRFU3R2ZqTmRucFhtcDVyMUVyckVKUlpvQXpF?=
 =?utf-8?B?VWRjY0licktPUS95QUFkZHhzeEhyWjN5US8zUE5NRDF5SFZEQ0ZFYnhyZmhL?=
 =?utf-8?B?dnNEM1RETFd2WFIzMGdMTmVSOVg4UXJ3T3B1U2Q3UXNYUnl1REZReVc4bVRM?=
 =?utf-8?B?TlFuc0xTd2Z5SUh5WVhla2RzcnNWc2RtZGdTZzRmdTZsMlNiWFRHUENvVHBI?=
 =?utf-8?B?RW16MU02eStSejExMEplOUIzZjdGU0NWa0tmckZsWjgrSXlLTWlsSWo5cXlz?=
 =?utf-8?B?cE5Tc0hTUGpxaEdZcWtqOFNDVTNVUW5jSDlZdUh6NW9QM3hlU2tBMHljSndF?=
 =?utf-8?B?MDRocXh2RnpodGJ5ajV2MjB3YkZYNVo5UDVXQmFaUzhqQlpteEdlQm8vUHJx?=
 =?utf-8?B?ejIxdjl4VWRNNVpkaDJ2cGVoalJTb0U4Zm14WGsxRE12ZysvcGlFZjhtcDg2?=
 =?utf-8?B?RU5VN2tHY3JQNUM5Tnpqb01jbHdUcDVUMzJrR1JFNjh6TFFjMEZUNDR5Y0tR?=
 =?utf-8?B?Q0lIYkpaajhaSlRrVTRFemxnTHhvbG80K0JCZFgrY2NlUVdGNTdiSHNYS3Vl?=
 =?utf-8?B?VU85UnE4VVdTdlpHek52bjlKNGl4aVpvSS9CaTRVd2xWTkFpTk9zd1ovaFRB?=
 =?utf-8?B?OG5xR3MwaVQ3c3NFQUE2SkU5d0RJSG5WSElJa25hNGxjc3Z6RS80bVJ2UXpv?=
 =?utf-8?B?Z042em1VbUJQMjBLckZDT3JaZ0svRk9jcG4xQkhqZ2tsczdOUmlseGlPRnRx?=
 =?utf-8?B?VWlhWFpCaEpKc3poMEM5a0JJS21LY0VuSm4xdHdTVklIOU5oVDRNeUxBcTN6?=
 =?utf-8?B?ajIxaEJyV3hjbHZuaVZXbmlLa2FHNm84N3hxQ3ROakllSDFvNXk1Y0dGVjZM?=
 =?utf-8?B?a1pnR0FLenpDZDFEZkFQL2F2YWZldEZ1dThOaUpSVU5aMldBTWNhbWhER1Zo?=
 =?utf-8?B?L2YyNG9ya2Q1TFh1VGliNmFhZ1JkZ1dLZk1iV2ltWjFsaTFWNFpWNWRPNkMy?=
 =?utf-8?B?bURxb0hvYUZtR1UzQ0dFVWhVcVZ6SWljSzVnWEJEWDlPL2lLVXZDK2Q3SGE5?=
 =?utf-8?B?aHQ4RGVCZU5WNS92OFgvaDBOT3dnMlRDbWw3aHZHSmNqNkFoSHB5cW02VStC?=
 =?utf-8?B?SWY5T3picGp2RmdCODBMWms0NENZSmxNcGVXNGFSTW5vRGlleXA2WHVoajlu?=
 =?utf-8?B?QWJyeGRSRStuTmMyajBIc3YrM21ZMzIyK09RSCtMOERhSkNZNGs4ZE9vSW5T?=
 =?utf-8?B?YTQ4K3A1WlViVGZIb2JjdjVIVHREVVJGYk5ERnRWOHlQZWxxZnhtM3BEcDZN?=
 =?utf-8?B?M2tEbjFVWnJ5WXFBczlvc3doVVFaV0xVbDZXY09mV2pTUjVla1F4cWJVS3VN?=
 =?utf-8?B?eEk3VG9VTXdWTGhJcVlPdjMyTGF3Y2c3dDZmVUtZQURvZ3QzL3kxVE5nZ2xS?=
 =?utf-8?B?Zm9QdklTYkhKMFhibVUrN3ZFQ05BMDZkSHF1WkMxQTZuMTRTaVNaYTY5QlY3?=
 =?utf-8?B?OTZpU2lhdXhmQ3NSYU9KZFVOdHNLZzdWbmhXRmZSWnBtQ3EvbU9YQlY5ZWIz?=
 =?utf-8?B?bFdaQ0NZSHhjZTNmT2lDb0ZFcGpNeGNYUkZNNk02L2pTRFVSRGtrQldqbFVD?=
 =?utf-8?B?b2ZId1JkUjVwM1V1RHFiVnczMUE3QW0rWCtuZ0F1QnpDaEx4NVExNmJSalRw?=
 =?utf-8?B?b2gvaCtvb3ZhU2NiU0hUMEJhZ0VnZjVOQ1JBWEhvZTgzMDBpYUFDaVM1Q2Yy?=
 =?utf-8?B?UkJNd2pMT01QYkhUdnNEN1N2Y21lYlBYazFhU2w1NjRoOWR2OGNaS1BPRU1Y?=
 =?utf-8?B?YjNIZTd0MjAzblhBSkJjZ2V6RXJZelIzQmwzNnpUK0xoTlFuUnJqYTFYTXRr?=
 =?utf-8?B?Z21JZm41VklrUU5Jb0dnOURmcWM0R21kMmdBSkIvclRHa3VPY2RWTnAzV1E4?=
 =?utf-8?B?eFhkcTlNREVTQ0JocHhwQnJvcmxUTHFLNzBrVkh6WS9XT0RLN29VRlZwZkxu?=
 =?utf-8?B?Wlo2UFBFY2Vxem1SN1MzdDc0azlEY2F5aC9EN2lPcDg5V1FkMUF1aEZTOFhP?=
 =?utf-8?Q?Fp3ebU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(376014)(1800799024)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3ByZloyNVVJbGdqTDYwbmJZcXh2NTk2dkxqR0gxRUlQdUs5M2E0WkFScFRJ?=
 =?utf-8?B?d1MrSkt1MWVuRmlxdWROSFBTcG1ZcWhkc05PZ01DcHk5MnJ2T3VHcHBpaVpP?=
 =?utf-8?B?bWNtRXNoMVF2MXovTmRMMkVtUjZFVlB4UDl2alhlOUFBZGFCQnYzUWh4RmtQ?=
 =?utf-8?B?VXpxNDFPWFlTVmRZMStMSFlkMDN2dnB0VUVscmpOZkRJa3FnQTI0TTJ1QmpG?=
 =?utf-8?B?RVBpeUtiZlllNnh1NThJNi9kYW5Jc0EvdU1BejArTENxUGRncnBiWGI1WFY1?=
 =?utf-8?B?WHd0MTNqRjdQTjd6TUhkUTlIcVBNUm01dG91RElEWU8xbnhzNnVzeFBEOXFp?=
 =?utf-8?B?eTByaG04QUhnNUpLQm1PaWJKZnJZS1NhK2RMQ0NZSHZvMHZpQk5XNld3b3Zk?=
 =?utf-8?B?bzV4QzZ2aXNtUDRKQ1NYaWRIaGliVVhaK2hjZ0xMTUg1MndIY1FtYXhsL1hn?=
 =?utf-8?B?L0djQ3phNWNDLy95VG1KLzBDYVFuN0VqWlVyRWpEY2YrVTAvQmtUa0R1aStr?=
 =?utf-8?B?ZmpxcDNvbVp2YklZdXhmWDNiakZCWDhGR25CeWpzT0dONmdMUWE3d3dqRm9v?=
 =?utf-8?B?SnVCM0ZoMUFDd3hKcnZQbytnekVFZHZjanNGMktVc3lhV3Z5YjNPdjVBUjFj?=
 =?utf-8?B?ZVdhTTNEeWRXQUNpQjRDaDVuTkFGOEhRK0hsTEpZdktZT0d6UXIrM3AxL2hP?=
 =?utf-8?B?WUtkZUxEcWZYWlFZSlJubXZ3OHpxVGZWNXBmak5jMTNGeUxGTEVUY2JHSE9B?=
 =?utf-8?B?RktaNmk1Qkdpc0lNVnFCdEFBV0wvUFdFTXBjOGZMaDZVQTRZZVIzeWY0SThK?=
 =?utf-8?B?NnNOcXhPOXMzZGVBSUZSaTZMcGVMLzd0S1VuNWkvRVk3WjU2M3ZReitjNEJI?=
 =?utf-8?B?cEdtVU5GMEIyN2tPYnVyMHMyUWZHdmVQazhxWC9pYWFEa0RyOGk3cFFtOW9p?=
 =?utf-8?B?M1ZmZFNQb1Zib2RKL3B5OTNiWThmcjNDRytMaVUxVnN0VjFFLzY1ZjQyVkVr?=
 =?utf-8?B?UzZqT0toUVBDeE5zanhrV1M4TVQyVkJiVjVaMkJ1Z2t4ak0xenJyMnVQMGVM?=
 =?utf-8?B?SWpkN3lxWHhzdEtFZGJsMVJDeU04OUswSEUxVTBnMFdQdmxoUlRNWlhiSXhr?=
 =?utf-8?B?VjQ1eXppMGRKUHJ1c2xBcjU1SHZJWWp3WVZ2elJINnhyeWdiekNJcnhweDIv?=
 =?utf-8?B?QjZnK0dGKzIrY0xOMGpxbndaSkY0VGlqc2F1aTl0QzUzMzF6Unp0THpyNkFp?=
 =?utf-8?B?dlFNQW4rN3RXSC9kS3Urcm4zbXVqMmhnNkxDSkwycGpjaWRJU09OZTBGWDVZ?=
 =?utf-8?B?S1A0a3NWYWRYR3NURytZRlRDMHZaZWE4Q2pseUZNL0dRSkxkS3dFa0JaeWph?=
 =?utf-8?B?MjZraVdEclN4L2h1MFc5VXdaeWhxTDhGUzdSdmZNOHlTalR1dERwSnRIZFk5?=
 =?utf-8?B?cmxzN210MzNDYm5SSU9XMmYyYk9JM3JqRVBTMEhoL1U3NXEzdUdZVkJvaHZO?=
 =?utf-8?B?c204RTdUVTJxbUQrOERWZEI2N0JaTmhFV0cza2U2UzJzVFBZZXlqQzhiT1Bj?=
 =?utf-8?B?SGlUQUFsR29nMXVNM1p4MHd2bC8ycHhhMUFNZ09ER2YxQm9VZUpCYlZ4bmIz?=
 =?utf-8?B?MnRrVUVvNnVSQUg5NVBveDYvb1k4MGF6c2FQWW1yekI3d016ZFYzNFFSRTN3?=
 =?utf-8?B?cTZKMXlHOWpTY0V3aUVkREc3QVp4MDUrYm5Pb2VFckhwQml2THdaVXpMWnVr?=
 =?utf-8?B?WjlvV1Z0RTN6ZW5uYitlK2hqd1ViT3E5cjZmSjYxRzNETlduWUtRNWtpT0xY?=
 =?utf-8?B?TGs0Q0w2V0pibC9VbHRmajdoelJKOFJrUHhFWWUrZFpCM0RBRElhTEZndHQ3?=
 =?utf-8?B?QXIwVTNtRnhBakgwRVRaOGgvVzJoUWd2dWJ2QXV3N1BuZnJ0RTN0U2hCaTdm?=
 =?utf-8?B?Q0UyZlNUMmdVS202Qk1ZbGQzdnByd013dnBhbkUzYWdtUDlJRG9Oek5xaURo?=
 =?utf-8?B?YWFhWHpxQzBaZXdQNStlUHJzQjVheXRKWWpWNVM4Y3d5ZDZ4SEJ6aXlPWUdT?=
 =?utf-8?B?NS9BaUcrL25nTkhWZTJ4Ymo5eWx4SmdxSVgraGZveXpxRXJnS25samlFY3oz?=
 =?utf-8?B?WGY2a29GZis4aVRTWHh1UmNVb2k3cUV2T0ZYQzYxWWs0MEZvT3NvSnRFMDh1?=
 =?utf-8?B?SXViTmxtTFFmQWpUbG0zZEVHbzRPU3J3djZETTVYRGlwOTRLQWlWa2tqMUVS?=
 =?utf-8?B?VVNNQmJxMDd4WUFWbDJHMkpDK0MwemduWk1jQjErWVBxbnZxZDQyMlVRa2hv?=
 =?utf-8?B?UjI0Vi90cGRsTVNOMWhmUExtTjN1K3g4VnBFVzNZdFJXeEJMdTZWUT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b848bd-5871-4f51-ab14-08de51c75759
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 10:42:54.0499
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HKVYQSkI8MqErduXy83y4uCitbezvMRs6z7nOlQQrrTBykSTP+zAlXJvRPsj+Y9gpSEplyZilvGxMEiUBJzUDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMDPR04MB11556
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_024258_645388_C3808A64 
X-CRM114-Status: GOOD (  30.83  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKYW4gMDgsIDIwMjYgYXQgMDM6NDc6MTdQTSArMDEwMCwgQW5kcmV3IEx1bm4gd3Jv
dGU6Cj4gT24gVGh1LCBKYW4gMDgsIDIwMjYgYXQgMDQ6MjI6MjRQTSArMDgwMCwgWHUgWWFuZyB3
cm90ZToKPiA+IE9uIFdlZCwgRGVjIDI0LCAyMDI1IGF0IDAyOjUxOjExUE0gKzAxMDAsIEFuZHJl
dyBMdW5uIHdyb3RlOgo+ID4gPiBPbiBXZWQsIERlYyAyNCwgMjAyNSBhdCAwNzoxNzoxNlBNICsw
ODAwLCBYdSBZYW5nIHdyb3RlOgo+ID4gPiA+IFRoZSBDUiBwb3J0IGlzIGEgc2ltcGxlIDE2LWJp
dCBkYXRhL2FkZHJlc3MgcGFyYWxsZWwgcG9ydCB0aGF0IGlzCj4gPiA+ID4gcHJvdmlkZWQgZm9y
IG9uLWNoaXAgYWNjZXNzIHRvIHRoZSBjb250cm9sIHJlZ2lzdGVycyBpbnNpZGUgdGhlCj4gPiA+
ID4gVVNCIDMuMCBmZW10b1BIWS4gV2hpbGUgYWNjZXNzIHRvIHRoZXNlIHJlZ2lzdGVycyBpcyBu
b3QgcmVxdWlyZWQKPiA+ID4gPiBmb3Igbm9ybWFsIFBIWSBvcGVyYXRpb24sIHRoaXMgaW50ZXJm
YWNlIGVuYWJsZXMgeW91IHRvIGFjY2Vzcwo+ID4gPiA+IHNvbWUgb2YgdGhlIFBIWeKAmXMgZGlh
Z25vc3RpYyBmZWF0dXJlcyBkdXJpbmcgbm9ybWFsIG9wZXJhdGlvbiBvcgo+ID4gPiA+IHRvIG92
ZXJyaWRlIHNvbWUgYmFzaWMgUEhZIGNvbnRyb2wgc2lnbmFscy4KPiA+ID4gPiAKPiA+ID4gPiAz
IGRlYnVnZnMgZmlsZXMgYXJlIGNyZWF0ZWQgdG8gcmVhZCBhbmQgd3JpdGUgY29udHJvbCByZWdp
c3RlcnMsCj4gPiA+ID4gYWxsIHVzZSBoZXhhZGVjaW1hbCBmb3JtYXQ6Cj4gPiA+ID4gY3RybF9y
ZWdfYmFzZTogdGhlIHJlZ2lzdGVyIG9mZnNldCB0byB3cml0ZSwgb3IgdGhlIHN0YXJ0IG9mZnNl
dAo+ID4gPiA+ICAgICAgICAgICAgICAgIHRvIHJlYWQuCj4gPiA+ID4gY3RybF9yZWdfY291bnQ6
IGhvdyBtYW55IGNvbnRpbnVvdXMgcmVnaXN0ZXJzIHRvIGJlIHJlYWQuCj4gPiA+ID4gY3RybF9y
ZWdfdmFsdWU6IHJlYWQgdG8gc2hvdyB0aGUgY29udGludW91cyByZWdpc3RlcnMgdmFsdWUgZnJv
bQo+ID4gPiA+ICAgICAgICAgICAgICAgICB0aGUgb2Zmc2V0IGluIGN0cmxfcmVnX2Jhc2UsIHRv
IGN0cmxfcmVnX2Jhc2UKPiA+ID4gPiAgICAgICAgICAgICAgICAgKyBjdHJsX3JlZ19jb3VudCAt
IDEsIG9uZSBsaW5lIGZvciBvbmUgcmVnaXN0ZXIuCj4gPiA+ID4gICAgICAgICAgICAgICAgIHdo
ZW4gd3JpdGUsIG92ZXJyaWRlIHRoZSByZWdpc3RlciBhdCBjdHJsX3JlZ19iYXNlLAo+ID4gPiA+
ICAgICAgICAgICAgICAgICBvbmUgdGltZSBjYW4gb25seSBjaGFuZ2Ugb25lIDE2Yml0cyByZWdp
c3Rlci4KPiA+ID4gCj4gPiA+IEFyZSB0aGUgcmVnaXN0ZXJzIG9wZW5seSBkb2N1bWVudGVkIHNv
bWV3aGVyZT8gQ291bGQgeW91IGluY2x1ZGUgYQo+ID4gPiBsaW5rIGluIHRoZSBjb21taXQgbWVz
c2FnZS4KPiA+IAo+ID4gV2UgaW50ZWdyYXRlIGEgU05QUyBQSFkgaW4gU29jLiBTbyB0aGUgcmVn
aXN0ZXJzIGFyZSBkb2N1bWVudGVkCj4gPiBpbiBTTlBTIGRvYy4gQW55d2F5LCBJIGNhbiBhZGQg
YSBsaW5rIGZvciByZWZlcmVuY2UuCj4gCj4gSHVtbSwgc28gdGhlIHJlZ2lzdGVycyBhcmUgZGVm
aW5lZCBieSBhIFN5bm9wc3lzIGRhdGFib29rPwo+IAo+IFNob3VsZG4ndCB0aGlzIHBhdGNoIGJl
IHNwbGl0IGludG8gdHdvPyBUaGUgYWNjZXNzIG1lY2hhbmlzbSB0byB0aGUKPiByZWdpc3RlcnMg
aXMgc3BlY2lmaWMgdG8gdGhlIGlteDhtcS4gQnV0IHRoZSByZWdpc3RlcnMgdGhlbXNlbHZlcwo+
IHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBnZW5lcmljIFNOUFMgUEhZIGRyaXZlciB3aGljaCBzaG91
bGQgYmUgc2hhcmVkCj4gYnkgYWxsIGRldmljZXMgdXNpbmcgdGhpcyBsaWNlbnNlZCBJUD8KClRo
aXMgcGF0Y2ggbWFpbmx5IGNvbnRhaW4gdGhlIGFjY2VzcyBtZWNoYW5pc20gb24gaS5NWCBTb2Ms
IHNvOgogLSBpbXg4bXFfcGh5X2N0cmxfcmVnX2FkZHIoKQogLSBpbXg4bXFfcGh5X2N0cmxfcmVn
X3JlYWQoKQogLSBpbXg4bXFfcGh5X2N0cmxfcmVnX3dyaXRlKCkKCmFuZCBkZWJ1Z2ZzIGZ1bmN0
aW9uIHRvIHNob3cgdGhlbToKIC0gY3RybF9yZWdfdmFsdWVfc2hvdygpCiAtIGN0cmxfcmVnX3Zh
bHVlX3dyaXRlKCkKCkRvIHlvdSBtZWFuIHNwbGl0IGFib3ZlIGludG8gMiBwYXRjaGVzPyBQdXQg
dGhlIGZpcnN0IHBhcnQgaW50bwpwaHktZnNsLWlteDhtcS11c2IuYyBhbmQgdGhlIHNlY29uZCBw
YXJ0IGludG8gYSBTTlBTIGdlbmVyaWMgZHJpdmVyPwoKSWYgc28sIGRvIHlvdSBrbm93IHdoaWNo
IGdlbmVyaWMgZHJpdmVyIHNob3VsZCBJIHVzZT8gSWYgbm8gc3VjaApkcml2ZXIsIGNhbiBJIHB1
dCB0aGVtIGluIHBoeS1mc2wtaW14OG1xLXVzYi5jIGF0IHRoZSBiZWdpbm5pbmc/CgpUaGFua3Ms
Clh1IFlhbmcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=

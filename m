Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F667C3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 10:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxzQi4uiD1KQ71A7g+RRAiCW8+WEUR4xbEW7YB0B6Xw=; b=RiOcIfrj/vOIQt
	F84hZR5ZhSM5It8JD03+2olNBdNEbd/el1XZE98pw+4ry1lNUWr8W/82vuFZmFHP57Do86k0F7b7D
	rHV5fS/cyL1/jICjh/wFxsTI5iKnnBeI14LVQVmaSx+Ph+ggcLCFLzH2XCuEyOBZG+ZoCQy/oiN3M
	OEpQ8ny6slcJtuH1SwEEHDsFO/Lxk6H9FsrXvyk/uQMfK1ZrB5dCJUnIwgyrtqI2TTSVro1t0QVRm
	3PfMKq1X60XAnqbAGhqXiAy1rLfV/VX+zHySXE5yLwE7zzG1Gtlp5ImMXEBAQoqvaZ//9YMK2E3qF
	v6NXB0DptNYyNgJWEauA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTVj-00000004pTC-46sk;
	Thu, 01 Aug 2024 10:58:19 +0000
Received: from mail-db8eur05on2060c.outbound.protection.outlook.com ([2a01:111:f400:7e1a::60c] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTVh-00000004pSd-1lZB;
	Thu, 01 Aug 2024 10:58:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QU2QWvT9367WqGDPGJ0c11i0lPx0+AHuTQ9a8FnuP6xjWp94hdmDD4szcs+v/N2XPo8QYd0g94amxYapcSHtFWQmi4kys4t0tStdJRpmqr5msxyDGmZ1weOgVxydwLpm6ZNGerOsnDbyoILqXDtdiJzAdMekCg7dhee5lw5pVwB8xv9KDR5g9KE/37GzXlWvgrE60sJWIfr69DvfyJuRuSsTs/nYIwXY6dQYx+HdsHRMmYHPm4IxtlFZ5ADeIi2tobc6PtNCDDysDL8qjBwvPtXL1xdCDtEYPsjA04noKSqW9YvrC55IG1angdzR5z3obcOcQX4FsPPxo1Cv3fZ5tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3oEEqDMVotL3pAUvqiRnkbfexTBpqYx7DZry/MCZEB0=;
 b=kcbtq0Z5Gcs1Rr+tplgYLqgBz8zgBX5HQgbnYGYfWJqF/NXS2OWzdc5xrCAfzXcag7uiSISY+ix9lmm79vlfMv/jGmGdbRkmsLGGMEqOKwPmlU9ohkg0wW21yyJhlqP7wYSG2uY+8fn/06oEMmrNffCg1RgwYBUv2WaxMzI86haX8qZ81rAzPCqu/29iMWFM/3+lQYLGh8BE8vvkQX9QHMoATtBznf4a5lSMSjjhWc2mE6uGQ6Tcck7gxzzC4ljGY+kr2431hGgDDnBzplvQYMCAcvdjX9Ky+IaRJoUP9EkZ7LDA2kpRTA28E4cDV5sDv1Xvb7zgSfECGJnXdulr1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3oEEqDMVotL3pAUvqiRnkbfexTBpqYx7DZry/MCZEB0=;
 b=ADCpe9V/nr9MDiWjBrtV1F+RObmFC6Bqv/oJEis4gh7uFb00Fe7hrDyq2LD86gJ8CoSS9auVmVsUmZsUnAVYnBb7RzDwJs2FYLW62KQM++pYrWbTtMhhpfC3nju/tg8g6U6852lgm5GV0Vku7nwlVttrvUEuFL2xOpczu9ttkiExjsLZ0jVS2b0HgWdXaGOhFANCvRTcSmth3yGdsF3xqGzSObu90pTNS0vDU5eaRD/LcdkLed5nJdR6yHtRA2rh3AjijEomgXe80fcAm0VMJKEfJcrbwTL+HhtX2lshTyWoRhs1LkgAoPC7hq1nq4WMKDzSBH+FYP+ayp4uKs4eGg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com (2603:10a6:102:20c::17)
 by VI0PR04MB10253.eurprd04.prod.outlook.com (2603:10a6:800:23e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Thu, 1 Aug
 2024 10:58:12 +0000
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::cdc5:713a:9592:f7ad]) by PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::cdc5:713a:9592:f7ad%3]) with mapi id 15.20.7784.016; Thu, 1 Aug 2024
 10:58:12 +0000
Date: Thu, 1 Aug 2024 18:55:38 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: vkoul@kernel.org, kishon@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	jun.li@nxp.com, linux-phy@lists.infradead.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: fsl-imx8mq-usb: fix tuning parameter name
Message-ID: <20240801105538.aieqm6qliiw6z2su@hippo>
References: <20240801065716.3819399-1-xu.yang_2@nxp.com>
 <5802707.GXAFRqVoOG@steina-w>
Content-Disposition: inline
In-Reply-To: <5802707.GXAFRqVoOG@steina-w>
X-ClientProxiedBy: SI2PR06CA0002.apcprd06.prod.outlook.com
 (2603:1096:4:186::10) To PAXPR04MB8829.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8829:EE_|VI0PR04MB10253:EE_
X-MS-Office365-Filtering-Correlation-Id: d27d4b9f-94df-498d-538d-08dcb218d5f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|52116014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2tuN0FkOUJnSUpkRnpPUmZlRDhHOC9XZ0QvbVhmb0dSUmxTNGEwQ205Lytk?=
 =?utf-8?B?V2x1YTNPcnlwdUxjNE5vc00wZnFRb09xVVRCcTE5RzFyaVB1OW4rdjNoWVpD?=
 =?utf-8?B?R0plejA1TmIrMU9FbnRPK25mbFlnbDhtOVMzYVBZdmFVZ01LcW9GdWUyV2tY?=
 =?utf-8?B?bWZkekdySmtyWWRGa2FHOEJWeFZReXVzV2dHODNaS1pNZEY4YjVLYllteVla?=
 =?utf-8?B?bmJrL1drbitVeEJRTnQxb1Jkc0FGTm9uMkxSdzFXV3RPTVZGcWdFT2dwMjQ4?=
 =?utf-8?B?Wmp1R0RvblFNTVpISlJkMnhSK0N4MlB5ZWpDbHpLMkdOTjNVS3dqbkdxbjRX?=
 =?utf-8?B?dmZrUVlnTE8vNXF4K3JVeVZUNjhpZEt1UWt6Vk5vNi9IL1ludGNHeWJ4WldI?=
 =?utf-8?B?bGQxRU1jQUE0QUFTam5leWNuOGlGSnY0aUdkN2tEU2NxZnRJNVZURVRjeXZS?=
 =?utf-8?B?YlVJMVppRXB2Z29wZnBjMVplM3g5VFN3cnliVTR3TVNGK0xGUTdKNEhFS0tX?=
 =?utf-8?B?VGV6dk5zcXNaTDU3V3YxcTZOVWwva24zMVZHYlloU3ByaXBVZm54OUdiakMr?=
 =?utf-8?B?eWMwbnpTTE1hRWxhZ0tuRmRRV0d3Um9ReGJPdGlkQ1o4R21vNmwranlOTmtG?=
 =?utf-8?B?OTRMSE5Wa1Y3eGY4Nit2SkYvdFRveHNZelh0Q0hIZDVoVzRCZEdTTCtHY24w?=
 =?utf-8?B?blJoMlZjekhzSDJhWmYxSTc5WWNzbEpSWWFOMXE5Z29JVHczS0FQUE40OWpR?=
 =?utf-8?B?Zms3ZWFYbCszNjU3NDVxcXRGTllJMHVjMU9xQ3EycTc2R1kyZHMrbzQyUnRI?=
 =?utf-8?B?ekdzVXRIVjNLSUJoWHdwK0hudnZYaFAzWWRKeUh5ekt3RlhjTjVIQXNNdC9K?=
 =?utf-8?B?ck1QbkcrbHRpOVNKZENsVWwra3FzOGNzRGx2UHhTRHRKQ3c0eUI0STFBTEpC?=
 =?utf-8?B?WTMyLzI4ZVg3ZmliMlpHZW0xRzBtZDcrN1ZSLzVLSTB0TEdmQWR0bmtKdmJT?=
 =?utf-8?B?UnhaVVVJNjN4TjY2U0c4NjRkS0Z4R2V5OHRGNnFQN3FHWEsweVBjcURzNmYz?=
 =?utf-8?B?aERZRDVxWURKc25pajVCL2dIUldFTWJQQ21xN1hTamp1NlM1UFprS2VRdlNB?=
 =?utf-8?B?d2xHQ3hlZHQ0QnVwWmxMSDd2M1p6TVl2aG1KTUUxV0dOYzI4K24zZXc3SHVC?=
 =?utf-8?B?Sy9WMTI5YUtTeUtYZlFzQ04yRGNJT0M1QzBJRVl1aytpSUJFbE4zTGQ5Qm5N?=
 =?utf-8?B?amZMK2tqSGhwcGwzNEdaZS9QSTZkQW5NM1FUcEhlZVlPbkYrbXhsZ2RiSGFV?=
 =?utf-8?B?YlZUWXlySnhJeVpVS1BKUFpWb3FPdTRpaVhvUmY1VFJXczV3cVN5ZjViSjND?=
 =?utf-8?B?clBDQ25UdC9icWsyOGVLckVvQzRvMVJzNzd5YW9BekREeEFXbkxxY05iRmFS?=
 =?utf-8?B?a2pyNUpXTHlGMlhxOW9kWXdlVlNja00yaFl0bEZkaEczdThZRHZNczFmYXdL?=
 =?utf-8?B?UUdjeDBRWnZuSkRXaEZ3ZlhocUtDUEV1R3hwU0RPVEhtbjdSNWN2am5RY1ly?=
 =?utf-8?B?b29odTNYQ0FaZCtJdFZzK0VTL2tXeXoxS09RU1ZQREZ3MXArLzZsYWRUblRo?=
 =?utf-8?B?ZnM5citDUDdHbDdsQXhrbTYrMTc0N0hqOEJyK216QWh2Y20wVkxpZVRiL2RB?=
 =?utf-8?B?KytYUzRadHdCSGVVeUEyYm9ob2pLNkF4ZStEdHQ1cGpHUUlyalpiRkFKVklB?=
 =?utf-8?B?aTBianQ4TkxDYnlRb1BKYU1JUnE4SWxVZlVhOHJQTlZLbDBPa1UyNjQxUzBl?=
 =?utf-8?B?MzNMS3lXcWdWT0ZwNDZ6dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8829.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(52116014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzVYRWVEU0JSVlZmUnNlL0ZVaUVlRFBvZURjWVlLa2UrUmVDRXRzVytBWGFo?=
 =?utf-8?B?MG9KOWxnZk5UemZLYTNEc2VWNTFoamxqbFNiVUpCUlF5MmhXM0ptZXROc2xz?=
 =?utf-8?B?VXJMUDRqazhEOU5FRG5hVHB3WVZ1UFFyejBSQnpMOFRVZ0Y5bTFXZGN5V1dW?=
 =?utf-8?B?cDJvZXFaMjRyQW1FeWczNVlLUjVyVEIrY2x6SXRIbHlyLzRaaG5EcjhweFE3?=
 =?utf-8?B?aDVIQWVYQkJxYXpxSENKVFF4Wm05UDh6dEwrNEExL1lWQjZXTkZTQ0krcU5V?=
 =?utf-8?B?ek45cWxtRjNVWFlVZ1g0UFNhS0pMQ2NLMG9pWXp1M1Q5NS8xRzZpdEk5cGdj?=
 =?utf-8?B?S0dvU05CckxWazloait2cDJ0bXVRWS9ZRGdOZU5LcS95YW1XOWxRYUlmRnk5?=
 =?utf-8?B?SjNSNE9GT3FnNmF2ZEZ3NXF2WGpwTTRMMTFDYTJSNGd5MTdwUmNZK3VXVlNX?=
 =?utf-8?B?bGJmWFJjSWdnZFRGKzB3OFJpbHFMaWhLOG0rOGtHTjFnOEdHN1c1MkxBYXdy?=
 =?utf-8?B?cmZsMjE3WEVXL0JsSmdNRmE5Wkg5UTlaMkFGN0IzSEtxU3BOQVBMYlRsYWVj?=
 =?utf-8?B?Y2E3a2YvSWlLVzZvQldUUjhWc0preHY5ZVNJclluZnVUWnlOZWV5RUFwYi80?=
 =?utf-8?B?c2t2VjNVRVpwOWsxc3BtUDNHV1pFdnFIU1Uvd0l4dVpRbnRrZGpCekNpbXN4?=
 =?utf-8?B?Z3p6YUlBQnVHcllYRmtja2RBanBHbFlZdFY1ME5hNXdtbkdsajlmcndHNzhJ?=
 =?utf-8?B?MStYWkxURnJyT2d4eWhQbks1enJlbGpKMW5QUHNyVEZ3cFZZa25ibFAyUmxC?=
 =?utf-8?B?aE9NUitvTGl4Nk5BbEIwUmcrNXE5dXF6Wno4NitGTENneDNOWVpzeVRUazBv?=
 =?utf-8?B?V2IyQllTalRrL0pRbXB1NHhYK2xzTXhxc0ZOcG1pNXphc1hycHVoUkRBM1VW?=
 =?utf-8?B?eHJyUVpRbWFkaW0yVzR6ZnZjVDF5VEZ6MHlvZVdPd3NueDM3MlJFMjFOMXd5?=
 =?utf-8?B?RVpSMTB3M25TakpNSWY2ZGlLNk1oN3JkbGpCU1hmQnNvL2k1TlY3aTlaMWU5?=
 =?utf-8?B?ZUU3cmQwa1hGOVR3VDlDdVhTaFA1eUREbHJqYVJzZTRkeUdFS3BwWTVsN0d5?=
 =?utf-8?B?WGlUSmV2d2RPazBzR3NnMzhiQ3pxNHBhbTBkT2xnd1Y2eUJ2NWtlZTZVeTla?=
 =?utf-8?B?NEJaMjNMcGZ0T3JLanJhYzIvWU9TT3grZXBXZW1JMlVtU1NwbUY2NnVtMExm?=
 =?utf-8?B?RFZXN0ZUMEQ5T3crbVJidll0bVJtUFBMaUtrZXVSVGRNdGpjellzVUdRMVBr?=
 =?utf-8?B?SG9lV0tkV1hXTU14eW9Yc3A4SitQZnloY1Jpa1NVeFVKWVJYeWQ4c3RET0Nv?=
 =?utf-8?B?dTUvd1piTGYyaEQvR1pwUTdnd2lxbVk1c2xKVjd1eW9tUzdZNG43cytBUHJL?=
 =?utf-8?B?MFFFNEN4ZGt4VWYvb2F2NGtrSGI0c0RjVnlxWWltMzJic3d0ejkweE16a3g2?=
 =?utf-8?B?QlgzK2F0clZpSlIzQUtmREhmQTRqUFFLSzNmbjcvZ3JiSFp4STAwdUlEaFlx?=
 =?utf-8?B?U2lDdkpSeDZmbjE0eGF1eGRwVzZPNFlRKzF1M0gvVm0zdmYxM3RIRC9Ud3Yy?=
 =?utf-8?B?TnI1MXdQbjRRV0lIYVZVYk1oLzl6Y0VSd3VBZ0EyM25EL0VhVnN5MmJpUmxa?=
 =?utf-8?B?VW9LUnJwUGhBOGhxRTR4ZDJIT09iU01PMlBIRWhJZTZqR2xvWDNiV3NoaUV2?=
 =?utf-8?B?M2M1TThCQ1crWEJjZDcwMzk5R25GTGg0ZnE1MXlXVEN6T0txZXZlN3BZWDYr?=
 =?utf-8?B?Z0ZqbjNlN3M2V1F4aUdRdXkySktlYmlxaFNyV01zNXkyYXhpVzh6Vk85dkJ6?=
 =?utf-8?B?UlRIWEgzZndYeUlIdk1HeVpNNi9obFZoWXQ4MzJMeCtjOXBZUUlsSnRBc3dE?=
 =?utf-8?B?dFFuU1NpaGZaa2VyM0RWa2lTSG5WUFBGTGlWNXlUd0g2OStVdnhNclZhRURE?=
 =?utf-8?B?ZEJHd3ZSWW16c1lSUTlqQ2ZjQUdEaVNKcXVDcklFL2VESDBuemZsZUpKeWV0?=
 =?utf-8?B?NUxDTEgzeTQwYVZvM2x5MTY4SitTM0lKNTZrUVBySURseXNkVERpWWZTdDRF?=
 =?utf-8?Q?lSEOS2NoxNrjtnzo42dkDBSyQ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d27d4b9f-94df-498d-538d-08dcb218d5f6
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8829.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 10:58:12.0522
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 55XkqjNq6EFtRIUHthw2kSnpAPulzt40ER7cHVLkuh2Cy23KaYTZ9TfSNOq2/NCouXtdFyybt6iS/vStgaVbLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10253
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_035817_489642_9DB08DA0 
X-CRM114-Status: GOOD (  18.42  )
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

T24gVGh1LCBBdWcgMDEsIDIwMjQgYXQgMTA6MzU6MTVBTSArMDIwMCwgQWxleGFuZGVyIFN0ZWlu
IHdyb3RlOgo+IEFtIERvbm5lcnN0YWcsIDEuIEF1Z3VzdCAyMDI0LCAwODo1NzoxNiBDRVNUIHNj
aHJpZWIgWHUgWWFuZzoKPiA+IEFjY29yZGluZyB0byBmc2wsaW14OG1xLXVzYi1waHkueWFtbCwg
dGhpcyB0dW5pbmcgcGFyYW1ldGVyIHNob3VsZCBiZQo+ID4gZnNsLHBoeS1wY3MtdHgtZGVlbXBo
LTNwNWRiLWF0dGVudWF0aW9uLWRiLgo+IAo+IFNob3VsZCB0aGlzIGluY2x1ZGUgYSBGaXhlcyB0
YWc/CgpTdXJlLiBJIGZvcmdldCB0aGlzIHRhZy4gV2lsbCBhZGQgaXQuCgpUaGFua3MsClh1IFlh
bmcKCj4gCj4gQmVzdCByZWdhcmRzLAo+IEFsZXhhbmRlcgo+IAo+ID4gU2lnbmVkLW9mZi1ieTog
WHUgWWFuZyA8eHUueWFuZ18yQG54cC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2Nh
bGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiA+IGluZGV4IDBiOWE1OWQ1YjhmMC4uYWRjNjM5NDYy
NmNlIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1x
LXVzYi5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNi
LmMKPiA+IEBAIC0xNzYsNyArMTc2LDcgQEAgc3RhdGljIHZvaWQgaW14OG1fZ2V0X3BoeV90dW5p
bmdfZGF0YShzdHJ1Y3QgaW14OG1xX3VzYl9waHkgKmlteF9waHkpCj4gPiAgCQlpbXhfcGh5LT5j
b21wX2Rpc190dW5lID0KPiA+ICAJCQlwaHlfY29tcF9kaXNfdHVuZV9mcm9tX3Byb3BlcnR5KGlt
eF9waHktPmNvbXBfZGlzX3R1bmUpOwo+ID4gIAo+ID4gLQlpZiAoZGV2aWNlX3Byb3BlcnR5X3Jl
YWRfdTMyKGRldiwgImZzbCxwY3MtdHgtZGVlbXBoLTNwNWRiLWF0dGVudWF0aW9uLWRiIiwKPiA+
ICsJaWYgKGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihkZXYsICJmc2wscGh5LXBjcy10eC1kZWVt
cGgtM3A1ZGItYXR0ZW51YXRpb24tZGIiLAo+ID4gIAkJCQkgICAgICZpbXhfcGh5LT5wY3NfdHhf
ZGVlbXBoXzNwNWRiKSkKPiA+ICAJCWlteF9waHktPnBjc190eF9kZWVtcGhfM3A1ZGIgPSBQSFlf
VFVORV9ERUZBVUxUOwo+ID4gIAllbHNlCj4gPiAKPiAKPiAKPiAtLSAKPiBUUS1TeXN0ZW1zIEdt
YkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxpbmcgfCA4MjIyOSBTZWVmZWxkLCBHZXJtYW55
Cj4gQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKPiBHZXNjaMOkZnRzZsO8aHJlcjog
RGV0bGVmIFNjaG5laWRlciwgUsO8ZGlnZXIgU3RhaGwsIFN0ZWZhbiBTY2huZWlkZXIKPiBodHRw
Oi8vd3d3LnRxLWdyb3VwLmNvbS8KPiAKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E59ACD5BC0
	for <linux-phy@archiver.kernel.org>; Thu,  5 Sep 2024 12:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wdmdTHEj1IkVFMyDT6TBPM4e6kWuTGd14LBJkAWv+Vg=; b=nW/hjAu6kWs7sktHTuyXKgb7OB
	lM8280vDt6ZFDio6zZ5ttVKjzl8UQpOFfBw5pqyoWBV62+9mRySHeLWKVxCvNb02X4YF/Oo3/BXMl
	sedsuuSsULnBSptQn2BnRowA5w8uufSUnJNd8+7JRCFYRxZpe8qI3ZrTmIQcJo8oGoY+JSm7oQTJw
	YpfGX9A7XeL/AACe7gkRbNH2rkWmJNM7qetEVGMQULofD46zGqV0xLrMZvsC30XEzfum7v0sjRTIQ
	qIPGfwKwuhyuhNKheCT17y8FvW8kSfi3XusySv/oc9fSMso2+mrsLdlc3hOLqN/v7TFV0mrRVmyN4
	qtJYsXGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smBrH-00000008O8G-25G6;
	Thu, 05 Sep 2024 12:45:07 +0000
Received: from mail-vi1eur03on20718.outbound.protection.outlook.com ([2a01:111:f403:260c::718] helo=EUR03-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smBqE-00000008NYS-1fxT
	for linux-phy@lists.infradead.org;
	Thu, 05 Sep 2024 12:44:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xoFVrd4ejnYrMheZ0G4GLt5+ZezH79vfRwqGz26PTVjVf6NHiRHPSiJXCgitzRnT6YLWZiysASWshgn4XYS9VVtDwvP3zQ+WUz5RWTqiNaWn1VmpXuMtoW9GdQ+Qv+74Eezzm3k+kRpJbYbQP8EKgAmeq1NKo/AfrcwjWv6Rhv4Nz2jtznMsSui5fX5YzIBjgI4zORCIYVoBMnAY2UJZ5XFo/cvfEP/LYKMJlQKTehGjDjqNBHVK3D3e6Sksq3imeEVZafeUCh3WjII7O/9V/0yZdjiPY/umheWKUDfK79T9Q2H/hJAfEVLxVZqS5OqWtxYkv2n5FLa50/Kjmtt/xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WA7OHq6WJYQt/7R22uiMApYLqnHH2EEcqfdtnpvUAzk=;
 b=SuohBPIhejl6bQ9CHq3+u4ImI/2caRe8PsAEwpiAx6lnBVM5cGv3Iasv8+JnmmPlPUQz4cB56gVVPIPox7o/HUBzUct7bjHdYdmBp1YuEn0qBX9sRO3ZQ2An0LHHDkjdXf9Yw5xdcuhqm9OnJUi9BS1rwJBgShZCKNVrjKFz4Po0EsXmiiS4bYuXjlWaSnIVL8xChdphZnvwxYvLeUXnIzjQ8BwtCmV2+rnd+YZ4FUBZOV1c2vOU8+HwJ+m0Ayyx36FcrC7izmHwVvURY9HpVy/YCi3XBycMtav9AiToGjPPkwxJto+0RXBDD9sToSIxzCB37/Gl0p+DHGe3w0LzgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WA7OHq6WJYQt/7R22uiMApYLqnHH2EEcqfdtnpvUAzk=;
 b=JcR5OZdPnrFR+lEabBMTREb4DcOIHYVwaU/qxKdxnFBwLInwWcAlcR0hx1v9h3E6zUjMj2Vm82T4x5SeNjPakUXlYvG33cGYe/uJA2onY2srGen1Tln1ZPS8RQCKsqwmKqh5FDmJ4mb/5Rv/+KFMBSoSqBOVitrrz1r3uQjUYMM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kontron.de;
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:263::10)
 by DU2PR10MB7741.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:49b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.28; Thu, 5 Sep
 2024 12:43:52 +0000
Received: from PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19]) by PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::b854:7611:1533:2a19%7]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 12:43:52 +0000
Message-ID: <3ccfb490-4924-47d9-ada3-22af95de8714@kontron.de>
Date: Thu, 5 Sep 2024 14:43:51 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 0/5] phy: freescale: fsl-samsung-hdmi: Expand phy clock
 options
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com,
 linux-imx@nxp.com, festevam@gmail.com, aford@beaconembedded.com,
 Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Marco Felsch <m.felsch@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
References: <20240904233100.114611-1-aford173@gmail.com>
 <0f9c3794-6bb4-41fa-8bc6-c00ecaf506a1@kontron.de>
 <CAHCN7xK_chbt3t2YkHRLmu+5wNg7KpDuJ0esLAMOav-2w5E4Uw@mail.gmail.com>
Content-Language: en-US, de-DE
From: Frieder Schrempf <frieder.schrempf@kontron.de>
In-Reply-To: <CAHCN7xK_chbt3t2YkHRLmu+5wNg7KpDuJ0esLAMOav-2w5E4Uw@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0072.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::23) To PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:102:263::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR10MB5681:EE_|DU2PR10MB7741:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cbf9a89-765f-4fb6-ba72-08dccda865d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bHNsTXBxbHNmWVhDRDVxalNyRms0S0c1TkoyQlBkN3VrSEQvNzVQODQxcWYv?=
 =?utf-8?B?TUZ1b0N5akE4L0JieEVhZUU3cmd2T3VYS3RLdHhZL3gzamJmcFhzYkxiNjVv?=
 =?utf-8?B?dU1WbFhSRnJmZjY4T0xPUTBSUkhZZXYwM1YzWHk2UUdzbUdMRWp0SjQ0Y3pZ?=
 =?utf-8?B?QjhDWjhzdWtrSHVXMnBySmhyS0xXek9CZWhBc1dZKzdmM0tESEIwMXhyTUhY?=
 =?utf-8?B?ekxZYXFKTzZFOW5LUGZuVituRDJVaWpyMStHRGwyalBxeXlFTkNlZ0NjOG0r?=
 =?utf-8?B?WlNlTzVaVG15RlJvcGNHdWpmd2NBOGJ0aGt0TnM1em1yOEVqVEdJL1Q0b242?=
 =?utf-8?B?VFY0R0xud2syeVpDMUx0MzBteFByaDIxMkdPYlVBZlI4UFZscVFycXl1QnZn?=
 =?utf-8?B?VS9aTENLclBQanBHY2hqTmxZOHdRVVZybnZ1NHBuVm90UlZ3cVQ4RUxiSzBN?=
 =?utf-8?B?N1dtK3c5SGJwUnJDVS9WZ0hRMERPaUU0VXZucEpTVXBBMzdzV0tlYiszMFc1?=
 =?utf-8?B?dmpqVkx3bklHZk5ZaFVtQVdxbmpPd2ZyTXdPQ3pBekVLQ0J3eWRvdGt0amRQ?=
 =?utf-8?B?Z3hyYTI2ak4yc3pOaGVvS2V5WmpTNHJsRU5jNU9kaDBiSkFiNDRFbnptME1D?=
 =?utf-8?B?eXpmUjIyY0xCNU1kZ3ppdjlCeGphQnMvT0JWTHJjSm5mbUpzRS9xSSsvTWl3?=
 =?utf-8?B?R1drTUpGeUp3NEhzRUxUaFgrQ0xKUmUxUjUvUmtUS2ljbHJuUWhkSnFZaFRJ?=
 =?utf-8?B?T2FnWnV3eHV4WDd2N0Fyc200TjNPYTdZSzhSS3QrOTg4eVZNN0RJNlhjZlZw?=
 =?utf-8?B?OFVqcEVISUdzMEhsWWN1NmdBak5USUtsbXgzZXhFNkI4WkdOSUFPd1R5bjVU?=
 =?utf-8?B?M1NLWXA2RTFIbEllU1dMYVZKU1BUelJVamYwNTIyeUllRlBJQzFPWU5NSytR?=
 =?utf-8?B?d3Y5RDRBa3RwTUxXL2k0ZWJKTFNsWEhvaExHZkhZYU0yOG5CQ0x2Y2JBd1NP?=
 =?utf-8?B?M2tXSktkYWk1Sk44VUtRVUpoVXY2ZGxGQlNLcDBkNWpxQkUxWVlXQnRaS1ZI?=
 =?utf-8?B?MlNERWYvRVhVNDdsT0dtL0NwdXhYd3BUcFVyWnFSV1FSaXpoT3lvOUJqQkFC?=
 =?utf-8?B?RDlGdFFjQmYwcEVxU0QzK3lOb1ViZWtVaVZhZ3RkWkg5dGE5NXh2VGlBUWVs?=
 =?utf-8?B?QlJ0c1VRL0g4QzVPajVUNFVxelpOaG11RVZHRHQrTEVZS2JmcHkveStONFRn?=
 =?utf-8?B?U2RhRlorbTRFcy9zeE5ZTkxHeDhhMUpOTUJGbEcxUHMvcGJsWXA3Rmh4OE45?=
 =?utf-8?B?Q21ObjQ0MmovczJOYXdteG8rbzBZaE4wR2pua0p6cXVRZFg5NjIvSmlZZDdx?=
 =?utf-8?B?UkdzMUNwNGQvcHgwZmFFUTRCeHg3ZGZkanlQRXVXQzRHZ0htcEVqT3JQRHcv?=
 =?utf-8?B?VjVNMW9pRmFFUFZiU0RoMjZ3enQ1UlhQeUw3TERoOEJ3RVhMSFhJT2hyR05L?=
 =?utf-8?B?RkVvZWI1NW9keFV5cDF5U2h1cUFvalJ1R3M5dVlaMFVZS3ZjSDlUZnB3R2ww?=
 =?utf-8?B?NGNCdUREM1BrdGRZdWxCMmpHU2crMUwvRmw1aU5PWVY3Rm5Oay9naXdDUEU5?=
 =?utf-8?B?TitCdnBnWHNyOExzeFc4YjA5Y1hVVnY0b0Q4dDQ2WGl3UEx5LzV6WmNEeFhB?=
 =?utf-8?B?Z056VmVzaWxwbmJudXc0WUVWM2hDMXA3QjNraDhwOVh4ZDlnOFJyejNWbmQ3?=
 =?utf-8?B?RjFhQms2Qm1wVFloTEpES1V4NmFpS25mb2p6Nmx6SmltNWx5UU5ZZGFsZzIz?=
 =?utf-8?B?T1hPcDdDUmlEYzBDdEdaUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1l2dFZ0ekVyS0MydU94amRIZ084QjhQZVFVT1RnNStVUVVrL0tQN3JzSG1i?=
 =?utf-8?B?bVF1WHJYZ2tFdFZkeFhYcTZacUpTaDRBYy9PMkhmY1lIZDluK1RMZnk4MDlv?=
 =?utf-8?B?eU5uZ0xXeG5JK2kxYnFDTW1Ra1dRZGx0aE5BRmgzT3Jua2s4UHZKTTM3Y1Nr?=
 =?utf-8?B?MHN3MTR2TzFQY2JFRGZacU9wNW50L1paSHQxNGJjSXdWbEE1QkxFS2VLTXNw?=
 =?utf-8?B?VllyallxYnBOU0xweGsrOU11SWQwa3FBckdCRHBnWUxsUHZXbVVXQ0xhL0Yr?=
 =?utf-8?B?ZzdITkgyamdvdnNFOTZScDR6WTNZd0JzOEc1VUdEdEp0MVJGMUxNdnIxYWgw?=
 =?utf-8?B?Rnd4bWZZVHhld2dSWjg4TC9lLzlDR3FScW14bGl1TVRLczI3dDZicTcrM0Fx?=
 =?utf-8?B?YlNCSCtyZTd4M0dxaGIrTmxBcmx4bVlOSWdYdE9YOC9pcU4vcU1VK3QwbEFT?=
 =?utf-8?B?ZmlKamlLQWg4SVlSUVBVcFprWDVhQzRaUWtYTG5IcmYwNVVSK3M5U1QyUFZ6?=
 =?utf-8?B?MG1WSjhyclR3bVFPNldoM3c0dVBWenA1QlBNSnk4Qi8yMSt3Sk9xTi90UEc2?=
 =?utf-8?B?cCtkOWNKclgwQk1uRmk0UW5DcDdNeTY0TWNlZDMzcEt3RFlxYjg3Ukswc3Yw?=
 =?utf-8?B?b3pxV2xjVGVEY29kTnRUWm45cllvcUlyUmlJaS9jMGVlazZPMmd1QlljMFVZ?=
 =?utf-8?B?ZE9wZ2dVd1dRUGZVdHZ0Q0JoSUtWaVRLd2F4aHlhUWQ0ODhyWUo0QllieE1V?=
 =?utf-8?B?dEUwSEFSOHRlS3dJUkRFNEhGbGpYUjhtMTUxZXUwS25kRzJJK2xaVHVpQWRK?=
 =?utf-8?B?clRDeXVFVFhrazI3YmZ4cVpHRnEvdVNZSHRqaWhITEtqY2pLZStvT05uVTNI?=
 =?utf-8?B?TzJPY1dCbThEUUtMSUZjRGZHbXA1b1BiSld5VnVBdGU4QmpCSFZqK0svTXBO?=
 =?utf-8?B?c1luYkd5UkpqMzlhRlRLMCtkUUM3YU82K1NsdG1WTzBlcHY4R0VQVmU2SkJx?=
 =?utf-8?B?cGcvM1dLU3FWUzBodHYxNVc2eXNLeGwvanFLQ1ltY3gvcGc3eC9KSGoxR0hh?=
 =?utf-8?B?N3RQVEZHbzVuMTN3SmF1MUZzdUNxdjF0akQ2Nzl4MUxkUHBGY1Uyc0V6Z2Fj?=
 =?utf-8?B?dmZZc0ZKb2hhV2o0c1BEQXdvdjhUMXRhVzJibmRyQk9kWFJrSmsxOUc3UXRq?=
 =?utf-8?B?STBJeUI4cG92S2RlOFBmazd3ZTNOa2ZkYThBcVladWgxU0VQQmpYSWlQeUdz?=
 =?utf-8?B?aGF4bFJlUWRsUVJqZWhHUko1T20yM1FpZW9qN1QxTEJBS21KQStIenhsTnI3?=
 =?utf-8?B?VWMxWExqTzBnNTZrYUw5TmRRcXdqM0oxNXl2NDhRME1OSitVeGdSZFZacmhS?=
 =?utf-8?B?K3dGTTJYZHQ5U013T3oweEtORWRmb29EWDByMnJJcmluZUpVeUI5bzd0M0gv?=
 =?utf-8?B?c2J1T1dTMWVjOEhzcUpEYlN0T3RHUEM3M2xYNkhRY21JNi9pelRZMGRxTVRN?=
 =?utf-8?B?OXc5WGhybE1uZndMN002Y00wZG5oTTFwVjlOd0liL1g1d0d2ZUNucXE3RUNw?=
 =?utf-8?B?S21tSUszb1FDUjlieDgyOTlmeTJ5cmlaaEN1SThTNjVnN3lPSHpEWFZmZ1dG?=
 =?utf-8?B?SjJUWHZLL2FZbWlFeFl3ak42dmFua3Q3b2JsSWE2Q05PRUdHaG8wSWhnWCsy?=
 =?utf-8?B?WXN1WGtLVWgxWWhGcUI5YXZVdStTdGN5L04wSnFGM3JDUDdSN1AyYXEvZDFs?=
 =?utf-8?B?NlFoMjQzMCtaRzdySHBZN2gvUlVOdjlaYnF3TCt3RC9icXVXbTk4V2pUUFc5?=
 =?utf-8?B?OUlXd3EvVi9DaGNubys4ZWhrdjA1N1plK0drZlJXbG8zMVRXLzh2VEJYVFlK?=
 =?utf-8?B?Z2FkR04vcnd3cEVhMk5ZVndCVGs1S1FYS1hmaGdwaXQ2YWJ4WmRPUkVkaTJP?=
 =?utf-8?B?S2FKZFE1ajJuOC9NZUdwekl6MWVLRm9CZ0lQc3FVWGhNTGE0ak45SldBb25H?=
 =?utf-8?B?K0FVbmRtSUpPS0NRZktkaWJZZ0FtNVg2a0sycFl2dWRGS0w0d0VDek50bStN?=
 =?utf-8?B?emErUnVLUnhIU1hoeHpncjNLekxWN1l2WjRDTG5oM3BuSHJiemNNdDhMR3pN?=
 =?utf-8?B?eUtNWjdZaGpZMlFiREM3dmZQT1VmaWRjSGlyTGdnMXlXY1I4THEzczBEbkdw?=
 =?utf-8?B?bEE9PQ==?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cbf9a89-765f-4fb6-ba72-08dccda865d3
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5681.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 12:43:52.7407
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qflWl68CHWGQjGA3aT9+sbSs6chgvtAFqUs4gPF2mucarHO/MO0uQ1v6tNfFwUJ+wCaX1AVtEP/PsDShz08DGV99LpJL/VTiIr9MYDX/0dM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR10MB7741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_054402_551897_7116BC24 
X-CRM114-Status: GOOD (  32.70  )
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

T24gMDUuMDkuMjQgMjozNSBQTSwgQWRhbSBGb3JkIHdyb3RlOgo+IE9uIFRodSwgU2VwIDUsIDIw
MjQgYXQgMjo0OeKAr0FNIEZyaWVkZXIgU2NocmVtcGYKPiA8ZnJpZWRlci5zY2hyZW1wZkBrb250
cm9uLmRlPiB3cm90ZToKPj4KPj4gT24gMDUuMDkuMjQgMTozMCBBTSwgQWRhbSBGb3JkIHdyb3Rl
Ogo+Pj4gQ3VycmVudGx5LCB0aGVyZSBpcyBhIGxvb2stdXAtdGFibGUgdG8gZGVzY3JpYmUgYWxs
IHRoZSBjbG9jayBvcHRpb25zIHRoZSBIRE1JIFBIWQo+Pj4gY2FuIHVzZS4gIFNvbWUgb2YgdGhl
c2UgZW50cmllcyBpbiB0aGUgTFVUIGFyZSB1c2luZyBhIGZyYWN0aW9uYWwgZGl2aWRlciB3aGlj
aCBkb2VzCj4+PiBub3QgaGF2ZSBhIHdlbGwgZG9jdW1lbnRlZCBhbGdvcml0aG0gZm9yIGRldGVy
bWluZ2luZyB2YWx1ZXMsIGJ1dCB0aGUgdGhlIGludGVnZXIKPj4+IGRpdmlkZXIgY2FuIHVzZSBh
biBhbGdvcml0aG0gdG8gY2FsY3VsYXRlIHRoZSBpbnRlZ2VyIGRpdmRlciB2YWx1ZXMgZHluYW1p
Y2FsbHkKPj4+IGJleW9uZCB0aG9zZSBsaXN0ZWQgaW4gdGhlIExVVCBhbmQgYWxzbyBkdXBsaWNh
dGVzIHNvbWUgb2YgdGhlIGVudHJpZXMuCj4+Pgo+Pj4gVGhlIGZpcnN0IHR3byBwYXRjaGVzIGRv
IG5vdCBkbyBhbnl0aGluZyBmdW5jdGlvbmFsbHkgb3RoZXIgdGhhbiBzaW1wbGlmeQo+Pj4gc29t
ZSBvZiB0aGUgcmVnaXN0ZXIgYWNjZXNzZXMgYW5kIGRlLWR1cGxpY2F0ZXMgc29tZSBvZiB0aGUg
cmVnaXN0ZXIgbG9vay11cHMuCj4+Pgo+Pj4gVGhlIHRoaXJkIHBhdGNoIGFkZHMgc3VwcG9ydCBm
b3IgdGhlIGludGVnZXIgZGl2aWRlciBhbmQgdXNlcyBpdCB3aGVuZXZlciB0aGUKPj4+IGNsb2Nr
IHJlcXVlc3QgaXMgYW4gZXhhY3QgbWF0Y2guICBPdGhlcndpc2UsIGl0IHdpbGwgdXNlIHRoZSBM
VVQgYXMgYmVmb3JlLgo+Pj4gVGhlIHJvdWRpbmcgaXMgc3RpbGwgYmFzZWQgb24gdGhlIExVVCBp
ZiB0aGUgaW50ZWdlciBjbG9jayBpc24ndCBhbiBleGFjdCBtYXRjaC4KPj4+Cj4+PiBUaGUgZm9y
dGggcGF0Y2ggdXBkYXRlcyB0aGVzIHNldF9yYXRlIGFuZCByb3VuZF9yYXRlIGZ1bmN0aW9ucyB0
byB1c2UgZWl0aGVyCj4+PiB0aGUgZnJhY3Rpb25hbCBjbG9jayBMVVQgb3IgdGhlIHRoZSBpbnRl
Z2VyIGRpdmRlciBtZWNoYW5pc20gdG8gZGV0ZXJtaW5lCj4+PiB3aGljaCBldmVyIGNsb2NrIHJh
dGUgbWlnaHQgYmUgY2xvc2VzdCBtYXRjaC4KPj4+Cj4+PiBUaGUgbGFzdCBwYXRjaCByZW1vdmVz
IHRoZSBpbnRlZ2VyIGRpdmlkZXIgZW50cmllcyBmcm9tIHRoZSBMVVQgc2luY2UgYnkgdGhlbgo+
Pj4gaXQnbGwgYmUgY29tcGFyaW5nIGJvdGggdGhlIGludGVnZXIgZGl2aWRlciBjYWxjdWxhdG9y
IGFuZCB0aGUgY2xvc2VzdCB2YWx1ZQo+Pj4gaW4gdGhlIExVVC4KPj4+Cj4+PiBJbiBteSB0ZXN0
aW5nIHdpdGggYSBBT0MgNEsgbW9uaXRvciwgSSB3YXMgYWJsZSB0byBhZGQgNCBlbnRyaWVzIGlu
IG15IG1vZGV0ZXN0Cj4+PiB0YWJsZS4gIEkgZG8gbm90IGhhdmUgYW4gSERNSSBhbmFseXplciwg
c28gSSBqdXN0IHVzZWQgbXkgbW9uaXRvciB0byBkZXRlcm1pbmUKPj4+IGlmIHRoaXMgc2VyaWVz
IHdvcmtlZC4KPj4KPj4gU28gSSB0ZXN0ZWQgdGhpcyBzZXJpZXMgYW5kIGl0IHdvcmtzIGZpbmUu
IFdpdGggRG9taW5pcXVlJ3MgcGF0Y2ggdG8KPj4gYWxsb3cgZm9yIDAuNSUgZGV2aWF0aW9uIGZv
ciB0aGUgY2xvY2ssIGFsbCB0aGUgMjQgbW9kZXMgb2YgbXkgbW9uaXRvcgo+PiBhbmQgMzAgb3V0
IG9mIDQyIG1vZGVzIG9mIG15IEhETUkgZ3JhYmJlciBhcmUgd29ya2luZyBub3cuCj4+Cj4+IEkg
c3RpbGwgaGF2ZSBzb21lIGlzc3VlcyB3aXRoIExDRElGIHVuZGVycnVuIGVycm9ycyBvbiBtb2Rl
c3dpdGNoIHdpdGgKPj4gdjYuMTEtcmM2IGJ1dCB0aGVzZSBhcmUgdW5yZWxhdGVkIHRvIHRoaXMg
c2VyaWVzLgo+IAo+IEkgd2FzIGNvbXBhcmluZyB0aGUgTENESUYgZHJpdmVyIGZyb20gdGhlIE5Y
UCBkb3duc3RyZWFtIGFuZCB0aGUKPiBtYWlubGluZSwgYW5kIEkgbm90aWNlZCB0aGUgcGFuaWMg
dGhyZXNob2xkIHZhbHVlcyBhcmUgZGlmZmVyZW50IGluCj4gdGhlIE5YUCBkb3duc3RyZWFtIGZv
ciB0aGUgTENESUYzIHdoaWNoIGdlbmVyYXRlcyB0aGUgdmlkZW8gZm9yIHRoZQo+IEhETUkuCj4g
Cj4gVGhlIGRvd25zdHJlYW0gdGhyZXNob2xkIHN0YXRlcyB0aGUgZGVmYXVsdCBsb3cgdmFsdWUg
aXMgMS8zIGFuZCB0aGUKPiBkZWZhdWx0IGhpZ2ggdmFsdWUgaXMgMi8zCj4gSXQgYXBwZWFycyB0
aGUgbWFpbmxpbmUgbWF0Y2hlcyB0aGVzZSB2YWx1ZXMgWzFdLgo+IEhvd2V2ZXIsIHRoZXJlIGlz
IGFuIG9wdGlvbiB0byBvdmVycmlkZSB0aGUgZGVmYXVsdHMgYW5kIGNoYW5nZSB0aGUKPiB2YWx1
ZXMgdG8gMS8yIGFuZCAzLzQuICBJIGRvbid0IHJlYWxseSB1bmRlcnN0YW5kIHdoYXQgdGhlc2Ug
dmFsdWVzCj4gZG8sIGJ1dCBpdCBtaWdodCBiZSB3b3J0aCBzb21lIGludmVzdGlnYXRpb24gdG8g
c2VlIGlmIHBsYXlpbmcgd2l0aAo+IHRoZXNlIHZhbHVlcyBoZWxwcyBvciBub3QuICBUaGUgbm90
ZXMgaW4gYm90aCB2ZXJzaW9ucyBzdGF0ZSB0aGUgcGFuaWMKPiBpc24ndCBkZXNpZ25lZCB0byB0
cmlnZ2VyIGFuIGludGVycnVwdCwgYnV0IHRvIGdldCB0aGUgTm9jIGFuZCBRb1MKPiBtb2R1bGVz
IHRvIGhhbmRsZSBpdC4KCkkgd2lsbCB0cnkgdGhhdC4gQWx0aG91Z2ggSSBkb3VidCB0aGF0IGl0
IGlzIHJlbGF0ZWQgdG8gdGhlIHRocmVzaG9sZHMuClRoaXMgc2hvdWxkIGJlIHJlbGV2YW50IGlu
IGNhc2VzIHdoZXJlIGJ1cyBwcmlvcml0aWVzIHBsYXkgc29tZSByb2xlCihoaWdoIGxvYWQsIGNv
bmZsaWN0cyB3aXRoIG90aGVyIHBlcmlwaGVyYWxzLCBldGMuKS4KCkluIG15IGNhc2UgdGhlIHRh
cmdldCBpcyBiYXNpY2FsbHkgaWRsZSBhbmQgb3RoZXIgcGVyaXBoZXJhbHMgYXJlIG5vdAp1c2Vk
LiBBbHNvIGl0IGhhcHBlbnMgb25seSB3aGVuIHN3aXRjaGluZyBtb2RlcyBvciB0dXJuaW5nIG9u
L29mZi4KCj4gCj4gRWl0aGVyIHdheSwgaXQncyB1bnJlbGF0ZWQgdG8gdGhpcyBwYXRjaCwgYnV0
IG15IG1vbml0b3IgZG9lc24ndAo+IGFsd2F5cyBzeW5jIHZhbHVlcyBmcm9tIHRoZSBMVVQsIGJ1
dCBzb21ldGltZXMgaXQgZG9lcywgYnV0IEkgY2FuJ3QKPiB0ZWxsIGlmIHdlIGhhdmUgYW4gdW5k
ZXJmbG93IG9yIG5vdC4KCllvdSBjYW4gY2hlY2sgYnkgcmVhZGluZyByZWdpc3RlciAweDMyZmM2
MDI0IGFuZCBzZWUgaWYgdGhlIHNlY29uZCBiaXQKKFVOREVSUlVOKSBpcyBzZXQuCgo+IAo+IGFk
YW0KPiAKPiBbMV0gLSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L3RyZWUvZHJpdmVycy9ncHUvZHJtL214c2ZiL2xjZGlm
X2ttcy5jP2g9bmV4dC0yMDI0MDkwNSNuMzUwCj4gCj4+Cj4+IFRoYW5rcyBBZGFtIGFuZCBEb21p
bmlxdWUgZm9yIHRoZSBncmVhdCB3b3JrIQo+IAo+IEkgZW5qb3kgcHV6emxlcy4gIFJlYWRpbmcg
dGhyb3VnaCB0aGUgdGFibGVzIGFuZCBsb29raW5nIGZvciBwYXR0ZXJucwo+IHdhcyBmdW4uICBJ
IGRpZCBzcGVuZCBzb21lIHRpbWUgdHJ5aW5nIHRvIHVuZGVyc3RhbmQgdGhlIGZyYWN0aW9uYWwK
PiBkaXZpZGVyIHN0dWZmLCBidXQgSSBkaWRuJ3QgbWFrZSBtdWNoIHByb2dyZXNzLgoKSSB0cmll
ZCBteXNlbGYgYW5kIEkgbWFkZSBzb21lIGZ1cnRoZXIgcHJvZ3Jlc3MgdG9kYXkuIEJ1dCBJJ20g
bm90IHF1aXRlCnRoZXJlLCB5ZXQuIFRoZSBnb2FsIHdvdWxkIGJlIHRvIGJlIGFibGUgdG8gY2Fs
Y3VsYXRlIHNvbWUgbW9yZSB0YWJsZQplbnRyaWVzLiBMZXQncyBzZWUuCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2FC3C30653
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jul 2024 14:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:Message-Id:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QstUe26L4fisq2i7EXUPkWqZ6pUwcEktm1/zST9zCXo=; b=e/20wkr3O6NRZ2
	k6t9QoGnHLpuyUAFVP8bLYvSp1DHMzQ2exsW3TR2mGnFbQ+ocHjU2FQvK4T+YoFV48aFdFzt7UkTb
	lzwQB+3LIMHlOyj+WTxs2y3jeMDukBhL7e+zvv5+DnrBIQAzNZK+qqNDZpilf+DDWOvH26cIsMaY7
	l3SvjaHweKLO3HNrDAifPsXFysEQ/bLIR5fS5AST2cpOoNZ2/Dm/Wp7Ua2+rc5zB+AiXP+Tnf5voY
	AiCDDKVIKqbWAdaXGmgAIySyQTiG3YOJSkH9S9pIpykwE++XU/4x+JezJcILIiofwhvQ0nkhlRTK2
	5It19ZEwvelBAhEyjItQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPNuL-0000000DaoC-0yjJ;
	Thu, 04 Jul 2024 14:58:01 +0000
Received: from mail-am7eur03on20701.outbound.protection.outlook.com ([2a01:111:f403:260e::701] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPNuI-0000000Dam9-317a
	for linux-phy@lists.infradead.org;
	Thu, 04 Jul 2024 14:58:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0qiY8b+BYthVDQiOBrrWb2KBuYQAvaj4DmTF2Wgr7l3bMmyT/YiiOf8qZs6+NufDwa97iA8wXU+agazYUhD+1i9ikBOPD1fw5VG6mII3GkHyUf1D24MBtry//EXc0G8NF57+nHFAEUzdHqtKF0XM+GigQhq52vpU/kvNE+DPr13NXUCrCv33MWS6ankeBFT9GUSqyjvLrhnxGwUoEaKLwhqXAgofPA/dNiaFfNWTXyJWLqzxW7TmboTIM6A+o09vHFhNzRC0RcIxZPoJxqXi7pcr6Vm6NZ1R5OUgRLiF8vTsjGUGnVKgpIOFpD63K5m3nIackPiTj14tFRUKvau7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/eoQ6fFJX5T1MlhiMlHhbt5EfH/BBq0Tmb7ZRgfJ6oo=;
 b=Yir6l4NM63f74io0FY8PwQ0LPXOLnEsqz04aXyweBTLv27heRGX0YkAi50dbs+SJ3j0ov7w35PiRVkD+RyuIw1MxxorrCAUvK5K93E4Gwo8e0Y3rYx5I3IezJjCZA6Jjzb/8dkdfoZD/b2CNr64gaR+jTl+c0R6Rzjqs14+ApPNJw4Ll3iVXKFw3ZJUnsr8UBd5ln+orktS/wmibQZzSWkcNNrHWxRu3+qr1fR73fTlj/6CdVFLQj1v61qCwUFAbP9I+JAMHI3Xpwb5MgXQKg4/rxMLLeHJn7KZIl7GOzUvHKBJdq80368oO6uDpYqTgWJfg4aYSv32hAKtDyX6REw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/eoQ6fFJX5T1MlhiMlHhbt5EfH/BBq0Tmb7ZRgfJ6oo=;
 b=YxXork5xCu925OUlkiDVRIa2IiJH9fPKj2ihB7QPxE32INMqATLjxXs7gXFTZnhw1cCU+cpa1QSQI/N5+8DJm2SPAOI3B0yD8wMFOlZa1rjWNWl2yPVW4lVdnYuI3wSzO+5Zv2UnugLWkYzmWjyqOj8bFTA5PjPQt7VIl3sy5ls=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by PA4PR04MB9486.eurprd04.prod.outlook.com (2603:10a6:102:2a3::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.32; Thu, 4 Jul
 2024 14:57:49 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::c04e:8a97:516c:5529%5]) with mapi id 15.20.7741.017; Thu, 4 Jul 2024
 14:57:49 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Thu, 04 Jul 2024 16:57:43 +0200
Subject: [PATCH] phy: mvebu-cp110-utmi: support swapping d+/d- lanes by dts
 property
Message-Id: <20240704-mvebu-utmi-phy-v1-1-9d3c8eea46e5@solid-run.com>
X-B4-Tracking: v=1; b=H4sIAGa4hmYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDcwMT3dyy1KRS3dKS3EzdgoxKXQuTxETjpDRjS1PzFCWgpoKi1LTMCrC
 B0bG1tQCttIacYAAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.12.4
X-ClientProxiedBy: FR3P281CA0079.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::7) To AM9PR04MB7586.eurprd04.prod.outlook.com
 (2603:10a6:20b:2d5::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB7586:EE_|PA4PR04MB9486:EE_
X-MS-Office365-Filtering-Correlation-Id: e278e2fd-d622-45b6-027d-08dc9c39ac2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M3FkQXc2OUxwajZwNldYeGpLaXVvWWtTcVZ3N1hxcTRuaytqOVVIVUZTRHNa?=
 =?utf-8?B?UXdYMWZvZnZkQTNsM21Ic1MxUSt4QnFQbENiMWtVTkZvcVpic21uUU5ubkdx?=
 =?utf-8?B?VFprYU11aFN6RTlUaGE0MlJpTG9sam9UUjNtYXBTSFhVdGtZTG1BdFl2VFZX?=
 =?utf-8?B?ZVNrN1FBTTVCNFduSUFIR0JLemFObngwcXFxM3RNa3JhRkQ0TmIrNm5JV09Y?=
 =?utf-8?B?dm9ka3lmeXV5Zml1M2ltMUpYUmJ1aGpMTDNoRnhWaitHczQ1ckxHOVZSYndW?=
 =?utf-8?B?ME5XSFlRdmVvZWdjdHd1NGhqa0JyVzZsOHFtMDBuVjhCbitNSmxENnR6blFZ?=
 =?utf-8?B?WDdFYk5BWExIWkxTeFJ0cHZ4MGVJcW1xbVJhalRXdWI4WGhKRU94QTVXUlkx?=
 =?utf-8?B?eHYybjRJQjVibXQreGNZUTM0SVBKRUxLTlFrREtqc2trQjJGQ3lZZk5hemxJ?=
 =?utf-8?B?bmxrbmg1emJOamZqSjJSN3J6cnhFS3Y1U0owR2E0VE90Njd2TEc3RHRKcSsz?=
 =?utf-8?B?RHRJWWtBMS9ORTQvS0VQaUVMNlVBY1RyK0tqNkN0UFZpUis2T3RYTkViekd5?=
 =?utf-8?B?aTJ1MG5iQW5vQ1QyVXpBUmU1cjNwdHBING45WVV0T3NLNmYvL2lKMld2cXFl?=
 =?utf-8?B?SDl3OEpkbWg2M3MwOFJSU3BYWk4yRkw2SDlyR3dpWkowR1JNaHYvU0lSVXJr?=
 =?utf-8?B?L0J1VFhrbjdmeVNmK3UvNlpOM2ZnQTc3RFh4SStldFVIRVFEK0dMQmp4SjNy?=
 =?utf-8?B?OUM1Q2lRekdzb1FkYU9LNTQxcW9yNWJQbURjYVdxYmVoYThNeDhMenlaYk1P?=
 =?utf-8?B?SG15bmJEUzV6TWx3c3kzcEJPQmZYR0VydlNNVldFNk1JSTFJd3J6bE0vU3BG?=
 =?utf-8?B?bXVXcm56OGUvd3VZclFtT1JjRjFZRmxoSG5oa3V0bExRSW8zalRSTlUvcWtU?=
 =?utf-8?B?elRReXo2TXJ5bjlDQWZHZkdQVXRhejRIRDVpdVVYTWNYem1GMEwzVUdOSFBn?=
 =?utf-8?B?SUtMcm9FYXdlRGJZbnpSUkttN01TeEdBWWlmOXh6eHdYR2x1NXN4TG1tZEUr?=
 =?utf-8?B?NXJ3V2hkbmRodVovQ1A0WGpHWG5qOXdHVzJvUk1xQm10SFY5WVQxanhUSXVs?=
 =?utf-8?B?ODBVTTdybnZtYUNBWEtsaUZWWStPaGxjUTJUWEg3b0dodE82b0FTRStwSHJ2?=
 =?utf-8?B?Y0I3UWVRSTJlQXIzL3d0WkdJenVxYWJMZ1d1enhVQUtXY0xmVUFqcjQ0U2No?=
 =?utf-8?B?aW82OXQxYXRCN1pTU2ptQXVTQkVWVVM2a3Vld3orMVd3cllDajBEZnFHbXhn?=
 =?utf-8?B?blg5QzRpdUpaaXFPVEMrUyt3bmNuVU5MTFZkeXdKZllpcVRoalhQSVpQTm51?=
 =?utf-8?B?dG5PL1J3akZNc3RKbEpaZTFsYWJsZGlwNEJlOEFhTU5PT0EzSVUrelNXSllU?=
 =?utf-8?B?Nmc4ZHg5aGRCOUZmWEJPZWxoQ2tOVHZKRWZkd3htazJ6M3pCQ1ZzS0ozb0o0?=
 =?utf-8?B?d3M5Y1pVTUJkZE5GYlJkUnZEamhyWUlEVTZ1cHVpYlhsODFOTHNERjRDRHpx?=
 =?utf-8?B?QnIvaUFqQWl2bFZjMkkwcnhpejR1TVV3OVB4ZDkyU2NFSEllOU1WdVhNTTRx?=
 =?utf-8?B?L1pSbzhjUHlKQlNTSlJaR3JYK2xhQzVKbjkzejhGcmU2WFFPMGZWa2lkTUl5?=
 =?utf-8?B?Q3RJSmw1WHYwVHN6M3ZUdXB5b2FRbkphVXI1aEk5TmxvZG5zT2NCWnBSSW56?=
 =?utf-8?B?YkxLMGdKd2gwZHJyd1g4WUtudmNPbGtwenNhMmpwcWdxcyt0aVpFRlNEejBC?=
 =?utf-8?B?T3VKQ1RKN0ZLRmJudE9mV0gzdWpsT3pXQkxLU3k3bllOVkVJc1JFb0xtOFNU?=
 =?utf-8?B?M3JnOHI4NVhXMmoyYitHbWdYcGhIcjZadmRjTVZTei85UFE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVQzMmFOaC9lYkdvUDBwaGZqVmJ1MElKZHVhMzM5bjdMLzVJaUFud04yWXVB?=
 =?utf-8?B?UWZDUzEzcDV3NmFveDN3WGtPTWprVzQyYlV2aGVmQk9xSmx2UFdjalR6enRW?=
 =?utf-8?B?S2lzRlFzRVZGc042aDQ3bE1sWWFrbkVlZ2pIdHJCTTlvUnBlKzVYY1RXOXpH?=
 =?utf-8?B?ckwwNmtjaWIzSmI1eCtqVGhPdktZTFl6NTV0SEc4ZUxmSjBJS1NiSkNMRFcz?=
 =?utf-8?B?QmxqUEdSN1p4ZStRNFd0bFFFRnhPUkR3d2VMVjVLemRZc2dtRzFkeVRFUnFZ?=
 =?utf-8?B?YnRrRElCc2dFMzdobnhjQ2hncWszRGdoM0wwdG5RZXFqRzhETzMxSnozcFVp?=
 =?utf-8?B?MmloaHhXS1JBK0dHOGFHcEJvSUtENnZlSEFDOWMyZHUyT3owSnI4cGFjTVFG?=
 =?utf-8?B?MHh2TWFyK1I5UnJnWk1RWjJPMWo5OHIwZEx4Umw0QStZWDJJaXRZZWV3RlZz?=
 =?utf-8?B?Rm9lTmdmLy82MlgvT1pseU9wU0VjaFR0b0p3MWIwbC9sUys5YnpNRkpnQXJR?=
 =?utf-8?B?a3Q5WFpURmg5cFRBZVY4Q1ljZ09qclROU3lDM1dpVXM5MGQ3M2I5TVdQRmla?=
 =?utf-8?B?bFpaUm9FYll5RUhSeGc2UERpdXlnS0wxUHpydVN4Wkc4cTRZVk05TGNjKy9H?=
 =?utf-8?B?WkNWQm53dmI2K2VGZDBFazZBdlNXS240dkIwN1NOZHlSRHpraGhjMWErNjB3?=
 =?utf-8?B?ZkJ4bVlHcjFCTHpiRmZ5S3N0YWF0c0owNmFYR0FZR0FjR3V5QmdJM0syejhF?=
 =?utf-8?B?V0xTOXJnRmxLZDhXbU5MZ2ZjYUNSbGc1TXcwVzBUdlI1VEFmOGR6N0JXdjJP?=
 =?utf-8?B?UHZGZjNHR1d3dUNJazQ4UlFKMVFPMXJ2MENmUXVxbGhId2lqbW5FcjlkNFpo?=
 =?utf-8?B?SzE1SzRMZW56REx3REd3dnkwUFhtUFp6VUkwS2h1bHRJTzhvVkljWWdqK1lY?=
 =?utf-8?B?VG45Y1ZHYkk3SXVSdWNKN05XV0l0NWg1Mkd3TXIxRzA0V2wrblcvVEpJQ0lS?=
 =?utf-8?B?S0RCMUhCeEhsb3FZZTArNVhPNGJpaWN0NkFsMVF1S1JQRmlqQlVuV2NyRllK?=
 =?utf-8?B?MURZZTRMTVNDOFlNREx4K0d3UjFOMERQenRxSEZvQis0Mkc5b2NsMmliZWQ2?=
 =?utf-8?B?WmtoQXF0RkNjOHE3K3Z0KzBNQkZOQTF6TjhCdytDaVgxbW5QL3djZG1QL3JY?=
 =?utf-8?B?VElwZnBmSS83dmFORldVUk5XOVJ6TGJtZGVwT2tpN2p1TWFpaFJTUDlLdWk0?=
 =?utf-8?B?dnRVRWV1RE8zaS9ZaUNTUytrZ0RBYWVFTXNrQTdpeEdYc1YrdUFCMEV3YXp2?=
 =?utf-8?B?RmcyeHZTQ2cwMFBJNDd4SkxRbVUyYXFEYXhMeGNoc1h3dEtwVEwyTmluUzR3?=
 =?utf-8?B?dENINVJpSXEyb3ZPTWRkVjA5M2VyU091UkQ4WVFTa29weWtXNU96NHFZVWRW?=
 =?utf-8?B?Mmt0cG9lcnN2ODNybXh2N29DK2ttMGQ3UDdZMERZR1dhZGcweFBCRXkzZEVU?=
 =?utf-8?B?RTVaaGdqMlF3bHZ4eVc2YnExelpQbGtvRDd5cXpwQ2hXSmE3SXV6bkpyY0Ey?=
 =?utf-8?B?b3VmSWNESTNlNmFPUnpQb3dmYVZHMjFZUVltLzNsZWZhTmpYVE8rUDdySndH?=
 =?utf-8?B?MnJ5cjBNcUVNNkhoS2NDUzgySXVFU0xqclhFd0FPNTcvcWZSOU9rdzJ1eHdZ?=
 =?utf-8?B?YXIvSGx4S3dPbitaUTVHTjU5bDFBTlhGbm5ldFUwclkyanlPb0twZHNERUN1?=
 =?utf-8?B?YWE2UFhLcjN4NHV0ekgrdkVhNGF4YU51TjliRGp5ZFduaTliZFBIT3FCRFV6?=
 =?utf-8?B?TTMremUybnJJVDlDenFHRFBYdmdJWExGMjVCc3ZqYVVSemxjYm9zWFpQbWsz?=
 =?utf-8?B?SFhKWG01dFUybzlwaUprNG4weDBwVnBITkcxanAxWVYyaFhQaEdGU3hWZFdi?=
 =?utf-8?B?Z0RSaXZFaEttOFNMNVlsYTdiZ1RCOGJldGNBSk8wL2sxcC95TzVQYXNSSWZV?=
 =?utf-8?B?a3lsOFEybno1R1VlNjIwNDg4ZjhGQmdiWTA3UnhrZDR5amE1MGZRV0h2MHFU?=
 =?utf-8?B?L05WL05adGxPM0F1TmU1eldHR3JmNnZsemp4b0dmTXJtYnNtZmdnZnRCcVNZ?=
 =?utf-8?Q?0Sb2qJDIFiEXU2//6o9l8htjj?=
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e278e2fd-d622-45b6-027d-08dc9c39ac2a
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2024 14:57:49.6355
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 53jcazfU9vtbgp+Z+RLkZX6LbP3VVhrIT3hRueckOVdwuQ/eMO6WXVcTUZWh/1W+u79EfuxVUZEGO6R8tLKjOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_075758_804048_2F01BB24 
X-CRM114-Status: GOOD (  11.86  )
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

CP11x UTMI PHY supports swapping D+/D- signals via digital control
register 1.

Add support for the "swap-dx-lanes" device-tree property, which lists
the port-ids that should swap D+ and D-.
The property is evaluated in probe and applied before power-on
during mvebu_cp110_utmi_port_setup.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 drivers/phy/marvell/phy-mvebu-cp110-utmi.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
index 4922a5f3327d..5e403f842e9a 100644
--- a/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
+++ b/drivers/phy/marvell/phy-mvebu-cp110-utmi.c
@@ -62,6 +62,8 @@
 #define   SQ_AMP_CAL_MASK			GENMASK(2, 0)
 #define   SQ_AMP_CAL_VAL			1
 #define   SQ_AMP_CAL_EN				BIT(3)
+#define UTMI_DIG_CTRL1_REG			0x20
+#define   SWAP_DPDM				BIT(15)
 #define UTMI_CTRL_STATUS0_REG			0x24
 #define   SUSPENDM				BIT(22)
 #define   TEST_SEL				BIT(25)
@@ -104,6 +106,7 @@ struct mvebu_cp110_utmi_port {
 	struct mvebu_cp110_utmi *priv;
 	u32 id;
 	enum usb_dr_mode dr_mode;
+	bool swap_dx;
 };
 
 static void mvebu_cp110_utmi_port_setup(struct mvebu_cp110_utmi_port *port)
@@ -159,6 +162,13 @@ static void mvebu_cp110_utmi_port_setup(struct mvebu_cp110_utmi_port *port)
 	reg &= ~(VDAT_MASK | VSRC_MASK);
 	reg |= (VDAT_VAL << VDAT_OFFSET) | (VSRC_VAL << VSRC_OFFSET);
 	writel(reg, PORT_REGS(port) + UTMI_CHGDTC_CTRL_REG);
+
+	/* Swap D+/D- */
+	reg = readl(PORT_REGS(port) + UTMI_DIG_CTRL1_REG);
+	reg &= ~(SWAP_DPDM);
+	if (port->swap_dx)
+		reg |= SWAP_DPDM;
+	writel(reg, PORT_REGS(port) + UTMI_DIG_CTRL1_REG);
 }
 
 static int mvebu_cp110_utmi_phy_power_off(struct phy *phy)
@@ -285,7 +295,10 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
 	struct mvebu_cp110_utmi *utmi;
 	struct phy_provider *provider;
 	struct device_node *child;
+	struct property *prop;
+	const __be32 *p;
 	u32 usb_devices = 0;
+	u32 swap_dx = 0;
 
 	utmi = devm_kzalloc(dev, sizeof(*utmi), GFP_KERNEL);
 	if (!utmi)
@@ -345,6 +358,10 @@ static int mvebu_cp110_utmi_phy_probe(struct platform_device *pdev)
 			}
 		}
 
+		of_property_for_each_u32(dev->of_node, "swap-dx-lanes", prop, p, swap_dx)
+			if (swap_dx == port_id)
+				port->swap_dx = 1;
+
 		/* Retrieve PHY capabilities */
 		utmi->ops = &mvebu_cp110_utmi_phy_ops;
 

---
base-commit: 4de480264948cbf2b08a72c39ee122a9f9761e03
change-id: 20240704-mvebu-utmi-phy-84aa3bf3957d

Sincerely,
-- 
Josua Mayer <josua@solid-run.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

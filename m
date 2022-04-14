Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66776C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Apr 2022 07:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+q23EMwSXtSFk3H15y4ORxzJs2cs+ds98EPlU056FAQ=; b=nhH0Ql4x9IjBtk
	8sgI8vcb4fdqAI6oQQdqo6WKZ8Fpj1QIusw3a0H2KgcvEIbcahxUd5d8RDKo8mkWqamtVmhqED7w5
	REfaPc7UPvfQyzGeXLpI3FnFyyWRtDWkomZ0+bVUHgsPD0JC4km7GcZgkMvg9WgaIOqMQ/9LrcFbg
	dbK137r5qIPBCJwudakPnoxFqnOjp2NSdIz1xFAupY50BhPgARkB7nJ8HPpErrI11DUZg4RzGvQ4l
	9e9ZfNzrULdy5DcqL636P/MUpEe4OnLJv9hEuhGH0/OKD5zYLVH049ZbAlaZ2UaNwgDA0k0nsvDIv
	eHoElDIVWem7/FIeOBYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1netcL-004GVw-KE; Thu, 14 Apr 2022 07:10:13 +0000
Received: from mail-am6eur05on2061e.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::61e]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1netbk-004G9b-HS; Thu, 14 Apr 2022 07:09:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxejaADVjmaztHg4K01nldj/1D95T3Xx6sYB5TAesAvLp4R4XwWxX4b1YciU6bTCYNEhoigOuGXE+eH3MH1keSdSUxmXhmKSgkAQq4iMbX2eHQFtRFuMVy7AXsuwjeGtJluaW5VJRYJJOEbAC6Yl1FLwLYUbzeSI+bi+z00MWN8uM7K+/zCKV77ltR88JpCjhBN8tK7XwIPyy1yNdAC2HS+f8oBnBmreUjFJo7E6UqrFPTIExhdcwpIKVLn75Z27zpR5zV0Vkv5z+b0xNcv/mQHMnGnQf3A1dAVFjg1X2yimVfMI9XH6nq7IGoMUmsnt03GA/6luty1mnpLUNFU2mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bwVgVujLCDokFEM7c0bPtR5ihAMPkZO/ohpa4ZORM/I=;
 b=LG1p1feeDa4tEImtL1mRI/iXTAz4ErpW/tDqUsoX7jS+ccmBWYouGsHlNQBnpxcrdiN5u6TMWgzVCyh94RP3rH3QD6k4O3GeV1NiOqp6SUKiQR/6hm1HIANZV+c5DwNAt0+8ud6vncW9XcEO8dNLEwhg4gfgB7j6V3pqETaKbyIdz9bZFTi0ZcXNUjD6bL34OI1LLYHIswa88tpcNju4N36rcDIXUObe3ErB4ly8v33dByVLRIz62gjAnH4ven9v3ZPd9N/JoNgEahYgIFDboommCMljnwXHD50LlUT+7DyQEELRyeh6guVMFeFfUMEU4drFXWPA36Mo7xt4r8rO2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bwVgVujLCDokFEM7c0bPtR5ihAMPkZO/ohpa4ZORM/I=;
 b=DRpGXdGRUv7uZzQMEEuGBCcYaBZceTtxAd0+uaI6Om0PcZq0vKICvlk6HsZJCdBSX0kPrJkrMQMbJmL1DCBOJh1AsG1ab6mf8LGMMJVBl11Oou3OY2xoDsQfTsS0b0ANV4gcc8fmayFPK+wuWlejnz38YONPHdlLa7TKKFYarNw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AM5PR04MB3027.eurprd04.prod.outlook.com (2603:10a6:206:b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 14 Apr
 2022 07:09:24 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::b09c:8ffe:8e02:7387%9]) with mapi id 15.20.5164.018; Thu, 14 Apr 2022
 07:09:24 +0000
From: Liu Ying <victor.liu@nxp.com>
To: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 andrzej.hajda@intel.com, narmstrong@baylibre.com, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org,
 robert.chiras@nxp.com, martin.kepplinger@puri.sm,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v8 4/5] dt-bindings: phy: mixel: mipi-dsi-phy: Add Mixel combo
 PHY support for i.MX8qxp
Date: Thu, 14 Apr 2022 15:10:38 +0800
Message-Id: <20220414071039.423271-5-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220414071039.423271-1-victor.liu@nxp.com>
References: <20220414071039.423271-1-victor.liu@nxp.com>
X-ClientProxiedBy: SI2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:4:186::12) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 193c7933-d7ec-40f1-d10b-08da1de5b4d5
X-MS-TrafficTypeDiagnostic: AM5PR04MB3027:EE_
X-Microsoft-Antispam-PRVS: <AM5PR04MB3027DBF941EE90B60FB669CF98EF9@AM5PR04MB3027.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8gSz5/KyecXHYKcsl7nMpCQ0wXTRZjIVqrQ4jtOkGm+VB1S0JHUjZG01Vkv6oRsLdf1IKISNZLHFYphovH4L5JLOZKjaNVaX70Smm/8qFjjhy9vwAE4y31obbPUep4JXFPXsR6XYHQBPsxU3wObYDJyAZl1CDKVobgnaXKfW5aDGiXbS58nvaA2vt1BlqdTTO6kXRGqRPvOBTZd9n5P+04r6n/fIOgRqueEvtZsNjuo7tNY7GHNM0zFN+lH4rc+iWR1hFaowYlRNW9JxibHAkW88MvfEm7TBoj087vZ14qYsLRj5ua3WdqELPcMWDKwP3VmShYyR2Psc+0OydoR/sX+uhZCubrxVqTEvdhEAxA7t3+iHjkKOj9iMj6PzE/AefZtasZ8/YNVeaADSLoYJx3oHaD8jhKw8oHoE8rFwSU7AE9K07ZDMixKi6pfBaca7CV17kQceA+FOPpvbBWrut2eyvMKFhRkFc96Y3tbr9VdSme0MbtPBwNW6FiNBtxFN4gzSpB8DqWbdK/oAgbVLXvQgPQE1Vx7Z65R281E9auo8pkPchFgIduacFWXLFKpJlmX63C6v1um7Q0gpjB+N65w4RjZXFThpqxcKLdJDEwOquoOF1NM42IMw9t/fSR046yQ0E0X4gi6pymTMDNdKViuHhCPxKTRiFwEdMyi/sAXtwARTleyv2GXm5ngdAzbQXjuuHHrMiqybwDvJLu07Bw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(2906002)(6666004)(316002)(8936002)(7416002)(66476007)(4326008)(508600001)(8676002)(66946007)(36756003)(38100700002)(38350700002)(66556008)(6486002)(83380400001)(52116002)(5660300002)(6512007)(2616005)(26005)(186003)(86362001)(6506007)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEJicG5JVkZhMlA3T2V2dnd6YjBLNC9CWTFNQTAwa2EzaEhJM0thdStCSGpu?=
 =?utf-8?B?WW1ZSWt1WjBlQThiQ203d1N1Wi83alovWk11cDFZNFVOUnB2VlM2c2FBZFgv?=
 =?utf-8?B?d1FGb3dYekEzd1BGM05LQ3FSbFBuTEhWU0x4THdVTUc5d1ltWFN5cXBFUCt3?=
 =?utf-8?B?cDlwZzJwbXZsUUpkb2pZRjM0cTBxckFnbVA5bFVkVEdNK1JtVWY4NkhnWGVH?=
 =?utf-8?B?aUJpd05oaTFNdVg4ZVQyem5YMUx4TmtmRTVsT3hpdFdZdlFraVJzaXFCdStD?=
 =?utf-8?B?bXNtVUZXNXZNaXRnbTJ2Vy9KSWtsaXpvRExyMFY1SjBma0pVQUQ4N1BlUUxM?=
 =?utf-8?B?WEczZzRsejJJRlVxMWRMUmhjZ3Z6d3pVREZkbmZOZXpZazA0VHRCUzVCSi85?=
 =?utf-8?B?QlFNbUJ2Tjh6SHJaWVdFWVNQeVEyL25JMkUyblAxZm1ValY1OGUrNzR5WllV?=
 =?utf-8?B?RWg5QXpXbTh1alhZWWJjdFMzQ01lMWJhRDQzK1ZwSEtoRHJ0Z3ZlTmdxVS9h?=
 =?utf-8?B?RlZvNzRRaFE5dDRlemVlUVNzRkFsUS9NUkRCdVRjUk1qSzNJRXlUZ1BhbkhQ?=
 =?utf-8?B?QXp1SzIrSVZjang0QWJmYWxFZSthcXJsMGZ6VHIyTVE0OGwwanV5L2UvUTNW?=
 =?utf-8?B?bXR1YVl3VXkzYmUvZ2wxWDMzZWhZSFo0Z0FYakhMQXJINDVuMU9SWC9sa3Rp?=
 =?utf-8?B?OTM5WEU3ZGdLOGlUQ1BvQ2QwckdkWnFPdW56bUdsM2VKQmZOMXQ5TFZrd1A1?=
 =?utf-8?B?Z2c1TlVXU0NLUEdBWFo3YzY3dkNCRWIxNnRNUnBqT0ZJdGgyQU53VDFiQ2M4?=
 =?utf-8?B?N3dmaVQxUnJPaEo5QWR1bmRsQ3Z6Sk1mS2hyODZzT0lsTlZ3TUJqaDYvbmlQ?=
 =?utf-8?B?WUp3Q0N0cmlIdlZrVWZXaFFzaDM0ZlgvYWo2dGNhRmJSUjdzOEp2VUpneTJD?=
 =?utf-8?B?N3hhZ2trSDgxUlM2ZGk2dDRzcmJ2L0g5dE5VcG1jMUJRUTBkQzZpOWRGVDhN?=
 =?utf-8?B?T1pFVmtyVTRDb2pyNlpoV1NBL3hFNXZlc1Z0TXZJTFVBaXlxUnRMcFUrd3Ur?=
 =?utf-8?B?U0VuNFhjYnR3NldGcVNCaCtZUmNvQVdSdWdxR1J4Rmxtc0VmQ2pqZHZVWFF4?=
 =?utf-8?B?Q05na1B6Mksxc25oeFNRK0tjdm1SZkx6N3ZqV1Zka1FsMEJvZHQvTEtYTGRU?=
 =?utf-8?B?WG9lM0dJYXdyVXgzMm1aZzdXbU51cUo5d0JRSjl2MzVtcDNNR0Vrbm9reGNi?=
 =?utf-8?B?bHlOdW5sYVVrb0NIRndxU0UxSzY2bEtqNWFUd2VmY1ZTTHUzQzhmRS8yNXM4?=
 =?utf-8?B?TExMM29iRVdYbW1NMDhUU2RMYmJuaENlaDVnM0M4aldIZ3JJbHcwaVdXajFE?=
 =?utf-8?B?MzgweTBRbjJ6UFVmY2krd3JkaWJSSklwd1ZUdUVYclAzbGJJNFNtQzhEaWxU?=
 =?utf-8?B?dU03N2ZuM0pCRElZdjg5LzhsWlg3TFdJWW41bkUzUk9GTWkzT0JJUDhlbTZx?=
 =?utf-8?B?bC96aTMrWjhMa2UwZzVlL05jU0MrNkZhODhSdkhCNmpsUWV4RVBac3Y2d2NJ?=
 =?utf-8?B?ZXdkZkczb0orRThSczRUQjRWTXlGWlU3cTZ2RDlxMXF3dFN4a1VaMW04ajBU?=
 =?utf-8?B?bFJqZXplSnRuZVh2L2NxYlYwSklUTEJjTnlQcFJmMUIrVmtMLzhlaCtleE9m?=
 =?utf-8?B?MWRlSm5CbllFREV4akh6b0pmb0JWSVhKS1ZBbHFUU09ETVVZeFJnbGlZbWlU?=
 =?utf-8?B?UXBqWWY2TFhxdEpheU9sUmE5aHhPWDRKOGxSRHZmZTRHb1JyZ0NBNFl1ejkr?=
 =?utf-8?B?SkJjeE5jV05aYU4xQ2tJOHNTelVaMldyRTNCSktFbitwRkRxWGRnczNuaTdo?=
 =?utf-8?B?K1JjbjJTbllSaDZQTjFRcllwUmgwbGxjWEYxNHl4SmhUWHhqQWU2dHdvK2F2?=
 =?utf-8?B?TXpWYzRUYUp4MlZOWUFqMHVDazRzdi9pSDhMVS9kSllqMDFBc2tCWFpqbkVF?=
 =?utf-8?B?WWdTY1JRcXI1b1JhTnlDNXpzUmdwTlRlUGJ3akNITzNETjRYWFRGd28xd21W?=
 =?utf-8?B?WVBwSGxRVlFiVjNrRWlqME92QTlKaldOdXk0NnRvL29pNHZZa0JYSlo4N29w?=
 =?utf-8?B?MUtKVkRhb2lOcndiTFNWc1BlYnlZcGV2ZkFsbXAyWFM3NnRqZjFxR3o2dlov?=
 =?utf-8?B?Sm00Y2V6SXQ1UVNQemNzN3c0NEVyOWJLWUd4blNJdktXQ3BMQ1N6TDkraVlZ?=
 =?utf-8?B?OEdFSkEzMitlZmcrdXdGZkRrYlduVHlEVytjaG9mNCtrMU93SlR6U1NFRjht?=
 =?utf-8?B?cFlrSE5iMThiaXU0K2xGYXVmRkxLNmcwekpTa3dhd1NNWnREZ3lmdz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 193c7933-d7ec-40f1-d10b-08da1de5b4d5
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 07:09:24.7630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1GG83gnQLk1XZ16Y15mpwuE58I/JDK7aFjEORqkYQtH6EFObaFi5Y+ZltdUXwdV2+smxfQ+Xg1pxtczMThwZ5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_000936_613787_283F2806 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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

QWRkIHN1cHBvcnQgZm9yIE1peGVsIE1JUEkgRFBIWSArIExWRFMgUEhZIGNvbWJvIElQCmFzIGZv
dW5kIG9uIEZyZWVzY2FsZSBpLk1YOHF4cCBTb0MuCgpDYzogR3VpZG8gR8O8bnRoZXIgPGFneEBz
aWd4Y3B1Lm9yZz4KQ2M6IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0aS5jb20+CkNj
OiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgpDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRA
a2VybmVsLm9yZz4KQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KUmV2aWV3
ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+ClJldmlld2VkLWJ5OiBHdWlkbyBH
w7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgpTaWduZWQtb2ZmLWJ5OiBMaXUgWWluZyA8dmljdG9y
LmxpdUBueHAuY29tPgotLS0KdjctPnY4OgoqIE5vIGNoYW5nZS4KCnY2LT52NzoKKiBObyBjaGFu
Z2UuCgp2NS0+djY6CiogTm8gY2hhbmdlLgoKdjQtPnY1OgoqIE5vIGNoYW5nZS4KCnYzLT52NDoK
KiBBZGQgUm9iJ3MgYW5kIEd1aWRvJ3MgUi1iIHRhZ3MuCgp2Mi0+djM6CiogTm8gY2hhbmdlLgoK
djEtPnYyOgoqIEFkZCB0aGUgYmluZGluZyBmb3IgaS5NWDhxeHAgTWl4ZWwgY29tYm8gUEhZIGJh
c2VkIG9uIHRoZSBjb252ZXJ0ZWQgYmluZGluZy4KICAoR3VpZG8pCgogLi4uL2JpbmRpbmdzL3Bo
eS9taXhlbCxtaXBpLWRzaS1waHkueWFtbCAgICAgIHwgNDEgKysrKysrKysrKysrKysrKystLQog
MSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRz
aS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4ZWws
bWlwaS1kc2ktcGh5LnlhbWwKaW5kZXggYzM0ZjJlNmQ2YmQ1Li43ODZjZmQ3MWNiN2UgMTAwNjQ0
Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWl4ZWwsbWlwaS1k
c2ktcGh5LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9t
aXhlbCxtaXBpLWRzaS1waHkueWFtbApAQCAtMTQsMTAgKzE0LDE0IEBAIGRlc2NyaXB0aW9uOiB8
CiAgIE1JUEktRFNJIElQIGZyb20gTm9ydGh3ZXN0IExvZ2ljKS4gSXQgcmVwcmVzZW50cyB0aGUg
cGh5c2ljYWwgbGF5ZXIgZm9yIHRoZQogICBlbGVjdHJpY2FsIHNpZ25hbHMgZm9yIERTSS4KIAor
ICBUaGUgTWl4ZWwgUEhZIElQIGJsb2NrIGZvdW5kIG9uIGkuTVg4cXhwIGlzIGEgY29tYm8gUEhZ
IHRoYXQgY2FuIHdvcmsKKyAgaW4gZWl0aGVyIE1JUEktRFNJIFBIWSBtb2RlIG9yIExWRFMgUEhZ
IG1vZGUuCisKIHByb3BlcnRpZXM6CiAgIGNvbXBhdGlibGU6CiAgICAgZW51bToKICAgICAgIC0g
ZnNsLGlteDhtcS1taXBpLWRwaHkKKyAgICAgIC0gZnNsLGlteDhxeHAtbWlwaS1kcGh5CiAKICAg
cmVnOgogICAgIG1heEl0ZW1zOiAxCkBAIC00MCw2ICs0NCwxMSBAQCBwcm9wZXJ0aWVzOgogICAi
I3BoeS1jZWxscyI6CiAgICAgY29uc3Q6IDAKIAorICBmc2wsc3lzY29uOgorICAgICRyZWY6IC9z
Y2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKKyAgICBkZXNjcmlwdGlvbjog
fAorICAgICAgQSBwaGFuZGxlIHdoaWNoIHBvaW50cyB0byBDb250cm9sIGFuZCBTdGF0dXMgUmVn
aXN0ZXJzKENTUikgbW9kdWxlLgorCiAgIHBvd2VyLWRvbWFpbnM6CiAgICAgbWF4SXRlbXM6IDEK
IApAQCAtNDgsMTIgKzU3LDM4IEBAIHJlcXVpcmVkOgogICAtIHJlZwogICAtIGNsb2NrcwogICAt
IGNsb2NrLW5hbWVzCi0gIC0gYXNzaWduZWQtY2xvY2tzCi0gIC0gYXNzaWduZWQtY2xvY2stcGFy
ZW50cwotICAtIGFzc2lnbmVkLWNsb2NrLXJhdGVzCiAgIC0gIiNwaHktY2VsbHMiCiAgIC0gcG93
ZXItZG9tYWlucwogCithbGxPZjoKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAg
IGNvbXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBjb25zdDogZnNs
LGlteDhtcS1taXBpLWRwaHkKKyAgICB0aGVuOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAg
ZnNsLHN5c2NvbjogZmFsc2UKKworICAgICAgcmVxdWlyZWQ6CisgICAgICAgIC0gYXNzaWduZWQt
Y2xvY2tzCisgICAgICAgIC0gYXNzaWduZWQtY2xvY2stcGFyZW50cworICAgICAgICAtIGFzc2ln
bmVkLWNsb2NrLXJhdGVzCisKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGNv
bXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBjb25zdDogZnNsLGlt
eDhxeHAtbWlwaS1kcGh5CisgICAgdGhlbjoKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIGFz
c2lnbmVkLWNsb2NrczogZmFsc2UKKyAgICAgICAgYXNzaWduZWQtY2xvY2stcGFyZW50czogZmFs
c2UKKyAgICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXM6IGZhbHNlCisKKyAgICAgIHJlcXVpcmVk
OgorICAgICAgICAtIGZzbCxzeXNjb24KKwogYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCiAK
IGV4YW1wbGVzOgotLSAKMi4yNS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==

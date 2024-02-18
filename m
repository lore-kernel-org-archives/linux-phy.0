Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5A3CC48BF6
	for <linux-phy@archiver.kernel.org>; Sun, 18 Feb 2024 14:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:Message-Id:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZCW32eHnxC64PAtIkTWFwt/OYQS2qRx1tWXsSm85gwA=; b=Wu8joRnD1sY2jR
	HjHF+roD08Lc3W+KJJ1Gx/JBahiB974lNBQ27T7MrmjJGgK4Qm0AUgxAMDo9TylEmW+EYN/wruG8L
	3ZCETcvlmmc+PCRycKjpQ+Vkl+CfBC3egbImSK4fGvQ7exnN2V9meJGPRFknrO3a9QfnP9vBTdZuA
	kpXvQwuvuvhZaC79K+74T5PKb8OYJZGWRjRtgm5HsRGGTUw0gS2uQmYumsfhfEiipD1EFWtyW+mO+
	aZMFqG/SPIaCYEaCynjgNCDh/7U6wl1TAvPzCv/5Dmkd4suKEyTb0Ma4vGagxhSSuZl+4aSipSrlG
	LrlbTSVOvRxswQQIn66g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbhrl-00000007phF-06ia;
	Sun, 18 Feb 2024 14:10:01 +0000
Received: from mail-vi1eur05on20700.outbound.protection.outlook.com ([2a01:111:f403:2613::700] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbhri-00000007pfQ-2iLS
	for linux-phy@lists.infradead.org;
	Sun, 18 Feb 2024 14:09:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AWuJOeplAhmMxe7HrN5+e4t2fY3bXYSu+pTsthPRW2f90rCi2/wVfUTtQbjnbVDwMwd4Ydz+1b8SglsW+1YF8AIIEpApuMlY/DqQVQhgtu5qF/bcML/3VOlSleJ20IEoAe/Dq9CzyxqFVWQPKwjXM43YSeqRuBn6ZfpToH0NlUJZPt1F9+7M44SfLhmYHJPA+yM/q9g50e6+IV+USdspC5T8VGDa0ce5xrSDHMBrI8N2mp62CWtmJqPXDlVqvOw+nQJ4aIIdZSzToDstszEoGv6xcliwwT0a8ZSQf322wcHoP+TS6f1IDpwOxiWP6zOE6JgPacOUSeFLDzd70xfd7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9nzbn7YSkA7fSnCwjsY9fuI9k2EwfVqVaGPgIDa5NRQ=;
 b=B9wrHnDL/d+rJY+S6tFkds5PMskoIPwIV08GGzYbKMTaHukdSC+mGGBzTy5VUgJyGChrVvcvVZR+7dz6dgk7berLeoeHLueW9XfoJsnSf3RxwCXHtpbFeaFby8sKQxxJjWDV69gPHpyAg7On5BqA/aTVP5NCAxTy5VJs6kXejo6H/1+f/Ia8b+TvWdq9lPZnRBNOZ0SUSKglkQywcBPygeboIYwgcJMz04iwDrBfC1HL412pzhNB4zNKwL4dPJt60M9S4XjCLPh5EWySvHXvSvUvw4s9gzzZ844WNRbhYbnpJs1uSrxtdhjutcyUhZbgg3mJSqY7vb5F33Zf8my4IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9nzbn7YSkA7fSnCwjsY9fuI9k2EwfVqVaGPgIDa5NRQ=;
 b=RwTeyYveGerGUiZj2GhliUheo8wGYcNMGUM+ppZFM5DAEFzPgdtUiwOULBdBojSpxlSmNhRlKDlmPziJt//KZzoZV2nhI5fGlECoWEyjZSI9n9RvU0psMZpgR4WVpMoAugrYdXj5q4IUzVRcESfYV5zrDxSujilWopVLbKAqS1w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com (2603:10a6:20b:2d5::17)
 by PR3PR04MB7370.eurprd04.prod.outlook.com (2603:10a6:102:92::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Sun, 18 Feb
 2024 14:09:44 +0000
Received: from AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::3b94:f607:ebe1:7d6c]) by AM9PR04MB7586.eurprd04.prod.outlook.com
 ([fe80::3b94:f607:ebe1:7d6c%7]) with mapi id 15.20.7292.033; Sun, 18 Feb 2024
 14:09:44 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Sun, 18 Feb 2024 15:09:10 +0100
Subject: [PATCH] phy: lynx-28g: use read_poll_timeout when waiting for
 halt/reset bits
Message-Id: <20240218-lynx28g-infinite-loop-v1-1-59cc5cef8367@solid-run.com>
X-B4-Tracking: v=1; b=H4sIAIUP0mUC/x3MSQqAMAxA0atI1gZqVByuIi4cUg1IKq2IIt7d4
 vIt/n8gsBcO0CYPeD4liNOILE1gWgddGGWOBjJUGMpq3G69qF5Q1IrKwbg5t2NpTWPGgvJqqiC
 2u2cr1//t+vf9AB0MvvRnAAAA
To: Ioana Ciornei <ioana.ciornei@nxp.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Jon Nettleton <jon@solid-run.com>, Rabeeh Khoury <rabeeh@solid-run.com>, 
 Yazan Shhady <yazan.shhady@solid-run.com>, netdev@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.13.0
X-ClientProxiedBy: TL2P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::20) To AM9PR04MB7586.eurprd04.prod.outlook.com
 (2603:10a6:20b:2d5::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB7586:EE_|PR3PR04MB7370:EE_
X-MS-Office365-Filtering-Correlation-Id: b5bf4801-fefb-4bd7-4595-08dc308b41cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c1IJrod52gOlZYKURJ4ptl7EbE7LP43MRuKMdM1NgRH+W1lC63c7D+hQY2QI6HRHh2UijE5DmKxvBTy31IliXt7TEYYxX8/DPSgiypy81tWabBYSr1YKFJPOoRljQEfw2UCBmzeiFpCye6wSUouknZpIj6g/d5E/bnFFQST/yKiZEWli+20P6dYBNJ4R+SA03KUSz2iv0geEKrZH23XELd8eecAA/HeVnOH6IOUExq6zZd1Aho6P1a/gbipuh4EINOOwmk95CrXa/HtqmQcCJk1wMstIxEfnAfCIpYMhIN885IWJi21Tk5EHiRseqwY34KfNI+Dsk+ypY2+cVkuUJFttdHk2QBlnZGp/tkwKgu4QyT1YBV1OGarEFsHzBnZXGS7EckvlI1NZXTaeqUosgWN94q4rDLg0XSdwhq2WW32CNhP8lXSgB8JE+hNCCuN0+HuMVZF5/RQImGvNFaQSI/6lLSzGKw7tJ3vDkQle636a6NnKibrMv5c7hxWYPrTuOO2oDbFhmoa9L8/p4V34C4NuUZrJA8MCS73qlsMQzU7ZM+ZRYureFpzNe7z8KCM9LWucmc4dJlp3hiud1Y0dXF5DOoEhmAYNIPIsboKq/P2s3p7sMHF3/RG087z9qtp9
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB7586.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(376002)(396003)(39840400004)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(8936002)(8676002)(2906002)(4326008)(5660300002)(38350700005)(54906003)(36756003)(2616005)(83380400001)(107886003)(86362001)(38100700002)(26005)(66556008)(6506007)(110136005)(316002)(66476007)(52116002)(66946007)(6512007)(6486002)(478600001)(6666004)(41300700001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTQxS3FQOXVLSXpjampHTTRSd1hnU2Z5Q0J1UVBJdEVrcUNuTjg4VFhIakVz?=
 =?utf-8?B?Z1QwNWZPU3pGNE9relZoTmQrd2xBQU9iYzBVYWkzSGJSSUNsUlRvVXpmTG1Q?=
 =?utf-8?B?WWt0bk1TUzI0ck9pT3RjRFBSOTh0RkVja3FXV2Z1UVJ2QzVhWU9kSU45RHYw?=
 =?utf-8?B?dEg1eHRlR2VKL2dlRkpDMTViRVl0UGZxT3FTUlloQU9OL0tiZ1pzcGlvcGhn?=
 =?utf-8?B?a3lFUURseFF3dWpaaXRXREVWMFB0RjExaXFXL0pDNUJkZ3MzVU40NkphQUps?=
 =?utf-8?B?QUE3MWwyTWNrL1g2V0ZLS0tBcCtubG4vcTJsVEYyc0VEWVpRUVpQU1NxTkFP?=
 =?utf-8?B?TW11K3ZVSzZ2d2w5L3hSbFZiNWJFeTlkWWpaSFZKZVp2ckJzMVc4KzE5M080?=
 =?utf-8?B?N2dxYzR3blc2MU5VdzlXWGROWHBuZm5mTHNzbXd2M1dwNU5jVFU2SzlQQlZW?=
 =?utf-8?B?ZkpzeVhlWmhLNFZ5a0tFVWtidTFtWHVkREJJUkJxRHpjN3pCbDVtSGhaR0xE?=
 =?utf-8?B?R1hZSjlUMVJCeGI5RzZuZ2V1WEFiTXE4SG8zQjRBY25Da1U1ZHdkWmRudXdP?=
 =?utf-8?B?b1ppZmY1bmd1eEVVYkFzcHdheW02MUpscXpmYkFySTBRRU1BSEtka1Rkak5T?=
 =?utf-8?B?MHpFb0JOM01RWUFUTUdaNWlEczNXMVBpbHB5WERvdFdOR3h4OW5kTmhJcVZz?=
 =?utf-8?B?RytDQWN4b2U4K3p1bVlBNXFTRDhNQW8yenYrM3FBM1Q4VTFKU1czOFpNUjZR?=
 =?utf-8?B?MUpES25HMi92VjZMbDlEL2I2Y0lDWmhjY016TlZBTE84Wk1mQlNTNjE3MHdk?=
 =?utf-8?B?WWRIQzIxWnlwTDlkVnhnMTNVODNtTFdwaXUxc1NMQlcyUmhubFlHejFMVHBa?=
 =?utf-8?B?anptLytsbEROSFM1MExKUHI5STdnSGFXelBOZ09rSFlWa1hFUU9GNGE2UkpS?=
 =?utf-8?B?bzF4TllpNmZiR2E4SExhaU4wbEVNNmVZR2FMTHFYS0drbEVmcjBiL0I5MmN4?=
 =?utf-8?B?eGs1T2RjN3R6OUExTWkwaW9LNjAzRUtSc0M3bThOYkJ1MzJqRjcvOThCTmdV?=
 =?utf-8?B?MW5GL0twcXlYSjV6WC9Xb2lNUTZMeWFvdWFLSmhMUGo0YWllbzZhMWFSbW03?=
 =?utf-8?B?c2ZwdG1PbVFNL04rR0dadzFhaUdjYWxvTytLbGpPaVRyak5UVXp1WEV3UWUy?=
 =?utf-8?B?STRUTTE1NWxKdnUwU0tWbzR1OVNSaEJTcDJaR2Y2Y3U4VEIwajM1eHFqTzBC?=
 =?utf-8?B?ckluVWtNWDdBandmK3o2ZmJzc2Y3VEpxRlR2Uys0akREM1RUYWhocDNzcTBs?=
 =?utf-8?B?TkdIVEN1YitlZTBwVXRMR3JidXRqL1dLandhd2VUNURjOHBQVExBeW9GaXFt?=
 =?utf-8?B?VlQ2aEJrSFQyWWVFUGx4ZXlzTWpFb1pTMXFOSGpoc1ZZWTJtdkV6OFo1Vjlz?=
 =?utf-8?B?ZG96VVVsUXhBKyt0dlpFbW9WR0xGYXZQeFppb25SU3ZiMVMvWlhORWVSUkxx?=
 =?utf-8?B?MDhJTUQrRU4rOXdpUnEwUDZpL2ZwMGV3b0FLdk5iTktxTmpJL203ZnJDQ0Qx?=
 =?utf-8?B?d0ljZFFtUTFOV2t6cUc0cGNzbFZmVXpta2lmdFJYMS8vQkdWaE96YktxbWV0?=
 =?utf-8?B?djlLNjFkNDRlWU01SXZmbEgvdEg3RElBVlhoWVUxR3Z3SmRXS0dLeldZR3ZV?=
 =?utf-8?B?ckwyYUlJQ1VrdklHUWtnSG9FakZWK2dPcUJHR2NVWGdKS2NpMzRrRzJ4MkJ3?=
 =?utf-8?B?VkZWOHdFWjNHTVlJWTEzWXNJcVRQc0tRbTg5Yno1NXE3VHlaSitzajhpajZh?=
 =?utf-8?B?TW43b0dFVDlrSUZVdzEyY2ozbFFyYWNHVmJXS3lIUlJCYjRnZnd4NldTdy8z?=
 =?utf-8?B?UlFNei9pbE1WNTRRWFFMdEFpVzVVb1p6bkRHdTc2NHpPMFYrdm1kNjNJNFRT?=
 =?utf-8?B?ZVgwN3JKT3NaZGdBa2YrTy9rQTlvdjZJWjVkNlR5N2w3RGRURUVTMmIwcGFG?=
 =?utf-8?B?SjNhMy9qNWlkUXN3WklmaDYzbUIydTNhTyt4Sm50ZEhpZ3ZjUWtIZUxyVFNC?=
 =?utf-8?B?WXI1YVpiL3NITEdyTHVpL3d5YkhpUVhMMllSWGM1SjdFY2E3dVl0NHlWYWRQ?=
 =?utf-8?Q?VO97GOBSIg3uIUhDa+GIZyd45?=
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5bf4801-fefb-4bd7-4595-08dc308b41cc
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB7586.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2024 14:09:44.3309
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8B0nwtRXH4W2Qzer5izexgZFNeO5KAE1O9yciqI3FQCFbg4IFFAgwFb/mcqz9WUmCLZDavfbwQFyazQDhExeBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7370
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_060958_744182_347DB8AC 
X-CRM114-Status: UNSURE (   9.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Power-on and -off functions set and wait for self-clearing reset-
and halt-bits in serdes registers.
In certain operating conditions these bits may not actually clear.

Replace the infinite while-loops with read_poll_timeout to ensure that
power_on and power_off will always return even when the bits did not
clear within a full second.

On timeout print an error message and return error code.
In this situation the serdes lane has an invalid state,
without no known recovery procedure.

This fixes an infinite loop / hang during boot observed on a
misconfigured lx2160a system where serdes #1 PLLS (161MHz) and PLLF
(100MHz) were mistakenly swapped.
After reset the PLL's did lock (to wrong rates) but the serdes locked up
and never cleared either lane-specific or global halt- and reset-bits.

Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 42 ++++++++++++++++++++++++--------
 1 file changed, 32 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index e2187767ce00..5ae5b47619f8 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -335,6 +335,7 @@ static int lynx_28g_power_off(struct phy *phy)
 {
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
 	u32 trstctl, rrstctl;
+	int err;
 
 	if (!lane->powered_up)
 		return 0;
@@ -344,11 +345,21 @@ static int lynx_28g_power_off(struct phy *phy)
 	lynx_28g_lane_rmw(lane, LNaRRSTCTL, HLT_REQ, HLT_REQ);
 
 	/* Wait until the halting process is complete */
-	do {
-		trstctl = lynx_28g_lane_read(lane, LNaTRSTCTL);
-		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-	} while ((trstctl & LYNX_28G_LNaTRSTCTL_HLT_REQ) ||
-		 (rrstctl & LYNX_28G_LNaRRSTCTL_HLT_REQ));
+	err = read_poll_timeout(lynx_28g_lane_read, trstctl,
+				!(trstctl & LYNX_28G_LNaTRSTCTL_HLT_REQ),
+				10000, 1000000, false, lane, LNaTRSTCTL);
+	if (err) {
+		dev_err(&phy->dev, "tx lane halt failed: %d\n", err);
+		return err;
+	}
+
+	err = read_poll_timeout(lynx_28g_lane_read, rrstctl,
+				!(rrstctl & LYNX_28G_LNaRRSTCTL_HLT_REQ),
+				10000, 1000000, false, lane, LNaRRSTCTL);
+	if (err) {
+		dev_err(&phy->dev, "tx lane halt failed: %d\n", err);
+		return err;
+	}
 
 	lane->powered_up = false;
 
@@ -359,6 +370,7 @@ static int lynx_28g_power_on(struct phy *phy)
 {
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
 	u32 trstctl, rrstctl;
+	int err;
 
 	if (lane->powered_up)
 		return 0;
@@ -368,11 +380,21 @@ static int lynx_28g_power_on(struct phy *phy)
 	lynx_28g_lane_rmw(lane, LNaRRSTCTL, RST_REQ, RST_REQ);
 
 	/* Wait until the reset sequence is completed */
-	do {
-		trstctl = lynx_28g_lane_read(lane, LNaTRSTCTL);
-		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-	} while (!(trstctl & LYNX_28G_LNaTRSTCTL_RST_DONE) ||
-		 !(rrstctl & LYNX_28G_LNaRRSTCTL_RST_DONE));
+	err = read_poll_timeout(lynx_28g_lane_read, trstctl,
+				trstctl & LYNX_28G_LNaTRSTCTL_RST_DONE,
+				10000, 1000000, false, lane, LNaTRSTCTL);
+	if (err) {
+		dev_err(&phy->dev, "lane tx reset failed: %d\n", err);
+		return err;
+	}
+
+	err = read_poll_timeout(lynx_28g_lane_read, rrstctl,
+				rrstctl & LYNX_28G_LNaRRSTCTL_RST_DONE,
+				10000, 1000000, false, lane, LNaRRSTCTL);
+	if (err) {
+		dev_err(&phy->dev, "lane rx reset failed: %d\n", err);
+		return err;
+	}
 
 	lane->powered_up = true;
 

---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20240218-lynx28g-infinite-loop-5f090b4237c7

Best regards,
-- 
Josua Mayer <josua@solid-run.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

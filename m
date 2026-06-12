Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63BBFCD8CA8
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gI74Vl53rPfVRq3FIPS9VJL8fq4TFjiitxjqE9Ioc9U=; b=3Jp9krNNkx8ZLl
	DqY+v0nw0ZbMfAKTI5ewQuxGLGRyXSmiwLGkZOVsWmm5Qe5cBhCd8m7kLkUAr1ImISJhBhYOKqbY5
	0BbHieioc70C+/EVVIY7P1G1bjY5HFP8HCynV/zMR3u5iQwpYQwzMp8pJSwiZIxN2c+fyvL641B9i
	DJakTKkr/Z083PtUwnCi2muVv1WVDK6ZgnKmX/RB9qurw5nt7gr8nNrwbMbiuXlr7vyg99jBuQIGg
	HRVUH36OaDLDz8LVU6DONojPXmtNQfLnqNdhHr9VBNlhCAmoQYCCrQLi7G+FklcrZzNoBXWeVyXD4
	YKwsY9ltsWzBjJN7adIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY1SB-0000000AvSd-49kx;
	Fri, 12 Jun 2026 12:57:44 +0000
Received: from mail-northeuropeazon11011028.outbound.protection.outlook.com ([52.101.65.28] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY1S9-0000000AvRy-3hZT
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 12:57:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DR4PD+nnmGreMpH+RmIu55YnH52ZP1/NNdeAU5Bslz6fQWwSe0M+ZCrQTeByW8mK4dri4BfnW2D8luY67Oy5woNqsd6GhSuwMHZJq+9A3rIhS6DcwQTS6OffWdbzQBhQpI069NgKNhPBSBPMw4QQggyOIymOerDn7Q2yisRRv1Z5a1Pse9PzNyWc/01EgukxOzu8KCGmu5gOFYwBmxOPht9OK2RnGWlpEhkNmLUWO3SNvImC1NIJES7NSSW3vETL+5eq+aa3XX1CXXfgYgb/1WI5pT74TZRJw7gGVIBcrcPdCZ3Q1gllLME1dQfADDGS6H3TBtVsmkP0a1axciB5Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Owo35p/2cBhpOEXf4kkWkcOpBNVQ54owuZ5jOeZJPjI=;
 b=fbFdo2OkLNZrr9l1imKzheD4qtUjMTSiuEX/ozNcHDyr8JjbtZ/K/1h4UTgbyOH4IBIZ5u+F8vALWb1F5AxFCIQA2ExEwmqBOqea3p9suFf8F3MCxdkrtl/3Vmbnjw242CZw7ahTsNl65fnEvny6LDCwUGfyrVr+giEkgTF0UhbwPFDjpIF+pOsQhvCIR5IhhiCR8uJZiwTpgKGOO5nJFTwbCh4f0F2vV9EW/2UnoO1hhUxoCXZx+o7GS6gnOuTWebr1mZft0eVuel/cZrI3MW/LZvM/xmLWkkOtBKCZnhgLxGLR6/DleNinSe7BxkRJe3EVEyhISUmTRJkw+GUkdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Owo35p/2cBhpOEXf4kkWkcOpBNVQ54owuZ5jOeZJPjI=;
 b=f8+8fREcW3DAWDjd33xzHJUbi5A3EOdTFvlCOM14fsCw4Fe+nZtYQmD9eKjOxaxp21Vnwz6V2wQBl34zajFJXkdonCoJ1j4eovQGnJBaSPCZv9x7y8YFP3IxjHRFLUv5p54qVreLyuvfyhB/UHuEx0FcVLLPqCxxWrXH5eV2E2A9KV+mSbz986pHjX4L1fODeI4YdHJGU28W0FP8hnxn1ZOXEoJY9QnfDa2xRlaYge3Gyqy/g7M0kO1zxo80S8vKT3cVyhvq9xYH/NJa0iSG5e77ysX5DwmIjbUoT2Lxhr/CDJA2pabY1LnRRS2/Ul68W3cOs5j96TN1CftvDrZhHg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8972.eurprd04.prod.outlook.com (2603:10a6:20b:40b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Fri, 12 Jun
 2026 12:57:35 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Fri, 12 Jun 2026
 12:57:35 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next] phy: lynx-10g: fix lynx_10g_pccr_val_enabled()
Date: Fri, 12 Jun 2026 15:57:31 +0300
Message-Id: <20260612125731.133330-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AS4PR10CA0028.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::13) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8972:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bfc0668-a6c5-4f1e-498a-08dec8822ccc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|23010399003|376014|19092799006|10070799003|1800799024|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: lJ1r9vC/MFIUKMjwbWq3SVTGa+tK6HGrxMepnsuaGm6n1X8cg7lF6kcn+Ri8NHYe7lvHe/emLhHiJfwSr3zXkLiwF7QnXw1CznBmEU0Wz7Ij7lu6qwor8hF8a4Hn0RndGrbv3irBlWqZR27d/ga8hAe70E95KFit7SR/qCVX5Tj5t3v9PmHfuSvFUzBIxdVCm2ZMwF2ZFYhiikgMW8S+GvaOV8r0IiIH2aRDPIcMLW41kBbUeqmMDq+2wLPjPQQxrORA0Y0VU5PumIEWRAL5ONb2GUuqJIlj2DV97WPxXhSTXro6vMlrKPnf2FIMLk5batweYdJkVNx7uebW2HB8cwRoKrWYI1L3cX4vzQVoRZUHZFyCMOWfO7AzvwbB0KNbBhsFWpFv1t3oic2Wv1yibA7E2VIGIlF2xHrUxuNqckYJSvf34kqsQkLgk/ryoz6JDHSw+X38AUzVlviKbvwbNPm6x/7mgiGfm51BMYfXPkXpcwsWkwIVEDih7aX9k5N6s+oEJzQZh6kkYCXL9JiBpu6CV9pkEHm6P2QUljjPOWKG45zuPWjQMZGndeQ25G0Nl2dFSt98r5Ew5zSC+/Yl95hVFExkFqGatXWAfLFEUdAuvyXAVfZMQmIGe9bYpmpX6bLeWLYMfv3elsP+tV+B+NnZ875hbC4CzM+bKsF+ES4bUgV9lOW6YC6/cflCoVCB
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(376014)(19092799006)(10070799003)(1800799024)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XrOGEU/P1iBTfBk/BRIMyGe31zrG8xZ4EeM27nvRMFhKULOvTzKRQbuUl3v5?=
 =?us-ascii?Q?SYnRe7ZTBbfD4QHpvqJh2xFX/jNzBhGIdKX+CnbU3shOZOVgdEtreTC7I37y?=
 =?us-ascii?Q?PI9PLDpL/7yy8YaeFlaR4SKcbVr3otBL0g2ZaE2wpzgkmqs58StEo0EvPJlJ?=
 =?us-ascii?Q?6zZb8QgcFfF5CwrfbS1DyuCMJ5g0nK8a1sVKmdwyeMibHlf3aXF9sD9Wom0X?=
 =?us-ascii?Q?Cx5Jfl4e8AwU4v1sYnBdMKl4vb07Qg5UjqpMOpR5fSgrOVHz+9dIuT/p9Gwo?=
 =?us-ascii?Q?PQxOFKHU6f2UBMTWBpKi6gumCN0Rj5klbKFLDKuyWcKx437VN5mEVGLEANZV?=
 =?us-ascii?Q?MYaD8ch+NKTuyuS8tnfwWrfYmWmiV2jNj5ttELX7Ax3C5oj9y6Vp3VJ7yyQ5?=
 =?us-ascii?Q?oDVqezPXvUwLEr8FwKYzKaVIcVM9VaBZaKi6nfPIA8RTMy2yvJhgZ38BpJVK?=
 =?us-ascii?Q?fSPXtUIglJPnzwpxm218hsfkGHIv5kYQeYLHY2TznfsoqSnMsdwxATJbtco4?=
 =?us-ascii?Q?2GaydrOhLLr58h1gd+ymrmc0dly4FLHlV4ezY8cU0iOX6GuTq6br90YGN5oe?=
 =?us-ascii?Q?dPJph1xvjQQNI9I6SJDg8mLmz22F+WHPOlobK0rM3h6b6GpPl+8JVskFgMRS?=
 =?us-ascii?Q?3tGudszUBCp0+588RADhWxR4OcaKocEuZuDhb5a7RRuWEyl5wQckF2MI+D8s?=
 =?us-ascii?Q?53R+PSoNTtT6BKk6Ta9nkXp5rbkc8k/ZHp0a+yLTy10FUuEyb8t7e1UDB/EC?=
 =?us-ascii?Q?EYp4yFLlGZLEINFPjXKH6pAO7lUcVPOn+JKQRaS9G9vi0OyiAZULYOLAIqhD?=
 =?us-ascii?Q?bwe9Re8ij7YClPAB/3Qgzxft51/ROBKVQFqzEQRsERIOUcMsgUz+5YsS+T+P?=
 =?us-ascii?Q?LyWXnP1QMZljA+G3YKwWvWFuG6mU2PPKJSmMqAkHtZASKiCHb7KAV5agZFOV?=
 =?us-ascii?Q?u942urt539EqnMrm/VVnTqB2hOLdcUlgsIW2FPn9GwYOwRGQ2HHWqdAmGQlc?=
 =?us-ascii?Q?yCHhZb9wXVp1wDknpZTHpKsrGmdhiq7iGupLrd1EX/zEq3lIbQ5IFVhlVOYg?=
 =?us-ascii?Q?EN6miwhADgiP5vv61oWI2dvZhlkKxFTm2SwxGEJwWzsr4Acd4YEcb4SEbMP6?=
 =?us-ascii?Q?4KC/ZIJ5C6QVwAP/CUkQmkT99qLyQ0bz/CvtCByG/LhipwyqiF0rbLlGPHCO?=
 =?us-ascii?Q?Cp8JnqD2rFWp/XTyLjkFrEl4ZjFRlC78u5spf3RypFBesnEzVHzu/4L+WJfn?=
 =?us-ascii?Q?fM8dkRe8pOQ5iqJncuKrYky/V5y/HIXDWRHpOnhLiqQCw3o+g6qZvIyVm3uF?=
 =?us-ascii?Q?uxL4w4EhjYDeFh9ogF2f+yBu8RfPq2oq8jG/MDI0aN4ppBZzoY5kojw28EHk?=
 =?us-ascii?Q?9+LkghTv5+t7q1J33gMswttiDo3OhMfL4pgl5FpPu/CAZFpRNZybRZ5ACFu6?=
 =?us-ascii?Q?3cOH0DuERqeY35Ff/QENYsY8/2XGQxg0dHBtBoI/hRVj4Ns96Bsfjct+UGZi?=
 =?us-ascii?Q?ajbB/rnN/T9xS7rbTJEqlYTCSR4Yy6MMo+bzzH+IIwEtGdCsLZB47e5Lk4RS?=
 =?us-ascii?Q?YLZ5PS6Csuc1U4xKK7TaaFtWyhgMrXPrmGifO4NE8oWSznWAIw3Ge3RPWCJP?=
 =?us-ascii?Q?OPfjO5Jo2b9Hh0z4ubXSV8bwPA3m39wm6cSio4A8WI/ssyzlbVNJ/aRqikpO?=
 =?us-ascii?Q?GYYsF4eUhSdN+WbsgLk6tsKxwjDegMwyhlfpCOEty3PsJXktDj6IYGgat7t3?=
 =?us-ascii?Q?li1JYPr0rU11Bk7E14mEuYavFb/naW6HcerAFXoGw3VFxliDfesF?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bfc0668-a6c5-4f1e-498a-08dec8822ccc
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2026 12:57:35.7368
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lcjWrSA1K4VRVldFT2+QgZHLjkEWtdUGf49uy8F2dD7JZF0JPoaXyjJYqbu36nw/yk0nkGLhE3GErYoA1qgQ8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8972
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_055741_924732_D0BC65FB 
X-CRM114-Status: GOOD (  12.41  )
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

The intention of the code is to extract the PCCR8_SGMIIa_CFG field out
of the "pccr" value, not to create a new value with the PCCR8_SGMIIa_CFG
field set to the "pccr" value.

Since FIELD_GET() is implemented as ((reg) & (mask)) >> __bf_shf(mask)
and FIELD_PREP() as (val) << __bf_shf(mask)) & (mask) and since "mask"
is GENMASK(2, 0), in practice there is no functional difference between
FIELD_GET() and FIELD_PREP(). But FIELD_GET() is logically the correct
helper.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/phy-fsl-lynx-10g.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-10g.c b/drivers/phy/freescale/phy-fsl-lynx-10g.c
index 0dbe6fc9b7ba..32caabc406a3 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-10g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-10g.c
@@ -544,7 +544,7 @@ static void lynx_10g_backup_pccr_val(struct lynx_lane *lane)
  */
 static bool lynx_10g_pccr_val_enabled(u32 pccr)
 {
-	return FIELD_PREP(PCCR8_SGMIIa_CFG, pccr) != 0;
+	return FIELD_GET(PCCR8_SGMIIa_CFG, pccr) != 0;
 }
 
 static bool lynx_10g_lane_is_3_125g(struct lynx_lane *lane)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

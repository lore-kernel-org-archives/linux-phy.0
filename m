Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AAB9CD98CE
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpfqWFeNB1hOsThbDSiW1lhwdXfa13r+hBNUrBAzqM8=; b=ZZqA8BruE6iQkW
	GyAyWfCK/yQmOkfIbGH9liOMwO0YrTzDLsRuLlNhNC2rmKOl8Ng6Qs56A8ZCcj4yhL6hBwbLavpwB
	ffjsvb9rbc4NMe/PpEwGY6SVxkuUyMj0taG2FHKiNFrRVC3D4TYGBZRjfcFQmLfPR2s+w8oyg4xAr
	Z7KuOhJVUCvlAERFdMjv4nNUhVwVAuLXXPCff32bOXKo6R/VylYmFWHxzIDEAehCGrLTcHX8X+l5K
	VA3WuvTnMialbkp4nXSBJ/32bHHQMFPpRyM5/BhUcSlcps6bY2pgYRpTIope03CbHDfrOWA/aWbNN
	Lww/d8uIO+S/g4iBD75Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj3-000000080WQ-3fOT;
	Wed, 10 Jun 2026 15:20:17 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKj1-000000080SM-32sx
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T5mYvETO1SFSso+/LUlVgTDc+CGbVwCZUKmfltgWxPH+NQ3+K5BdarfZ35HX34AC89XO5P6JJs0jG3hRGhH2hfjhZw5SOUfys6jJdvmuZeAOtW8zIdrB310uw7IfKEy0pFuIiH0NuG/9HAOOFDCGzDGF647ApXMM42FXN+wZW7zAV49+0bhh5IOqYeMzqB6kQ819WzS0LOajsMpYq6sWRMfL8oceKLsbq74S9JcSn17bNXb/b2Jd5kq57wEdH5TDaugJDz+VvMnzDCeU4z5SQHgws4sm+cwTDSkY0/radcSpDm2rsxXyEGSQg4VmqIrDOZxXxKuq1/5qog+DURyu6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3t3s1VnvQ7srj9Bszt1tQE1zWMUOvSnTVqLAleQn05g=;
 b=p/itUubUhqUbxsVT3OGKIj+M8BBcGOTmm1nke5nTQ726/iOkd5OZGnuuOAP7RlgUtV2nvViskPAs5R9/ApIKjTWDcMf+0cftaH74eEOedZxHkSdvgxQ/o6AO1Io1J2NWkQ2vi0kauHs5O9Ak8Afx86j4jFhhnqux31AzEAnib8cwrWUElLshP1uWOVTgWZ/0yMm9+OtQjiVbybBR+lOXOdNN0cHDEpIeYxxls7HqrqnOd2if5jbnQhntHxxUhBpNiqsSKcr8tiVHyLz2IOAC3KfpVxQM7NhNcpGuhb7QYAcu36+cLzWzoQYa9+RLjHUicnC+YikOq6Zas7JzLZVwtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3t3s1VnvQ7srj9Bszt1tQE1zWMUOvSnTVqLAleQn05g=;
 b=KLlLePpVjZfq19uAABediKZ7CBUQpsYZdMnxjjC89k2ME6A/NYSY5tNE7QhobSqs/XYBcqNKAFPE/0Exn/PtZZR/BlKfD1bMOJr8/irqagg8Fj852YulZmZ1V3igXt3oWbnG+lgjRw8n2QuqQ0/SUKFKrUtm3EwPQW+BZQ5pXO+hY68RUuGDG9KLGD+RVCI/28biq6X44ywZ37nJd4vB8PiytRGp52dO1mSA2OQOzx/ptyOq/fIlribpBofmpKNNaQPLzNnt2X2JpNqqO16JhdmvWXVD0WP5OSz4j8OOHKoDjndH/vmaVNKHJHMNprc68PE8kFUSvuj/sL8lsU7RvA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:10 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:10 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 07/16] phy: lynx-28g: provide default lynx_lane_supports_mode() implementation
Date: Wed, 10 Jun 2026 18:19:43 +0300
Message-Id: <20260610151952.2141019-8-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0062.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::9) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: dda67622-1fd6-4c14-ef24-08dec703c2f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|3023799007|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: E2qgNyiM07HuPM3P7RNZf+q9G1c5PrbJi/K61+5nuYOvJojaRzhXreJti5bN3jUsOHigIim9mrKTUOvG96lP6h7NgON4yaK7/7FfgUq/SgWOuONLSVE2/1wMFDFRBQrNKQ93PxLDchcIUKoeUfbw43PoZ9rv4DCcs2VquJCn/hC5NiJuFHaKrY6/Tp5pcPJM8QpkDX7ubvuVbMXi2uNFvTpkLF7/QGG/9BtJmBVaIc+x/l9a6PqY0PhS1mTwzxhdt+0aB0XHbxUMTPdF7WddNM7Ice7QnwCz2LkZS5e5/+I8wtaIA2/O6YdzNF8fk+Jbci2jmGycHJRtt+TFzpg8hcGyGcAb+crozdtPeCce5VXhiTchc3vKcfl++IcS6hPWEMzbReOw9t78qEcHv5I6EdyhPz2BkA0OFsr0pcbDk9scM7Ge8lb+qunLB1M6GGwHXaj6oJ0QSIu7o14Wn6V1OeMa8/ytZBMuaGMTrefwitzttnYJX07gSLvJ6ukQPnyLd5NjwHdDC2knqCPEQrZNBDMkttm1M7g3ihIpx35pl53KvT84ZygT0jmsY94R0THT2aJ/3HPhzQQBL5moC1Scm54euw5sqW2O7XcO9Ku4OCnhzu1uJEN2t4Qa9y00doMZfy9oLwilYwVT54ZzkdrFgmWDfr7GvV9znzMmT3WcK0V1Yt3qwTP2dJCvKWwPm76z
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(3023799007)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Hb7tOhV3ItRm2pD6nY+Spji/TPejn+ejIg8NFoT6XxNnVoofhmoyPgN5odA8?=
 =?us-ascii?Q?w4B9xME3JR5zbfJ0YEO5NwxezMkpFS+G11bcbT4D20LGXBV91vSMQRA6MBYB?=
 =?us-ascii?Q?jfUjtG7UVIpPTfhCWDmtPHd+0SNXgD+1tyvWdtTIprcQTGF9UF0mY+KCEIQ/?=
 =?us-ascii?Q?uL7Tv1uyc5cjWFncOj1FJ0oe/zMH8veES2dPPEohxlRjPgKE0Fhk8gCK5bfJ?=
 =?us-ascii?Q?jBFnHqakpLlEiwdhH1J413pK8N4+uVTWdOCJDE0rSkIyteDTRBHExsoAbhDl?=
 =?us-ascii?Q?YxM+YBEYGGy4wnfwcPB55/ZJHju6JwyuZ/woHFQ1OiuAZLN18nt/3rHtH85D?=
 =?us-ascii?Q?APYLmUnAlBS0T1BnQ8uKLl/RX3mw3519tnG5t5AC/EomKFMaGAkH/B4z6wPB?=
 =?us-ascii?Q?+9v6YX7jMLmv3q+K4weJFqjx0JzScKpgRgfQZt47kqN6YTW1Y8STzMHTSDL3?=
 =?us-ascii?Q?EwrfG+zICcfflEyOXQYYRXTFkY9Ay+vrlvDnKsd8I3Y0GAGCkm7BcKnOGyTi?=
 =?us-ascii?Q?9vBHfj1CYmvGGOBeCaLgrhQfB8zvpEHNpFlM8IXYa8e6xfdRRRSVzkdjHPyH?=
 =?us-ascii?Q?r94aQp1yb7J3Nz5NCoKeXqVQ1U2X1JOUEpG4o5LAYmMmsHgz70EOqN3Gid3d?=
 =?us-ascii?Q?xgQgosOZLdL6NJM42IAUZjTBNRfq2OeeprG803AlBet3BozEbhezq8E1BKOC?=
 =?us-ascii?Q?V3TgVS8KF7d6W5anX2iY3yYB7ixywr9FvwtQGSms427XTibATqMO9xvv/1p+?=
 =?us-ascii?Q?nDx6phG3cId38EDDGvQclyOvT248W9ubaHyNbdwXJd9Vk5jxiiIwp0lgDvMP?=
 =?us-ascii?Q?V4O1ZPLHN911f15aKByRtHBiKKnRBlspDgtDQSza/CNauMxSpRbtcdGZidin?=
 =?us-ascii?Q?WosDc/2Ay3qRchx461oVTBauMEW+XSjfpJNIxlnn5HHBYKL2W9/cEQSj+R+r?=
 =?us-ascii?Q?YUPbckXP9vgs+trjtooYYsEPl/d9gzkFDzZSU1ckC3O9ErAcGGyG0hpwHIz6?=
 =?us-ascii?Q?ZeSSRh/4OOOcbAvbvWQ5k0G7lkCa99AC1R61+IqzGjfMjk/LJKEBnKXtDvtY?=
 =?us-ascii?Q?+ZGGWdlf9i0qEgUcV1xOWa90Mv3UKXq5AHG0dQEraZcFFglJ2MDgE96/DLvs?=
 =?us-ascii?Q?xs4lr/L8Ntn1tpQimsfgxmT6/5dzYNzHkEDl0MVRs2JIkSX0xsTHwqxrDDpz?=
 =?us-ascii?Q?xss0KwxaK/UjpkBb+14cR/UQwyy6gIa8obSyQ8ApJS+2prPrSk1JFG3NnM57?=
 =?us-ascii?Q?kXBHTkLaXUmn6+PHs7qVeAgdCel1fGze6oV9LjBYmaaylLg+eCRsf3mWkoex?=
 =?us-ascii?Q?N6OzOwYIMWyr1N9QVhzCU1TD9JS4YMkpdRu5OhiznRyPNEu7TalmC5Ud6GDu?=
 =?us-ascii?Q?1hWQn5WAw5arx6ol1hc7r3KGGWXaok7D4ztEx1t/bhdV49UNwAKy+89jlItK?=
 =?us-ascii?Q?S5d/qz1TEJkCLqu0o9BxTz+kzxIi6V83rXlOxF1Ph4EPPSKq/KxdcEI/ni/b?=
 =?us-ascii?Q?VGRJXofvMe95xDoC436Rr5/CWLkaGZddL+iZGXU3/trnlegBGNwuYbKGdYwm?=
 =?us-ascii?Q?c22krE/83zgJtNxCKd2VIrU9vFVyDupTadMNrLjIOrEcmh5IISjj+/cm13Dh?=
 =?us-ascii?Q?f3ViN9lZYyx93bXD3eSfUtVrjHYqWinCpFS6piFOh0jhxo7i+4vuhNFp9CJt?=
 =?us-ascii?Q?qEnH8MjS381uzXtFCRVwTFu9sSDHzvM50HKkms9u4tfAPXXs8/GP7sbrtjW+?=
 =?us-ascii?Q?ykmlOUw0xA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dda67622-1fd6-4c14-ef24-08dec703c2f4
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:10.4255
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jAcDT/jKDAjbvI945R7GlwdTom21EvGwUWBrgxYZudBujPw/mie7FTTOnJR42TmIDxrROEswSGvi850PzIlB3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082015_802429_10D650CC 
X-CRM114-Status: GOOD (  19.19  )
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

For the 28G Lynx, there are situations where a protocol is not supported
on a lane despite there being a PCCR register and protocol converter
available:
- LX2160A SerDes 1: reference manual documents PCCD fields E25GC_CFG and
  E25GD_CFG and protocol converter registers E25GCCR1..E25GCCR3 /
  E25GDCR1..E25GDCR3, but nonetheless, Table 289. SerDes 1 protocol
  mapping shows no RCW[SRDS_PRTCL_S1] value for which lanes C and D
  support 25G
- when using the "fsl,lynx-28g" fallback compatible string, we don't
  want to offer 25GbE because we don't know if the lane supports it,
  even though we know how to reach the PCCR and protocol converter
  registers for it.

But for the upcoming 10G Lynx SerDes, the above situations don't exist.
There, if we know how to reach the PCCR and protocol converter
registers on a lane, we implicitly know that the protocol is supported
there, so implementing priv->info->lane_supports_mode() would be
redundant.

Implement lynx_lane_supports_mode_default() which decides whether a lane
mode is supported just based on priv->info->get_pccr() and
priv->info->get_pcvt_offset().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v5: none
---
 drivers/phy/freescale/phy-fsl-lynx-core.c | 27 ++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index f49d594622cb..802e32dc6dca 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -40,6 +40,27 @@ enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 }
 EXPORT_SYMBOL_NS_GPL(phy_interface_to_lane_mode, "PHY_FSL_LYNX");
 
+/* By default, assume that if we know how to get the PCCR register and
+ * protocol converter for a lane, that protocol is supported.
+ */
+static bool lynx_lane_supports_mode_default(struct lynx_lane *lane,
+					    enum lynx_lane_mode mode)
+{
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+
+	if (!priv->info->get_pccr || !priv->info->get_pcvt_offset)
+		return false;
+
+	if (priv->info->get_pccr(mode, lane->id, &pccr) < 0)
+		return false;
+
+	if (priv->info->get_pcvt_offset(lane->id, mode) < 0)
+		return false;
+
+	return true;
+}
+
 /* A lane mode is supported if we have a PLL that can provide its required
  * clock net, and if there is a protocol converter for that mode on that lane.
  */
@@ -48,8 +69,12 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
 	struct lynx_priv *priv = lane->priv;
 	int i;
 
-	if (!priv->info->lane_supports_mode(lane->id, mode))
+	if (priv->info->lane_supports_mode) {
+		if (!priv->info->lane_supports_mode(lane->id, mode))
+			return false;
+	} else if (!lynx_lane_supports_mode_default(lane, mode)) {
 		return false;
+	}
 
 	for (i = 0; i < LYNX_NUM_PLL; i++) {
 		if (!priv->pll[i].enabled)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

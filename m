Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9175CD6E4A
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJ948eataBFJZC+acUcIpM6335z1I2rXxsjfxlYH5/g=; b=34BUduktuNtdOG
	6UjGKFcuq/WfPJfrIIo+tLJcDLr4uwbfYUqPU7WDjZT4mFp5GWu+GBjr7uvK69vGS2Nj9wlZL2cGU
	82IdHiHIhp5WRG6lqyCRtK41j4pPXJYT/4+/woE3tDIQyMJWpgg7mFAJGvTfNFvIozwzAY4CwTn9p
	bGVaX7fMXrkv9bRiPZ0GVMmnobtNE2vK6DtPrHl3O+OA12p0uS7tIpkLA5DS9k2YMsgfxkC0WBR8S
	nPRPIFC2eOXXNieE6ho+ld7h1Dk8hjuJ6HTYWrdmeiwRIrb7Lgj6V2/xHXjDzva1+y9P4hykWhyf+
	tl+kK0+mlbLJAV3WvUSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o7-00000007yLR-29BB;
	Fri, 29 May 2026 17:15:39 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o2-00000007yDh-0lW5
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bkBESfXj8SdmH27S53tIfLfSNYvSH4BiZYCFw0UjvYs9dk789MQ5OAA0g3cqj4Y7jdAwlp693O/acrTqkQIiA5X7mzBPEivLTeSV6mVXIK+T6uU4OXydvLC5Kx9CSrIX3eHA5mVeCZPZXA0V51X4yWT7aZLmG5urf34A54A5btKJsQy5lpuO8yU8le5vD4Qjvmmp3Eblw/qfZwg2NeIne+H46t9vj8kF/ko0okbEQROt76vYPUHSXiE4MjIIXGF6F/F43RhGvrbtuc+GpnNld8dBDozMMv9W06tsKTi+FKBBCEqnBoZpvYu4V1hS26EFw9hWHN7Oh6mDjQ+w8nQ5Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bCmYUYVWgSUv4LoyXg8g7LUMduBR0gotz01xp1jAY/w=;
 b=raOLajUeyJ27pL3NZvbVtH5YmGrS3Cq8N3ScbTn0e/LVEhE5aD4mTqlYAIyV/Nibv4tQSTshXSeB0NPFi9nOBveeDbiMjyqT7bjoBqf1uumwNDPAOCarMSXcHOFj4h+eoEa1AW/fg6wHQiuARj6NdQ10GZpCrhOChnp32Jd0GZLouxPobrYkxtyXBXstdQIC3Qay03orN12xZgL45aD74whD+UeSTHtU6CxEDS3u6O0ZUYRT7sjUpXR3MJOFtygP5sRaZzy89aNm+yZINJ1FYNNy6yjvKpsZ0eHki/RItNPMUCZn85VTDfThn4qbiqApll9etKfvRWah+3SqHBDzgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bCmYUYVWgSUv4LoyXg8g7LUMduBR0gotz01xp1jAY/w=;
 b=YQcw5EcA6JidCNAxHj7AQzFkRuLjpKfxfD0VC0cfRgOfHZsIILTBpt1PAwVtHhcup5zamCX/r2r8+c/VqgCv38O40sF6r9wAj8m7P0LmBOdSSKGcJ5mWrt5giGSdnSLTtMVqHfh1LyXpyitZQRG72SZ40k2RGDAudPwEsZr0PnDwjaXcejt7c3WgzH47Lf0Bsoad6sagVLn2VF5Q/CMU4cgkLChWge0NpkndjJVyZ+X+1T926FDJTAm19o4IA0J6CQR4gIteV4LnpqfS5+QTgYYUahbLZCibcMKlqOUpRvB4ZvEV/qRkzbjyH+PPJNAq3zpsdspBlWdVbWfTFkWZig==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:24 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:23 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 06/15] phy: lynx-28g: provide default lynx_lane_supports_mode() implementation
Date: Fri, 29 May 2026 20:15:00 +0300
Message-Id: <20260529171509.1163787-7-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0025.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::14) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: ec1c7102-c8a3-4316-5fd4-08debda5decd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: y/P/sdgex9G6Jz9fj2FxmQnbCMyj27oQAEvEMFoLNF5C6KGUAL1iVI81oyJfS5ge/EAuNspG821D35E6Sl6X2XZwW5u1ORXSWbzkLCiTtzSMpWEmTG6lgyrNzX5gIGl5pnYdSjO1R05afa2+OUUFUIR2t5+Z7LfuCjDJVo3H9sxYRrh+/KMvgt9GvAu00ca9DNB8CfZ8DCAQ9tvjKA+4MXqQF3iOB6GhZe0b15lHktZKEwfzzUjWmxqCzF+owTpF4dcRGvey5FLi2b23ceRXfsG+DYj4HrpKTi5YwwbJTgyBwXjIzRwzDGuICBe0p4CY8DruskhL86npWYDpWToMMd0SwEeRnXSOnPDPvtlYgWYX1e0z/C8ghA0mZfSGvvsVRyWyTPeizpAC2Kx9jcc2SiX0ZIJdaXq3q/XHN69UwLJrvGjeHTMDATY4JfS5f/mz496rcp7ErxJtXyyNZu5TPoAOpuHn70lpvMsHHJq/i0AN68wadscTVA74a79JBCtHZlkp3M3h0i5h1qJyTUJkzqYEpNDxAhLOE4usMfroCBpMYL3rAev7jVeaDhwZoNglhHegUGX9WgwAppo1GwVblxXfN2EyN18188c6txYiLF2ty0tkoGamQMVVXnKet+PinfWa4H0owu7P4Jp/Srkx6q2X9eVttfkNTOq2gGl96HQoInDqhta9ZcpweGy0m46/
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?caYTBQMS+/iSlR+aJUbmH6yx+Db3m8wVrBwVS0JeAkl6dB5+1KIgv8AvD8KW?=
 =?us-ascii?Q?mh6+uPwVxDUVAOEFeUhpnU/TiC16U8WWtBq4dUf+XEoPKxXbdA7hQpOZ6wej?=
 =?us-ascii?Q?P3WpsO4JUD1SnM5w89PT+yWT6mr0lqd25xzBN9kstuyQRevjv5FwpJ6fkl81?=
 =?us-ascii?Q?i7CzxJ29HnRHvzmUKVqA9ptkMwQ6kwoGVCBkJg/ALQQkuo+p4Xii/yvCljvl?=
 =?us-ascii?Q?wPARDuOVIJeDH26EL1QFXGb80bPpIazCEVsBx0E3PsT5q5QfdOot1aH11Ba3?=
 =?us-ascii?Q?ucGcbvpw3kyDjGNFhBpck0b2GnlgPlNW6oX1BTxgQ/KnftluTFiXptMDpq8R?=
 =?us-ascii?Q?WjPPUyAPil4OO7qTp8NprN8pom4gTTDhdUl+Seki3Oq8g5Lha225a2F1R20c?=
 =?us-ascii?Q?vzDu3wreYJjzAM9ez2hCDdQF8PXpKSU4M0GuJyN3oRgfeh4gAAtO2UCoHQvk?=
 =?us-ascii?Q?RAqoVGR6s8yTJhV+qf12FPXK8LU3/U4hKnekU+Wd1ICfG4D3vknerPQV4JL+?=
 =?us-ascii?Q?Hol6vTQ1jWrq7VPGs52KbvsC1vYl2pyaf0VNHI3uXriq4ESiVgDHVrVqYzBG?=
 =?us-ascii?Q?aNlu5UhYa7xZQhmDuRhC2WxIF2TwJfj9Jw4qwe8ujV7XqCinQfo+tHpkjv+i?=
 =?us-ascii?Q?DMgYa5VtT6kmMqymWwBfNxUljCCYTNVWpI+qj7xJQwPex4fyCtVbsME1S5YB?=
 =?us-ascii?Q?dQovebFccoG4EMiKAjYCGc3f0qztnG2ilKsPoaBLlPSdndYvU4PzjMGR5Dgy?=
 =?us-ascii?Q?ZgbMLTKnOYqw9RyBWThMUS0MYsR8DYvn0+H7hg7/oB5RL+DFxvfD2eGLQotn?=
 =?us-ascii?Q?oUqgtpDR6v8sR30ckmh6LHaIcXCzbZ8/jTc8Db4zbEajKo+4X3dGa19TZQxO?=
 =?us-ascii?Q?+hEyTAtY1eyk/GaayklTfUjqrrGyBiDm0FykP57qx6Fvo+yhH2XM46ZzmGLn?=
 =?us-ascii?Q?Hx2Evvrj9b5dY2YLOrf4gXDvojdVFgNYB83kShvmabaNFd4PFK4TAuK+CxX8?=
 =?us-ascii?Q?7LGGCqThkZDFyel3GX+u7PBTd97BLuABeEG184+Z7GR7KK2Bm8D3AxIvDIAr?=
 =?us-ascii?Q?zvONEB4UpuAvq6kfnEbLIXWyTm2iwIACu/IGD48PViXBGuNL5lgmGMgIbF2K?=
 =?us-ascii?Q?d/A/8dIY8Tp3oVccpdR20tbfanIL3pCzo7rzhujQxPTx7dLfgO1N+zmSNvdQ?=
 =?us-ascii?Q?3RTBIerdyOJZglOLg6pQCeyY400PuiqbklWV4z09og9c5+PgzeoRW52DdjPL?=
 =?us-ascii?Q?0AxGr69HWtib2n7om5wAk1HMdGgx2Xg69PMZ1ygHQzsI7OnhaNWWFQxDzt+Z?=
 =?us-ascii?Q?Mr6VnJMaEfa5Ihv6UEbdoir46DwMiWcwgWjlQrKP8D/TEQUzII4QNsTdcwmX?=
 =?us-ascii?Q?DOZCW0BMFM1RDiRekIfWBky56IYtb1Q3y2wyJpb1EsEMk7hw1wLHJgCQHTFm?=
 =?us-ascii?Q?zemeOXTnB9heFbp3wDZasNW2hU0JQl5TyZkIXeebZGkf4D8RL2QMdBlbclZS?=
 =?us-ascii?Q?3muwECteGE6EKNnt7r/ChwHIMPoXn1Ytzv/NS9tkvnAX/B4HKTTtp8zPjFJg?=
 =?us-ascii?Q?cAvlZdATWSFOy7fvYq1N4yeYMzIWVYWW+MBQS8KJU0koBgPqUGlF36V5bS6t?=
 =?us-ascii?Q?k8M6Uw7HTAHwMIecKu2MTQcz4RfUd+H3a8DLnL3l65JiEpr4wxNmxxBuz9xd?=
 =?us-ascii?Q?8Q0rj84CCrEJiThmB99IaCABIDU9RG2ERyifXrbCkolPVJ2uFNqVOBS6TR7E?=
 =?us-ascii?Q?56ZhT1w3akrmXSJOtZgz714rSB8WcO+CnSryEtzHJGm+nSaZeru/?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec1c7102-c8a3-4316-5fd4-08debda5decd
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:23.9676
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YfhvEvcqnPkMIqyNG/ifkNPupcC0fgTyq2HKoQy5MaI1OJUC00PzozEvI3H27FLSICxdjfB6dFV5iZ8DhY0stg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101534_222551_2E15D151 
X-CRM114-Status: GOOD (  19.59  )
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
v1->v2: none
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

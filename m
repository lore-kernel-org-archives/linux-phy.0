Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E052CD6E49
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXSNdPEuHPXmdD5pu8c83rPEiTANTqkneGak+OazE/Y=; b=tT4UfBR8R03eDI
	pSeYmx1Yv71u2XH40lwyCX3Np6J+2Gz5LM2GKP9Ji8yp9DOp1ZduoKB+ZnuYxPUF5r7hzOovjBrR2
	/V2pNG/5JDd/6P9rXwBQZiVbykCkpN3vVhEqS7hLf2oWwExL1CKz4hPct177KQckE1SN/sh5i3IBd
	JMC1fAEQnH4mv8qXDfQhc7xbOcES9ILOePUqY+lFZXBrZa2w+1gOP2sSw0mhurmkhuL1DW00pWVNh
	tQIWImU6gmzOrukFpfpUzBz5DIY6QHT15LALB6eCSueb8S76/3f0SKkEO5clJUdzG/7/mNdpN+L6L
	9V+PJitSMBJA03m8Ur7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0oA-00000007yNz-3cJd;
	Fri, 29 May 2026 17:15:42 +0000
Received: from mail-westeuropeazon11013021.outbound.protection.outlook.com ([52.101.72.21] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o7-00000007yHw-3gU7
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zHvBIGlkPCVDmdmmvmYOwGBkn1VOyL4ssBKL3OnUtgjZis8Xs0DgNvOS+rTQ+CmfFF0Bz6EXabUQGvPTTSAHMdVomGi+nWc9p0YvOUzJt6LuLnZmnEfc+oLxOKWr4vmUu3UoNM3gtQJebTwFbN2H2i51ejNC+diIYd1/lmRDlxocMhY6idwCnbvsiD20RHEfJ49233MM/grbvMoDizJJRDR0+jLPM5fUt3Ay1zbtnTXesV+6Zh5z+xl+OIhdd1YktDmsOddDLcfEmkhesyam692rxBiqUvzbJfVqNPyPUZRJ731qmYa85wy5/8v84Tenb19sn4fktTSAkFVkPWz4Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xxsEgj0l8bfd1Jc9Q824MplQfS+SlDaAdNQa/xn0NZw=;
 b=q3+l6lqRN8vS/J7FiuEGKDOBHZ2aBnXNW+6ycfZzyaUex8MKclnkazq+JmHiV8SnbAD6yiJMSSw+zqMST0kHSXJi33Eyb0klfEXrP8WAstoZhnJ/h6ndC9jwWMo7dC0JP9M1RYhskQ3QWsEzDM1uRD0gpfzWULl+V5AqoWxNWoEwnn2uWQLiT2wAMWNf6tmK2nofjGuEESgl14pgbNNeYiDSfvEDrjsoDeXFbbQ5xfkWitK1TNHfaqg1p/FiCYbOYYNZfk0+MHBxmEd3l2ATDO6zo5Ih9h4y3S8LKg0JjbclIU/vpeHoDYtSjbYRS2pKZ2kFH/0Vvuh6AjiQdwGlxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xxsEgj0l8bfd1Jc9Q824MplQfS+SlDaAdNQa/xn0NZw=;
 b=UedV8m71XEXeNqf6lMAxPYLjPY+p9HOklvfBww1ZiEbDvan4guOR3fx1FDszNOILvVdORpkHVJGpTkyc6vz5Tu15QRhvVZ+G+ajUgrWZP3R5sRElPCfQmIzh6PPChALxxMrrw9vJR9RSbnXjBDGgUOUIeAR/4nSheX+G80j8C4K0kZ+bzWvW1D3Lsm0U6QwhHP5X+1kEdvxUalnadGLgHj4nWolhOwSgDcvI28tVNflVKkEfgJcZE0wJb/W+84QkF11+lmLkYczzBlWMCZbgRnTvTVZDbmPoSPqqo9Wh1vuYuHX1MfGwxQjKxP2HqcbdDIR8Q9bjhzjKfnRnPfEWbA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:29 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:29 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 09/15] phy: lynx-28g: common probe() and remove()
Date: Fri, 29 May 2026 20:15:03 +0300
Message-Id: <20260529171509.1163787-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0034.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::14) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 035e4cdf-10b3-4312-01bf-08debda5e1de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|6133799003|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: PzMZFvFcp1QzmZuA5F7huRcfJ/YY148Wtz0wA8wsUS4BP4bMN721vH5HKLzAvZQBj31XiCTlmmoLgZNhMqio77F5zvSpDb2fcOBNsto9OWzQBmuk8l/czB8gBfnm8/xCnrsh12eELmKT0rf2r7AbIlpllF93I3oV9LPd9er+HdkDZEZH9/Ot3AaNUtxp63Sc/J1RtJNHOmzRU+YUfLDSILLW3kKGtSBfS0ye1F/Q4AovVIjA39Wisret6nizmA2zHaPYv71IcMb2+SM7sHGpwbMYGSxfLKkAR8Wz5/Dsbru0fDIwllrOT8/WwI0ISeOc82OA33BKSfEOX7B4Ff3gF5rH4B/4FZovgu3vJpM/uG0NhozRQdQQb4GF+/mt5Kf8yVBSMGCGm8G/ejKKCsGHAv62yM5BdIsrIT/ez0E/u6ls09dQbcfwtQjEVrlW6eTCnfjD6YMhTjD85qFtSQ/6CKeru2T8xqXF/Q0KLY5RDMAd4joHtmhSTi/X27iJp24cMgl6Mz4Ft7irZl8S5RE/TQM9QB1wsVmTcGg52yNt6ISjCzVd8rycEqiZSSwbk94g7gQZpDHsO3zM9OLUSkLL49XNGFz9FT7/dBpKKzSOwKuOxRGa1591dG9jUb9Ydn1o+uCI8erENZNjVljQdK9Vhq04VbJC0GwNWQpFLvwTspz4bnwUqn9A4Nn066FYXDpj
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(6133799003)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k+EKbBeYGjisLfFjBO0nfGp5k4S9nJd3IjWcPHie3bsGTG5coENDX7juqWLd?=
 =?us-ascii?Q?oL4ilLRgyXrWktGYmiWJaJFTuovY9Augx8ZqtdYO1DTVnqCjg1frDRhFTg42?=
 =?us-ascii?Q?gr/AIwmJHFWEaGj0nEAM+aOZK5otZZ4N0C4XmCbevprzJ/0KjKXRRtF37QFI?=
 =?us-ascii?Q?iK9/cn5Eo9Zzb1cuvvy2YFn+XQl52EixtGVEb0jTMKWz63rXumg7kiS/86yJ?=
 =?us-ascii?Q?kE+1V31YKy/OpS3CymainM84CNLly3GiblGUzTeNEcviywZ0huK64yvdwrzn?=
 =?us-ascii?Q?h9jGxq9sGJXSiyf1jLj3RxEbjIVPCFeejLFoKDkt+YR5QKjF1q8Jhrjzlm0B?=
 =?us-ascii?Q?arI3zjbIAvXabjINLRIncTnfFmqxWSO6Us4xQOCixLaweMTdVODPp8gJh8w4?=
 =?us-ascii?Q?Am/49tUEWXqkXVO9GUfREtUvuVwOxLfo/09T7RS1SbqmYUjceuLqdWi9Nwhf?=
 =?us-ascii?Q?IJEuaOKcfXre/yJLUyRVWSGW1CW0KyqO5bVYZgn9sfYMGPbO6dT0btYzqjRW?=
 =?us-ascii?Q?5qRrF8HX3KTyQub5oZS/p2f/jeEJgGScg62zxT8e+B/3zAyjQQBgAm7hxfaY?=
 =?us-ascii?Q?eZbC0UAmed7BtMOxbolzly1rV/wjgszsEDxpi+7p419BeTsynGDlBEaEHly+?=
 =?us-ascii?Q?63AlNsqj0TaBl4sXomMqY+7l+2lPyi59KQhUw5XNc1UmLv2Zy8q22Ygg7Zxj?=
 =?us-ascii?Q?nTclzD9M4Nl2L7ibzWwah6zrYgGdFRF1ewrE66oSp/0lCP1lQzPWmDZZ+Rxo?=
 =?us-ascii?Q?J2h+r09L9SxqHJmxQz+HWh3Otyjw7YeoKH4yTa47jeqeYDK9omt27H8KSoVE?=
 =?us-ascii?Q?egBxLZLlpcdxPrAKA8+O+NBbV+GsR3ofSqa7cqETJ9mLjrofd2+a4/DfFCiY?=
 =?us-ascii?Q?wpW4c74t3GE6RdF8WyRzNYJzDnATumAdQcWATcDuc2yUJm3+1YDVP28yIpSL?=
 =?us-ascii?Q?ahLwhp9M1A3H9SPJGLJSV+jJEn+cgePDGjq1xkvQuEjRZX4rHBgWlbKrmF+g?=
 =?us-ascii?Q?lJZqEERhuV+u65JXKycfmXeNTunVoVT4Jk5WFCD51O/1/VdoW84N9IqXMpfu?=
 =?us-ascii?Q?5UenIXEUG60bCV1VD5K70V7NvIDTcD8clPE0V90gAC+hk5aThiarFTwiswR/?=
 =?us-ascii?Q?zFkz5xHpPVsO1g0hYTPuU1gTnr8R2U65LISz6oKjAfz94JbpXOCCQ9rEpocO?=
 =?us-ascii?Q?7xBl0AWNXl4LnEc3qZA0vGoBVprsfCSL9VLWblRSA8RriFEOYubyw7sGLnLg?=
 =?us-ascii?Q?kqxhsmd4+/g2tQGpGF4Mtj0DoatnM7keOdiI/UqsspeniyNoJw18fu/GGUi5?=
 =?us-ascii?Q?+fGTALyEeBmgVk4w1uiXjgBlS6JG0x4gavYUj0Y3O4eNStkITE6NKwFXxSh4?=
 =?us-ascii?Q?WYF6BKtEbAJWEg9mMByKKiAdxMr3JJYPhSqnMbSKz2R0Lh2py1w7nRI1wYSu?=
 =?us-ascii?Q?rn/4T97CM/m7K9uTM57lRHhFU32W+Ft4uAhcgz0+2Mo+n5kcrhSvwMV3ukhh?=
 =?us-ascii?Q?0z6x9wWhYDla5QYba0zUmlu6x4rR78Q0r0HxGyywujhGTDUlQ/vRAf8Jnvyc?=
 =?us-ascii?Q?DUUKzJZmtbP0AjSmNvQvddl/ovWzwLHbAgzOu4nAQUiJQCH2LbYhQU2bIvTG?=
 =?us-ascii?Q?CO3BYQ406Nc56mqfbM4jE8bzSlzO6hx9fwNpy7zeVu5AXjkqN1abaYPmXCz/?=
 =?us-ascii?Q?qMwUugUC0t5hYVgybTBR6cpaxPyVLYtzKtAvlUwHgy3Uc6lRy+9v8P/TpICi?=
 =?us-ascii?Q?EDP6DS/ouhKcLjCM/QPfllUU4v9VIm9EppNiiiA4pw18D/QPBqTu?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 035e4cdf-10b3-4312-01bf-08debda5e1de
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:29.1118
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ckefzoq5gDndzVjPTB04bV5mZ1PotkevETpG256QBSzyFGYjRj2vyTzj2YnO8Kw1MtKhH2zh6+e2pkOTZgvG+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101539_926701_E9631411 
X-CRM114-Status: GOOD (  18.59  )
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

Factor the device-agnostic logic from lynx_28g_probe() and
lynx_28g_remove() into lynx_probe() and lynx_remove() inside
phy-fsl-lynx-core.c. These will be shared with the 10G Lynx driver.

Since the PLL configuration, lane configuration and CDR lock detection
procedure are going to be different, introduce lynx_info function
pointers so that this code remains in the 28G Lynx driver.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2:
- adapt to the addition of a NULL check for the "info" pointer. Note
  that lynx_28g_probe() does not need to test for NULL because it only
  compares the pointer to a value.
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 225 +++++-----------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 170 ++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  12 +-
 3 files changed, 227 insertions(+), 180 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 25aeab478d49..50b991870edb 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,7 +12,6 @@
 #include "phy-fsl-lynx-core.h"
 
 #define LYNX_28G_NUM_LANE			8
-#define LYNX_28G_NUM_PLL			LYNX_NUM_PLL
 
 /* SoC IP wrapper for protocol converters */
 #define PCC8					0x10a0
@@ -781,6 +780,30 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 	}
 }
 
+static void lynx_28g_cdr_lock_check(struct lynx_lane *lane)
+{
+	u32 rrstctl;
+	int err;
+
+	rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
+	if (!!(rrstctl & LNaRRSTCTL_CDR_LOCK))
+		return;
+
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
+			  LNaRRSTCTL_RST_REQ);
+
+	err = read_poll_timeout(lynx_28g_lane_read, rrstctl,
+				!!(rrstctl & LNaRRSTCTL_RST_DONE),
+				LYNX_28G_LANE_RESET_SLEEP_US,
+				LYNX_28G_LANE_RESET_TIMEOUT_US,
+				false, lane, LNaRRSTCTL);
+	if (err) {
+		dev_warn_once(&lane->phy->dev,
+			      "Lane %c receiver reset failed: %pe\n",
+			      'A' + lane->id, ERR_PTR(err));
+	}
+}
+
 static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
@@ -1088,50 +1111,6 @@ static void lynx_28g_pll_read_configuration(struct lynx_pll *pll)
 	}
 }
 
-#define work_to_lynx(w) container_of((w), struct lynx_28g_priv, cdr_check.work)
-
-static void lynx_28g_cdr_lock_check(struct work_struct *work)
-{
-	struct lynx_28g_priv *priv = work_to_lynx(work);
-	struct lynx_28g_lane *lane;
-	u32 rrstctl;
-	int err, i;
-
-	for (i = priv->info->first_lane; i < LYNX_28G_NUM_LANE; i++) {
-		lane = &priv->lane[i];
-		if (!lane->phy)
-			continue;
-
-		mutex_lock(&lane->phy->mutex);
-
-		if (!lane->init || !lane->powered_up) {
-			mutex_unlock(&lane->phy->mutex);
-			continue;
-		}
-
-		rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
-		if (!(rrstctl & LNaRRSTCTL_CDR_LOCK)) {
-			lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_RST_REQ,
-					  LNaRRSTCTL_RST_REQ);
-
-			err = read_poll_timeout(lynx_28g_lane_read, rrstctl,
-						!!(rrstctl & LNaRRSTCTL_RST_DONE),
-						LYNX_28G_LANE_RESET_SLEEP_US,
-						LYNX_28G_LANE_RESET_TIMEOUT_US,
-						false, lane, LNaRRSTCTL);
-			if (err) {
-				dev_warn_once(&lane->phy->dev,
-					      "Lane %c receiver reset failed: %pe\n",
-					      'A' + lane->id, ERR_PTR(err));
-			}
-		}
-
-		mutex_unlock(&lane->phy->mutex);
-	}
-	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
-			   msecs_to_jiffies(1000));
-}
-
 static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 {
 	u32 pccr, pss, protocol;
@@ -1157,49 +1136,13 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 	}
 }
 
-static struct phy *lynx_28g_xlate(struct device *dev,
-				  const struct of_phandle_args *args)
-{
-	struct lynx_28g_priv *priv = dev_get_drvdata(dev);
-	int idx;
-
-	if (args->args_count == 0)
-		return of_phy_simple_xlate(dev, args);
-	else if (args->args_count != 1)
-		return ERR_PTR(-ENODEV);
-
-	idx = args->args[0];
-
-	if (WARN_ON(idx >= LYNX_28G_NUM_LANE ||
-		    idx < priv->info->first_lane))
-		return ERR_PTR(-EINVAL);
-
-	return priv->lane[idx].phy;
-}
-
-static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
-			       struct device_node *dn)
-{
-	struct lynx_28g_lane *lane = &priv->lane[id];
-	struct phy *phy;
-
-	phy = devm_phy_create(priv->dev, dn, &lynx_28g_ops);
-	if (IS_ERR(phy))
-		return PTR_ERR(phy);
-
-	lane->priv = priv;
-	lane->phy = phy;
-	lane->id = id;
-	phy_set_drvdata(phy, lane);
-	lynx_28g_lane_read_configuration(lane);
-
-	return 0;
-}
-
 static const struct lynx_info lynx_info_compat = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1207,6 +1150,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes1 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1214,6 +1160,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes2 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1221,6 +1170,9 @@ static const struct lynx_info lynx_info_lx2160a_serdes3 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
@@ -1228,6 +1180,9 @@ static const struct lynx_info lynx_info_lx2162a_serdes1 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.first_lane = 4,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
@@ -1236,112 +1191,26 @@ static const struct lynx_info lynx_info_lx2162a_serdes2 = {
 	.get_pccr = lynx_28g_get_pccr,
 	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.pll_read_configuration = lynx_28g_pll_read_configuration,
+	.lane_read_configuration = lynx_28g_lane_read_configuration,
+	.cdr_lock_check = lynx_28g_cdr_lock_check,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static int lynx_28g_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct phy_provider *provider;
-	struct lynx_28g_priv *priv;
-	struct device_node *dn;
-	int err;
-
-	dn = dev_of_node(dev);
-	if (!dn) {
-		dev_err(dev, "Device requires an OF node\n");
-		return -EINVAL;
-	}
-
-	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	priv->dev = dev;
-	priv->info = of_device_get_match_data(dev);
-	if (!priv->info)
-		return -ENODEV;
-
-	dev_set_drvdata(dev, priv);
-	spin_lock_init(&priv->pcc_lock);
-	INIT_DELAYED_WORK(&priv->cdr_check, lynx_28g_cdr_lock_check);
+	const struct lynx_info *info;
 
 	/*
 	 * If we get here it means we probed on a device tree where
 	 * "fsl,lynx-28g" wasn't the fallback, but the sole compatible string.
 	 */
-	if (priv->info == &lynx_info_compat)
+	info = of_device_get_match_data(dev);
+	if (info == &lynx_info_compat)
 		dev_warn(dev, "Please update device tree to use per-device compatible strings\n");
 
-	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
-				  sizeof(*priv->lane), GFP_KERNEL);
-	if (!priv->lane)
-		return -ENOMEM;
-
-	priv->base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(priv->base))
-		return PTR_ERR(priv->base);
-
-	for (int i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		struct lynx_28g_pll *pll = &priv->pll[i];
-
-		pll->priv = priv;
-		pll->id = i;
-		lynx_28g_pll_read_configuration(pll);
-	}
-
-	if (of_get_child_count(dn)) {
-		struct device_node *child;
-
-		for_each_available_child_of_node(dn, child) {
-			u32 reg;
-
-			/* PHY subnode name must be 'phy'. */
-			if (!(of_node_name_eq(child, "phy")))
-				continue;
-
-			if (of_property_read_u32(child, "reg", &reg)) {
-				dev_err(dev, "No \"reg\" property for %pOF\n", child);
-				of_node_put(child);
-				return -EINVAL;
-			}
-
-			if (reg < priv->info->first_lane || reg >= LYNX_28G_NUM_LANE) {
-				dev_err(dev, "\"reg\" property out of range for %pOF\n", child);
-				of_node_put(child);
-				return -EINVAL;
-			}
-
-			err = lynx_28g_probe_lane(priv, reg, child);
-			if (err) {
-				of_node_put(child);
-				return err;
-			}
-		}
-	} else {
-		for (int i = priv->info->first_lane; i < LYNX_28G_NUM_LANE; i++) {
-			err = lynx_28g_probe_lane(priv, i, NULL);
-			if (err)
-				return err;
-		}
-	}
-
-	provider = devm_of_phy_provider_register(dev, lynx_28g_xlate);
-	if (IS_ERR(provider))
-		return PTR_ERR(provider);
-
-	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
-			   msecs_to_jiffies(1000));
-
-	return 0;
-}
-
-static void lynx_28g_remove(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct lynx_28g_priv *priv = dev_get_drvdata(dev);
-
-	cancel_delayed_work_sync(&priv->cdr_check);
+	return lynx_probe(pdev, info, &lynx_28g_ops);
 }
 
 static const struct of_device_id lynx_28g_of_match_table[] = {
@@ -1357,7 +1226,7 @@ MODULE_DEVICE_TABLE(of, lynx_28g_of_match_table);
 
 static struct platform_driver lynx_28g_driver = {
 	.probe = lynx_28g_probe,
-	.remove = lynx_28g_remove,
+	.remove = lynx_remove,
 	.driver = {
 		.name = "lynx-28g",
 		.of_match_table = lynx_28g_of_match_table,
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index 802e32dc6dca..b14d67e574f7 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -2,6 +2,7 @@
 /* Copyright 2025-2026 NXP */
 
 #include <linux/module.h>
+#include <linux/platform_device.h>
 
 #include "phy-fsl-lynx-core.h"
 
@@ -202,5 +203,174 @@ int lynx_pcvt_rmw(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
 }
 EXPORT_SYMBOL_NS_GPL(lynx_pcvt_rmw, "PHY_FSL_LYNX");
 
+#define work_to_lynx(w) container_of((w), struct lynx_priv, cdr_check.work)
+
+static void lynx_cdr_lock_check(struct work_struct *work)
+{
+	struct lynx_priv *priv = work_to_lynx(work);
+	struct lynx_lane *lane;
+
+	for (int i = priv->info->first_lane; i < priv->info->num_lanes; i++) {
+		lane = &priv->lane[i];
+		if (!lane->phy)
+			continue;
+
+		mutex_lock(&lane->phy->mutex);
+
+		if (!lane->init || !lane->powered_up) {
+			mutex_unlock(&lane->phy->mutex);
+			continue;
+		}
+
+		priv->info->cdr_lock_check(lane);
+
+		mutex_unlock(&lane->phy->mutex);
+	}
+
+	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
+			   msecs_to_jiffies(1000));
+}
+
+static struct phy *lynx_xlate(struct device *dev,
+			      const struct of_phandle_args *args)
+{
+	struct lynx_priv *priv = dev_get_drvdata(dev);
+	int idx;
+
+	if (args->args_count == 0)
+		return of_phy_simple_xlate(dev, args);
+	else if (args->args_count != 1)
+		return ERR_PTR(-ENODEV);
+
+	idx = args->args[0];
+
+	if (WARN_ON(idx >= priv->info->num_lanes ||
+		    idx < priv->info->first_lane))
+		return ERR_PTR(-EINVAL);
+
+	return priv->lane[idx].phy;
+}
+
+static int lynx_probe_lane(struct lynx_priv *priv, int id,
+			   struct device_node *dn,
+			   const struct phy_ops *phy_ops)
+{
+	struct lynx_lane *lane = &priv->lane[id];
+	struct phy *phy;
+
+	phy = devm_phy_create(priv->dev, dn, phy_ops);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	lane->priv = priv;
+	lane->phy = phy;
+	lane->id = id;
+	phy_set_drvdata(phy, lane);
+	priv->info->lane_read_configuration(lane);
+
+	return 0;
+}
+
+int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
+	       const struct phy_ops *phy_ops)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct device_node *dn;
+	struct lynx_priv *priv;
+	int err;
+
+	dn = dev_of_node(dev);
+	if (!dn) {
+		dev_err(dev, "Device requires an OF node\n");
+		return -EINVAL;
+	}
+
+	if (!info)
+		return -ENODEV;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	priv->info = info;
+	dev_set_drvdata(dev, priv);
+	spin_lock_init(&priv->pcc_lock);
+	INIT_DELAYED_WORK(&priv->cdr_check, lynx_cdr_lock_check);
+
+	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
+				  sizeof(*priv->lane), GFP_KERNEL);
+	if (!priv->lane)
+		return -ENOMEM;
+
+	priv->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	for (int i = 0; i < LYNX_NUM_PLL; i++) {
+		struct lynx_pll *pll = &priv->pll[i];
+
+		pll->priv = priv;
+		pll->id = i;
+		priv->info->pll_read_configuration(pll);
+	}
+
+	if (of_get_child_count(dn)) {
+		struct device_node *child;
+
+		for_each_available_child_of_node(dn, child) {
+			u32 reg;
+
+			/* PHY subnode name must be 'phy'. */
+			if (!(of_node_name_eq(child, "phy")))
+				continue;
+
+			if (of_property_read_u32(child, "reg", &reg)) {
+				dev_err(dev, "No \"reg\" property for %pOF\n", child);
+				of_node_put(child);
+				return -EINVAL;
+			}
+
+			if (reg < priv->info->first_lane || reg >= priv->info->num_lanes) {
+				dev_err(dev, "\"reg\" property out of range for %pOF\n", child);
+				of_node_put(child);
+				return -EINVAL;
+			}
+
+			err = lynx_probe_lane(priv, reg, child, phy_ops);
+			if (err) {
+				of_node_put(child);
+				return err;
+			}
+		}
+	} else {
+		for (int i = priv->info->first_lane; i < priv->info->num_lanes; i++) {
+			err = lynx_probe_lane(priv, i, NULL, phy_ops);
+			if (err)
+				return err;
+		}
+	}
+
+	provider = devm_of_phy_provider_register(dev, lynx_xlate);
+	if (IS_ERR(provider))
+		return PTR_ERR(provider);
+
+	queue_delayed_work(system_power_efficient_wq, &priv->cdr_check,
+			   msecs_to_jiffies(1000));
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_probe, "PHY_FSL_LYNX");
+
+void lynx_remove(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct lynx_priv *priv = dev_get_drvdata(dev);
+
+	cancel_delayed_work_sync(&priv->cdr_check);
+}
+EXPORT_SYMBOL_NS_GPL(lynx_remove, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index 5cd86c9543cb..e8b280cc9b38 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -10,14 +10,15 @@
 
 #define LYNX_NUM_PLL				2
 
+struct lynx_priv;
+struct lynx_lane;
+
 struct lynx_pccr {
 	int offset;
 	int width;
 	int shift;
 };
 
-struct lynx_priv;
-
 struct lynx_pll {
 	struct lynx_priv *priv;
 	int id;
@@ -42,6 +43,9 @@ struct lynx_info {
 			struct lynx_pccr *pccr);
 	int (*get_pcvt_offset)(int lane, enum lynx_lane_mode mode);
 	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
+	void (*pll_read_configuration)(struct lynx_pll *pll);
+	void (*lane_read_configuration)(struct lynx_lane *lane);
+	void (*cdr_lock_check)(struct lynx_lane *lane);
 	int first_lane;
 	int num_lanes;
 };
@@ -85,6 +89,10 @@ static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
 #define lynx_pll_read(pll, reg)			\
 	ioread32((pll)->priv->base + reg((pll)->id))
 
+int lynx_probe(struct platform_device *pdev, const struct lynx_info *info,
+	       const struct phy_ops *phy_ops);
+void lynx_remove(struct platform_device *pdev);
+
 const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
 bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

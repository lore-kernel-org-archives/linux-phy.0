Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B07A4CD6E49
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsR0dKVnkRUJa1r126Wi0b1xd4ni+9qAcUPVSZ4u8fU=; b=ZFJZErqa6PGDtT
	qV+9sqwsd50LdKT1F3HR9U7U3HuyKbqEdrCpXf0PhDyELEjhA8bMfo4FNw8X7inO4bUJrBVuldx3E
	l8o355CjJk6MBYUKsz1UOw8xtLT57sFrHTBTqXy2kmTO7YbtSJurZ9eUzM25idq2WdVpwzIqNZeHr
	tXmmjIpI4hO92YdAnG7M6V8shrv+3OYulmggSay9c8rFmkcsc2vl6uZ5sa8yIB7mdW9lhcuq6MCUy
	o9wBZGlicYYZQ5wMdp8znZCyjPNl8wUy0VGHMPN3bc52/rq1/WCMujW2Oi7o6kswHSLEiZ+e+JZN1
	7PQSXSm9SjRsO4vA63cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o7-00000007yLK-1vp0;
	Fri, 29 May 2026 17:15:39 +0000
Received: from mail-westeuropeazon11013021.outbound.protection.outlook.com ([52.101.72.21] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o1-00000007yHw-25Oj
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gg0Sp08mCa004M9V4YkeDHzY0JxYcb5Bl0ICMSdjctma0wxRViAzRWJFwmIxX0Cdm4n5gs5ChkhH0nN6f2KWEJYZVgS/sDpd6BvBh0MiWmTuBmAlLWHU9EMog5Grv+yFMzOTnFwtZnpya/bdrHfMkaK2iGtp2hYbEnOQbcJvgaQ4WHZE8Kk6O14vy5qJtcFh9YPmNKsWLWJT5OcWaxW2M40Afi7r7W7xxXSMGeQekCD1gM9KsmkUmdgrdZsuVtE9Dp+uQ/PLqpXNONo6hLGRLdIyBIlxvarq1q2H3XBS2amzXj8Z+SNiYUVqlt5VQSs3VdBiAGayYztCAcpp+mydGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WBM+93PR1JRz4KjLlDU8A/KFDVN6QseaCfA8wjNoO04=;
 b=DjQTi7zSGzIzPG3NwT7Xd1K9m5Lur4L6VETqqjsR2pfEAsgxdfHp0+6NkPITejid6UeX52NJNguobrwPmBrtRYawue5perRG9gGjvgDJAAztqG/czrHlFJkP5E48QVIpzBxmr9JCtN/uGjfS0dTtc1SgqnqqT+1/u/PBRLaixpXTv08tZtOUhDWuHe7HjA3VT94c+F1VjznxmQdWgBM0uePa4ulUKvEzq5Gpgb629+JOXpdZMbTMrCPtIOCNx/cbWveJyNZkV2JE9YsViOj5NLnoEzByqmOSUgCX2sFLbeuhLOVxxfFp0TAlOMzIfmLb6kwW+9VWRhcXLMBBcNmPrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WBM+93PR1JRz4KjLlDU8A/KFDVN6QseaCfA8wjNoO04=;
 b=BsUWtdf71gTiUQnMfawbi2M0jvSEukomNoirf2hEwz+3MbscNVjWxPAxPkjbxbUKVizhUVVC0kA/jxbKgGsL2FTEMTRQwcwl4XzhB29WMpMwGKvE81BagtU0EmimCBhQZn2FdUgPO3bR2EVr3+O7KSFlbeIRig3zDne13EoojDtcpYNCYSl8yLbRNL4og71FldLXjZOEMJuecQ3XNUbl2q3BUHtgd/OVfHq0jt0Vmqt9MInWlnGwMzaT/7HhnieGPbCTTgz6gdqb4KpL89TkP4XG12xL5jkpIBKQc6KQ0xsM4+jlsvP3k2Q2NJt0BflIatQrqug3vWr/G6kRPtZyAQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:22 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:22 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 05/15] phy: lynx-28g: generalize protocol converter accessors
Date: Fri, 29 May 2026 20:14:59 +0300
Message-Id: <20260529171509.1163787-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0029.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::18) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a9b5268-bb59-40f6-3eea-08debda5ddde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: g2U41w7NkwioR7TW58DZ6KVYZZfCAeYk754RSyCbaf2hdcUipDSHcCnKDIrQlmlm9IHPKQ0TzrVTfDTwgHj0rDQxT24TW/3eIxMPBPsOlV/S6mj07YnrbiXvlxJqvKWy5/se6apw/3eYs/upq3zgrOH0/rW/ptFzWirFwRhwKTg6gEfEUFG+J5/WVww2RTHQgfPrqxpVseM6Yyd3YUm8X5taCYeULGaSGn/iw3Du6nBbqRJAu/U2V94Ndq3jMPV1Ral87SEU2JDQAIikWKnMA06G2ebbnhF2mRHnkzdDmVGJynOZkf1D9yISh8rFZ7U4m3E8Ubn09Evb6QVnamOmLYxLqhkBeYvIrm+ZTCucfdS303pYyjNI/nDg2EunIcnYgoIMEkPKsbxsAhfN9CdlDvs7NDlKOGtanBMQFhPxgG7Sugco9ClRjmJq4T2tZ7lLFFCQCrWcfTOLuD+NrrmTekVaIdXnI9sioUVLssklS4GOPFdCCuTulvUFMbTxlMu6HEIll4jMdTHB8Zj7vneTFIlCTGnG2GV3+w92kVgX1ZJbG0XYV1CUmV18NzKJJ6GNl6AB59pSCK5C/3Ryl6/ZHLIlX9EFXfw+P+SoPIj0tKYFRYNyrlNzWC0en4z6AfffZutdVei1GnL+Oib+MFl7j9w3g9O/AC9BSVeVBYPKezf6+nZel+xQMMVchZUh1BId
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AvoNx/qBxQbTFccbuDgTHntWUgCNoKPSw34HvQeFmm4NJ9Yd62cDVAc8CPWD?=
 =?us-ascii?Q?S6DCpKwV3lezJz8G3Dukp46ZgzCnvgXvcOBTO03q1lSU3gEQmYqko2wnfwQl?=
 =?us-ascii?Q?oK6SLKbv7n3Kg6Qtp0pV6deyEFRFdLUzMM+grZGBC2wwHumrOmwxmuWFuofz?=
 =?us-ascii?Q?6mVV1yc0hLgudVx8H9zX43UNMSXYtYqNzihs8KHY5Rbu0zSYD5ZcROnvIg83?=
 =?us-ascii?Q?vH4ySF487JJzBKpvXG89OU2U6svJaIAH8Sj7xS9s0fogFJeNiKWxxen1/VMH?=
 =?us-ascii?Q?Mdx0i3y/qR5TRRKAnSWWVStJ/fBFxiGUBEPkpVEAENmu6aSpnE37eODNBuTv?=
 =?us-ascii?Q?dc7a5rMLOQrwLLebBxtCcORANPvSb3fFFrjxCb/xQHjz+1S0kquOHmmH/V5+?=
 =?us-ascii?Q?W7k8Rj69zCh8033kcluul0mo5TSNl070UiQ+b2rTApU3XYmSMqNJ6gQkNYZb?=
 =?us-ascii?Q?iv2SoQzgmYUXUMud2CYZT+f1+foQaREc/xjRBDh53eurQIO9PteoVO4FXWDi?=
 =?us-ascii?Q?rGl4sJNa9SE6Z6SAYY+P8ETLuZNktKYiakO4owXPHNmSGwqHucHHPOyjFK3J?=
 =?us-ascii?Q?xaUFJ4p2yEZirNR8+mZkQa0wJwB6SMGfVW0TNW5P9uUTIkdhrbkuaZHB3H97?=
 =?us-ascii?Q?fRHkd1eTherb1DFSzXXrsyf0kSeBv4OyLXBfgeDcoqwHJKTuISwghnArYw4M?=
 =?us-ascii?Q?onZ3kNoM9FCZOwtpaRRwt/+YwhFtGv/u9eCMqCQbYd4hhFof3dOtDM3yM6Sa?=
 =?us-ascii?Q?rrMmK8wGrkN7IwdefY7b939zUWhJViDueXk4DnREuSbiNqgSiHDmx/CX0PW+?=
 =?us-ascii?Q?LbSl1tOOCE4U3GVy2olTzOGjtrukBuv1GxXatEBfgFo3nWtBZeGzYGgnV417?=
 =?us-ascii?Q?6kExvD9g1PnJyHxAhworpJ7ka6m1nCZdCzmiWiBlRhShrA7Sx/lMRnXueHkh?=
 =?us-ascii?Q?AtvU5ih7AMKdhprai4Zpv3fETfHjUQpelL+VduVpdlsa9YG0ogKSn9W7kTeV?=
 =?us-ascii?Q?M7+tS6AalVjD9dX/H/VXIRoJJNTpwUfgv7kCIopdIlCkHmA/7iK9b6cnA8kL?=
 =?us-ascii?Q?k50KvR2tTHkJQuwr3pqMG2S7y10yd4veeXVlTOU7pk3vuoTsj7ZA72CcxF/J?=
 =?us-ascii?Q?MgdMPw0umgSFjaSS1uy7jHx67alaxJ2xURAmereZBuIPrAC9A5grb1BN9Qgs?=
 =?us-ascii?Q?Mb7PQfy0Ufqd22kQYJtBAvkdGk5ffK4Js49B20hnmqkbQjhB7OQEmisTEOwH?=
 =?us-ascii?Q?W3EP34+7tsFWCPNnrprZosQ1+qsdEAjqTewBpEKCabRO99YAlwXDhklJ4NwE?=
 =?us-ascii?Q?rNdprnLqr/Eh08wkwxb7xmW7Zgqv9JoAKAGiHI2EJoZOav02UiaSZMhZGPNE?=
 =?us-ascii?Q?tohICmFeW/Z2J8zSpJXRNPYQOPaMZp3mzaDKlgDWRPWnJTkY1bHhVoKrIDCx?=
 =?us-ascii?Q?LupI7rVzx/IWtZnYCL7rh/VyLlP8LQOtD59Q1pByPeZk6eNBQcqbIcyjAwBw?=
 =?us-ascii?Q?k/6bH2lm/dcyfEbofL8MPazSfTrdCorwQ/OKoafgm6szI6RSgsYF+x5Qw1k9?=
 =?us-ascii?Q?nA5CbVFAf6bey6EddaEFkQSJ9iPGQS0uGP2UIX4oRWNiIpWHMa7UpR52rlQ+?=
 =?us-ascii?Q?C9YBFYPw3Bt/1cWoYKKGINmUwSvfUgcAMpKmMqcZnS7c2TEHKSCyJtwQrS3D?=
 =?us-ascii?Q?eiUfWu/8lJabTap6vx4e+y455HsVoJN2R6eIIao2a6DMynAmqdrUHKqntne3?=
 =?us-ascii?Q?CQKF7Fl1btqJq5Z9/WgAB7e3P1lETODhnor1Q8aQ/Y3L68bDGsJh?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a9b5268-bb59-40f6-3eea-08debda5ddde
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:22.4415
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bAP/8PEBhTVMSCe74NkozLIO4Omt0NVdW387uuWE7+QsfsiZBkRYfJsD4jS2cxs7WXY2KpaGU+cWbu1GliABWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101533_709255_DCDF88F4 
X-CRM114-Status: GOOD (  14.27  )
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

The protocol converters on the 10G Lynx are architecturally similar, but
different in layout from the 28G Lynx ones.

Move lynx_pccr_read(), lynx_pccr_write(), lynx_pcvt_read() and
lynx_pcvt_write() from the 28G Lynx driver to the common module, and
permit each SerDes driver to provide just its own bits in order to use
this common API.

Currently, that just means that the direct calls to
lynx_28g_get_pcvt_offset() are modified to go through the
lynx->info->get_pcvt_offset() indirect function call, and similarly,
lynx_28g_get_pccr() through lynx->info->get_pccr().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: adapt to lynx_28g_lane_remap_pll() prototype change in context
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 102 +++-------------------
 drivers/phy/freescale/phy-fsl-lynx-core.c |  90 +++++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  13 +++
 3 files changed, 115 insertions(+), 90 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 504d03ac8a0f..5e914c810505 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -269,8 +269,6 @@
 #define LYNX_28G_LANE_STOP_SLEEP_US		100
 #define LYNX_28G_LANE_STOP_TIMEOUT_US		1000000
 
-#define lynx_28g_read				lynx_read
-#define lynx_28g_write				lynx_write
 #define lynx_28g_lane_rmw			lynx_lane_rmw
 #define lynx_28g_lane_read			lynx_lane_read
 #define lynx_28g_lane_write			lynx_lane_write
@@ -785,124 +783,48 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 }
 
 static const struct lynx_info lynx_info_compat = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes3 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
 	.first_lane = 4,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
 	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
 	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
-static int lynx_pccr_read(struct lynx_28g_lane *lane, enum lynx_lane_mode mode,
-			  u32 *val)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	struct lynx_pccr pccr;
-	u32 tmp;
-	int err;
-
-	err = lynx_28g_get_pccr(mode, lane->id, &pccr);
-	if (err)
-		return err;
-
-	tmp = lynx_28g_read(priv, pccr.offset);
-	*val = (tmp >> pccr.shift) & GENMASK(pccr.width - 1, 0);
-
-	return 0;
-}
-
-static int lynx_pccr_write(struct lynx_28g_lane *lane,
-			   enum lynx_lane_mode lane_mode, u32 val)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	struct lynx_pccr pccr;
-	u32 old, tmp, mask;
-	int err;
-
-	err = lynx_28g_get_pccr(lane_mode, lane->id, &pccr);
-	if (err)
-		return err;
-
-	old = lynx_28g_read(priv, pccr.offset);
-	mask = GENMASK(pccr.width - 1, 0) << pccr.shift;
-	tmp = (old & ~mask) | (val << pccr.shift);
-	lynx_28g_write(priv, pccr.offset, tmp);
-
-	dev_dbg(&lane->phy->dev, "PCCR@0x%x: 0x%x -> 0x%x\n",
-		pccr.offset, old, tmp);
-
-	return 0;
-}
-
-static int lynx_pcvt_read(struct lynx_28g_lane *lane,
-			  enum lynx_lane_mode lane_mode, int cr, u32 *val)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	int offset;
-
-	offset = lynx_28g_get_pcvt_offset(lane->id, lane_mode);
-	if (offset < 0)
-		return offset;
-
-	*val = lynx_28g_read(priv, offset + cr);
-
-	return 0;
-}
-
-static int lynx_pcvt_write(struct lynx_28g_lane *lane,
-			   enum lynx_lane_mode lane_mode, int cr, u32 val)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	int offset;
-
-	offset = lynx_28g_get_pcvt_offset(lane->id, lane_mode);
-	if (offset < 0)
-		return offset;
-
-	lynx_28g_write(priv, offset + cr, val);
-
-	return 0;
-}
-
-static int lynx_pcvt_rmw(struct lynx_28g_lane *lane,
-			 enum lynx_lane_mode lane_mode,
-			 int cr, u32 val, u32 mask)
-{
-	int err;
-	u32 tmp;
-
-	err = lynx_pcvt_read(lane, lane_mode, cr, &tmp);
-	if (err)
-		return err;
-
-	tmp &= ~mask;
-	tmp |= val;
-
-	return lynx_pcvt_write(lane, lane_mode, cr, tmp);
-}
-
 static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index 5e5bcaa54d09..f49d594622cb 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -87,5 +87,95 @@ struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode)
 }
 EXPORT_SYMBOL_NS_GPL(lynx_pll_get, "PHY_FSL_LYNX");
 
+int lynx_pccr_read(struct lynx_lane *lane, enum lynx_lane_mode mode, u32 *val)
+{
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+	u32 tmp;
+	int err;
+
+	err = priv->info->get_pccr(mode, lane->id, &pccr);
+	if (err)
+		return err;
+
+	tmp = lynx_read(priv, pccr.offset);
+	*val = (tmp >> pccr.shift) & GENMASK(pccr.width - 1, 0);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pccr_read, "PHY_FSL_LYNX");
+
+int lynx_pccr_write(struct lynx_lane *lane, enum lynx_lane_mode mode, u32 val)
+{
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+	u32 old, tmp, mask;
+	int err;
+
+	err = priv->info->get_pccr(mode, lane->id, &pccr);
+	if (err)
+		return err;
+
+	old = lynx_read(priv, pccr.offset);
+	mask = GENMASK(pccr.width - 1, 0) << pccr.shift;
+	tmp = (old & ~mask) | (val << pccr.shift);
+	lynx_write(priv, pccr.offset, tmp);
+
+	dev_dbg(&lane->phy->dev, "PCCR@0x%x: 0x%x -> 0x%x\n",
+		pccr.offset, old, tmp);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pccr_write, "PHY_FSL_LYNX");
+
+int lynx_pcvt_read(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		   u32 *val)
+{
+	struct lynx_priv *priv = lane->priv;
+	int offset;
+
+	offset = priv->info->get_pcvt_offset(lane->id, mode);
+	if (offset < 0)
+		return offset;
+
+	*val = lynx_read(priv, offset + cr);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pcvt_read, "PHY_FSL_LYNX");
+
+int lynx_pcvt_write(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		    u32 val)
+{
+	struct lynx_priv *priv = lane->priv;
+	int offset;
+
+	offset = priv->info->get_pcvt_offset(lane->id, mode);
+	if (offset < 0)
+		return offset;
+
+	lynx_write(priv, offset + cr, val);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pcvt_write, "PHY_FSL_LYNX");
+
+int lynx_pcvt_rmw(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		  u32 val, u32 mask)
+{
+	int err;
+	u32 tmp;
+
+	err = lynx_pcvt_read(lane, mode, cr, &tmp);
+	if (err)
+		return err;
+
+	tmp &= ~mask;
+	tmp |= val;
+
+	return lynx_pcvt_write(lane, mode, cr, tmp);
+}
+EXPORT_SYMBOL_NS_GPL(lynx_pcvt_rmw, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index b726ff21972b..5cd86c9543cb 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -4,6 +4,7 @@
 #ifndef _PHY_FSL_LYNX_CORE_H
 #define _PHY_FSL_LYNX_CORE_H
 
+#include <linux/phy/phy.h>
 #include <linux/phy.h>
 #include <soc/fsl/phy-fsl-lynx.h>
 
@@ -37,6 +38,9 @@ struct lynx_lane {
 };
 
 struct lynx_info {
+	int (*get_pccr)(enum lynx_lane_mode lane_mode, int lane,
+			struct lynx_pccr *pccr);
+	int (*get_pcvt_offset)(int lane, enum lynx_lane_mode mode);
 	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
 	int first_lane;
 	int num_lanes;
@@ -87,4 +91,13 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
 
 struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode);
 
+int lynx_pccr_read(struct lynx_lane *lane, enum lynx_lane_mode mode, u32 *val);
+int lynx_pccr_write(struct lynx_lane *lane, enum lynx_lane_mode mode, u32 val);
+int lynx_pcvt_read(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		   u32 *val);
+int lynx_pcvt_write(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		    u32 val);
+int lynx_pcvt_rmw(struct lynx_lane *lane, enum lynx_lane_mode mode, int cr,
+		  u32 val, u32 mask);
+
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

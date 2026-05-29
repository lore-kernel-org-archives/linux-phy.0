Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0E93CD4F54
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFoJdc8lesP8Pb1ElnGAyMkn1+iK43EJ7PzLpU+7PqU=; b=UfgwbTZaX42HiH
	GFbZSBcBn3Jow/T+ncJaYWdhDvEu1wLjiD9YLnWpZK/5LGRiy4b9hv7pGnsRQO3R0vIBS852X4lvk
	EECg6HMGzDax5DZtyOERQxQzLVP1RGsri9WeJ1150vNvbI+0+XZiXZ6ZWeMdmgVdFomuc21sGNIhO
	2hzAFjuu8XdBsKkr53Wku1196YHucegIo5CJTwgYIpPy0+TYt/yfvT2o4bU+t6+62jig8ZoV0oS3i
	3iuOVkZ7Xx7TyNIe4MsuUSI9sJ8at625/sRSfcFblJVNMUk5gHccjU0uoGUXZncwL5tdgGmzvpz82
	PWX9M21J+t6QTgkiA0gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0oA-00000007yNX-2kXB;
	Fri, 29 May 2026 17:15:42 +0000
Received: from mail-westeuropeazon11013021.outbound.protection.outlook.com ([52.101.72.21] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0o3-00000007yHw-1akx
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ViMykzb1JEjT+rzwJCZilLFdsY+ZOQKNAT67wJib75CPsNDl4SizZmWqZGkUCU5F3cR3BYhHTR9RmGrIwR2lPpy7hPI5ahRK4h9lPD5frS/Ro6M76AgVL0ttXohtsEjtJaok4xxNktI5aqNnpvtzHZgH6gV+90WPseMJU44tAuzX3AvycepnFRuQ0qI4EiCWMRHA/hWI36vwz/HpETIhX9ReWYEtomupDrAAq03B4PwpeG93pqKENwTash3mbnpzM1dZeusz9hyg3Iqr2qXwdHszwIQlrxaWLXtJNiVh+3nQNpShCLkQt96KmWNozahqJRXxUEzRMSHFret3PZ+5VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jKE613ew7TobJgUBLR+T/trT5ipSDYHO0pmJEUxmFAA=;
 b=UrbzjGeOTu5apjQLRaqOUJ3PtNSrwe3ieWTLGGNSL7+ExMwf1YdMu5ZICPSOMsqD6kVhOK6ZFws10DgWYqQEV1cpGZBl0aFUEElOyf/igkB5+5aYf7Xo9RLu/Uk3/NUG6ucGnmHpCxPKm7pPMV0isVI6RzZtmZ+Gxr4f01LgaElplsfqIup3+7WIr8xU5SsfkhgvlWylUAqbQZ9ENyEOUAxHRZk8Xd08djpy6MueZvfJtSh7JOpCqXgZAXh9Y6Cg3FvR2cRFuvXX5VKHdkU7dO8gFr9oAl7cP876azTjLt0bbJtwt4vWgTA5DatVd+S7vjiuYWGZDASE0cmUTLqyIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKE613ew7TobJgUBLR+T/trT5ipSDYHO0pmJEUxmFAA=;
 b=HvbKb6S6mR++70AY5XB5srvIqnuHZM+56gbF9eNehe2ydaoaaCvL2ZZq2O9eSzioLt0PVF+ZN+yx9qGv0i2nf0JaPixU/R8SU5kzg2DwHq0STTQ+R1K6DzSxNSbiXBv6eXazQNqQNqhnUAIXlmfSWylNUbJ5paFBwEzupKSF8JUj0pFBhs03NUPYwrKawCkMtSCW5O0P7Ui8M+KSvMXIiRvzvXxxRTx035lxGv+Ac/eI9nBdRo/y2+Mr7+F1013mm7oP+2/lTdoQvlMCI4S8igzmmuK0hcTw2LA7sET3V6v09BpQuThJAfnwU/m2KedXjf6YowS9Kh8Beb7ANT7fnA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:25 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:25 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 07/15] phy: lynx-28g: move struct lynx_info definitions downwards
Date: Fri, 29 May 2026 20:15:01 +0300
Message-Id: <20260529171509.1163787-8-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4PR10CA0021.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::9) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d68eab5-841d-49f6-e3b7-08debda5dfdc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: zueYCI2EyAURf2Tac9VkHdBOxzr21mYlxzgnK/DFJJZzZRLhAm1+iz005GhXPDx+Bi4evr97Z9Sk3ZjbW3SiEQmDIk1tDFX7IxpLz2IFnT1dm+e4kYI4DUpAByO3/ZZLWANYl9iO7a0SfFsQoDZ7FjG9LxexMepIQuEya1dr1wNqgtwwjfJ3NLb+uFZC+u2sfaeHT7tT9AwEMeDhTqlQcErAjLr9E32JcA4zIB2jAKLmHgvs2IHJn0Iae7TYVjaAiwlnGX3FvEYGvPUGBp3dyj+JVXwZKQe0LbkdYaSpP+9O4Nsa20hlBWhaBViMbDaxVzkQAaH2cG61H6D5BMCvec/0AT9zQ2vXuYzqRoxpwCKNGex4qu/Z9IuHgcW4CWOaZDCR1ye1L0r2zj//gvHg3cAXYLlxOfhAe17A2rqvA4mh7C3WmQQb8XE9MkipEJe6y83RLvCeAORYs2VIhBYkC4eUi9DYIlOunw5+kT2GxoSZavCH2qFRGoUrA1Rn9DeGwRnLZDHB35WsL1b+a/rXc5FudvKfmMk0VETUTVe0YShLcC1hwJhTgU7oYzZjX6JUYcSyaGL2/mC6OLSicpefPKjOUzbNlj/8z9JLOUXfMNSctY2p1jyIWaQ9aNPYkOAFGfUAexTkpnA2gTCp8OVh72tzgiNQycNcaHP/sq6rz56gBFqzQzWUdCdIDbXABGvm
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0RFsTqLLbntnOwr6P95rg5ThlkWZOaW54OT+6EYah5i7chXO3hPWmsi8yKoI?=
 =?us-ascii?Q?ZuYJJeFt+pgIJ7Q/kbcMYTduonadR0V/hDYQRvmvMfD/9+JlcWZJmngmNmvl?=
 =?us-ascii?Q?mxlEbyT4peFCBX/L10mC2RJv5B+dEQjI3sAITlK3vCCKpoarQlSYFEqnPfz+?=
 =?us-ascii?Q?+lyx0Tzl+jqj/JrqSJe1qQyOt31EzKoB67UFCi2I9sltbAuatyPUUY053cXL?=
 =?us-ascii?Q?QAhlzaAShnJWnR5tZAO467Gpry4UUxbc4mYZ2G4OOYVJGW5fNj3wCLoFbXnX?=
 =?us-ascii?Q?orGv1nE3IBXl4FSDuC+o8+HkhjeHC6Ta6e4SxhX7MntXZ32GW7JxXNlhg8hY?=
 =?us-ascii?Q?F9qYRvMfhucI2s0gE5hSUUBe1m8RJDrRVL1MATaRgy/wIS4LInd9+ok0rf83?=
 =?us-ascii?Q?kXC3sKUIiZ2mkbzBS4HkALDAI+HjcxAnz/MG3ZiBooOlN8tF4lmyFgdq7gvY?=
 =?us-ascii?Q?qdr+byBtIGdJRh1ffM2xaum3MBkxhm7ku+Azjsr2qQZOBQ5zV6fxdTUXMzHe?=
 =?us-ascii?Q?ec+Pk4JxAahtP+73dLaedLV7c/i/GsjGtZXBLgHYMFsUSELzU1u788KqR6R5?=
 =?us-ascii?Q?w2PlUBihvbvpvYCL4T0fVsW3ht4kMRlBWmEZLEWqnM9Froh2ImDkQm4WHW/Y?=
 =?us-ascii?Q?DXWpKkQKJ4rM/nscs/+t8SzXlgDZoCtPyHUUGQ4adho8hqKJwwgRptI8LmUc?=
 =?us-ascii?Q?2jrGNubrRKddbd4G65gv+t00KJdEuqtnD8QW0Iw/neIlNdTQUnVrBI6JnLk/?=
 =?us-ascii?Q?ZCLUWkCcq2REMYlow1MSoVXmEB075negFNlzGa+eZ3IJMHDgZOSdDGLT60VP?=
 =?us-ascii?Q?QWgYmYcZY6LU/LeUxv3FrIpTrd+vqMUj4y/45/VeEC6iL0wBenmCA5JD1D8E?=
 =?us-ascii?Q?wEDEgpGO9J92YSa3A827sGrQ41ldzFGAiNTMqFa3zgdeThhsPNyz4svt0qeQ?=
 =?us-ascii?Q?Oyt+xLogK98yAba9x8nHy4AVDQWgxyb+rBNInB6ChvVDq2/Usi3mRzr7X2Vq?=
 =?us-ascii?Q?Zd9Ut7N2ZHUsETEbBwuP1oLFvYi0XxLdsqRmGQr1MTwRmybJqIQA8tGGgx7o?=
 =?us-ascii?Q?OWhh8fOvscP59zmvmMxYvj2u6Vu430RO7FZfzb/jgSuv3PxDVg4iitOomCkg?=
 =?us-ascii?Q?K/YUjvCjUX/I6yOMOKAyKDfzjAIAjSwMikCviMdAsfxt8ZmYLsUcdfCHd5H+?=
 =?us-ascii?Q?dj6Fh/fnn3teQOToe3YacP29CfEC24yuvPMnzi6MbDeloVraMpsvyoLYEyvY?=
 =?us-ascii?Q?kcPnxUPFEagETtKFioNPqY0TPDw2IkiJ4BRp3UYdnpamLcszXMxwbeNEoQ6/?=
 =?us-ascii?Q?dlqomSGLe5lidJi9AaICITY0ZFC3YGIgieAnECU+NvjvSjKQabsI4uH2+EfA?=
 =?us-ascii?Q?vMlc6U1zr06ottqwmcf7XAK7jGAXTDIX97FXx9Ar2kOcNiIiEUd6/zAx8tr7?=
 =?us-ascii?Q?TvYM3rh+yw0slvioEw88DYTFsDGvvQNnAJm/wxwi3fg9DbwVRlZGPtC7MDLk?=
 =?us-ascii?Q?nfIFoUyrvoNUWW5XcWeKeSAHJYwrtOhwiBPPlHWZbjX5/jRc9JDXFO8ui4Ya?=
 =?us-ascii?Q?HEGRtK9XsnzPy1yoXNoY0Mfd51jG85RWJt+Gs0UeG5KvXNWjy7CUqqSI+YBM?=
 =?us-ascii?Q?HfvEj3u/Xz/MYF2nxY7G3Y/PJpd03WFm9W/svbRluT76+S/sWwKvG3jBiwYM?=
 =?us-ascii?Q?apvEc+saAuQGom5g1M+GQbSbnPxddw+Ke7G4qKZQS7aIGnNqNWKoCYrysgwY?=
 =?us-ascii?Q?TZrTcAIIZ/TaPiGdEOdA0YVERxs8+3HdVcULZKyK2hyTHx2nPWu3?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d68eab5-841d-49f6-e3b7-08debda5dfdc
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:25.7647
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p+AIxjUI0eV8eokVWrlW00Hcp/ymlhWW9TURCjboXlWV33XShqmLWIJIg1GHuKoRh1D5+14MAbf4uwX/Uam1kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101535_419699_71F612C8 
X-CRM114-Status: GOOD (  12.27  )
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

We need to be able to reference more function pointers in upcoming
patches. The struct lynx_info definitions are currently placed a bit up
in lynx-28g.c in order to be able to do that without function prototype
forward declarations, so move them downward to avoid that situation.

No functional change intended.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: adapt to lynx_28g_lane_remap_pll() prototype change in context
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 86 ++++++++++++------------
 1 file changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 5e914c810505..0076de537763 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -782,49 +782,6 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 	}
 }
 
-static const struct lynx_info lynx_info_compat = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes1 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes2 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes3 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2162a_serdes1 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
-	.first_lane = 4,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2162a_serdes2 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
 static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
@@ -1248,6 +1205,49 @@ static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
 	return 0;
 }
 
+static const struct lynx_info lynx_info_compat = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes3 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2162a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
+	.first_lane = 4,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2162a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
 static int lynx_28g_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

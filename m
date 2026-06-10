Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7997CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q98FzMB5hqlAXd+M5oKbZP34CDPVd88q/L7NmCpSUGQ=; b=ZFowm0QEJiCN8P
	Gp7Bb1GNThAMKXch2KQg0QuFBDg6hDWfNbzP9IOtK1NNvs2habrQzbC6DJ16EOX3RZAuw0fqlTUci
	H2bo1L4YoUIN64ywqNZr6ZYovYkTA5oM4QGsEHHR0OV36/25btGGr0DJfgRgwaGnksvpNOiYxOFdQ
	J4mSuMtr6Px4Y7pcEJY145JMEXtQp7tx6P1gkGnNkQp1SSVg+vqPQ6YCDlWnMLvHxWE5mz96ml9WV
	Nmg+jTpuCGHZRf1pBsaRuVvgVwiPPl6lKLsTbcSWoelHZiToZCmV1oM+GUsaMA6f/Vk+awLJhCK7Z
	zK2J4lOBwmr5qJe7N4bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKiz-000000080Tr-2IyJ;
	Wed, 10 Jun 2026 15:20:13 +0000
Received: from mail-northeuropeazon11010036.outbound.protection.outlook.com ([52.101.84.36] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKix-000000080P4-1sFK
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y9ToRVYCw771dBeRmQNhwuFVTvflHvNxSVRcvwiw5fv7zuN4J9fZxiZ+CIkb9q2Twzye9H7FEA0rjmLyT4wOrC3BEZ21cYf+FeweLTDwDOIHvW/iSizTMgOW7dTeYytNtsssdCmA/tuVxvLt3rUrecDd0EzD1+TNumB8odpoMrlDqbyHQJYcZKFGlTtrQatYUVy8d4lV1vbJqcyR+w3HmkiIw1zknOvWrlIGSNQ09uRpC9PL2OpW3Ukq92aBkS/tapk5SXwk6VbUS+VZ1mbZQna15J7TR48E3/5XRGwKzGqvOllKnb3UMIldxtc8jI7cLUjylWAhZfmj+ni9Oou9ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YeZYo8eJLV/YOQgz1lQAKAbKbNm9j8eGT+VnWAxuxec=;
 b=u5TigKzDXHtDQmRo2dlWjsSfwr74VF7KmwIgjCdt+8F+EKNusk2458kJqH6e8SeSOlY5mHewERvjmU+Hphrg/GkQqadPCmomghhKOfcSi4//LKRdj4FZG1QpKhE8+C0mfLMJSeKavuQDGEfkUwxNVsU24leobUCzf0A0rI4zIYHSdqImX9C7wTbkmd3gkWlegQLDMhxg6tTUrrp5Le9ok1v1A8ZFqSUpUhiqK4OVtOsz50gGF4QGGWWj2oCjVrj1uUupnXE4wT3a6UzhdZMMHUOOpUqpOMchbrPRnL+Ebmi3Uyq20PwHQKjF250+zxwyCjqZ2E/nEm+lZGmAzXn2mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YeZYo8eJLV/YOQgz1lQAKAbKbNm9j8eGT+VnWAxuxec=;
 b=AIWuzDTkYlG4xb9j9HiFoIixF2eW0cuFQ9Jxt90UuqM7E8QNxGJ9HFa1/ZCC4kmYIRJGowNP5O8nBZvNC/imVXzLVJYg1EkQFtRceV9NPR7G7qnI+2unRojPNp/P5eYB1uC88MgAbuqupecEXiYOsg5Eg1tXkXTL1GYnPLby9czHeHuD5FGA8dzA8hRvDmBgznPd+pnr0EqFtFTgK3FthieASO7LraBF3AkviqEphgcPnIAHndhL4GsKkqTLDah5z6SgddEq/cXN0s3y3J0s1+Cxyek5mGRtIwO1xW+LRqqyITXc4k1QojehmJelfK6LTeKN/puC/Fch8b62xKCpug==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AS4PR04MB9313.eurprd04.prod.outlook.com (2603:10a6:20b:4e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 15:20:04 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:04 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 04/16] phy: lynx-28g: move data structures to core
Date: Wed, 10 Jun 2026 18:19:40 +0300
Message-Id: <20260610151952.2141019-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0P190CA0003.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::13) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AS4PR04MB9313:EE_
X-MS-Office365-Filtering-Correlation-Id: 62a95a4e-5a78-480e-43e9-08dec703bf7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|23010399003|376014|366016|22082099003|18002099003|56012099006|3023799007|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: h/u8VYlKGh2jzqc93binnHS3DUDDWr5c8JOOG28kKRY4JXvxRR+PPuxt3kd6A7ut6wa7ukTszr6imdU0L8EMOSxLHxWtqNdShzxYEWT2b0RCWhAnKZtaW3bx3RvsyL/TG1erN0it3xeOkO9+Mw2c1KcuKu6azXSU5CL1LhEN0CGT2TdkOOWiKkYTeLNQ13xC8uKSMbeNWo9WEeYgvCOOB+77h/C4oJqnt+q8INOouSQ5IOkARaeO80Hl760gHjot8zMvnYgmJsXkzeNmEdiUEGkFfCewR9XpJFoGWX0hdcFuUwHOxwrufZPPFj5gnGXdd3VjFOgXOwwnVzwoqPgzFtDuvZWhm8JquXISHsa0rPZs5GdaKgkqGb7tn2qQINfGu1zFfAK0W0yZLzBYSGoTSugXcsdVwo8ZA+eG+YAS4E3zWbdqTdL5UTisA+EFODKxZWvwtf8mvVCO6n5zO0/9P1DfDPKy9AKadIxBmZzedMhrcUSQo9VFPZqVGDiqvKv6V1eerHbPXJPQt2N4GHT1o2JMfQf6n/Gw8MxzjNXx8u2LL1NZmzWR5qG7v5kWz29t91LHsu1XOjzYAA1r7CMbEsuY1SX9Cei6ZAWj4TnmAzLLSueEgfym0SmPm3hmtf1udQtvmVduJCDEsLruj2xaHVNmb9lqQWBiUTqJdPG2FW4uUaTvZxA+qbackImrkqoW
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(23010399003)(376014)(366016)(22082099003)(18002099003)(56012099006)(3023799007)(11063799006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IKiJ1u26yTrSJWxd5ACo3TY9oifsiC3rKijeWBEcNW6Qkh9dcpYlW2m463Ah?=
 =?us-ascii?Q?H3hiO38JSdqGwVQWvK7Yiqv6nqMGvKRiyXl65fPoo5ymD8WYqtWpFUd6eleI?=
 =?us-ascii?Q?rp0EM44ci82yEulg1MHI1+MfBO9uX0J/1PJhLjr8x9/V+QepXcCpIqBQamd+?=
 =?us-ascii?Q?KWq2UxT5LhSJU1HG0oqNOrxOp/Njh5lfKj+usi2uXFNpyamWyhYqlJg7q0Sh?=
 =?us-ascii?Q?Ktuwh3Ld/fA+pcA38GHMj3JP8+OEnRHOGOd2rbYA9VBGESnKAxglbRWKGcej?=
 =?us-ascii?Q?HthI7p7VdKw+0/L/1tsa0f7O7zks/qaHsZPhzw7yfUi1e5ZPBih/uxN/vP6R?=
 =?us-ascii?Q?2Ze7MPhpoQEX3JFOtpiYqL17vnsl4ZERrkN0z4NlNVzemWs8h48TkYXvCk9N?=
 =?us-ascii?Q?/Io9SNmxj/NfzlRLC0rXZ491rksV6PPz360PbhBzZeRR8ItdErs7Y6kA4jyc?=
 =?us-ascii?Q?kiB9xjUWD0cA1Y/3o4Vz/V23YhrvGzoX7zmQDZdb9gNuQ/QbEK0s6cerIxiS?=
 =?us-ascii?Q?+xkdoD3a1I+vqV+aLWewMCQEodQ0gGyjnIJxBD+35Bj1KzshY4OzX8YVLK4N?=
 =?us-ascii?Q?UKwRxNoN/HksetPF2TVwX9Sf5cSrsl6dlJWc6FMnkiure3P2lxKtSLopX+Ci?=
 =?us-ascii?Q?3D1uuWCyn72J5efVNIhFM/P1Z1ZEycATJITi7IT/WIJgZ7quHIiPutce7Bgn?=
 =?us-ascii?Q?Wg/GNfDE2hwk64FFxk20KpeJe9Slpzu/2DUGDZQ8OObfjKlfEy3PB73mYAyL?=
 =?us-ascii?Q?iSv1HCoFFjWpNL1HKhBDbYe4xYzVVjSZgjI7l1xn1NJQjvHlIpnXPHW2P/SJ?=
 =?us-ascii?Q?UuMlGyuKt7895pozKaRi5BHijKmPubuOTJWSERPIj6OON0ijZjIiljVtMrGS?=
 =?us-ascii?Q?ZqpuapUb72LpirIqVenDETv4vlB70PU+2fjy3lzql4nak2Bq5LIaJoFvE+u2?=
 =?us-ascii?Q?Cn5X+PxoFvXo3ezwwR5Mt8zZ6WJji3stSNwd6XYjEqF0/frpLEZw03sp+pTH?=
 =?us-ascii?Q?d0LQgkBNKQBAy8O0oUZisU94+sO+/9naQQToA8KrAs4tkYc5NbnVYgd+lUpI?=
 =?us-ascii?Q?8SNsXZl5V+yOXu7PWz5iHxeUxwB+xpBCGul6ElOC7PjXB6A+T4uJpwiwL/6v?=
 =?us-ascii?Q?axwGoUM6AeMGFakcyEk+pgnDJ1IIivQ3Uf16wVumRp/LTdGEpa8KRAt1fVQY?=
 =?us-ascii?Q?PLMOc+QQA9lfem+D/NPyLWqufuefJj/WAnGgt91K9dMw+bV3vhluK+wtPoj6?=
 =?us-ascii?Q?uAPkMLjB09QDWKSK2b3/OrAsRMA7wdClYqLg4wg9AJuzwbZWycj2jd4pyPk6?=
 =?us-ascii?Q?zfnFhP+hSTrUOxA/69qdkk5jXfMzbp+9mUr36GKC54/6++EVDfwOdh/u5Ygg?=
 =?us-ascii?Q?V4e5YJgNDZNZRKqryQmeKe8macaGoB6tM00my1O4W4uDJVq951H8sN/UYEfd?=
 =?us-ascii?Q?/ylp4psPU1wwGvg9BCr8elPoriivRL7VwM/K3hqv2FzAjslvKZPI/7DYj+65?=
 =?us-ascii?Q?sTaP4YEeDHpd6cC0C++WZuVJ0mnyUWj7QGcbG7Q4vGqP9+S732P7Ss7DBXvk?=
 =?us-ascii?Q?T5zuTZIAbnMxXeYJepNM+TC+26NIboFk7LpqbdH6gFSeBEMD4gOfLN+1tStY?=
 =?us-ascii?Q?cvkM2/yokm31W9fsor69MdzyruzsqapSCMijsFk25hnd0PortTFZRaBKXdk1?=
 =?us-ascii?Q?u0XrQTy3BtbHap6ZmyByIUs+HddQW19YsvCETh2JJj1m0PwpPZil3Bz5Nkk3?=
 =?us-ascii?Q?tqHiQVmxiQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62a95a4e-5a78-480e-43e9-08dec703bf7e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:04.6284
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UXtpnehamJRyOhfZjq6d6DaFwrCvN/KzFdEMadxth9JRRj1KholLn6XmuvAEa2nfazdv1YREibTcRjH/ll5bBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9313
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082011_504825_3EEE5B93 
X-CRM114-Status: GOOD (  21.88  )
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

The goal is to avoid duplicating the core data structures when
introducing the new lynx-10g driver.

We move the following to phy-fsl-lynx-core:
- struct lynx_28g_pll -> struct lynx_pll. This has some
  hardware-specific register fields which need to become hardware
  agnostic (the PLL register layout is different for Lynx 10G), So:
  - PLLnRSTCTL_DIS(pll->rstctl) becomes !pll->enabled
  - PLLnRSTCTL_LOCK(pll->rstctl) becomes pll->locked
  - FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1) becomes pll->frate_sel
  - FIELD_GET(PLLnCR0_REFCLK_SEL, pll->cr0) becomes pll->refclk_sel
- struct lynx_28g_lane -> struct lynx_lane
- struct lynx_28g_priv -> struct lynx_priv
  - field lane[LYNX_28G_NUM_LANE] has to be dynamically allocated. Not
    all Lynx 10G SerDes blocks have 8 lanes.
- LYNX_28G_NUM_PLL -> LYNX_NUM_PLL. This is an architectural constant
  which is the same for Lynx 10G as well.

To avoid major noise in the lynx-28g driver, we keep compatibility shims
(for now) where the old lynx_28g names are preserved, but translate to
the common data structures.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v5: none
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 135 +++++++---------------
 drivers/phy/freescale/phy-fsl-lynx-core.c |  23 ++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  64 ++++++++++
 3 files changed, 129 insertions(+), 93 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index d3f49d96340f..570fa74daba0 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,7 +12,7 @@
 #include "phy-fsl-lynx-core.h"
 
 #define LYNX_28G_NUM_LANE			8
-#define LYNX_28G_NUM_PLL			2
+#define LYNX_28G_NUM_PLL			LYNX_NUM_PLL
 
 /* SoC IP wrapper for protocol converters */
 #define PCC8					0x10a0
@@ -43,8 +43,8 @@
 
 /* Per PLL registers */
 #define PLLnRSTCTL(pll)				(0x400 + (pll) * 0x100 + 0x0)
-#define PLLnRSTCTL_DIS(rstctl)			(((rstctl) & BIT(24)) >> 24)
-#define PLLnRSTCTL_LOCK(rstctl)			(((rstctl) & BIT(23)) >> 23)
+#define PLLnRSTCTL_DIS				BIT(24)
+#define PLLnRSTCTL_LOCK				BIT(23)
 
 #define PLLnCR0(pll)				(0x400 + (pll) * 0x100 + 0x4)
 #define PLLnCR0_REFCLK_SEL			GENMASK(20, 16)
@@ -269,6 +269,17 @@
 #define LYNX_28G_LANE_STOP_SLEEP_US		100
 #define LYNX_28G_LANE_STOP_TIMEOUT_US		1000000
 
+#define lynx_28g_read				lynx_read
+#define lynx_28g_write				lynx_write
+#define lynx_28g_lane_rmw			lynx_lane_rmw
+#define lynx_28g_lane_read			lynx_lane_read
+#define lynx_28g_lane_write			lynx_lane_write
+#define lynx_28g_pll_read			lynx_pll_read
+
+#define lynx_28g_priv				lynx_priv
+#define lynx_28g_lane				lynx_lane
+#define lynx_28g_pll				lynx_pll
+
 enum lynx_28g_eq_type {
 	EQ_TYPE_NO_EQ = 0,
 	EQ_TYPE_2TAP = 1,
@@ -456,86 +467,6 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 	},
 };
 
-struct lynx_28g_priv;
-
-struct lynx_28g_pll {
-	struct lynx_28g_priv *priv;
-	u32 rstctl, cr0, cr1;
-	int id;
-	DECLARE_BITMAP(supported, LANE_MODE_MAX);
-};
-
-struct lynx_28g_lane {
-	struct lynx_28g_priv *priv;
-	struct phy *phy;
-	bool powered_up;
-	bool init;
-	unsigned int id;
-	enum lynx_lane_mode mode;
-};
-
-struct lynx_28g_priv {
-	void __iomem *base;
-	struct device *dev;
-	const struct lynx_info *info;
-	/* Serialize concurrent access to registers shared between lanes,
-	 * like PCCn
-	 */
-	spinlock_t pcc_lock;
-	struct lynx_28g_pll pll[LYNX_28G_NUM_PLL];
-	struct lynx_28g_lane lane[LYNX_28G_NUM_LANE];
-
-	struct delayed_work cdr_check;
-};
-
-static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
-			 u32 val, u32 mask)
-{
-	void __iomem *reg = priv->base + off;
-	u32 orig, tmp;
-
-	orig = ioread32(reg);
-	tmp = orig & ~mask;
-	tmp |= val;
-	iowrite32(tmp, reg);
-}
-
-#define lynx_28g_read(priv, off) \
-	ioread32((priv)->base + (off))
-#define lynx_28g_write(priv, off, val) \
-	iowrite32(val, (priv)->base + (off))
-#define lynx_28g_lane_rmw(lane, reg, val, mask)	\
-	lynx_28g_rmw((lane)->priv, reg(lane->id), val, mask)
-#define lynx_28g_lane_read(lane, reg)			\
-	ioread32((lane)->priv->base + reg((lane)->id))
-#define lynx_28g_lane_write(lane, reg, val)		\
-	iowrite32(val, (lane)->priv->base + reg((lane)->id))
-#define lynx_28g_pll_read(pll, reg)			\
-	ioread32((pll)->priv->base + reg((pll)->id))
-
-/* A lane mode is supported if we have a PLL that can provide its required
- * clock net, and if there is a protocol converter for that mode on that lane.
- */
-static bool lynx_28g_supports_lane_mode(struct lynx_28g_lane *lane,
-					enum lynx_lane_mode mode)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	int i;
-
-	if (!priv->info->lane_supports_mode(lane->id, mode))
-		return false;
-
-	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
-		if (PLLnRSTCTL_DIS(priv->pll[i].rstctl))
-			continue;
-
-		if (test_bit(mode, priv->pll[i].supported))
-			return true;
-	}
-
-	return false;
-}
-
 static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 					     enum lynx_lane_mode mode)
 {
@@ -545,7 +476,7 @@ static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
 		pll = &priv->pll[i];
 
-		if (PLLnRSTCTL_DIS(pll->rstctl))
+		if (!pll->enabled)
 			continue;
 
 		if (test_bit(mode, pll->supported))
@@ -553,7 +484,7 @@ static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 	}
 
 	/* no pll supports requested mode, either caller forgot to check
-	 * lynx_28g_supports_lane_mode, or this is a bug.
+	 * lynx_lane_supports_mode(), or this is a bug.
 	 */
 	dev_WARN_ONCE(priv->dev, 1, "no pll for lane mode %s\n",
 		      lynx_lane_mode_str(mode));
@@ -564,7 +495,7 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    enum lynx_lane_mode lane_mode)
 {
-	switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
+	switch (pll->frate_sel) {
 	case PLLnCR1_FRATE_5G_10GVCO:
 	case PLLnCR1_FRATE_5G_25GVCO:
 		switch (lane_mode) {
@@ -879,27 +810,33 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 
 static const struct lynx_info lynx_info_compat = {
 	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes1 = {
 	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes2 = {
 	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2160a_serdes3 = {
 	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes1 = {
 	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
 	.first_lane = 4,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static const struct lynx_info lynx_info_lx2162a_serdes2 = {
 	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
 };
 
 static int lynx_pccr_read(struct lynx_28g_lane *lane, enum lynx_lane_mode mode,
@@ -1168,7 +1105,7 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 		return -EOPNOTSUPP;
 
 	lane_mode = phy_interface_to_lane_mode(submode);
-	if (!lynx_28g_supports_lane_mode(lane, lane_mode))
+	if (!lynx_lane_supports_mode(lane, lane_mode))
 		return -EOPNOTSUPP;
 
 	if (lane_mode == lane->mode)
@@ -1210,7 +1147,7 @@ static int lynx_28g_validate(struct phy *phy, enum phy_mode mode, int submode,
 		return -EOPNOTSUPP;
 
 	lane_mode = phy_interface_to_lane_mode(submode);
-	if (!lynx_28g_supports_lane_mode(lane, lane_mode))
+	if (!lynx_lane_supports_mode(lane, lane_mode))
 		return -EOPNOTSUPP;
 
 	return 0;
@@ -1262,6 +1199,7 @@ static const struct phy_ops lynx_28g_ops = {
 static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 {
 	struct lynx_28g_pll *pll;
+	u32 val;
 	int i;
 
 	for (i = 0; i < LYNX_28G_NUM_PLL; i++) {
@@ -1269,14 +1207,20 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 		pll->priv = priv;
 		pll->id = i;
 
-		pll->rstctl = lynx_28g_pll_read(pll, PLLnRSTCTL);
-		pll->cr0 = lynx_28g_pll_read(pll, PLLnCR0);
-		pll->cr1 = lynx_28g_pll_read(pll, PLLnCR1);
+		val = lynx_28g_pll_read(pll, PLLnRSTCTL);
+		pll->enabled = !(val & PLLnRSTCTL_DIS);
+		pll->locked = !!(val & PLLnRSTCTL_LOCK);
 
-		if (PLLnRSTCTL_DIS(pll->rstctl))
+		val = lynx_28g_pll_read(pll, PLLnCR0);
+		pll->refclk_sel = FIELD_GET(PLLnCR0_REFCLK_SEL, val);
+
+		val = lynx_28g_pll_read(pll, PLLnCR1);
+		pll->frate_sel = FIELD_GET(PLLnCR1_FRATE_SEL, val);
+
+		if (!pll->enabled)
 			continue;
 
-		switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
+		switch (pll->frate_sel) {
 		case PLLnCR1_FRATE_5G_10GVCO:
 		case PLLnCR1_FRATE_5G_25GVCO:
 			/* 5GHz clock net */
@@ -1440,6 +1384,11 @@ static int lynx_28g_probe(struct platform_device *pdev)
 	if (priv->info == &lynx_info_compat)
 		dev_warn(dev, "Please update device tree to use per-device compatible strings\n");
 
+	priv->lane = devm_kcalloc(dev, priv->info->num_lanes,
+				  sizeof(*priv->lane), GFP_KERNEL);
+	if (!priv->lane)
+		return -ENOMEM;
+
 	priv->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index d56f189c162d..de45b14d3fb6 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -40,5 +40,28 @@ enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 }
 EXPORT_SYMBOL_NS_GPL(phy_interface_to_lane_mode, "PHY_FSL_LYNX");
 
+/* A lane mode is supported if we have a PLL that can provide its required
+ * clock net, and if there is a protocol converter for that mode on that lane.
+ */
+bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
+{
+	struct lynx_priv *priv = lane->priv;
+	int i;
+
+	if (!priv->info->lane_supports_mode(lane->id, mode))
+		return false;
+
+	for (i = 0; i < LYNX_NUM_PLL; i++) {
+		if (!priv->pll[i].enabled)
+			continue;
+
+		if (test_bit(mode, priv->pll[i].supported))
+			return true;
+	}
+
+	return false;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_lane_supports_mode, "PHY_FSL_LYNX");
+
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Freescale Lynx SerDes core functionality");
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index fe15986482b0..f0cb3e805235 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -7,18 +7,82 @@
 #include <linux/phy.h>
 #include <soc/fsl/phy-fsl-lynx.h>
 
+#define LYNX_NUM_PLL				2
+
 struct lynx_pccr {
 	int offset;
 	int width;
 	int shift;
 };
 
+struct lynx_priv;
+
+struct lynx_pll {
+	struct lynx_priv *priv;
+	int id;
+	int refclk_sel;
+	int frate_sel;
+	bool enabled;
+	bool locked;
+	DECLARE_BITMAP(supported, LANE_MODE_MAX);
+};
+
+struct lynx_lane {
+	struct lynx_priv *priv;
+	struct phy *phy;
+	bool powered_up;
+	bool init;
+	unsigned int id;
+	enum lynx_lane_mode mode;
+};
+
 struct lynx_info {
 	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
 	int first_lane;
+	int num_lanes;
 };
 
+struct lynx_priv {
+	void __iomem *base;
+	struct device *dev;
+	const struct lynx_info *info;
+	/* Serialize concurrent access to registers shared between lanes,
+	 * like PCCn
+	 */
+	spinlock_t pcc_lock;
+	struct lynx_pll pll[LYNX_NUM_PLL];
+	struct lynx_lane *lane;
+
+	struct delayed_work cdr_check;
+};
+
+static inline void lynx_rmw(struct lynx_priv *priv, unsigned long off, u32 val,
+			    u32 mask)
+{
+	void __iomem *reg = priv->base + off;
+	u32 orig, tmp;
+
+	orig = ioread32(reg);
+	tmp = orig & ~mask;
+	tmp |= val;
+	iowrite32(tmp, reg);
+}
+
+#define lynx_read(priv, off) \
+	ioread32((priv)->base + (off))
+#define lynx_write(priv, off, val) \
+	iowrite32(val, (priv)->base + (off))
+#define lynx_lane_rmw(lane, reg, val, mask)	\
+	lynx_rmw((lane)->priv, reg(lane->id), val, mask)
+#define lynx_lane_read(lane, reg)			\
+	ioread32((lane)->priv->base + reg((lane)->id))
+#define lynx_lane_write(lane, reg, val)		\
+	iowrite32(val, (lane)->priv->base + reg((lane)->id))
+#define lynx_pll_read(pll, reg)			\
+	ioread32((pll)->priv->base + reg((pll)->id))
+
 const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
+bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
 
 #endif
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

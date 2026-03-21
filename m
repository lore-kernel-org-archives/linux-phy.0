Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7183A1099B58
	for <linux-phy@archiver.kernel.org>; Sat, 21 Mar 2026 01:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38eXCLbMVUWzt+Y+HKuw4U0X0UFxChZU9/jHPBwoe/k=; b=Mb+YJf0jpVzEVn
	tMbtAMo7w6MIaHJpgd7xslaAtjvx3BKid7jvfk6BmFCGPFCAIt7eZqlTSnklAl1V5MKImqKJJZvj+
	FLU0RxXPVIVFg0qNaVnO2Xcbk5ucRWlHuWL+Uyt4qZfgElVd4hnoNuX7QTvmCcBdNJC/xk+/0LKcz
	v5pn6sS4HHj2R7M1gENBSlEVOndtIQvrYX6WWos4qoBqO8R0qGwjoCR41zK9/xXX1j/V+AmAzm3Zu
	GiN/x7uCGv0JzHN0mLBl3Za9kIOnSRSD4yAcLNEtSvg91EYMGoZUVXwiyyK/sdDkx1iTlRt4n8mN/
	JC18P7rwnDyj+E3rABJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3kvm-0000000DrbT-0hwq;
	Sat, 21 Mar 2026 01:15:10 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3kvi-0000000DrYN-0LN2
	for linux-phy@lists.infradead.org;
	Sat, 21 Mar 2026 01:15:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x/v+edMS6Xdcf7puNjveZNidS08uF0h4SGDLVaVOXQcpql20whakiCuXFELSWrv+awQ8VfRrZsXobRXzbwMEi+hjuYhaPLmuSUYhVtSTTIJk2RlWbrbz5jkkOUvSSp5FmiGszvTFdYPTjqGva/uiSDqIkfd6XdnvftqAFCL0QCAhbk6uZRkdXObRSRf2tJFgJOVMnsQsM4qHt3z3DRYAPCbNgErwQFMt+h8SXlFOymv/tquEyCNgQOIFvPwzdSDQLDdTaRAZz98Xbdb+DcQhrh4OpIWD+ctLLM9vTHOMr1cVRst3thW7vScTu3rMoYnlwC5iFk94gqVFmUcr1HSmZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UhVSyFyuaQj+Zp3dIZqZig9hyPnKxrsS/2jSpcMMgdA=;
 b=osa7tQ7lEoJGgC/HZGf7lQKKWsiua4vJ/GcxRpwUdaXqw1/qsLy0BkqkvH/Ivbw14sEJJ9N169rb7f2zZPuG+fB146zjKLpWkjy50R+xMmIQpzMpzS/uKXRw9ckm09NIRJQIJO0oTQdXeYLPr73KbfmuWRQ8910TC+QlaRNShsvDEqXDv6fQzx65cthNlf5c2vpYs27Kdhy20UG7Fa3M0G95U32O+NCjBZGJybZHo4tbXIJQl5QCN/j4a6pZ/nVx7ABOvTWUfdmfEYLUmgpA/U39SFECxeTy+iaKAe7Ap3Z8R03GwNtNEbGTClVrHauhIGoFBc0tMc5nD+9pnHdCDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UhVSyFyuaQj+Zp3dIZqZig9hyPnKxrsS/2jSpcMMgdA=;
 b=mKUwXQkWG4f4wavrf33+UIPq2frormm/i76Qk4Icv7CzcFXuO2nnQT/ozlYc6KkWnOIJtA2/I/qm0mLFujJOah6oaxgoFsm+zMWGpe8RFfkw33IlWVoqI14NKhGP4oAdTGZQlqWEuq2VLSDFemgOQZcEfS5JiKa6qgbANJ4EclDkZ8lZptksFtfqfTD+LqRxc7Kpzu9QCRvOSYo922HVCPeGsFpZO6t+0anaBQ9kP2z5gYdJybPasjEvJdKo1l4rBZ4y/veyL24focNh7U3T8Kt8Tzq7PYy11w5KI8fiTv/hCEpor4V2vo+tnt6yrGo4vnJeqErKRf0ieE50a8lW1w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by VE1PR04MB7360.eurprd04.prod.outlook.com (2603:10a6:800:1a3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Sat, 21 Mar
 2026 01:14:41 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9723.018; Sat, 21 Mar 2026
 01:14:42 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: netdev@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 2/3] phy: lynx-28g: truly power the lanes up or down
Date: Sat, 21 Mar 2026 03:14:50 +0200
Message-Id: <20260321011451.1557091-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260321011451.1557091-1-vladimir.oltean@nxp.com>
References: <20260321011451.1557091-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0048.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::28) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|VE1PR04MB7360:EE_
X-MS-Office365-Filtering-Correlation-Id: 13a1d344-e440-4f54-393e-08de86e73b0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|10070799003|376014|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: paS3zKaYBhzMJlWQ7KDGF6Tlx0g/Vos5xa7f35UI6j9Gs/n4RYHJmvIj4N3cDV7TYRJqc78RMCAHJDMA/y1VVbeLIvgzhf2CMFDrxAq27X0q3pZ2CVLWijc5iLdgzNaiNjHRojMuQswwCXGe+Z2zDm3/e2fw9ZmMfdhNTLxcBiiJgnod2k+0e8+xYY+2ResJ+9n+bgF9bWfUbyVDlu70RkaRjEFUlB+iCOPUQUgClcekiVFhpqZjUEnUB7uYRFYS/ZPAN/LIQyEUEjLFLV0tiY8+vNZ9CWLuTOvO/71SNcqwwML0LzPdRQbu+UEAJGvTflgwVgV7pA+VrUGYNo5QdkTQTMmN3QjzNug7hik4csnQwHD4MWE0Ufj0gpmprzg7gasMX8JO58Q0ZcHr2Mg7c/lhiWaaZxogD5shMgp1QzSw428MkNEPR2Bj1CpNeCEw7nxL1Mt4sdvoeeEQvRtD4LPK7T/vm0MIWdsnklXoNUBgKI/l+78QXzsQMb+aOP79+327Wk6JPE7GZoCPp6opGp0WJrJmBMAIAoUgT6QFXaXZOWzb2rSLMwD11BxqzD3oLYwHmYI+JYQkf5qJ4YQY98S3axTGiOB/lFQinXF4fLmfdnkS+JCq/d+4G2tpB6jYYYSxdkQTkjwCjn3q68NcLasmjKQYTlmf714LJAWm+0UKHzvJvj+Bc5C5+Gp5znP6pqSXO2nRn2mUSJo6AuuUGVbS7N6rhQeok7WuuJ1HNN6P88myz8nazIPw49Ed4iGg
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(10070799003)(376014)(1800799024)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7d0N0oeASjxfzzg2798ix3N1vS5xree1HDBbEzJt6vnHYQU037dG0H+RvoU3?=
 =?us-ascii?Q?0GMIIIp4HsaAO8gGTFjiBxLoChv0po1xgyUhLVzeVEKRlz7fp7WKuCzCgRQq?=
 =?us-ascii?Q?JwpfY8HAOFv3m3Rys0On0QOBuLWEA5odjfbdiuD3NrX/dbLKTKJ4x4lp7Ei8?=
 =?us-ascii?Q?UVfm3VdE0419UHDep0YtV3R0BORkzbiEw9cF/kBpwLiCKyz5njtyXQFEqLKx?=
 =?us-ascii?Q?Rbyz4CYpObPYALdCHV+taAzFjmkMRFMHZMM+mRvhEryVAURZVR0Xpxu1gl/Z?=
 =?us-ascii?Q?/lRmLvKbaFFhZgk57O5ZiiaMOZYhp6udNRxWNHs1wLXKpXKL+qn6rkcFmqs/?=
 =?us-ascii?Q?XvXKCK/jvyWuc7IMx+lCLG4CDXqA4Awg0Kpa9SffEZR3o6dV/64DdirruEjg?=
 =?us-ascii?Q?EHMjs7cfzzjdRgnYdtNNcKmKWGCmfGv1JAOtWHF3GtRgQASo7cHRhrtJOOYp?=
 =?us-ascii?Q?wxqzg20cIqSbVp6AQfgYfyJ5e3nQnt6HDpt3YUwjRHrTyM33fpUn2nVjusbV?=
 =?us-ascii?Q?f+/+wAgBqOQSvieZ3seMq7Co9/s0r2n49v+aJM1/jz7zCUV0N2W8o04HSPh4?=
 =?us-ascii?Q?XU5rjghalpP3x9StGYuQUdaLfrtwZpqqgWDZIpae4O57W9WRGl91kdiv1uOx?=
 =?us-ascii?Q?H1enogVmG1GIjNZ/Z9vpRN2rv1+lji5h2tYREJ8e5VTlgL6Sfkbgh1Lf/nYt?=
 =?us-ascii?Q?1FkvBvAOz4Uo1Qu+GpwS8iFJI38FgLaxjE4DS/I9cgDzqqZNC6glG9bsgaSR?=
 =?us-ascii?Q?wgMPbYKkHCPgpNGIRk0jESujheB24imVi9q4jIskI8iBCpzrN5ScdHYvbrQo?=
 =?us-ascii?Q?ongiYqHWNz6El78Imb2ksBhOxRv1GcdvvxNjp6JAN4mwIn4Z3DUzEMITMFjN?=
 =?us-ascii?Q?DwJmeTJPDlO/+hfhmq/U2pxEP2X2q7ZO+klwLhxWCXKsPuKOmU21zRgkcHrH?=
 =?us-ascii?Q?Rfyvs7hlpSlxdLmzFbw24a4GQMcw3ewkLn/Xj8dyECMd6bBT9WpxjA/rN2np?=
 =?us-ascii?Q?iZKQBtqBkVMd8WVI9hKrTL5rknT/PjRdVHfCBEjJqRGBltiaAsgDBhY3LmIN?=
 =?us-ascii?Q?1fVCz+zea7UMfMMZBei1bYBvTyVQB6vBcgkKhYGq42jQ7V43I1oFEOjpljB2?=
 =?us-ascii?Q?sgZDG+3BG0mH2rAG0LZ1ABjb3Wpa/6btUQXDzRvUbPYDJ9neT8a4vZDtlfdj?=
 =?us-ascii?Q?jFpg3d8TZ6vzZVHOgKkxl+I/rUWDZq4uMQgQ5GZpWKZFi7KWGOL5rTV03na0?=
 =?us-ascii?Q?Sf9RVzfS6f2OpW2YrsLYZ/P7mJetpFp4EzU/YMavFpCsHw/+SIGnaqQkbmiU?=
 =?us-ascii?Q?hXlf0/5tsTxbiugLIQ4vObJTDJF6qw+DL9mRrZdYNY8tp7TCTXPl8ZjrD9KJ?=
 =?us-ascii?Q?K3/BUdg5bqJqbkojHkjHJogD08YS0enq7pyWc7pblmQlV4i5P8vP7NoUzQtS?=
 =?us-ascii?Q?oRd/OVG9zI1a/58mwd03mrVJwjcb9fQMF7CSFC06VpdJ4ilOaGd68mTiZFyw?=
 =?us-ascii?Q?SVqwM/EU3O0oawkpVzXKwxe3LSLlkn2Z4N+AJGK86cg6fH9HvBA31MHDZPWx?=
 =?us-ascii?Q?Iz6Sn8SrZpScf5+bJlpj9smMekQgLKH64F+KwOpcsqVxDTBU+h+Y0AC7xgqd?=
 =?us-ascii?Q?alxVXPvl0KJdR0/3/Psz8SLQeudXOx7b1BIRNOimRAekUphjxlWgSvsPGy0/?=
 =?us-ascii?Q?Nc6pn9k0Hhz/8wWC0HPUnDbmWjmpaMTKbw1mWdG4OXL/yrRPryLWIEHAHjjx?=
 =?us-ascii?Q?ZBMph6+K2UZIiasO5kexP0NjTYb52Dj0dOpoonUZ+NGyhLcalcsn?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13a1d344-e440-4f54-393e-08de86e73b0c
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2026 01:14:42.0474
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QIXF/6pqkexIuAfbvZppMw9ThA5yKqJnPlglY+aG0ZBwRWEVEhtPVyaxyXxdX3yFuym/R3prU0ZT4G8V5lnzmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7360
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_181506_125658_EF6E11B9 
X-CRM114-Status: GOOD (  25.65  )
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

The current procedure for power_off() and power_on() is the same as the
one used for major lane reconfiguration, aka halting. But this is
incorrect.

One would expect that a powered off lane causes the CDR (clock and data
recovery) loop of the link partner to lose lock onto its RX stream
(which suggests there are no longer any bit transitions => the channel
is inactive). However, it can be observed that this does not take place
(the CDR lock is still there), which means that a halted lane is not
powered off.

Implement the procedure mentioned in the block guide for powering down
a lane, and then back on. This means:

- lynx_28g_power_off() currently emits a HLT_REQ and waits for it to
  clear. Rename it to lynx_28g_lane_halt() and keep using it for
  lynx_28g_set_mode().
- lynx_28g_power_on() currently emits a RST_REQ and waits for it to
  clear. This is the reset procedure - rename it to
  lynx_28g_lane_reset(), and keep using it for lynx_28g_set_mode().

The "real" lynx_28g_power_off() should emit a STP_REQ and wait for it to
clear. And the "real" lynx_28g_power_on() should clear the DIS bit and
then perform a lane reset. Hook these methods to the phy_ops ::
power_off() and power_on() instead.

As opposed to lynx_28g_power_off() which is also directly hooked to the
PHY API, lynx_28g_lane_halt() isn't; just to lynx_28g_set_mode(), and
the call is being made in a state where we haven't yet made any change
to the lane. So it does make some limited amount of sense to code this
up such that if it fails, we make an attempt to reset the lane anyway
and let the consumer know that phy_set_mode_ext() failed.

Sort the field definitions in LNaTRSTCTL and LNaRRSTCTL in descending
order, and add new definitions for STP_REQ and DIS, previously unused.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Previously submitted as part of larger set:
https://lore.kernel.org/linux-phy/20260114152111.625350-8-vladimir.oltean@nxp.com/

Changes:
- stop propagating read_poll_timeout() error code to the new
  lynx_28g_power_off() implementation, for the same reason as the
  previous patch.
- do propagate the read_poll_timeout() error code to
  lynx_28g_lane_halt(), and make an attempt to reset the lane.
- more detailed explanation in commit message
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 103 +++++++++++++++++++----
 1 file changed, 85 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 3debf4131e0f..b056951506dc 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -70,9 +70,11 @@
 
 /* Lane a Tx Reset Control Register */
 #define LNaTRSTCTL(lane)			(0x800 + (lane) * 0x100 + 0x20)
-#define LNaTRSTCTL_HLT_REQ			BIT(27)
-#define LNaTRSTCTL_RST_DONE			BIT(30)
 #define LNaTRSTCTL_RST_REQ			BIT(31)
+#define LNaTRSTCTL_RST_DONE			BIT(30)
+#define LNaTRSTCTL_HLT_REQ			BIT(27)
+#define LNaTRSTCTL_STP_REQ			BIT(26)
+#define LNaTRSTCTL_DIS				BIT(24)
 
 /* Lane a Tx General Control Register */
 #define LNaTGCR0(lane)				(0x800 + (lane) * 0x100 + 0x24)
@@ -98,9 +100,11 @@
 
 /* Lane a Rx Reset Control Register */
 #define LNaRRSTCTL(lane)			(0x800 + (lane) * 0x100 + 0x40)
-#define LNaRRSTCTL_HLT_REQ			BIT(27)
-#define LNaRRSTCTL_RST_DONE			BIT(30)
 #define LNaRRSTCTL_RST_REQ			BIT(31)
+#define LNaRRSTCTL_RST_DONE			BIT(30)
+#define LNaRRSTCTL_HLT_REQ			BIT(27)
+#define LNaRRSTCTL_STP_REQ			BIT(26)
+#define LNaRRSTCTL_DIS				BIT(24)
 #define LNaRRSTCTL_CDR_LOCK			BIT(12)
 
 /* Lane a Rx General Control Register */
@@ -255,6 +259,9 @@
 #define LYNX_28G_LANE_RESET_SLEEP_US		100
 #define LYNX_28G_LANE_RESET_TIMEOUT_US		1000000
 
+#define LYNX_28G_LANE_STOP_SLEEP_US		100
+#define LYNX_28G_LANE_STOP_TIMEOUT_US		1000000
+
 enum lynx_28g_eq_type {
 	EQ_TYPE_NO_EQ = 0,
 	EQ_TYPE_2TAP = 1,
@@ -615,6 +622,15 @@ static bool lynx_28g_lane_halt_done(struct lynx_28g_lane *lane)
 	       !(rrstctl & LNaRRSTCTL_HLT_REQ);
 }
 
+static bool lynx_28g_lane_stop_done(struct lynx_28g_lane *lane)
+{
+	u32 trstctl = lynx_28g_lane_read(lane, LNaTRSTCTL);
+	u32 rrstctl = lynx_28g_lane_read(lane, LNaRRSTCTL);
+
+	return !(trstctl & LNaTRSTCTL_STP_REQ) &&
+	       !(rrstctl & LNaRRSTCTL_STP_REQ);
+}
+
 static bool lynx_28g_lane_reset_done(struct lynx_28g_lane *lane)
 {
 	u32 trstctl = lynx_28g_lane_read(lane, LNaTRSTCTL);
@@ -624,15 +640,13 @@ static bool lynx_28g_lane_reset_done(struct lynx_28g_lane *lane)
 	       (rrstctl & LNaRRSTCTL_RST_DONE);
 }
 
-static int lynx_28g_power_off(struct phy *phy)
+/* Halting puts the lane in a mode in which it can be reconfigured */
+static int lynx_28g_lane_halt(struct phy *phy)
 {
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
 	bool done;
 	int err;
 
-	if (!lane->powered_up)
-		return 0;
-
 	/* Issue a halt request */
 	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_HLT_REQ,
 			  LNaTRSTCTL_HLT_REQ);
@@ -649,20 +663,15 @@ static int lynx_28g_power_off(struct phy *phy)
 			'A' + lane->id, ERR_PTR(err));
 	}
 
-	lane->powered_up = false;
-
-	return 0;
+	return err;
 }
 
-static int lynx_28g_power_on(struct phy *phy)
+static int lynx_28g_lane_reset(struct phy *phy)
 {
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
 	bool done;
 	int err;
 
-	if (lane->powered_up)
-		return 0;
-
 	/* Issue a reset request on the lane */
 	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_RST_REQ,
 			  LNaTRSTCTL_RST_REQ);
@@ -679,6 +688,61 @@ static int lynx_28g_power_on(struct phy *phy)
 			'A' + lane->id, ERR_PTR(err));
 	}
 
+	return err;
+}
+
+static int lynx_28g_power_off(struct phy *phy)
+{
+	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
+	bool done;
+	int err;
+
+	if (!lane->powered_up)
+		return 0;
+
+	/* Issue a stop request */
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_STP_REQ,
+			  LNaTRSTCTL_STP_REQ);
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_STP_REQ,
+			  LNaRRSTCTL_STP_REQ);
+
+	/* Wait until the stop process is complete */
+	err = read_poll_timeout(lynx_28g_lane_stop_done, done, done,
+				LYNX_28G_LANE_STOP_SLEEP_US,
+				LYNX_28G_LANE_STOP_TIMEOUT_US,
+				false, lane);
+	if (err) {
+		dev_err(&phy->dev, "Lane %c stop failed: %pe\n",
+			'A' + lane->id, ERR_PTR(err));
+	}
+
+	/* Power down the RX and TX portions of the lane */
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, LNaRRSTCTL_DIS,
+			  LNaRRSTCTL_DIS);
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, LNaTRSTCTL_DIS,
+			  LNaTRSTCTL_DIS);
+
+	lane->powered_up = false;
+
+	return 0;
+}
+
+static int lynx_28g_power_on(struct phy *phy)
+{
+	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
+	int err;
+
+	if (lane->powered_up)
+		return 0;
+
+	/* Power up the RX and TX portions of the lane */
+	lynx_28g_lane_rmw(lane, LNaRRSTCTL, 0, LNaRRSTCTL_DIS);
+	lynx_28g_lane_rmw(lane, LNaTRSTCTL, 0, LNaTRSTCTL_DIS);
+
+	err = lynx_28g_lane_reset(phy);
+	if (err)
+		return err;
+
 	lane->powered_up = true;
 
 	return 0;
@@ -992,8 +1056,11 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	/* If the lane is powered up, put the lane into the halt state while
 	 * the reconfiguration is being done.
 	 */
-	if (powered_up)
-		lynx_28g_power_off(phy);
+	if (powered_up) {
+		err = lynx_28g_lane_halt(phy);
+		if (err)
+			goto out;
+	}
 
 	err = lynx_28g_lane_disable_pcvt(lane, lane->mode);
 	if (err)
@@ -1007,7 +1074,7 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 
 out:
 	if (powered_up)
-		lynx_28g_power_on(phy);
+		lynx_28g_lane_reset(phy);
 
 	return err;
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

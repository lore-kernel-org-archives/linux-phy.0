Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 644F7D0E6CB
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vgA86qPNQn21LlSJ3+N6hnLRBUX/qAG5wkZKkYxBo8=; b=VBFlpTJrQoFsZ2
	tId3WqalTWpdN7uSIuN+UfKwKXessMdGwOX9x6aNk3/MjjukLhJEWrHR7YBVyvg+WQ7+YIJWgxowu
	6uU49GeiG5b466VmTcfmyEZnX8Z/l9Eknc927C3TSBAZ0eakFWEe/S8EOvgN1hWK0r21sxv5VX40g
	9ecOkufsyESZBGu7TMTOGRTJPa68X/BRzvlu+WxR4/tXF539Fo6ZR+Oojf99DlsILMauEAm6aMVuz
	I5qOw/z4usN9FDKI2UTdFadZyfopwwh/H63XDrsKwP+G0QImrPyO7FTv6yyhSxrptrEQuFI7cDobp
	wNdDIvSp/TBTScp6FmpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYQ-0000000DFBn-45jr;
	Tue, 25 Nov 2025 11:49:54 +0000
Received: from mail-francecentralazon11013008.outbound.protection.outlook.com ([40.107.162.8] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYM-0000000DF3I-3MLm
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vEHkLPJEUuxNHD/oPrTtIEG1o9L7gFfWy2SevY0tXlK0xh9hiwjN+rDw3cRBGyh73nsfPw5lnhWrfGN2V5Jl1L98qmijCR6az7LdLZqgc4qpKsYElmOa7Rt9RdmVioaA6DCPfQzK0eU6pc6UcumP/fA65pzi9CTZzxnUMoo5BZ07qwz/W7aQD4LyNgR6mjEQBGqHwyyz14bVyC5fviJ0+tA7L9JnBMLgSfPQgI+TLj8hXtzxbIQn+N5rGy25ew4/OubQuJgtii6t2rAH3zOfvOLGvMB7ezzlfZNP4NJSYQPfW6LI1eA6Bfz9ga8m4aOu0ozQGqMGjRwFfKcwbl3oAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6sFwco2oDViVseGPcGRRKX5JDlVNi7+IpBLwajOf5+A=;
 b=pxwiPNxWlsstlNb3aitUaIAxxPJkqqCZmPNbx0y8ZuiIs5vcFh2nqg4MN7CnfalI4wNWlrnXHDDfVJBeAfe8scOOZhGY/18sUTODzgtnZqTrTk6oA+H7CGMFSTgJYKePYmR4DbPwtpYPcNDSzQLlCTskIP1qa+MkwJORF7lvu3N949YKYt6wMO5UuRq/qRfGwn6gFsEmdeaYePzexjeflBmkfJpciBDrjzhyjuqfys6Fmd7sUw/GGT5vIGO78hhHFKnQ5hSYf/kKFwojWetv84JSrvLnyqq/24tTVhubJdBpb/AbgGLphnZ4gPRai3Yfm3aY2c5qNE/D6IINaapgEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6sFwco2oDViVseGPcGRRKX5JDlVNi7+IpBLwajOf5+A=;
 b=mjV7oMk7zAuz/7SI97zZD8ucPpepPY0Oj5U3v634PnU0MuiP7p5VFyEbUfjFRrCnDSNzt3VDvqCoHpk65N02h7pDRV5JfALx6kYZLVTdnY2RzSC4iuiImN1FzvYAY4xasv9800cJZGA8lWuRyPuQDTz177XJZiuVAXOStBge52Yumhu+wlV1lI0C3QqLySJOq4Oesi5IqlgLl9+60Dj7hSkklkxdvJC2HIBOpK5u/YEp6566T4J8zlEedKg7V2yCVauls/ZvPfdAw8h42aC1DFlmGmc16gNVQ5JioKo/w8rihQIPFtk/yaK4xq1bz59a90NZpJM+rkkRHkwJfKFexQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:44 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:44 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 07/15] phy: lynx-28g: use FIELD_GET() and FIELD_PREP()
Date: Tue, 25 Nov 2025 13:48:39 +0200
Message-Id: <20251125114847.804961-8-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: f3549275-35e6-4297-9628-08de2c18b9c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FMrxXhoVmSsfRDmKx0Hz7VeUpzpvR+k8pMCbZKabEQx7QLTBL/TLcXi1UxMl?=
 =?us-ascii?Q?fsauGN0q+noFEW/fK47Yptb622P7y3c65V4jETueBX0kdvaI8UGyoFG/xP9r?=
 =?us-ascii?Q?H1ljuiZsLI3M0yZ250+nMNufJQvUTwMLcOFI07IT10b7OO/LJGZqPz2WUqNH?=
 =?us-ascii?Q?Yp6na8EteOIzP/fL6FLnUJL6TQ95f+YYGj32GRt+aNIBzMQqLPnkwr1UJEvj?=
 =?us-ascii?Q?XvZud4SfQZHdnIFFKxCWDShrfYJU93vDx2s/XdE4Wng+zHD8tPJ+pZ11LzB3?=
 =?us-ascii?Q?gIInWyCUIaJnSzI5y9oe3oT6QplS4tY6rjY2jHVjLwCj2UVQMhbNuLhTHr4D?=
 =?us-ascii?Q?SIjdLcFvU9gKj7WQA3j7ZvBBWxx6nyGiG5ONy9AZ9Ieep7YdQGePdcCaoCqN?=
 =?us-ascii?Q?iFp1cG0Dabgy6SHWzJXvD8S4YuRLOTRkSHTClxseFK8RhnKf5dpk7h4T13/U?=
 =?us-ascii?Q?x5qFDVuLUQRMcW09Gukq0tWR49HD1eh1loi7S8VwP1adRmgzwVjl7zA+ArnI?=
 =?us-ascii?Q?lUPRckj4XCc6u5eotlwfXzJvY9v+GNrD3fLgi+PsqnluxtH6butJY8ME2RG2?=
 =?us-ascii?Q?yAIMRzbvdEk8/eeWdKaAmdt1JzxlbaJZiW+4wqkesTNpwv2CMSqb4BysuAMJ?=
 =?us-ascii?Q?9aEpgnB05whRDSnIcSw2kMHKFoHv9glGdTx0CU2nB2aThxOsu3A8OYD/gEyd?=
 =?us-ascii?Q?o4QO/71nmZ37FffWJbvG5RG29QNila3fE9mwPekXHSaEqMdB0q0OkiX2oZvz?=
 =?us-ascii?Q?MkQ/TbF4lPxooIFhuhZLWJ3Clh+7tHoeQJ0ODwF6QqtKR+m3DDZsL6F0MdRR?=
 =?us-ascii?Q?O/UP3Ae2Fr2ssof5bUAcntbSpazAg1xbu4Vz6kV5OOTByucMn1uQ7PuF7jX8?=
 =?us-ascii?Q?hXy6GD/+uw+mlrdvjC2jwnLp4q3Wa7QdM0WT/PhqmvzPxoGuaYv414RlEakk?=
 =?us-ascii?Q?QiYXUpqi45coFJKuYVF7h2WkfcpkUwWbLf4lgysY5ytyTEdTXo89VktdmD/e?=
 =?us-ascii?Q?eYIOmlZLcib4714UB/f1HeHgxMzQ7jQPNBGe38UJxHf33p6BzH96mt/Gsvwj?=
 =?us-ascii?Q?N95yM+0S43prLgiM7hsLP476gasRLO4RsOw0vi4A4EphLA0g+V3SrwNzCQMS?=
 =?us-ascii?Q?rZz5t3URwrf2R5tyPggv2K3gvVmaY/poVRMqILn17hA6KXl9XUW0QxUVrL8t?=
 =?us-ascii?Q?LHvAV0U4q4jQSQjDebMUqGWeOk9+zIYNt6gGp6k5O3oZ41NtfHgb/hDIYZDW?=
 =?us-ascii?Q?nx+u0YBz7scm8fSXSTIUuSzsI6buPM765bBu7efUyaa03JMtG/WU2BMUOd7T?=
 =?us-ascii?Q?8aBSu1pEZV9gAARXTkuRBCsZCimUR89nKT9QavKbrEawHZ6F2DJUjl43jCJp?=
 =?us-ascii?Q?eKOZJ2pktYG+xSXVmIokThtzKUMEjXclu3dlncD3Cp3L2Q8GkV5Q441TBZnT?=
 =?us-ascii?Q?3HjjLKTNvwVk9GjhTM+9/cn4sCofMqVn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dt6d3JVWoEyEEAlkPlRedSRpPK3UEq3i2IeOyCszS/3PWvsqZ+RpazplBwe+?=
 =?us-ascii?Q?tYRDPBtiSb0/Bf59sViRvHr7BBLPGgP91td6LFeVOGcwUnM3h+fkiQ3ZiPKl?=
 =?us-ascii?Q?/tB5Y/BViqOGFJwujOCiUw9MlF4aDxcJEdql+2/OLUEEM0saBe2PvA7inwBA?=
 =?us-ascii?Q?VqDUWUeCA4LEGRCysys6F7P7wmUfaddQJ7SHWRM7diX5jjFAYVbcvRdPqpyk?=
 =?us-ascii?Q?8bmjoqZtr/6E2zGcOxQJoHTZJObzdTttUVr44RbZ9iJDjOgm3HcrDHoA/643?=
 =?us-ascii?Q?wkXx8OgnY3hknl91cNwajNeGCF9nfqKtTx1aHjqpG+bdDNIJtZNYfnfdd2BK?=
 =?us-ascii?Q?C/OUlR86WGluQYyiETxTglZ20OI94ZDpylGlQVWrKsuNkVXMkK8Mzv9XvM6G?=
 =?us-ascii?Q?HxfCqaYLWOO1KjWH4x5mTYBIMiNmnR6Gkhsz55SEnzOSU8UUtP6iYxUb98F3?=
 =?us-ascii?Q?K1C1rI/CFZpkuN5rCfHufFC45KTzxOMolxXIoEngicivT+T6z8KgXKKsi31F?=
 =?us-ascii?Q?OiLgiXgfcI0gYbJ9ynfXfuen+VJFLts4gCbG63MQn80h6BO+94jUyi67U07D?=
 =?us-ascii?Q?KcRlA/xGcc9lN/Dnv8zxL6yCKcfJkN3QaEvgaDlplvvEFqVwpKaYUobtlsku?=
 =?us-ascii?Q?v/4Lj3vGk+7PHvHka/5/mN16GneBoGJeHJTalPSWrlCYrO+C2c54flnwQ6/P?=
 =?us-ascii?Q?vt2FQKWkVIPNiVZH5qw9cqj5OVA5c3LciUGLeWjKCQH9KFuY2hF4cYe5E35k?=
 =?us-ascii?Q?KB6/gg8UCmtA3qYzUa6xfAyXFdz+yDEQQDFH73hBjc4f9o3hP8u+uJkipVIF?=
 =?us-ascii?Q?IVnU+PBE8yrv4gRH4TPFOMSHZFG4HHItr2QpEDt3ihI3BytRpvToNCoRfQQw?=
 =?us-ascii?Q?VRf4GNTTrDuy+yDsSEcM7YPu38Kau4NGbGNXHc9wYCoHD1hturCKy4gRcobB?=
 =?us-ascii?Q?P2dl2zlFdc+TG0YTsqBpwgu3Se7r6gHLTItVHgH8dqY9OeaN6EkIzfn8OUTA?=
 =?us-ascii?Q?0Zbrv+9C+MM7H4+Cp/umL59ldTrAnjjYqqfS25zq48vH7917mDp7ZbIii1BQ?=
 =?us-ascii?Q?kGGn8hj/eA/M/5y2Roc7Li8hE11BhpjC7gWb0O1qI2puUNg/PsWQFuCnJqCP?=
 =?us-ascii?Q?EtUpQdUe5J8xnt2Pv4yMqMtPfWMo/LMS0JAxfSqdENWfxfIzDNqZYEQAp3Oh?=
 =?us-ascii?Q?KhnkYFkq8XzETq1SvInHZZ0IjstfIR3R+lHn23FU8AGsWDq1z+piQMY3qN3s?=
 =?us-ascii?Q?Iq8prgobFPhH3zFippxuY/rvS25CL3E8DHCVB/5+Pc0lq8jq+gcuBoW9mVn3?=
 =?us-ascii?Q?7sfwBYB6+IYridCp2ALC4T1dCqWjkozOG3REqQm1RSmoAuzDZ+xxaU5RLJbt?=
 =?us-ascii?Q?qaTKGH4nsxOdRYrc7zxIX5flEjP4wCw9JdzYaRudV2+hQTQH+wQU2U5hr/sq?=
 =?us-ascii?Q?PSDXtUzfs3Ec1WMGwA3kvtbhgHPGdo+etiACn3Nfs5oEAoSHGE+n+QRCoByn?=
 =?us-ascii?Q?mlgh8jxXs4uumCQOjSAP+H9+ye0tNtDX9/+hw+nwWsSJnS4RIDBLjTQtH5tu?=
 =?us-ascii?Q?9hHLI1atqQnxfBEliMlnU5UnbMhZyJ6/rYeAHqAdgZ3vTYZFcIhjYtOh9RH9?=
 =?us-ascii?Q?ridS399mgMpKYPyJ2ZY4GzM=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3549275-35e6-4297-9628-08de2c18b9c4
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:44.6042
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qXXcmh5b8mgd/NuVQVcU6KSF6Rh0Ex8czYCytY4uwT5byBEx9mY49nEwhyUCbhmB0mLQD91GtvC9IE4bvoBl5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034950_883220_D54C6A1A 
X-CRM114-Status: GOOD (  12.81  )
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

Reduce the number of bit field definitions required in this driver (in
the worst case, a read form and a write form), by defining just the
mask, and using the FIELD_GET() and FIELD_PREP() API from
<linux/bitfield.h> with that.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v5: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 107 ++++++++++++-----------
 1 file changed, 57 insertions(+), 50 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 219cfeacc565..439fcd6bdc1c 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 /* Copyright (c) 2021-2022 NXP. */
 
+#include <linux/bitfield.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/phy.h>
@@ -29,26 +30,26 @@
 #define PLLnRSTCTL_LOCK(rstctl)			(((rstctl) & BIT(23)) >> 23)
 
 #define PLLnCR0(pll)				(0x400 + (pll) * 0x100 + 0x4)
-#define PLLnCR0_REFCLK_SEL(cr0)			(((cr0) & GENMASK(20, 16)))
+#define PLLnCR0_REFCLK_SEL			GENMASK(20, 16)
 #define PLLnCR0_REFCLK_SEL_100MHZ		0x0
-#define PLLnCR0_REFCLK_SEL_125MHZ		0x10000
-#define PLLnCR0_REFCLK_SEL_156MHZ		0x20000
-#define PLLnCR0_REFCLK_SEL_150MHZ		0x30000
-#define PLLnCR0_REFCLK_SEL_161MHZ		0x40000
+#define PLLnCR0_REFCLK_SEL_125MHZ		0x1
+#define PLLnCR0_REFCLK_SEL_156MHZ		0x2
+#define PLLnCR0_REFCLK_SEL_150MHZ		0x3
+#define PLLnCR0_REFCLK_SEL_161MHZ		0x4
 
 #define PLLnCR1(pll)				(0x400 + (pll) * 0x100 + 0x8)
-#define PLLnCR1_FRATE_SEL(cr1)			(((cr1) & GENMASK(28, 24)))
+#define PLLnCR1_FRATE_SEL			GENMASK(28, 24)
 #define PLLnCR1_FRATE_5G_10GVCO			0x0
-#define PLLnCR1_FRATE_5G_25GVCO			0x10000000
-#define PLLnCR1_FRATE_10G_20GVCO		0x6000000
+#define PLLnCR1_FRATE_5G_25GVCO			0x10
+#define PLLnCR1_FRATE_10G_20GVCO		0x6
 
 /* Per SerDes lane registers */
 /* Lane a General Control Register */
 #define LNaGCR0(lane)				(0x800 + (lane) * 0x100 + 0x0)
-#define LNaGCR0_PROTO_SEL_MSK			GENMASK(7, 3)
-#define LNaGCR0_PROTO_SEL_SGMII			0x8
-#define LNaGCR0_PROTO_SEL_XFI			0x50
-#define LNaGCR0_IF_WIDTH_MSK			GENMASK(2, 0)
+#define LNaGCR0_PROTO_SEL			GENMASK(7, 3)
+#define LNaGCR0_PROTO_SEL_SGMII			0x1
+#define LNaGCR0_PROTO_SEL_XFI			0xa
+#define LNaGCR0_IF_WIDTH			GENMASK(2, 0)
 #define LNaGCR0_IF_WIDTH_10_BIT			0x0
 #define LNaGCR0_IF_WIDTH_20_BIT			0x2
 
@@ -60,13 +61,13 @@
 
 /* Lane a Tx General Control Register */
 #define LNaTGCR0(lane)				(0x800 + (lane) * 0x100 + 0x24)
+#define LNaTGCR0_USE_PLL			BIT(28)
 #define LNaTGCR0_USE_PLLF			0x0
-#define LNaTGCR0_USE_PLLS			BIT(28)
-#define LNaTGCR0_USE_PLL_MSK			BIT(28)
+#define LNaTGCR0_USE_PLLS			0x1
+#define LNaTGCR0_N_RATE				GENMASK(26, 24)
 #define LNaTGCR0_N_RATE_FULL			0x0
-#define LNaTGCR0_N_RATE_HALF			0x1000000
-#define LNaTGCR0_N_RATE_QUARTER			0x2000000
-#define LNaTGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaTGCR0_N_RATE_HALF			0x1
+#define LNaTGCR0_N_RATE_QUARTER			0x2
 
 #define LNaTECR0(lane)				(0x800 + (lane) * 0x100 + 0x30)
 
@@ -79,14 +80,13 @@
 
 /* Lane a Rx General Control Register */
 #define LNaRGCR0(lane)				(0x800 + (lane) * 0x100 + 0x44)
+#define LNaRGCR0_USE_PLL			BIT(28)
 #define LNaRGCR0_USE_PLLF			0x0
-#define LNaRGCR0_USE_PLLS			BIT(28)
-#define LNaRGCR0_USE_PLL_MSK			BIT(28)
-#define LNaRGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaRGCR0_USE_PLLS			0x1
+#define LNaRGCR0_N_RATE				GENMASK(26, 24)
 #define LNaRGCR0_N_RATE_FULL			0x0
-#define LNaRGCR0_N_RATE_HALF			0x1000000
-#define LNaRGCR0_N_RATE_QUARTER			0x2000000
-#define LNaRGCR0_N_RATE_MSK			GENMASK(26, 24)
+#define LNaRGCR0_N_RATE_HALF			0x1
+#define LNaRGCR0_N_RATE_QUARTER			0x2
 
 #define LNaRGCR1(lane)				(0x800 + (lane) * 0x100 + 0x48)
 
@@ -97,13 +97,12 @@
 #define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
 
 #define LNaPSS(lane)				(0x1000 + (lane) * 0x4)
-#define LNaPSS_TYPE(pss)			(((pss) & GENMASK(30, 24)) >> 24)
+#define LNaPSS_TYPE				GENMASK(30, 24)
 #define LNaPSS_TYPE_SGMII			0x4
 #define LNaPSS_TYPE_XFI				0x28
 
 #define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
 #define SGMIIaCR1_SGPCS_EN			BIT(11)
-#define SGMIIaCR1_SGPCS_MSK			BIT(11)
 
 struct lynx_28g_priv;
 
@@ -197,18 +196,18 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
 				    phy_interface_t intf)
 {
-	switch (PLLnCR1_FRATE_SEL(pll->cr1)) {
+	switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
 	case PLLnCR1_FRATE_5G_10GVCO:
 	case PLLnCR1_FRATE_5G_25GVCO:
 		switch (intf) {
 		case PHY_INTERFACE_MODE_SGMII:
 		case PHY_INTERFACE_MODE_1000BASEX:
 			lynx_28g_lane_rmw(lane, LNaTGCR0,
-					  LNaTGCR0_N_RATE_QUARTER,
-					  LNaTGCR0_N_RATE_MSK);
+					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_QUARTER),
+					  LNaTGCR0_N_RATE);
 			lynx_28g_lane_rmw(lane, LNaRGCR0,
-					  LNaRGCR0_N_RATE_QUARTER,
-					  LNaRGCR0_N_RATE_MSK);
+					  FIELD_PREP(LNaRGCR0_N_RATE, LNaRGCR0_N_RATE_QUARTER),
+					  LNaRGCR0_N_RATE);
 			break;
 		default:
 			break;
@@ -218,10 +217,12 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		switch (intf) {
 		case PHY_INTERFACE_MODE_10GBASER:
 		case PHY_INTERFACE_MODE_USXGMII:
-			lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_N_RATE_FULL,
-					  LNaTGCR0_N_RATE_MSK);
-			lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_N_RATE_FULL,
-					  LNaRGCR0_N_RATE_MSK);
+			lynx_28g_lane_rmw(lane, LNaTGCR0,
+					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_FULL),
+					  LNaTGCR0_N_RATE);
+			lynx_28g_lane_rmw(lane, LNaRGCR0,
+					  FIELD_PREP(LNaRGCR0_N_RATE, LNaRGCR0_N_RATE_FULL),
+					  LNaRGCR0_N_RATE);
 			break;
 		default:
 			break;
@@ -236,15 +237,19 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 				  struct lynx_28g_pll *pll)
 {
 	if (pll->id == 0) {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLF,
-				  LNaTGCR0_USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLF,
-				  LNaRGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0,
+				  FIELD_PREP(LNaTGCR0_USE_PLL, LNaTGCR0_USE_PLLF),
+				  LNaTGCR0_USE_PLL);
+		lynx_28g_lane_rmw(lane, LNaRGCR0,
+				  FIELD_PREP(LNaRGCR0_USE_PLL, LNaRGCR0_USE_PLLF),
+				  LNaRGCR0_USE_PLL);
 	} else {
-		lynx_28g_lane_rmw(lane, LNaTGCR0, LNaTGCR0_USE_PLLS,
-				  LNaTGCR0_USE_PLL_MSK);
-		lynx_28g_lane_rmw(lane, LNaRGCR0, LNaRGCR0_USE_PLLS,
-				  LNaRGCR0_USE_PLL_MSK);
+		lynx_28g_lane_rmw(lane, LNaTGCR0,
+				  FIELD_PREP(LNaTGCR0_USE_PLL, LNaTGCR0_USE_PLLS),
+				  LNaTGCR0_USE_PLL);
+		lynx_28g_lane_rmw(lane, LNaRGCR0,
+				  FIELD_PREP(LNaRGCR0_USE_PLL, LNaRGCR0_USE_PLLS),
+				  LNaRGCR0_USE_PLL);
 	}
 }
 
@@ -286,8 +291,9 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
-			  LNaGCR0_PROTO_SEL_SGMII | LNaGCR0_IF_WIDTH_10_BIT,
-			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
+			  FIELD_PREP(LNaGCR0_PROTO_SEL, LNaGCR0_PROTO_SEL_SGMII) |
+			  FIELD_PREP(LNaGCR0_IF_WIDTH, LNaGCR0_IF_WIDTH_10_BIT),
+			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_SGMII);
@@ -302,7 +308,7 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 
 	/* Enable the SGMII PCS */
 	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGMIIaCR1_SGPCS_EN,
-			  SGMIIaCR1_SGPCS_MSK);
+			  SGMIIaCR1_SGPCS_EN);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x00808006, priv->base + LNaTECR0(lane->id));
@@ -328,8 +334,9 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
-			  LNaGCR0_PROTO_SEL_XFI | LNaGCR0_IF_WIDTH_20_BIT,
-			  LNaGCR0_PROTO_SEL_MSK | LNaGCR0_IF_WIDTH_MSK);
+			  FIELD_PREP(LNaGCR0_PROTO_SEL, LNaGCR0_PROTO_SEL_XFI) |
+			  FIELD_PREP(LNaGCR0_IF_WIDTH, LNaGCR0_IF_WIDTH_20_BIT),
+			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
 
 	/* Find the PLL that works with this interface type */
 	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_10GBASER);
@@ -343,7 +350,7 @@ static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_10GBASER);
 
 	/* Disable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_MSK);
+	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_EN);
 
 	/* Configure the appropriate equalization parameters for the protocol */
 	iowrite32(0x10808307, priv->base + LNaTECR0(lane->id));
@@ -513,7 +520,7 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 		if (PLLnRSTCTL_DIS(pll->rstctl))
 			continue;
 
-		switch (PLLnCR1_FRATE_SEL(pll->cr1)) {
+		switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
 		case PLLnCR1_FRATE_5G_10GVCO:
 		case PLLnCR1_FRATE_5G_25GVCO:
 			/* 5GHz clock net */
@@ -570,7 +577,7 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 	u32 pss, protocol;
 
 	pss = lynx_28g_lane_read(lane, LNaPSS);
-	protocol = LNaPSS_TYPE(pss);
+	protocol = FIELD_GET(LNaPSS_TYPE, pss);
 	switch (protocol) {
 	case LNaPSS_TYPE_SGMII:
 		lane->interface = PHY_INTERFACE_MODE_SGMII;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

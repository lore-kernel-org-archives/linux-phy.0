Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19D7CD0E6CB
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEWnrYDiigdefV5Do5ZRIRQ2eII25E4vFWhNl/Cwszo=; b=ejf3v4IS6hjBZd
	zcBrHe5sdA/7aZaoOf4AqivR7kLx0QdLjssuX9As0bP4SI52v6TB3N+J6o1wsYb5Tk1GA3UcB6O1F
	1bniZX/iy/HTbns0BMDjbn/vYkEeS+/Nf0KUf92F1D86/NcD+jY9P/W+30ELNdtFKg+OvTXdWROU8
	gwn5S78JUJWtkuNJhTyDAsuc+eq0En7w+DHQw85MDnniVRO5Yt9hdi4joFrMonP5sl47YIi1dJdGh
	RCcUdKvEYTYAHU02nfbZHCjbrbNKfZB2C/i5EmzVpAUQaDV0uBUQdK1v5TsY+a4fuGYaRrtEQuqsa
	Jb8USXKiR+i2nS74+mXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYU-0000000DFFC-3Rxg;
	Tue, 25 Nov 2025 11:49:58 +0000
Received: from mail-francecentralazon11013068.outbound.protection.outlook.com ([40.107.162.68] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYQ-0000000DF7R-04Fv
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GoznX0wcrziO6JSvhtvQJ1AN+yjPkYKdIYSxEoVhGR/gouZ20zy1hXpl1ssJkGjYXOzUEkpBhtVglGMYAYSM78Lxm2mgfN6NfFhGAMtYdRNs2XGdYLtguAdh+IiK6CXLMAWog0nIW8NjTyY6OI23lh+sNTf2FO7C9ueN4XTolxyDKvx173dpjhpHLAWkmDsFmfkNNfM3wNuDp/N1eYJnvgo+URZr0oQte/uJwI/N6KKoqusL1XJE1iU4dWz6QL7buh3pgsOJlkYKGN1X/Lxn3TT8eJN6y0MZUgr4wENw2UBlu+CDGhRwUjnJLHHMcPnV6fAkFY9YjdLsh/Ie7y7GQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zL8Efrk5h8TnwmD2UjAJTUuW5AQ/oFcyv53e0IBSLa0=;
 b=LyGQqEspNCLW2UtNynvdKzGcRzxCjf28iGxfFse3I8F60oVCtcgljtc5zJyvWT7oNrTEDnb3xkx7aQI7ZuPWSp/oJpEmmVwtPI60Apu8r3u806gy4nFnH+0j2dhrPaW1Zk2yrz2z1Ech89dNo1x8sZ6Uz85YLD1YyhJQVL1vBQv2lcfcmLvTihbugLONHqk6dZZF1DCiAWLxdxAnM2hADwghutYAvNtWcQljlao6S5gOjhVMT6hucF8qWXbY6HNi2l/EuhpRUKZXdNcQO/O+1nUpkk69dAPtYfp5i5o4AORjv4+oz5n//lL93hxKdd36sZLLIvPSaQlmgXXFNat8Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zL8Efrk5h8TnwmD2UjAJTUuW5AQ/oFcyv53e0IBSLa0=;
 b=UzYZhA5L9CHqGaHPJfFx9JjNGc/3WaP2ySzzkHrTwawOzMAmbV4hkHBNXzefvu0/J6MavTJLuDP3s4RK7aoYycDZrKo4GBptP7Ebpt2qLFEKZyPpkbgR8lkMIDxZI6mIivBXJOncyQXCmMDfd/DMIl2NbkDmtw5wEc+4yOR6BN4BcFWTORqtsYmbQwuDU39wXDj3z1ksjL6voWvbeeqbM6s6VKd2zFxW8C+JULp41js0P5j3fddP+m6LPm51R8bwhfKJEs7hgvIQIPrAGDfxiCFPdNIws1vKwSwsyjvN2ESCKzJTyGGFWW5X84K7THjCQZ94AfqEutVg6X3LEam+gQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB9201.eurprd04.prod.outlook.com (2603:10a6:102:232::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:48 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:47 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 10/15] phy: lynx-28g: make lynx_28g_set_lane_mode() more systematic
Date: Tue, 25 Nov 2025 13:48:42 +0200
Message-Id: <20251125114847.804961-11-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB9201:EE_
X-MS-Office365-Filtering-Correlation-Id: 768a3253-9057-4b7f-2f62-08de2c18bb9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|52116014|366016|19092799006;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4Bim5wv+vC5v1COINmtQNI/84qRU+f0veNuTXorHR0Ud2yYcUkxZcKH3KrPi?=
 =?us-ascii?Q?5SByPhQs1P8FNKMqju0mnynB1h52FO3PPW0814LfFDE6remGHK8LBL8jKbff?=
 =?us-ascii?Q?3IWwEJSobJ+tpwzvP7W9EX2W7F9SQIORkbOKj6vjZQtXuh5UokcTz791DbNO?=
 =?us-ascii?Q?4BeB1Zfm6r1zoUb1VGEJCLo02gFYkd+MY1XoqphNuaCc0pmXQa7bfA8C5BzY?=
 =?us-ascii?Q?YFof71J8gro/22rG2+GhRPl6Zp3yvk3yjBWlXm0wcVfd+2/xP58cn032D7tw?=
 =?us-ascii?Q?E3IF3dvO6NBVXUieorajQYFhwSTNqQkeERqkYDxN+Ob4yR5wrlHM3s+x/ApI?=
 =?us-ascii?Q?llTEKaL6uv6P48tpLSxY38MFJS0PXwbJ0I0R6ToUIpnq6/IKICtNEjzsQYbh?=
 =?us-ascii?Q?ho2OuJaNlwWbmdbYGeqMRwVF5xDWrZC2pKLtFcEZsuanHAKpEO6Rb3PO7Hq8?=
 =?us-ascii?Q?pK3eKT2TBBWgPAC1n6tiT+/UlxIEWRp72jXnQTzIxv8dH86jujJi9rN1iret?=
 =?us-ascii?Q?vKOLWHLo3xtW+8b2SclTIkvN1z01Gxb4No5IYYJZjMW8E0mqJLKYBAWfuzBA?=
 =?us-ascii?Q?UD8KArFFN4Ksjii1QXTZZMCS5CtcAMgO7cpFgSKzasPFK53kYDTg3XgoK0fX?=
 =?us-ascii?Q?ud7BA2KTn79kTYu4SpWMSvQ+nsxsVzs+PwybMIH++WfKt4Kwz1NkcqGGC7RJ?=
 =?us-ascii?Q?ydwkbQsFN6TYKFDiB6dr3D+z1xFtnDocsuhfgVv90WkwjvC4vzDDx5OVw+R7?=
 =?us-ascii?Q?AspMt3aKepbLBij2AwVeN/aHeoySk2WxRW/dSLKSe8v/JDCgkF2uo3p5PvNG?=
 =?us-ascii?Q?kY4yjY0x5DY4MuOOz7EWl58BRgIc9bDg+aA6jBdw5s0gZr5nZoVirK2xRtHE?=
 =?us-ascii?Q?Ka89Ruc4k6OQH9dxly0zu1nT/O5iDufVc2DB/VZskQbuwPXkPUKl4qxUkgvx?=
 =?us-ascii?Q?iJJ5DOmdb+k6m5Nv6rE2FnTfZj0Hza8eHHVWvu+SQVrsVDAi68WG+TD8W5WY?=
 =?us-ascii?Q?pJ6T6UA46CtXeS2LsD3zMxiEcSowvgAJVJ9kt0M7IGiDUIBq2vUerUcf/lYm?=
 =?us-ascii?Q?FxVHMuXbPvrXLGgKyFh/kNMtiASvuW7ISMfGhgkHA/YDU5b6Z8gqX9FdCapO?=
 =?us-ascii?Q?mihNVTsndQF9W+kWPHoovME0cALi4g9KfMDjbz9VinNCC1pQ7jG3eMVp2TvJ?=
 =?us-ascii?Q?ELt4QHrzEyzgMeNT+nU5FO2KRhYFTfT9vKyH2CippRzGL1hfgUR/DkRx5XtW?=
 =?us-ascii?Q?fp2L4GBar/r8n/LJ/oN+ZsCe9M3T6rSQ715//CDkllBg1fZUDX4X4mbSspxx?=
 =?us-ascii?Q?FmJ6eR5+E4XKKDnmU2pZZLcNmALcWauoOpWpcSs9s2c9iNQePTTSCL3AI7k8?=
 =?us-ascii?Q?xaCX/guKjI/Gl9fETkKi/d9JcZmRyPE+PW82G+iTYQwWUptLWauxIIQE/cqk?=
 =?us-ascii?Q?5t1LXfiqEXbZHvXmzRbbkYWhEwaUDYhl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(52116014)(366016)(19092799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nF/IOPv6WZCMTfPZasFwDpjY+/tJIyVkvfEsbYwTa6AxRb/UyqUoAn1qnAEY?=
 =?us-ascii?Q?plxXjLw19eo18Xrp5z07SDUO5cPOWnnZ8oKZaqk6slkL0rnL6fc4BeEVxiEW?=
 =?us-ascii?Q?2PZ74Y84oIdc36Q+zZsLdB5CtHGDtf0umrGW2cxSvpsUq1oQLfQhAF/MK2il?=
 =?us-ascii?Q?LbDWIXUC4T7+GsHNHsgF/j51mlUwPTzBof0lfQOj84wE7nP0M7LpnDHKlJQV?=
 =?us-ascii?Q?nEajNT23CELIs5HD9NtiZLrBhHAKh8YJmCnV52yQtTdR+uqwqAdjXMgJdRs8?=
 =?us-ascii?Q?NOnF6UP23qYo+vjDYWI0C1njhQqWsp1Piy93bsDm5vRtAzZWkRfG7I1Eh1Hl?=
 =?us-ascii?Q?LBJl4ZTLtmxpXa2iXis2U+M4b9zwT9qWc9o5/J+f8L6kYleY5xnqlt6iohg2?=
 =?us-ascii?Q?GUGLQHplNOW30aZHyx358WysUCSAGE8xTPgfrEJJalDbBpLo8oTjglDakFsS?=
 =?us-ascii?Q?TzqUtYFUmgn+/Yx4akf4WFK1MDA4s1IBi7VTeQ/fReFnU9dVxF9FFVc5d+eu?=
 =?us-ascii?Q?DUmBO5d9PgYNwUTgMu2dwp/7A6npSbvRH6V/LI/+ZMrXFVJldHigylHb1TDY?=
 =?us-ascii?Q?ED+AEKZi59Uc0ajlGEjXrpUQQV8R0GibBzcoIG4LzR8X7jeMgzOpfWdRP2m7?=
 =?us-ascii?Q?D4w8QEg5+yk9vb4Pih767stPhFcqzaTCv4SeIqN3bUQTdlGU+vqA6RGVdfoh?=
 =?us-ascii?Q?s1v1rFRE9lP7MfklRmT15+a0+J+DG/EKSRljWRMtfvA4EQOzTW6CoDuuq38N?=
 =?us-ascii?Q?I5D5pph5ces2PRm39dMRewvf0fNQF7LtfcsK3/1E5Cl6UmUxcgjjKOYwxbvk?=
 =?us-ascii?Q?LcsPocCybfilputtykjJZooQevZ0KSPKIZP7GearyB37Rdfo4UOWoxWByIaP?=
 =?us-ascii?Q?jUrvZoPl5lwciD2o5u/Es9fMgQjHSfpA5QOwFHXwrnrS3gZeNzNmWV4k9tzS?=
 =?us-ascii?Q?m69C4QKqUIUXN8d2uv9F5bhDqcdnqOua2BcV0NJd1k0El6NyzXkdJ5jrAuny?=
 =?us-ascii?Q?haM4zf36CUyNVUoppmgMspTp0UuQ0U/cw9NfvaljvTB8+Fc6kBuAqZ9mtrWX?=
 =?us-ascii?Q?xz2CnFo8FA7rq6wSLrxR9VdfbPybsRAbWPOmfMGk+im/BCpDC/QT2GyYm0OT?=
 =?us-ascii?Q?6088tyQpgiXQHKPvpLoZMmTOZ9PMCvFUswCMkcKty5ApY6mTGUWzhFSO4saq?=
 =?us-ascii?Q?Gu+VHbh6dSEW68sBRc3b/ukcnGGl70f6gRhdOmvDV3th205I7MnvQ1Gb8Y1l?=
 =?us-ascii?Q?60rrq2dbM9Zi7WIOFiyBbQqZkvRMenjlGI2Brks/6GqACoZMZTXH4DWrEltW?=
 =?us-ascii?Q?/aPFjjbfmLmcDOelZltnGf9N7mGArQBcEr4gu5D3psaMxJkM8BxQlLz+vWjc?=
 =?us-ascii?Q?l5oWtWYdRCCU9JWegmJn8Cdj5DuBrQ7IpW4kjTO82BJAeBlsiuHVU9VtANik?=
 =?us-ascii?Q?K9GQJsOXh/Glt3RoHyhq6yJS3NRgwo9d0MrpWnBrd7CEA8jeYjf6IGVg6enI?=
 =?us-ascii?Q?hNl7VUaFzEogHhyV38811agdrF6W7D2FHt9ziGMaQ1fxwQ0276SgjnhSXq0y?=
 =?us-ascii?Q?/ArE8j9a2sTjL7iLIYXcxTOhBIZ+dHNh0q75HdXp83zPxdC61QvFcYNbfTpO?=
 =?us-ascii?Q?0Nuqd78ETucnHijobgjL0es=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 768a3253-9057-4b7f-2f62-08de2c18bb9a
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:47.3682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yX/dqWXS4ibADCn6yu8zG3qkwFl/WIeJRU9Fd/lYm1bME4aiKnAUIC2HCvERyXyxPsngL/34z/AWXDYTE84+Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034954_218078_960E099D 
X-CRM114-Status: GOOD (  11.73  )
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

The current approach of transitioning from one SerDes protocol to
another in lynx_28g_set_lane_mode() is too poetic.

Because the driver only supports 1GbE and 10GbE, it only modifies those
registers which it knows are different between these two modes. However,
that is hardly extensible for 25GbE, 40GbE, backplane modes, etc.

We need something more systematic to make sure that all lane and
protocol converter registers are written to consistent values, no matter
what was the source lane mode.

For that, we need to introduce tables with register field values, for
each supported lane mode.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v5: none
v1->v2: fix LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH access by using
        FIELD_PREP()

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 659 +++++++++++++++++------
 1 file changed, 496 insertions(+), 163 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 5692ed8fc65f..c4bfa0ce7726 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,32 +12,32 @@
 #define LYNX_28G_NUM_LANE			8
 #define LYNX_28G_NUM_PLL			2
 
-#define LNa_PCC_OFFSET(lane)			(4 * (LYNX_28G_NUM_LANE - (lane->id) - 1))
-
-/* General registers per SerDes block */
+/* SoC IP wrapper for protocol converters */
 #define PCC8					0x10a0
-#define PCC8_SGMIInCFG(lane, x)			(((x) & GENMASK(2, 0)) << LNa_PCC_OFFSET(lane))
-#define PCC8_SGMIInCFG_EN(lane)			PCC8_SGMIInCFG(lane, 1)
-#define PCC8_SGMIInCFG_MSK(lane)		PCC8_SGMIInCFG(lane, GENMASK(2, 0))
-#define PCC8_SGMIIn_KX(lane, x)			((((x) << 3) & BIT(3)) << LNa_PCC_OFFSET(lane))
-#define PCC8_SGMIIn_KX_MSK(lane)		PCC8_SGMIIn_KX(lane, 1)
-#define PCC8_MSK(lane)				PCC8_SGMIInCFG_MSK(lane) | \
-						PCC8_SGMIIn_KX_MSK(lane)
+#define PCC8_SGMIIa_KX				BIT(3)
+#define PCC8_SGMIIa_CFG				BIT(0)
 
 #define PCCC					0x10b0
-#define PCCC_SXGMIInCFG(lane, x)		(((x) & GENMASK(2, 0)) << LNa_PCC_OFFSET(lane))
-#define PCCC_SXGMIInCFG_EN(lane)		PCCC_SXGMIInCFG(lane, 1)
-#define PCCC_SXGMIInCFG_MSK(lane)		PCCC_SXGMIInCFG(lane, GENMASK(2, 0))
-#define PCCC_SXGMIInCFG_XFI(lane, x)		((((x) << 3) & BIT(3)) << LNa_PCC_OFFSET(lane))
-#define PCCC_SXGMIInCFG_XFI_MSK(lane)		PCCC_SXGMIInCFG_XFI(lane, 1)
-#define PCCC_MSK(lane)				PCCC_SXGMIInCFG_MSK(lane) | \
-						PCCC_SXGMIInCFG_XFI_MSK(lane)
+#define PCCC_SXGMIIn_XFI			BIT(3)
+#define PCCC_SXGMIIn_CFG			BIT(0)
 
 #define PCCD					0x10b4
-#define PCCD_E25GnCFG(lane, x)			(((x) & GENMASK(2, 0)) << LNa_PCCD_OFFSET(lane))
-#define PCCD_E25GnCFG_EN(lane)			PCCD_E25GnCFG(lane, 1)
-#define PCCD_E25GnCFG_MSK(lane)			PCCD_E25GnCFG(lane, GENMASK(2, 0))
-#define PCCD_MSK(lane)				PCCD_E25GnCFG_MSK(lane)
+#define PCCD_E25Gn_CFG				BIT(0)
+
+#define PCCE					0x10b8
+#define PCCE_E40Gn_LRV				BIT(3)
+#define PCCE_E40Gn_CFG				BIT(0)
+#define PCCE_E50Gn_LRV				BIT(3)
+#define PCCE_E50GnCFG				BIT(0)
+#define PCCE_E100Gn_LRV				BIT(3)
+#define PCCE_E100Gn_CFG				BIT(0)
+
+#define SGMII_CFG(id)				(28 - (id) * 4) /* Offset into PCC8 */
+#define SXGMII_CFG(id)				(28 - (id) * 4) /* Offset into PCCC */
+#define E25G_CFG(id)				(28 - (id) * 4) /* Offset into PCCD */
+#define E40G_CFG(id)				(28 - (id) * 4) /* Offset into PCCE */
+#define E50G_CFG(id)				(20 - (id) * 4) /* Offset into PCCE */
+#define E100G_CFG(id)				(12 - (id) * 4) /* Offset into PCCE */
 
 /* Per PLL registers */
 #define PLLnRSTCTL(pll)				(0x400 + (pll) * 0x100 + 0x0)
@@ -92,6 +92,10 @@
 #define LNaTECR0_EQ_POST1Q			GENMASK(12, 8)
 #define LNaTECR0_EQ_AMP_RED			GENMASK(5, 0)
 
+#define LNaTECR1(lane)				(0x800 + (lane) * 0x100 + 0x34)
+#define LNaTECR1_EQ_ADPT_EQ_DRVR_DIS		BIT(31)
+#define LNaTECR1_EQ_ADPT_EQ			GENMASK(29, 24)
+
 /* Lane a Rx Reset Control Register */
 #define LNaRRSTCTL(lane)			(0x800 + (lane) * 0x100 + 0x40)
 #define LNaRRSTCTL_HLT_REQ			BIT(27)
@@ -147,6 +151,21 @@
 #define LNaRECR2_EQ_BIN_DATA_AVG_TC		GENMASK(5, 4)
 #define LNaRECR2_SPARE_IN			GENMASK(1, 0)
 
+#define LNaRECR3(lane)				(0x800 + (lane) * 0x100 + 0x5c)
+#define LNaRECR3_EQ_SNAP_START			BIT(31)
+#define LNaRECR3_EQ_SNAP_DONE			BIT(30)
+#define LNaRECR3_EQ_GAINK2_HF_STAT		GENMASK(28, 24)
+#define LNaRECR3_EQ_GAINK3_MF_STAT		GENMASK(20, 16)
+#define LNaRECR3_SPARE_OUT			GENMASK(13, 12)
+#define LNaRECR3_EQ_GAINK4_LF_STAT		GENMASK(4, 0)
+
+#define LNaRECR4(lane)				(0x800 + (lane) * 0x100 + 0x60)
+#define LNaRECR4_BLW_STAT			GENMASK(28, 24)
+#define LNaRECR4_EQ_OFFSET_STAT			GENMASK(21, 16)
+#define LNaRECR4_EQ_BIN_DATA_SEL		GENMASK(15, 12)
+#define LNaRECR4_EQ_BIN_DATA			GENMASK(8, 0) /* bit 9 is reserved */
+#define LNaRECR4_EQ_BIN_DATA_SGN		BIT(8)
+
 #define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
 #define LNaRSCCR0_SMP_OFF_EN			BIT(31)
 #define LNaRSCCR0_SMP_OFF_OV_EN			BIT(30)
@@ -161,20 +180,199 @@
 #define LNaRSCCR0_SMP_AUTOZ_EG1R		GENMASK(5, 4)
 #define LNaRSCCR0_SMP_AUTOZ_EG1F		GENMASK(1, 0)
 
+#define LNaTCSR0(lane)				(0x800 + (lane) * 0x100 + 0xa0)
+#define LNaTCSR0_SD_STAT_OBS_EN			BIT(31)
+#define LNaTCSR0_SD_LPBK_SEL			GENMASK(29, 28)
+
 #define LNaPSS(lane)				(0x1000 + (lane) * 0x4)
 #define LNaPSS_TYPE				GENMASK(30, 24)
-#define LNaPSS_TYPE_SGMII			0x4
-#define LNaPSS_TYPE_XFI				0x28
+#define LNaPSS_TYPE_SGMII			(PROTO_SEL_SGMII_BASEX_KX << 2)
+#define LNaPSS_TYPE_XFI				(PROTO_SEL_XFI_10GBASER_KR_SXGMII << 2)
+#define LNaPSS_TYPE_40G				((PROTO_SEL_XFI_10GBASER_KR_SXGMII << 2) | 3)
+#define LNaPSS_TYPE_25G				(PROTO_SEL_25G_50G_100G << 2)
+#define LNaPSS_TYPE_100G			((PROTO_SEL_25G_50G_100G << 2) | 2)
 
+/* MDEV_PORT is at the same bitfield address for all protocol converters */
+#define MDEV_PORT				GENMASK(31, 27)
+
+#define SGMIIaCR0(lane)				(0x1800 + (lane) * 0x10)
 #define SGMIIaCR1(lane)				(0x1804 + (lane) * 0x10)
 #define SGMIIaCR1_SGPCS_EN			BIT(11)
 
+#define ANLTaCR0(lane)				(0x1a00 + (lane) * 0x10)
+#define ANLTaCR1(lane)				(0x1a04 + (lane) * 0x10)
+
+#define SXGMIIaCR0(lane)			(0x1a80 + (lane) * 0x10)
+#define SXGMIIaCR0_RST				BIT(31)
+#define SXGMIIaCR0_PD				BIT(30)
+
+#define SXGMIIaCR1(lane)			(0x1a84 + (lane) * 0x10)
+
+#define E25GaCR0(lane)				(0x1b00 + (lane) * 0x10)
+#define E25GaCR0_RST				BIT(31)
+#define E25GaCR0_PD				BIT(30)
+
+#define E25GaCR1(lane)				(0x1b04 + (lane) * 0x10)
+
+#define E25GaCR2(lane)				(0x1b08 + (lane) * 0x10)
+#define E25GaCR2_FEC_ENA			BIT(23)
+#define E25GaCR2_FEC_ERR_ENA			BIT(22)
+#define E25GaCR2_FEC91_ENA			BIT(20)
+
+#define E40GaCR0(pcvt)				(0x1b40 + (pcvt) * 0x20)
+#define E40GaCR1(pcvt)				(0x1b44 + (pcvt) * 0x20)
+
+#define E50GaCR1(pcvt)				(0x1b84 + (pcvt) * 0x10)
+
+#define E100GaCR1(pcvt)				(0x1c04 + (pcvt) * 0x20)
+
+#define CR(x)					((x) * 4)
+
 enum lynx_28g_eq_type {
 	EQ_TYPE_NO_EQ = 0,
 	EQ_TYPE_2TAP = 1,
 	EQ_TYPE_3TAP = 2,
 };
 
+enum lynx_28g_proto_sel {
+	PROTO_SEL_PCIE = 0,
+	PROTO_SEL_SGMII_BASEX_KX = 1,
+	PROTO_SEL_SATA = 2,
+	PROTO_SEL_XAUI = 4,
+	PROTO_SEL_XFI_10GBASER_KR_SXGMII = 0xa,
+	PROTO_SEL_25G_50G_100G = 0x1a,
+};
+
+struct lynx_28g_proto_conf {
+	/* LNaGCR0 */
+	int proto_sel;
+	int if_width;
+	/* LNaTECR0 */
+	int teq_type;
+	int sgn_preq;
+	int ratio_preq;
+	int sgn_post1q;
+	int ratio_post1q;
+	int amp_red;
+	/* LNaTECR1 */
+	int adpt_eq;
+	/* LNaRGCR1 */
+	int enter_idle_flt_sel;
+	int exit_idle_flt_sel;
+	int data_lost_th_sel;
+	/* LNaRECR0 */
+	int gk2ovd;
+	int gk3ovd;
+	int gk4ovd;
+	int gk2ovd_en;
+	int gk3ovd_en;
+	int gk4ovd_en;
+	/* LNaRECR1 ? */
+	int eq_offset_ovd;
+	int eq_offset_ovd_en;
+	/* LNaRECR2 */
+	int eq_offset_rng_dbl;
+	int eq_blw_sel;
+	int eq_boost;
+	int spare_in;
+	/* LNaRSCCR0 */
+	int smp_autoz_d1r;
+	int smp_autoz_eg1r;
+};
+
+static const struct lynx_28g_proto_conf lynx_28g_proto_conf[PHY_INTERFACE_MODE_MAX] = {
+	[PHY_INTERFACE_MODE_SGMII] = {
+		.proto_sel = LNaGCR0_PROTO_SEL_SGMII,
+		.if_width = LNaGCR0_IF_WIDTH_10_BIT,
+		.teq_type = EQ_TYPE_NO_EQ,
+		.sgn_preq = 1,
+		.ratio_preq = 0,
+		.sgn_post1q = 1,
+		.ratio_post1q = 0,
+		.amp_red = 6,
+		.adpt_eq = 48,
+		.enter_idle_flt_sel = 4,
+		.exit_idle_flt_sel = 3,
+		.data_lost_th_sel = 1,
+		.gk2ovd = 0x1f,
+		.gk3ovd = 0,
+		.gk4ovd = 0,
+		.gk2ovd_en = 1,
+		.gk3ovd_en = 1,
+		.gk4ovd_en = 0,
+		.eq_offset_ovd = 0x1f,
+		.eq_offset_ovd_en = 0,
+		.eq_offset_rng_dbl = 0,
+		.eq_blw_sel = 0,
+		.eq_boost = 0,
+		.spare_in = 0,
+		.smp_autoz_d1r = 0,
+		.smp_autoz_eg1r = 0,
+	},
+	[PHY_INTERFACE_MODE_1000BASEX] = {
+		.proto_sel = LNaGCR0_PROTO_SEL_SGMII,
+		.if_width = LNaGCR0_IF_WIDTH_10_BIT,
+		.teq_type = EQ_TYPE_NO_EQ,
+		.sgn_preq = 1,
+		.ratio_preq = 0,
+		.sgn_post1q = 1,
+		.ratio_post1q = 0,
+		.amp_red = 6,
+		.adpt_eq = 48,
+		.enter_idle_flt_sel = 4,
+		.exit_idle_flt_sel = 3,
+		.data_lost_th_sel = 1,
+		.gk2ovd = 0x1f,
+		.gk3ovd = 0,
+		.gk4ovd = 0,
+		.gk2ovd_en = 1,
+		.gk3ovd_en = 1,
+		.gk4ovd_en = 0,
+		.eq_offset_ovd = 0x1f,
+		.eq_offset_ovd_en = 0,
+		.eq_offset_rng_dbl = 0,
+		.eq_blw_sel = 0,
+		.eq_boost = 0,
+		.spare_in = 0,
+		.smp_autoz_d1r = 0,
+		.smp_autoz_eg1r = 0,
+	},
+	[PHY_INTERFACE_MODE_10GBASER] = {
+		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
+		.if_width = LNaGCR0_IF_WIDTH_20_BIT,
+		.teq_type = EQ_TYPE_2TAP,
+		.sgn_preq = 1,
+		.ratio_preq = 0,
+		.sgn_post1q = 1,
+		.ratio_post1q = 3,
+		.amp_red = 7,
+		.adpt_eq = 48,
+		.enter_idle_flt_sel = 0,
+		.exit_idle_flt_sel = 0,
+		.data_lost_th_sel = 0,
+		.gk2ovd = 0,
+		.gk3ovd = 0,
+		.gk4ovd = 0,
+		.gk2ovd_en = 0,
+		.gk3ovd_en = 0,
+		.gk4ovd_en = 0,
+		.eq_offset_ovd = 0x1f,
+		.eq_offset_ovd_en = 0,
+		.eq_offset_rng_dbl = 1,
+		.eq_blw_sel = 1,
+		.eq_boost = 0,
+		.spare_in = 0,
+		.smp_autoz_d1r = 2,
+		.smp_autoz_eg1r = 0,
+	},
+};
+
+struct lynx_pccr {
+	int offset;
+	int width;
+	int shift;
+};
+
 struct lynx_28g_priv;
 
 struct lynx_28g_pll {
@@ -218,6 +416,10 @@ static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
 	iowrite32(tmp, reg);
 }
 
+#define lynx_28g_read(priv, off) \
+	ioread32((priv)->base + (off))
+#define lynx_28g_write(priv, off, val) \
+	iowrite32(val, (priv)->base + (off))
 #define lynx_28g_lane_rmw(lane, reg, val, mask)	\
 	lynx_28g_rmw((lane)->priv, reg(lane->id), val, mask)
 #define lynx_28g_lane_read(lane, reg)			\
@@ -326,130 +528,6 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 	}
 }
 
-static void lynx_28g_cleanup_lane(struct lynx_28g_lane *lane)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-
-	/* Cleanup the protocol configuration registers of the current protocol */
-	switch (lane->interface) {
-	case PHY_INTERFACE_MODE_10GBASER:
-		/* Cleanup the protocol configuration registers */
-		lynx_28g_rmw(priv, PCCC, 0, PCCC_MSK(lane));
-		break;
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
-		/* Cleanup the protocol configuration registers */
-		lynx_28g_rmw(priv, PCC8, 0, PCC8_MSK(lane));
-
-		/* Disable the SGMII PCS */
-		lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_EN);
-
-		break;
-	default:
-		break;
-	}
-}
-
-static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	struct lynx_28g_pll *pll;
-
-	lynx_28g_cleanup_lane(lane);
-
-	/* Setup the lane to run in SGMII */
-	lynx_28g_rmw(priv, PCC8, PCC8_SGMIInCFG_EN(lane), PCC8_MSK(lane));
-
-	/* Setup the protocol select and SerDes parallel interface width */
-	lynx_28g_lane_rmw(lane, LNaGCR0,
-			  FIELD_PREP(LNaGCR0_PROTO_SEL, LNaGCR0_PROTO_SEL_SGMII) |
-			  FIELD_PREP(LNaGCR0_IF_WIDTH, LNaGCR0_IF_WIDTH_10_BIT),
-			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
-
-	/* Find the PLL that works with this interface type */
-	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_SGMII);
-	if (unlikely(pll == NULL))
-		return;
-
-	/* Switch to the PLL that works with this interface type */
-	lynx_28g_lane_set_pll(lane, pll);
-
-	/* Choose the portion of clock net to be used on this lane */
-	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_SGMII);
-
-	/* Enable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, SGMIIaCR1_SGPCS_EN,
-			  SGMIIaCR1_SGPCS_EN);
-
-	/* Configure the appropriate equalization parameters for the protocol */
-	lynx_28g_lane_write(lane, LNaTECR0,
-			    LNaTECR0_EQ_SGN_PREQ | LNaTECR0_EQ_SGN_POST1Q |
-			    FIELD_PREP(LNaTECR0_EQ_AMP_RED, 6));
-	lynx_28g_lane_write(lane, LNaRGCR1,
-			    FIELD_PREP(LNaRGCR1_ENTER_IDLE_FLT_SEL, 4) |
-			    FIELD_PREP(LNaRGCR1_EXIT_IDLE_FLT_SEL, 3) |
-			    LNaRGCR1_DATA_LOST_FLT);
-	lynx_28g_lane_write(lane, LNaRECR0,
-			    LNaRECR0_EQ_GAINK2_HF_OV_EN |
-			    FIELD_PREP(LNaRECR0_EQ_GAINK2_HF_OV, 31) |
-			    LNaRECR0_EQ_GAINK3_MF_OV_EN |
-			    FIELD_PREP(LNaRECR0_EQ_GAINK3_MF_OV, 0));
-	lynx_28g_lane_write(lane, LNaRECR1,
-			    FIELD_PREP(LNaRECR1_EQ_OFFSET_OV, 31));
-	lynx_28g_lane_write(lane, LNaRECR2, 0);
-	lynx_28g_lane_write(lane, LNaRSCCR0, 0);
-}
-
-static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
-{
-	struct lynx_28g_priv *priv = lane->priv;
-	struct lynx_28g_pll *pll;
-
-	lynx_28g_cleanup_lane(lane);
-
-	/* Enable the SXGMII lane */
-	lynx_28g_rmw(priv, PCCC, PCCC_SXGMIInCFG_EN(lane) |
-		     PCCC_SXGMIInCFG_XFI(lane, 1), PCCC_MSK(lane));
-
-	/* Setup the protocol select and SerDes parallel interface width */
-	lynx_28g_lane_rmw(lane, LNaGCR0,
-			  FIELD_PREP(LNaGCR0_PROTO_SEL, LNaGCR0_PROTO_SEL_XFI) |
-			  FIELD_PREP(LNaGCR0_IF_WIDTH, LNaGCR0_IF_WIDTH_20_BIT),
-			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
-
-	/* Find the PLL that works with this interface type */
-	pll = lynx_28g_pll_get(priv, PHY_INTERFACE_MODE_10GBASER);
-	if (unlikely(pll == NULL))
-		return;
-
-	/* Switch to the PLL that works with this interface type */
-	lynx_28g_lane_set_pll(lane, pll);
-
-	/* Choose the portion of clock net to be used on this lane */
-	lynx_28g_lane_set_nrate(lane, pll, PHY_INTERFACE_MODE_10GBASER);
-
-	/* Disable the SGMII PCS */
-	lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_EN);
-
-	/* Configure the appropriate equalization parameters for the protocol */
-	lynx_28g_lane_write(lane, LNaTECR0,
-			    FIELD_PREP(LNaTECR0_EQ_TYPE, EQ_TYPE_2TAP) |
-			    LNaTECR0_EQ_SGN_PREQ |
-			    FIELD_PREP(LNaTECR0_EQ_PREQ, 0) |
-			    LNaTECR0_EQ_SGN_POST1Q |
-			    FIELD_PREP(LNaTECR0_EQ_POST1Q, 3) |
-			    FIELD_PREP(LNaTECR0_EQ_AMP_RED, 7));
-	lynx_28g_lane_write(lane, LNaRGCR1, LNaRGCR1_IDLE_CONFIG);
-	lynx_28g_lane_write(lane, LNaRECR0, 0);
-	lynx_28g_lane_write(lane, LNaRECR1, FIELD_PREP(LNaRECR1_EQ_OFFSET_OV, 31));
-	lynx_28g_lane_write(lane, LNaRECR2,
-			    LNaRECR2_EQ_OFFSET_RNG_DBL |
-			    FIELD_PREP(LNaRECR2_EQ_BLW_SEL, 1) |
-			    FIELD_PREP(LNaRECR2_EQ_BIN_DATA_AVG_TC, 2));
-	lynx_28g_lane_write(lane, LNaRSCCR0,
-			    FIELD_PREP(LNaRSCCR0_SMP_AUTOZ_D1R, 2));
-}
-
 static int lynx_28g_power_off(struct phy *phy)
 {
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
@@ -502,6 +580,268 @@ static int lynx_28g_power_on(struct phy *phy)
 	return 0;
 }
 
+static int lynx_28g_get_pccr(phy_interface_t interface, int lane,
+			     struct lynx_pccr *pccr)
+{
+	switch (interface) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		pccr->offset = PCC8;
+		pccr->width = 4;
+		pccr->shift = SGMII_CFG(lane);
+		break;
+	case PHY_INTERFACE_MODE_10GBASER:
+		pccr->offset = PCCC;
+		pccr->width = 4;
+		pccr->shift = SXGMII_CFG(lane);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
+static int lynx_28g_get_pcvt_offset(int lane, phy_interface_t interface)
+{
+	switch (interface) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		return SGMIIaCR0(lane);
+	case PHY_INTERFACE_MODE_10GBASER:
+		return SXGMIIaCR0(lane);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static int lynx_pccr_write(struct lynx_28g_lane *lane,
+			   phy_interface_t interface, u32 val)
+{
+	struct lynx_28g_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+	u32 old, tmp, mask;
+	int err;
+
+	err = lynx_28g_get_pccr(interface, lane->id, &pccr);
+	if (err)
+		return err;
+
+	old = lynx_28g_read(priv, pccr.offset);
+	mask = GENMASK(pccr.width - 1, 0) << pccr.shift;
+	tmp = (old & ~mask) | (val << pccr.shift);
+	lynx_28g_write(priv, pccr.offset, tmp);
+
+	dev_dbg(&lane->phy->dev, "PCCR@0x%x: 0x%x -> 0x%x\n",
+		pccr.offset, old, tmp);
+
+	return 0;
+}
+
+static int lynx_pcvt_read(struct lynx_28g_lane *lane, phy_interface_t interface,
+			  int cr, u32 *val)
+{
+	struct lynx_28g_priv *priv = lane->priv;
+	int offset;
+
+	offset = lynx_28g_get_pcvt_offset(lane->id, interface);
+	if (offset < 0)
+		return offset;
+
+	*val = lynx_28g_read(priv, offset + cr);
+
+	return 0;
+}
+
+static int lynx_pcvt_write(struct lynx_28g_lane *lane, phy_interface_t interface,
+			   int cr, u32 val)
+{
+	struct lynx_28g_priv *priv = lane->priv;
+	int offset;
+
+	offset = lynx_28g_get_pcvt_offset(lane->id, interface);
+	if (offset < 0)
+		return offset;
+
+	lynx_28g_write(priv, offset + cr, val);
+
+	return 0;
+}
+
+static int lynx_pcvt_rmw(struct lynx_28g_lane *lane, phy_interface_t interface,
+			 int cr, u32 val, u32 mask)
+{
+	int err;
+	u32 tmp;
+
+	err = lynx_pcvt_read(lane, interface, cr, &tmp);
+	if (err)
+		return err;
+
+	tmp &= ~mask;
+	tmp |= val;
+
+	return lynx_pcvt_write(lane, interface, cr, tmp);
+}
+
+static void lynx_28g_lane_remap_pll(struct lynx_28g_lane *lane,
+				    phy_interface_t interface)
+{
+	struct lynx_28g_priv *priv = lane->priv;
+	struct lynx_28g_pll *pll;
+
+	/* Switch to the PLL that works with this interface type */
+	pll = lynx_28g_pll_get(priv, interface);
+	if (unlikely(pll == NULL))
+		return;
+
+	lynx_28g_lane_set_pll(lane, pll);
+
+	/* Choose the portion of clock net to be used on this lane */
+	lynx_28g_lane_set_nrate(lane, pll, interface);
+}
+
+static void lynx_28g_lane_change_proto_conf(struct lynx_28g_lane *lane,
+					    phy_interface_t interface)
+{
+	const struct lynx_28g_proto_conf *conf = &lynx_28g_proto_conf[interface];
+
+	lynx_28g_lane_rmw(lane, LNaGCR0,
+			  FIELD_PREP(LNaGCR0_PROTO_SEL, conf->proto_sel) |
+			  FIELD_PREP(LNaGCR0_IF_WIDTH, conf->if_width),
+			  LNaGCR0_PROTO_SEL | LNaGCR0_IF_WIDTH);
+
+	lynx_28g_lane_rmw(lane, LNaTECR0,
+			  FIELD_PREP(LNaTECR0_EQ_TYPE, conf->teq_type) |
+			  FIELD_PREP(LNaTECR0_EQ_SGN_PREQ, conf->sgn_preq) |
+			  FIELD_PREP(LNaTECR0_EQ_PREQ, conf->ratio_preq) |
+			  FIELD_PREP(LNaTECR0_EQ_SGN_POST1Q, conf->sgn_post1q) |
+			  FIELD_PREP(LNaTECR0_EQ_POST1Q, conf->ratio_post1q) |
+			  FIELD_PREP(LNaTECR0_EQ_AMP_RED, conf->amp_red),
+			  LNaTECR0_EQ_TYPE |
+			  LNaTECR0_EQ_SGN_PREQ |
+			  LNaTECR0_EQ_PREQ |
+			  LNaTECR0_EQ_SGN_POST1Q |
+			  LNaTECR0_EQ_POST1Q |
+			  LNaTECR0_EQ_AMP_RED);
+
+	lynx_28g_lane_rmw(lane, LNaTECR1,
+			  FIELD_PREP(LNaTECR1_EQ_ADPT_EQ, conf->adpt_eq),
+			  LNaTECR1_EQ_ADPT_EQ);
+
+	lynx_28g_lane_rmw(lane, LNaRGCR1,
+			  FIELD_PREP(LNaRGCR1_ENTER_IDLE_FLT_SEL, conf->enter_idle_flt_sel) |
+			  FIELD_PREP(LNaRGCR1_EXIT_IDLE_FLT_SEL, conf->exit_idle_flt_sel) |
+			  FIELD_PREP(LNaRGCR1_DATA_LOST_TH_SEL, conf->data_lost_th_sel),
+			  LNaRGCR1_ENTER_IDLE_FLT_SEL |
+			  LNaRGCR1_EXIT_IDLE_FLT_SEL |
+			  LNaRGCR1_DATA_LOST_TH_SEL);
+
+	lynx_28g_lane_rmw(lane, LNaRECR0,
+			  FIELD_PREP(LNaRECR0_EQ_GAINK2_HF_OV_EN, conf->gk2ovd_en) |
+			  FIELD_PREP(LNaRECR0_EQ_GAINK3_MF_OV_EN, conf->gk3ovd_en) |
+			  FIELD_PREP(LNaRECR0_EQ_GAINK4_LF_OV_EN, conf->gk4ovd_en) |
+			  FIELD_PREP(LNaRECR0_EQ_GAINK2_HF_OV, conf->gk2ovd) |
+			  FIELD_PREP(LNaRECR0_EQ_GAINK3_MF_OV, conf->gk3ovd) |
+			  FIELD_PREP(LNaRECR0_EQ_GAINK4_LF_OV, conf->gk4ovd),
+			  LNaRECR0_EQ_GAINK2_HF_OV |
+			  LNaRECR0_EQ_GAINK3_MF_OV |
+			  LNaRECR0_EQ_GAINK4_LF_OV |
+			  LNaRECR0_EQ_GAINK2_HF_OV_EN |
+			  LNaRECR0_EQ_GAINK3_MF_OV_EN |
+			  LNaRECR0_EQ_GAINK4_LF_OV_EN);
+
+	lynx_28g_lane_rmw(lane, LNaRECR1,
+			  FIELD_PREP(LNaRECR1_EQ_OFFSET_OV, conf->eq_offset_ovd) |
+			  FIELD_PREP(LNaRECR1_EQ_OFFSET_OV_EN, conf->eq_offset_ovd_en),
+			  LNaRECR1_EQ_OFFSET_OV |
+			  LNaRECR1_EQ_OFFSET_OV_EN);
+
+	lynx_28g_lane_rmw(lane, LNaRECR2,
+			  FIELD_PREP(LNaRECR2_EQ_OFFSET_RNG_DBL, conf->eq_offset_rng_dbl) |
+			  FIELD_PREP(LNaRECR2_EQ_BLW_SEL, conf->eq_blw_sel) |
+			  FIELD_PREP(LNaRECR2_EQ_BOOST, conf->eq_boost) |
+			  FIELD_PREP(LNaRECR2_SPARE_IN, conf->spare_in),
+			  LNaRECR2_EQ_OFFSET_RNG_DBL |
+			  LNaRECR2_EQ_BLW_SEL |
+			  LNaRECR2_EQ_BOOST |
+			  LNaRECR2_SPARE_IN);
+
+	lynx_28g_lane_rmw(lane, LNaRSCCR0,
+			  FIELD_PREP(LNaRSCCR0_SMP_AUTOZ_D1R, conf->smp_autoz_d1r) |
+			  FIELD_PREP(LNaRSCCR0_SMP_AUTOZ_EG1R, conf->smp_autoz_eg1r),
+			  LNaRSCCR0_SMP_AUTOZ_D1R |
+			  LNaRSCCR0_SMP_AUTOZ_EG1R);
+}
+
+static int lynx_28g_lane_disable_pcvt(struct lynx_28g_lane *lane,
+				      phy_interface_t interface)
+{
+	struct lynx_28g_priv *priv = lane->priv;
+	int err;
+
+	spin_lock(&priv->pcc_lock);
+
+	err = lynx_pccr_write(lane, interface, 0);
+	if (err)
+		goto out;
+
+	switch (interface) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		err = lynx_pcvt_rmw(lane, interface, CR(1), 0,
+				    SGMIIaCR1_SGPCS_EN);
+		break;
+	default:
+		err = 0;
+	}
+
+out:
+	spin_unlock(&priv->pcc_lock);
+
+	return err;
+}
+
+static int lynx_28g_lane_enable_pcvt(struct lynx_28g_lane *lane,
+				     phy_interface_t interface)
+{
+	struct lynx_28g_priv *priv = lane->priv;
+	u32 val;
+	int err;
+
+	spin_lock(&priv->pcc_lock);
+
+	switch (interface) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		err = lynx_pcvt_rmw(lane, interface, CR(1), SGMIIaCR1_SGPCS_EN,
+				    SGMIIaCR1_SGPCS_EN);
+		break;
+	default:
+		err = 0;
+	}
+
+	val = 0;
+
+	switch (interface) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		val |= PCC8_SGMIIa_CFG;
+		break;
+	case PHY_INTERFACE_MODE_10GBASER:
+		val |= PCCC_SXGMIIn_CFG | PCCC_SXGMIIn_XFI;
+		break;
+	default:
+		break;
+	}
+
+	err = lynx_pccr_write(lane, interface, val);
+
+	spin_unlock(&priv->pcc_lock);
+
+	return err;
+}
+
 static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
@@ -518,33 +858,26 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	if (!lynx_28g_supports_interface(priv, submode))
 		return -EOPNOTSUPP;
 
+	if (submode == lane->interface)
+		return 0;
+
 	/* If the lane is powered up, put the lane into the halt state while
 	 * the reconfiguration is being done.
 	 */
 	if (powered_up)
 		lynx_28g_power_off(phy);
 
-	spin_lock(&priv->pcc_lock);
-
-	switch (submode) {
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
-		lynx_28g_lane_set_sgmii(lane);
-		break;
-	case PHY_INTERFACE_MODE_10GBASER:
-		lynx_28g_lane_set_10gbaser(lane);
-		break;
-	default:
-		err = -EOPNOTSUPP;
+	err = lynx_28g_lane_disable_pcvt(lane, lane->interface);
+	if (err)
 		goto out;
-	}
+
+	lynx_28g_lane_change_proto_conf(lane, submode);
+	lynx_28g_lane_remap_pll(lane, submode);
+	WARN_ON(lynx_28g_lane_enable_pcvt(lane, submode));
 
 	lane->interface = submode;
 
 out:
-	spin_unlock(&priv->pcc_lock);
-
-	/* Power up the lane if necessary */
 	if (powered_up)
 		lynx_28g_power_on(phy);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

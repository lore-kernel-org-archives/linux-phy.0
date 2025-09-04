Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 087D3CA1013
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 19:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDgOAbP4/y9bwVJArAaEU3qOwQtMIitu5DWelNq6Nnk=; b=NdXIrxxXAx9bt8
	GTCsRVtFIbKSM0r45IEDkZxk7YuOgxk5vsX0Lc+h1dYsQ9M5UrqgG1Fq8vogF9sPWmzQpB2/G6wa0
	UifK8gTrVypwqejC0nnuufQcoe9NryrJXWlpZ7sdlLTqAvJn30KK/NLxGutrmsWoa+ob/A2Il1r7W
	g4tK+kqrpjwX6yNhsee0yUZO3sgs2Wn38Tf/BT0Qy82y/lehI1qE1TNQ8wMRrFSEkE4TZPGWZlT5M
	l3Xe8/oKv6RXS8vYfr9so301UbHq4gq6r20uEVb43YhGttnLqcLpt+uZfxh6MVfpG6OCY7e7QwC2D
	GarbLCgyM+SY5YiZvnEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG1i-0000000E4MG-1BA5;
	Thu, 04 Sep 2025 19:53:46 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuC8R-0000000Cby9-0OUJ
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 15:44:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LoLeDljuMIxfh2BfFctnf9cHQSUIVLYC+Mir9NpXgrvzVQc9gImqb0wGkF72LZ/qs4qJVKCfm4+G5hzHl9Y7ZDD8e5hTtvrR8PYLJRkN3NKojPP1NmR1/IkxY1oq+89TCEbtKfrdWWEMoGz/musKS73aobVKZZo4WDK2W0MslQdXUhkA/TwvT9Jx6Fo0d0E7J5HdVGNboIS8GFBdEm+1W4Io1HgENMHt5h7+cHaHy9V+e+ZnZTbgWjPoS9x/cb8vPRP7TmLeeWxvtINA8/1Zte2Ls71XkokV3nXa7HG10Zs+SGd6hT8m6byiSk/vlnrSu5GttRBP3eK7fb5wFUkKLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CXOSbFTcJE4OyoVwBBXsuMjlzLTGFQ3sSVv1a948Z/Q=;
 b=xRxyzLTS0wUbZIrb79tNe8hahKRd2tDOuxJMbF1c18Fk1ivba8KiSwW0B0w2sMtXXPf28e44Bt16ILa+QWMv3racQPsKFasC1tkfd9uk8G/hPIykgVS1kovO2VJOIFysE2FfUKm+y1kfbsdQT/+cLQ8kQ+NhSGoy+Bf0os3wexNiyCH6MpYaz9UhqzQfOu9oEDn0D8q0E14/u/+YoQEx49mNL3wZIPkX7qXBdHGNFVXUXOA8uHkytG6W0D0yqvHFMUMYgwHvS0ATR8yGyhPa6cv6wmKU6feUBo1SigI2kO8Jkgk55WBJ5n/uQAgZyPQPDOyPpCeQWCLj8nCNitP7jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CXOSbFTcJE4OyoVwBBXsuMjlzLTGFQ3sSVv1a948Z/Q=;
 b=bW8lbPhTJS4CoI/8nmyvGnbOwrbGGUOjTAZYsBe9ktVKw2v5BWAMHWvSjOfdS6YglXiXsVsr9aj++K/kzYrGPvSaDS9kxa3rw4eHpCoyrxiFTyQSQz3z4l5iUDX1lS/0yLnNCPbN7urgi4/VUtp9Rvg5oUOfO5JeEms66wkrJIpKKestupinsRMNrsP7PjK/rD5F/7Z0Zbswd1K6q0ZPwi8NTjHKMoZqxtMfsrtvJv219LuskX5rckVLQtrPX+xYcrEezWy5cpAIhtUe96N9O+J1yOICdqixt73AhfYz6Ut2NhxZEW3U+/sc9P+zwOVAa/hPr/oxy8wbXUs3tnRhyQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AM9PR04MB7635.eurprd04.prod.outlook.com (2603:10a6:20b:285::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 15:44:19 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%7]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 15:44:19 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy 09/14] phy: lynx-28g: configure more equalization params for 1GbE and 10GbE
Date: Thu,  4 Sep 2025 18:43:57 +0300
Message-Id: <20250904154402.300032-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250904154402.300032-1-vladimir.oltean@nxp.com>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR03CA0060.eurprd03.prod.outlook.com (2603:10a6:208::37)
 To AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AM9PR04MB7635:EE_
X-MS-Office365-Filtering-Correlation-Id: 02ae4334-6ba3-4fab-22c4-08ddebc9e840
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|52116014|19092799006|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qMrf5gVFUo9rTBLOgl9kXK4bYeGI/wfpF/haxTpLpiUqAJGm1fwwIy58WknQ?=
 =?us-ascii?Q?BxvMJTwFbH9yFNp6ti89fcQMyp6heTETRL3dEErHOjsZ7VpCoVEK+v3I2iSj?=
 =?us-ascii?Q?vCRr4GVAhZ/aimUQ+QNh7sOd+vexAzrPeVp8rQ2NEsu9DL/48MhjjVD9rn3B?=
 =?us-ascii?Q?YXNzZn0W1ZAs2hsGB+MPkBZwELZn1RK+mWeOfrNmw9apuGbJxWK9er8Byaau?=
 =?us-ascii?Q?vC4g538TXBzUPR/V4awpzWw+7z0uGBTi64DsYuyhA8gUmPi7wD3FZn/SRA5S?=
 =?us-ascii?Q?oUjHFHtf+e+uR+cYxqFdQzb2htZ8vWi849RXhWR2rBZtBTvz6D/dmoNTkaG4?=
 =?us-ascii?Q?SYJeiyWQweyYf+4rL3Qm2Ry3m7CQYd55vF7JQTspM0weKkDc31S/kLtxlDwf?=
 =?us-ascii?Q?CV/yKPlN3fPHf9qgcFnN1BvGERzo66jfauFZoA8OMhjq2ZG16gwSvYZtH3h9?=
 =?us-ascii?Q?FH74gedquJXSOJIzBTPQ7FC8dX+U4t/GP63THrtapBXnURI8nQ7HlD9WjenU?=
 =?us-ascii?Q?6mb56P05dbgbb0NYIwY+zdxk0K8k44wP6Wy4I6N6V4iSQetIuLiOCct+dUgE?=
 =?us-ascii?Q?2H9h+/1KLr/UNtfdhHOt6cAT6bsTiWNgiBnLrUtaMlDgOpMoq/Qon+S3Acol?=
 =?us-ascii?Q?Uevk2ENb1TuD9hvx5XdGeiBBG9XJw2htCK2sqA3mbP/3IDVDQqSHP4k34526?=
 =?us-ascii?Q?QBay6OaLp1ndUY2qfA0vkwAlPr91liT0RrHsG/Y/hL7+DwLGruaa4VzkPJ1t?=
 =?us-ascii?Q?BXFcHQYKE6O+e9SjUZ5y27ttRO/VonOx2PJcYaYxW90oUEDyxeZMNlg+9WHV?=
 =?us-ascii?Q?DuS+7ppUy7OWLEcZggf81rx8vKm/zNqd5oxgRnpUlBdDbOIOJVmONwzPgbqx?=
 =?us-ascii?Q?q4Oyr6ChCyeg745N5o980IsPCZ+8yRYmXVInMRDwSxjQlI7ultwq/1U/ofGB?=
 =?us-ascii?Q?0IFekrRZB6ebqyXUhftWOYDgmabjtPWzAFXPS68Ac7SV7mHSuxMWwBv9vRyT?=
 =?us-ascii?Q?xNcQAaE+Dt0mMiC7BzUkVLWdb9kFNJk9AurSruEmQl50YXzh5sHwD7JjDdqm?=
 =?us-ascii?Q?FG2xWTWRNd1CIDjj7JUyhrPOPfFCTVVYpsOI5Ozpe50Szn2zT7xkHJsrLK53?=
 =?us-ascii?Q?RrCw16vZxpefPBsUC5ZEg52/FNxNk0uLidn33J8/wTXmnCnnSWoQ/zibZj/u?=
 =?us-ascii?Q?adMVGAj9hDlY28h1Wjrl7fDikbXVBalhubrYD13253SBM9dRgG4xuIV1F57y?=
 =?us-ascii?Q?4nYY79FSsb9Uy9jeXByOoPiz1s+qhkpq6J+9J6yrCIa7TLDj/YXlYqy3YuMc?=
 =?us-ascii?Q?CMKdNtghSwRrf0JgS/cWTRyTQziElkYaBWt0sjnlxaDxFk5qBIo0nDqB0r6q?=
 =?us-ascii?Q?2OLq0l7RvEFIt+2roHNaTSNwwO36mJ+RW8EFrlnNuF+s4X92IfhQ7fEq16hc?=
 =?us-ascii?Q?NCp+/k3I4Bj6IaXTOsRroHbec55roJQOSjt72ka0wzrNYdZp71Mi5w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(52116014)(19092799006)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8o10jrgLe5JJTKUxjVcnBHa5NDlSJPB2R0KCtjwq1mnuKgTWbzynB9+wOKTj?=
 =?us-ascii?Q?uAYq6AqgjdfyI6pn5qfcwvNq/4mFBJorkp2VLRXtrpyhUWCyRCYmFDeqE50X?=
 =?us-ascii?Q?2iZqidipMKsHyyOyjXSBWQvlz7b8SfGbpOQNxfcCjy2BrkBdixtO6RuoxkHg?=
 =?us-ascii?Q?8spD16YVJaj2QojXHvJjaEmgOoHJdQASUFDg2dnTpa9ImchATVPWmNTqP5aD?=
 =?us-ascii?Q?DdcmUxH81HQy0TGQeGz1zArT32oe6gnPRQFMifJwaqb71OJjmhfwCDmfTuGM?=
 =?us-ascii?Q?uGcrT7AWjWiiys+hqD2GSOKscImWny0+XQgziLXg9UiL/PhuAvJsuMvE1HDp?=
 =?us-ascii?Q?OwY7kMc7Mcx/MuI+eVUzAO7G6rZQIq+rJ6lkXIG6CfRW4xZDabV/fHBO8EQa?=
 =?us-ascii?Q?Vc51BePaYF94VWt6FaBd0XuIwHULPhuMBLE3oVP9sCfRMANE/6f1ZB7Vilew?=
 =?us-ascii?Q?Nk/hkb/IxK/6WIr3ec6xw5QsDQviFjLRnGKl4/fb0kjdn/aN0G4mUSvXl/JX?=
 =?us-ascii?Q?KeTfcDAiuyyxVUuGm3Ov9AMfmLVNmUYAZtrQk5S73BGO/YF3xpVh0lEdvOtE?=
 =?us-ascii?Q?A/83dNfj44rHVk1sg3j6p07XCL/yrrUJxUNm6EytjkiKp8FsckC9PIY5OQsM?=
 =?us-ascii?Q?VG/kxbPZina4VEUp9md2wPpCQh5fabbj+f6k7Pw2WFWr7yoHxc56D4jLNKk4?=
 =?us-ascii?Q?4jgeH0WCpPsn+lgAYoTgDQpuq/vXVYpLodejUuBWOmhJsycr/PrkXm8H4M7I?=
 =?us-ascii?Q?gHDB8b2hhXl+ZB0NRjxn31rvjbeTPGWmuV6GIizGTiD/++3CHCxqS+OBvqaV?=
 =?us-ascii?Q?G2W2J5s2EDTxGv0ky7snHJ5iehPOk0x8260tQvB9HHguOjItMuLvbUBBJvKE?=
 =?us-ascii?Q?vEuiu+TghxvRt4K00OgEFd3BQCkfxHd1M0Wq2an9+iKNOqsGHcWeMi5HhAD6?=
 =?us-ascii?Q?bUyR5SIZpiW5ntvI4+tDpOpOfb1vqEfdX0WW6mb9e1yB/3sBVGvONrfEXssM?=
 =?us-ascii?Q?+ejjQsLHWl4h+Qwm6sxY+a7Ajl9G2tFWVVXqLXPsNGV8xHczmjWFODJGl0dN?=
 =?us-ascii?Q?eYLFpMUBmEWfiXNRIcypv5XQbg4//McLjQjHMvAK2CIuqTHxWiQ6h3illlly?=
 =?us-ascii?Q?hkYEfzLImUUxccaq51QN/W5aOMRhu9yoCaJjPPWHS8W0VEPB34GJJFGjkq47?=
 =?us-ascii?Q?q1+RmI/p9jySjZ3s/CHkVgLLcz65KVKky4TIN3XhmPQ1hNzFVpPid0i9tbHp?=
 =?us-ascii?Q?t1pCHa8Q+tppeMyzlTZ+oAe3u7oMQ9+YUnLs6nJkQEXQWJU0tOse8fXxNKL4?=
 =?us-ascii?Q?lTXqW+XWMZsI6F+slMxXBIdcadik8D8OTwM+fClMN55zBObUczWF+NrbaR3T?=
 =?us-ascii?Q?FlT7S1CXsuHv0dGXReQQIwXNDORs0RRZyiT4Xqg1nCUVKB/HzbaoaF7OUI1o?=
 =?us-ascii?Q?DVA6YX7y8RjDA1851ttktcW7XjoeyFDhja8Bb1Bd9zIoT0wodAJRwYbjsV1y?=
 =?us-ascii?Q?jB2d3dHUDzD1Ra4/FiZctJ5nma7PTw9Bb+fnsba6b76+isOkiyeTqfPbm3H+?=
 =?us-ascii?Q?YODWssyX99exNffSvpO+Ol8zvZ9xHifWhc2N5Wulfji9Z79YZ9SAhz7jJz7A?=
 =?us-ascii?Q?rQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02ae4334-6ba3-4fab-22c4-08ddebc9e840
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2025 15:44:17.5335
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YpZ5KKTcJyIJLt0ORD7F10Ky4H5z9RSlmpBxv/CQbPMsELsFObpglYQ1xTj66cnnNm8DhHV5r/77FjPLrFmxaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7635
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_084427_141171_0D37FD59 
X-CRM114-Status: GOOD (  14.96  )
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

From: Ioana Ciornei <ioana.ciornei@nxp.com>

While adding support for 25GbE, it was noticed that the RCCR0 and TTLCR0
registers have different values for this protocol than the 10GbE and
1GbE modes.

Expand the lynx_28g_proto_conf[] array with the expected values for the
currently supported protocols. These were dumped from a live system, and
are the out-of-reset values. It will ensure that the lane is configured
with these values when transitioning from 25GbE back into one of these
modes.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 37 ++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 49e9ea82106f..1a8751e79898 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -166,6 +166,18 @@
 #define LNaRECR4_EQ_BIN_DATA			GENMASK(8, 0) /* bit 9 is reserved */
 #define LNaRECR4_EQ_BIN_DATA_SGN		BIT(8)
 
+#define LNaRCCR0(lane)				(0x800 + (lane) * 0x100 + 0x68)
+#define LNaRCCR0_CAL_EN				BIT(31)
+#define LNaRCCR0_MEAS_EN			BIT(30)
+#define LNaRCCR0_CAL_BIN_SEL			BIT(28)
+#define LNaRCCR0_CAL_DC3_DIS			BIT(27)
+#define LNaRCCR0_CAL_DC2_DIS			BIT(26)
+#define LNaRCCR0_CAL_DC1_DIS			BIT(25)
+#define LNaRCCR0_CAL_DC0_DIS			BIT(24)
+#define LNaRCCR0_CAL_AC3_OV_EN			BIT(15)
+#define LNaRCCR0_CAL_AC3_OV			GENMASK(11, 8)
+#define LNaRCCR0_CAL_AC2_OV_EN			BIT(7)
+
 #define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
 #define LNaRSCCR0_SMP_OFF_EN			BIT(31)
 #define LNaRSCCR0_SMP_OFF_OV_EN			BIT(30)
@@ -181,6 +193,15 @@
 #define LNaRSCCR0_SMP_AUTOZ_EG1R		GENMASK(5, 4)
 #define LNaRSCCR0_SMP_AUTOZ_EG1F		GENMASK(1, 0)
 
+#define LNaTTLCR0(lane)				(0x800 + (lane) * 0x100 + 0x80)
+#define LNaTTLCR0_TTL_FLT_SEL			GENMASK(29, 24)
+#define LNaTTLCR0_TTL_SLO_PM_BYP		BIT(22)
+#define LNaTTLCR0_STALL_DET_DIS			BIT(21)
+#define LNaTTLCR0_INACT_MON_DIS			BIT(20)
+#define LNaTTLCR0_CDR_OV			GENMASK(18, 16)
+#define LNaTTLCR0_DATA_IN_SSC			BIT(15)
+#define LNaTTLCR0_CDR_MIN_SMP_ON		GENMASK(1, 0)
+
 #define LNaTCSR0(lane)				(0x800 + (lane) * 0x100 + 0xa0)
 #define LNaTCSR0_SD_STAT_OBS_EN			BIT(31)
 #define LNaTCSR0_SD_LPBK_SEL			GENMASK(29, 28)
@@ -287,6 +308,10 @@ struct lynx_28g_proto_conf {
 	/* LNaRSCCR0 */
 	int smp_autoz_d1r;
 	int smp_autoz_eg1r;
+	/* LNaRCCR0 */
+	int rccr0;
+	/* LNaTTLCR0 */
+	int ttlcr0;
 };
 
 static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
@@ -317,6 +342,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 0,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 	[LANE_MODE_USXGMII] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
@@ -345,6 +373,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 2,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 	[LANE_MODE_10GBASER] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
@@ -373,6 +404,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 2,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 };
 
@@ -828,6 +862,9 @@ static void lynx_28g_lane_change_proto_conf(struct lynx_28g_lane *lane,
 			  FIELD_PREP(LNaRSCCR0_SMP_AUTOZ_EG1R, conf->smp_autoz_eg1r),
 			  LNaRSCCR0_SMP_AUTOZ_D1R |
 			  LNaRSCCR0_SMP_AUTOZ_EG1R);
+
+	lynx_28g_lane_write(lane, LNaRCCR0, conf->rccr0);
+	lynx_28g_lane_write(lane, LNaTTLCR0, conf->ttlcr0);
 }
 
 static int lynx_28g_lane_disable_pcvt(struct lynx_28g_lane *lane,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

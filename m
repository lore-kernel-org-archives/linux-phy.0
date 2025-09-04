Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ACF6CA1013
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 19:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E3ZFirSZNPt8XY1ClXtnM/FncxAkPEC4avDUCNhWH3w=; b=ldIaM+YRK6bINh
	352ENC73G6BdHSb0mVkMzvCgANvhxeg9JGWFF9K/WvG/27Ltzomj+wtTZvPi1vYLOPVaGch6MyKXi
	Z28TmbOth9e4yX5DqgIOrhUFNK2U3a+/jDJRBNtxLvwqA/PR5/aPhZa+efCYbIl4tLgYtyC/2lP3k
	jhtkDmdX3lSW14trVZtIUusV5jQAWghrUJhrKeu+zvmAfUr3J6eEhBHyO03JHfIt7fa0QSScNyVIC
	9HFvQvsTP5senckrPKbIAYkkK2ngpcdrNxCR/b4kZmCD6Ie4vUMqIcZTrkIwL6aRwW3mJQ11XT0gs
	pSUSoXBfFGo+uq4D0uvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG1X-0000000E491-1Wwm;
	Thu, 04 Sep 2025 19:53:35 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuC8K-0000000Cbuh-2UVL
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 15:44:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GP2yl7xWt5syYlxvO4q0/soP6nEbJVtNf5IMFUv39KU2G1aeaz9yspvBxo8ibO2UCSrrp1cXomzLbWo7y9PXyDYun0B4Ejxlk/sOPT3KVDEqVP0H4mlyyqTNOO+RVyTk4U41jXy9qRpY8vAdAVaMYOakb9atuyGcjrGQJULDui4ZcF/RqdhmeU19SSuuUg4qrp1+q7eTyeCZDIyz3OObtgY/si2tVSuLGJZ8fRqKoNgMzd7qPnVTsDv3GrSiUTln0jMUeO1rNGhNc79lCj7T5gsXjJBHJ9vgCRtyZbzKOd/VI45krZKqzrrdrzlhSEOdnP/47Qcf+SUTZjNQICubTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=On6iW3qS8qJpzs029r/XHgZWL7tl6cP9KZw8rzBhKMI=;
 b=agby0ilggDXK8kNtx8sQy0ZMf9GaTm/+FVVh6s2E39lzby3tloBa1h/qJng/6rDCGtMNBd852gjMenjvH3EQL0h/Ww+o8PJvzpMDyFOYQ2JUD1DRZeGVUN4EvB9FeoEtfKQKVTQX4bJArCZ8E5RvJWcn7uEvxA2MYa0btnBcpihgWVYTtqUVzoh9UyKrtYgjDfkog92Trt3QYQ1IrmpcsJfPsn4UMSp5OSNRcMAEQfijXnkVxh+hLxDd+/ObLqmfwW0HQYi5zpTWGjalUYuHHY8L5LRHbFk28fHbVY4NcvidDS6RTRurlMq5pEyDvp+Mebt2wFbajjZNyCfQJ0rAaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=On6iW3qS8qJpzs029r/XHgZWL7tl6cP9KZw8rzBhKMI=;
 b=ZXG886990A60lOVdK7cJue4rIES7OJtUpGWOvPypf5WwnFSJAjzM5wGLEx13Cv+Pbfra+L1M0aL2jdxUwf+N8NMX8E/uJ7kIutU04rCdn7SC3f476kH/XUDa6uEn3WmAXxktHiItFk5V9ok8fBYsHDD/D0Pw34rfRuI2m+gxR7lNc8JYuPfhXDqzZskq86ZrmtzIgkTK5qEMRhp78OQIz5ToEqB36R1BTy+RAMxqWmeiumsLE+Q/dVkE2dN/o5IUuL6meoZVqvLay6VT/s96UhP/4jJZlx2HdUQwmnYP0XMZMK2q/lUsHR3bmw6Cxdfrb7Yu0GUcSaK2zmjgLUMhVQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AM8PR04MB7348.eurprd04.prod.outlook.com (2603:10a6:20b:1db::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 15:44:11 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%7]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 15:44:11 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH phy 00/14] Lynx 28G improvements part 1
Date: Thu,  4 Sep 2025 18:43:48 +0300
Message-Id: <20250904154402.300032-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: AM0PR03CA0060.eurprd03.prod.outlook.com (2603:10a6:208::37)
 To AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AM8PR04MB7348:EE_
X-MS-Office365-Filtering-Correlation-Id: edaa6abf-cb1a-4688-1a4b-08ddebc9e467
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TFsF1mTYtAKvtcBGQhH+JNyi/4pJbO4pxmKAsOVVNtmZusJKOqEgm4ru5kJ7?=
 =?us-ascii?Q?o+hyEQqf/AZZ+hQTxE1vufxpMFOtoszWoUM6H2rEHdb8uPPcfnW+FDPjhw8h?=
 =?us-ascii?Q?7jHJPpVu7MPhXgImitMZCZWv2pm6XgvdEOxpnZMlcMF1v4R3w+3VyGs85MAy?=
 =?us-ascii?Q?EXaYvbbwHLQqGkf+1sfMgzWROV0xhA1hY2hh8zfJPKxvwCicxgv4JsmBPsAE?=
 =?us-ascii?Q?2wgNp4FZudrvw7eOx576UF2D3vDDq+vwsYds3xcgFapn0Hh0KIvleewmEj5E?=
 =?us-ascii?Q?xl4RBortMy5bvmpz43D9Q8JH12KNFpI93VZSYaLAuKBgeznxm/6pGJGBqrJN?=
 =?us-ascii?Q?M9dD1gqBcCyxnjE+TuB7OJaIUAKc0PMoEidMR5IfGfEdbrznne3YuSKU2InX?=
 =?us-ascii?Q?7nqChPGBYeBqZ3Rpi5Z8d85VtXzNwpyAEEyh2LD5hVcRvWNOoMShlVcLse9g?=
 =?us-ascii?Q?RtDuLYaEPF0zTKLWbIcVjGdqxbiXa9EbgdbzI2mK+P7Q++Cu15ru0de7MsEP?=
 =?us-ascii?Q?bOkOJXT2lFBjJoU9IxnnO11gn7XeWzThNMF1yVhODW6Vn0uMSOfiWmUd2cj5?=
 =?us-ascii?Q?eMZWgRjwEPeR68nrFbfLq3gaitd8TTHhuDThHomiHy+0GKA/kt0c3K4b41DC?=
 =?us-ascii?Q?E7KcXQqKFKlVPgCINWuZI9zxfa4Gm40ciQCU5oipH5fJ/dM7rhcRmIJUva3a?=
 =?us-ascii?Q?EnvmeUBH7k9IFzP0nKG6CdakCFZ1vge10LYx39KQcIGmBPjYj27oVpSStO+u?=
 =?us-ascii?Q?37r7kAdDjyv2Q140l1W1IB5/8xCgi/RK5ls2g8bxIP5+2SgCb71TAu2FGiON?=
 =?us-ascii?Q?GfoOL/WBXjzlp0GmnKmmpLoeqDWq64+rHDnqXO4YCTthGomhflSg1zWtSNQm?=
 =?us-ascii?Q?0J338NrO+7E4ilTLiYrSjTffdnuYDoPyR+ZVOyT0ppUl1W9qDEjqgCcT2J1C?=
 =?us-ascii?Q?7Kf2m2MjyfVyHJ+HiHXMplY1pSKLzGQJvTPACViK3+TvH3xRH/H4u8+m8Q16?=
 =?us-ascii?Q?ABny6E63X+Hzx44nM8YIH82XW3G5g3PSVP4rSsXJ8PU5Mkym81c0BgpTWQO+?=
 =?us-ascii?Q?HgiMf1nQLrEnJDPZ/TK/Sefj9xVYDjDr0nwKU8XWHbSqP5Coe4mxOVDVLrJE?=
 =?us-ascii?Q?z9vBnof59efpgVrDJjwvPRRdaCfhiCrJcLcPYZ8oLRvJHQiC894EAdEC91O3?=
 =?us-ascii?Q?j+3ZGzHPPbD7RCpUFLC8+usJuPqr/iFqOz20phbv5qKxjFV+SopmT/B5D1w+?=
 =?us-ascii?Q?7FhZDQ6ppvSaXkzA1/Ti2WAk0TUeQ4xoyu9DikjuxhRCMilQeWfb4wHK3oCZ?=
 =?us-ascii?Q?LyH8fxlAKYCybFGIeAEhRKXqGhfnJDXvbGgdZNu70HaZ2idAWKNAMfD3Ch29?=
 =?us-ascii?Q?e+7I8HGA5b4zHXxEAATI2jU+KY6hz+0E44YqRZwFQamsi2Q+ZaUfmz7LmD4/?=
 =?us-ascii?Q?pmFOo3MjwxVwrGpp7MJrsuXyu0EbkyeVFVptJom6J+w2gW92KUvKEQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8eB2CtErzequ07epDvwKw2WOVJXBCsaz6yLVxsNd2u/H2rfi2O+6rRI7kqw+?=
 =?us-ascii?Q?i5cEXgMH/wZvYsLstbXu+GkTwyH3XiloC9ULANQz+ewApGoRTQD+FD5R9kEY?=
 =?us-ascii?Q?XJb7L3Gj0X4dBHOwupVm8ZpKwarDRknZJi8q4/S1dTH8U+1bhCsFTXYO5+2p?=
 =?us-ascii?Q?QDWpZt+qAHxlm8vf4tZha6Y52FwC8GD3t6lesudiCFICEp42584mCyxfIwXy?=
 =?us-ascii?Q?7L79wLovK1c4cPskpJ+iRnkTjXRroOmcxGCxU06ihpn0YdvjAm1zvRHA5Nnz?=
 =?us-ascii?Q?L/cX/ehyTQsH2GW86lxcFpQGh3pAuQlT2Xt992Vb9Qs2BNXLFxGFAJ39Nk0w?=
 =?us-ascii?Q?qGF07ivAHRl2loO+12yVw6jOqaoWutpp6YJbwTqgM7pxz+9WPbl25KMd1LKC?=
 =?us-ascii?Q?RmT0jtCqpVoPYHxBVlilIU9nCLeO5aiQd4A1Ah+A5LMvQ4Sh/ipuhiJFBtsy?=
 =?us-ascii?Q?nrCSlG1ZB5W1ypcptv8SsqAVYzgup0p2ikqJLBxiURLbJbi8vzmIiz2W/9IF?=
 =?us-ascii?Q?L0aquEa26jzwtCbxEu2pBuqY/yfwzsVLZ+I0sIZaPaFSKI/6jN4Wj12e6u40?=
 =?us-ascii?Q?RMRIeoZ5rHL5K9qbtTNac+YZ9QwRG2aVVUHMt4PoaFQJHKWhd+tW15nsnUFw?=
 =?us-ascii?Q?pRjJNylrhD568i6HWrIzYwSlTpPNSImKh+9JZN7wsVR21ML8QaNdAB5nrnnv?=
 =?us-ascii?Q?U2whvkQjjCXFWcDkCxUpi8DSgF1VFJtd1NAMAu0Ia5Np9SZ7FWt5dA4IaRjF?=
 =?us-ascii?Q?29YgPB/R0e3xGM+E6Xa3oTIg4Xb6Lwb6hOcoQtgJy5pL+zyBw1U8KA+JJFc3?=
 =?us-ascii?Q?J+HVi9TlxriKYI/EVFf1mqfZv2YEYjFbCemoHWAefSumEmYFTunDQnN1iQvH?=
 =?us-ascii?Q?IFcfAsCSq4/F5CYfp+66A4xzLD7VqR+Alxw/rVandbNOV1oYthcV79TUG6KF?=
 =?us-ascii?Q?tqsBRamnAilFmwuVy0f/jOcsutI89LHA7v8wlLcqV4cuU8HGzZosSGOAVKgL?=
 =?us-ascii?Q?6qKND8c2eaTSWQvZIWA2rlp5anvURWyIaiQ+pJITnamCx/dqBZUpERwjS3x2?=
 =?us-ascii?Q?KkanluPYz0ieeMdw18BzrkR8D7B27yn3u5+Wi1cL926w7zkWP0F1qLMRb0l/?=
 =?us-ascii?Q?5HaoXMcYH54qAi2V6ebj6GZr6+/BA1klht56RyeHup4tvxRmnnYnwNP5k8Hx?=
 =?us-ascii?Q?AV+bVFtPrWPfuQzZTdUjp6faZrpB3N4AnxTFwXZi6OJ74nJZBLx7/8xlzkGc?=
 =?us-ascii?Q?ZN3ABVoJ82+13jUByCZ4lkFeQSRHQvMG+0kHiRyDyGSCOpI2cBjwqZ1mudhL?=
 =?us-ascii?Q?Vn0PK4wJzZgkq5Y92yONdNKQUbiIDArxv9JO9CYi80kTEzi92IZvlvP+ozDQ?=
 =?us-ascii?Q?YozNOyY58fQnlGXd2THbgcW7zoG9CA6m+YhPFI7HMSS980YSVBjCaaNe/dDQ?=
 =?us-ascii?Q?WhRdkAEU54Qa9rFVLep2fP7WM+ZxDvwS70JhZAxLglI2BsN7cHicZYVuVHp0?=
 =?us-ascii?Q?6PQkbToPpIKZ+dnycW62b2R18mwQbhVX5VRiBDD1soMGTa5JIOIKEa4sE9wf?=
 =?us-ascii?Q?D00O+KZhd7fAkJxCkmVj2lnwOqIOJfPXpnvNWVFW?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edaa6abf-cb1a-4688-1a4b-08ddebc9e467
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2025 15:44:11.4675
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K09982rje/anJ+DoKzqX713CC3jV9Ck7cC9DvjLIzwvfGcPr4aHNuZKtdQpvFP8H0UPyUBgy1tF7JMaZOLkZvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7348
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_084420_631690_8242CE40 
X-CRM114-Status: GOOD (  12.86  )
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

This is the first part in upstreaming a set of around 100 patches that
were developed in NXP's vendor Linux Factory kernel over the course of
several years.

This part is mainly concerned with correcting some historical mistakes
which make extending the driver more difficult:
- the register naming scheme forces us to modify a single register field
  per lynx_28g_lane_rmw() call - leads to inefficient code
- lynx_28g_lane_set_sgmii(), lynx_28g_lane_set_10gbaser() are unfit for
  their required roles when the current SerDes protocol is 25GBase-R.
  They are replaced with a better structured approach.
- USXGMII and 10GBase-R have different protocol converters, and should
  be treated separately by the SerDes driver.
- Lane power management does not really power down the lanes.
- Consumer drivers using phy_exit() would cause the kernel to hang.
- The 3 instances of this SerDes block, as seen on NXP LX2160A, need to
  be differentiated somehow, because otherwise, the driver cannot reject
  a configuration which is unsupported by the hardware. The proposal is
  to do that based on compatible string.

In addition to the above, a new feature is also added in patch 10/14:
25GBase-R. Code allowing this mode to be used is also necessary in the
Ethernet MAC and PCS drivers - not present here.

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Ioana Ciornei (2):
  phy: lynx-28g: configure more equalization params for 1GbE and 10GbE
  phy: lynx-28g: add support for 25GBASER

Vladimir Oltean (12):
  phy: lynx-28g: remove LYNX_28G_ prefix from register names
  phy: lynx-28g: don't concatenate lynx_28g_lane_rmw() argument "reg"
    with "val" and "mask"
  phy: lynx-28g: use FIELD_GET() and FIELD_PREP()
  phy: lynx-28g: convert iowrite32() calls with magic values to macros
  phy: lynx-28g: restructure protocol configuration register accesses
  phy: lynx-28g: make lynx_28g_set_lane_mode() more systematic
  phy: lynx-28g: refactor lane->interface to lane->mode
  phy: lynx-28g: distinguish between 10GBASE-R and USXGMII
  phy: lynx-28g: truly power the lanes up or down
  phy: lynx-28g: implement phy_exit() operation
  dt-bindings: phy: lynx-28g: add compatible strings per SerDes and
    instantiation
  phy: lynx-28g: probe on per-SoC and per-instance compatible strings

 .../devicetree/bindings/phy/fsl,lynx-28g.yaml |   15 +-
 drivers/phy/freescale/phy-fsl-lynx-28g.c      | 1292 +++++++++++++----
 2 files changed, 1045 insertions(+), 262 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

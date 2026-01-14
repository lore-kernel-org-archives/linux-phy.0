Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B06AED37E43
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 15:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9Z4I1GGpfx/f6TNEggGBVhn2Jn7hXCS4ZE2F4CoBPc=; b=r/RmWkRuzxNINs
	zOj/Eai+AdElWzeEoS/ilsxWgYDXM1GdaBxOtCewSoc9obWH1zEGiq/T8AhCFq7nyb5yH1sdMfUbR
	QdJe/4MNVTpr1l1/Eqda3cl6VMA+IaJze5rqvOdeTWXgj1WoMpPG81FcgS4OJmtPxXznimWucgh6o
	vgiyJdas7Ej+pZt52bSGAGTbz3bwWoGRU6R/Zx4tb+PZbeFXbWkQ5fRT3259fUtlZIPDVNrT6EJ79
	URTixlwQBmgtZCkaFT8QOzUpSJnXTBOqWNTEreXcmrMzTSTrVqnUFqY8ADPzAL6NJMuVN7n409IHw
	+BVZbnyB0cuu5vtRALMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2gi-00000009fCI-1mzf;
	Wed, 14 Jan 2026 15:21:36 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2gg-00000009f9g-1x11
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 15:21:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dva5C8wG6+QQqs9kchN7zbbRcs4q/NHsoe4xtx5kUcpEXQ94Ve8qWBz8eiw2RScWGc4RbPndXq5R/jPBhNTO/sAyVrC3t9H2BteacSTD/SHUUDUlWy5LjRNpqNxC94cYJzyuTDP4KR7SJ5rHiyAZ1i7hTwiExXCQhKW0NSf27i+44MY73Bk2uJemf7snxptnHKIF7J4bekuBVK5LBFbkcGzOSKUP1E/tO1NDVUQ2SUPOm3X9WLe6I0e+eV7YD5MklXr+0TkrM8qQtXjNefVL/Zf6Eo+GCT5cLM4BuBbRML5IoyivSFvHnucU6y4XThkBXzNdjqgvJE9RdWLvnMh4vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1vixQSBgiAaI6lKHwKAuiRwZ35VXYlNG7c4Uk9Q8O6Y=;
 b=fWIdH/e61a/t8zGPJpb+7KjC5497jttSWHgTpT2M19ydMESXoCrInX7iGXGLKdTGaqURX7yIT2kqvEm3WCWD2aagI8rEDpgtidpnrGUdlhLk8bI66zVKLOSYv/UkytnhBdsnB68Repu37d0IjO30d1G7PIaG7GTOWMC6U6/OrUkH9zuJTtAeN9nWJAEp0r5rtb3YC+B6/JYQXTUM1sMA9WFKN4WxlwxbCmd1RFCLfr9oHlnc1E1i0Gt7Ii+YBMOPd5wN7ooh4w25do/F8cFgUdp5I2NF6G5DNGJVF8pjuR/OLKJuFyx86X7DjzPwGa4GswQ9cItUnMDdh0mJPhZrxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1vixQSBgiAaI6lKHwKAuiRwZ35VXYlNG7c4Uk9Q8O6Y=;
 b=JP1LH1Byiem8x/Gz1yeEtJjOY5jOMLxp1pwaakB0p3FHLt0+nt5Txv5w2EUAdsOzhZ0vln1P2yLtuC/GdN441vtWh5KkfNx3gSW+2SmgX6FQ4RVMnrBvX+VlHaeyuHibrpV4Ex26tcAnOfaQpKb4eD3qeR1L4YYow26gGzRVACpK4/YYJUr80HDXFE8vkWLiha+QC1Slaj3/AnLKKmJFur2/sg3KSPQWvAF8cDFnsIlNI9rIyULPsUNOtiM8dRjQlEY2XBbpdKscJiWDuofWxAoGSfJube9bGUd6zHr2wnGQ73UbykOhI4hPjgYzrCQtuG9QW4qZU2BwRoL7/6VgEg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by DB8PR04MB7068.eurprd04.prod.outlook.com (2603:10a6:10:fe::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 15:21:24 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 15:21:24 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: netdev@vger.kernel.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy 3/8] dt-bindings: phy: lynx-28g: add constraint on LX2162A lane indices
Date: Wed, 14 Jan 2026 17:21:06 +0200
Message-Id: <20260114152111.625350-4-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114152111.625350-1-vladimir.oltean@nxp.com>
References: <20260114152111.625350-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P190CA0015.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::20) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|DB8PR04MB7068:EE_
X-MS-Office365-Filtering-Correlation-Id: 949d3bee-0acf-4412-c7f3-08de53809413
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|19092799006|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sUkzwLX4+QSL+y2IVIu81h+UZH21LJmPQ3fi8k8x4ePTzjp+Thk2UKqYTdmW?=
 =?us-ascii?Q?hqS+K+wbPa32Yshs83jKsmJQ0tOsYgL1eEdfJiN8pnzeBqv7dkgQKjBEfau+?=
 =?us-ascii?Q?4iLeRxiNJ9rhl62q0WfuE1HE8QQTBdOKNDVDv4F7idTkGosWWvd8J5glcAth?=
 =?us-ascii?Q?WpHk7n86Bl7pSnhLAev4E3u/inZr3uu2DQUDfjiE92/iFUsD9m+F96ALCf/8?=
 =?us-ascii?Q?qoSVtZpMzUSFZ6UXBxNFzjyh6dBM5bO/PIx/4tVDA/LPcVXkh0P310rlV6eX?=
 =?us-ascii?Q?DGFSLgkYYnOSJdrsSM5X9cdHqU3rD6BGI3uA4utun96IjZMiM0UHNr+Tbmur?=
 =?us-ascii?Q?RlBdwYdFUGbgnI5VsXocK2l64KPXV1bSmubFILLjKjOe2Rz5kfNrcIx7CAh2?=
 =?us-ascii?Q?2P9/3JCH9lCw/lNqB2MZqlpJlCQKQuRcI7sKVEhH3nIKs20D1fFyfNvpAohg?=
 =?us-ascii?Q?AFoZAjQjfvw8atlrCMrPF/BjwnoTPdedS9j4uTHRzr31F90uDK6yavEAXApR?=
 =?us-ascii?Q?uu1aAp4mDOk04CQsWf/W78uYb6qM+JQD17w3eQcIuqo6hMK+ZAi1MWkZywaj?=
 =?us-ascii?Q?aJOReFZX4cVFr2jxsNBwavdj/C09Ks4XQuFcgpdUU6OEnL9gtEwZm9hzJ0xq?=
 =?us-ascii?Q?bYMd1jYRVqPWkHPpx0iixWWZP13laKAzJZAx9AMjpR+aNeA5jJp5YW4nhl9/?=
 =?us-ascii?Q?tyV5QCCQCQdxtPMOGziVBDQ9IjvlisgAY1m50VOqv0qB7CdccgCUgpTy/7kf?=
 =?us-ascii?Q?6OyHddTRWQHF4F+WgLC3aVHI/a5MN5EJNlWg2yFw2kG9nOtyuC1gkT9QLhh8?=
 =?us-ascii?Q?CSdfDJpiiX5y6l4ZtYp0WvIX/4LdVTzGjwE6I277haeUHXI3k9Y5aZPuCe1J?=
 =?us-ascii?Q?q1eaYYlZ2ciiCWLpz1CZalPNbippyRdOARjGQOfolK/2eZ31GJJqPqoW7y4X?=
 =?us-ascii?Q?B6lIQjhQFSVVmocbN75J8h7K9oc5FTqIoTXaK8JTt+0lRmHVGYMBZN39Mjnx?=
 =?us-ascii?Q?yFiclpNduTY8dENWxUYgbRdulMn1kkvrnU2KHH8NMQwhVOxubj16HBbX2KT3?=
 =?us-ascii?Q?Ncd/TLhDjD0J3cR168+rtfUm8+Ni4NWuTt/dCiiDjccHr2gj5VwYDTwHOAXY?=
 =?us-ascii?Q?EdVtqvVT/wnuF+LkKBaNkJC09ybKkXqtMBdNhRyvpRei18eOcWeMUPnyozk9?=
 =?us-ascii?Q?G9wbo0cDkjxTflwuRfxzt32BYogmE3bI2m48xLDJrJpM5OgZXNO8lAj1rT+u?=
 =?us-ascii?Q?bMa9kJMAbf00a/a9llGuPdWS6hc57/bShb7CBvrGr+daaOp7zrCTb1Swd7+B?=
 =?us-ascii?Q?M/S0cD+t8koRTh78GdpX/cC5ox/9CLLy7KsGwIiV4hRvRQfZ3sTcyULtObux?=
 =?us-ascii?Q?lGHPH9YiUzu6LmYdXzJbRn1E5YbV97N5Eq6litW5a4XmevGe321GFKwVep9/?=
 =?us-ascii?Q?6cUB08WM4RaAYsabnwPNxe1sPq/mPFpg5DWnXo33VGuvDV9bDIAjdoUjRNX/?=
 =?us-ascii?Q?1FhMAAbQcXUtOqWllhv9XfTb3nMSPsVVas22pmYfkD2gBsYVRxO9j5NWI81j?=
 =?us-ascii?Q?8wTCVe6NzjwSusw9b6xOH/42wzveUURW/mtVmeJAWwuKt3mJ0MpaMZ04q8iL?=
 =?us-ascii?Q?N92jv6b+bgDZNAF9U4YB5+w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(19092799006)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XCa3vZJZoC4CKg0nTnm9bLZNNEJp1E11iCdjjSNwzjX1/tPqOyvPt+B9i9SB?=
 =?us-ascii?Q?9vTkrIq7jlINoUaNqVS8Som1FgHYLVtTE9ObIKcvxqdgre4k0WlughgxypF8?=
 =?us-ascii?Q?WWdoA86OZLBHYI6rtR4gXZy6/TI1HGwxT7ghusgeZLKIabzDKe2PxjpjQ75i?=
 =?us-ascii?Q?Oht59b5zTSd/PcqdE+PeE4Ebg3B1HqodYRbGNWDJKD1EArm9eaHdPWRckOC8?=
 =?us-ascii?Q?s8l6Sv3nHmgxWBL+qKiQgpdx9a9k0WJYLYvha2hOgGPa0p83dxM9XylHsw67?=
 =?us-ascii?Q?HfnlB5cy5FbShYc3cIBD5E7A7p99FrVixmoUIqCGEYeYVoKeMXY0rQdqXiCF?=
 =?us-ascii?Q?E2Ii0oSgXDy0TJOEYZjqIQR2sGTM9u73bzde1mC68ycxNH8wxFJcQyG1AyWq?=
 =?us-ascii?Q?RaZujX/1U4U+1uFe0XwBVWJVSXAfDjVhju2ILdoJ+EWgN5qRV628UBcC80oX?=
 =?us-ascii?Q?c8JWlosgSJT66q1VLithsTH8Zo6VcY31VaICUN2j+gUM2oQlZo8tVV5Qff6P?=
 =?us-ascii?Q?ZqMYa7dHbxKGThiIFPMzgIdn+gbV1KLcsLZVjRfce7xgGh2V+TGzCbdzuW2Z?=
 =?us-ascii?Q?w2/Bqr4wi59d3Mxi8nERceZYU5D3OE44RDns1RDk6FbKvZAr2SJjhjU8LsWJ?=
 =?us-ascii?Q?x0whZuwATw63FaI+GLHW6WaMtu3/Xk+b530QWAbPVMVSowcegI3P+ChDoDrf?=
 =?us-ascii?Q?TEAjNUl87jIoaX48yZNzv/gTOe8V9ZHI3a9fUaNlCfCKzd1w8kYNZ4oTfvpS?=
 =?us-ascii?Q?BUXeTMMhRIUwJ6IxTSWWniuo2uBrX+dzB9TlEQKl+0NxPZJ1HxctwYU3eEaN?=
 =?us-ascii?Q?PZ19vEtmVXQSa4RA7UK7S+rlHbQex6E/Hi0uC1LCfslJ8YDm/n+8ArnQRJRq?=
 =?us-ascii?Q?dbmlUsoA+VX6+bJ8+IWOlL/jDaEzyPAuoAA6SydsVN7n6FBZlomachAq76KV?=
 =?us-ascii?Q?Z4+yqEXAjJLy0gRTXmSKCG+VbZ/tJx+EI2Qy7Cu7WuwQcFPQjKIrHQxGuZOA?=
 =?us-ascii?Q?D+KLiJGQGLBeVcuLg1YjSIHmTAd4/mJ+pXP2DihC57aFQQmk/D8FJF8XZilv?=
 =?us-ascii?Q?ww9bDAybPy5l2HvKzMZ8GijT7Qs7vcVdBkxbgDzhWZ3qjTq0m+lPHd+yTOxx?=
 =?us-ascii?Q?5kKpKaf9uWURsySqCtsTl/yHQQV5qugxU0j4PBmD2jp1SIDSswlv1DSETcmN?=
 =?us-ascii?Q?mDmudXP1MTrkU1OTDOlVnJrETvIWeaV1n2fOXvpsWom1ojYanDViDb9d+t2/?=
 =?us-ascii?Q?UaAoJS6f/uM9R4AgcFWT/Erk3UxVvJJ+LzpwvxRshSW4m72If/uTNcnd0a+s?=
 =?us-ascii?Q?uhtr0uIpp00lenJDjtUD5Ow+4s3ISokzf1TQlqkDmHeefLP+B38ZnCpa0wCB?=
 =?us-ascii?Q?MKMdGALtyI0qjLGsI0906JQtbqO2h0RQ0mfL2uaxnUPoCzi85a8OzWVH87E5?=
 =?us-ascii?Q?oTtbmxP2YGrBKfZYtY80XK2XyU7pHBMee/Z0JZCH+QZyCLLco7735uQxQndD?=
 =?us-ascii?Q?9O7h2N8A5fhNVu3Zkj4YkOcuid53xFK48mo2tIv9/amX5bRGWEM6gWaBu7Mh?=
 =?us-ascii?Q?Zh+hn9k1RXbraBJbv4RpGVdsK50ItOzNQbBr200EJyeAdSAhCQG/l99WexmX?=
 =?us-ascii?Q?jfZg1soiOrgkNEcmTfSWJ+A7+nZj4Ea3X6TP1x+GU+VJkS7JFEOoJdJsKH85?=
 =?us-ascii?Q?9lDUCD3Fl771wrP81PuAKoQmSvgztWHpIqHixesyCi0zQjOjl6h8CAE7RlTx?=
 =?us-ascii?Q?jhsUSSBG0Qe9b9TfhhPV8L8KCSITyS4=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 949d3bee-0acf-4412-c7f3-08de53809413
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 15:21:24.0026
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yfFZ1jyznIWUcdnBtGgK+s+hktrXTLkybpprqHWllhf8atgg28SzLLEwTtS8Hso+F6SXuAAEahgdwJ+n7QdLCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_072134_539471_0B973B78 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
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

The SerDes 1 of LX2162A has fewer lanes than all other instances, and
strangely, their indices are not 0-3, but 4-7.

This constraint was not possible to be imposed when the schema didn't
have per-SoC compatible strings and per-lane OF nodes, so depend on the
two to restrict the lane index.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
part 1 -> part 2: patch is "new"
This is a rewritten constraint from the previous
"[PATCH v4 phy 15/16] dt-bindings: phy: lynx-28g: add compatible strings
per SerDes and instantiation":
https://lore.kernel.org/linux-phy/20251110092241.1306838-16-vladimir.oltean@nxp.com/

 .../devicetree/bindings/phy/fsl,lynx-28g.yaml   | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
index 8375bca810cc..2f245094a985 100644
--- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
@@ -78,6 +78,23 @@ required:
   - reg
   - "#phy-cells"
 
+allOf:
+  # LX2162A SerDes 1 has fewer lanes than the others
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,lx2162a-serdes1
+      patternProperties:
+        "^phy@[0-7]$": true
+    then:
+      patternProperties:
+        "^phy@[0-7]$":
+          properties:
+            reg:
+              minimum: 4
+              maximum: 7
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

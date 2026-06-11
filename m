Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1017CD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 11:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnN84ycj/htzkD9PE+Wv9tu9q6MLlzHcqdsb7IOoK74=; b=FQ+ivwcpQc0fu+
	rbkj34eVEcaBywvQSpR9ACvnCp7xCCpPgND+xAYroDcZthUXRuvWQd1b9a3pY54z3C6g2TQQoE8PZ
	rLH7BqGE8fVECbC32cDdEbJ7N80rzUnEpATK1yJVMEhgsuP4e7v6ksqT6c9uDw6JnnGENH/8ND2JH
	bY1xfOIXRMLqtqnanKNZrzKjmKLaAhXExhe+kIRIoMhOA2ftO8l3Bn/UXF/P77WpKbVhZ5gYjSvSq
	Kuo/2XQAzsKw2FoIpA47FdDb27i2aHAL68vRlKYeRjxwIC/P6PDZZC9EjB/1meJDWHHeKTAePHsUR
	uhujz8GhgfX2r/xmxVIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdmF-00000009KNk-2Jtf;
	Thu, 11 Jun 2026 11:40:51 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdmD-00000009KNP-0vqQ
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 11:40:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TMzRl+xquwZwsWbAFrVRQ6capUeoKlw6c3HAmGUroB77qw9dXwDZa9QKqSwK4WU6sOrIB8SmBV3OvfeMLvFxcgkbiwcB6vXG5QizYQjEibimVkSmJwNicXPlp+QLGC89PLxLPWqsYgWufkPPPvKeQe2tuLt4wFAqTB1UBqmpw5uQv+ki3QaYwZNpB8W0NdS7K0VymozEqr9x6LbPtaBAwV0vKn8dbz8Tl3fK+/+/D1y6vZg6TmxdqaCoFvYl67JLPAB342qOx0XFe3u5o8MKbBJctMvRuO0uqgzJJmISCwvjP1TtH0gVHgG/XwERlWfd1U+gqfXmZhEExZHRbcsy8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B4XruFru1hKPINJcZVgbLal8qKWkaTZ8SlpKb7erqtk=;
 b=Z9bIxhbWkCCsUTFWT7MKRM+KcE5XifkE4yP9FpDtwvy8iZZ8ExlDDEBmaBCTKZiblekLg4niPkq9ExzuAH6Goga4kUiTHLniIS2H27XJ9Xh9SbJx7CG1NHGAA9pD4M2O9MHH0rEFN2Y+N4cJcpCh0l9RThZOhHK0eelE0jbN7fkY6xW+oV3snBjKnWPdtHLoJ6Z2fYnq+kGWUXptBm9/rGTzFZZnEqigSD36DBaYd8aSj5NBPgCQ00BmkWimkSiHW2dgd6az2le9+kNPeZ/OodWaNM7gJZ0v9ozQBLfVWyX6YTjXI+X+E5rW7sJm/p6MbRaQMx+bdiUgu/Vj8gjNEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4XruFru1hKPINJcZVgbLal8qKWkaTZ8SlpKb7erqtk=;
 b=c0LhDxJ7S+YjkEOErxGD/x3RhY11UEOMjn2QBV+/rvsIrcNVDxGgcXkmz6s8Asz3CxVpndHIEu8+UaCZyDkExDm+zNu3lVEeBKQMmmJcUcwigdPBO2IM3KDLJzp5l/+NedTBc/bOohS4OLq6Xa9IyYQy/wT3gOG6ydV58xUDGtHakn6bii5w149Mv/kpT4zwp0LRcbPiJl2A47fHGtZZE1HNMdjb4DIB40CjRAqfsB1JOQpM0wGt1h4TBidArEMyEQXJTbrUCCfxmV+ofcxwbu/AVfeexibnYOteyzI8vBj3jYhJZEDvjE62NsYlgGUs/j1RUNKhIoZHNKYmQJoKpQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by VI2PR04MB10737.eurprd04.prod.outlook.com
 (2603:10a6:800:27c::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Thu, 11 Jun
 2026 11:40:42 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 11:40:42 +0000
Date: Thu, 11 Jun 2026 14:40:38 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 11/16] phy: lynx-28g: add support for big
 endian register maps
Message-ID: <pkazooxe2uv24fergn4rwrhcnwr675ykkpzbq4tywauo3cswwy@rwnrd2perp2i>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-12-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-12-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR4P281CA0378.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f7::16) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|VI2PR04MB10737:EE_
X-MS-Office365-Filtering-Correlation-Id: 27b55da7-eb0a-4c7f-a57b-08dec7ae44a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|19092799006|366016|376014|1800799024|56012099006|4143699003|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: eYDHv/L2oGFbZf45+8KlK6AqzzAK76q6O7FsTu59nI7l1OwEMbWXrm3ciTE7dJnDCom5pSyYweG2ItGDgs8pM6ogQbxZlG9Lnxri15kSFdlMpSbd/U7/wilhRvzon8UFD7y/d/zMbi0gzN6Hjzl9uHkLWvBLlqGpZRyiVMNR+kXCLBXVfnr4L9TacVs2HRpitAK8gI0sc78xJn6Ib5CaF95x58HSc3lvqVZadviyzTBJ6g/D8N/VTBJR9+hozsRzi5B8RTKzvBCQMwaGjIhsV7Y517PvQtaHdsCSp7wOipTtgzpz87si/l1dD21vZDHMake4c64iAS48iI5V7/2o++MBTZ6gsmYaCl8YQIeDQEgRPK4/RO8Yr/b5khGnG1aE0fFeYKND2q1yv9nniQ5QFOxAJdYMI4RHOCyi3AtsXF4iy/Aj26jLjQh4AaC9QIdFM0nfqsdNs5XpZGqofkMsaTQhq6JzjL89+5NQQZjiJKAtpITs2vxjbqpX/Z5PDyV0gBFtzPGlonPECl42AYi4zPzUuy9TErjNKxa4YsYtBqkVmhaQ+rQ/12V5mhaYf4M0R3KZ7CibKUQ11FeeN7FK8YE99/2FG6nadWx/tKnzW0T3hwJYvV/xh+kvlQQWRAw8rCaStAG2mw/nWVSoW0ZTLcb0EkWv0aOPUkznMQXo7rZ13+tSj+CWtEYP0bzkEL+d
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(19092799006)(366016)(376014)(1800799024)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0aw9R0eVJ+2wc2Zb7qMbFgOaexnwzvOPqRGQ46WjvMmiDPq64uzqDs35mLbj?=
 =?us-ascii?Q?XQjKu1OVqgFv3q9LhGJEuE1zI21emamqcmte5d3vevj6PZfkS4YfrKdm/QHS?=
 =?us-ascii?Q?NueObYUIlh3HftE5PMZ4E3jMq2GfhiOWCx8ZHXdYvuN8cSRwIAqIIfcuQCi6?=
 =?us-ascii?Q?aEw7llVkiamw3GPzpSbZs810undXIIvOiYSHZFKVLfbbK3smgH9X4n6zDuHU?=
 =?us-ascii?Q?OeUASXPXIHaE+YyVkzilQ7g55SUlfZ0qVk+73D7EQf0nQtaeImgKqsMRoT7P?=
 =?us-ascii?Q?eTGS689xd+qDWuwH8/t1VNQVZvwQ8HB3qN9MzpzEPN1ERBETBhYgmaiSwW2g?=
 =?us-ascii?Q?hWLW9VpyUy0rP29uy9Ft5K2NeCZqfvZVa9f3nh5KqwYoYFKkYzNeG1BlAErz?=
 =?us-ascii?Q?XnmJYuJq06fmqebRXzOMvglgsbksU2HGgNoPxaqXnd7x7p2ALgPsrWdSSY+h?=
 =?us-ascii?Q?qPRjYvdOmCJChJoBZpccDDnFty7wQVa3dbFJ49/duFX0UJCOruCXyOFQ1oq7?=
 =?us-ascii?Q?Le8eoGMjJ2SwjWHiQJiAXCk3W37NrXi2nM9mqH367tiVHvnSK27AvNVu2usF?=
 =?us-ascii?Q?nihzuk67NVTEzUm3x7kgHVE/aCccOdJIM8+uR8K4dG+ZqqrL2KqT4LMwr+ko?=
 =?us-ascii?Q?2p2z9KZcZV+R30JybzEMnt77Z5hpyo4q9JBvGoDQmoyLftODxehIn7AN3laP?=
 =?us-ascii?Q?yTkEx7NcSiWDGz2OzwLT4O/Yq9ViJGV8kfCM3fepmVtfZj/PO8PHTTSyZMk2?=
 =?us-ascii?Q?fVccpJ6uH6NweqAM6bq0yLDaPV1jSpQueHUy3UEgCKD7lpi7xpTrHp/CiyBc?=
 =?us-ascii?Q?mpuhgZShemi3XGJAuVJ8XXO4FqPZe6RczoLfGM1Ir7ubU0Qs/muZCsxV/6lh?=
 =?us-ascii?Q?lDa7Pxe6AtorbYNe+U23BWiLgeUJxT4wwzQip4MPE2IIdzxGx5+sZaktN4xU?=
 =?us-ascii?Q?K4B++TkQVTUms9mNp4d92Srcw+K2VxW6BmwRbhh1poh+twoeh+l1KIC9ZXws?=
 =?us-ascii?Q?LMvvoM/AgtcKISHOW6jCAt/wG6drbJrQTiuCL7GzLm70+ebMd/6nJ4zjbKNZ?=
 =?us-ascii?Q?vAkuC7yEFWHZD1eLR3mZOdGQIjNdJ1TN+kF/raFE9iGT6HUOfxADpJ0pOwjA?=
 =?us-ascii?Q?RwYVOb6cR2gXXEyXwjtWlbUjhAuyif3VQrpocIFECWFJRKn4VuSk7NWMVo6H?=
 =?us-ascii?Q?V4dU41kJah4XQ0thRsR/FlRLSNpu/90qTZKXnv2C6N/XqsW9bnqmgLNjyOgc?=
 =?us-ascii?Q?tQYnfZCGJuB/H5ASp90ysHtyDCA9R4ETrwjR0TG0dszrshBuvk9dBmQke37r?=
 =?us-ascii?Q?ny/hvS8upo60tK4buI8wKcgAnsYNnVh2JC/bidwPEUVeoiNHyebZT3Jv4I6M?=
 =?us-ascii?Q?e6qwG7bn3mjfE8Wi/sBWXIYfU8et/eocBM1OPuTQFk6Hyok+onchqkZDoGMz?=
 =?us-ascii?Q?/m3VQqNwZfFtl5F9JnnrK/J0aB+UkoJpTwbOzNRqpU/16g7MxOv4zhX15vWi?=
 =?us-ascii?Q?iPJzjjIvtUAdquftRXbV4hISoodorfZUiDKzgfe4qKgQ6IsGGflTB5LrFmQM?=
 =?us-ascii?Q?4WCA/ffYrkgy22j0iQbpTS4Kc/pycRxN15NWGHDkZrNzwGiLxSsl6hWk0cfY?=
 =?us-ascii?Q?4LEz5F0C/QfYQzTZHfRzwYZQbfBHbSw2bnWPBM4IMiV7O5QnHvNcpusDElBs?=
 =?us-ascii?Q?WGkDv0s9vZmZUQoAtEZDpweMcZxJGrWj9//5xp7mjgGMKk+AQdD7oFAL+UPn?=
 =?us-ascii?Q?4LUaC5Sf7g=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27b55da7-eb0a-4c7f-a57b-08dec7ae44a3
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 11:40:42.4285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4J6A0ZMHd5mbEPCKIdsFmyjTyHp/3DRYxqGGcf0ZdytQu+GPxhk2bo0mmySstyX0oObUQM1kw+xCBWXLBmBi+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_044049_266368_AA399E61 
X-CRM114-Status: UNSURE (   8.56  )
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

On Wed, Jun 10, 2026 at 06:19:47PM +0300, Vladimir Oltean wrote:
> Some 10G Lynx SerDes blocks are big endian and require byte swapping
> because the CPUs are little endian armv8 (LS1046A). Parse the
> "big-endian" device tree property, and modify the base lynx_read() and
> lynx_write() accessors to test this property before issuing either the
> ioread32() or ioread32be() variants (as per
> Documentation/driver-api/device-io.rst).
> 
> All other accessors - lynx_rmw(), lynx_lane_read(), lynx_lane_write(),
> lynx_lane_rmw(), lynx_pll_read() - need to go through these endian-aware
> helpers.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

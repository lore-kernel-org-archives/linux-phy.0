Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9344CD6E60
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ostq+3mgqXBmGom+RqrPNhxXyLeyELbscnKOBBEbUC8=; b=gI85qRaoEhpc6v
	loN4WA1ya8z7rfpwWI5bhA2+MKUO8dtOWUdENw3GlPyDfllehPlfOkAtJVgJldnGJ839bZPM1d2Et
	RoIGOBJjYdiF3ShrmqzcvNuRwJbuUIsWrjm8EzkpIyjCSzJEg8nJ5M5Xcx23dt56+CrTYwMz2NKqe
	H20EfC1tOpiO2Re9kSEmuGK+aflC/4Fny7038r71GpwjCJmZppyBqXp5tDl1jPmQU+rMHxHwQ3b4+
	Z0QDATVKICUEcfE+ew6bqp2k5YJMviHDxZrF6MaEkeWkRIaVzZe404dj5I8GA2IjkN28BbPRVM9vb
	11su0p0Z885W61UKytyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVL-0000000FA2U-1r81;
	Wed, 03 Jun 2026 13:19:31 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVJ-0000000FA1L-384b
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XOopo4A9gLc7IUGIP56w6By2h7ePYms32oVfW5JV6L0M9NUdGchttZ+0+WbAx5Z0tE5mdg5Qdl5t+5gbPulvTEyZNWHORBZ+0mX70V5MdYK2BokKnLWA8PQkirNQMPte/7LU/LZTckiqGLnujeBiMGWNCAo5dnkdYpn/VrB2cuq71mvQcisXW8HPjE9yTpliA1H1mpN13HRb3GiJl5gIJBUEtyVaTrPw4VDTbxh9oYNVH8h+hXUYeO/rr1zxlZzwrIIPth18/MA/2lellO3kdRo/MIPyusktavrdwdZM5pUBpUvX74EPKu/AZdfYn0Ix2cmSWGv2MwYpECa0Tnl0dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LmvlNTKoI/e/rTW4ZNfXUI3IConVLwGjNFVjudYVDtk=;
 b=kx0nqy9w6Ct1Z7WHm6QxfDA9CFqTP+zlPNV/huN0U/bbwQ2BcK731ZyvALxx4pIkkRCr/AdKrmaB3vwN/CNRe9oOuENm/oBSrTS75hdx9iZrVnS2kha2sb63gl7RF4DVyN5grABnt8Y856yGfupHOEmqfYz1/owqsZevCZog93Wf0IahT2vba3kJw+/tG9mxqmgHDAqjbI1r0OqLN4pBhSNaI+X54ouGTCeMzNLNHb4ivXJGCYe0miwYFuXLpIpTuJ+TxlEuzcgDfDBUYj0WLeyYAr3CBc3p9K9y2EpRgboX7HXgSs9X3s8xgDxzaxxNQ8Cd7SxQXkrFe2eOCSI18w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LmvlNTKoI/e/rTW4ZNfXUI3IConVLwGjNFVjudYVDtk=;
 b=LKL+InweL34f7d3mEddps/IPgpt0wx+B15Zbff0d6QsafBrsyyJ2Cm/DZZ6nJZAQ0DwN9HUjPz1qEOqF+bAhoppD2Gf9eUZLzQ96hyzs3KP7pqzhZBuITi17yn/ytdBMjgj0B7CsB3De2tw6RdpYQGdAv70FqAY2JzaZuxjYAKJ5o//76wNrMWLiDklfYO74We0e8MCHMy5nrns/EFQK/Zmeht/Y9AjiR2giUYLRpMJ55DufB71tuEdVXVpLt33vX6OlThxKeuZQFW4G3wfjcVokVO0vEAM8SJ6Bn+4M3XvjAS6nK3wKRPdpsiX8nVkb+lxdu+McvxE/6KH04zIR7Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:22 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:21 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 01/16] phy: lynx-28g: avoid returning NULL in of_xlate() function
Date: Wed,  3 Jun 2026 16:18:59 +0300
Message-Id: <20260603131914.503053-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0020.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5db::9) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: e6dc7e7e-904e-47c2-4cce-08dec172b982
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: 7guxC1RPoWXtMDuFj+LSVTOYnXD/sGE1tsmcBL0MkQU0VkjuqeUt2gTZQpBx7/nr4LB8K2+IF/hPwJuVWJZKJU4xZgIV8I5Hy+aETnuUfbG0nA+0NQVPe3YKM7ZSj/odvs5t9iWckxkJFvhPS4bEjms6OPGn/livfJSCamCVKPRU2sNYQHQFfHehwDi4P+hKx23/01KwownbSv4jWGQqcXsQMT+bADQzw9hSVqceOQb+jdW+TPwZ6ZshxgWZBwFtqRbpeoqyIana47J+MMds3tbHA9tI5tlb7DsPJaX5RnplZe8VvPQ1EqdUcXcAa4uskemsdj1IxyC7tM3h2HL9PCifZn7qR8roFX37XdUyTKSRovV0ctwilB/XQ6pxhLRZTAy5pThz5W1ikEyG1S3BfOyjX4c5gFr0fWVgRZhPyJBq5rv4EBTONdgLKii5+6awbTEy5b+gg7xNmqD9vYytolSDt4uzWBksB4VsbGE9KlmMv9GoUVgkrQsj5dkW0pe2BTPsoq1fjcUNe4ERLvC6Sr7j2KGWvGwxDrpA4APPYz4AvAPJ+BNiGQRFTT8k4x6e1NzuCE5QZ12xiMFV9T7UVPcFq7HY1X8uuqELaKKcnzB9iqsyJuY8jO3cxT2lmI5YrXk+/rOcP4H9opXgULuK7+E7UXkiA7GgTx8P9NLB8c8bGmS05GgFUXJUiyrRA7OI
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ift8f0gFYnX/lMPVxNP0mS2EMVXU1c6lyR/yC2n7hE4tTkW/a8m/EtjtalVv?=
 =?us-ascii?Q?qRd0yQdWfxIQ4vhrt+/n2PEy001wq/rrHQOZBeJm/TjeiNt9y4XSaB4V07UY?=
 =?us-ascii?Q?zDv0gRxWQKs0TV0sVoeKN1ykMhXbfHzEGLdS7qriJX+KsCSZinvSzL7QIhy9?=
 =?us-ascii?Q?AdnamN6WXFj9cn72g+lcvh10y5JJPrvf4rXpfGg93/rg/hitQp75a3kS9ito?=
 =?us-ascii?Q?FOEYbsUWvxCYdYcXF5uFkrCrcHOnF0gEe0JPe84AqfkHG5wBiZkrON6B7I0W?=
 =?us-ascii?Q?qlu+cdcVsamPxcaw5IEIrFiAfi3otILS6fGYBa2Ecd8MetgqvKYC0Yx7o870?=
 =?us-ascii?Q?fT9kR0mXF3rkfh9nt9YbPLVLpvyemCioYCDtF3cQadRHnd9XkIcPS3EfLwLr?=
 =?us-ascii?Q?tYPZcPGa/IKv8cV4/ftqs5HUB+x6D+IMSUH0Ol7ZXXCdNSCqbpMtRjHYJE54?=
 =?us-ascii?Q?42xg2smlc5uEWkQZSF/F6Ej++VYLfUQqg2ienlt3ShKToX6G3vTC6t6MhUpp?=
 =?us-ascii?Q?CaRiBN26aAFPWq/fVrYc0lru5M1x5G8+M0RKC7lQdkWDPcAkyVsquFWE72Hv?=
 =?us-ascii?Q?jyGGd7lLveN52uS+4WE/Vx5WL3W5mvf6GZy8zhdJ1jUC9NXarmNnsIhl0tND?=
 =?us-ascii?Q?cNBzEiAIK7rRuLUjxnyyTnIuHw1PUdH2cHuPaunKjx76KxUqHcr6VtOcWGQg?=
 =?us-ascii?Q?ec6370EutStjHsVIOsrpnImSOT+7oPAstl4tYEf+g2TtOXP15sXtT+hrZF7u?=
 =?us-ascii?Q?25pIbDYj8aF4wbyqCDNJ5zinOZNi8xVJw45tB3dzwaWCR8X3rg3noWLo27Wa?=
 =?us-ascii?Q?ecwU95dgpf2M8hGJuICS1GQo+n7OkIsPvkBPVg1yTPhuf/WMKoAP3uOHvbCF?=
 =?us-ascii?Q?KdJasJ2LojF+OGOu6ZknmPfcM0/g7ic3FenWON0Nby+P8j82dQOdA4aI9vv6?=
 =?us-ascii?Q?GP9OJncCqb3w6D9PPfQ+icMCICL7EFLXrOb6qds60+6AAfkEwiJYoXENono1?=
 =?us-ascii?Q?BYRnxt/JPnl5UBpg+b5llOVgHiJbmMrMfHLayzSdz7lkBbqmFaCQlay4tz6i?=
 =?us-ascii?Q?v97JiEKi9MxDBSrVxQytETR08j0WoDJwib+6ScDmNfcCdThH2pZLsd9GzCgv?=
 =?us-ascii?Q?uQXm6bJnA2vS8N8Bw6mSDO2SkODcx/LAN3BNp5y6oNyg8K86KllmCQjD0kIO?=
 =?us-ascii?Q?b0CRg1h6zwvC7CvgY3xt93kkf6vLD1e7vR1/iInSaZee4XAdbYqWbyC4zspF?=
 =?us-ascii?Q?bkq4UIh2i0OQFduc2z8kqPuZB1pusdBMZoRio944zvTtj3Bv2TTd+BrDSjzH?=
 =?us-ascii?Q?jSVgqxyI9qpqtaI57RcQndqtVTWJCJo5cbHeiVJM8eZTx9OoDee3mdw8g5Vc?=
 =?us-ascii?Q?zoSMu/8HIvMjfhFJmW7RNpxiou8wbtaRwgYmVkx1XsBulOvKusF8c692s2Ef?=
 =?us-ascii?Q?QKPf/wPQM2ASMoC14v4jVrRopYArDpagiHh8vGKAX2YqWJRS49Kzvu9laHo4?=
 =?us-ascii?Q?Ro6tdz/VTHzG5gOSmzmjLpxtHANWhL66GRztMAMjPo8bx22B3twV2u/xokfx?=
 =?us-ascii?Q?aJljoITs06+f//eXGbdnI6QsXEqwXmrGaUSDwSzf/L6+dM+xs7Y4hX+97Zz0?=
 =?us-ascii?Q?UcAAHOv29sr/0fC4ojMjcKlifmNdYUT8VJUsiooK4LzPoxfDDvtiBsOP+gkr?=
 =?us-ascii?Q?bw0CK5gadX5W70DPGYXmJtcIYX00024hGQdqiozHsmsgMUUWTqI7U4+/AiP3?=
 =?us-ascii?Q?OBwS9ycZng=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6dc7e7e-904e-47c2-4cce-08dec172b982
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:21.8156
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GS6EK+rU6aF2G6doJH78yMoisT2Mv5OISNRvEc83a4zy45MpRiYi3ywOaPzvC6Fg7WJPDw69rPIsy7sVg62miA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061929_785653_EE8941B9 
X-CRM114-Status: GOOD (  13.47  )
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

Sashiko points out that _of_phy_get() does not support a NULL returned
output from phy_provider->of_xlate(), just a valid pointer or a
pointer-encoded error.

When lynx_28g_probe() -> for_each_available_child_of_node() skips
over lanes which have OF nodes with status = "disabled", the
priv->lane[idx].phy pointer will remain NULL.

This NULL pointer may be propagated to lynx_28g_xlate() if the device
tree contains a phandle to the disabled lane AND fw_devlink did not
block probing for the consumer. In that case, the PHY core will crash
when trying to dereference the NULL phy pointer.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: patch is new
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 92bfc5f65e0b..cacc128dc96a 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1435,7 +1435,7 @@ static struct phy *lynx_28g_xlate(struct device *dev,
 		    idx < priv->info->first_lane))
 		return ERR_PTR(-EINVAL);
 
-	return priv->lane[idx].phy;
+	return priv->lane[idx].phy ?: ERR_PTR(-ENODEV);
 }
 
 static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

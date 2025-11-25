Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD7D3D0E6CB
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHrB0CDjgOwSzezFSmHoWf3Lrfm9pZVZJ8vozo5R+s0=; b=LeMcGOnkbKT+L0
	s65u6jjYMl0ub31b2JTBvMChddR5UyoLUphHuGkkCm5U4O18CFL/MCjO5BTIk5/K8grwVgnenj29p
	8MU+gCTmv0z0sA8e/Moguab+RWkhqNx6PNsuUBQvGjio0KM0QST+cYNlKgmKhUN7mmDV+mb56Bo4V
	TjQQBnPNoNwqPYN1HfECy4MRoHhPMpXBvedhpw2e2fy60QsasSIUVwZcQ3Xg21NeuiPp+KAFVM+q9
	Sk2iNB+GZWBuT60jst/+ix9x7IBLk3nM//gDeulvcoe/+AoUWKxVu/7guhPkeGLmoEtjHyKZLkQwp
	8kBjZrjkA8BasgJbC+6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYM-0000000DF7X-1p2Q;
	Tue, 25 Nov 2025 11:49:50 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYJ-0000000DF1D-3Qb3
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w8JbAIafhqXRgJwH0f0ClKDu0zLzhTwb+CaXQjJFqo4aqRX9vgKwOF1pJKmx1+d3ElGkIGC/NaXxTeQB5pFCT5bLQuzhwIuAKhjy0mN+NcugGGzaul3Sr7cp+iuQyYbjerLxLqXChvtXbKhQg4m7L/9J9vCe6gyxc9M21hSpbhciqoLM20Qx7CxW7TasNTpYfoF9LbjnqccjhV/2gj0MWOt4th/VEpp7wk9X+bXsdn9uIG2eE34r2ZF604IVKOfMBhSioyC7kuXQ3VWx3iPh5BADgxqY+BhnSE/LkT16ZSduTFH1uxw5LyiCs5LDRfc3NtFO1t56aduDNgTAhIdzEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=15OA2yHM8ZG+FC91/+KeFH4r5xZO5NXyXmVN6KvyZ78=;
 b=LYPLZGQJXbiLoedIy8213hBLhlgDpXLc5mt5zbLo91gzojtzLBFpgt9HzvG1ueOVXDLINd6iaBI6l/XC+YF21/h6OVY5QNq/oZ/44e+DSoq7w9OaIOLUBSiDl4QigJXFkjvLhzS5NkJH9XzrvEqJQ1pDF8dJWJw6eT5wmIODLhDqlU4kMk6s345JScF53EQMb1GuOhr1qepfhJZiFTG9dSYzG6aJaNfP/QpFusMqNneP9b9E8E9CiucAg+YGTnL5U4k4pCEkft8GvF3anFkebV6QbgF057v10n+41RbQn1Zrf0yFFCtyesy9m6sCfhGu4vGUb3OFh2Fot+l4P2LIZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15OA2yHM8ZG+FC91/+KeFH4r5xZO5NXyXmVN6KvyZ78=;
 b=HlqIfPVr65PTNZNr/uq/S47O2w0c8rn/ISjcVI/JyhvZHZ+q7qB8WKMpVty6jvU1XdyujXfPhADKB6BiDAqwYbvgtQbBjSK3SNtdh75pYpXmVJEcLJKeIcMTQy3LeSn+wVIZwOK9dmFfyuZInrSbBQTXJ+EFRHcUylyWD8pCByT3VvKgmK5OPNGDoyYpcUABPxBXRsFVWpzirDeXf75tGiFNOgEHCheztWQHFSU0ImxFKfQ7AXogS+cJ5ISj05d24vgoknjj7FHhw60CiVqhdXlYsK8NagKIZTm7nwgSTErwbX2rcoTZN4T7hzTscqfoJ7xN4g0cq1Cu8HeL+0hgYQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:40 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:40 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 04/15] phy: lynx-28g: avoid memsetting lane already allocated with kzalloc()
Date: Tue, 25 Nov 2025 13:48:36 +0200
Message-Id: <20251125114847.804961-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f77f93c-904b-4c49-2c93-08de2c18b76f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GfIFU7tYY0CQPsac1pcbqjNovuu3fhqALh1BKnW7F1ATK2ZRP6aHoeHSRwEF?=
 =?us-ascii?Q?0vvd8SZ/ta5KU7JEz8fODo1CC20rRylKmst/1U1vFNpeIUu7hGXRUxf0a88S?=
 =?us-ascii?Q?LWpXNDAWbk5YYBkRLyibthlOjIserUluZZk7byB9iYjhMs9WWmZ2EBgw2di8?=
 =?us-ascii?Q?l1SW8sh9B1CoejBZLvpSup6FECtcRrQ+r+Sg34I0a7DIimSutxe1SCOdWqjh?=
 =?us-ascii?Q?s/1/+8drFCld81GMMROvMLGG9gqkLkouX/oGaC0dsftxNmXdacYsd4b5fD+3?=
 =?us-ascii?Q?vlUjqMq1M5Kdz+mFUNS6XLteG9G7aKWpiNL8q03wA6NLef76KuRCfbabT5/2?=
 =?us-ascii?Q?2lIcsAG3DdngGBfjsbuD5+jpM1H28JIx3BiqtjUmXi2K06nOXuSgGQ7qIkp/?=
 =?us-ascii?Q?iEq/NXJ47IP9Z+juLcD9XS5LWQkiHjh2pnAzbmkdpMz0YPByJB69jur5VCI1?=
 =?us-ascii?Q?de6nNPuBAD54L9y+nOTWdESrr+QtcwHDHP79pxZJKm2dMw2l1Wqz0eD6uYt9?=
 =?us-ascii?Q?EU9wnPTqJ9c5x0S6Y7UGpucKc38iLZEoSNu6uGbN/05iendBletKydUvJ6Rd?=
 =?us-ascii?Q?f9CKiQmkLdlYExhr9Yj4piVvhs3PfovofdI4r5hQiw6jnwmdspFfLKYucE2v?=
 =?us-ascii?Q?yV1+VNGCu5gWBVhfU0GOnFM9P348wZyzB44U/YwOr/mJq45sOjKwhQBa1V7d?=
 =?us-ascii?Q?WUwwq9DE2ixtsLUZscMENJDMV9Ifw5dx9rGXNb6NvzMLG4dPLt8bfrF6b/wX?=
 =?us-ascii?Q?ZHxkWkeZLZ3L9+NM+uCy296ZwwUSzmUlgn+IF5cYJC10czoH3S3hUELHSahM?=
 =?us-ascii?Q?61YatYmrurK8QvoKSM27KtnaHwPcUuIkBnlBuPNiQhIkqouo7aEKLTP3lijd?=
 =?us-ascii?Q?cYiPryN/B6vQY8rRBZLClTSCdSqI2MKAuPY0w1Ilwx/BU3Nir6p4/H6HyhV+?=
 =?us-ascii?Q?RtAlhLrxmjK4qZmsK4Pslba+I+xDlchZ3Sw3+AbLs34+twqM3QAyFWeyP2BJ?=
 =?us-ascii?Q?iX5vFcvu7BtKlkCGlEiHxwl1CFrkzzU21e2hR5saiNKrD/Qjf+MfIOPPURdz?=
 =?us-ascii?Q?wcjLB25YSLNTtWCASv2LmxyG/mgp0KNRvwoyIOV/yxHg9zojNjvb1ZPfwMSf?=
 =?us-ascii?Q?ZD1JzzoykGTx94pvKdO4Pai/U74asXYdLzQDMD7oxLm4S81e9/P5iZ5s7pOd?=
 =?us-ascii?Q?USIq6uhBNwtrkGNMME9T5BHOuc75yAxEOlsSj7hWViR6GwDHmMCNHVhHi7JG?=
 =?us-ascii?Q?VcbxFbN+Hi9kd6Fwy0lknLHXcQN/4L/0qQO9ov7PRuEwTd9RQtdUhn6TG/6S?=
 =?us-ascii?Q?0oV4w0bisJ8b0I4KUNGp6cCNupJa7EEtAdVzCgIacF9fRqODCG1siDSyamPC?=
 =?us-ascii?Q?azsYZcKiacPlmlGeQsKQUGJ575llROP8cvjhcBROkWLvSZMRCtzjdt2XXaDs?=
 =?us-ascii?Q?YzA5WWLPferczJDjY+n2ToGdpHIw0pYLodsFp3E35xlhUmQTsRmenA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n+8INK9KJF4ldOwwdIUk6r+uY42Rs2OWFMEJstjNtkMzKBgbfqj5XODtSuvG?=
 =?us-ascii?Q?xpd9hZwuKeRhS5ZrAwVIkleJ9tNVTQO73pnR8BnAvaZ7Z4M5mIsQm4UvicUi?=
 =?us-ascii?Q?6XWJWyWNEYUziF39qpAm9MUbA9MMHu+Tb6PQhBcL2Di/rwKnVQM3e+5Zvugb?=
 =?us-ascii?Q?6QNamDMFzusTbPoNdCnjwoKyaDRwqKyctPwwWpEy4QPIgZ87JtTdSrkEZxyM?=
 =?us-ascii?Q?jJ9nnwujc0tQRaUH9nHPkFQL8adhFVs85jusKKTDhZ3Kw51w3kW4m1r3Eu5c?=
 =?us-ascii?Q?81IynyAsRaPbGvewN74IXLuXWmZjgOT3eCj0drJGY45W+RKaC6Ela/PKWIZt?=
 =?us-ascii?Q?RzpaB5Oa+bGDnSC+HuZi6nFurLAjsfPUropAjNvqHTJ+Jx+r5yG7d46s+TAo?=
 =?us-ascii?Q?yK1WmemZJnmsTkV+4ONQjKVLcBIuVdKzKwCqB0v9U6aQI2S9bHulqCbC2Te2?=
 =?us-ascii?Q?050QwVqkN4IbR8li4UzhbZ+evyhH7ce0gvT/cZ6yOJRXtokaGcxyN3GBH1qz?=
 =?us-ascii?Q?XBEzpCmcYG4/4qBuy72G7XSzkajbqdkADnK0lZez6gHm31gsmJ4q7M84arqR?=
 =?us-ascii?Q?ALHt+qWj7YfaMimAdDuXX7GHWOc6Oxay+4FEauZA9k3Lx8q8sJEGnjeCdzOh?=
 =?us-ascii?Q?7xzd2XKTM6o/uSEPr/3cXr2vMy1a99eFysPHRrVOFhj40JcrxbfpXdL+A36y?=
 =?us-ascii?Q?I53VLVWXI65zRjVSwhQtWc4dsbbrvkJdJJMZVyhLHe0cjQl+DxT5sz2TxUAR?=
 =?us-ascii?Q?fYLEXOP5QJjbiYUuz6ytv7lgoQcOswKSRLBiwu/4CL/tLWc++tB5buZ7y24W?=
 =?us-ascii?Q?Ca3H3Y+/WjZBaqlA3kw51eV8Qxh0fZCKUct1LNdd3hOfXlWbf8gb55mhtcf7?=
 =?us-ascii?Q?yxiFg1NpZ9nUaxXkTFRQ8+uBGhvPD/q2TLeiJiB4izbr5aB21rb17szpT5gu?=
 =?us-ascii?Q?wgWvF7ZJzq57fnwBMZFGQ9rKf0l0Di/7exgN9h/B3YhLqro00dwfP4KVRigr?=
 =?us-ascii?Q?SC/bLHj2VVrA4nQpQDIutEyBzgNLaywC7oTQCZWNkx+C0iTtlWB2J6Gff+WT?=
 =?us-ascii?Q?qanEkk6f1xHMrh2UsWxUYN7ROpPLeRqVFc76HkN+EAJOwIiMYyI3jOv2VohE?=
 =?us-ascii?Q?8QXnJgeSFudRjbiL7jkPTEcTz+kjLtmeaSnqfP1HDQHXQU6wNLcw98lqD5or?=
 =?us-ascii?Q?m7S9YlnUx/XU5O3BtfczJNIw9Y5dEV8movqWxupZiyC883XvQybksh9Swx9I?=
 =?us-ascii?Q?hApZGvzCtpOGQydRASO1Sf7Dih2VhazltbPXSeQ3J0QNPf+LRYzq89QIDAuN?=
 =?us-ascii?Q?XJfuzVbx9uKIAn+eegRZqQDDpI+AaImpYMleyuH6zT3VTF5fh+QnCGA+8SfJ?=
 =?us-ascii?Q?LOGbW0w9Y1t45FXzW8wF+BxZyWWU+4d19mV/OAOh40Pmz2KLGUxNSHLqsI3k?=
 =?us-ascii?Q?G49KV6HcsUY+FYu+uNGnsl5iQfy8nisSzuccetF/VOuDLKm+20GrzHIe3D1i?=
 =?us-ascii?Q?cm9ZzTNJg4kQ8RjJkF6eTDtyDRmEnpeWtwP0PY1ZUmA6KdR9GqTlx9fmWkw2?=
 =?us-ascii?Q?LdFGHnr3cEdQttPLDRlMJa+knd92UJahwLdsULdwu7P8L6Jh9XzGeJBuxPHw?=
 =?us-ascii?Q?JT+ZpLeymC3j7BAxc8cGWj8=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f77f93c-904b-4c49-2c93-08de2c18b76f
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:40.3639
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8ot0nyk48LUdczbVFHvvsDQxGHoTW3FU6St9iP8TtFdTFZJfTYR3yrJ4WJfFQOayNjE+XTnUEapE2qeM0wtkUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034947_876058_A192FF53 
X-CRM114-Status: UNSURE (   9.52  )
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

"priv" is allocated by lynx_28g_probe() using devm_kzalloc(), and the
lane is memory inside that structure (&priv->lane[id]). We don't have to
zero-initialize it, it is already filled with zeroes.

Suggested-by: Vinod Koul <vkoul@kernel.org>
Link: https://lore.kernel.org/linux-phy/aRYMM3ZuyBYH8zEC@vaman/
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: patch is new

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 61a992ff274f..f6e6ea1262bc 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -592,8 +592,6 @@ static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
 	struct lynx_28g_lane *lane = &priv->lane[id];
 	struct phy *phy;
 
-	memset(lane, 0, sizeof(*lane));
-
 	phy = devm_phy_create(priv->dev, dn, &lynx_28g_ops);
 	if (IS_ERR(phy))
 		return PTR_ERR(phy);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

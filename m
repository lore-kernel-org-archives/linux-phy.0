Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA21D0E6C4
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTr+vIRX0843WomNydvvpjDq8QcVQgqHp1V7HWneJeA=; b=ayAZtts8FXpQl/
	FR/mHuf8+zYeY33Y4paUraSVjTHsKkkXuFGSBPVNocgeKGGQtWAxCkX1WMGNaHGPqauXP2KKCtN0Y
	KlL/sbnAbu8v/qeRx7NqJriWqB23rbr7XEpHzVUGR7K9O2Ryj1iGdXm8IUpUabeU5zD6Bez4xD8qz
	rBl85fc3Gdfcelsom9Lf1YW9t1olmuugurYMUUHHGZCJ7EaRA0uAZtE1zZYFflqWqR3IOIyiLTUgM
	LItTbhFvEd/sdNPL1Rw1zaDkO1t+7j+abjKMOUqxzwdpNgBLmdwvbWBXrRdkNUtvtHdYq/EqEeqI7
	tzYRd2wBIi/zk9/W4JvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYJ-0000000DF4m-2RYu;
	Tue, 25 Nov 2025 11:49:47 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYG-0000000DF1D-32NC
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e2Qd1KlmjwjXWmFBXIJdXlbrhaoHJ+WYlm9FsMnyQA2m6GcM2b4Xd9QpPx7WeOoB9FgaiG/onNsUoETPBfCm/vW4jpy6f0sL6F/WuVEMn/XlAOtzmj/roimswAALqYi0Zo9Dgk2w5C/54BM3qRvL6ZFxTPFMw5Jl0Z4TuDLnzMi+86vGwfw6XOu8j3tQkfo8H6IDAJWr+6+1qadEcEX5FgmSnH6zqF/3yX0/zdJwp4en2ZhTHNCq78NEYl/D3mv2iCyZR+9B8O+6d5RCwQiIteTXp+V/FLJu6GVtPPYi0AeL9hlXUMV7yxEaccV0l9niO7T56ejj1wQlVrs/Sgs57A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zTi47S5fT2VJU4MEQcynN2RNJEz6WIOUZ1MMi8jwHT0=;
 b=XUfWajABWtx19YS/IXNS5zgU7pd15WGu/PezSpXtWwpPq/6LkAga1wII3e7syNZC6kvmvaEf+/goc8jRRwB1kqVgiXfiT5wFk8Sh7uDbrp0S5wMy1gXz0AciwjYIZdj5F84C0NEMjWlvWCWk4RXQUeL7RD2RH85nzjR12HKmHoi5AstJF7twzwK3xEV28numLGiTQA9kHjQ7tc7FL1iB1SJL508N8puDklhIbLP8sNcjb/q8tdm01fAhj1p4vWF89RTxJx06gU42f1IMu/tfzdkibYN2WNFb+9MMh4OCA8md6P+uMKs7hBbODnJTzSjZxkCnK4qC22HNlcDTSK6YVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zTi47S5fT2VJU4MEQcynN2RNJEz6WIOUZ1MMi8jwHT0=;
 b=BTRAp/ili1+WcbGIBe+Wrlh3PG1kapPqExioIHexMXmW9OUrofF3uqN3DhcRUcUlJbGaID4lVH2RpCbN+IgQJYoK8liXhMkVFJuu6WFmD01sfyCu5ClPbthx+nB15EWDDGH04hUgEF4Kxteurdx5z9Fg0dqmd+tIex9eeTkSv91brg9RONtg0QhPCVYHaVgs6MPXZL26qzSZ9GhHmZ33OPJZAsRm3nZUmOBSKhaYYGr21hYMROGJbaBoB8LRPhcdc8gXi26dhKVMWtMJQyq9Sa818wslCn+fVcN20gbT4/JjgQ91pUs3Y+K/e9D1V6w2q/rDzw1Y4lJZwANc5b0rsA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:38 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:38 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v5 phy 02/15] phy: lynx-28g: refactor lane probing to lynx_28g_probe_lane()
Date: Tue, 25 Nov 2025 13:48:34 +0200
Message-Id: <20251125114847.804961-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: c7ed7438-0760-404c-9324-08de2c18b635
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?BcSaD5eW8VUrU+nNceBa8aIxw0GRbp0C3NY72MTJUw4T8zFLEsnaDzYD+zo7?=
 =?us-ascii?Q?wAhRfW84RsH10UDaVICjOeQY7yLSOv7+o1HosJeYLXG+sK7Vy8BDF4p4uK5h?=
 =?us-ascii?Q?0h7WC52LAlAdrb2t2086GA71Z7DLruxE1ldnsyUXiJDyxpodHHHgxiTQlQom?=
 =?us-ascii?Q?xzro2tH31XdO9orXH3OC272WqRkPpnjuXnVExM29Fu9n6OAPqjqMk0vP3evY?=
 =?us-ascii?Q?kqz7aGY5nM904j7bK53OUbVxe2alh8qdbRLKdCEgNvAZIZn7nzsdoFAqFXGY?=
 =?us-ascii?Q?hZVzRMISZW1E9KsESQJ/kMOw/d7n9LWV4Oh+b9hXJXCwv1gZS6e/pvpex5sV?=
 =?us-ascii?Q?XYO0KSdu1mWn2LIrqDGRT/nWxZ5lp2asBUUJyX9X8zVDrX2ozklvfzlstfSI?=
 =?us-ascii?Q?X2qM9b59Fgx6nTmXzkTK/93GweEnEmtCn2ZvYpjhyVokG7eZM1gffyPPotp/?=
 =?us-ascii?Q?UzaiOtfFSdqhYTx/Mu8zGpcR7XcIZH6FxttjQN5c2UwHMsDbR0v7ZyBGICNt?=
 =?us-ascii?Q?RcBw11nkHaGHfJ2eQDlBFSFHmZCCQdtV02kYxWOSEKBv1/UfVA0uCNxFNypj?=
 =?us-ascii?Q?5hM2b2jB3q7SRGe64kswf7q2QsPI1ZMpa1cUGjgu0RUsdEn8HtDH3cWK2e7z?=
 =?us-ascii?Q?xEiIeTk6Qa8dccKoWGphHyD1HkPCVKoJhW3LhfKV/FhhZzKLfx8+PVs0He1U?=
 =?us-ascii?Q?4ZyO8G7KTBfgS6kdc9OWHXiYUnsyNwfeFuc3HBD5E/TsgYIDt6U8wCUOQxAH?=
 =?us-ascii?Q?Y8Go/cb2aJn2QFl4dm0ftUoNRHXfq16wpl4xx8GD+EaMC/YUM0RPIm7iVfGb?=
 =?us-ascii?Q?7/OHsNDc5uM5sT6v53s0+z5LXV1Y3P6YWfxvqjiyBbeIFAfpIsL3ZJsVCw5e?=
 =?us-ascii?Q?EokJQUMvOdQhx+ZqFOMr4z0dUbl/ovWhRXYdZZ44PT2gYSct6osHU871+Mbl?=
 =?us-ascii?Q?wX8DeUrol5y30KJ7oWT4Hv9fTppyNzOXoXLcCNZe6qicohKoEpI60ja7ZFtH?=
 =?us-ascii?Q?+I9av1ybU9KnsTS/9BXWZ4jQoHyLBIdZLjhKs4adEXmExHw5G9tUpUshK2lB?=
 =?us-ascii?Q?Sv845sWgFrUoA8xXCY38C9AhwCRj6vJMi2lVfriBKghvfWnEc/tOa5VOXX5B?=
 =?us-ascii?Q?ZNWq3SFTC7H5NLDkbgOWsRMSpcXco7t2oM1F1ONUjYASibx406gN+C9oEsot?=
 =?us-ascii?Q?RnJWBryknpZe1wQEAeRw1Owp7foqORFrwB87W6relPGXmfPtCwURWYRwMr8H?=
 =?us-ascii?Q?P0S/l7lZIWeW1fgZmu+rBMWppfIq4EyjhOSy5os/3HPXn++Gnll+XWO0fbbc?=
 =?us-ascii?Q?tJvqKczoyAd95aepgJVa+4bAkINsU8V0SSqbhZ8yESoQ2EZcECimSEQrYWS5?=
 =?us-ascii?Q?dPZdtPa6apHPXyIwcZBtcrDkjogjwsaNgpHx1S+e83Bh1N0FAMijLOI4SKxE?=
 =?us-ascii?Q?SNiqK8n9j0UAkJPvHFY557dkaJJlQ6Ye?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lFEbF+30/whABlUVmLXHOxCqXHp0dB9egHFBUw2AFujgnD7WUqxuVww4TQun?=
 =?us-ascii?Q?lf3cNwuKz0QR1wETcCPixqMEi+qI6geN5VRKaduKhYddLLXnp0kon8HYPhnL?=
 =?us-ascii?Q?bijh9HRXk18XgR8uiq62UFUeCos7Vq5iRrVg88qj/V2LGj8soMvL02cfFnb1?=
 =?us-ascii?Q?8UudFvIGQWcopZyC9Fu12TZFzI3eX28WVsi9Z0bqbdLoT2KCZwWhJKYRiWS5?=
 =?us-ascii?Q?kEh0CC7WW/H9CkysdCDZUKOpCE0lFZc4Dqe5TSlW0ODb+D7WmvPU0Mf4MR5p?=
 =?us-ascii?Q?B6h4JvxApaW2Aqrdc9NV5pDkyLcl1Qk8enfmf/8+8pqIKzSHoGygSny6AfOE?=
 =?us-ascii?Q?RwtEFpeF1b/jwOrPTlqewtatXvVx0sWQoe3XueI2nlZ4J9TFnuEDV3/knXd9?=
 =?us-ascii?Q?h8p/6yGc5GNhLeShFf6ZwqLKi4myoT6OqhgQslWbQsASykeBsqMysit7fF4p?=
 =?us-ascii?Q?IOtQ3lTpEDXvEVTuCtNagk6WQ/BkqEwTb9T5dZad87Mr/75mq+W9Q0Jav40A?=
 =?us-ascii?Q?koxebLu1/Jmx+rFrqCiw+wpE2l1Og2Xcn+48CCVWFEZPG335xv8UL4V6VWgp?=
 =?us-ascii?Q?4lynUW7sBRUYSWpr0ww5+grjSJ9K6OJGz2Cpn+jeX7cZaWhtTtdjRL0mM6eQ?=
 =?us-ascii?Q?qDgNeP0tPnd8yGa9fhvSceyL8LYX3KFGwnWK7ZbV+FCrquZix1yb4q7XaVwD?=
 =?us-ascii?Q?GxVuLiUNHHvKga1UL+fjuB4Hs/IU16cTou2tWRUBxdzN70icbCGCAoDtkSti?=
 =?us-ascii?Q?UTGtKtmhYxD+LYlMNc7ot//QsUMf2xZEur5hmMxwwyCoCJCSBLl1qhf+YSYq?=
 =?us-ascii?Q?3El7BJx4M4FSHEAscThaMhXZVlcrizePWutfBN7hov9QAW/y6LZ3qBrcwVh2?=
 =?us-ascii?Q?kHPzUeaSPEVQpHgCNZwj1QyAdyd04+WPj+Q1k7NAeXxB4fCmIEkOvNhEEkXY?=
 =?us-ascii?Q?nBdKoO7LHHPoO/Y1GasYfOrwkL5rlPJqWGDQVloswq5hbVR3Ss2ziY7OEWpN?=
 =?us-ascii?Q?IzWmcMQTMGeISxwjM9gIXYan2ZfGdF44veUmqt0hbljHkcIg2NRy/ja7IBPx?=
 =?us-ascii?Q?XlDcta4FdAwTsKCXccXX24YqK6XfW8Mt7vw6CGqQDb+l1jeCrzMkebOkpGdC?=
 =?us-ascii?Q?LmKUyxOHig+LXQ+HxYubmnzRez0YLE6hmaxZJqfUpvBrgrBwLip2D3+XxkF0?=
 =?us-ascii?Q?LNUxbHE/+WOVSf8rW+flnGxGEs0nmAZyWq0vzZ8+KnnWdDMvvn9jMOrec3fE?=
 =?us-ascii?Q?4Xt/XQ+jPENUMGnKmwsoDLXyXu534fn/+9EyGq+Bs1WRwsceT1rgR2VOu1x3?=
 =?us-ascii?Q?M/n5dRSX4HTxDhcnLJpU3ExZMlVXawRoJhjYj5xNGC/p8pqCerprl4FoYUZ5?=
 =?us-ascii?Q?/1Esl4CjuL5J1rfEaJWI/P4eABLQX66IJvI68Nfm+JV8mgXU3CdCDhH0s9SP?=
 =?us-ascii?Q?iuef3O8hwgdi6GpFZyY4W8oXYnA1ohrgn0rTBDDVwGe0Tj/SznJiXqx33Ana?=
 =?us-ascii?Q?1N76ml7qpAGdJ+BLx3SusH9pP4cb5cxE3fwxsoIDBuylIg0UXNSqie6VkeUo?=
 =?us-ascii?Q?N/bjl9B/lFeLHi+u3gzGSqYHn3aojHMLwfkg79n1eBycfZfe0GajwbeH9wi8?=
 =?us-ascii?Q?hcfn5NQtu/QTKoxMEdS/Ciw=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7ed7438-0760-404c-9324-08de2c18b635
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:38.2670
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +EVvJBf1n7ez6EZ7DyY9GJT+cWo10dc6m1lUZcPHGPxljSxwUhaKS+OJko6fdo8BMWIZcSIGT47auG/zpmoQ8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034944_762483_B7EB8EB3 
X-CRM114-Status: GOOD (  15.79  )
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

This simplifies the main control flow a little bit and makes the logic
reusable for probing the lanes with OF nodes if those exist.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org

v4->v5: remove Cc: stable; will handle it myself
v3->v4:
- patch is new, broken out from previous "[PATCH v3 phy 13/17] phy:
  lynx-28g: probe on per-SoC and per-instance compatible strings" to
  deal only with lane OF nodes, in a backportable way


 drivers/phy/freescale/phy-fsl-lynx-28g.c | 42 +++++++++++++++---------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index c20d2636c5e9..901240bbcade 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -579,12 +579,33 @@ static struct phy *lynx_28g_xlate(struct device *dev,
 	return priv->lane[idx].phy;
 }
 
+static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
+			       struct device_node *dn)
+{
+	struct lynx_28g_lane *lane = &priv->lane[id];
+	struct phy *phy;
+
+	memset(lane, 0, sizeof(*lane));
+
+	phy = devm_phy_create(priv->dev, dn, &lynx_28g_ops);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	lane->priv = priv;
+	lane->phy = phy;
+	lane->id = id;
+	phy_set_drvdata(phy, lane);
+	lynx_28g_lane_read_configuration(lane);
+
+	return 0;
+}
+
 static int lynx_28g_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct phy_provider *provider;
 	struct lynx_28g_priv *priv;
-	int i;
+	int err;
 
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -597,21 +618,10 @@ static int lynx_28g_probe(struct platform_device *pdev)
 
 	lynx_28g_pll_read_configuration(priv);
 
-	for (i = 0; i < LYNX_28G_NUM_LANE; i++) {
-		struct lynx_28g_lane *lane = &priv->lane[i];
-		struct phy *phy;
-
-		memset(lane, 0, sizeof(*lane));
-
-		phy = devm_phy_create(&pdev->dev, NULL, &lynx_28g_ops);
-		if (IS_ERR(phy))
-			return PTR_ERR(phy);
-
-		lane->priv = priv;
-		lane->phy = phy;
-		lane->id = i;
-		phy_set_drvdata(phy, lane);
-		lynx_28g_lane_read_configuration(lane);
+	for (int i = 0; i < LYNX_28G_NUM_LANE; i++) {
+		err = lynx_28g_probe_lane(priv, i, NULL);
+		if (err)
+			return err;
 	}
 
 	dev_set_drvdata(dev, priv);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

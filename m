Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8109C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 14:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7nB90302XPR68A33He5BBxqNKLwXCAAXoYn073Ch+4=; b=gMxMkKehvuB/9B
	55Grg7t98oPGAyyUY+8tXP4osx+RXu/V4JSoNofNz2MAMF2Jrfi9bAfJ1vJ0HB9rvrRCcw2PHjBN2
	01jgOFgJsHOruf4HyWUf4LVQpczwaOYhx0yrAHWg60lR0BHRngagDcWEZoGEfSnAzaBNO4Z4ISNp/
	hiTPJ4Nb+DCNcY+U2xRsKC/WV30mlo3HBSyt6j2Zh26dg6ZjC902cap6DjtcKh/sFk3IRGRwlTc3z
	bsClXHehLVlP2m2kDxAOLDlW4Q8si682PD+udsQ1CR5HVuj9L5TpZjXFeQu0lrX2vMQnWWtrqUCzI
	HFAiclMFmaU9ssKpfm/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSK9f-00DDvZ-74; Thu, 10 Mar 2022 14:52:39 +0000
Received: from mail-db8eur05on20629.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::629]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSK9c-00DDoR-A8
 for linux-phy@lists.infradead.org; Thu, 10 Mar 2022 14:52:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xin5XIt51uSxTznh8RxW+XXYZMqiav8KpVWWVr9bf808K7lFVt0J5h2uajZsNfZ2i+wXpV54Sk18FmVZ0LQF+QmHxzcmCtl1nDJrl004NpOnAVxedoa5/+RFKXqPT/PTxGWbtqsrL9N0cbgJghlo0DYzSf+B6xfVj87MjMGkmQCBdTIOk09HwnWsoVJHHH7zNpAx8AKfGBbU3CR6ijmTzdEAVP5XmuVVR9ylqAl+xBG3hUExDPJRiMKSwESDiBgV3xdgv0mEjR1kvCGQZXPMV7w8bnp6K1f8f+twZz091BkU5dWtbl3jnLEdU0Bgm1p2vq8/jTILafk2hmz9V8aQbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CZvJ8NS+z0fnddGHLhik/zOI4Em+fe5A5hGRXXFQCvQ=;
 b=joqTxncoi9Sp16vs1Tffb7s8Mj+y/XzZrfXVsFSJYhAQIhMyEOdMmUECu4Si3LuKp4v2dIZ2zIb/Tti9WIxN0GYppfXoWso3VUuw3xwFRL87sHhAbfbAjWFcOOlZAJrKEIYN4YsKDD0kkT+Y7krFoK4IFzBxJ43CwFviCyYG1yllRsmHFFkl3dPNM9WNt9M/WZ6KkdIsZ8ZVHQzhUYxpUNssbk6l1Y1zpH+417SKwfqjHfChO0IPSRLUoz2O7x96NaWkoG5W9PTmIwovvfop1fSb1/GlMK0bsaL0PZuFRD6bwjh1mACG6s9vqdnwvg3SPdqiwMmZKtftj3yji56Zjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CZvJ8NS+z0fnddGHLhik/zOI4Em+fe5A5hGRXXFQCvQ=;
 b=YaHqiR8oZcaDYDQvQkgHOwUPUdL3mjGOmtHVVYxzzlCpakQba7GJnW+sf44b10LYzh8AqNAVMo1gaGWHpdJHk8z02PoyMDrlcrXGIo+5dFQA8RBCQ86gw6LlBR2TfRNItaTWUQi5edXB723zwCHnGu1eVRLhcXwdIwLwqHQ38Z0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com (2603:10a6:20b:436::16)
 by AM8PR04MB7281.eurprd04.prod.outlook.com (2603:10a6:20b:1d4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.29; Thu, 10 Mar
 2022 14:52:29 +0000
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579]) by AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579%7]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 14:52:29 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	netdev@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux@armlinux.org.uk, shawnguo@kernel.org, hongxing.zhu@nxp.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH net-next v3 6/8] dpaa2-mac: move setting up
 supported_interfaces into a function
Date: Thu, 10 Mar 2022 16:51:58 +0200
Message-Id: <20220310145200.3645763-7-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220310145200.3645763-1-ioana.ciornei@nxp.com>
References: <20220310145200.3645763-1-ioana.ciornei@nxp.com>
X-ClientProxiedBy: AS9PR06CA0288.eurprd06.prod.outlook.com
 (2603:10a6:20b:45a::19) To AM9PR04MB8555.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 92c1e1f5-2a04-4d8a-290c-08da02a5994e
X-MS-TrafficTypeDiagnostic: AM8PR04MB7281:EE_
X-Microsoft-Antispam-PRVS: <AM8PR04MB7281EE1DFAE1D0592DC5F08DE00B9@AM8PR04MB7281.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JeIEkVrotiBQjntYsuuGoRMkMaGMWW4y2cjMo2IuzpV61zJBb/f8NHBAAogA4s2wesLBfCkC21kpQPaSSg7xTlKDuqCBTc8vP5GOduBbxfVpRcpHVhpgsRTukf8vxXI1UuOPBrCVlFO1oIh6/wKbKk/O6JUSck4VPUm72HUYd/svYWUPn1kMZrkt9oG/rbPGs9NE/u5hnKO7ggH7gO9jR4pXNOOJssBkEDd4b/3mwzZp/XrhGEJxblptOubp/YOQ9Tj373dJxFnUJhysTTL1GJRgtc8/HT6ZWI/esA8fcqcz+9WbszR7y5qi6kjBpnctT6vAuxRcHG9DR1PxxK1WyQW0h9xw+lLmErD9NEGE6ORHpGAb9PJDxbosVWnEz1gfIgikccZqdIZ5tGazQoXkBCsOfokVS6iQJ9p/e/8p2ArPHoWh0T0gYIxfq8odp1ST4v+B4Ckm/lQiMmvCtxu+2oGoIiug4aueiJXaDooxWF4ec2ub/B5w7Y2PGSanLJzWMaeUwXyVcm9Zpp3XJ7/q7JpV1CGODDa1q5QXeEdJNx9bXZh1riHciYnYe1UdGu41Q+MwbId1vxfA5f6q5tES2GY9+8YU90YAPujyfu47PhPXTfAGBtC9fgbAfZE36y3JlfX00UeYc8EMtVGEJ7vnaMNXsklKeccLcadJVZFsy4eglJU0QNriKWz56vNOTSJokbRMEZzuY8AP2LTEb2fRqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8555.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(1076003)(316002)(66556008)(6486002)(52116002)(66476007)(8676002)(5660300002)(6506007)(66946007)(4326008)(2616005)(2906002)(8936002)(86362001)(186003)(44832011)(38350700002)(38100700002)(6666004)(508600001)(36756003)(26005)(83380400001)(7416002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5cmmRjpAxOcOzxcK7wF4bvvHbI5LiljHRG8QL5H5AFYmnqCLhnwQSiqcrZGT?=
 =?us-ascii?Q?5wJDUPLTZh8pqMOTuvsA30WHhbp2HVvduevqGxTJ01/THozLMb4IoDB5AwOp?=
 =?us-ascii?Q?Cm98xFn/ug4uO4LWWgWicZvbAlstI2Icv6o+pIAHNn2rKu3W+BJpB6zOJrm0?=
 =?us-ascii?Q?9X1+awAebB8fFrRDhhc+qgq+InjjjEuaeef7Qjc4r/UiXUh4GmkTxKTk4UdL?=
 =?us-ascii?Q?A3aMrqr0BRMfT1K/NS8rKsMw8bbTARj+sGHpGJZivVhDsqHG6mYGHCyWUCew?=
 =?us-ascii?Q?wY9fxe2bAek1xFvUyy4LCTU6LxpgKUWn2eDCNLM0T6V+FrbotdCvK9GoAhBn?=
 =?us-ascii?Q?gst4GOgM2d1m2AJxTgE3cHSnxKZ/o0u2Vr4krgEjXzK7/ykrHJ3bD0IGYqUa?=
 =?us-ascii?Q?Sw/S5VtmjbTmS5g6xFPMFv+sd6uqJl4LGOEjKuKiUcsbgs3IsR3n1sxn7hDp?=
 =?us-ascii?Q?+KPc+sdAbU44JIMqTYaoMsGVrGrshx9l+4JNE5vYXhISbFrtaveRd++7yKTI?=
 =?us-ascii?Q?ziJffDt7IoDM7gBVY6i7y0y24DD+OLnC1G9JGlSg4CHv+/WsgBrX5d2llVJ/?=
 =?us-ascii?Q?VmOXhoRYZ1FBi7px7sWJrlbo6QEGGXkJplveDng11bqkBaWaKrp9SSVfwBec?=
 =?us-ascii?Q?XCERzUBrdxRNqDxhux/QPYsq0eOyPlq00pme7VsLvgvzn+Z1g5gRBUGarRXm?=
 =?us-ascii?Q?fwtz9Z14pvJIp8SR8IHdjyAq8NFf+C5m+3nA9CD99L8BifG1PRuaKV2mGcSt?=
 =?us-ascii?Q?tIyFUc1HvxlMkGKdWRtgbF0peKmWHxJNG62YGwpzAhF/bnbcsImDlGNB53+J?=
 =?us-ascii?Q?rqulHeiEhohPlgWehw3ZWSYt5ZCJT8QsAilMzavBeNBiE/zF0pwLVBdm+mko?=
 =?us-ascii?Q?5ThdixgNMLJLxajOKOEiudSw15BZz64e0nBseIPbOyBw9rREjDEqcnkIh7lU?=
 =?us-ascii?Q?h0jR1XUxi0Oj18LFu3AQOt3yfSq6HlV8dU8pLy9BtynW3NT1SI/39AVWePgN?=
 =?us-ascii?Q?AMb7Mx5iUCH68ShkP46B62PYA/EEwpUaNLjnnwzcR2DXcjgtUbDJexh9+YZi?=
 =?us-ascii?Q?hIqaxvK10V1eo+Uyl9km8s5jCd8XC3oiSgs3sAHB0kYZQ4juTgASjjh+F7x6?=
 =?us-ascii?Q?FXvRY5f7ey74O4rFL/nm7reCy5n+D2PmloZm11SicTsCTjOyJB24zZ2xghh2?=
 =?us-ascii?Q?Qoiwv8FewDzX2esJbse5ldtRrHZvL+ZUiT3/JPIHt2MH+sM7En7o1Wwuj3Q8?=
 =?us-ascii?Q?ET0+vYO9g6FddAIvqsitO0de8NmMIWXe1M94xqaPR83d9CW1qKn4881P+aGw?=
 =?us-ascii?Q?nnQaqAe0wzMPnA8mMnx8MIgLGCiqkhpIWUdSwg95eIdD7g/prLwZ/1cEaeo+?=
 =?us-ascii?Q?OpD+cd89DaaEL4LuETHE7dgCuveteJjPlbc6RsGGt6mvcsSouzetht+O+gUX?=
 =?us-ascii?Q?NRwJSq96BjfUjlCftwybiHDyMpTDnwF+1il9Cr7lUQ7D+QFSP0goNbM91614?=
 =?us-ascii?Q?7BAlz1aEtU33cZe8LWhxZrmYB7ZHoFLntLm4Fs7EF+LBFkuZyaEtWe5kOxlf?=
 =?us-ascii?Q?OBeY/JuuMmwt1ZXCoI/wCZYCur3OkUcIk5NDQAfwOouatMleiPUu3AaK2PZK?=
 =?us-ascii?Q?mJP401r61fqMDhBfJnXhFpw=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92c1e1f5-2a04-4d8a-290c-08da02a5994e
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8555.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2022 14:52:29.2557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5TtAPpNWvO44OtsRC9zqU95FXeaP/W0IDe8F0Fl+N3RFiWP3b65pJo+b25G5VtuFIqSb7oEH2KbkTHnXnWblfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_065236_395039_EA9BFB72 
X-CRM114-Status: GOOD (  12.62  )
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

The logic to setup the supported interfaces will get annotated based on
what the configuration of the SerDes PLLs supports. Move the current
setup into a separate function just to try to keep it clean.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
	- none
Changes in v3:
	- none

 .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  | 43 +++++++++++--------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
index c4a49bf10156..e6e758eaafea 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
@@ -257,6 +257,29 @@ static void dpaa2_pcs_destroy(struct dpaa2_mac *mac)
 	}
 }
 
+static void dpaa2_mac_set_supported_interfaces(struct dpaa2_mac *mac)
+{
+	/* We support the current interface mode, and if we have a PCS
+	 * similar interface modes that do not require the SerDes lane to be
+	 * reconfigured.
+	 */
+	__set_bit(mac->if_mode, mac->phylink_config.supported_interfaces);
+	if (mac->pcs) {
+		switch (mac->if_mode) {
+		case PHY_INTERFACE_MODE_1000BASEX:
+		case PHY_INTERFACE_MODE_SGMII:
+			__set_bit(PHY_INTERFACE_MODE_1000BASEX,
+				  mac->phylink_config.supported_interfaces);
+			__set_bit(PHY_INTERFACE_MODE_SGMII,
+				  mac->phylink_config.supported_interfaces);
+			break;
+
+		default:
+			break;
+		}
+	}
+}
+
 int dpaa2_mac_connect(struct dpaa2_mac *mac)
 {
 	struct net_device *net_dev = mac->net_dev;
@@ -305,25 +328,7 @@ int dpaa2_mac_connect(struct dpaa2_mac *mac)
 		MAC_10FD | MAC_100FD | MAC_1000FD | MAC_2500FD | MAC_5000FD |
 		MAC_10000FD;
 
-	/* We support the current interface mode, and if we have a PCS
-	 * similar interface modes that do not require the PLLs to be
-	 * reconfigured.
-	 */
-	__set_bit(mac->if_mode, mac->phylink_config.supported_interfaces);
-	if (mac->pcs) {
-		switch (mac->if_mode) {
-		case PHY_INTERFACE_MODE_1000BASEX:
-		case PHY_INTERFACE_MODE_SGMII:
-			__set_bit(PHY_INTERFACE_MODE_1000BASEX,
-				  mac->phylink_config.supported_interfaces);
-			__set_bit(PHY_INTERFACE_MODE_SGMII,
-				  mac->phylink_config.supported_interfaces);
-			break;
-
-		default:
-			break;
-		}
-	}
+	dpaa2_mac_set_supported_interfaces(mac);
 
 	phylink = phylink_create(&mac->phylink_config,
 				 dpmac_node, mac->if_mode,
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

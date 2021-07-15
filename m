Return-Path: <SRS0=8kN2=MH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1DB0C07E96
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jul 2021 08:27:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99B1A6120A
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jul 2021 08:27:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99B1A6120A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jp9fEf0f5908YfAXijRxVm/RDTaeqVBxS2SFgMLtGhk=; b=qJyld9CdMtjp86
	2vH9GMOCjAPORbl1Oe98GUQSd/eNSn4PJpQaNMQ0wb1S59pqNzLfQwuXHt8b66KlL9K+it6n+L+mK
	Gi7CPGvzKd166S4lJTRFX1D+5mxtLOkA5SOBi3eLaemgvnSyPtNiFRpjHQ2zJT6+DBJUBDWLN1XkP
	7/R1r9DlX9YVZmNxeD8TwUi6IzBthB1sPh0WmU3fraSm+rOOWTGVAPRrQ17kw56UfDKkGalH7kyXG
	DLU4Z7A4MiCs/Aslyfs+vLfM5WEy0qD9HlpfQ5BtvH9uLcoNB2tQuWAoPR+doTY1zFKHwcJY55wL9
	0NtIDn6SfN6GrnOIynEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3wii-00HVIQ-38; Thu, 15 Jul 2021 08:27:48 +0000
Received: from mail-eopbgr50064.outbound.protection.outlook.com ([40.107.5.64]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3whj-00HV4O-8y; Thu, 15 Jul 2021 08:26:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YZ4wFkwfEsqImOJKI7sGcCqFFVLMvTy6ibWPftOJEua7NEntGcv/l7mLA1Hcj4jON1BaYjWvrZy4sZcWAJ8ZGX1JgzcRn33yfAhCimxQub809K4ZZ2QkcLaX3yZDGgwRNI/EY0u8LrDCPT91pnATMF9WboHwE08BuflcG53QOUNOkXdSmxUW84Y+SSCj2fXGqrW3sxBkBpLg47KiSA9khwCl3wLOGcKw8uWnOtHKPHxr8FPGwsw0do0OziXm926mpSdiAqVu9mVhoeF2ypDLz55CRkfwBNlXGo2tnaCD855t79TiuHgK7Z3KgbwFIuzNOdcfZzGeiXZQDRtCy21Yaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5DIDt7yPQ2gDUawmSqmWb3PstRR2PrLiPs+oEMEc8ZI=;
 b=fsi8QeNbOHifhcZUDHHHEWnHsXkxh+gXPW2i0CaKdwXRZ340/4Kcezya8Gv/YoyCtyzxKVLfVAZiw/rtEvIPj/2UAvJozrP0L4t2lw6C8anBJ0omA7uUSrohm971wB4cH0yXrhygUEnffLHs8pUEtdzZXNaV5JSc6I8E/3H36gt3+E48ldcml3Qf9hmpZkx02Owkbkcf7gEog/Z+RcRQZNtHKTpeiXB1KiJV1Wc244ty4yM7Mlpioz7RLvI4CoOGaACd22S5cnX52vkIYG96+3d4zGhugQxSD8CEYSJWO6heVT1RL54uDAy7jQCjR1fZmj4Z9SOsGF1lUWrh1HF5IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5DIDt7yPQ2gDUawmSqmWb3PstRR2PrLiPs+oEMEc8ZI=;
 b=rUTXRFl/rR3e8K/6XUcRo4qswv0bii/NJTfDeyVaQTcGKANFVLKKiva8UuOsBgm0TmIi4v6CEuu8xNauY67jAjgu2cu9bwqz2cmWccpUsUtcEza8z9dqmIY5riYiGnu7Dhx6Qm9sqm1RNlM6yIJIottH9837tCVrc1WuyfgnWRQ=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com (2603:10a6:10:2c3::11)
 by DU2PR04MB8582.eurprd04.prod.outlook.com (2603:10a6:10:2d9::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Thu, 15 Jul
 2021 08:26:44 +0000
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2]) by DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2%9]) with mapi id 15.20.4308.027; Thu, 15 Jul 2021
 08:26:44 +0000
From: Dong Aisheng <aisheng.dong@nxp.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de, aisheng.dong@nxp.com, dongas86@gmail.com,
 robh+dt@kernel.org, shawnguo@kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Li Jun <jun.li@nxp.com>, linux-phy@lists.infradead.org
Subject: [PATCH 4/7] dt-bindings: phy: imx8mq-usb-phy: convert to json schema
Date: Thu, 15 Jul 2021 16:25:33 +0800
Message-Id: <20210715082536.1882077-5-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210715082536.1882077-1-aisheng.dong@nxp.com>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
X-ClientProxiedBy: SG2PR02CA0083.apcprd02.prod.outlook.com
 (2603:1096:4:90::23) To DB9PR04MB8477.eurprd04.prod.outlook.com
 (2603:10a6:10:2c3::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0083.apcprd02.prod.outlook.com (2603:1096:4:90::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.22 via Frontend Transport; Thu, 15 Jul 2021 08:26:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d38cd31f-b0f9-4b2d-a65c-08d9476a4768
X-MS-TrafficTypeDiagnostic: DU2PR04MB8582:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DU2PR04MB85820274F6B13D91BC5E66A580129@DU2PR04MB8582.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4uA82xEDPpVxspEDFD3EEg9Ep19CS08iMrmX/pwZQE5Wg5rIydH/gDQHTgZ8ihXHZRek/Qwt6eq1sw7T6zBtu2RZBO9hrXyKmEUBHque4IfgXuGbv4ZTn3TOlJH/j3oMcsuuJiONAitsHwR66bw9GkoY8VwssssLn2fwl0jGEr5RGO3GKkAn3+nv5YygULg0r8Zgk8Y8NYK8bqhtOtNbvQrX2N9QcgWfoZbpPHaDIqP1pQ50e3WGPT8ZWYV4HACSTtU8+uXhzw0sxH4SLYeaY6LFw0XrSQYccGPdht6UgzTXuFEmuFv3LQ2/J71nmPJJ5scIYjUa1f99m66jVxSeT/A82MGkxxRzWXqfJNbNikTmragdsMOUZ44/a3n5XCirSUcyd9LEqS1Awx23FJ7MudrJjqmzdC5xSojjoRmKpWq/O90lmegnFBCNSozMlnlNpJAQJD8TA5xsYWm32jYaSZfqzQAsdFznNDK8KvY6uOQvK1onKrsj7tgGK4rmlPPXBB/vp10Wx6m+9MFqynJ+VvwuhE0Rwqi8FvTlM25EcYiDADi+z4KO3DYl0N51pDgKwMD/ST1+dLyeO5db3jyQY21qxkX43LyHX1aeebLQuw0vZ1RXnUtsSyr20r01X8RqPx84sJ+7sPlZ/oywgUb5Dudzn9fQ9p9ACrK9qNQEaxZc/XQtvkHpOdno53GuRPiM44ZdRP5UkWx30AwabjMJzrUqNpH2nesgPyfO8W2P8y2fn0v92tItWjBb/RGTqwEagX7jTrsObyxXgI3PkXgwIcXGeGlt+1bm6jk0Z+oNKqCJVtV1gXkyeggiWlxx5UihMcftap+ixLHClq5H1mSTv22/VQ8hzJayOnwt+U5MTCw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR04MB8477.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(54906003)(66556008)(5660300002)(66476007)(966005)(36756003)(478600001)(1076003)(8676002)(66946007)(26005)(186003)(6486002)(956004)(316002)(8936002)(52116002)(2616005)(4326008)(38350700002)(6512007)(38100700002)(86362001)(6666004)(83380400001)(6916009)(2906002)(6506007)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eFYobmR1QS/Ra+P4gLNcZxQAhHmDVhPQxOQWZxaptcGUlEpKe7TsNujDzpzC?=
 =?us-ascii?Q?UvejoB5/kIFtin6VKcwoHs8fCw7rfTtgTsieKy4qY5Dmx+wH35ulcA9lTO3C?=
 =?us-ascii?Q?ur5lc/j/mpKsVfnPUyQcWuFNcXgwW9l23rjtJ/0K7z6T3ckbJTA90qyagMxp?=
 =?us-ascii?Q?QqSJUa1oiCY1PiEycTLoXfhpuOyOXDJFtwe6IsNdBqhO1hiYyYjdsF396sCx?=
 =?us-ascii?Q?LL9LyCLr5E3ym1NknMg9kQRfQ7JgEDvABeRlLgRkDYmGgG0LfNiO+Lqd1pZx?=
 =?us-ascii?Q?TsCVoIEl9FOqISBH8wR2y2G/OFSmYQRjrm833IwqCg3PSZp5jaexWyEId+9w?=
 =?us-ascii?Q?ZAAo7hXwvsFkJahUmwRfHI0s5LoJGswTNfDroWccKEGFC8kISwC0S7nYSfnw?=
 =?us-ascii?Q?QbC7BbKbJNAj+WmVN4x21bYMDc3pMsb9jVBJz6LXnUUDMJFai1+DacNIIAtU?=
 =?us-ascii?Q?iJ3E7XILDyd2r9tpvQlJJEEyT1Vlu7ZuFYYonUNbq9FhrtegnPtRVIFAL75t?=
 =?us-ascii?Q?+PF7EBFuQRMrJEnv1xOENUX+MyjFFhbzos+MEetzgWp50N5sJNoKmUi0BbBZ?=
 =?us-ascii?Q?clgPA7kCi1ECSn3TXb+87i1u0LOu8nqIA9h2jHH2v9SKdCDO0e9fl2FubMZ4?=
 =?us-ascii?Q?TrxkxVkH8bMnTZIsGUTIEsvV4TGZqXrx+FDAj5vsoX6ZWHdqXDQHCU7kDIej?=
 =?us-ascii?Q?kLkQcKdAf+/o++kQNtt8bwUSCFLtsP8xESxfHjcAKbAaewRcpb5gWVjq0jgk?=
 =?us-ascii?Q?wyGHLICKIE6TrIhFMqifmQRUhWzXV78JXOXcCQK5oGe4vUtHIUDSTLBFBwis?=
 =?us-ascii?Q?3U6O4Fbx8GoB1Q/z14J4cfkdY8LM1Em7Aey2sC7cCn5QzMnurC3XjVF6VFI0?=
 =?us-ascii?Q?h0dIT6t6rvFTSQ3GGoDq3HT9g9EbiyLi2EfL7EidcRQnBwgKlTRojLE9xR6c?=
 =?us-ascii?Q?5eF0NAFg4zJTVqwXvcSMvkgjInBQwKx7f78fq0Up4So9Uf4+f/le+gpPyqpc?=
 =?us-ascii?Q?6D4h+HQtqLlMM5UDz5owzBex1rKGJRTHUlc4jTMH2OciuSxQCyYLds9Cc6O0?=
 =?us-ascii?Q?Fi6aVSFpzt0KYl617whOWHk+d2/owGru7nfKzjFmHJjULD4FH1DlUDhgL6mB?=
 =?us-ascii?Q?Jodns25XP1RtFiCtRHN4LQNAwFszrFCS7l4M7Wg1e0IsdVH/E5ir5ccNqvHa?=
 =?us-ascii?Q?52LH9h5RcBzs7PF10zZxytEiqcKVx+879ewGJ79pCynIVt9njKZzi5D7RJj3?=
 =?us-ascii?Q?KAX1MvpiLSeolvLB8IMZpn78oPgH8BjuNxqK4GykX6QzeS6WaZd53rlsZy7n?=
 =?us-ascii?Q?fzmwQJT1IETWt1PhYgbEa8j5?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d38cd31f-b0f9-4b2d-a65c-08d9476a4768
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8477.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 08:26:44.1484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VKk8na2Gpdeu9J5FKME1kT0aTpV8pOkS+tN+O2UI3cfcrRNCNn++72/5TdGBKFfFSeizSnhIRL8Gtd3yVVi4aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8582
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_012647_346750_1457014E 
X-CRM114-Status: GOOD (  13.70  )
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

Convert to jason schema.

Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Li Jun <jun.li@nxp.com>
Cc: linux-phy@lists.infradead.org
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 .../bindings/phy/fsl,imx8mq-usb-phy.txt       | 20 -------
 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 53 +++++++++++++++++++
 2 files changed, 53 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.txt b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.txt
deleted file mode 100644
index 7c70f2ad9942..000000000000
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* Freescale i.MX8MQ USB3 PHY binding
-
-Required properties:
-- compatible:	Should be "fsl,imx8mq-usb-phy" or "fsl,imx8mp-usb-phy"
-- #phys-cells:	must be 0 (see phy-bindings.txt in this directory)
-- reg:		The base address and length of the registers
-- clocks:	phandles to the clocks for each clock listed in clock-names
-- clock-names:	must contain "phy"
-
-Optional properties:
-- vbus-supply: A phandle to the regulator for USB VBUS.
-
-Example:
-	usb3_phy0: phy@381f0040 {
-		compatible = "fsl,imx8mq-usb-phy";
-		reg = <0x381f0040 0x40>;
-		clocks = <&clk IMX8MQ_CLK_USB1_PHY_ROOT>;
-		clock-names = "phy";
-		#phy-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
new file mode 100644
index 000000000000..2936f3510a6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mq-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MQ USB3 PHY binding
+
+maintainers:
+  - Li Jun <jun.li@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mq-usb-phy
+      - fsl,imx8mp-usb-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: phy
+
+  vbus-supply:
+    description:
+      A phandle to the regulator for USB VBUS.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    usb3_phy0: phy@381f0040 {
+        compatible = "fsl,imx8mq-usb-phy";
+        reg = <0x381f0040 0x40>;
+        clocks = <&clk IMX8MQ_CLK_USB1_PHY_ROOT>;
+        clock-names = "phy";
+        #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

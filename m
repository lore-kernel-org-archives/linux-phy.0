Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68B4CDB47E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 03:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRL4g0FnY2HBUhSoT1kROkhGiE/2d/rQtqAByA+zI/g=; b=EohXNbwV20j03b
	fVYZU+9+rc6SccBa2VBk01mALsJ+NmwG7cB+PHJ3cRobZ9XpcsGW0n4mHYydGEvL2s3QNsil63G2i
	qHVO44GPSYdEjSzjjR2PPCuH/wSipIzB0smHicBCcVGWEOmFfr4gLyCv4M1CgA21308ef5yUQlEQv
	qbcYVUnl97/yArB+z5nIpfR8MorF1LmFlP1GuBATDilBoDLg8znmCFSFoZh2GNeHvIb++3PLg56e1
	Pk6+QYMduzqMrNxSmrwZa/1kdGjo2hj5nBXJDfYWHtIjP9K4AJwXEBkLJn/SWTmtg3LlDJYd7Ptiw
	4yQv6qcNxZR1zyhBRYew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qr8oi-002NMh-1G;
	Fri, 13 Oct 2023 03:26:24 +0000
Received: from mail-am7eur03on20612.outbound.protection.outlook.com ([2a01:111:f400:7eaf::612] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qr8oe-002NGZ-2x;
	Fri, 13 Oct 2023 03:26:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSZSDdW2OvcKeAkH5UWC/MCyjh9mq3gJF6YAxbDdchbHkXsZVqDaLG8OpuvmThtMA1H7KQKVm3Wmd8ozzYP/TKQoUc1QZVrElmUj+XYNPamCw6GRRI0XshEC9JkElqAt7NnXfeAQhA5xYPiB8puw5sTF3AhICWW6wG0J9pH/elAlT95CwS8MpvVajoHaVmYe5Rac6g6TRLYSZnHyOqB/1UbVV9jKV1qdbs/jkT511ytsGvdYkRUFe/PifilY2kXS4wFRR7XBzW/S5i9YXpalarJZcAWAC8+Kc8+Tpv70UC00EyQyz0hvaB3n9ak7OGhz1T0fwG2T5Sv1FRKx58jyNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1308iJB0rrs9FBU9OjM3JSsumeVNflID7Tqm8649kPQ=;
 b=OTjZD4rVpOHbZyrMyjVIa7KRzIB3IEsSZTEBHEgKcvA3PtshwJ+KyojYN+v1V6ApDZsBDMYzhsK9y9ox5wlaCY1zJYho+5QL/CE2jkZCqvMkgsXng7WMOqkkEKNDIVVlRwQ576KgKK5Xd2uTKwlYAtch7NF3gPC7MH29uz3L6rSdJz/uywfoy78LfMXAxDYCm2A4wGzAut74MGlGt0DCoRscDRQGMjK2uBbTQElgRaPHrlgPDuH4rLiQjPHZiuFUgj1gJMsEWrKzntX6YDwzCkBsPJi5OUH9Ip9ROo16lYSiTd5kEaqQh+E5IL7sOqITaz993lrSTUVugNqZBKzi5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1308iJB0rrs9FBU9OjM3JSsumeVNflID7Tqm8649kPQ=;
 b=LjEq0Uo7S2jmZBjtl6fzfNjlNiPdrPeGj9ECxLcUH6estjFW/6G82QmI68zU3e7RVJBFKLC5ZoLx0SSo7tA02HxzOlRlYC9RlHBxjKAlOVJU+CXwmQQJiSULAS5vNk19T8qVVbK6BlPVXJJfOqkeOIjT3RKReDZ8W251HYcTJsE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by AM0PR04MB6978.eurprd04.prod.outlook.com (2603:10a6:208:17d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Fri, 13 Oct
 2023 03:26:07 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3b23:7c3d:fd28:c3f2]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::3b23:7c3d:fd28:c3f2%7]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 03:26:07 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: dmitry.baryshkov@linaro.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	vkoul@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: kernel@pengutronix.de,
	linux-imx@nxp.com,
	Sandor.yu@nxp.com,
	oliver.brown@nxp.com,
	alexander.stein@ew.tq-group.com,
	sam@ravnborg.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v10 5/7] dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
Date: Fri, 13 Oct 2023 11:24:24 +0800
Message-Id: <0fe18d7a0ff41a2d81aefc00a9594182d6171726.1697162990.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1697162990.git.Sandor.yu@nxp.com>
References: <cover.1697162990.git.Sandor.yu@nxp.com>
X-ClientProxiedBy: SG2PR04CA0179.apcprd04.prod.outlook.com
 (2603:1096:4:14::17) To PAXPR04MB9448.eurprd04.prod.outlook.com
 (2603:10a6:102:2b1::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|AM0PR04MB6978:EE_
X-MS-Office365-Filtering-Correlation-Id: 409f23d7-c667-498e-33f6-08dbcb9c2397
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J5av+MnFcBhJcEd4lOSQ4RI+fsNDKbzJsP4f6VKi+aH+14y7WcF9xGV8TRj70TyUVabwpwYiltAG3mi5Q3OKZZJ7GzyxhY/HeGpoAHzXjgl8NERoQWFmwqYDI8chGv7DFt2z1++Jk6cH3e1qQC060H8E4ERF2pgbrkeIzv2YEgWWUujxevotM607Y/RZIQ3Fz9rY+bccz1zGH+jLncHUi4qVhYYHRy5eK0bOcC6x9xV+dHLHTySyO/tOZVF3PRToAC6u7kkkghFhf1/Dx/IADfn6c1n0sIe0o9DXMq9M1LKzaivJc2bJsUQjFmoohDkMOpTm/lxKY2BcuZEZKHN3i0ql2RxkAKrbL/FKuly6KENmFw40m40/viww0V3Wqluc4N09KTJN/0VfeCBqCUPy7bu7GtfFieroZCLCXu0efhSo7M+gnNqemJ7tL5hJ+SMK5MAgsGHCupfBurNc1c1Q47J/c9J3zSmUhqwgzIgI/OnO7kfhGyfwBFG189zBVy7X2Rsvy+S71Tmm4QqVJ/Pvin3/X0214NBvle/7xQsgZNGr+SBIWPtVaSpJCgebmbRnWv/8669J3zy2sd4X+4aLd+wQa73EuQxBgrTn26Fi1XMdNxtuo7gDI/1BY3xjGQN1wV9qClgH+nOD3k1FRA7ucA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(366004)(376002)(346002)(136003)(396003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(83380400001)(86362001)(7416002)(921005)(36756003)(2906002)(38350700002)(38100700002)(41300700001)(52116002)(6666004)(6506007)(6512007)(8936002)(8676002)(5660300002)(478600001)(966005)(6486002)(66946007)(66556008)(66476007)(316002)(26005)(4326008)(2616005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JmaKvmh+SxSCILRdDHvhWfkrXbRZbQZe/I7P6BbwGdCN2ikq/XUmY7aQtO7P?=
 =?us-ascii?Q?5OJGeouu3Cn2FLmrffHnDBVyG+soo1mKd9sxyPFPwPtYTXdmiop4fl2l4K0s?=
 =?us-ascii?Q?LPuvatzCidvB3ifMTVYd9EVcPB9n5cMQl4Vmdg+4qflVeyb8Dthr4/OtaJV/?=
 =?us-ascii?Q?bqADJl+SpAEYQMkPUMQRDzjHONr7IdRYw7Jqnc7dtfFldTnWLPbgjTZkdP7K?=
 =?us-ascii?Q?F9TSCakJthH56aKzfJ/NrOA7Egqf0CwlbgEqi/11lWmbMBhNHPdPRHM+e00h?=
 =?us-ascii?Q?j7TQLYKM0U8P/dgYZHB6hyYVupAFu4QTsMowe613onoV7oBLkqnJGLWFAyPk?=
 =?us-ascii?Q?gadbPRnJWbD8LC5xuUzTuD/n9flHUkM12aTyItuXo+pIDnYoJNSUpG9z6pO4?=
 =?us-ascii?Q?puUFzTtDp1DviotnZncJLBiA8RQZY/zn9WXLIgbyNaOJjb0RgjOD5XZ8HCZX?=
 =?us-ascii?Q?hcms2gtzzJSc9h7fMNewzqNc7IQg0HpeJg5qKgoqAiHLg6R1vBgF95dt1ZBY?=
 =?us-ascii?Q?Q+EGExDrwPJHpzFeH/l0ZpX8adBhgV1/SjRdH3SbuqYOHYqxRvQQpM++k5Fa?=
 =?us-ascii?Q?TUL8MWQ8uQR5Ex9b2PqTlcaJUsk4R8dGC549MpmNA58TffnUhyIdKoqz0d9o?=
 =?us-ascii?Q?ulaxMdEIamAuIWqQJnRYQt0+Vp8ofO293/2WVigh1ZW23/fnQyeGPLy1K7aH?=
 =?us-ascii?Q?qZM2tGC2O5r71maitQyMfdF0s+CTS9TA5sbegftKXqt0vSWkPJ8z3ECN3Tvf?=
 =?us-ascii?Q?x0WpsfyxbDssGIG2uQhbFNd0ohbZGFIE0yRh2IpOBLNvYmv5ANx9Yahj1nHj?=
 =?us-ascii?Q?UbHU+pE1vSppEUpOMJj9gZ6h0+Fz5kCaWxNScGS7ytY8FisoZu3K9dIzh+sj?=
 =?us-ascii?Q?MpTRW2v4ZueXvl2Rg4deCin4zhV3OKbb6yedXGr/On4TtUXL5joWHF/tgMb6?=
 =?us-ascii?Q?msXzYQ0l5WrMM4xgGJzxpMf2dHiN0HhzMXylwVCGa9PbS1jaohlwfPRHE9cK?=
 =?us-ascii?Q?Ivq93otI3pXk3oEAHrhkW4wtPWYtA3RUWQN7+QmydbO9vvt5gWm3V9+zcjf2?=
 =?us-ascii?Q?o23UL8r4wdo/Zy0F4zQoVZmQ+5RhO1MibGn6R9EHdPgAr55YD0vh9CIA51Jq?=
 =?us-ascii?Q?FG+e1iE3HsOzEJejZwpuhU2KSJaaeJ8S14bZJKX/wfPmBHRdsotb+qD2e125?=
 =?us-ascii?Q?8cCPBgZmF9bEjHqkPfVPaeu2v8VxCt5QzjqJf57dCCxGMqBlf2uqjKNx13/m?=
 =?us-ascii?Q?XwbQE3Q08xvS6yyT70RMUtFJO5xla9PbLhMq2fuyiwPf36RAI3yRvpmdi+Qb?=
 =?us-ascii?Q?8gtihB9l3WmhFCNPZId+UYE9oojTHwGUsbPol0/ZunVIdgI7cQ6+U/IP81wJ?=
 =?us-ascii?Q?RuuLb6lRpjp+wjHJpF+YRYQQK+5DD/kOp+A62G/y9FAqxbpoqNfosnCN2mrP?=
 =?us-ascii?Q?suAGYmt3Rfg4SfUiPN8bSxVMT4IHwf+kovG8uIzV2XHaUxozQwZZRBbCiE6g?=
 =?us-ascii?Q?rIIQs3tJo9UhwLXroMZnLNYpkavn6ufnC+hVxbZcHCwvEXWxbmbmAJf7QCsm?=
 =?us-ascii?Q?pVNyahXf45s3j79yZ6WNT4M1k0xFVN4fyABpvZwF?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 409f23d7-c667-498e-33f6-08dbcb9c2397
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 03:26:07.7160
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wDDOGdBhNlqaJjZSIAL+HomNJ+/XHw4XnH/s4LIQq7lzCfFO3rDc3xtnfyhcnvWC4nh2WphWixoXIB9cZ/96Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6978
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_202620_981086_B5BAC9E4 
X-CRM114-Status: GOOD (  11.23  )
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

Add bindings for Freescale iMX8MQ DP and HDMI PHY.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v9->v10:
 *No change.

 .../bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml  | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
new file mode 100644
index 0000000000000..917f113503dca
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-dp-hdmi-phy.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mq-dp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence HDP-TX DP/HDMI PHY for Freescale i.MX8MQ SoC
+
+maintainers:
+  - Sandor Yu <sandor.yu@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mq-dp-phy
+      - fsl,imx8mq-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PHY reference clock.
+      - description: APB clock.
+
+  clock-names:
+    items:
+      - const: ref
+      - const: apb
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/phy/phy.h>
+    dp_phy: phy@32c00000 {
+        compatible = "fsl,imx8mq-dp-phy";
+        reg = <0x32c00000 0x100000>;
+        #phy-cells = <0>;
+        clocks = <&hdmi_phy_27m>, <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
+        clock-names = "ref", "apb";
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

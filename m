Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D993C4708C
	for <linux-phy@archiver.kernel.org>; Mon, 28 Nov 2022 07:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCq3bouymvXsU1iGRNF8vBJFlxfAhEx0mOTOCkD4pcU=; b=Y0InLc59Y/+iEN
	3xxCMwYxWQkIGcPFvp8k1ez9VYfFkHIrqKc9iOkBUSBDoa4loERx2QWBR62PpXuEuaEtl8qt7amoE
	mQ80s1ZoabtxVy9Kx6OAndsoDCydt9uCPxhXLetbo2hEZuIHlUiPGM6/5K2qG/rwUS/y2zemzzkSc
	+oQzuQcbuXAUzLrNMsBgN9ao+hrR03EH43R5ndZx0g7QXHyXneJXORJXigWBkxT5YC43YbdRIRk1U
	acxBdBKh6LX28LK1J+jK9AZ/AOKiOBbnMjgCoDkVpAGksYa80yz3lWemne9cO+ObJzduoho+2Tawf
	VKNB58gxfM3UJITrAKOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozYkt-00HNyx-EE; Mon, 28 Nov 2022 07:40:43 +0000
Received: from mail-vi1eur02on2060e.outbound.protection.outlook.com ([2a01:111:f400:fe16::60e] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozYiM-00HMvi-VW; Mon, 28 Nov 2022 07:38:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2o0azFO72y9XR8sFtWT4+6hd/Fsz0DboExYVThqDxyTbLrm2sDwDvXD/DBm3BdfZiWRpf5/DupCiG2gQTZvJNP3IMWiUJ71Yfn/qblk4FAVKN5YOXKCk/H+s1yx6Rx7y76UhBraU6hDNj+w7UJH9SxGq3CtYUiOx5fMl2detE0EAdCBDObdjzxZHk2FHk0vXbgY8UFTkkrzGSlf5NVsLN9/p3SIA14QlIK4bnXTHZxqVbxecyJjC5AKyjzwQlKY0oATHYfsiVKDunjHdjzqMlVSv8u5f9yMbDXVZLcuj3A1noVz1Pivc4BoWeKFCZbJOrjuxKzwIPAtByl7isEcBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/vPbOCHYxUdcclMhsWnZCMmCN0Q9mN6cwckXEv40nbY=;
 b=kCboZ8X/lRwXPpGlDJ43Hsty7e6rMqCaGAUSFpwCdmo73tPycSbOdZ06t4m+fU7qS+xll/020rtorZswKiZ2Oo5n0Zyn6S2Su+wmuyOYS7nIuLZCyFZ0MXe+1d/xUcHB0hemTsjkC5fqkkmn6G1EVw2Qw1lA+MWmDf9CbWYLRG3PlzDeC95k/RqtGKAmlQHB1VpKLm7C2983XHd5oLwkrH13rRPW1rSMP/7FFWV2aQBr9wA6UaO05VnM32ijX7DL93Dyxwl5xy6KCCm5KncGei4tn4SylgV5RqNIEtzWPIQZ472xKqORo4O4esnroXMXFQssuJ44Q3zTX2weskLIlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/vPbOCHYxUdcclMhsWnZCMmCN0Q9mN6cwckXEv40nbY=;
 b=KzkX7D7EyNyJMwFh33hJ+rrlsHBb4gSGHpEKt42wna1MiulYEgLABCPpnb87VRyWuvU0ObBwj8wq2NE0/HH2q5HdvdJC+W/Lsurc8/IuhFwT5irDxkorDRLY316D0SILuN9sJRttcPw+VBxyxVEKlmuESKgkfLM3Y30Nn27uEls=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by DU0PR04MB9249.eurprd04.prod.outlook.com (2603:10a6:10:350::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Mon, 28 Nov
 2022 07:38:03 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::d0c6:7b1d:6982:d400]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::d0c6:7b1d:6982:d400%6]) with mapi id 15.20.5857.022; Mon, 28 Nov 2022
 07:38:03 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	robert.foss@linaro.org,
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
	oliver.brown@nxp.com
Subject: [PATCH v5 02/10] dt-bindings: display: bridge: Add MHDP DP for i.MX8MQ
Date: Mon, 28 Nov 2022 15:36:10 +0800
Message-Id: <f5ab57311a0dc197ec25bde415271c4b4b85635a.1669620155.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669620155.git.Sandor.yu@nxp.com>
References: <cover.1669620155.git.Sandor.yu@nxp.com>
X-ClientProxiedBy: SI1PR02CA0051.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::6) To PAXPR04MB9448.eurprd04.prod.outlook.com
 (2603:10a6:102:2b1::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|DU0PR04MB9249:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fdceb11-fb10-412d-e5aa-08dad1137b92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	q7j+FXOBVBYdBcVaES5V8+OrNOhZvzYyYmwb+MDhepTnqkshRp0Xu3F/J1wz0f0w+THW/xgrcIPKuRkKcnHBeTa6due2fdOFHPL4ej1xPsvJiF+m0xleFUPW5Ob12GjUG86lIgHQz1SlfhcAcX6BObZfvWYauudJ6kFoVbkSNKSRI0/bi6avuoLVuDbtcBAhAJQMOjDEpLWIc5hcbpcTnVa1OASvqLrqQaOarxxR+xRinnrynpaeinHq1uEpJd+mN3lKQNB1Ab3zyrCznWhQYExJbc0XBkF/DXwWmKjvClDHJ2UT3ROq3mo7D3rAhBlCMw1crq5OSoZBIBGzMb53czf8hRb7jo+aLnLpxsXSkc3LkLnpRAAh6lynBfXB4nMpQDQdwRpQ3t9QNW2Lt2xdGbG5NSgoRgAwdV+9V2+Xc+3K0eGn9uFt9uV0+V0ulCGMbKvxYL3jxYRaDXLrWrKaJ3TqHlrF0UHWZKT98vMb8auTEOpDsgzAfa4q9hKk0VvuqwN4g59Gz4aCmPoqQKqK651172TvHWsshAjfaw9Hu1henzSEvdE/xSZ8z7HchSY+tmIxwu9ow0hjYXrS4j1t9z1TP1+T53e0o2hvwyFu/FcMmejDbE106q6qoFghCjHad9zJ3OL6gnydJE/VF/eLq4ms9hCunnqTcoGIPZ9EBGbKR3k9XLw2T175Hqeg7o1wvHDf5LMVBcaVVyfz8dm8JpW08yy9dq5O8POT71ESVxO6Hlz5OwyhdJpfDgm5DF65++imISIqkOUi9xUQY9lVF0yg8JZEmCk9It1mHS4kQu8=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(366004)(39860400002)(376002)(396003)(451199015)(5660300002)(7416002)(66556008)(66476007)(8676002)(4326008)(8936002)(41300700001)(966005)(66946007)(6486002)(2906002)(316002)(478600001)(36756003)(86362001)(6512007)(6506007)(26005)(52116002)(186003)(2616005)(921005)(83380400001)(38100700002)(6666004)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?j+w1AeKgno6BKLYTKLJMOJ2/80w/L/0udKMj2ZJ8RGeJuG8Ex5Fp1Clcuqf7?=
 =?us-ascii?Q?W6Nk1vBPcydJKddynDFSAtyTRzWs/3QUws/TI5Rb3p6hRTIf2aJodK6/Bdil?=
 =?us-ascii?Q?J9W58lDhng5nGgOwC+h6zzOfgqjNHMqCudsOMkxlKhv4UDgqgP2iasPnNul5?=
 =?us-ascii?Q?0Mi6aSVHkXGpI6vPw3RN7g7FRe/deyVkt/fUNkt4nsG1FMM5o75tFhWIuULT?=
 =?us-ascii?Q?LLVCbYg1cwYvauvelQChoeYVl0YOJiXRoOc/oDbGq9GqXBberUaDhwM1r6vA?=
 =?us-ascii?Q?6mjyx+ccH3JJoC6/PiuFuonpkjhTwCLWVfmC/OlIY6Q4pu/naOlccllCIwq4?=
 =?us-ascii?Q?9y0QZnpjRSJasaCpMf3D+YpVoua8Zx/NbTiB+uhYFcvhAY1rkVIQE44VM4Y0?=
 =?us-ascii?Q?fbVKpWZBr+9WsrKTZCNu8y4cq3kqSf7ZbY6dTGiUSh64Wd0uiLp8rIlTMW2d?=
 =?us-ascii?Q?nSpTadVBqDfEW/1RcfhyfYNcGaH+mEdROu3kR54BrY3hK0/WzVhVAgkFj6NO?=
 =?us-ascii?Q?X4Kq3vXqArU2hKVaGQP5ax4c8UCk1nDMMZTi51PPOWiqYFTw6xtW5gh4WrXV?=
 =?us-ascii?Q?0UzxbObxd6ul26jefxEEaR46MyvR0iHEAapZApsGIAjp2z2O39LKbLG+w0Cp?=
 =?us-ascii?Q?eP91Rl3Gy0AG6Tt4e0B+SzOhlrCjjGd4oHUiCQqCrN8spj7z8Yr6YOjNFwt6?=
 =?us-ascii?Q?mdxqIztK2UG5QuUlwiv9dxryGCHKafingIOmW4wunv70gJ/AL6ej2nHxnk3E?=
 =?us-ascii?Q?0jymHtVcPpgc5PZro3qo1dXhIXFBSQX60pNRq5XHIgDeGJzHVYerD4ikKrqm?=
 =?us-ascii?Q?LN69uleWURHlAxDLwoTuedf0/kcF8WSVcuUijT3aQPv4FOZjRaQfMIaNwrtA?=
 =?us-ascii?Q?OI7rc0wNMd1AOOeE0it/tbkqAlwJWYi4goqy3QD86WLYLwtGKB5X4YjSok0M?=
 =?us-ascii?Q?fN9knlg5uc3V4kQbtnRkM2a7DRWDLYWGKIJzz4zndFbWKKkk/9VaQXcdqRan?=
 =?us-ascii?Q?kF5ygGPKdOebPRpOP832HhGATwTRGhgg+BJ9iabuxKUi8z5ESukfRrflkfUW?=
 =?us-ascii?Q?QYQKxZYlsglkUkmBhPd7KFg33RPODhWBOZU636N5YuvfrCjcEp1DF9xGylcp?=
 =?us-ascii?Q?PVZFuONJ7fUHMVgD/QrRH4445292Alg6/JEtUK7gH+1yfy/hgsQJnlEp8sM3?=
 =?us-ascii?Q?6WLWeKzdUQ+yQIgGWu+ktlLKr4fgkmmWYAvdrAdwM3IyEuJz2YhX7KgVf4XV?=
 =?us-ascii?Q?6cd4sCm3czsr56zQDw2U9mBW23lv2Wm6x7w9VcjPgbhdCv6Z0cBCAAdAnzMt?=
 =?us-ascii?Q?swArj6ku9oai4qeiqGrLebCPSj2FqLKh0f9tAApsc1gyOohUw+g55ipIEmj9?=
 =?us-ascii?Q?wtaKCYGFHEXorWHIgMflOW6vbiHm/8C/HRut7D2ApKyQJFJDC6kfYzos1hjh?=
 =?us-ascii?Q?0rZM/X7hpmO4D1z2jMgPjddfOi2/EsIfAzsu2V22J05pzkLIurcD/YmAmF7o?=
 =?us-ascii?Q?ITPAdyV6gXL8pPoxAwJHL1IM/GmUx+qa9sAPWK2ava3vgRI/AgRfl6XLniCG?=
 =?us-ascii?Q?wlpiS+f9dLrL4EYkhANupVKDlCYCcjWzU7jcIwvy?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fdceb11-fb10-412d-e5aa-08dad1137b92
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 07:38:03.6342
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: txfIY4L/xc/pAPqNMIKHFSg3eSwOynC7E798Yoh7alZXSuSfkmL6sEr16Avx0d7GJMfwz4L8A0+vV6IkifobsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9249
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221127_233807_093948_380297F4 
X-CRM114-Status: GOOD (  10.55  )
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

Add bindings for i.MX8MQ MHDP DisplayPort.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
---
 .../display/bridge/cdns,mhdp-imx8mq-dp.yaml   | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
new file mode 100644
index 000000000000..21cf87c79766
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence MHDP Displayport bridge
+
+maintainers:
+  - Sandor Yu <Sandor.yu@nxp.com>
+
+description:
+  The Cadence MHDP Displayport TX interface.
+
+properties:
+  compatible:
+    enum:
+      - cdns,mhdp-imx8mq-dp
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description: MHDP DP APB clock.
+
+  phys:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: Hotplug cable plugin.
+      - description: Hotplug cable plugout.
+
+  interrupt-names:
+    items:
+      - const: plug_in
+      - const: plug_out
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Input port from display controller output.
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output port to DP connector.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - interrupt-names
+  - phys
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mhdp_dp: dp-bridge@32c00000 {
+        compatible = "cdns,mhdp-imx8mq-dp";
+        reg = <0x32c00000 0x100000>;
+        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "plug_in", "plug_out";
+        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
+        phys = <&dp_phy>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+
+                mhdp_in: endpoint {
+                    remote-endpoint = <&dcss_out>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+
+                mhdp_out: endpoint {
+                    remote-endpoint = <&dp_con>;
+                };
+            };
+        };
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

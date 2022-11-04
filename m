Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69CB7C433FE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 06:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uijlz5SsRD14YajUO1PM00wZ0tmU+5/L9+HzUp2IWc4=; b=wAVQTYcngqPOwA
	NISCnIowgaCt/35JvZSvRznzfIyGwHoxtfTnUfngJKGjVAvnLzpUSSTId4gP6f7Sj+2W88+iNUC1R
	Vp8cmEyjzt07ZCwY6eemnCP9IIvjowGoaV49lwyWkeJwR9YXIH+eOKQbxVK9VU41Y+4qUE2wVI1hl
	niK48tTRkyU8Wwowce2zMo0VHU9hu9wDD7x0wPQstQCysWMmPZad0w6qe1aTyQAvjNF2+c6hZWOz+
	2lRcnYtiiXZUtxS7CE2N3ty6GiwhZFUKWgaotXwaohlfdrshfltaCL7X0pz54lANfm8x2Rshn2e6j
	iQhaC7VCqV3Q28B6fjhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqqX0-002dzC-7J; Fri, 04 Nov 2022 06:50:22 +0000
Received: from mail-am6eur05on2075.outbound.protection.outlook.com ([40.107.22.75] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqqUc-002coZ-S6; Fri, 04 Nov 2022 06:47:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L90jcqxsvNfrZvIX1wXteHrFVvvb6EuqU05zk4ewiHyu3kV2rqdLCQe+0oVPPqLW5behaHPjjEESyQ238v9ODeaW8xwK2mRBcgHGIsm+8cIU79r+bUdU3JF5PGTmWmqFdOxU2BfbhGtJEpYBaz+Y66aZ72dEHTRXXQvS+zq4Bac7JNCytay8s59SP6+66wxkW5zoQ7WeLit7WdM1SfjZ3If7Qa/NV5wd/UzIi2OxEvTh2pfwrbzfJUPW/XvQMGeGtKOtg/hS7mFhdWitqbwsdqkdWI0boftdB/a3XlUkN8r5A+AzYIyhRwedZigpyi5mTYyw+If3VPjLb6ugvkxIZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vhxMHNVkqbQwgbuwi9FxS3floekKWT8jcT1OWIzdxZ4=;
 b=I0GEV+Ahh63IztpPZe5abnf733hP57cnoVGBJbjLx2N9QTQBpMSG2Bt9HDzfktW1yRiT5hh77NIC9zaToa1PsuZkFjJSftvT827rlV16/cHAzIFjL9mMNqpDXdEbJOemZxKrp9H8ATadW7Er5P6ZTmN1CP6my+zYAiRmcqqHRJAImeD3BIZgtQJRqWOeK5EwZdRpwjcCJr+RudYyCyfa7oGSk3bAVvBT2ZlTjQnFONQFqSGn3mTyab++nRKAOL1q3cOwqy0P1kctdrXaGB4W3hOhXKXuD6qr7LAwTl6o3TUMTAeoUGvXfcj9Svxp3nWfBVvqUh7pUg7AiYwjSdpOqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vhxMHNVkqbQwgbuwi9FxS3floekKWT8jcT1OWIzdxZ4=;
 b=Dg0osJe00RHjTSNGPbkKIPdv0/g9N9Uhe0ijhfLFSkiwP1LHizBacNtyVOgIljNhZKZIzgCdMsYWThfJV53pxxwjeIXbAkyaFQ+otZOurvZlY9J+IiedIEBHUeCUrfGLu4tKm90J3FBldZ6JWIJ1hMU6/B1PXi+t+sZz/LwuD3I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by AM9PR04MB8081.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Fri, 4 Nov
 2022 06:47:41 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::88a0:57d8:2a57:3f4f]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::88a0:57d8:2a57:3f4f%9]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 06:47:41 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	robert.foss@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	linux-imx@nxp.com,
	tzimmermann@suse.de,
	lyude@redhat.com,
	Sandor.yu@nxp.com,
	javierm@redhat.com,
	ville.syrjala@linux.intel.com,
	sam@ravnborg.org,
	jani.nikula@intel.com,
	maxime@cerno.tech,
	penguin-kernel@I-love.SAKURA.ne.jp,
	p.yadav@ti.com,
	oliver.brown@nxp.com
Subject: [v2 09/10] dts-bindings: phy: Add Cadence HDP-TX HDMI PHY bindings
Date: Fri,  4 Nov 2022 14:44:59 +0800
Message-Id: <f1a558c1511f310475002ed7a18d4e0406318b63.1667463263.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667463263.git.Sandor.yu@nxp.com>
References: <cover.1667463263.git.Sandor.yu@nxp.com>
X-ClientProxiedBy: SG2PR06CA0194.apcprd06.prod.outlook.com (2603:1096:4:1::26)
 To PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|AM9PR04MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 3af3b36e-f593-426f-e951-08dabe30785e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	eFXb5KUYqifrKZhtnw4m5o/rYo5pRybLzI0HNy2W0ZCgQH6P5NnYwwVrFW4XrY4G0zV0QKjJ9Anw6D+BB2yTbMJcokD8GeXRi4zv/kZ6QHLpxiAqLJFQ7OtlEoY+mojQDnd+JCg1U2nbCBN6P1iIknePpf8OrZBLpWvjpGYm+2bTKIxE4/bOn0fdCa23vusgG9wh45Mc3+dqZHcPsQTwKscCdXnoc/I4c9TJ12PW4ut3x9OQn7JAoDx8cpN6dlJZM0pWSp+xRwlRf3wveUN8NXiXjMtTMddhW12wZqw9zncpuME6DlNMS7tI2cZMxVVdWpdpFKdx8oAj6Vi5FYCARR7ZyVZUtS9v+IygVzbYymIytyv9NubDu2sESf0WoTirLGoxNE/3XH2sbnLRQu5JKe9m2CMR/sC8yRkR/6nGaqlbRdR/hjyxJo7MJ9GTD2dzjirrj6lJBEo5N5sbI2wV6w8BeE0z+lHn6lkWE52M2mAnNUozAQfXpgc92pObEi8HQe/SvoTJA/2dOsvNAOkhNSJ0bVI222sEj45AEbdjtak4hBCTwtaEx4wDOaOQb6w5cK/0nKiXjJKEfyQNwo2+g41JXXGKYAbR2G02lTMTn0+cRRQJv8zC1DgMTf6H/fjyX7pJfWwztScJ8xsvjgLZVFeRP+XGD2h5acc0Wfa+j62oUR0iIyt0437Fxrb76xTV+6zT2jar6Ef0RhA3ut/sDEtOqBO4p5PjpoR1JDyKrKJsZ/6aRvjZ9aUXcXPqko9NEv1xj389zFzY8goOKwlbi8HFgMhJ9hRiyMxp4AhH45YK4wxyH+SW8c/uH3VBJv9eB/NwVGsGrFF2qzrrYHDvCQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(451199015)(316002)(8676002)(38350700002)(7416002)(5660300002)(66556008)(66476007)(38100700002)(4326008)(66946007)(36756003)(8936002)(41300700001)(83380400001)(6666004)(921005)(186003)(2616005)(86362001)(6486002)(26005)(478600001)(6512007)(52116002)(6506007)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?Se4mXwgTV/9vuMXXdh9zDQAlRGbW0Nt8DqIHA6TYIpKJMq2xyYGQnkmkWlOq?=
 =?us-ascii?Q?V6XTQ4RgZoW9FChlHr127ZRB81ujzSkqcI5F5gnBCIRabKlSxLefhirIXJE0?=
 =?us-ascii?Q?SVAYdfYFmJ834ZkGPAWpfBZ4yA6aOcRMgS8OI1JVQrxrrpt1z2jKw6Muqjl4?=
 =?us-ascii?Q?Xj2FCwNxUz0caSkE4qojpVJFrEkBDKIyPzUdxepmY2CscrzpS0nuZTHXlaZN?=
 =?us-ascii?Q?thLhzNCTfP4QSuZHAPs38viJwZTmEPW8QgenVtcrx4ClwsLEAMNjF/nNHjOo?=
 =?us-ascii?Q?RmxeHXItfsEZXYLoaRn+rUVxk8OlYcc0L1A1U0l3mWsDtBKmQ/Trzhyhhhwt?=
 =?us-ascii?Q?PJdU1E7oIIo5pjgKIvJZupqfgz8VxJTW1pNpe3WRyUtjswDBeIbRABuDLoPl?=
 =?us-ascii?Q?mcftNfEV8n2iYKf/HzJu3wZKyKoIzkW9SG4/xuSIoV7mAUP/Xy1ZB4jaSD6u?=
 =?us-ascii?Q?p57wWJMSlOMG1I0TsOm4RnNEcqwLrG6i9q4ZtzyW+V6tx7bLYc9kQWdhcsLc?=
 =?us-ascii?Q?3rKq8xSyuFurP999rWS6EkGwpWRgR2AIxm4f5xmkmh5TSPUi9kzq//dzh0QL?=
 =?us-ascii?Q?xZ+Qx7Vx5s+ANv/+DnYca3pff+Lq1lNYA2WMsFny3ZERu3zQRJoPUIHIff5Z?=
 =?us-ascii?Q?lSA0V066hkJkcY7uTn+wr15L3UoBLF/6j+PfxaJfrATI+TZ9/v5CQOFgF1u2?=
 =?us-ascii?Q?xa0dHHqbtBXEA3EiTQ/Yk4TjJkQf313GRC3QcKamVNLze00ta/xe5Gd82qnM?=
 =?us-ascii?Q?wyTmzpk71lpN+50xm6pbNYDwyBsf1BPRo1Wr93N+gTvhEqpYQFvZ34gwP8De?=
 =?us-ascii?Q?4cwTAkxxQlPPFiFKmdYGxiGCBr2m6CcwrmRnInuPq/YZksoJXIRTJqEKjNSE?=
 =?us-ascii?Q?upcZ3OCkJdITQWxbhIG/cedgtMZPG/WB7e3wsA29xRrXrCcqYZnP/xMhRzTW?=
 =?us-ascii?Q?xaOiOFkoEvexbqkpGCQ8ECLrz7dJbnlHhe9QGS3FzkZcBwy3DIi0Lfq3sVN1?=
 =?us-ascii?Q?kru6RfiYRhJ7BQkregXaSOhNqUdh2bhq7/w2MhdzCyY+VAe81TIUlLmgU1mI?=
 =?us-ascii?Q?Z6LFkV/qEAHBWbPmZhI1BCwMOxZtlOsJ/YG8kPIiwf/GjmWzQe5lD7BOlMdX?=
 =?us-ascii?Q?xuCZ8zfOdPtNqxTUilNwbyYiVkbswxNmFgPd0YHess58KmM2kRscGfFJIV6H?=
 =?us-ascii?Q?d894a3t5/FHO6gcaFNlRQW27JjwSd4a5xjN+Qqd5oDbPHa2csEG7yzxDVy5i?=
 =?us-ascii?Q?9Lie/8LGvLf5hJIkbpbwrbYd03NOn7dOgmHBEASRlLszy8C1R03DbmpkI+7B?=
 =?us-ascii?Q?d2AD2OLusyQYawqtUEGOc0DbqjsOM/mn5zjgcFfancSt95opy1JLIpi5zV5N?=
 =?us-ascii?Q?5w5b8N9etSoWjcaYLZHRm/wBAv4QIPzANnjQFNFBN/47SypRlcdflvB1Egq3?=
 =?us-ascii?Q?fyA9k8FDrIcishref0aKLKxqISrTqy10ef2RMJyn2Ltu3Q5H/r1sqqrP81pn?=
 =?us-ascii?Q?Nmlt8yrbshg8/9EdRYH0O8NdBFZ7TrNsCQiUy3tV8AM8dKDF+hqLg3TXE6MK?=
 =?us-ascii?Q?2QNt0CbrWC6SuV3vrX+FcIioLHHbLAfhK0ttFs1Q?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3af3b36e-f593-426f-e951-08dabe30785e
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 06:47:41.5415
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HMevoGNNqJRIUJyiTKg121oyEC7AkVXlM4AXQSluVItjTMghtXDlDeVwlDEktTSPJxf2u1hjLgUpeckNebTtBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_234754_941050_0FB7D0D6 
X-CRM114-Status: GOOD (  11.50  )
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

Add bindings for Cadence HDP-TX HDMI PHY.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
---
 .../bindings/phy/phy-cadence-hdptx-hdmi.yaml  | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml
new file mode 100644
index 000000000000..edd7bf1c8920
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-hdptx-hdmi.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/phy-cadence-hdptx-hdmi.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Cadence HDP(HDMI/DisplayPort) TX PHY for HDMI protocol binding
+
+description:
+  This binding describes the Cadence HDP-TX PHY for HDMI protocol.
+
+maintainers:
+  - Sandor Yu <sandor.yu@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - cdns,hdptx-hdmi-phy
+
+  reg:
+    description:
+      Offset of Cadence HDPTX APB configuration registers.
+
+  clocks:
+    items:
+      description:
+        PHY reference clock. Must contain an entry in clock-names.
+
+  clock-names:
+    items:
+      - const: refclk
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
+    #include <dt-bindings/phy/phy.h>
+    hdmi_phy: hdmi_phy@32c00000 {
+      compatible = "cdns,hdptx-hdmi-phy";
+      reg = <0x32c00000 0x100000>;
+      #phy-cells = <0>;
+      clocks = <&hdmi_phy_27m>;
+      clock-names = "refclk";
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

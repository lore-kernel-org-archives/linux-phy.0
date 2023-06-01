Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1887C77B7E
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jun 2023 08:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QMMSXMWp0spsvini0enz/6HpVafvDgVYmFVTmyFe6vo=; b=gJqakKqE+0YqXn
	imheg3Uv8uM8LUTpsWYoaIqcYFRfkeO68IAAuf7+Jbt1r7e2MWTQu1IbUaz6DBn0TDiVXYmZcAGqI
	u0P7qP9Lmnm4JeRqMNCl7qdvOGcEZLD4RnZcxA6YiL8JgRWDDBx+vJVAwydxIHRaoNOeDAj8e8JsV
	oIi3WkYNLd5dOLNH4tZBFyfpVYFWDh0A+zOGYRV6t5nbG1ORMkq09MNCPiId5xe1Q71k0Yb5F0KhB
	Wp6V3ip6vP5s0irsHs6qTfpJIqwIU8cNFuxj6C4z2zE/ro6qpmv4eB8AC6WbDQ9Uz9Pw7CiqAvV8k
	rC5oe9BGGjiSl7U8jbDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dII-002To9-1D;
	Thu, 01 Jun 2023 08:04:26 +0000
Received: from mail-dbaeur03on20604.outbound.protection.outlook.com ([2a01:111:f400:fe1a::604] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dIE-002TlE-3C;
	Thu, 01 Jun 2023 08:04:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EaGdrtH/5uRUqII7zvUAwnhCBYM/qf8R0yf34ox+e9gXz+IdWa2gmBNnOf6C04bJ8eNRJxjgziswidfTi4iZdlGj4i+BCQD4HagXPff6K+fgruPYfnh0ppHbr7V0J9IMhJtTgwa6mbJyEmwspjKfdJm4Ym/rU5eW0bxU2pP1i0WEBJfiAy1jYevQMVxGR1SmqW/XnaQ1xiM0lqkOzDCRKEGW8Z6h/sYAD1DYR5WoGyfvxz3oDC8k6EPTZBpD3gVJdjn8yMunn1XC0kCWtRbRepz4mfLXBifS6UbEg2aV/1Y5E0lMO2NJoJaKf+69S5DdVDRHI6tlVJVGa18nhJlxUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DGV9Fxdp99xkJqU3GToijzFpKi7qAahMb5Kjvws8tB4=;
 b=QSQ3S7QvmaFldvcyQ6q3aNwPN8QAuaHga+709Ap1FWLN8kJrPTs87sTLD5P6gdZsTI2S5Euwmh7g2Kk508Ja6ZAQkbcJws76y7/w3KDAkrC+3vpmDsoMKPFeJ3oASn1qUyPal7rscoGy1VhaarFLVTenQNKq0eLmhLf0g2gQ3qjaEhD3RZ7EijomivjZS2DcjmzFxZEsC4leKd2fWsALyFzr8sRBV1d8rVhkHIP8PJC8etdXmRrqZ1/Z1Xb7J/nJxQc/9W2jFut3tcjCE7/iUUNTdf04C3/tB5rUB6setmi5E7BBQ38w2Ig2y7ZGZ/xFEYH3nGXohVsK488PX4+0Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DGV9Fxdp99xkJqU3GToijzFpKi7qAahMb5Kjvws8tB4=;
 b=g8CFCug9E9Pi3j4EXm4A9SUyGIxMP51Qo3MyagzCstA09uEAjIvn2Sv11t5YVAlmRp+PfSvIBSd1b0qbq6945IRRz2/3suCT7JBhl3HeWbyz4GkfuNvhnkK6+a6W/eMz+KiUdPP//t4qmoXzSf5YNj81tIogjO+idW1uQZR3hsY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 DBBPR04MB8027.eurprd04.prod.outlook.com (2603:10a6:10:1e6::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.24; Thu, 1 Jun 2023 08:04:17 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4%7]) with mapi id 15.20.6433.024; Thu, 1 Jun 2023
 08:04:17 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org,
	jun.li@nxp.com,
	xu.yang_2@nxp.com
Subject: [PATCH 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT schema format
Date: Thu,  1 Jun 2023 16:07:22 +0800
Message-Id: <20230601080723.1556461-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SI2PR01CA0013.apcprd01.prod.exchangelabs.com
 (2603:1096:4:191::9) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|DBBPR04MB8027:EE_
X-MS-Office365-Filtering-Correlation-Id: da01c06c-fa2d-4d23-060e-08db6276cbbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 35yLG2HqL3DicjiSWRFdWUk8rpSVip4MKJB/ZOlp+fT+1Jyps7TsXSw+9UJon7+ve6F/GBt2knBvKLtOSMKUslAnNj17hu3wkqnU0IVqWbNEjeLptNzX4dkmwUzjLx2NFoTcR6dVdCbxHidSeyPSC+KKW7fZ2V1vifX4fPSGCZSB1ETvxED88mGE+gTOoJ5CdgHhugInIgpYsecxH++Mw3L/iwX0C8sLmjGJIDd1zDYcF3QTmUNT6A7PfUd4x6yRqkIKiRzGs7DhkcQLmvhRxXDUwSb+tTBvcoAwuvthmxzNShuL1Jxksa0f1uD1nXexZAbqdkShLeTFZXgDb6+aTCPWcjyMhEdI9djRBpEcxWeCHoO7USjmef0NWGwopYA6peTx29dqAoBRMZoX7Oyx1QVFc8AF/kQazqr+FLNfY9QpbW7DDuIuQWjWZVHJiopmT/z1ijmQN9J/7eQ3ol4k4BO3JSJq674gXCtxukk0vqpM+2kPuKLp8lENs2lkl2Rq2Xs9v03gWka7mEfoJh77mHooYdhR6QT7tvpOZP918nxpC4wGAtFGVSHNhFFupo0bBZqtHRBiXCr45ChjY96C/SlM7wLuo25uqepa/Tlae/8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199021)(6666004)(966005)(6486002)(52116002)(478600001)(83380400001)(2616005)(36756003)(1076003)(6512007)(26005)(186003)(6506007)(86362001)(38350700002)(38100700002)(316002)(4326008)(41300700001)(7416002)(66946007)(66556008)(66476007)(8936002)(5660300002)(2906002)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TbpbQHuHe+vlQyn6exx5ZkRE2JaVC1A115qzY3tpGUTZAzisbKhD6RZbFJpS?=
 =?us-ascii?Q?O+vbv1vWYInCrdFAP4oPITz8eKH0ZyzbmfaaEuJwxDkyU7o665TOM2PK212s?=
 =?us-ascii?Q?Wc8QkgR6LxrzEILO8bNYvN5PWVIbwAj0pOUl7Ea7n7RIO06c5c8HZfFpa1vZ?=
 =?us-ascii?Q?bWPJvNSh5HKoBl8g7tgTVKrVeucPDbp6m93N4STA3g07zNPd98ZP3IZCh7R6?=
 =?us-ascii?Q?cwVj97ifUPM0sEr+HNugtyDFo2vaYbpoXOlqPqg6pxqINLkEUj8gQG6QOCCz?=
 =?us-ascii?Q?+oYQ4coIMjFvAzMkK9fjgKCZKesV0La2w0VdFdMq4pA6vEmukQ65AKKtrdYq?=
 =?us-ascii?Q?fFXD3L6NELou4a7izsZBTMnd2kAj9DFLE2bFjt8ycDAAQ0jJNKU/CbbTNRqG?=
 =?us-ascii?Q?SLroh5DklhNNMiDpxlNEdL4qgS1Emlh9zXoQNm+43S0u0qa6dlM4R7QqdUc2?=
 =?us-ascii?Q?ddcfcheAISikIvJG1R2lui4vaf9MQyhp7ERjGy20k7sMp5JPfdUBPPdF2T3y?=
 =?us-ascii?Q?0Bgsu2RIE0JWHAYhwXk2d0WAvhF/IEMhnJZLMNM6N8s3nrZtbZype4+whs1X?=
 =?us-ascii?Q?FDC9hjl9A6EAgp4VO9orQAUjIfSf0rKyzDGNmxUIBEI2U1NGubukCqMWEFxE?=
 =?us-ascii?Q?eZ1+Gn+EA+sO5ho59zA7iNYAncYzZykc48Sy35bPdfO6q/KBAK8dMhQdcl7X?=
 =?us-ascii?Q?wJCgyB70sSCew0e2I6uRlPBq/oQAbJ/sT6SpIds4rE0xHaFKbccEAwYSSIPK?=
 =?us-ascii?Q?YMSLQidfzmOjnUb5ZG/uMXM2xgjSu2mZhG28ScLaFZ1BTLq6+TvCfgXqtKbo?=
 =?us-ascii?Q?fK7JdsaBpDTK054BPPsTVIxTmDbK6oid2TF6/1xbixKkErV5Dd7j3gb2jvY/?=
 =?us-ascii?Q?XNY+XgHqeNkNDMBGn1c0z7i3jsgOjlAVaAWvE0gAEvaazG2BXnSfuxvSYRqx?=
 =?us-ascii?Q?DyHyUTB70J5WxwhyLAQmG9CsoiSwx4pr15iYG2HdQt0mSV7hEaanY+aDtfpV?=
 =?us-ascii?Q?gcvrVirGC4ED8M87vyCvOR2rgmlSLtEE/L/7YibIoh7Lxce176lnTTgNvS4d?=
 =?us-ascii?Q?4iBRPeCUi69u0H3rOfpZqu+nsGq9odrnQ7aTY7ojXsszUNtbtgdpITMsx12A?=
 =?us-ascii?Q?twOaDvmajBqzNOBtL4I4aYHnrEG4dkua64iyA8mp1+vKGBUbUJvH+xYCOl9i?=
 =?us-ascii?Q?VtHaC3l+8B+NGBmcNh5pHEymzCcnewhNYcw/pIGyzixWnI8SdhvtLWU4x8df?=
 =?us-ascii?Q?QZde/ZKT2h8fcS16SUMyG6AhUH4cGoKRvbWRpl/AeFaLaL9rG/fGNG9A4qpJ?=
 =?us-ascii?Q?pnKh9m/UcglEsTI/TqzyewIobCi9GGokNjdPPhXXHwDKJ1GgZYFIZXQ+lDl3?=
 =?us-ascii?Q?Qmm8SFhq0uTYWv67trB79WGMZPqVlipCtxaW2wdAWGdoKSUJBlNBqL5xyWyR?=
 =?us-ascii?Q?nlwt2dJfmkwYL1FE2TMh63372SWFT+sr3zpI8qX38o+payXTFiMRjhuCxVuw?=
 =?us-ascii?Q?i9binrcX219hoYfMwPAHs4i6LNk0/G+/WDCQ/+RkXqtpToeXn1zuJYDpNKYW?=
 =?us-ascii?Q?7T9YiiBM8TdpUakbgjcbGwWUp5rllYkRX/Sr+oDV?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da01c06c-fa2d-4d23-060e-08db6276cbbe
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 08:04:17.5477
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kv/iBraCfN8uHxMF6U+9RgvIDI7eUpn4pvGd+f8vCdG4gCfOGOtIclnHVjaCfsBnOq4f+rQ69+onfyB+WZbLFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB8027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_010423_036161_C186E002 
X-CRM114-Status: GOOD (  14.68  )
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

Convert the binding to DT schema format.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 .../devicetree/bindings/phy/mxs-usb-phy.txt   | 33 -------
 .../devicetree/bindings/phy/mxs-usb-phy.yaml  | 97 +++++++++++++++++++
 2 files changed, 97 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/mxs-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt b/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
deleted file mode 100644
index 70c813b0755f..000000000000
--- a/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
+++ /dev/null
@@ -1,33 +0,0 @@
-* Freescale MXS USB Phy Device
-
-Required properties:
-- compatible: should contain:
-	* "fsl,imx23-usbphy" for imx23 and imx28
-	* "fsl,imx6q-usbphy" for imx6dq and imx6dl
-	* "fsl,imx6sl-usbphy" for imx6sl
-	* "fsl,vf610-usbphy" for Vybrid vf610
-	* "fsl,imx6sx-usbphy" for imx6sx
-	* "fsl,imx7ulp-usbphy" for imx7ulp
-	* "fsl,imx8dxl-usbphy" for imx8dxl
-  "fsl,imx23-usbphy" is still a fallback for other strings
-- reg: Should contain registers location and length
-- interrupts: Should contain phy interrupt
-- fsl,anatop: phandle for anatop register, it is only for imx6 SoC series
-
-Optional properties:
-- fsl,tx-cal-45-dn-ohms: Integer [35-54]. Resistance (in ohms) of switchable
-  high-speed trimming resistor connected in parallel with the 45 ohm resistor
-  that terminates the DN output signal. Default: 45
-- fsl,tx-cal-45-dp-ohms: Integer [35-54]. Resistance (in ohms) of switchable
-  high-speed trimming resistor connected in parallel with the 45 ohm resistor
-  that terminates the DP output signal. Default: 45
-- fsl,tx-d-cal: Integer [79-119]. Current trimming value (as a percentage) of
-  the 17.78mA TX reference current. Default: 100
-
-Example:
-usbphy1: usb-phy@20c9000 {
-	compatible = "fsl,imx6q-usbphy", "fsl,imx23-usbphy";
-	reg = <0x020c9000 0x1000>;
-	interrupts = <0 44 0x04>;
-	fsl,anatop = <&anatop>;
-};
diff --git a/Documentation/devicetree/bindings/phy/mxs-usb-phy.yaml b/Documentation/devicetree/bindings/phy/mxs-usb-phy.yaml
new file mode 100644
index 000000000000..48b0e654e52c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mxs-usb-phy.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mxs-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale MXS USB Phy Device
+
+maintainers:
+  - Xu Yang <xu.yang_2@nxp.com>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - fsl,imx23-usbphy
+          - fsl,vf610-usbphy
+      - items:
+          - enum:
+              - fsl,imx28-usbphy
+              - fsl,imx6ul-usbphy
+              - fsl,imx6sl-usbphy
+              - fsl,imx6sx-usbphy
+              - fsl,imx6q-usbphy
+          - const: fsl,imx23-usbphy
+      - items:
+          - enum:
+              - fsl,imx7ulp-usbphy
+              - fsl,imx6sll-usbphy
+          - const: fsl,imx6ul-usbphy
+          - const: fsl,imx23-usbphy
+      - items:
+          - const: fsl,imx8dxl-usbphy
+          - const: fsl,imx7ulp-usbphy
+          - const: fsl,imx6ul-usbphy
+          - const: fsl,imx23-usbphy
+
+  reg:
+    minItems: 1
+    maxItems: 2
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  fsl,anatop:
+    description:
+      phandle for anatop register, it is only for imx6 SoC series
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+
+  fsl,tx-cal-45-dn-ohms:
+    description:
+      Resistance (in ohms) of switchable high-speed trimming resistor
+      connected in parallel with the 45 ohm resistor that terminates
+      the DN output signal.
+    minimum: 35
+    maximum: 54
+    default: 45
+
+  fsl,tx-cal-45-dp-ohms:
+    description:
+      Resistance (in ohms) of switchable high-speed trimming resistor
+      connected in parallel with the 45 ohm resistor that terminates
+      the DP output signal.
+    minimum: 35
+    maximum: 54
+    default: 45
+
+  fsl,tx-d-cal:
+    description:
+      Current trimming value (as a percentage) of the 17.78 mA TX
+      reference current.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 79
+    maximum: 119
+    default: 100
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    usbphy1: usb-phy@20c9000 {
+        compatible = "fsl,imx6q-usbphy", "fsl,imx23-usbphy";
+        reg = <0x020c9000 0x1000>;
+        interrupts = <0 44 IRQ_TYPE_LEVEL_HIGH>;
+        fsl,anatop = <&anatop>;
+    };
+
+...
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

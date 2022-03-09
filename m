Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 098AEC43217
	for <linux-phy@archiver.kernel.org>; Wed,  9 Mar 2022 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeYnSyVCv3Q/03U61w1vbALcHiEN12ZQ8RmK1/n0bNI=; b=oF8oPKU6f+a5Bn
	UmDFJqN3ad+FLKKz2szSL5MO+IUH70oVaaFgtxxq4ZGm3c7lhilvz4wVLNhxPCKEB7yIIkUXtwQpA
	qGWURMoEtyIFomdXh9Kz2MM7qybezhzrCG3fp7XJRWUbUevFPABVFzWD9fHBEpRcl1nkoSpyvthBl
	M7BHIwxcEWFYiaBuuPT+xeBebYHgwXMIlkcGOTAMj9sYQA2zj5lGp1jP8p3ent+G7GLl8nyLBOFXO
	+H3K0r1QvpmmjS04sqBZDMJg0C7dtqK/T/aVrQmKH90DzcIfQ62oQkr3TiTKgxAkbu8SVDEnNSP+x
	qwR1OLjco+hl6r+ZXF6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRxSS-00918B-Am; Wed, 09 Mar 2022 14:38:32 +0000
Received: from mail-he1eur01on061e.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::61e]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRxSO-00912E-Rl
 for linux-phy@lists.infradead.org; Wed, 09 Mar 2022 14:38:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BC7KuA3vCM/e0o8882E+eQqmuhK/nzCL/3Aes+aDdqhOJw2eQRPZKkE07la2/rOH9HutCClq/Vq0kqwwzXZgi4aC71sgHkekAkLDAhainMt8phUODVsfyTD+qSczgTgHt78/mgKMQ/qyq7XTkEPeGbh6oxx/rV7BXmrN26ig+KjmVM7cIZ6ZTkjUFwVk1EZzELxZnn2GskcGzDb2pLcNll2f4hp1XB+STZ4/DrKgwB3esdiiF54nl6v6v20Foa6kjAFk/z2cdjj7Ovx8JC+i7jUkkrJe0Pbnvl3gCFee7vlhXgdp07ehiaP0LPaVW3+hphF1MJxYmbRzyENWADa1pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2bdR469xx7MJvTIBj/rrfleLf3VAsldBQB9gWoaYGp0=;
 b=I1GDnsRwKxPBPPOCHhT3/lkqpFGcCzKG8vw3X+MPErrLeWqGlvX7hAnzxrgh9e26yfcHm0k8f+Kp1nK3JmZX4OF4sypIwiFljZqyKWD6XmtL6LwV4FK+jFGibK+FIl7hMYnII7Xou3PZFc3j09bNIyEBkTU6nwdFFfnMUwykLIzO/mze/+1p2WVV4nZ3njkAELMvZs/ErG/CqonwQTfnohGyv1W4YpY2I3V30V4U7kCbfyuPsbZD5MQMGiKQdn2EGnOrxHhc97Asyk+dJrLHcaKMO4KaY8Pk0NHkDB+lLlQHcf2rLALjjlqYRN2wVbd13FSbkmAXn+yOhBPA25NzSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2bdR469xx7MJvTIBj/rrfleLf3VAsldBQB9gWoaYGp0=;
 b=eUGGMxUj6m81ufe3E8Zf1QCiVPSbFdmrBEZyQkIKQPG4BENZdvczeNeRMmhHpfMG5Eh0qIYKyRpRNE5JjPaNaVs1mgEXkM/cwVHLeeRYHj6NtPll9pPBsVdClE9W28OC9ymHzWlYggqzG8Z2qIxyLTGKGXngre+yz5jWm/nrDHk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com (2603:10a6:20b:436::16)
 by VI1PR04MB6223.eurprd04.prod.outlook.com (2603:10a6:803:fa::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 9 Mar
 2022 14:38:19 +0000
Received: from AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579]) by AM9PR04MB8555.eurprd04.prod.outlook.com
 ([fe80::c58c:4cac:5bf9:5579%7]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 14:38:19 +0000
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: davem@davemloft.net,
	kuba@kernel.org,
	netdev@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH net-next 2/8] dt-bindings: phy: add the "fsl,
 lynx-28g" compatible
Date: Wed,  9 Mar 2022 16:37:45 +0200
Message-Id: <20220309143751.3362678-3-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220309143751.3362678-1-ioana.ciornei@nxp.com>
References: <20220309143751.3362678-1-ioana.ciornei@nxp.com>
X-ClientProxiedBy: AM0PR02CA0187.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::24) To AM9PR04MB8555.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 875cfd71-bd52-4bba-ef59-08da01da743c
X-MS-TrafficTypeDiagnostic: VI1PR04MB6223:EE_
X-Microsoft-Antispam-PRVS: <VI1PR04MB6223D3DEC644FF65AD9CDF54E00A9@VI1PR04MB6223.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VE3i9t8IpCu3B7e/nOacSdYtuj9BEpRK9UdK1lpZe/fcH52kcx/VMkpv+jnCC/6NlJqWNRylebamXkoCgtsKBiIgxF04WD9LXxhwcySppU4PAPnum9pofw1mhaipml0i3MA/xEQa5McZoyewv4b5WVjgpB5nX6Mog5Q8Q7uvnFnYZvOYyamjX25F0r1cLerwCRNe+8KHUzjcLdhlPGy8mLtgt/Xx10XkTo3YMCwCOCaOHsQhXqmlJc/BCQLXupSL+TSbmaCNsppjzd5ZercAWhqlYlc42LmzWRiyihQ21u1m6qRhWOQQK7FYx53g+M4Yv9keDLXW/LgpexIaoztsTtOuqWLGHji3acnFuDhxAldohgfJooyPImCiDGpYIjlEySiY6dg0yXaWsUEKX+zkFXC842nOncmmsj/F5hq6v9CpdnGQn/pQJusIxgdGvruCziTzD7HVrP1939+Ft5kXfzVtQ8Arikx1thURmyQJ3MlLA052+7a9+E74QuoSsh11Gc1pyM9USqiIETedYG9gC6E5DpzudKoIbbrPQV3vbquUMkN7mukFLjUDvLJzd4+L5Gw6hm+6vNx22V3r74fAKE8AJEtM0DaY0og+LopT6WO3faAUK8Zom3KaqSeyDUYejQsWCmsKGB4sISObpop05icpAAj1sI5CMe4wC9yS5A1N5I0SjEzRyyemiQ1vunT3bUrkN7cfn7nP0jYoPuozMBB8N90WYPBwULl/3B2qpPhzOMb7yzD9vjr60nIodJQs7IsraBFIBhPHviv8zeN8nyF1blv2w9wIbnXP6heQ79QoIeukAiThX3//WxIhidDU74SzhbQDsleK4NF/v56KUQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8555.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(6506007)(6512007)(86362001)(44832011)(52116002)(36756003)(66476007)(66556008)(8936002)(66946007)(8676002)(26005)(5660300002)(498600001)(2906002)(4326008)(6666004)(38350700002)(38100700002)(6486002)(966005)(2616005)(1076003)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DJ5WavEzFhVWQiDhSgDL/ZI8SZabZtqaCWxamPDS5+TugkkfIhHfZJHT7s+I?=
 =?us-ascii?Q?30BwTVzL9zZ8ElnrHQyy+LuvaagHd32Nrj2RvP8MwpxaUAYKwcUUWIqZXO0p?=
 =?us-ascii?Q?C6NDHEOQnV0GtI8fsupIDQ/q0JmCA17mrZ3RSH36ju0GJY0EuQA61lcRbFhL?=
 =?us-ascii?Q?ePSIfHqm869IFr2B/RrqL5IydHRFO5EFQk+9h1nb1LIt75vJBTUQNZO7EXCx?=
 =?us-ascii?Q?A7Z6qm13jBMB3mQBBa/VZO9POTmo2KP1z3fYXba61b15gaKTZopGzRoxdOEV?=
 =?us-ascii?Q?z4j9ekE4FEupHz4ypKn3r+jkNjIpX3p129JrBjgHRHrzuQNKd9apNP6tSOgz?=
 =?us-ascii?Q?YK/3sxN2lWWM8eLC++uxibn7sz5LotYkmTm09wD0KfD3tCAsIK5IeDIOWLc8?=
 =?us-ascii?Q?iont0PUubFwwVGb5Sp4ZIRxJyo/pMHMPKzDXK5D4gWp5HlnVg0Hmmq2RZivS?=
 =?us-ascii?Q?5PnxqHfffTm1opKgECYnHvslZmmU5spaBW0oIgMpPMpl0Hz1kvDg8uhJ6fCb?=
 =?us-ascii?Q?sfWObnN7CL/CZpKv2fiNtLuMUgKWS0F1Pqa3qD2gIcH5LGqZxK+/AIqVJai2?=
 =?us-ascii?Q?dy5dMqhrTkv2xzyWJgW7s3AX9FVGs1jknJq5f50OO+riKfVCLui1+wKyfu8C?=
 =?us-ascii?Q?f/o92Fres02pCWJy3Hkj5jlYjBS2ovMapOA31TANWHpRJjmhdSSKIb0h0OPd?=
 =?us-ascii?Q?T4KYIA1cX8f78PNQV0SOnwGgJueb4KGH2/bwyUYpOoQMVp3zPhKN2zZwWafp?=
 =?us-ascii?Q?+6H2ZiUi6infsNA1P1LHtgTmltCS2suVH9Dgoq9orZVrTgoNFtYC/XrleuQg?=
 =?us-ascii?Q?ZtyuVEYJhoh0Vt6Ni18ULV0Vv230OTA+ErNZZzUYsDrO/jLEUS0nj7eBxmGr?=
 =?us-ascii?Q?oECI9znKnQpGEbmIb6fioUUp9jefyaU6wenzt6HYnCuAmMtMc6ATFnKCV5YU?=
 =?us-ascii?Q?WVgsw1yJQnw8aCw6s04wd8feg/SKylDwpxKhSzNGkEILV188cOS0lUbtNsga?=
 =?us-ascii?Q?/XVe1QkEA2VRBa9ab2FWhIz2C3Cr47YeJON69vBTCcfx3bAiRRvvcTbyyhst?=
 =?us-ascii?Q?d2xJhXnlcbDZIJnAxv6kXVguh/YDBjVmun6jEJNfnj6m1StOOn3rrYxWy7ag?=
 =?us-ascii?Q?oHrciAGEVkcmYkME6fQEQzNNqbE4U7VjZC/ZD6fhnUcxh/4hxLIAXyvxyiqT?=
 =?us-ascii?Q?hCUM4+rN0oxloVu56LM9arGm8v3oRX+kaYWgR19G+ippD8Fv7Szx6XcVY0I+?=
 =?us-ascii?Q?W+mYyFS31jGXT/dg51RhT3JU6LsnnPz0tlqfx53qq4/KX74Vosq2+eB76kpO?=
 =?us-ascii?Q?gdF6KlL5S+XB70Yb2ufDiBQSLJ/EIdZEEtMAMipVLe3RMugVkR0FCb9Dbdjw?=
 =?us-ascii?Q?xjWOiYCt9/IutyX4mCgkxloUXi1h4BR5sMlApNLwLuwiGfOjjJOvw+NlihrO?=
 =?us-ascii?Q?wParwZ7dZM+ncTv8n+ZudZZoJ9rV3cWEOG8lzN1yRQghI9gjD6fCaVmuz+vF?=
 =?us-ascii?Q?DOvHqVrqueq+04sMjDZ6Gpb7PV+gaAY+SkN4VWJ7G+iqOyk1xJ560TToRzBx?=
 =?us-ascii?Q?z1OSwYgaumpAIINmKr1osNKRxVa7HmP7aPR+YNCYf3jnP83AJ1MZ1BzfyzYi?=
 =?us-ascii?Q?UyelAhoR19zyHrqjMqfG1bQ=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 875cfd71-bd52-4bba-ef59-08da01da743c
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8555.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2022 14:38:19.2088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S3pd4VQq0c/XB0N6KPPMMfJSsq3y0zVngwGk29CllS1memFGFxgjYbpDrThgAeo/4C4owf7glBYzuIESneA2tA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_063828_938093_3C3F1E99 
X-CRM114-Status: GOOD (  12.83  )
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

Describe the "fsl,lynx-28g" compatible used by the Lynx 28G SerDes PHY
driver on Layerscape based SoCs.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 71 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
new file mode 100644
index 000000000000..03e7ba99301f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,lynx-28g.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Lynx 28G SerDes PHY binding
+
+maintainers:
+  - Ioana Ciornei <ioana.ciornei@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,lynx-28g
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    serdes_1: serdes_phy@1ea0000 {
+        compatible = "fsl,lynx-28g";
+        reg = <0x00 0x1ea0000 0x0 0x1e30>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        #phy-cells = <1>;
+
+        serdes1_lane_a: phy@0 {
+                reg = <0>;
+                #phy-cells = <0>;
+        };
+        serdes1_lane_b: phy@1 {
+                reg = <1>;
+                #phy-cells = <0>;
+        };
+        serdes1_lane_c: phy@2 {
+                reg = <2>;
+                #phy-cells = <0>;
+        };
+        serdes1_lane_d: phy@3 {
+                reg = <3>;
+                #phy-cells = <0>;
+        };
+        serdes1_lane_e: phy@4 {
+                reg = <4>;
+                #phy-cells = <0>;
+        };
+        serdes1_lane_f: phy@5 {
+                reg = <5>;
+                #phy-cells = <0>;
+        };
+        serdes1_lane_g: phy@6 {
+                reg = <6>;
+                #phy-cells = <0>;
+        };
+        serdes1_lane_h: phy@7 {
+                reg = <7>;
+                #phy-cells = <0>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index dd42305b050c..888d07ddc128 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11340,6 +11340,7 @@ LYNX 28G SERDES PHY DRIVER
 M:	Ioana Ciornei <ioana.ciornei@nxp.com>
 L:	netdev@vger.kernel.org
 S:	Supported
+F:	Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
 F:	drivers/phy/freescale/phy-fsl-lynx-28g.c
 
 LYNX PCS MODULE
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA8FC4167D
	for <linux-phy@archiver.kernel.org>; Wed,  1 Nov 2023 05:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAqO3IPwm2nhpTn7KTMlr1RLO6aLXMReLQ62RyNAAb0=; b=VYMLZDx7nyd38t
	YrnZO1+EmLU1NKGiwfy+TZ3vsB6HcLnZ+07AfaTG35TVIKbZ06ahKyg9jAQXHHz2MEPEF5FLEvZ2x
	xOmVze4WHSo44aahlIHCyCOX8LlwiJ4YQJ6zEPwPvVyawgkCoaE5Nu24t3hF2WaMobpDKsgngph9A
	kok0WDaMQHW2Bvz6ZIO+xitjQCpxOk3+ZGwq0HaWB/WacuggQeGEeHZM0rT9ml9cGlOeqZ/Uepsoi
	bel1PL5GUVmd1WoEq2Nas8fqhIes/bYVNdnJx6X2p8rJN5R0v2wLJwDda6kkFwem/HcnbhRBPxPRy
	zlR6KbyaWH4HTqqidulQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qy42x-006ibW-37;
	Wed, 01 Nov 2023 05:45:43 +0000
Received: from mx1.unisoc.com ([222.66.158.135] helo=SHSQR01.spreadtrum.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qy42u-006iXh-2W
	for linux-phy@lists.infradead.org;
	Wed, 01 Nov 2023 05:45:42 +0000
Received: from dlp.unisoc.com ([10.29.3.86])
	by SHSQR01.spreadtrum.com with ESMTP id 3A15iikE023619;
	Wed, 1 Nov 2023 13:44:44 +0800 (+08)
	(envelope-from pu.li@unisoc.com)
Received: from SHDLP.spreadtrum.com (shmbx06.spreadtrum.com [10.0.1.11])
	by dlp.unisoc.com (SkyGuard) with ESMTPS id 4SKwnb6S6cz2LjbCw;
	Wed,  1 Nov 2023 13:40:03 +0800 (CST)
Received: from zebjkernups01.spreadtrum.com (10.0.93.153) by
 shmbx06.spreadtrum.com (10.0.1.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Wed, 1 Nov 2023 13:44:42 +0800
From: Pu Li <pu.li@unisoc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: Pu Li <pu.li@unisoc.com>, Zhiyong Liu <zhiyong.liu@unisoc.com>,
        Chunyan
 Zhang <zhang.lyra@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: phy: Add Spreadtrum usb20 hsphy yaml
Date: Wed, 1 Nov 2023 13:44:31 +0800
Message-ID: <20231101054432.27509-2-pu.li@unisoc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231101054432.27509-1-pu.li@unisoc.com>
References: <20231101054432.27509-1-pu.li@unisoc.com>
MIME-Version: 1.0
X-Originating-IP: [10.0.93.153]
X-ClientProxiedBy: SHCAS01.spreadtrum.com (10.0.1.201) To
 shmbx06.spreadtrum.com (10.0.1.11)
X-MAIL: SHSQR01.spreadtrum.com 3A15iikE023619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_224541_167285_C8260ECE 
X-CRM114-Status: GOOD (  11.55  )
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

Add device tree binding Documentation details for Spreadtrum
usb20 hsphy driver.

Signed-off-by: Pu Li <pu.li@unisoc.com>
---
 .../bindings/phy/phy-sprd-usb20-hs.yaml       | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-sprd-usb20-hs.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-sprd-usb20-hs.yaml b/Documentation/devicetree/bindings/phy/phy-sprd-usb20-hs.yaml
new file mode 100644
index 000000000000..102b49d3482e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-sprd-usb20-hs.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2020-2023 Unisoc Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/phy-sprd-usb20-hs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Spreadtrum USB20 High Speed PHY
+
+maintainers:
+  - Pu Li <lip308226@gmail.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - sprd,pike2-phy
+              - sprd,sharkle-phy
+              - sprd,sharkl3-phy
+              - sprd,sharkl5-phy
+              - sprd,sharkl5pro-phy
+              - sprd,qogirl6-phy
+              - sprd,qogirn6lite-phy
+              - sprd,uis8520-phy
+
+  reg:
+    maxItems: 1
+
+  reg-names:
+    const: phy_glb_regs
+
+  sprd,syscon-enable:
+    description:
+      Phandle to aon apb syscon register region.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  sprd,syscon-ana:
+    description:
+      Phandle to analog syscon register region.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  sprd,vdd-voltage:
+    description:
+      It represents the value of one analog power supply of phy,
+      the unit is uV.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    hsphy@64570000 {
+      compatible = "sprd,qogirl6-phy";
+      reg = <0x64570000 0x3030>;
+      reg-names = "phy_glb_regs";
+      sprd,syscon-enable = <&aon_apb_regs>;
+      sprd,syscon-ana = <&anlg_phy_g2_regs>;
+      sprd,vdd-voltage = <3300000>;
+      #phy-cells = <0>;
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

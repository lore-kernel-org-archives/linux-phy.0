Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C9EFC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 07:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlJmp55ASYmSpImjDbqDat89BMiJ6tmPfqW16HBGBsc=; b=LtYSF4HH1WoFGA
	o1mOdlaXr5V/blGWAnH0r8JqoAjBsniCkd1UtApItHUMU75dRgM8/Sq96hpYny33t6lnynoXYuzug
	zm4i/pcMEdbEOnnMO9x/aYURZizyKjuoxnNro4a36wkmp8ACyHfCPcYNwyVJxt/kefT1BtbdnK+5C
	vaOYXBTCUmcncBYyjRHJB2VbPsDBrpT34jZW19R3tApQxd0523iuaVHUPUgg+I98mM6XUjfQdX8cu
	OtEB+o0RC4cjsF/EAHZ3EdH3PmtWiEoMHSYXIFE80t2CeQ+4TrWtJLVM6LCV6M1YWzt3srqYn7UcT
	px70LG+fPdzWckloRRcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26DK-005tO7-Km; Fri, 17 Jun 2022 07:16:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26A8-005s3h-75; Fri, 17 Jun 2022 07:13:01 +0000
X-UUID: 3b104f80a869438ebbc20828983a18c1-20220617
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.6,REQID:d680964a-dba8-4fb9-999c-0af478cc7aeb,OB:0,LO
	B:0,IP:0,URL:25,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,AC
	TION:release,TS:20
X-CID-META: VersionHash:b14ad71,CLOUDID:9fea9bf6-e099-41ba-a32c-13b8bfe63214,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:1,File:nil
	,QS:nil,BEC:nil,COL:0
X-UUID: 3b104f80a869438ebbc20828983a18c1-20220617
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
	(envelope-from <jianjun.wang@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1555171074; Fri, 17 Jun 2022 00:12:54 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 17 Jun 2022 00:02:52 -0700
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Fri, 17 Jun 2022 15:02:50 +0800
Received: from localhost.localdomain (10.17.3.154) by mtkmbs11n2.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Fri, 17 Jun 2022 15:02:48 +0800
From: Jianjun Wang <jianjun.wang@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
	<kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Chen-Yu Tsai
	<wenst@chromium.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Krzysztof Kozlowski
	<krzk@kernel.org>
CC: Wei-Shun Chang <weishunc@google.com>, Jianjun Wang
	<jianjun.wang@mediatek.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<rex-bc.chen@mediatek.com>, <randy.wu@mediatek.com>,
	<jieyy.yang@mediatek.com>, <chuanjia.liu@mediatek.com>,
	<qizhong.cheng@mediatek.com>, <jian.yang@mediatek.com>
Subject: [PATCH v10 1/2] dt-bindings: phy: mediatek: Add YAML schema for PCIe PHY
Date: Fri, 17 Jun 2022 15:02:45 +0800
Message-ID: <20220617070246.20142-2-jianjun.wang@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220617070246.20142-1-jianjun.wang@mediatek.com>
References: <20220617070246.20142-1-jianjun.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_001300_343928_8E1105CB 
X-CRM114-Status: GOOD (  12.82  )
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

Add YAML schema documentation for PCIe PHY on MediaTek chipsets.

Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../bindings/phy/mediatek,pcie-phy.yaml       | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml
new file mode 100644
index 000000000000..422750cc4121
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek PCIe PHY
+
+maintainers:
+  - Jianjun Wang <jianjun.wang@mediatek.com>
+
+description: |
+  The PCIe PHY supports physical layer functionality for PCIe Gen3 port.
+
+properties:
+  compatible:
+    const: mediatek,mt8195-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  reg-names:
+    items:
+      - const: sif
+
+  "#phy-cells":
+    const: 0
+
+  nvmem-cells:
+    maxItems: 7
+    description:
+      Phandles to nvmem cell that contains the efuse data, if unspecified,
+      default value is used.
+
+  nvmem-cell-names:
+    items:
+      - const: glb_intr
+      - const: tx_ln0_pmos
+      - const: tx_ln0_nmos
+      - const: rx_ln0
+      - const: tx_ln1_pmos
+      - const: tx_ln1_nmos
+      - const: rx_ln1
+
+  power-domains:
+    maxItems: 1
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
+    phy@11e80000 {
+        compatible = "mediatek,mt8195-pcie-phy";
+        #phy-cells = <0>;
+        reg = <0x11e80000 0x10000>;
+        reg-names = "sif";
+        nvmem-cells = <&pciephy_glb_intr>,
+                      <&pciephy_tx_ln0_pmos>,
+                      <&pciephy_tx_ln0_nmos>,
+                      <&pciephy_rx_ln0>,
+                      <&pciephy_tx_ln1_pmos>,
+                      <&pciephy_tx_ln1_nmos>,
+                      <&pciephy_rx_ln1>;
+        nvmem-cell-names = "glb_intr", "tx_ln0_pmos",
+                           "tx_ln0_nmos", "rx_ln0",
+                           "tx_ln1_pmos", "tx_ln1_nmos",
+                           "rx_ln1";
+        power-domains = <&spm 2>;
+    };
-- 
2.18.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

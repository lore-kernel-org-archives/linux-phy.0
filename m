Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDFA6C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:15:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9BD0661BF4
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:15:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9BD0661BF4
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4K3BxA6gguAcOphYzNMrEiXSlyGtOR5QN93sUIgRfg4=; b=hLMzzkm5xCpH77
	BXHnKE2qPqCabxMtWKtSR1nxYzaqDso/pvjmeMX+hJ4GTlstV87VwU8Q09/X7hWaq1SPfgMoB9Ouc
	4iToCmJe76/jkluZhg5hBGkBskWzyf5yzVCyRqY2ImcA37xHcTiNXHpsBeU3LjGsROJkW2Bpx0la/
	Dy7d9qkfNCU0ab1RgwS6XxVJbvoLUVdogDwVTnLrhRfW93sR+hBONu1BWvkzyBfh77fVUNdXNCF3I
	DDqW16amOMl1MstEnyHohoSQcYESLQGvJhDGcll3MP/Wt2ithWQJKopu/ZWTfeY+VAtsywCDCsLUb
	+ap11TBSQwhRWnBG9+RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvUX-00192Z-M7; Tue, 16 Nov 2021 10:15:05 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvUS-0018zU-IK
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:15:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1637057700; x=1668593700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yWYaIv1G0/vxvVKGW9HFtKBBVGBSrggh6rmJCotQKlk=;
 b=0478gGYGV1q5/W3bCa9TgihVvO8hyneiCnmeBO4yMLJc/ebFWNCwOYhE
 w+xIlT5guXvtzj58SlC+au7uMTfKBLWiNGyJYZQBqJgELdBYopDVMAraU
 ICg8lHrBsHctkXhU4balHXxM356Re/kqdYnKa7nZFcJgz6fec5bwTOk5G
 IFd4X4h1ZRc8Bdf3EjK5PAP1OvJRO4rH7Ugd0gbgaSwkuWGnFdR3OlWym
 eVL5VU5hLB1/8T5vlouPJd2ha8wNVoTTaSN3C9TJhobYU1It0C2LPiC75
 A65GMDpRjPOjvZ1d9ErQIokG8tz8lHTc6Yst61jsOwfS+N1A64Gn8q1GL Q==;
IronPort-SDR: u5y7X9CNDuUbBUjek1juL5XxEThJpSNh/7wbQ5OOl8jBfUynq7BuqAeVySqMz/zVX1sDq9x83i
 ly/iC2ggmKl8uzNJaxzav39NgNfrUYv0q32bXWNI+9PV5E/T3s6n6TppoZ/rnNiMLu1hvtATUU
 3sMxJxdTYtUIGENfVlmlZ5dCrHTSxFG+CGlZr2r7MOjK+Mqrv0ry5PDLneyMEWH5S21nYFFVl0
 iFRBEtZVt2we517pRMJFR5wbA24yc3uG6TCe1fUgdoxxDJpu3Qp8Tzk1brZFnwa2wkV7WMhd/0
 wvoJg1oJRLwAJGVtSY+4LDo2
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="152081110"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Nov 2021 03:14:57 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 16 Nov 2021 03:14:57 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 16 Nov 2021 03:14:55 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>, <kuba@kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH resend v4 1/3] dt-bindings: phy: Add lan966x-serdes binding
Date: Tue, 16 Nov 2021 11:08:16 +0100
Message-ID: <20211116100818.1615762-2-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_021500_691360_3FFFDC5E 
X-CRM114-Status: GOOD (  12.80  )
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

Document the lan966x ethernet serdes phy driver bindings.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 .../phy/microchip,lan966x-serdes.yaml         | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
new file mode 100644
index 000000000000..6e914fbbac56
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/microchip,lan966x-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Lan966x Serdes controller
+
+maintainers:
+  - Horatiu Vultur <horatiu.vultur@microchip.com>
+
+description: |
+  Lan966x has 7 interfaces, consisting of 2 copper transceivers(CU),
+  3 SERDES6G and 2 RGMII interfaces. Two of the SERDES6G support QSGMII.
+  Also it has 8 logical Ethernet ports which can be connected to these
+  interfaces. The Serdes controller will allow to configure these interfaces
+  and allows to "mux" the interfaces to different ports.
+
+  For simple selection of the interface that is used with a port, the
+  following macros are defined CU(X), SERDES6G(X), RGMII(X). Where X is a
+  number that represents the index of that interface type. For example
+  CU(1) means use interface copper transceivers 1. SERDES6G(2) means use
+  interface SerDes 2.
+
+properties:
+  $nodename:
+    pattern: "^serdes@[0-9a-f]+$"
+
+  compatible:
+    const: microchip,lan966x-serdes
+
+  reg:
+    items:
+      - description: HSIO registers
+      - description: HW_STAT register
+
+  '#phy-cells':
+    const: 2
+    description: |
+      - Input port to use for a given macro.
+      - The macro to be used. The macros are defined in
+        dt-bindings/phy/phy-lan966x-serdes.
+
+required:
+  - compatible
+  - reg
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    serdes: serdes@e2004010 {
+      compatible = "microchip,lan966x-serdes";
+      reg = <0xe202c000 0x9c>, <0xe2004010 0x4>;
+      #phy-cells = <2>;
+    };
+
+...
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

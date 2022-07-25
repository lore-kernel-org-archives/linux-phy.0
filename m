Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB4F4CCA47C
	for <linux-phy@archiver.kernel.org>; Mon, 25 Jul 2022 02:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSOT/Ok6/66fhk+JgRpRrgZdfCArFMUZU8T/guMXhoM=; b=HZWXF7r2H2E4az
	zYcvEGM1Nut+cYx804Lf7EsAxu4IWjTFDSmEJjbTqMH3SVKCw+/FODbQuKA7jdx2QoD3+0Euix0sk
	eR/UIXDOaNkVwn8Ect2Hzzd6v3YdSg2rl8tcZ6SvIkIAop+Ywhg6ciRIUUFjstYaxK0gAkpv7F2Xt
	CnCoYUE55fSAVXe6C4UJaoWXAwYDYeDLv5NlqibDZ5kZn6FIxhIEvqRs9pWjwB4VQA6wUxvqLUff7
	rzvsRrlKLKoK65x3V3jUv1f2Fi+QjiOiVfbhXFRHbsDUUEpQG2d9UdbRoUSsdVUUEtQiKsSVb0XkT
	EWAiEgTmf8J1DJheZTvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFo5H-001LJ2-5O; Mon, 25 Jul 2022 02:44:39 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFo5D-001LDt-Lz
	for linux-phy@lists.infradead.org; Mon, 25 Jul 2022 02:44:37 +0000
Received: by mail-pf1-x42a.google.com with SMTP id c3so9191481pfb.13
        for <linux-phy@lists.infradead.org>; Sun, 24 Jul 2022 19:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OJDKOROYoXVDH++yfrosV7/5WWokwSxr5idK1N46DJk=;
        b=V8/pIYxZALstImC7gmvlecpqn4G1a1EVGfZocH8m0s/Lu1HoElas4l4V5K0QsuOUlp
         s3sbCLfHXyT7JJlA4/nmMzVNe8y7eS2scBvB85kzWwJli2G6yuHgS3jw3cSy06cExjyd
         b7/U8YgaJ1D3Kjjx4M23/IEUdWY99mLcuz/NEgKwCcLz6svJWRavJr2mrfZlRCGmf4WC
         uL7RBlwJIpEiY37qKJVmQCGHx9bH8gIr06uzzUFRj4eTufKi+7XFpcghsUCidDe6XCo5
         wd4IVpI7iKjzdLE+4KjjtSEsZh6oOss/GRMiJz2BhdTt32PCpNh7erA0/pNP0HkPqaC7
         yowg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OJDKOROYoXVDH++yfrosV7/5WWokwSxr5idK1N46DJk=;
        b=6N5DyMCXB4INZlHgTrhqlkabdRzgM9nMAuwxRBbnEPq/0qFxj6JbufxoovcKDB7Kt2
         ENVmoi3mpD7Sb8f8tXyOoav9/2w2eBu9YxwXD4M9iing/wXaBwU2bIQ3D3Wl78kym9Mz
         iOq+jWOUaqVBkvq2dSXhU0Tl3MmXK1Vz33GGPzjn9DvgV6WxUZ6UhCE4NIG4DBqbtqZg
         5zHWmyyXr12jIOeezJnnEMMA+N2RC5d3fMsEn+gYGEC+chCVPVoHc5anpqdF7GwS8aTb
         9f23Mwu4S5l3FmTpRrfvLnJGEyHKjYq5jeDy6GExIx+HU0X3hzg4r2x2r24KoTp8KY1y
         PeOA==
X-Gm-Message-State: AJIora+HQezAj8rZEU+KxENLegdNyYd34UYii+NgGtaOvfOP81RnPklT
	3oTNh+VuSKweFvD643RUJFE=
X-Google-Smtp-Source: AGRyM1sD3gsJBJpYhA79iMNgjkkV2YhwAMccugHvOKL6zG4wvHg8IroydzlzodE6ZtPPM+b1l8IBwg==
X-Received: by 2002:a05:6a00:148d:b0:52b:946:67d2 with SMTP id v13-20020a056a00148d00b0052b094667d2mr10504546pfu.31.1658717074658;
        Sun, 24 Jul 2022 19:44:34 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id u13-20020a170903124d00b0016d1b197914sm7983304plh.90.2022.07.24.19.44.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Jul 2022 19:44:34 -0700 (PDT)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	p.zabel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH v5 2/2] dt-bindings: phy: Add bindings doc for Sunplus USB2 PHY driver
Date: Mon, 25 Jul 2022 10:44:12 +0800
Message-Id: <1658717052-26142-3-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1658717052-26142-1-git-send-email-vincent.sunplus@gmail.com>
References: <1658717052-26142-1-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_194435_737261_3D1843D0 
X-CRM114-Status: GOOD (  14.97  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add bindings doc for Sunplus USB2 PHY driver

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
---
Changes in v5
 - No change

 .../bindings/phy/sunplus,sp7021-usb2-phy.yaml      | 73 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
new file mode 100644
index 0000000..069d422
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) Sunplus Co., Ltd. 2021
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/sunplus,sp7021-usb2-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Sunplus SP7021 USB 2.0 PHY Controller
+
+maintainers:
+  - Vincent Shih <vincent.sunplus@gmail.com>
+
+properties:
+  compatible:
+    const: sunplus,sp7021-usb2-phy
+
+  reg:
+    items:
+      - description: UPHY register region
+      - description: MOON4 register region
+
+  reg-names:
+    items:
+      - const: phy
+      - const: moon4
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  nvmem-cell-names:
+    description: names corresponding to the nvmem cells of disconnect voltage
+    const: disc_vol
+
+  nvmem-cells:
+    description: nvmem cell address of disconnect voltage
+    maxItems: 1
+
+  sunplus,disc-vol-addr-off:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: the otp address offset of disconnect voltage
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - resets
+  - "#phy-cells"
+  - nvmem-cell-names
+  - nvmem-cells
+  - sunplus,disc-vol-addr-off
+
+additionalProperties: false
+
+examples:
+  - |
+    sp_uphy0: usb-phy@9c004a80 {
+      compatible = "sunplus,sp7021-usb2-phy";
+      reg = <0x9c004a80 0x80>, <0x9c000248 0x10>;
+      reg-names = "phy", "moon4";
+      clocks = <&clkc 0x3d>;
+      resets = <&rstc 0x2d>;
+      #phy-cells = <0>;
+      nvmem-cell-names = "disc_vol";
+      nvmem-cells = <&disc_vol>;
+      sunplus,disc-vol-addr-off = <0>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 31d2ba0..989e5ba 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19227,6 +19227,7 @@ SUNPLUS USB2 PHY DRIVER
 M:	Vincent Shih <vincent.sunplus@gmail.com>
 L:	linux-usb@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
 F:	drivers/phy/sunplus/Kconfig
 F:	drivers/phy/sunplus/Makefile
 F:	drivers/phy/sunplus/phy-sunplus-usb2.c
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

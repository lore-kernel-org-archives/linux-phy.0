Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9894CCA486
	for <linux-phy@archiver.kernel.org>; Mon, 18 Jul 2022 10:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2x54QMlGPEFsAF36mMrK67J8+iN6aNaPi76ZHHhX5qo=; b=jGpIcXkHCyzJtE
	nfPnTNVVYCtZF+MOXHXyjG0BcxpIqxapSUvQqil11WTQjJN8pkui5mRE4jQi7W4vh2Sh0Akde7COL
	fS/L8EGMAq9NKKbfezbSvHDVTU4TdgVWkVCPTK//ghCG3yWTYGOg2QUx0MoQfdh/YdX7soUen9iIz
	gGPpp6XF5nBlV0J01YLuqDsrRJmyDvgO0jro+0Z+thnTPUImLi+5SfN6caIR8ZWLv3E/WevJnWLRU
	7MF9jukKQSXshlOt8zSoDZGgeSgvToCaw9XuLMFEKBHi2JMIQXOwDLCD5PKH8R+LMNR86YSooBMdM
	8IN0ZBL4Gv+mHJQ4pf8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDOLt-00CbnJ-As; Mon, 18 Jul 2022 10:51:49 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDOLp-00Cbjw-Q0
	for linux-phy@lists.infradead.org; Mon, 18 Jul 2022 10:51:47 +0000
Received: by mail-pg1-x52b.google.com with SMTP id g4so10228415pgc.1
        for <linux-phy@lists.infradead.org>; Mon, 18 Jul 2022 03:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Pzx0LTAEG3plavLsKEb5O1+0H3QSoplqHlDrOAmJwM0=;
        b=pjHLQ1tU+9Z/jw03Et5aIahbF/Qm2nLM2GoP+sewQYwZoxFZuKCXaynTjv4K1YzH/e
         POLpKKxGFLNydnDB1V8Fw3dBYLodL8EZ/FCkN3Qf9d2wJyXf9lFMV7AXjX1UZMZSq7IP
         2XuVfIYuyRTi/b/XM4QxkAwd/Vvf3AxCb5pVxgzEuffw2QYAFhGGyeqZgJSwJcyuwRHs
         0nJ8s7u3fkmgquf2Jk8tE3RokRx43voshbnitAAuQbOI+ITg2F93o6wAx5+PvYY1a2j3
         AlvFGbLNO0Yis6+7MtmghrqFArpZTW2v/dQ5/704EXYekCYNXWnb2GX+LYfq9dSRPzkW
         iLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Pzx0LTAEG3plavLsKEb5O1+0H3QSoplqHlDrOAmJwM0=;
        b=yBRQOkA9Y906ulFhKX4dNURY2j/J2vJxsOXQx6gWmRiNBM7HDQRoz2cwkoJTH/N/eV
         AzOk3FOR06bLsj9iXzL64eQF/ksaOJDhAd26knd6HXgCwWhhixciQsIRKI+FLnkE2XAD
         D3w2eIZ3THfbVIZGc0LAKijoM87bWBe47PObxZxNc6uxBAZ507U82eWfh2bBiPqxLAO8
         BWXPJAqfbu91ZMgD6iVnPht1iChTsHg9ywLi4jEzSZGQ4FLafFIQzXgKyKEZ+5JGj5+F
         6uXkMux1Nd6/VRtjnBhLLO4iqBDZgSstqRHBC0cKU+4XWj+/GwqBaCLhpzrp8otMiufs
         egyQ==
X-Gm-Message-State: AJIora+tZOBscfDalr8bTivur7o5XQceL03DaDGxnBE2a5QxZZdRSHwP
	XPtbTP6B0+ZaozEsi4ZPyTE=
X-Google-Smtp-Source: AGRyM1sM2aRIyOja2E9k7LGH0ZcvsU9FUgU7Z7TYOhcgHRZQYqonOKjMd4pT27VlfZsvZ1ABsValtg==
X-Received: by 2002:a05:6a00:124c:b0:52b:26b6:2ab4 with SMTP id u12-20020a056a00124c00b0052b26b62ab4mr20907079pfi.85.1658141504318;
        Mon, 18 Jul 2022 03:51:44 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id s2-20020aa78bc2000000b0052ac1af926fsm8914641pfd.20.2022.07.18.03.51.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 03:51:44 -0700 (PDT)
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
Subject: [PATCH v4 2/2] dt-bindings: phy: Add bindings doc for Sunplus USB2
Date: Mon, 18 Jul 2022 18:51:20 +0800
Message-Id: <1658141480-9291-3-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1658141480-9291-1-git-send-email-vincent.sunplus@gmail.com>
References: <1658141480-9291-1-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_035145_876244_86499AFC 
X-CRM114-Status: GOOD (  15.07  )
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

Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
---
Changes in v4:
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

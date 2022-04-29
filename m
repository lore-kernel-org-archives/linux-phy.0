Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A8FC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 29 Apr 2022 07:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAZmj1cbpuO/FpxyKIQybk7pcKn2PQKCUBYueXrzzL0=; b=HCLXvHL0BE9S3a
	n23z/TRZmLfmW7qz/AWgub2/BMsSfzWr6RmwuR7euOg8ZRlS3z1oIzH8FRB8r+DvDq/YPUyb5DLzN
	iqxXuOG2TNF0GEWdAsjdQmlI2voS7S4LHgED3Oz+fpE6dE2yMG2/bWKuYmr4cywq8X/wMB8B1RXGX
	qk3on0Jn92yOjl4TmYXK5iVZRi/7QZovCFUsCqOc1Qniy2wxFtwrkk2EM8k5k8gZb0sDp2q66JTiW
	h/tKfv3RCU1oVGcdvaSWLogdXSrrpeCyhHnIW5xnfItC/YPrXKYDJD0cr5CI47eQDLUXjypuN65Mh
	Zp/f1v8l/rN8DEF9T4Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkKdP-009u2C-9c; Fri, 29 Apr 2022 07:01:47 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkKdM-009tzg-Iz
 for linux-phy@lists.infradead.org; Fri, 29 Apr 2022 07:01:46 +0000
Received: by mail-pf1-x431.google.com with SMTP id y38so6201797pfa.6
 for <linux-phy@lists.infradead.org>; Fri, 29 Apr 2022 00:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sPglW94tnj8XZLFLi8TD5DyZuTLeLJOzEQaitrD47Rk=;
 b=UWmiesA9J6CPk3EH2Rwr/isQLTArC8YOhw1jnhhf3WMHhNhx9x9tqBPHV3PRqDJHBG
 0+v9RrtZvlYN+Fu+pEv7ZkPlE/iYt4CeCwOgZ0q6GL44YFbXu8jILacoU/8zVoJeduM1
 PobrlU4x/QfSDNQnByx3rdIGByv58ynZN6q9G3K45Xc45GJU2+cyQVCDWYM2YdfvZp7N
 ZMRLd/J3GZja3dyNuiE1wZqcuhI65qcoLSV0Km8OaW1f6tifqcJ7JI3R10cUd39b0cpd
 jD9vsyGkDsNFaJs29ZjSlFJ+gP0+OITHN2GrGfN6gRZlweVUsBCVh76SPCv61yq78RSL
 pA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sPglW94tnj8XZLFLi8TD5DyZuTLeLJOzEQaitrD47Rk=;
 b=PL4snpbu8ZPKSC8gwrqjis8fhGExxX5/KQ6/WBzY/Ovbv76JBOEOW4+wQLxJo5SFeJ
 PYHlAdiDEutBdsO7aMlKc+OJldCQr84gikzjgiOGgjIQ/hN+ksJ3ytk+fGcRxq6Vqx4i
 5amFG5kqlSqOQU4tJmviRq9ljAeaZehaxOE8mpcBzaIgMLcFjKKGygisxKkcYc95hiN8
 vh0Q/QhMEH71Ck4UnxVWK2T3wP8ObKCGff+RXvaFbO4D2D/jAy16x3vXrXZBO1g3EZqx
 CRnvsqYdx9So4RPEiIwnOuZjipkC7BcurW7qXAYQag1kmLKuMFbzMcq7Z65vLxb+V8uK
 5gyQ==
X-Gm-Message-State: AOAM531i+9V3mP5pbIEJRTOHW+TmOIA175uaLVsYHJaaPAh2Y9/ZRV0L
 v2INTp4G+EOma2FeJ3byzHA=
X-Google-Smtp-Source: ABdhPJxHO/t1cCtZO8hv2a8P7Ok20cXuZ2lrAN2/4UXIlDNv+BJ53aXaRe17sCGSdg6u0RA042r5Hw==
X-Received: by 2002:a63:e80a:0:b0:3c1:6c84:de53 with SMTP id
 s10-20020a63e80a000000b003c16c84de53mr7076534pgh.224.1651215701291; 
 Fri, 29 Apr 2022 00:01:41 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
 by smtp.googlemail.com with ESMTPSA id
 iy19-20020a17090b16d300b001cd4989fee6sm13148106pjb.50.2022.04.29.00.01.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Apr 2022 00:01:40 -0700 (PDT)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
 wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH v2 2/2] dt-bindings: phy: Add bindings doc for Sunplus USB2
 PHY driver
Date: Fri, 29 Apr 2022 15:00:56 +0800
Message-Id: <1651215656-19024-3-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1651215656-19024-1-git-send-email-vincent.sunplus@gmail.com>
References: <1651215656-19024-1-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_000144_663895_EB5581A7 
X-CRM114-Status: GOOD (  15.31  )
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
Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
---
Changes in v2
 - No change

 .../bindings/phy/sunplus,sp7021-usb2-phy.yaml      | 73 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/sunplus,sp7021-usb2-phy.yaml
new file mode 100644
index 0000000..52cf20e
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
+title: Sunplus SP7021 USB 2.0 PHY Controller Device Tree bindings
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
+    sp_uphy0: uphy@9c004a80 {
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
index 6b88a7b..bddf6c7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18918,6 +18918,7 @@ SUNPLUS USB2 PHY DRIVER
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

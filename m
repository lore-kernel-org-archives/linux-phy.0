Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 168CCC433FE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Mar 2022 11:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+oHfe+eEjuJjVRZkEtGYjR5MHk6bSSPNWBVprERSJg=; b=YJQ+8s5lT8fldC
	90cB+Rm1uWQoFKXMl/6h7Ce+UCJigmlt7M8QSDOQi6kCYBcarGZFg8cRg+ZeGBeQbpChqV5I7Px8P
	9LaO+qbvBh3oGIl2UOT9Taxkd5kN312kg5zTWKwjwdUIc2lWWYcv903PbeY2QSIT0nXoToNCPGIzY
	nmHtG5Ik//6l/ZEGQYIiUQWhtK/ivIjkSaba/AEMIoCo9z4pjHgr4g7V72zeoIEC6seCk+rF3KaY8
	10gatPFa6rytQ+HOe2MoIHqBgv0shrN7CONsd9RNhms0L7BT9MQA1T2mU3FOud2vnQ6Z09H1AVXSB
	WhypzXuHBYlNCSI5av1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ68Q-009nz0-Hz; Fri, 04 Mar 2022 11:30:10 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ68O-009nxq-BO
 for linux-phy@lists.infradead.org; Fri, 04 Mar 2022 11:30:09 +0000
Received: by mail-pl1-x634.google.com with SMTP id i1so7495538plr.2
 for <linux-phy@lists.infradead.org>; Fri, 04 Mar 2022 03:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4LBAgln/GTDCgFddRUfBtYbCF94Dwa8Tf8rpkYV3Zu4=;
 b=f2IFFTXBjqENHVE+jMpnpS6onFgxg06DQr1mV2sTlTMhRgbLiXJN+/BV1r/4Yd/au7
 4/0jee32mNK2eFmTKOSUdGTZKW56ApBQwMDyGlF5qNciq4ej3D+WcpDxKoQgIRWSsjMi
 /Ue+5sZ05CuW4+rr8s8FekT2+Kv7I70oXtdLniMmZcQOCoUs+yAbKNJMVxmvtCld96o4
 MXeYgV/6fAWSX6lVHK+X0mC0YSJIokrTvSopLV4qtD/TNimOLys7+4mB51z9kcxFBzLC
 mm/7vs8ryo68hedq9NTu0LuXdLaOGpYErh0EDxxc0irC6hfHnDET85VnlKZfXD6a5QkC
 /cmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4LBAgln/GTDCgFddRUfBtYbCF94Dwa8Tf8rpkYV3Zu4=;
 b=h9dya1EQU4sHZmEyZ8zKbRVlWndAS2Mn/qIkr27RR8dg6IVLAcsmb8esqHVY71EEqU
 qUNaSYD7AZoh8+TsGEYADbi4pCa46x3JJ7rYFJ1Rg2SHiJlbYkQefzyivgAfGNICqn1s
 QGWZCtlmPItkaJFIq6mPtw2DgnVPy/zZcqf0sMXI2f3vIgVqhm5I7STzLRz20Yj/CDAR
 j2/aEjnxJJvDxcSvVulfWFF/chHblEQoKmU1NDQBwa5YrEaL8XPFgTwd7/fkD0aHnBAP
 AbyvMD8KJM49rIwjaKKH94Rn116IhEAF8fiV+wBFUK/B2nIDit9B5BZYbq98ynT6b3Oc
 0Wfg==
X-Gm-Message-State: AOAM532xlYqXBK0cBwzdfUiZzMuRftTMn7xuM43llTrJ29Kwq4pj79AV
 7c/Dld836En7jI8uABToAgU=
X-Google-Smtp-Source: ABdhPJzbURJna5xflbKpiUyuF0V7e/LYW6LhnViq8N4feeUwjDue3k1I//GQ7Gi/br2sFq+1/ltIqA==
X-Received: by 2002:a17:903:40c3:b0:151:c8a2:1c46 with SMTP id
 t3-20020a17090340c300b00151c8a21c46mr3500pld.141.1646393407609; 
 Fri, 04 Mar 2022 03:30:07 -0800 (PST)
Received: from scdiu3.sunplus.com ([113.196.136.192])
 by smtp.googlemail.com with ESMTPSA id
 h3-20020a056a00170300b004f104c635e4sm5718237pfc.99.2022.03.04.03.30.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Mar 2022 03:30:07 -0800 (PST)
From: Vincent Shih <vincent.sunplus@gmail.com>
To: kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 wells.lu@sunplus.com
Cc: Vincent Shih <vincent.sunplus@gmail.com>
Subject: [PATCH v1 2/2] dt-bindings: phy: Add bindings doc for Sunplus USB2
 PHY driver
Date: Fri,  4 Mar 2022 19:30:18 +0800
Message-Id: <1646393418-26421-3-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1646393418-26421-1-git-send-email-vincent.sunplus@gmail.com>
References: <1646393418-26421-1-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_033008_421100_BCE44422 
X-CRM114-Status: GOOD (  14.80  )
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
index a3bb35e..ec6beb3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17951,6 +17951,7 @@ SUNPLUS USB2 PHY DRIVER
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

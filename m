Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02A3DC43334
	for <linux-phy@archiver.kernel.org>; Mon, 11 Jul 2022 08:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNCqHdsqqIjaUY/fjf01P0bJsDljNNKbhSTJo91/GG0=; b=VAB6JvjlCd7tKc
	ynsQUSiG58cUbog5u3mSLYIWPu8J7Wtlpt/ARcEFAaC7nrojpQUPfDuWtH1q4SMSXlyKVBrq15Cug
	yfnU0nzPG+YCHntxKcWDIfQdpNflvl5j8Thz5lcUVMTbeCiq8kP4yNsa78BqmL/bv0EDEv7cD9lZb
	gzNwN38afruSW1R210j5qTJlhNjNhzAxVXrKnUndDRxdv72WCdSKLCb29VOtQSztIoqbdobIpsEiI
	HSyRM+q5YvtzywHcy62JIvJYk+JFOWKccsrjQGRDupMczZ/4mTU07a/uZDdAvN5koiMdDH4ZfwOOT
	khL9NGluzRTyeRjOfzHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAp7p-00HLXr-5Y; Mon, 11 Jul 2022 08:50:41 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAp7k-00HLST-HA
	for linux-phy@lists.infradead.org; Mon, 11 Jul 2022 08:50:39 +0000
Received: by mail-pj1-x1034.google.com with SMTP id o15so4285350pjh.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Jul 2022 01:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=THtgz4CPWcfotwmT2jvI1fJyl908rsJpPPW0qYVE7M8=;
        b=frCz1U9EuM9c2StWiDcf+Gn8xspE645xF1IzRj9mxTqOaumq3SHHrfMfgjljdY0vVv
         Bff5DSTun7NDCKYPCr99MezfFq7/LFcc35bLXp61+/ZFuhOOo1tBaPGY66Qzp6rVVNPu
         Reb1VHdq0ZgZGm/0VutRcLwX/1XvuZmMbn3I30XocHa8nK8LoyMJ8/qCNKeRWe5iLhuO
         u3LZfx56r/zmWF5ychScURaIa7x3pbu/RdDAY89BCzokeBkIiOeITkc1GkSQWG3ViuyD
         wVI/dHa+trEplDqm0aTHe3w9dUZ5iCu7s8dTrzTGQTZnJp32fn2181aOB3pmgT/RcTfR
         GZ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=THtgz4CPWcfotwmT2jvI1fJyl908rsJpPPW0qYVE7M8=;
        b=BE4SyQV3O3TnOW6gVoUFK1ZQw/xhNLeVYGV+Sm82GO2PfzNlI+zJpwr8/CVgBBIL9f
         R0TjpM4WNwOO7E/UECTUWEzFNs9uHTEy/gMljGyrOckkOvR8/X7KnS711kdIbnm/kLLU
         w8Dhx6MG0rfU9r0UH1BtyEtgGtAJHZrv6hShJ2LWaRhtIQjiaGDam0olvPm2z3z3KpFJ
         kwqaUdp9oZwDZ70j8nY4uu89Zaz0VnJlG8FAqX2D0FRt/DbgUz0YkcHT4uaKD4yKtWdX
         gF5VxsDSRW7KKFwI2aWTE4RCYnAcNsNGa5whX+UnHSBxWqZtbbwUcXyM/ohTgHYMhdUE
         M+IA==
X-Gm-Message-State: AJIora/BjOqC3CgQALeDBzzCI0p0cHMvl4QmOx1AChBQ4DgKC5kE0n8Z
	j9b5onoIRKxbA7DUv3jmFvw=
X-Google-Smtp-Source: AGRyM1soZL+JyvcBMiRUE0Mgh7AM4O1mmbHVaekJlu0pt5SxTJjEw5HeNxVt5mmQSlFD0voqqvWCDw==
X-Received: by 2002:a17:902:7e8f:b0:16c:eb4:a52a with SMTP id z15-20020a1709027e8f00b0016c0eb4a52amr17695258pla.19.1657529432880;
        Mon, 11 Jul 2022 01:50:32 -0700 (PDT)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id b21-20020aa79515000000b0052ac5e304ccsm2489388pfp.194.2022.07.11.01.50.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jul 2022 01:50:32 -0700 (PDT)
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
Subject: [PATCH v3 2/2] dt-bindings: phy: Add bindings doc for Sunplus USB2 PHY driver
Date: Mon, 11 Jul 2022 16:50:03 +0800
Message-Id: <1657529403-18084-3-git-send-email-vincent.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1657529403-18084-1-git-send-email-vincent.sunplus@gmail.com>
References: <1657529403-18084-1-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_015036_597517_EDC13B23 
X-CRM114-Status: GOOD (  15.61  )
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
Changes in v3:
 - Addressed the comments from Mr. Krzysztof Kozlowski

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

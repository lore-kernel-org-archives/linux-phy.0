Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E736FCCF9EE
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 17:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=na+UNQkftvieHWBbAUZZjMSojCPwXrCdVkGxu+s7NJs=; b=wx/MCO3boMSbo+
	h8Vla6a8OxVUpOmMbka/zhtFYz6zl8fN3NwLfyA17JOBCght7QsAtOjwHFgmdT5A3yF+EtelA6ucB
	A0Ime0THSGZa3nu3PA7FBgf31pRrjcnclAqGgMqqHoe5xu6jvPpRw0tWHEx+TQ4f+a095+kUxmqxZ
	0bZANK/E7Nba/qXYc9abqzET5nQP1hmryarB787B+BnOX+h3C/0nJV9JUIbB460wafaU2uPJ5jaVA
	2xpNSt1pdLv4q9uSwxT5KpLdXazKrKCCieEivfI0wXCfYTjxoGjRrVmlFed7kub50w24bckaoo/BF
	ju2dsAYKLNnFPeFa7VvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEA77-00000002E6r-2v8v;
	Wed, 29 Oct 2025 17:37:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEA71-00000002E4O-3ueL
	for linux-phy@bombadil.infradead.org;
	Wed, 29 Oct 2025 17:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=bec5DtjUMCMZ+LaW5PfzvbvdukX10M0RMuKRh3c/XPA=; b=XxTdx6rO7UsLm15zj5AF/qnr2w
	MwT0eF+AMbgl+VzZLnIt9PSKBlA+npHWt+zeKVuMqEsDXO5epbjTIZgvzvKMLqWYBYdIYoZAvVxZ9
	9vGJeixMqXPf6oyQuRLulV+O0cXgD8Vx1TrTMz+/euUJPDI+ard/7OZRX4ECm4CDH+os1INW6xACo
	JnAjkfJaI+wZHddVDb54P06lGEFUG+3r3CW09mNS0SxgbPxVtgh+tiqdu5Qy2g6ESgdlQwR/IFOEl
	XTtUYYqfVnvMB55yJ/NWklHA+9EaMzz67bLVDZYFEZcW6T+t4NWQTyIhwRa0bhMEv9bipNQD/yGlN
	yJ0vFX3A==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE9FE-00000007T9f-1r6d
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 16:41:59 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-427015003eeso108082f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 10:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761759446; x=1762364246; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bec5DtjUMCMZ+LaW5PfzvbvdukX10M0RMuKRh3c/XPA=;
        b=LIbfj/hJt1DLt1akLLbWS8xGmCo2f7VVMy61tzzUr/Dr8kTfngfo3H09bg2cDlijkc
         /Rf6CYeTEfQ3Xv2rGwQ1u5TeAKuOg/g4RYL9CwDDpvyI2DdDOUlmSQ7d/oxvJncumIg/
         OdO191Or5ns5O1NdnzQq8u1puhWthnJhCGZwCpgjfvlM2WW/QzgkmyoyCipfuwxOXaqf
         nb3G6zJXxNvHbKZdcqsytbpSGJxmdBI/NZS/3Y/pdVyYQcsD5N/OlMjzIjdr/gEsC98W
         B/cqGhGSrI/QNdyZq5/Gtwg3hVsbqfxNehUVXTSgppy7Zsu4CqOBYx6CghFEG2LOIrrM
         S19w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761759446; x=1762364246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bec5DtjUMCMZ+LaW5PfzvbvdukX10M0RMuKRh3c/XPA=;
        b=Ddpl53wwfR9f0tgaudzmt2E8zNN1dzRzbX6unxcwvyVcFEPDaIIOSKqDzDugwOTtNx
         oaClbSJx46Y32DxiqCU5VjPzPq5PbnMwjyDmKfmO1sojn17JFr7QW7b4rY0PPOBZczy/
         3v2YMNKL8/h4U0dJwwdNu6KujUdQc8L6L0PiYeE7svC/s/AX89s+Ug+QWrwujK81NdtZ
         WpBm7jsYcnpIsT8mn8zT/3aWtpLb2ab6PSPDqKWHYRnwrURLg8+GLaolKWoDdUiVAhcp
         gbcjlwC912dI8+w+XPySUcYQXGhr4ulPENQV3RhGWWNlgUHKebVtT98/fjVABhNNLpDl
         v8Jw==
X-Forwarded-Encrypted: i=1; AJvYcCUMCUFzl4wSiApnpkiZJvkwpL+c44lTod0vFRD4v/PCZjogGBM80z6Qy0pNO4QpywF0bvR45EAEYQ8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0pSVcecmKE4GPtgahOaCdppXKeS2qCD74lqq6pSjIllUqmlp0
	0sbHrbm7Q3RspfrzrMz8Db3WfZDJQ+IT7wTEyYlK4KwKyrhoWwDC+FDc
X-Gm-Gg: ASbGnctXIL/BHNTPAs7EftU02y7rCPfubLAIdYy/YNNIwHgm+z/tjuwSVHUlF+xrILX
	SvD+LjSJfvma9njMNIqFj+sNe4EjnG4p7dtlwDcFPAE9gvCjJBf4CZ6WfkqRKLOSMz483kWRjRt
	ZCrJAVA+qhk5QbCy99jFfQ8EgYDk5mv2r3t/f068IT23BMUgA7xNgmDxAaZbwW8PYMAZcF0Cxa8
	mOWAo3oecPy6KGLolu40h/WD97gm+a2KmKbtSLkcrXl+qhdLOIGzuRcDp9hXdqYuJmfvE8QAdot
	TdQXdNMI00d7kJsxjT+Zzu9qvAzinkYeFHzcFTl/VwzBA8+Px1g7Ts3ctcQb/mLu4RvUHKCH7nv
	t5BY3cVc5l2k18y4XpeGb7ConfdmoFoKmsirvaxZzExjE1h1L8wxcfQ9hk29DYs6WgEgZaWHOeb
	JGhKAzeKllEHFGnGrHm9by1C8Yh9Ek2g==
X-Google-Smtp-Source: AGHT+IGerI4odt8yvZLvuwrqAAAQ1NsWiR0PnVGWdiklZSUkMpKCbKISgvvccIoZVLhmQ6qz4uNj3g==
X-Received: by 2002:a05:6000:2481:b0:427:151:3db6 with SMTP id ffacd0b85a97d-429aef7b230mr3253676f8f.24.1761759446075;
        Wed, 29 Oct 2025 10:37:26 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm27493844f8f.28.2025.10.29.10.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 10:37:25 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Wed, 29 Oct 2025 18:37:10 +0100
Message-ID: <20251029173713.7670-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251029173713.7670-1-ansuelsmth@gmail.com>
References: <20251029173713.7670-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_164156_557455_3675B611 
X-CRM114-Status: GOOD (  18.67  )
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

Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
always supported. The USB 3.0 mode is optional and depends on the Serdes
mode currently configured on the system for the relevant USB port.

The first USB port on the SoC can be both used for USB 3.0 operation or
Ethernet (HSGMII).
The second USB port on the SoC can be both used for USB 3.0 operation or
for an additional PCIe line.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---

For DT maintainers, in v2 there were some comments, hope the new
description and names of the property better clarify the usage and
why they are needed.

 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 76 +++++++++++++++++++
 MAINTAINERS                                   |  7 ++
 .../dt-bindings/phy/airoha,an7581-usb-phy.h   | 11 +++
 3 files changed, 94 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 include/dt-bindings/phy/airoha,an7581-usb-phy.h

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..5106685c124d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7581-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7581 SoC USB PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7581 SoC USB PHY describes the USB PHY for the USB controller.
+
+  Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
+  always supported. The USB 3.0 mode is optional and depends on the Serdes
+  mode currently configured on the system for the relevant USB port.
+
+  The first USB port on the SoC can be both used for USB 3.0 operation or
+  Ethernet (HSGMII).
+  The second USB port on the SoC can be both used for USB 3.0 operation or
+  for an additional PCIe line.
+
+properties:
+  compatible:
+    const: airoha,an7581-usb-phy
+
+  reg:
+    maxItems: 1
+
+  airoha,usb2-monitor-clk-sel:
+    description: Describe what oscillator across the available 4
+      should be selected for USB 2.0 Slew Rate calibration.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  airoha,usb3-serdes:
+    description: Describe what Serdes line is attached to the USB 3.0 port.
+      Can be either Serdes USB1 or Serdes USB2.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [2, 3]
+
+  airoha,scu:
+    description: Phandle to the SCU syscon to configure the Serdes line.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  '#phy-cells':
+    description: Describe if the referred PHY is the USB 2.0 PHY or USB 3.0 PHY.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - airoha,usb2-monitor-clk-sel
+  - airoha,usb3-serdes
+  - airoha,scu
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/airoha,an7581-usb-phy.h>
+    #include <dt-bindings/soc/airoha,scu-ssr.h>
+
+    phy@1fac0000 {
+        compatible = "airoha,an7581-usb-phy";
+        reg = <0x1fac0000 0x10000>;
+
+        airoha,usb2-monitor-clk-sel = <AIROHA_USB2_MONCLK_SEL1>;
+        airoha,usb3-serdes = <AIROHA_SCU_SERDES_USB1>;
+        airoha,scu = <&scu>;
+
+        #phy-cells = <1>;
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 8085fdca7bcd..af23c590bbc6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -763,6 +763,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
 F:	drivers/spi/spi-airoha-snfi.c
 
+AIROHA USB PHY DRIVER
+M:	Christian Marangi <ansuelsmth@gmail.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
+F:	include/dt-bindings/phy/airoha,an7581-usb-phy.h
+
 AIRSPY MEDIA DRIVER
 L:	linux-media@vger.kernel.org
 S:	Orphan
diff --git a/include/dt-bindings/phy/airoha,an7581-usb-phy.h b/include/dt-bindings/phy/airoha,an7581-usb-phy.h
new file mode 100644
index 000000000000..efbb0ae75e3a
--- /dev/null
+++ b/include/dt-bindings/phy/airoha,an7581-usb-phy.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
+
+#ifndef _DT_BINDINGS_AIROHA_AN7581_USB_PHY_H_
+#define _DT_BINDINGS_AIROHA_AN7581_USB_PHY_H_
+
+#define AIROHA_USB2_MONCLK_SEL0                 0
+#define AIROHA_USB2_MONCLK_SEL1                 1
+#define AIROHA_USB2_MONCLK_SEL2                 2
+#define AIROHA_USB2_MONCLK_SEL3                 3
+
+#endif
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

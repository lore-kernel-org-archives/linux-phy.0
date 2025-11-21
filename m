Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 033B5CFA74F
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 08:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	References:Mime-Version:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G1HaTMtyGNthmlgAZVrRnHAtKoYQ++9fqinvp3UGqAA=; b=JwB/WP3V/qmNCXBbMFO/+AisQY
	Iy/Rx0/cjSUaC9KCvFHZkLovCe5e9YDFrxTY3FYMxPRKd686yMa+GS3HS52iwwq1IemMVb6ePa11/
	1kTxbKrPCwG+WMvztac4Ysd8o22vXV+QmvUGUialceL9rMSFlMnCMbMKgEZRqWIZFnXdnLqq+k4+s
	vNgW0R4Jud75iy3Xn8pefjFOI0bn/Q2iKA2TSOvWXRMlMRP/r6jquRaFW9nUTsbusX9heL5P++GFp
	nYm6/uQ6ho2APEYDabcgGJJi06waBGP9C/EnDMKLl2ZpRkKRybwIAmgRaRoUxA0dQg5XfbU2TVEBU
	N22BSyzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMMwd-000000086eb-2lnj;
	Fri, 21 Nov 2025 08:56:43 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMMwb-000000086cZ-0aUc
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 08:56:42 +0000
Received: by mail-pg1-x54a.google.com with SMTP id 41be03b00d2f7-bc0de474d4eso4870037a12.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Nov 2025 00:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1763715400; x=1764320200; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=vn5NP0cGfea74Y3lyKidjSUH1ktUHughQxZQCQ+D1PI=;
        b=1ZTAVLtx7auzy/ATz/7ybNZUNwRWnE3be2oP1m7fjT/tQEd7SonuCtcwuizo6oqgJ1
         6AQ8u6rxVEz5UntUIepRCFyC5ATi0X6bNVcCsn7rviZfqE10404sZNoLQfvvMKMKzYLS
         uTf0okRvi8gBoDVyC0wznyShPshI+RJ5EwHTPuSpb3pKBvND8Jy5t0UKYlMdc+tKMgD4
         lb9ZKnLmVW1rFsXW4CJLysKOBb+LsOZQZehW8i4QwDX+R9W0JY2gc03QY1B4k7k7X0lA
         etxptI8i0RmXbQyPsA3JOLQ/Q/twCRSoOJDbFDNZCjFPexKmX12vXWpvZsp/uGqtXCOZ
         DcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763715400; x=1764320200;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vn5NP0cGfea74Y3lyKidjSUH1ktUHughQxZQCQ+D1PI=;
        b=w3mfgyhdlRMfZsC/+bgQMygwASTu96CBN1WuRMo1xyC7bO0ik7mDcdQoVlhHfHX3L0
         eG4zTWgZUmAT+tq3d9ZF3GADzuqLlFFipWOQRoU5JUxAnrlyCflFx88DoGmCTfQXAf9u
         EgOy5I43W0RvdKd4LpXo5mbG9BaOAw2V7XGMdHETexMbGTsArNDAKLYOZB9TKr7odRx8
         bOvrqhX7t20ENzZBDQDewUDMkczFJWbH3/TIh6omZshR8eR16Viy3rX14gbr0qG05u4i
         eiMsIB0cHlUFC+eBoNszdkClMPzalzmAPjTKyyCY5/HpmiNSVlwz0uNDPoilRIMEfZDE
         qfVg==
X-Forwarded-Encrypted: i=1; AJvYcCVDZFCwF0ufOLbPblf8DCXKLEANjBzKkfKWBJwU5n2Asw2CWg9QuU/R0/pNH34focL06GBTpEj7NrU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/yo+RcDg58IF39y9sNnAMIaid9GrIoM1jQAIvolMyxTPo27Ud
	dd4ocD8zeqgOL/xtqX9i4Ua0PaZ/5En1JU4QypcCGfgQAHs2C4vK4TBS6hSv7UXbuO7RdxtJ4sX
	Tz+JZbQ==
X-Google-Smtp-Source: AGHT+IFDdMrxjcppPqZfJnrNK+kHi6vCcjIwY4Y4M84oDtTvGViCP2xfFlDlQI2nSCDqp2hpRVKi0C8hcL4=
X-Received: from dyt23.prod.google.com ([2002:a05:693c:8097:b0:2a2:454c:f92])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7300:8244:b0:2a4:3592:cf5d
 with SMTP id 5a478bee46e88-2a7190a344bmr490773eec.1.1763715400036; Fri, 21
 Nov 2025 00:56:40 -0800 (PST)
Date: Fri, 21 Nov 2025 08:56:20 +0000
In-Reply-To: <20251121-phyb4-v7-0-df644fa62180@google.com>
Mime-Version: 1.0
References: <20251121-phyb4-v7-0-df644fa62180@google.com>
X-Developer-Key: i=royluo@google.com; a=ed25519; pk=nTq1n8WcJActRWe1s8jdcy+TzpTK4a+IYRCIWvQfq5k=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763715395; l=5147;
 i=royluo@google.com; s=20251120; h=from:subject:message-id;
 bh=VBoVbKgeWDxu8xXRvm5tzauXBx7SZr8OxNtDvYDeHzE=; b=JphE5nvH33SArlOM73vQrNifT2e2HTZhhsvejgwZZqcbKMf4uy7kEWN7cNqIV3T++Xd2oXXpm
 RgQz1NaN+s1A6BFoDCkIGeCsYi7VcpigMPTn7NwOtv4qAIGumq+GMdY
X-Mailer: b4 0.14.2
Message-ID: <20251121-phyb4-v7-1-df644fa62180@google.com>
Subject: [PATCH v7 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?utf-8?q?Andr=C3=A9_Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251121_005641_197310_CA4A1F04 
X-CRM114-Status: GOOD (  13.45  )
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

Document the device tree bindings for the USB PHY interfaces integrated
with the DWC3 controller on Google Tensor SoCs, starting with G5
generation (Laguna). The USB PHY on Tensor G5 includes two integrated
Synopsys PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo
PHY IP.

Due to a complete architectural overhaul in the Google Tensor G5, the
existing Samsung/Exynos USB PHY binding for older generations of Google
silicons such as gs101 are no longer compatible, necessitating this new
device tree binding.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/phy/google,lga-usb-phy.yaml           | 133 +++++++++++++++++++++
 1 file changed, 133 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml b/Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..427e2e3425f645f40c0813e29d6efe4f62b20609
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/google,lga-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series G5 (Laguna) USB PHY
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description:
+  Describes the USB PHY interfaces integrated with the DWC3 USB controller on
+  Google Tensor SoCs, starting with the G5 generation (laguna).
+  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.0 PHY IP
+  and USB3.2/DisplayPort combo PHY IP.
+
+properties:
+  compatible:
+    const: google,lga-usb-phy
+
+  reg:
+    items:
+      - description: USB3.2/DisplayPort combo PHY core registers.
+      - description: USB3.2/DisplayPort combo PHY Type-C Assist registers.
+      - description: eUSB 2.0 PHY core registers.
+      - description: Top-level wrapper registers for the integrated PHYs.
+
+  reg-names:
+    items:
+      - const: usb3_core
+      - const: usb3_tca
+      - const: usb2_core
+      - const: usbdp_top
+
+  "#phy-cells":
+    description: |
+      The phandle's argument in the PHY specifier selects one of the three
+      following PHY interfaces.
+      - 0 for USB high-speed.
+      - 1 for USB super-speed.
+      - 2 for DisplayPort.
+    const: 1
+
+  clocks:
+    items:
+      - description: USB2 PHY clock.
+      - description: USB2 PHY APB clock.
+      - description: USB3.2/DisplayPort combo PHY clock.
+      - description: USB3.2/DisplayPort combo PHY firmware clock.
+
+  clock-names:
+    items:
+      - const: usb2
+      - const: usb2_apb
+      - const: usb3
+      - const: usb3_fw
+
+  resets:
+    items:
+      - description: USB2 PHY reset.
+      - description: USB2 PHY APB reset.
+      - description: USB3.2/DisplayPort combo PHY reset.
+
+  reset-names:
+    items:
+      - const: usb2
+      - const: usb2_apb
+      - const: usb3
+
+  power-domains:
+    maxItems: 1
+
+  orientation-switch:
+    type: boolean
+    description:
+      Indicates the PHY as a handler of USB Type-C orientation changes
+
+  google,usb-cfg-csr:
+    description:
+      A phandle to a syscon node used to access the USB configuration
+      registers. These registers are the top-level wrapper of the USB
+      subsystem and provide control and status for the integrated USB
+      controller and USB PHY.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to the syscon node.
+          - description: USB2 PHY configuration register offset.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - power-domains
+  - orientation-switch
+  - google,usb-cfg-csr
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        usb-phy@c410000 {
+            compatible = "google,lga-usb-phy";
+            reg = <0 0x0c410000 0 0x20000>,
+                  <0 0x0c430000 0 0x1000>,
+                  <0 0x0c440000 0 0x10000>,
+                  <0 0x0c637000 0 0xa0>;
+            reg-names = "usb3_core", "usb3_tca", "usb2_core", "usbdp_top";
+            #phy-cells = <1>;
+            clocks = <&hsion_usb2_phy_clk>, <&hsion_u2phy_apb_clk>,
+                     <&hsion_usb3_phy_clk>, <&hsion_usb3_phy_fw_clk>;
+            clock-names = "usb2", "usb2_apb", "usb3", "usb3_fw";
+            resets = <&hsion_resets_usb2_phy>,
+                     <&hsion_resets_u2phy_apb>,
+                     <&hsion_resets_usb3_phy>;
+            reset-names = "usb2", "usb2_apb", "usb3";
+            power-domains = <&hsio_n_usb_pd>;
+            orientation-switch;
+            google,usb-cfg-csr = <&usb_cfg_csr 0x14>;
+        };
+    };
+...

-- 
2.52.0.rc2.455.g230fcf2819-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

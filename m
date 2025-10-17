Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A98FCCD199
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 23:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	References:Mime-Version:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P0DmRyRMqOPNVETdrTdKtkijjvstb18D1+xTMNKb8NA=; b=UabPHf9Lj3eqhOgsVqdAQlZYM/
	omHOaxw1GUnoMTsiHKZY7ChGw5j0iWr6gYRUB54DXIcOicrpC59rCMreVA4zI78y1Wocx9nxUZLaK
	OheY/OsLPuhXqO42UhgkJ8V5Jnu1nx85kIqJy+aQv7iozZALXhW/k0ZjC60L+IA3zIM0YygYgaqt4
	AOgxq5geBSjm48Qu+tSxi4qx+9JbulPHt0gsd9Wd6Ezuj+CCVq9ZnihdUh7IaZ5ph0MdeplSehnZP
	BH3rU259AbclWo34SZe+y3RQSO8DI9q6L1dULByVKothVotwEC4F6BSIQ/w3izU6R+JR4NWcpMMqd
	elCpQAeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9uFB-00000009DCE-0LKJ;
	Fri, 17 Oct 2025 23:52:21 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9uF8-00000009DAG-2vOI
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 23:52:19 +0000
Received: by mail-pl1-x649.google.com with SMTP id d9443c01a7336-290cd61855eso15016605ad.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 16:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760745137; x=1761349937; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=rFUd4KPZzUTUCisRlC6z64P8M16hH71AE+17EZ2+Cpk=;
        b=wNLA9FT5yqD7pJPoHGqwbxjdcoApGE07myLHgoZ3ldAYGrDjIUn70bmqEzJOuyR/oA
         D0fL/+cdTuxFl0oUfJfFb5ulq/7/7jDmpmAAvAdurCJ1+4uh+Yh3gjOKNVBPeOrCl1gU
         hFqwcfMkFHCkOqbDj2W5goK5elcKajwipQJG/uvAz5F43zKxclXEyRODyjZCDCeD9mz/
         eYbKHaMTFuamZpNBLJsk3+RA3nwmD5n6Rs7nyAzU8Y2gXwBkWSlsi4WMsTttHH1U2oil
         pEPtKz3nJ8+xZj/glMYQeg/KVoAUeyzSU/SjYVdmDrX5eOAsIPWDxXiMUC7M/PzOuL4R
         So0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760745137; x=1761349937;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rFUd4KPZzUTUCisRlC6z64P8M16hH71AE+17EZ2+Cpk=;
        b=lCEtDGm309jO8C2xlNBe5IWMighZ3kXg3EeZ6N2WVOTMqkLykzE2B0zwZl0LUyUDpO
         JmZ7NJbEVthurKZOwU8hYvrJLSmYGSoNHj35fmGZTrSJzvEHUWHMjiI8lyACFW3St81R
         wwu0509zVedxhjFS7zqvul5bIK28XCP8tcl0nUF+ZTnXJi8j4wGd2WFqJnFJRjaFqh9+
         9+DV1WoIqhVTJZz7asYJgbRNGy3mhY2bSKITiAUhDdrt1uGFpDdZRLc8DZrvSrVBdWtl
         o9GziPWw2B+onC/Yo8iElA7En/oIDZ32njCKJtS/lKkDMvr5utQAuwWw62pkjqBugJ6f
         fvqg==
X-Forwarded-Encrypted: i=1; AJvYcCUXvuUAOEc89v1HkLv7q9eQxTEx/iLLRF6fhibDEYbySiZxpVszR/v6+S7owDEQKaJyTIbglyVAmmU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxjlVgO0vJ4xFV8GmvsfpadHim6QPUK63WZcfEqVVDu/Y5AWUhA
	OM+bZ91NFReY+QGNaTWG3PvBmevXyTi4hOYdl0NzGHkADIG0LkH2p3givUEoG/IifJdOZgJN5rD
	44nTQ7g==
X-Google-Smtp-Source: AGHT+IGtonGWIlL28ar3C4SMS3Z4eGNFhKCMbFqjIxEvFkEnJLs3JqhHMERukcTD3gq5IHrZVsg/cEtJU7Y=
X-Received: from plbkg4.prod.google.com ([2002:a17:903:604:b0:290:be3d:aff6])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:384c:b0:27e:d9a0:ba08
 with SMTP id d9443c01a7336-290cb27dae5mr68350725ad.43.1760745137248; Fri, 17
 Oct 2025 16:52:17 -0700 (PDT)
Date: Fri, 17 Oct 2025 23:51:58 +0000
In-Reply-To: <20251017235159.2417576-1-royluo@google.com>
Mime-Version: 1.0
References: <20251017235159.2417576-1-royluo@google.com>
X-Mailer: git-send-email 2.51.0.858.gf9c4a03a3a-goog
Message-ID: <20251017235159.2417576-2-royluo@google.com>
Subject: [PATCH v4 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_165218_732022_1B6BE3C9 
X-CRM114-Status: GOOD (  13.54  )
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
generation. The USB PHY on Tensor G5 includes two integrated Synopsys
PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo PHY IP.

Due to a complete architectural overhaul in the Google Tensor G5, the
existing Samsung/Exynos USB PHY binding for older generations of Google
silicons such as gs101 are no longer compatible, necessitating this new
device tree binding.

Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/phy/google,gs5-usb-phy.yaml      | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
new file mode 100644
index 000000000000..c92c20eba1ea
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/google,gs5-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series (G5+) USB PHY
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description: |
+  Describes the USB PHY interfaces integrated with the DWC3 USB controller on
+  Google Tensor SoCs, starting with the G5 generation.
+  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.0 PHY IP
+  and USB 3.2/DisplayPort combo PHY IP.
+  The hardware can support three PHY interfaces, which are selected using the
+  first phandle argument in the PHY specifier::
+    0 - USB high-speed.
+    1 - USB super-speed.
+    2 - DisplayPort
+
+properties:
+  compatible:
+    const: google,gs5-usb-phy
+
+  reg:
+    items:
+      - description: USB2 PHY configuration registers.
+      - description: USB 3.2/DisplayPort combo PHY top-level registers.
+
+  reg-names:
+    items:
+      - const: u2phy_cfg
+      - const: dp_top
+
+  "#phy-cells":
+    const: 1
+
+  clocks:
+    items:
+      - description: USB2 PHY clock.
+      - description: USB2 PHY APB clock.
+
+  clock-names:
+    items:
+      - const: usb2_phy
+      - const: u2phy_apb
+
+  resets:
+    items:
+      - description: USB2 PHY reset.
+      - description: USB2 PHY APB reset.
+
+  reset-names:
+    items:
+      - const: usb2_phy
+      - const: u2phy_apb
+
+  power-domains:
+    maxItems: 1
+
+  orientation-switch:
+    type: boolean
+    description:
+      Indicates the PHY as a handler of USB Type-C orientation changes
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
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        usb_phy: usb_phy@c450014 {
+            compatible = "google,gs5-usb-phy";
+            reg = <0 0x0c450014 0 0xc>,
+                  <0 0x0c637000 0 0xa0>;
+            reg-names = "u2phy_cfg", "dp_top";
+            #phy-cells = <1>;
+            clocks = <&hsion_usb2_phy_clk>, <&hsion_u2phy_apb_clk>;
+            clock-names = "usb2_phy", "u2phy_apb";
+            resets = <&hsion_resets_usb2_phy>,
+                     <&hsion_resets_u2phy_apb>;
+            reset-names = "usb2_phy", "u2phy_apb";
+            power-domains = <&hsio_n_usb_pd>;
+            orientation-switch;
+        };
+    };
+...
-- 
2.51.0.858.gf9c4a03a3a-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

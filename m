Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38B50C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 10:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=An4CTsDGR/uxNF8zshMjGq4sqLhRFQZSa1jCa6/CAl0=; b=427C7/K6/Bvv3X
	sVtTsqkRbT5GzQ9R0sdqXhMbu3VPtGnWAN9IR1IujpeSJ0z/xdZDCGYMW1TbF3d4ct47TNrKiLPCa
	ZR3SqPltzv8QbVMaCaauICWZUtjdPMFZer2larFLeVzO+bz7+1IWwKb7FkLgkdzwSV1mMGkptartK
	qWUH6f8Rpn/jV/obXlfwEwBRGOzJ3MxFBtB9j3oDC5+22aR2ynanVYehCgPXCwaLrGVfnIIB4ln26
	Htiwd2KpNuXcEn2qJ5W0r5lOdwHKPpP2M2zDbSDdbrGwHebBWjn3WMYOuE6sm4QXa1VPolV/42bCK
	X+JCJQGuX5S4yp4Ea88w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPdb-0000000Gusi-3tyb;
	Wed, 08 Jul 2026 10:36:19 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPdZ-0000000Gur9-2YaN
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 10:36:18 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2cacd69a9c0so6252545ad.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 03:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783506977; x=1784111777; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=H89YxPz+LDcG3sLulupfETRoJ4vkpxtSzZRwMnjcQcA=;
        b=cQXdWUJfovL13jezJZKL36VOOXoJaTDhwNhQSVZbTl0qF2o2IjXOLY3yYVmtK2NbVQ
         I9FWiVX/NcDK/D0C+2JQqy4svdx893qwnJRRdIxcEIFhbrTtfX/cymmFhn3ZDddKyOTi
         +TLnqmrD1CCx9IqYngJ2oAT2hSN6rVNqFEQ5eFD2g+Y2Pdypmc1PwaVVTo/ej6Zj+jnZ
         S1q6bZRFOlMxckB8aEnRp+DhI+UL+hT1e/crxIzqiYaGwG6FzaAcKZQGlRc8My8ZhYPv
         wYyLylZKyThDqfiZY9LsNZPgqGea/Ff3fFz80sZTm4MPdluvtFecYW0HJRp/HxlhvTEG
         KqMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783506977; x=1784111777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=H89YxPz+LDcG3sLulupfETRoJ4vkpxtSzZRwMnjcQcA=;
        b=dwjY98cpEJZFPyo5zstNml4jBKHy+8KMEzRs+1iSvHPgazw+n1DBFBLDJtmFn0Coqo
         NJ288BYBtVhu3jxaCFbNsPFKe09Q1rMdcQ/lu1fmkDpHDofGUZBUPLFY+lDgJ/vhci8v
         hlBRqjNSAeKJ1bTool181VbBMrCHpnXFxV8w7LyTHEDEWjfTp6EmRo+XvFj5+kZOEf+0
         m1cRA0yRJ2jVoTEtjvcASsfuQJE2MkMQfUO4aQGDldrqMfPV0xQVMBWPdi24HWlmdgJ1
         xK7lWT/GjYMlTC6zRzMtxEHawNvYe2z02LlSRE8/9Psy96OWwhlEwJ2YqXAyRZz6Q7Si
         a8+w==
X-Forwarded-Encrypted: i=1; AHgh+Rph0jNZPcWGwm3vsDraEVoC/BAM5UWcQi5Ym78l4LqUDX2pnqX1qmuOWAUEmaVqdToP+spn6o9kzg4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxz+H2eFA5w+fcAXY+XhGKiGFenczQxSRQQbIJ+6P0hiYf6feVI
	o+4zKN9Unrzv/e+gJfOn9Zgzla4bDPnhpqrfUjimvDHxKzv/Ort+fAjTv472Jg==
X-Gm-Gg: AfdE7ckT/8AZI5YK44r10oY2oKMkC76wRgzROF3xBS1jN3AltdCxUCCnRA517mWlOsH
	0L0VmJvGJ4Iazc4Y9d8Dl9CI4JQFhCkd4vo1I0HaaC23WLrGAaVDNWFQqUJtdpPv7A1u/2mee7v
	EvhbUDREN1fzpBArc1a9TD+yp0jucaUlMTgV6eaLK7Pa0CrzF8Amxn6snvqjNjZLiwhSFmZmxN4
	lUF0QajWq2L99Ttj9qbKn3bsqucff2UnlIAtnqSxBr0ztXOhP5XUAa3jRbTISDGpTn0EMsYJbO/
	1jUPWmSLiZS4g99KqiyVGJs2SW+CCbNyb1Uaazvk3GUFv+nmjlu9EHB/MHJ2ER/T1tiMdYKxVVQ
	VYAoz4uuaec2vIdpMnO1weH/DUnC7N0GnxlMtAHGTvDQ7X3N9Q9lLh9Nk4HLNJ8Tgm88ujlZev7
	W/+pnHbejtduyqEjhzhXEwdf4Wfg9WHEG2yILgsojj+FwWZ30A0edVEMOgW76Sb52HqmYIAqt31
	Q==
X-Received: by 2002:a17:902:dacf:b0:2c9:e9c7:2b59 with SMTP id d9443c01a7336-2ccea42e1famr18928175ad.35.1783506976495;
        Wed, 08 Jul 2026 03:36:16 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9bdb9a3sm25987525ad.13.2026.07.08.03.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 03:36:16 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v3 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and OTG
Date: Wed,  8 Jul 2026 18:36:04 +0800
Message-ID: <20260708103606.1462960-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260708103606.1462960-1-a0987203069@gmail.com>
References: <20260708103606.1462960-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_033617_658083_0D614FB4 
X-CRM114-Status: GOOD (  15.95  )
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

The MA35D1 exposes two USB PHY ports (PHY0 and PHY1) managed by the
same hardware block (USBPMISCR register in the system-management syscon).
PHY0 is shared between the DWC2 gadget controller and EHCI0/OHCI0
through an automatic hardware mux that follows the USB ID pin; PHY1 is
dedicated to EHCI1/OHCI1.  Because both ports share the same register
topology a single binding and driver should cover both.

Changing '#phy-cells' from const: 0 to enum: [0, 1] lets consumers name
the port they need while preserving backward compatibility: boards already
using '#phy-cells = <0>' continue to validate and function unchanged.

The two new optional properties:
  - nuvoton,rcalcode: the resistor calibration trim code is determined at
    board design time to match the PCB trace impedance.
  - nuvoton,oc-active-high: the over-current detect polarity depends on
    the choice of VBUS power switch.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml | 45 +++++++++++++++++--
 1 file changed, 42 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
index fff858c909a0..191d1b2272ec 100644
--- a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
@@ -8,6 +8,18 @@ title: Nuvoton MA35D1 USB2 phy
 
 maintainers:
   - Hui-Ping Chen <hpchen0nvt@gmail.com>
+  - Joey Lu <yclu4@nuvoton.com>
+
+description:
+  USB 2.0 PHY for the Nuvoton MA35D1 SoC. The PHY node is a standalone
+  platform device that accesses the USB PHY control registers inside the
+  system-management syscon block via the nuvoton,sys phandle.
+
+  PHY0 is the OTG port whose signals are routed to either the DWC2 gadget
+  controller or the EHCI0/OHCI0 host controller by a hardware mux that
+  follows the USB ID pin automatically.
+
+  PHY1 is a dedicated host-only port used by EHCI1/OHCI1.
 
 properties:
   compatible:
@@ -15,7 +27,12 @@ properties:
       - nuvoton,ma35d1-usb2-phy
 
   "#phy-cells":
-    const: 0
+    enum: [0, 1]
+    description:
+      When 0, the node exposes PHY0 only and consumers reference it
+      with no cell argument. When 1, the single cell selects the port,
+      with 0 for the OTG port (USB0, shared with DWC2 gadget controller)
+      and 1 for the host-only port (USB1).
 
   clocks:
     maxItems: 1
@@ -23,7 +40,29 @@ properties:
   nuvoton,sys:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-      phandle to syscon for checking the PHY clock status.
+      Phandle to the system-management syscon node providing access to the
+      USB PHY control registers.
+
+  nuvoton,rcalcode:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 2
+    maxItems: 2
+    items:
+      minimum: 0
+      maximum: 15
+    description:
+      Resistor calibration trim codes for PHY0 and PHY1 respectively.
+      Each 4-bit value is written to the RCALCODE field in USBPMISCR and
+      adjusts the PHY's internal termination resistance. Both entries must
+      be supplied when this property is present; when absent the hardware
+      reset default is used for each port.
+
+  nuvoton,oc-active-high:
+    type: boolean
+    description:
+      When present, the over-current detect input from the VBUS power switch
+      is treated as active-high. The default (property absent) is active-low.
+      This setting is shared by both USB host ports.
 
 required:
   - compatible
@@ -39,7 +78,7 @@ examples:
 
     usb_phy: usb-phy {
         compatible = "nuvoton,ma35d1-usb2-phy";
-        clocks = <&clk USBD_GATE>;
+        clocks = <&clk HUSBH0_GATE>;
         nuvoton,sys = <&sys>;
         #phy-cells = <0>;
     };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B978C88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 03:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clAr0xwBRAKdgWduS8pktGetsQvkiUThW8IEDGg9Ow4=; b=kQqviKh7IDpAPM
	ujN5KcWV3ZA6KvtvyYfEp49NFNVtOPM2sx6mh1mH7l1/0fesqgtp4ywx1k50byHnbGwHoIbBgZqrs
	dZDmu+5wkFo+z9/JBvDXqxPFWjN6iBz2b2EGEv8hvm0cqcjyL6OoXeMJXjkvBCm7nStvtUc74VxGr
	btYIppWZCl23JM1uS3S2D3jc4BWclwdZzzS2P5zVLqsceVZ8520Q+ta7FfKt5llh9Yj+ECTBZTiuK
	X7mEL1x8bmQoxmfmqgGOoSiCAybIA+0kvanSjtvXbHI52qsy88k4QZZsCTw/DrkJmDVRBQHsPhJ/Z
	58WJ2sIcpUUukJw/89JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xDt-00000002G6S-0KZx;
	Mon, 14 Sep 2026 03:19:13 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xDq-00000002G50-2tLZ
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 03:19:12 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2d747eb79f6so9510975ad.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 20:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789355950; x=1789960750; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GVUZrYg+XX3ftKTmbZ6y3GjBx4YY/KKIzTtukvscq4w=;
        b=cmbMOetUw8KSbrXFV8g9HjNF0Y+/8YydVSojcGammjrbeeOrdMt8ocoCQjobrq6mOw
         U8qaMMilLznnd36/zY0pxfyINQctGfiYurnjm820ZTLhB/VgyKDMJGBOorQHKwpIYnuB
         GMxgtp+oOAf+FSQQoAqnDgL/EfcQ5l6Az15HEdYmmx6LypGcTx91i023n+rMQ8MVcSde
         uLgPiFnwbYmf18qgc0ufyWa/14YNOGzk5ef+UpfVdRO/hIji+UJNUgEjlC+PMQZnLpzd
         5PDYwmifTi2I11tWeu49UNWsePlNwtzcptm78YEOMkFuSw5Tw8ikNyQ9B4CbTh97pRVH
         pvQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789355950; x=1789960750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GVUZrYg+XX3ftKTmbZ6y3GjBx4YY/KKIzTtukvscq4w=;
        b=rNmykmw/gs417Y8ePOmdHnAa2tsZb3obD3Y60FrxyhFMeb8JhpMujw56gwPCj6Ezdu
         Zrw/ZNeXdtpqotrO+LJgMqlf3HRvRtyeALGfeeQzM0buXCZPUq1wRV4BRwwOeXh6ZAJx
         bv2XUagHAxk9w/drvRG0+WqOxVyapepVB+nxaRF2N8+Y7P0cgBl4aGVZnMELOKKgnRfh
         hCJCr2H6inZYE1yJ31ZF6RoRIMsYGWuhcqwx27TtIB9gI5tDWERR6s1+C2T6IDFFTsTu
         g6BMpbp5J0Vm1bFWIQhW6G1DLJnopkgOSbK2ZgWxFAJARstDv6XVDcjPFTjwFgICD+j2
         sgPQ==
X-Forwarded-Encrypted: i=1; AKwUvBxiW5REHAQ+eTbC4aCdtsPffyanAqM176dBB3uQaNAD4Anm90XV0YCHtAZ+LWltJcjbBTNKs4aYxxg=@lists.infradead.org
X-Gm-Message-State: AFuF++kmDcdhN1TJiKo4eAHCR4g3z9v27FCXDX2z+Hnw2QB/ffEaMarI
	FhfhLt2j6m/SaZ/w0n3PAuH/c/1805yPsJOczsGtkGepgwCuAkR1+Tvv
X-Gm-Gg: AYBFou01gWjdDxde0W1yD1YW8vJSzXbGQTmHjvEWqxIn+J9wsnu3ESx3egNYspIi2ea
	pGcP2Cw6WCTO3GMhAxzWIKBr/9Dj4RQTOUdB8O22ZoSjZbIjF9a+BmZ5km4VrMiAN7AMqtkV20+
	Cc/WIZqWKT2ZT8ERYFPt1Jb3QktuQK07ZQu8PryOJVdEEt6wgT25VM/4el2f0KJvHG+QcyMGOK4
	a4lhJiXNeBR1SRnb5TQEE1Rw6IFWfQKs3+cBGNTSVF7bTC+39uldEfAnUnTt2XHFkR0rAGaKf1w
	1+YZCHMxg7B3AIziqN6jOJX1wuLQetnoek6tRT4YXevzSG/jT7tZ5E73bi8IX2Sc5ICMCHzdB5W
	P+7U8C9O2psvF2ClBgX0reILRCsbGR8ztKGlnBeZ7OMehqj0GaVRl3bh5E8r8ucd0orpzminQ98
	6u08AWgVXgwuJpvLaiYQyTD8qClM6pJ36CbP5wqg9sxK8F0Jv8cM6plefM/P0YQgjFHmUoaj2OA
	e8LkKq8ZX+B+Ph6mDxEono/ng3pyG+edxliBQa32taEIpDyC3vjseHGlEFX9ak=
X-Received: by 2002:a17:902:d582:b0:2ca:1479:d9dc with SMTP id d9443c01a7336-2dd6c6db2e8mr18390955ad.12.1789355949721;
        Sun, 13 Sep 2026 20:19:09 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cfc2d3bsm41355145ad.48.2026.09.13.20.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 20:19:09 -0700 (PDT)
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
	Joey Lu <a0987203069@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and OTG
Date: Mon, 14 Sep 2026 11:18:57 +0800
Message-ID: <20260914031859.385224-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260914031859.385224-1-a0987203069@gmail.com>
References: <20260914031859.385224-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_201910_738203_8473ACC2 
X-CRM114-Status: GOOD (  14.96  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml | 44 ++++++++++++++++++-
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
index fff858c909a0..1bd22dd0e5fc 100644
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
@@ -42,4 +81,5 @@ examples:
         clocks = <&clk USBD_GATE>;
         nuvoton,sys = <&sys>;
         #phy-cells = <0>;
+        nuvoton,rcalcode = <7 7>;
     };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

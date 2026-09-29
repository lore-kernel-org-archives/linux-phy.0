Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27BB0CA5FAB
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 02:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUd/7ZuxLlfKfykL2SzcU5h1B7D4lsg0SNqyBQ983pA=; b=cAOYP8NTl1fW/s
	o1xEeRbDLk8K8ED0/L6YpphyD5jR315kdGdijwxMPBGegWTqsBVuZYgEuGqrfYXLOiIzyhRnJ0ZHw
	MtTnanDUhtnxJMvQNXW78lmPrmkWnmGQZD7wlku//SWlkacHASPiKzsOFYdgyo388WZGun6bmQWJf
	Cb8anSYLpyQZYjPy9m6g4gK3CV2qdqE8Er8T5NUJn+FGJH0uuPOg/8E4zA43cfcN9rYF8hJI0u5bS
	pUTDlmAj/eGu0B9bIYp8rN0oN8fIbAG/6Pxro4i1+gjHkPHzSSOJJMXkkwMBxgP8HiozHc3o025+U
	wB9mtBrNcppLR3W4sajg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNHH-000000026Cc-3W9w;
	Tue, 29 Sep 2026 02:09:07 +0000
Received: from mail-pz2-x2a.google.com ([2607:f8b0:4864:3b::2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNHF-000000026Ba-1nfv
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 02:09:06 +0000
Received: by mail-pz2-x2a.google.com with SMTP id d2e1a72fcca58-8814e797a5bso1223770b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 19:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790647744; x=1791252544; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X72fT8j3aTk48j/y0v4w7hMGoPZwDLH0NPKuxge34uQ=;
        b=FWT5bfeIAjhDyuP0+tXBfLEHWJvpt/cgxCaP2mC6YtujY+cV4EAuNPetGajToFxCix
         n3ynPt3MOQKm7b3aPTtsaSWUG87xjMEh6Rjan/7sqCT8UpGZt62RqQpLmPIhzfZpIVrD
         +hMZJ4E3cO0d/JBOLOWsFRWqLWM5xVllDV++9x+pNJ8XE7CYWncUlerbp4sDdtir8w9n
         CwwBoTs0eQKKx8ZWZTDnShpwcZCwcBvbSt/mtLqv4G7TD3KZO47EBW1YHFsFuEBy5mi6
         5UMk2vlviBHpKSKSRbvbmSTiPFGTpFlQRMv/xojuvUEGA4+8KS1ow98yy39SN2n6+8t8
         k5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790647744; x=1791252544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X72fT8j3aTk48j/y0v4w7hMGoPZwDLH0NPKuxge34uQ=;
        b=Zq2Yb654R90Bfk0ms/YVLw9iT07yAJn+BCwOKgmnctSboaH6zAqPTWVB1CfSVmxVIw
         +X8vu7647/XoBynxJdocsVPGpLFChw9FWlmsKPSjjnpRNqiJe1ZKQYiNm5MCYlxvhtCl
         pRpyjMNKBuG52XtVmxe0TEZsyVEms2MeOy0FA/+b6KTScnXQwgvY31BBLGspnoc15siM
         hDhUM7kh/vzVQYY7ej3FigJksKrlPkAce+qtqsiobhIG9R5jzbc43eIeeqp2ToSM78p5
         GlMKMzkxnHz7YpzILFj36kCOozKBZoyBMXs2YZ4f42WEgbs2/wA5ONZ89c0ELN79hed1
         Nxbw==
X-Forwarded-Encrypted: i=1; AKwUvBzQHsxEDjuztwXEL6y/cP0RZ2pYnbOwej7gQ08kOyD0pinjjT1r1xP76EcMlmgIYNsviDayB1WSXZg=@lists.infradead.org
X-Gm-Message-State: AFuF++mCEqQyM+wlNpaC0lT9P3IguWzkPfowadyxEIHjlZDKBhnyffom
	ZMWTyJU9y0E/Ls8yUG9IaI3ByOGlZwoNyoACThkCdIeXbqar+f01nupP
X-Gm-Gg: AYBFou0Dfs2EPMMv0HD2Wc29s5zNMrasrXNJx4443R58pywsRdfECpubSUOWe5TrvIf
	VcqWWi7gCHyKpo8UgecCk1LiJ0Ug/G48Yk6maRlXCkNG9+tIMdGSqIMtCgVp7706DHb2OtICV5L
	cOHkVL5DytQ9u3AqbfKR8ykxh0UHFBmO8FmwZsLqi6NqN3HarhWeVo3ucUTR7kE3lKD9enNn1OA
	J7ulHxdU5Gnyk6thF7rdECKXDIJ16yTOMlrQGQBzI7sRCIvqOnVKq5omos7LUNWxpCwHqXQKsa+
	tBhokl6KlxK+0i1zuUD6O5JmOsKq5ZYcOpxoeU+uTfgIMVJ3xRuMB+ZJojvsc/AgMThKggy+Ai4
	v6khXilfjgvRP5Ja+QOvfx21MI9Mm8MsMQO2Oyp/6ELdjBD+XMU/qd9IdiQEZdIL4S9/9Ws2Wj8
	2tGo1iU9IlOWHmjVMX0WudbDXtfGTZ5JpB5BRRSNE0JunvlkossARe0wBS8nf+YnwYODBBXQLCK
	KDjp+sajjq/nCIw+hOZN2xSoCW9uiLK+nHNZ2Yg7RDCe77HXD8VpVS5Mk1FAA9n
X-Received: by 2002:a05:6a21:e104:b0:3dd:a197:cf1b with SMTP id adf61e73a8af0-3de0e8e18ccmr13432494637.63.1790647744404;
        Mon, 28 Sep 2026 19:09:04 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc78796cf39sm5448596a12.32.2026.09.28.19.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 19:09:04 -0700 (PDT)
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
Subject: [PATCH v6 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and OTG
Date: Tue, 29 Sep 2026 10:08:52 +0800
Message-ID: <20260929020854.1282339-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260929020854.1282339-1-a0987203069@gmail.com>
References: <20260929020854.1282339-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_190905_496141_2BE01341 
X-CRM114-Status: GOOD (  15.76  )
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
    board design time to match the PCB trace impedance.  Both PHY0 and
    PHY1 values must be supplied together when the property is present.
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

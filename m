Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E6FC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 10:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clAr0xwBRAKdgWduS8pktGetsQvkiUThW8IEDGg9Ow4=; b=KFGQvc7143z718
	nJWSaX+8tbqaUmpCZbt771qTOjzEdhx2ZJS0oEQyj/iV9SaxkG1VrE2Vwbpg7Q8+pa6a0bzVq8IHS
	nlP7mskE2VQ8xf7aFPN+WHY+pAt5bLjASbvuhwF9/jc4Kac4BGIse/165kpmEpOSMkcQcIgsOn7Wd
	ZkZOjiSl+y9o5Tun0Ge3RdRYVs2LnSxqBz53InAN/myUG4+6gz8XJKp1HS0vYg3BnCYQsma0k8dqe
	A9CeES3Te7KU0Y6c49d8uHco9R1BVZBhR5F7qrrBoR7RXJJNmVdf5eh34OVs70xLGoDVJOOTrVpnh
	Ua5n/lYJ/5iLiDK5H1Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wll8t-00000006TXi-1ZTg;
	Mon, 20 Jul 2026 10:22:35 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wll8r-00000006TWZ-37xw
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 10:22:34 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-382ef647e20so9326786a91.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784542953; x=1785147753; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GVUZrYg+XX3ftKTmbZ6y3GjBx4YY/KKIzTtukvscq4w=;
        b=CA8xvDHca0Ze5KIgYw3ZLpXEL3wQXqyi/0ej3dKdgo+IkYZGFzCfPSlkOiJhMBtUWs
         DvzgI19c8GHxEkYv7v5IZESjMpKl4HV48lLqH+bfN0pRG7cyKumK2Kis7dFBEFY8sfLE
         kIl1S66d9Jy3Hi8sH66kFwXTDLxnSfMRui2xoWQFMLoVwvyfCicgX/0D4ReN9UIB1ZZ+
         QjPMOA6gNZsm0IAfYOkfEQ75L1YOogyJY+B33+m/DXgmB36qxGhCCK8Zj8hSbqupsbVx
         vQiAg8eIkqHgZt1oOP2AIuv6eFcN8RqLv1EguGX8KpwxkvjBPhejbioAQ5UTZGbKmX/o
         hLMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784542953; x=1785147753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GVUZrYg+XX3ftKTmbZ6y3GjBx4YY/KKIzTtukvscq4w=;
        b=O8ghxmmf7IU1u8hA/z7fRbqptLLZyu9Dh5xJ+ovjFtHKmpFLVK4f0OzndW60XGkf6v
         +wdhr145Q62Yl96+gF45Q0MVwMO1i/bTi5q2jL3BoQrH5sRGN0yiK60SalD5BnULzrPK
         mI1kuMvcgmd/c6dkFfLv/zNIxi20GvUh8k/vrCcdR1oYRNB/y+XMXQ76CgT2BRZUVp8v
         urJm4uxkNto0MSchahFHVtYcrJ5obTh+r5v51fbs43Y7Nh8suG4CC3UhQ/eY8BbYGshq
         zNqoSorMyzs+NawAwAm01kSFn8luxyU/aCAS0wxVqKlRaQ7ekJVn95bj+zX7JNfdj2TK
         aYkg==
X-Forwarded-Encrypted: i=1; AHgh+RrDDeNmS9v3+igUeVsNqIW3v6S2W/vktDpP+NS+01vDAnUhIxR3UvYmR+fSCh/4hhOCZ0ZtF9LNlmQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyt2qfoNW/RRBAIAICC6jYNrA9liH5T73hil8FPFX0kdzH0nQk7
	w1Px8Io1E5473AY6l1tJXu5elhcLTDQb76s1PwZUNRdUPpj/hmVvZXCL
X-Gm-Gg: AfdE7cnhNvfR12TRuQY89fO3JgAqKlw6dEmoPBhkv8IcH5czetYjsAgIveGa0jeqrFs
	gDG/1xiCOX9AVez7hxh3Un4Zw4hSiMHndY35yY5oSHYP9Bb2DiBD9XSvyCXrns+R4p/5iysPk9t
	e0awbljV0VYGCAxjHkFFtaE5dh8yqvKgpjtvNAxqYKHR96kVOSKMDgFKGPQwe+hiGzi9ZQNbZga
	nAZXjVfH0Mie4p8GAcOla6KWGQKuHoUXmaIEAwxKk17UrULjNnANeBmwrOXIrrh60XnCdFESFnW
	kHe+PQ1HmjHk/8kILOnMw8HRNA4DpTtqcIlPJLdldG4XulngqH0EWfsm+w4JtPOsVjCSBg/4+vr
	bV/JA82qR2zBUQ/3HSDn4bV2C1fPpTKDzEgeRw6jwt5KWUObiF8dpoZhLWr5peKVvGE47ylFTKX
	RmaTu4NO1Qs84absM5lWnoQy0PtPTpMQpoGUJ8H3p5TRXyzGgR3RQrQCZH0qVpFiU=
X-Received: by 2002:a17:90a:dfcf:b0:381:1c96:829b with SMTP id 98e67ed59e1d1-38e4b422aaamr13448276a91.3.1784542952701;
        Mon, 20 Jul 2026 03:22:32 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e4b20df7esm5616125a91.13.2026.07.20.03.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 03:22:32 -0700 (PDT)
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
Subject: [PATCH v4 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and OTG
Date: Mon, 20 Jul 2026 18:22:20 +0800
Message-ID: <20260720102222.251179-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260720102222.251179-1-a0987203069@gmail.com>
References: <20260720102222.251179-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_032233_796422_6BF2FA16 
X-CRM114-Status: GOOD (  14.90  )
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

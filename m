Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C59B60A380F
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 07:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hXSHBpAJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=HNH5/qbm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rUd/7ZuxLlfKfykL2SzcU5h1B7D4lsg0SNqyBQ983pA=; b=hXSHBpAJDAeCUVWDun8xEDvyoO
	QZeoejWJePgqyffRGdkYXZmxiM2yXSamfloDKjv3dFO5Zyl77NdwdDM4QLuogiGDOhM0Ruo0gWmXn
	oWIJxqdI0fO3eSpsdXS3ILfV5ukcj/mwIwZ07ZxBdlPXOjaf7muT3gzh26QKvlj0tCIm3jJUCinvG
	kU07ziG72CS0UP5YnhrJuEm0OTwHNFU9PVi7MDNbrEhz5EOlvVgYqICoXvUmArPnnocuTi0vV3RA7
	2DRtz19CxSybshDKYGls2XyoTfU8cGTocXF9Zb4LTrzZSdiWO7/dwwX6Eh44cnKvKYZRFavdypHaQ
	XAss1xjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR2oB-00000005ucj-2n1U;
	Wed, 11 Nov 2026 07:31:52 +0000
Received: from mail-dy1-x1336.google.com ([2607:f8b0:4864:20::1336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR2o8-00000005uaa-38NY
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 07:31:50 +0000
Received: by mail-dy1-x1336.google.com with SMTP id 5a478bee46e88-3645f0f3fcdso5924737eec.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 23:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794382308; x=1794987108; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X72fT8j3aTk48j/y0v4w7hMGoPZwDLH0NPKuxge34uQ=;
        b=HNH5/qbmohN8GyuS9kkUbKZDyReSEwgRGMRsG8TZpukyGefLCoNZEcbMCH1JN7+qw5
         TOKD4yZJUD51f77w2skjIGe7wgFbZa/06+aCC+LBgqkyuQY5mu4E4IrExjt5b+wCgc6K
         1v4FdctMUJW29SmBkB3RoSh2v+K70NGMXB3gO4v3KYXfDpYWdsh38tO07pXZ5WfyXzbd
         CvUbmfzxtvZQvzld3wCvRa1fO+vepiF7ZzjssCPOwxzAq54OcF3T22F5eZtJv1cjtxLI
         Y4mxyP/0DyUxZn2IPuzBwt2HSITpq4wLbRjyzAK2gNsfgzNiW6NFnWO8ZYJrTRm6STzK
         7DbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794382308; x=1794987108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X72fT8j3aTk48j/y0v4w7hMGoPZwDLH0NPKuxge34uQ=;
        b=ELLNcAkPks7TZMvze3Z1zaG8FRmsdj71CJXN12dKA40SWP0PlKEYceH+I3q0ieX+dy
         6y8PrC/o7tTtXh65nkZqlnW5kuEWFZJcJzEv5sh5ZKZaisQvH573SyY063MNXEFUBx9q
         bPEyvXm2TT8Fs8FiWVm2qDYcehETN8nNQ6pxs2/9Tsg8YEZF02qNfwld8q0FyIWbcaHm
         A7bkIdZXE92zV5f6lK597F/FE2zpQi3KwGJ9NbMTgfoZnjhfE7LRGi7bVnwOq88kwGt/
         pnYqwEVPAlW2vDv5z5r+rOqkZlO6v/x3bdHmwaWl6UZ7KZuF/TEo6fd9iB2A51rF6c4g
         tH1Q==
X-Forwarded-Encrypted: i=1; AL+hErF+xmLj2p6xfrUT1TcmDKaCSjRe0y40k39Ku+sleFAvEJyUsb6+qtM5lTPtcrNXWjKyTnSkTk5wIfY=@lists.infradead.org
X-Gm-Message-State: APuU4Z9WxIGjr5Ibfsf5UO2N1cERHrH9RTQLpuSYdXoK5sdifbWiA91x
	w/+U21P2qEAi52ppTX1nsuy5906fwnlnNDNcyAcOYosG+aUJkruYZTCx
X-Gm-Gg: AYBFou3RZQZ0DQYxETWNAMjUbAuCLEV1CYqgZ9IUuOYgacJuxQSvxgp7x45PcZf7utw
	xIyzSCESnJMJEyq6zRem8cm5qfBDntDhUW7rb5CWvEWhHc3Q/51cRzlT1EauxwZkhqvQbSDdJG0
	GWOhhliLuUhD5UmRP2Vb96f3UgLLZj9Ij5TT4d7PbSiLzZ3AsawFplguW+G2gAYK0FhCD1uBDCh
	Gc7/4Ab16B2DyvGo1+x1KTdb3HzZKp6jJNhGuUipJVpq0L9xvf6Zo09bNP2rS7hqatVc76yWsiQ
	jZdIgUa7wQg4Rmt5mNASSZBi1GcvFHckcySs2JmVxoFIKrxgXIrNFxkcFMXtivNJBu15iDYRC65
	Qt8IUbCeO96chULIyjq07tzo3fB6rgEyWW/ZnxqeKIs4yUqmqigv3RCaP0ILhtm/43HbRhnSHbI
	fMK/muVfLomg67WcaJQVsmJEbUGnYQEGVQU8pgcULPLIjolDOZ+4VX3bdFhxWcaqBM1DetQL2ip
	RJthrt5VUKS5GZV4dq/c7Nj1goueJg5dqZZwOkCaL17uydf1vJewWevPCipzod9Lo6YciPlhb8j
	uvsOGhYbuXkj/n6uROncEOtKN1wicNKgc7MX7LXOEdn7jObcKLosUK318268fHZD2Wi9sgYHhqO
	NFZqLzM6+u8ZgbwFSHg==
X-Received: by 2002:a05:7300:d198:b0:375:f17a:d691 with SMTP id 5a478bee46e88-37686859024mr1969808eec.38.1794382307362;
        Tue, 10 Nov 2026 23:31:47 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3751fe32276sm12640655eec.8.2026.11.10.23.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 23:31:46 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
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
Subject: [PATCH v9 1/4] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and OTG
Date: Wed, 11 Nov 2026 15:31:34 +0800
Message-ID: <20261111073137.381966-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261111073137.381966-1-a0987203069@gmail.com>
References: <20261111073137.381966-1-a0987203069@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_233148_807016_FF0439DB 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,FROM_LOCAL_HEX,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6857B606A332
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 06:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yHAAySLb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Kp4p3hUx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rUd/7ZuxLlfKfykL2SzcU5h1B7D4lsg0SNqyBQ983pA=; b=yHAAySLbV+l+lrvAAHrRM7YARF
	eckXNZY7BZzw7AY+AlYb0axrRoFR1AebxuvArQm9FFDD1k5luSKqy7YEKbTnfA+POeu86EYseQ2rz
	+sDgNYV+AIeDQnohg564kFrLJVly9l0AmBJHQjw8pGusx20Cu0vx52Ca6KJYaq8rV2LlhyP6DyB/c
	RdSHR4/NJbz8IpZdUZyLBUX+fAYUlgK3X9JW5lGNuD15Eu6SCc0qCJSm+iee6EdrNMUbGb037GGZt
	TjLMVW3lTaI9EEcZNXr6ryCcze1/Us1AuuZHFcVuY1jwXRDqsv10we669bcrkFqtqbJK4rZ8/cvZL
	V/lSy8Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJIl-0000000HX0R-0S1y;
	Mon, 09 Nov 2026 06:56:23 +0000
Received: from mail-dl1-x122e.google.com ([2607:f8b0:4864:20::122e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJIj-0000000HWyt-0bN9
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 06:56:22 +0000
Received: by mail-dl1-x122e.google.com with SMTP id a92af1059eb24-14394530ec6so603459c88.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 22:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794207380; x=1794812180; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X72fT8j3aTk48j/y0v4w7hMGoPZwDLH0NPKuxge34uQ=;
        b=Kp4p3hUxK9COdpAojW9CAXbjxl9UssDZ/e4jKPKyo5plzRQOqXNuG+Kx4qOKSr3Aoy
         UqZTlnK9bxseMq/TRf0cCzUKWrma2EslBG83vqsjZNHKKz2/ywwj+XCdtrKD5C0JioIH
         vBQAZMZWGr6m2m54O8f0snHCOguWnZMQMxw0vF8QWs9Je00Ywhmes4wz3uyLMTqKRTjY
         Y0g0xuCaMJWVCC/m1V2+gKxF9pIIOl9HJw3h+nOhD9wH/bO/eCNWjD73p+KIyd893Ssf
         /S9+LEvBTt9MHMgTVUeXe4lIuXcztARaGn4iQYUKEKczUK5LW+/VYEWyeO3y/4gkxT8g
         wr6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794207380; x=1794812180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X72fT8j3aTk48j/y0v4w7hMGoPZwDLH0NPKuxge34uQ=;
        b=w2tCGXZgM4Nbke3i6in7MmLuPUyiRG9KiRzZ67AUAA4AMTHAibgNEEKC3KqRL2avU/
         L1V64OPKMfZl13q0DTrt2lhY4IHROxdqaTp/8Fs0e1pCUbXIffl8a/WASHSM+38PRjRo
         AEsw8dNT9l+mdJTqPYaaxxqvSgSsA6rJyILyRKar3PnaDkj0Yk37ZSEw1zB1mx/U9xYz
         HMLGUVE+CNnMjOty3q0Ydq9SxJhPxpQQXBOaGf2JJ8CTIT957glaPxXQ2ES3hJJVn8yB
         T+6Nn/+z8oPpoaPHotYxsQaBPvkyS//o/AD6NxNoQvfmlRs0SpX9bgyxRK1Eb9l0zI6A
         7Iww==
X-Forwarded-Encrypted: i=1; AL+hErH947/F2IeTRaHdLjmQncBmE5/VLr5PdwqufcafbM+r466hHO0M0LfA1CBIdO2ETNIOyYOEGaOVKe0=@lists.infradead.org
X-Gm-Message-State: APuU4Z+/kQ7YkHqQn9B6IuRTh0ybo7tWqvnaInstxUGelniaRtb7x8WS
	sIN64CgZnIm7yhGgRG7dEZH+vAyjaxzllC7qekzf9hyc4vSW//ifbBwM
X-Gm-Gg: AYBFou20AA6uCtLY/c5SogP+8nvJeTNZik9Jl49XCLkhaNnoS0Yx2jUV3ve5bAfiqtO
	4WaxEK2XhAMUpHrUyB75w2qlAhbS63y+qya6zfm5DF72qZUwJ5xU/hmBgWwpZbO9DuYNx9CI3up
	l9wA7wfI5GjeYijdS/OHvXa+9YGxyAgUIXdPONXVGIwWWoLqvNjbaC+crhVjl/ycpYydRCDWtlp
	GYgGZ+VWd9dmiQpHygyJYgvH+TNVJbWCVI92K/Dl/+1fLHqOotKVJ4x/X1m4He8xbem3Iw3NKXp
	eS4Czy8O0A+CT3bT65gbLIkdbhWp3YttCuhLTs/ekEwo3cWIPnBYkQ3HGlW5mAJRfKnQ/Wmwem3
	oQyJ/2GuK2xkvJY9zIbOYKU3L+fGbAThxWMB2lR0bhkDWmHP92fZhTlTv+hkNZqTpoDtD88ilFn
	Uak3Clgd5T1M4EFyQwkKqLQAC0ikCtutMWVAnY6UrgYpMd7YpDXmgxDncZ5bQHkiVas2S0/Ka8d
	I55uoKyKaGayf8QFsqLmDmdm6taM1fedCWdJgGE2PCCUcGy+Im1x3LsHw44kWO9RIVaO4Q1Rdnd
	dhZ8Z71Br8HIbHQI5z1RPE4snDGdugfpnCMc51SJbRUQpqNiWI785XRaAK1j7be6o0o1vw0RRcB
	UZNysyl8l/8TBGvPFFw==
X-Received: by 2002:a05:701b:465f:20b0:185:8c9f:de82 with SMTP id a92af1059eb24-1b39fef4183mr4962866c88.33.1794207380042;
        Sun, 08 Nov 2026 22:56:20 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3757214cbsm10120176c88.13.2026.11.08.22.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 22:56:19 -0800 (PST)
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
Subject: [PATCH v8 1/4] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and OTG
Date: Mon,  9 Nov 2026 14:56:03 +0800
Message-ID: <20261109065606.62641-2-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261109065606.62641-1-a0987203069@gmail.com>
References: <20261109065606.62641-1-a0987203069@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_225621_193418_DEB9D07D 
X-CRM114-Status: GOOD (  15.43  )
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

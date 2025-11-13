Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC81CD98E8
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6+x2KWYpKB/sAouhZ33TRzoWlw1Ur46OurYSNpQbUs=; b=X3SptgAg0fgILZ
	8BRqKncDfQmR420/Pia+GYYREQTAQlJ/HLmdOf/J0cxh5nvvfzblzIBtfviAJd/iPtKu9OUEaE4s4
	JH3ZXrdf4bjTgcvJcqkVasjXBvj+UknYUjb5ZiTA8izKQGBUC0hOiyrSb3EfsE7ugW9RrslfksyP9
	wdmWxVB22mk2Eovc1UVSKdZWsIrtlbEdIBFCcal9f29wgwhEhZs2FkXvwpGm5NgBbiiqw44mHwsZh
	6xGwOFWhRKz8QWePiHPuo6f1s4xmbKUeBSnSb6xwDZtaY4RMnLaJ839WIr8hoTdgwvAcUPvq3y9VW
	mUY2sXWjy0UGHVT+nERw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJf8a-0000000B9D4-2eWb;
	Thu, 13 Nov 2025 21:45:52 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJf8X-0000000B9A4-1Q8k
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 21:45:50 +0000
Received: by mail-il1-x143.google.com with SMTP id e9e14a558f8ab-433101f2032so6227965ab.1
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 13:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763070348; x=1763675148; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=S+Z0ROu8L4gwEHxgv7eQYw9fTflbT1ZZdQ5qbmIGK8u02xu+tMo1l7Gm8mXOfdVS35
         wiU6LIX0yRq3OjfYeTlO6HZSAj3NXnEmYUGtlvav2AwvaipbWGRa8jEuE1lBqxb3HQ0q
         QZAlPpkkhl9YeFOQTIuOkrd6XSV36aVLiFvMlQb7oXmtpQ8kyCKSJmFQa63sHxmNKb8P
         7+KRaOZ9UDCMWUglI6GIQBzTL/WsQ16pFKUTgxRzGgZMDcu8SsSCTjEqisX+J6u1gf1h
         Al+HtcnE2dD5yzo5RKQbFizz00TvdYltjErLD9S4JMPj5eTcAFCDgkCMu2ZHHccmTlfc
         i1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763070348; x=1763675148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=qAFaejwHIe0G+wl8Vrd5qmMrHkPrVEXKLZ9y3aP0glzInf0oSG4QbOZ7HEDJL8h42W
         sZHo2hjlgn8J7DrLT3SmQO3f8dOFHO2Qu2C2RusJvyZoTbMZd0hLsLBuef6YGF9eW52E
         KSS9P2mSz8RpdwPU0sR9ucBRWW38+MScTdikiRWHpNSsDIwZSEZX2Xr+GcRHR3+6tUVo
         VkzkzU1eSDc9ainXRP40b8tJn5rqsHOVBT0fxxlAzofb6GQPCMTmaKoJmx58ZiQMm9+S
         bJKuuTDTD9DCvAogVSMqBR54n/fXJmUVECljXQZtZUAN3rvJ/TZ4jFmRVTeryQh8QUuR
         7aGA==
X-Forwarded-Encrypted: i=1; AJvYcCX21/vCyZWE96Y5wMft1BtTCKNIdD5OxPZDVyL49+DJ1RpAUQTYlE07wsYXaYd8a5vXkdFRbnQGoUs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGpaZDXDaxKRJB4rA8BMeh8NUuBLTUa9FksXrlCVswxktSCVyN
	UlH7l3RzqNi+8NaS8r7H30UCK39hzZz1gVSuo+oMU8QKzjTf8EQjIWUSiUzk/yrvnkg=
X-Gm-Gg: ASbGncvFvcBTuujNPTl8XM9g0YR+9tbx9z2jAKb/7r+NwP/qC0obYdZHAU7nGDzX3Po
	K/at9EFNjn7cg2lAHJ+MsyXsp0dm28sC+Omc+3/N1Ent+GOoqrH7qM5tvWxH+4qavfFVwHTceB5
	jsbwRGHrBKNLYOIhWBieAfCEvTQES3XHDJxpxK24kNrJOcDhRiKGiJVKnv9z1J1M+6pZ1i+Ms05
	pIgryRPArQEr5er4Ct15HpQSkcIxFZHBxf5XRUYn1oKmfU9OQbZ2NAkheKh76nnIp2ZvKSaPpOF
	6Vn5qUnPoFgYi68M7PDG9ZuWWaDD4gYFO1a6hw66PAno3TcnSr4e5vMJnbyfg0Fta2nQuM+bBXH
	7VqXYPPhPX4JOikqPZJNg6FiCXHjHa5mZShKW5YVSycrWYaTZggW7zirjV2j4W6EHC/gZB4UWg8
	Dsgf7RIxV+1pUq8yFuK1yFVQqRW7blJAzmBjFsnAMWj7Tia875EbYeaA==
X-Google-Smtp-Source: AGHT+IGBzq32Gwd/w1dsCQxRVXMGXyEzSrmOWSlAFvmiA2MTt5gy/g9voUkgRjr4rNHNd8IF81q02A==
X-Received: by 2002:a05:6e02:214e:b0:433:589e:294f with SMTP id e9e14a558f8ab-4348c93ed24mr16120625ab.27.1763070348557;
        Thu, 13 Nov 2025 13:45:48 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-434839a4ac7sm10877115ab.25.2025.11.13.13.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 13:45:48 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ziyao@disroot.org,
	dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/7] dt-bindings: phy: spacemit: Introduce PCIe PHY
Date: Thu, 13 Nov 2025 15:45:34 -0600
Message-ID: <20251113214540.2623070-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251113214540.2623070-1-elder@riscstar.com>
References: <20251113214540.2623070-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_134549_382970_6856C169 
X-CRM114-Status: GOOD (  13.70  )
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

Add the Device Tree binding for two PCIe PHYs present on the SpacemiT
K1 SoC.  These PHYs are dependent on a separate combo PHY, which
determines at probe time the calibration values used by the PCIe-only
PHYs.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
new file mode 100644
index 0000000000000..019b28349be75
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k1-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PCIe PHY
+
+maintainers:
+  - Alex Elder <elder@riscstar.com>
+
+description: >
+  Two PHYs on the SpacemiT K1 SoC used for only for PCIe.  These
+  PHYs must be configured using calibration values that are
+  determined by a third "combo PHY".  The combo PHY determines
+  these calibration values during probe so they can be used for
+  the two PCIe-only PHYs.
+
+  The PHY uses an external oscillator as a reference clock.  During
+  normal operation, the PCIe host driver is responsible for ensuring
+  all other clocks needed by a PHY are enabled, and all resets
+  affecting the PHY are deasserted.
+
+properties:
+  compatible:
+    const: spacemit,k1-pcie-phy
+
+  reg:
+    items:
+      - description: PHY control registers
+
+  clocks:
+    items:
+      - description: External oscillator used by the PHY PLL
+
+  clock-names:
+    const: refclk
+
+  resets:
+    items:
+      - description: PHY reset; remains deasserted after initialization
+
+  reset-names:
+    const: phy
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    phy@c0c10000 {
+        compatible = "spacemit,k1-pcie-phy";
+        reg = <0xc0c10000 0x1000>;
+        clocks = <&vctcxo_24m>;
+        clock-names = "refclk";
+        resets = <&syscon_apmu RESET_PCIE1_GLOBAL>;
+        reset-names = "phy";
+        #phy-cells = <0>;
+    };
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

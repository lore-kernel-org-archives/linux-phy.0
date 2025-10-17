Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CCB7CCD195
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 19:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9DbvZRNy+vzhWIC3QmVxpJvDmwiG9lnvH+sQuHm6Ks=; b=1IE8BtEA2ODHc1
	LcpuWJueZOXJeYV5IiCPw+YiDvRIOR8i/vL/5fukkZyXGR7DOt1CRaslovmjwVy1HPkpTM8Rac/4N
	WISjD73lezkRASGbIlL3imJtXPMLRHAL2mIanyysi+38rtqoNtNxfSC9/Vds9VLAwGk+dMwBe1uTf
	NakzlEDQjtGN2Mv6iYh0Q57c7LBWzOplSeICN3oedFV0FbaKz8iZPzI6UXn0lLnT9vxeSKkPNUtZY
	yvRckr9mkauF9k9WZNnWpw0bmaIfD+MvGOqS8etBFleNT0kDJjF9aVLIZRGJGy8H+rsMvJQoZHw28
	e9BYboEenS8rPWrOCPsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9pnr-00000008nwi-3Fdt;
	Fri, 17 Oct 2025 19:07:51 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9pno-00000008ntF-0sM3
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 19:07:49 +0000
Received: by mail-io1-xd44.google.com with SMTP id ca18e2360f4ac-93e2c9821fcso191308239f.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 12:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760728067; x=1761332867; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H/3BQdd3vn0d3oIHDdjobMfykMV90YiIp5S1jVARxr8=;
        b=NwjtQAvc27cS4D71DFiMlVu9JNgsJfNKFZ74mYfkciN3k3SmVZAUQi5OjRWjac+tyJ
         /jDNhTOiFfjh+E1kDIr6VNX/Y0JkRefAzBsHNC4f42BMwN7yeUWn15cNBqvMGAVM8NIX
         a6QiHgCBZqQw+VaM+914ohTZFv/5mA12RRYvRkyeMfQhlTVkVRIcqDoWCq/i59lWT++Q
         IPnGz/cvRFkQU1nYe2mo1Px2LvvW2jlRwJ1QPKuN+YCP7UHwam1XwjxvSmX5jTLFL5bo
         EFYYpeZ6oq26xNrSnjzQ6hvN9XWmuiqz9Io96b4pGPyg1g+bK8S6Cxs/WMk7T3E0AsAS
         NvFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760728067; x=1761332867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H/3BQdd3vn0d3oIHDdjobMfykMV90YiIp5S1jVARxr8=;
        b=oDbKzVVsXarBy55awG+wV6oyZha12u4gexPKs64USTMAJIxHq5M20NdMC6PpvMkqHG
         0I9XJCDWhNGW4QCKa5EosXniyTItKZmRDyhK9HvTV4YewdY4Jr6AlZvZhugR5+GGitRu
         8R2CpQHbtKl2H/lFTmnIGH36+YbYSdyPnmDXwtqs4UefPe7zSylgsN86wBO5b9pVRLVG
         jRIS4yOrCpCkLe8w02y6FwWu4fJijRoyGYU1VA7dMjBdSVRYAU7mdRS12Ol7pNkkvsih
         UZuxj2c4Bk4fAHwyKLwn15dFIA4/7B99CmyMAYFvrZ955sjZO56fGgGlnFJYuXl02BG1
         01CA==
X-Forwarded-Encrypted: i=1; AJvYcCXEsNMQ3i5IUEORONs5m9lM8vBVEZ4hv3xROVlLDXEnG/2q5V2XsTn5Zq6IBjry3XxcGET6AFVZwaQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8Yt529FgcvJsdC8WKdZR7dK8ZoPh8qWwXmBo2+PL84KHVwtHf
	X17MjvG5m2fVAqjmMX6VWUHenOAJjwJT1YkHt1ncfpVK9qdT7Xdv3LR9t3dCveVnihE=
X-Gm-Gg: ASbGncuhabdV4leUjYHRGkKjboPYRDn9YIhnJ+zuXH6zfV+6NuO+CK3xFIb55g1v+uw
	mvu/euy85FK6bAF9iBuX4mPbtOOxSmjxwmnHq1TuuIOI88aHcaH3axBsfHwmQr4nHnDADYMdBT0
	6ctwObKWS81n2xd6qwvIYAKmjQjp+z137Dm34wkX9AxIAQ+nR8r0G4310Myj7OWQJf0n0Wu05D9
	LsFXmUSTytJXKqtS/omhcMN0kSWSBPSLJpFD6i85jMYMWrss0xw+/YEZPZC8VK4njOs3+YM7UuN
	TOh+ilDNuJr0AKEVJKcQNtm8jxejx84efWJfLLqz5/M6y+9nvaGw62MOAzrhn3gGMjJkYDCr1IR
	NwjcQrrcfRJKhQE2wBcNypf5FXWy3KpJN3equgt9w9VcxDagSUK8ZL7sBwkhvVyHK1rTYAQ6TEu
	FS4JNkNultMeVA4mJAc2hiHDH6F7YuHafZx2b9y2vkVHHqKyUDM1WpRA==
X-Google-Smtp-Source: AGHT+IHRtsRSfhWCT9BQG3DcVkrpn6NA7ODycaChUBpFYwB1ZdnsTh8SKsqwMx76IAkXTipom5mlHA==
X-Received: by 2002:a05:6e02:148d:b0:430:b167:3604 with SMTP id e9e14a558f8ab-430c5209bafmr76757915ab.4.1760728067217;
        Fri, 17 Oct 2025 12:07:47 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a9768b98sm153462173.46.2025.10.17.12.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 12:07:46 -0700 (PDT)
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
Subject: [PATCH v3 2/7] dt-bindings: phy: spacemit: introduce PCIe PHY
Date: Fri, 17 Oct 2025 14:07:34 -0500
Message-ID: <20251017190740.306780-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251017190740.306780-1-elder@riscstar.com>
References: <20251017190740.306780-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_120748_250991_4521051C 
X-CRM114-Status: GOOD (  14.32  )
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
v3: - Added Reviewed-by from Rob Herring
    - A "phy" reset is now required

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

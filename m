Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34EBACCF9E3
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 19:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnYtUCN0r6t2IZ9pbZ85kYmoGmcbRYcRxcLOOqGw2l0=; b=NwSX9AqvxLlJ4f
	IP5jfC/6gwSFv+nf/ji87ka/PlnbPRLwQqt4dABLmdxlS69+hF4DzU9vk/NI4rx+vQvMZHI1TnG/z
	/awdyEf10ps1AErWKoH73amvaekdFJiS8jriaW6Npyry4IQX2pGmv6qBTUN+HDp3MV1DRXm4hmtYz
	PYa3nFy0piGsO/T6dLwZM8/pMFz5jSxyk8BHGMmiKy4Y8LxZwqQpAhOkkMkZ8WczNhQcvbVl6UhmS
	yzXPH4Ve62RYzO/tdC1aUtT2Z2KrWG/NMGWMGXYOYA254JZj6EpS8gQ+qLLnAmuUOjpdnaMUsU5rW
	Zvom6zz239lzD4nqumFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRwT-00000000ffA-3xww;
	Fri, 07 Nov 2025 19:16:13 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRwN-00000000fZb-0y32
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 19:16:12 +0000
Received: by mail-io1-xd43.google.com with SMTP id ca18e2360f4ac-9487e2b95f1so40701639f.2
        for <linux-phy@lists.infradead.org>; Fri, 07 Nov 2025 11:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762542966; x=1763147766; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jj6J8lcepG5DYDhxKSNWV2cRY6QtdiZGtrhbDPkQq8E=;
        b=T9Av2alKjcPvpIO/TF/mdCXVObJdhkAQSruiTB/z/oQEVEM2YhUNEOaQQ2a7ImyzmM
         3AlOhuFW3+eujQEw7P5IQgWo3o+6pVtKgNFtmt0qPdVHku9mzaUN4GCzuE9QqgTA6897
         SWfiJQpIgN3sRdp6Ef+KkSwUKN0s3Yu0lh5WfpvACvCx1Q30iyd48QpvTxMSJpw4/xvB
         BApd+bq6/3ABSot3WMRaVxAJTi1HjWi3T9eB9qSZjUVnc/4ouT46z11R8AO+3BUPVdOE
         TwXkyl9M1saGLAU9VruvpgAyYwN/LRUYLdKiOelZtQ1eK0FLT8bk/Nt9DWk4RTirBTzA
         +TDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762542966; x=1763147766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jj6J8lcepG5DYDhxKSNWV2cRY6QtdiZGtrhbDPkQq8E=;
        b=kWa5Rz43Fw/eAvBjN3mqWKIn1UV2aFlbBSlDpNEpcNJ9jm5UMNFLU2u23qZwE7HDRr
         EL9z0XCuTmGyJKPiTKuqcl93AEawvG4rfoeu1lUMxtVWxx1JsAH1shxKGAMdPaq3+T1E
         J6WakUzGIs8dRQk41o4J2Hu3IeDzRMpuHPlaT6zvzTlbMtf0e+CG6os+WlKl7MJIMwPe
         oMk7qLvrEgJ8zhd4qkbxpKLKMp8/HvVk+veHjUpzkS6LuoJW/e8ly6fmzuMKvRxU/GNQ
         2UrCLksv3Wz1KcZmGjNuc6JNoDm9sx4b0/ZtcoGNklzwRUwFaKhFzlO26B4AfeRTaRG7
         v9QQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGpkJG1BmdYatWCijhSf1mNvUSlLHzKlxtN9doaCgB7aTOH+XegwIvVgS7CADGjbsWtOMfgo8rQvg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+u6LvRS4gtw9mbWfA6OmAq9KHEEc6rmHAa8Yfw2sD+aEcepPF
	JIOx82JHXoSHbXZABnM2lyFlut/JyEZrWz3iyAXfnWKmBhbH7Lfu9LvzY0JvkgrCQCU=
X-Gm-Gg: ASbGncumSyVwjj/BeV6QZPjF1OUDYauzSwfyTgZnNMskr5VhaobW8uL6LPdkDoCz0cZ
	lf3h30h/zmTInClms4B9ro/mF6XVOvkKRBYv1PUGGxs//9qb7dCOBSFttYNbksm3pk7pu2SB1mu
	gPJQIlvqWhV3kn6phdDM5o2epm1wCatY/MaTUNrOMlIQo6Pr1fPC3C9PCU7d7duLmsxjPyBLr+c
	mbg44l+sWuo62wDMHt/qETQbm5Cjjmd9MtZf73KZuI+c63gP9zqOwsboSuAXasC36z60BzJYSa6
	9Qnqv/lyDNupi5YNCabFQhp1I1Dt90Y/HVcdisMSxG38w7oC+fm14eM2mibiIPrYSVlgm0JWrGc
	eG4g1K5j/2hEHmV0VgicH0W4AfOC1nfuctPK+b8m/KhPAdJHBQc/CQUltlzLOzBEJY5WlI2spAR
	rXSLCxWrwQUzgbNl5fbSy8b+HdPRV2JDQAl+PneQgcOqo=
X-Google-Smtp-Source: AGHT+IG3g8x7X0Y0yy71Bz2h5XJh9oY9SaN95TpKTAIMsM9Iq0JL0TPx0mxVDPbKsKxl/ezWXxR6VQ==
X-Received: by 2002:a05:6602:3418:b0:948:3f60:a625 with SMTP id ca18e2360f4ac-94895fb109cmr59742139f.3.1762542966451;
        Fri, 07 Nov 2025 11:16:06 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94888c34c6asm118772939f.10.2025.11.07.11.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 11:16:06 -0800 (PST)
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
Subject: [PATCH v5 2/7] dt-bindings: phy: spacemit: Introduce PCIe PHY
Date: Fri,  7 Nov 2025 13:15:51 -0600
Message-ID: <20251107191557.1827677-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251107191557.1827677-1-elder@riscstar.com>
References: <20251107191557.1827677-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_111607_270535_579B4CB6 
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
v5: - Wrap lines at 80 columns

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

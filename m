Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEDD7D6D22E
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 15:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6+x2KWYpKB/sAouhZ33TRzoWlw1Ur46OurYSNpQbUs=; b=nBjBFg1YH9ccfV
	9rGjlG5qCjJ83OhkdNM/NvGDOPyMQkFF+TF575Y7kE3HTcuqiLUbk07BbFgAPADs1G5e2vnaaeFG1
	Jqc3XszWbeAAqTgsytADALSv4R/uU6lrRo1GrZytCZEfxnvu5qOwdHpyzVYNw2+tyYdfbgLO9Bm9T
	S9hs7JD9EHYglqP5cug/WibcpSpD9cBAHGSJ0XfB5c7QLHZ2SMfBGW+/4ollat1jPWMYHVtaf8wkj
	+bDuTK/RrorH0VG7X3T1wzsqVsAsIYUfpJVAi5w5hyRiZVHjoMmk0+mG4n3hqBcUP4w8s3oElzK+3
	24Q1RSaPFzP46CVQcHKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFgO-00000008fEk-1r63;
	Thu, 18 Dec 2025 15:12:48 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFgK-00000008fAl-0hf0
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 15:12:46 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-8be92e393f8so77366185a.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 07:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766070763; x=1766675563; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=ARs81t37QFV3c9i4CDOZqVkTuzzpKA+gsR8y/hXxx7B5QID8qwIv3OlvhCfEm0XEM6
         SRWrsdowlT0R54Nq+ntfK6Ldbrvx0AELDEJmPqxKCeG46OGYOANLsrnBb0G3y7vvKtO/
         /jTTpzikONnrGTbDIrCRLCujEkLVjdBCpU2Ew+Zf80w3L8sucmbvILN4E++PdctW9vnz
         IPM3+K3XE1ejE9tlQer74f3z8sQIa/EfdNdTE0wMkjRhusYIXVstbglCVI18E2ca7W0t
         MArxT6xFr5bViTrHNK6l7ly8eMh/6GtBfdIksR2g/89+y5nTvFsOz49BCBlXanTUsiVM
         K8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766070763; x=1766675563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=A3a5M+lvqChlfpscCJ2RKgZv02J01nOha6UDukG9z1yAID/3n7GKfpvC7JGCg4x0xT
         1khmv6AgiclxjFBv9tZnoux1OkK+1x7KyVtSNRbjjXMOvYwtdd4ZavgsUqoMd5ohRX6b
         1Knls43wVCBTZy+MHPnhdPjV3nwrA3GpBgNYcqwvpOEeak0g+sTY65ZOeEUqNUegYHL4
         5ugydn4Y9fG7ysGU2CZgeuvib/IspWzpySE2nG/TJgesWdYa8ookV9Q+6oHJEgKi/SbZ
         UtNBQVYblAaV2KDL8Z8Xl3chV1ynAakvBADRsiADuN23q0Hau0EJZ0j7WKdKspB7cnBv
         Yd9A==
X-Forwarded-Encrypted: i=1; AJvYcCV1EuPd6vhw5pDqqN+dKswvdQXVyizLXd3JuFgiB6MjEYcddBHBDBodPPH9GA0bintSIXZVk3pfPuM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZNWW07pcWtGOE+VyVt6wVqwMxiw9qWxxFFa/3xefyVxZq1mRI
	HKySpvjymoo1Uf7Dvh1nE29q3E8o7YgM/Ave8thvWwsiYnw7b+OlwF2euEPER0t5I+M=
X-Gm-Gg: AY/fxX51L2a2+vZM4oDKRx6FuUfhCj6cuVuQ+Bpgx6XjbTo4b3dg/5UN1ryRcvhxbcm
	q5qruy0I9+AzA4rwlpCt+qLvWsBGqiWiqVsy+lHPk6txmArZnNOZx+hCt+DHqaXPh9UAsbCjwip
	zm+mhDhviYiPS65n0r0wo/eexCISawYwtIvLZRneS3aroUUEDscpchLJXUEuAxoQI0L7HlHnbGD
	6hInWkDYR3ySo4gmE7beRQAZlqjmApHiDEx3BxNfe0JBC7MBwB+RnIjN/wi5r7y77/zH8lotLhJ
	StilMnBnsj7jn98c/RBlzXgTu12WRR+xpVuOjLi679r1VlqpKeYBcEG0EmuIjza5ZGbC+KqvXC8
	dHr9OiYqNS/m3h797H7pL3f42aE5yyXsMokPbMo9SUd6SWI0OQQ+VrEAZvn7bBLdnhqOXvtVaCF
	ZjWzwFY+suwQBlM3flBoWCnYYklHY87p6ZcyVocHGftNsVqJUyoYbmTg==
X-Google-Smtp-Source: AGHT+IFt4skkDsPUjK60b1wetqDLMvA4QbKiBZIS/djWkmayCVcOzRtJDIo76oiNu2+mujPOEGHHUw==
X-Received: by 2002:a05:620a:1912:b0:8b2:eebc:64bc with SMTP id af79cd13be357-8bee75c3e36mr423410285a.35.1766070762753;
        Thu, 18 Dec 2025 07:12:42 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8beeb5d6952sm186866985a.3.2025.12.18.07.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 07:12:42 -0800 (PST)
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
Subject: [PATCH v7 2/5] dt-bindings: phy: spacemit: Introduce PCIe PHY
Date: Thu, 18 Dec 2025 09:12:28 -0600
Message-ID: <20251218151235.454997-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>
References: <20251218151235.454997-1-elder@riscstar.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_071244_215879_ABF61A71 
X-CRM114-Status: GOOD (  13.66  )
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

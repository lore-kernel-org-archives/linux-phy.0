Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB503C54E94
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4Feyl+8dnyRKBsXg9+A5PXVRNQMrggV+aMlZ2usoiw=; b=cV0EdsHssx8CMy
	v2n4O6rSGG6eLCOJ0IMznaSoqxDpY21pvdDG20v1r7dpUem6Tv+s85LSz2L6O5YkzE/InTt6DOEQk
	0j45Jp+KT5CnuenL15cxknt6bKJ3r4wkifkBHo4MXYyUTHX5z/T2+BmsyWAlYDyqjeo9och+W5Ko+
	O2P7wP/Yk4RdGVMGkuCbEjNGMwcw3g3ly6N0SGjq8oYhWM0GzZFQPKyussrpQQHGrUM/VWFLBtLrQ
	x8rdnnOu4JsFzTyaxptj3NBXoJx0pTJv2BKrJLhxqj12p1Jx4RHYaNLpWQV46HPw5m68z36h+TRcF
	mcrkwWeX0qGJSmFJDpYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25G-00Auiw-6b; Thu, 26 Jan 2023 13:14:30 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL259-00Aufx-J6
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:14:27 +0000
Received: by mail-wm1-x333.google.com with SMTP id fl24so1100494wmb.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8aVTxzWn1UixQJuXT/p8bVFkzgfvSz7e0kUvSVzVNM=;
        b=vfa+Wv47xDD5N44ame85qOABQIuhcW5F6QP8QrJVUDCzOXjS7fnancY0ojaFM+x14O
         ANOMRqi1TIMikABYJ+TzRiJH8wbYr70H3w7so0uKeJqCWH4UKZOo/PYzC3Bfdko07C+Y
         I9DL1//vT7BKAu0l/1uVrCV7rpolV7Qc8TMig+WFJRqEWekWrfmhDU6Bu4g4NL1LPq66
         G7g4gGn5F98htr4u1IP17rTn85Ur4VrAUzIWDm15Dz5X9WxIQVzepoSb5BEaFwZktDBW
         9qDx94sRBMvLKSQMcvGi1hBvqLSxJzUChalshlngotbOZwQnQRLq0F5prQaFZfbkptXJ
         2NKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u8aVTxzWn1UixQJuXT/p8bVFkzgfvSz7e0kUvSVzVNM=;
        b=i4385FqFlpSyKTCwisXKQJg4lzM5uFbIAK6JUJT8BktykQ9MtrI1TBmy11AviBRgKJ
         kzfaCkllFXB9t5NcrXI+iHYzoFXNAetgmdZQ9ZSAfrFsjhgTk+Iiim/DPUccISG/MAPz
         XFtavK+V0rC9YSHDOtmosXVQtRl5sWh88V3M7iM1hRVn1yGCm+0Z+Mmkos7ulaUIRTWo
         oqcohUSXdUfba21VMwzG9BKMQC72EEPaHNpn7d774/A1hWu9+9Nr+T28hWM3d5gOd0wJ
         Qr1z10wR0IyzAskWQDq+MF7oNpWmEOjjNbNg77Ui77+6e25GhAHtoeEB2fwPKjLeANQM
         IRFg==
X-Gm-Message-State: AFqh2kq2ar5TLqroWXzK0LJg9TSGPfJtut/LzNB8hG48gjdgxEDydfaq
	an1fqoOgF8wpKQKqY1VeR7cngA==
X-Google-Smtp-Source: AMrXdXtzde+unOWbFn9P6rtGSe12ZvQaPKTxAXxHHcUapQ+Y63I46+FycM+w1q/FD9AFNMEClsL8Vg==
X-Received: by 2002:a05:600c:43d3:b0:3da:fbcd:cdd2 with SMTP id f19-20020a05600c43d300b003dafbcdcdd2mr35942889wmn.9.1674738860450;
        Thu, 26 Jan 2023 05:14:20 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 18-20020a05600c26d200b003da28dfdedcsm1719804wmv.5.2023.01.26.05.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:14:20 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 1/8] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date: Thu, 26 Jan 2023 15:14:08 +0200
Message-Id: <20230126131415.1453741-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126131415.1453741-1-abel.vesa@linaro.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_051423_647919_886B7A0A 
X-CRM114-Status: GOOD (  12.83  )
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

The SM8550 SoC uses Synopsis eUSB2 PHY. Add a dt-binding schema
for the new driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v2 version of this patch was here:
https://lore.kernel.org/all/20230126124651.1362533-2-abel.vesa@linaro.org/

Changes since v2:
 * none

Changes since v1:
 * dropped the "ref src" clock
 * dropped the usb-repeater property

 .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
new file mode 100644
index 000000000000..49a5dad486c2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/qcom,snps-eusb2-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm SNPS eUSB2 phy controller
+
+maintainers:
+  - Abel Vesa <abel.vesa@linaro.org>
+
+description:
+  eUSB2 controller supports LS/FS/HS usb connectivity on Qualcomm chipsets.
+
+properties:
+  compatible:
+    const: qcom,sm8550-snps-eusb2-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: ref
+
+  clock-names:
+    items:
+      - const: ref
+
+  resets:
+    maxItems: 1
+    description:
+      Phandle to reset to phy block.
+
+  vdd-supply:
+    description:
+      Phandle to 0.88V regulator supply to PHY digital circuit.
+
+  vdda12-supply:
+    description:
+      Phandle to 1.2V regulator supply to PHY refclk pll block.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - vdd-supply
+  - vdda12-supply
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sm8550.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/clock/qcom,tcsrcc-sm8550.h>
+
+    usb_1_hsphy: phy@88e3000 {
+        compatible = "qcom,sm8550-snps-eusb2-phy";
+        reg = <0x88e3000 0x154>;
+        #phy-cells = <0>;
+
+        clocks = <&rpmhcc RPMH_CXO_PAD_CLK>,
+                 <&tcsrcc TCSR_USB2_CLKREF_EN>;
+        clock-names = "ref_src", "ref";
+
+        vdd-supply = <&vreg_l1e_0p88>;
+        vdda12-supply = <&vreg_l3e_1p2>;
+
+        resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4404BC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoFuThsSrPWITUJSDsgPay6VtnW3A/vxA8dgx1j9IcI=; b=0QEEwJ2+/Y+9Cu
	F3A5uSFpdH1CRecm5mApA2bCkFIHGSC2eOVZioPO+p3w+qn8Er71wzwWuIWzxV+FUTpDCOohascEn
	XZzNe4GdiY1c0hqiZC+eWr38Il+nR9ZL7iFy8/O23gMOVgx8KPNeX8Y6CLV8ex35joYbi5LdmHXzL
	AzPpPaXSCUqdixAUoMtcQOWmy97KSmR9pfLXj6ICzsdtT1K5VF3kRzlRFrS0SQaT15Mn7gClZ/PI+
	UfLRRLtbn6j9lgkR6NSv2sf6JLmNEewoly9mLFH8UEwrMWWpq3t+No4PJCkLD/m6PRUK0DroGQdg7
	qAmHBddOLUqRHxvoy2rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovHTl-003NAV-9g; Wed, 16 Nov 2022 12:25:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovHTM-003Mmg-Me
	for linux-phy@bombadil.infradead.org; Wed, 16 Nov 2022 12:24:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1cL/V4xypg6AeAmhob4TSQcRm9kAAM9JuGkCrpxMMIo=; b=GXE15uvgLFk2rZf+3BBj9CuzUa
	sB+/LhgDkbH2EaLASqlrl3VbBI4C0knn3OVdRHEbK+4vmLqIF24FstIa/Gx0gvPecioDpRsyP9YE4
	rQR32TZgHv18g2gXY75+a/wq1Ih7Zs41gB7Vr38eJhkCgUxa3hYXSHJKiHbscQq936r4RGS/uPk7f
	71721W3dTbFN2hWDNEbm5AMdbrwa6aHcae3hihKqOazO9Y32TJp7tP5q8F1Ic5pGnqT6bqCgY3+0r
	hvfdO3HaRgVDaRU6aenedg4k3Dq03ncX/RtAXAqktkEHoFvqRVO+LFK3rw/2oaG7OcfqsEeCHrnBr
	9mn1GX5g==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7O-001It0-Ka
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 12:02:17 +0000
Received: by mail-wm1-x332.google.com with SMTP id a11-20020a05600c2d4b00b003cf6f5fd9f1so1295251wmg.2
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 04:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1cL/V4xypg6AeAmhob4TSQcRm9kAAM9JuGkCrpxMMIo=;
        b=N1zdvA7zwGA4eHzaUl+W7/q/3K2QCi6uvE60utukJlNDqgj7JJEsWPJBIDvr2fA6dh
         k34vi4mXtxUl7YgTVk+Yvgs7pG7OFohV/QUsxnHWMY9G/tmnz0rJXo9O+akB09ahBdgM
         ZDZzChu5ngrcID3J+7ZAeKfUrb5YuxTjT3WecU0wt14pma/le8zBBhQB/kPksj69xMIP
         653GcEzou5tkbP8NfYCt4tgdcCCxoHu/WuOgqY6JqMkCo6lAfjhlPSj5qpn+4LyvStIW
         qZRg6QNWF2iTZB1xRVWwUu8T5ZxkO0ozpoYOrQSTdoOabHaDTmT9AfFjFtgS0VHI4AJz
         n40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1cL/V4xypg6AeAmhob4TSQcRm9kAAM9JuGkCrpxMMIo=;
        b=AVVsagA5U5VYMvwX8mtdjV4hSrNjhshzTWjgwaqX8VL/CBLEhEH+2bzo4clZ11RNJ4
         lOwWgl9deZs4y0lvRuzt69OrfmuhWpvWFcxl6U20Xafg/6i7a6c2uGj4e03KIYOHjH8a
         NCju1z/XPmuyVdvyGJoIqvjtnijlLEx1XIzsD8beIdUSYpJolyOmeOrV46DvDgUME6ie
         75c12D4TpVEMUEQrHjzLltw1X+abbAlt6v6p+FjG5jP9uVdFRdqDMPXIRsqqrI8OcxC7
         +LNfLApfivaUMNatggW1RHqpa5Auc44BxcFLvtGTkU+vt1/SGImQ2Tms1WYXhT3XCKG9
         P3Kg==
X-Gm-Message-State: ANoB5pkvWer9vR4hQ1klLKdAxH4S/dTZAMvkr4MX/mDqQfPk+PIBsbPm
	TbAQgIUUKzBogVPBLbiIs7jGCA==
X-Google-Smtp-Source: AA0mqf6waSLfNPtVuZ8cHkWURLFzHR6rVvmZDp1426vTFlaageROdcVQJIEd2MAhAvfaYIeombrFFQ==
X-Received: by 2002:a05:600c:4c27:b0:3c6:a7a1:eebd with SMTP id d39-20020a05600c4c2700b003c6a7a1eebdmr1831799wmp.176.1668600130511;
        Wed, 16 Nov 2022 04:02:10 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id r8-20020a056000014800b002206203ed3dsm15120109wrx.29.2022.11.16.04.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 04:02:10 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 08/10] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date: Wed, 16 Nov 2022 14:01:55 +0200
Message-Id: <20221116120157.2706810-9-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116120157.2706810-1-abel.vesa@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_120214_797729_A7598C79 
X-CRM114-Status: GOOD (  12.47  )
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
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
new file mode 100644
index 000000000000..d6a4bdd0cd42
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -0,0 +1,84 @@
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
+      - description: ref src
+      - description: ref
+
+  clock-names:
+    items:
+      - const: ref_src
+      - const: ref
+
+  usb-repeater:
+    description:
+      Phandle to eUSB2 to USB 2.0 repeater
+
+  vdd-supply:
+    description:
+      Phandle to 0.88V regulator supply to PHY digital circuit.
+
+  vdda12-supply:
+    description:
+      Phandle to 1.2V regulator supply to PHY refclk pll block.
+
+  resets:
+    maxItems: 1
+    description:
+      Phandle to reset to phy block.
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

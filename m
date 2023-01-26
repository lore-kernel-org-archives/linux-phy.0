Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C7C1C61D97
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 12:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdKyA17QT+AvDUEGTe1TuFHSMlVs6vaNeypp7n6oPME=; b=dsC3sn1/nGz3T8
	f9up7obYi35SLEAMw1kxous3zJMmQ1uqBZMmmXRQR0y/iOlj6Mo8VHQT2SEQyobP3nf59jSXmyT2C
	sLpbSKWNTojjU0ajLPULVjlqdlmrIlM5LKidnmgUDlfM/BaWWT+395lctuvG3NIgMMnzJhiRhvofS
	WlRohuBNESi463qZCVCI7QYED6vNGfSYptpFCUSI3+evUGW8Anf5crLJX6r8MDoBpUma94I/V4RKj
	KQI6EHlZ/7uGoYmws0F2l51G0b3x2tVwWSPV0AXcYjWCDcbqIfhIGIdQgAnjKgNm8a0LD2MiigSvQ
	SC79gWC35aOVZtzhC6Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1et-00AsFT-5y; Thu, 26 Jan 2023 12:47:15 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL1em-00As5O-KD
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 12:47:13 +0000
Received: by mail-wm1-x32b.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso1030049wmq.5
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 04:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VjmcWStl2IK8Csyv+ogApgFtuhkeFvtifhYRNf2NN2I=;
        b=kzjvcAcAB2RjA9S5XCpP7nHDFDr7BuTfnVSOLmo6KgowHfAFalacR5ofYf87fLc1cQ
         TDVy870YjmZjvDx10A4pmaelSqJXEXT+RZmPQ5+vKYNxiWvYcELNCDIpXtszCc5rmehP
         oycdFLWLIyVet6m1rzauYnIvJWxH82QGeceIUKXxaw1XS+R8p8+lxpBeaY7Mx5IVQ58e
         tMwvS36vS9oHC6GTb0n6l7Rbzu8BXnFxdeYojubLE+pDb2UwYPNRNkSjfJC1FuLAQHrn
         GEi0i46Vv0aqiEvSOU0YhVyAGqRMApkYkWja6yNKUuub5dJK6U/6jEso2N0vJRrbBn0b
         RGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VjmcWStl2IK8Csyv+ogApgFtuhkeFvtifhYRNf2NN2I=;
        b=6luUsbZyxMoNa56esjYVudGzC75WOpQD6P/kDUmeZlSX5AYssheloyMSMx4UwOOWtK
         GNBfPAeAfRCRD6V7D3zf0h1wfymx5k6JbfrAuQFS+2Fua3SUcPWGvw0H0gWTnuI6QN6m
         9q7HAeO2vyI0gJhbIrueacuTV3UoEgYQhaUvQ+ipIca4b0S+Jf2r4MrgYqgQ9Yr1jqRe
         53Yo9Ihrc3OYap9GqrCJERjZUSQ3R3FMpNJ1Vdjp76NV7zhlgYNmL2JlJYbV8KCAZn1m
         CnqzFqCyC34TYFHw584f24iA5BIS2AklY5/9MS0HdDLqIcd93LFWXw6m9vPIliyq3xN2
         f+uQ==
X-Gm-Message-State: AFqh2kpZjciDT+RK1E6k0iRFn60Tcwdar15W+hotrF6rd+qefSEzPG2H
	/P0Tanh3YegDdxyVTLZt67p3CA==
X-Google-Smtp-Source: AMrXdXsr/oD5McSggzW4QbpaCFefSS/ge1kqNAbrsKAOykCF4kgn2GXYcE4oS6NJo48qFaXxzQnyaA==
X-Received: by 2002:a05:600c:5028:b0:3db:1dea:75c9 with SMTP id n40-20020a05600c502800b003db1dea75c9mr27352292wmr.28.1674737218879;
        Thu, 26 Jan 2023 04:46:58 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v11-20020adff68b000000b002bfb8f829eesm1198681wrp.71.2023.01.26.04.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 04:46:58 -0800 (PST)
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
Subject: [PATCH v2 1/8] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date: Thu, 26 Jan 2023 14:46:44 +0200
Message-Id: <20230126124651.1362533-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126124651.1362533-1-abel.vesa@linaro.org>
References: <20230126124651.1362533-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_044708_773217_B551783F 
X-CRM114-Status: GOOD (  12.91  )
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

The v1 version of this patch was here:
https://lore.kernel.org/all/20221116120157.2706810-9-abel.vesa@linaro.org/

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

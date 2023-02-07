Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 594D4C636CC
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDrgViOYc3gyp9eQez6dbnY6qpL4InOukLvg0kVzeMo=; b=Ywn3NWQh5bH21E
	NbRf78VEvN91W2uuV8DTGRvD5xphTqBnKBy8xpHH4+fQh4OQTIbVcs+Ju8/2K5I4TIJQihPwEk7HQ
	yN65v+Q6Bo3c2AlQ8218japfBX+aYWudoUlcL9S2ihMDjzirdJdvnCH1cIDgYbJrjHWs4bMLjVvpT
	XTOvOqfAxDcRHFnx2L5dSuWhJaZrguDwsBFLdBJSb3gBtI1LWRqKmUWplkUl5ZBt4T7B5OVf0ky4K
	qgPz8ANiprxRqO4DymWa5psyTt0NzI31NYxZdlHH3Xr1pyPO30A4eqDVJlavbtM7QYInSQojViCMW
	GUiX2RAssl3VE7lm7dCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPMLF-00C0bp-GK; Tue, 07 Feb 2023 11:40:53 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPMLA-00C0YH-E8
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 11:40:51 +0000
Received: by mail-wm1-x32d.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so12959907wmb.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 03:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sDatRZBqiUI2ElF++MvN6nONqINB6h8G+ODmLux2ut8=;
        b=UbJx6nOES/5CVkxT2y0+f0gyICo7sUHnyUxLOElgPp0ArrXCZ3ma0xG7tnuhlOM5r9
         pUAHCZn5LeWL/sSSR949JTcfTFVLzCSVDScY4qAvlsxaasS6jDGRAB/ZOYPaSxSJ/g4I
         zyB5KtYHrIxxL5od9AiVWQ+Fn2MIMi2Cz8a+36f7KWnzzEadtFlqW2r+QKmB66XlV1YM
         kD71BYQW8YiUbTHfA/aHd3cbqAPKcc22dntETCWyGu2ZuAxgAd0IRkupVl7xx0xwRyox
         4IWlYz0ywZ5A+Rmyx41HS35p3fer5vPa/1uYUPbLXX0uOAqy25u2ziNe15zRrKxZ1wzs
         eUzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sDatRZBqiUI2ElF++MvN6nONqINB6h8G+ODmLux2ut8=;
        b=XgUzTftvmpsl/40BXLO2hCw8B+BS03P0mqMY8CsRLJ1Lbf/BtWuY3hSPgKW5m3JmhS
         zO0OncVS2n8/7dfIQFp/yIY1axMx8c4737p792lRSjGAanq4iCpBjC1iuyqe8q53vuCM
         4sj/7U+iSUUVJu1HHsik2CdWQo/RYHOPGsOQPPC/np502Fkx+kqpE1O22JEQUYaPw0S7
         1BoUTNCAm1OHzgELQBsngxeG+aQedYesWRK7xZarxlmCrNXQsAXhxX7nltIBjko5yBCc
         Fvm0XWxuT48HnKWjvt6MBnvnwbR04MS6BvELUVzKPFEnOvNR6siGHMUaXYRXwoZApeap
         44JA==
X-Gm-Message-State: AO0yUKX36GmOTJsWSarcCdDcSVoN4dW8GtikTPu50Ccd+qmdDmFfy2B4
	yHFC9tEKMnvJFMgiBfmOROV6Lw==
X-Google-Smtp-Source: AK7set/wX6k+mhXbdEELuzdhFeFTnjAV+Fu7L99AhkJE//2AB1ZuyKSZQuUgvJUJbvvSWr6c1OWADg==
X-Received: by 2002:a05:600c:713:b0:3df:e4b4:de69 with SMTP id i19-20020a05600c071300b003dfe4b4de69mr2821331wmn.27.1675770045665;
        Tue, 07 Feb 2023 03:40:45 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0ac700b003d1d5a83b2esm18326005wmr.35.2023.02.07.03.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 03:40:45 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 1/6] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date: Tue,  7 Feb 2023 13:40:19 +0200
Message-Id: <20230207114024.944314-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207114024.944314-1-abel.vesa@linaro.org>
References: <20230207114024.944314-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_034048_496487_0DD64B4F 
X-CRM114-Status: GOOD (  13.72  )
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

There will be a binding check warning from Rob's bot because of the tcsr
clock bindings missing (dt-bindings/clock/qcom,sm8550-tcsr.h), but that
is expected as the header is already merged through Bjorn's clocks tree.

The v4 version of this patch was here:
https://lore.kernel.org/all/20230202132511.3983095-2-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * removed blank line, like Rob suggested
 * dropped quotes and reset description, like Rob suggested
 * dropped the RPMH_CXO_PAD_CLK clock and the ref_src clock name
   to match the schema
 * fixed filenames of the includes in the example (sm8550-gcc and
   sm8550-tcsr)

Changes since v2:
 * none

Changes since v1:
 * dropped the "ref src" clock
 * dropped the usb-repeater property


 .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
new file mode 100644
index 000000000000..de72577e34a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,snps-eusb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
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
+    #include <dt-bindings/clock/qcom,sm8550-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/clock/qcom,sm8550-tcsr.h>
+
+    usb_1_hsphy: phy@88e3000 {
+        compatible = "qcom,sm8550-snps-eusb2-phy";
+        reg = <0x88e3000 0x154>;
+        #phy-cells = <0>;
+
+        clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
+        clock-names = "ref";
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

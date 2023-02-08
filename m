Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E37C64EC5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TWztEx9tn+vmKjH3S3JKSsqjsSBbcyzp12lPcpxBWg=; b=IxFncx0scC3ruV
	u3+Oap5b2LavgJNbRd3oVQPyA2rik6YVxPzTwAHADvOkPQGTOgGIty3033JAtsfbIZiGtEBtxyQ/K
	X6g1kpdEKIvB9YGMQ63tvIpBxYchJrZfk5qPw7blUoMVEORC/pfZhfoyo8mDV56h57wmJc6xcqNfH
	pKaAUWuiPa3IE1yeaU8WhBROHyID5kUXT7MA6p3hOrqq55/ZMBiMhTjBxFRgJlFAwjunG6ll81BCj
	CX8pHSd6DXutuANBdqAwTefN9aGc8g+5f6xzAZABjytEWycRpjOGYyz6z+O22IHMlqr0St5s+yvtA
	yJSawniW4eDtJYoOeuDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHE-00Gccl-3o; Wed, 08 Feb 2023 18:34:40 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpHC-00GcbI-2u
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:34:39 +0000
Received: by mail-wr1-x436.google.com with SMTP id e3so942720wrs.10
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hUXjhDhmgVyOnb0RLYblg25oIh4RJoZ6OJE0zKdx/T0=;
        b=NgxRe12LYBN66oI6Xy6VkY65AjdSLVclxt0WwxT1+MIgulJ5xr2E7SMDheEaahwfPl
         1g656UhrpeE3dMknMY3oiaryMGj5tjd7zPDzTtUTQ0i/uSclGVwVO6FAWNmoYdaFKotd
         +jlIMVdJZvkq7KRz/Q6Tw/DVkCGHmK2obbvNglf7ADvFjlCZ+o1ar/qpMus16ET5CY0f
         oFQoSNe0RBGgJegNpxokhhWMXaaWNGdgC6fOvEa8PP65TEjDB/uCeysp5FdHekYcldqZ
         tPvFaMzeq4Xz3p0ZhNVW9XZnJFA0aWKC2k7HvdPpqW8dLT3OqO0A69al0nPZlL2fOZYF
         4bwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hUXjhDhmgVyOnb0RLYblg25oIh4RJoZ6OJE0zKdx/T0=;
        b=4LWe4LD2twh3GgVqTc3PIp6DXx61JP7n70n0BpaCtCCMCWM8SVnWeA52OFrNx2N6kl
         wLuMBql+LwPJvMicF902zwhBOvlIFeg97Px/PpeU+0m1xD4UaLlFseV42XNmxPoua5dd
         EJVA/aIjgI2JUbmBSaO3ARfa8KG4lj9mizKYxUpAUL+0O6f/cApoah4mREF8E7UHgf1s
         DT5X6Hlh8Mj7goSFtkwUE73Dres4Nhj6mb1EJIU4EdVVzI5hpLZ72cxvfLwLW+hkJH+R
         CGwGWQ5KjKxcXmBCmuhFwEVwnRTqhY1RsAOD488pcg2DIsxaMmhGywQSxzTbc8gH4ZHk
         CP0w==
X-Gm-Message-State: AO0yUKVG0NjPfrruAS7nsZUa0fyeAN1kxebc7lFskFCGTJSpSOG9z8k7
	LP80XKGXcMqPU87FkmISOii6ag==
X-Google-Smtp-Source: AK7set/3jJJ89HDqmC4FF0jPaElw9vj0s7cmAz6Y9a2GqsOXfS0EbuBH6BhFGEDzxjhvj9c8pb/m0w==
X-Received: by 2002:adf:f586:0:b0:2c3:db9e:4aef with SMTP id f6-20020adff586000000b002c3db9e4aefmr8392374wro.45.1675881275599;
        Wed, 08 Feb 2023 10:34:35 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v1-20020adf8b41000000b002be505ab59asm14591304wra.97.2023.02.08.10.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:34:34 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v6 1/6] dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
Date: Wed,  8 Feb 2023 20:34:16 +0200
Message-Id: <20230208183421.2874423-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208183421.2874423-1-abel.vesa@linaro.org>
References: <20230208183421.2874423-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_103438_147776_E7711167 
X-CRM114-Status: GOOD (  12.95  )
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
Reviewed-by: Rob Herring <robh@kernel.org>
---

The v5 version of this patch was here:
https://lore.kernel.org/all/20230207114024.944314-2-abel.vesa@linaro.org/

Changes since v5:
 * added Rob's R-b tag

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

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7348C636D7
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 19:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNaBdY1GpSmLlKbvW+v/hI8JNpILrQToDAE04/QdaR4=; b=g05QyVQntkelbj
	iwO6IOtdb2TmwSqEoaPLVYQC3hh+Fl+GX5DMdAVX3k+9hcXvFra25GPqVMp8hkL7X1zi47xpSGejY
	IfYUVxwm2UTU0dv4DhKT55m/oJwy4IMeDufYz9gM7a0oFcGX3Yh1Y6LNLNqpxs4s4BshQcJ1eQ00e
	tFBo8tTEwy4+RuV8qWpOQ6leuKWyheTz/kzv7k7HZP4f7SspBgOFyFJyoTD1fxWrtS6/6T2HblUIp
	GdvQAnq6ObK4KFvyuXiJu1nXz5VO9TZGhyfZvkXtOaBgqrotrqW8O7/vfoL7MDruPMKhTt4Q16OK8
	7Xl8K4S4ev2LZa1QDrXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphr-00GhM4-84; Wed, 08 Feb 2023 19:02:11 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPphn-00GhKd-TW
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 19:02:09 +0000
Received: by mail-wm1-x32f.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so2206933wma.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 11:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GhtvTc0wPw9laaTqlmODS/yBpdBNKxTbcXiqXHtjESY=;
        b=zT9GNWsi2Eh65XAFphieS0a8tZNQzjSKc4PCJfFPHIY33SjGnUfmWhSqzO3uBUuEwt
         lVxnR1rAo6CQXV2go0Sz91z4C1jB20za+7KIM3Okj4YopSpcZ/SxWAWgCmP3I1MRO4Py
         FiNJJLj1JyehKZaMs5xAyuzNPVGKz7QoqQhiBPotovIsNFHVZ/KUrOEjUUabgnMurPeB
         WWwUqgzhOJdmBAIHwhKIV63PBHdbs+hedPNuxmXG37v6DCczn6++QhJAyAKcNCo4J0xi
         zsoBuv1OXY2GRPcCIa9xf+axAtOOhPWmXsK2iiXqzYb4Sknltn/AjyBvTv+3xvOiW7jK
         inPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GhtvTc0wPw9laaTqlmODS/yBpdBNKxTbcXiqXHtjESY=;
        b=r7TFztaBcG6CyMaReVnhqzPmPQAxArB9yvjkzYLYnTTANmtlg8JIQdZ+D5nKm+kou/
         Muuo30FlHVGDkjjbPi15Byc/9K06mOuTcrcBUm/yc/sVHUODLn6FD5TGl7xhSYIbkIL5
         b3AgVnjvBsAhNLjksCQ1qwZYEBPJtLJdkGMwHfw5GmxKb7X2hfxbGsZbxjV+0wb7O4Ek
         3Jtil+M1PxzLmQDAeVE9Ltoe7RLCYLYAymPlY2BD4zobrEzlWEwq9hi2PKt2wwvO9zgh
         hMQwQWxjxpgRfp3auX751opu2kqA1aU84hHHJs3CnRZfwhH1J8UscGuji1PadwZT9B0E
         qtCA==
X-Gm-Message-State: AO0yUKUtirERex20Q+aIYnQZQ4+hjlf40wzfsWPVDTPMrXfcHUJLOENd
	IAa8rTkg2MRiRfLhqCB50LtnYg==
X-Google-Smtp-Source: AK7set9aUTj24uA+NR/+P2LWDraZ1w/dDHyU0hwmFvER4RpzwAZoG/Q/4tFqRjtwQNJpfjWGiEuruQ==
X-Received: by 2002:a05:600c:3412:b0:3e0:481:c88f with SMTP id y18-20020a05600c341200b003e00481c88fmr10051103wmp.30.1675882925676;
        Wed, 08 Feb 2023 11:02:05 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003dc1d668866sm2650327wmc.10.2023.02.08.11.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 11:02:05 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/7] dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
Date: Wed,  8 Feb 2023 21:01:54 +0200
Message-Id: <20230208190200.2966723-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208190200.2966723-1-abel.vesa@linaro.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_110208_072628_5544B399 
X-CRM114-Status: GOOD (  15.33  )
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

The SM8550 SoC uses Synopsis eUSB2 repeater found in PM8550b.
Add a dt-binding schema for the new driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

The v4 is here:
https://lore.kernel.org/all/20230207135551.1418637-2-abel.vesa@linaro.org/

Changes since v4:
 * added Krzysztof R-b tag
 * added description about what the eUSB repeater does

Changes since v3:
 * made this patch the first one in the series to fix the binding check
   for the 2nd patch.
 * dropped the compatible for pmic in the example. This is due to the
   dependency between this patch and the next one.


 .../phy/qcom,snps-eusb2-repeater.yaml         | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
new file mode 100644
index 000000000000..083fda530b48
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,snps-eusb2-repeater.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Synopsis eUSB2 to USB 2.0 repeater
+
+maintainers:
+  - Abel Vesa <abel.vesa@linaro.org>
+
+description:
+  eUSB2 repeater converts between eUSB2 and USB 2.0 signaling levels and
+  allows a eUSB2 PHY to connect to legacy USB 2.0 products
+
+properties:
+  compatible:
+    const: qcom,pm8550b-eusb2-repeater
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  vdd18-supply: true
+
+  vdd3-supply: true
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/spmi/spmi.h>
+
+    pmic@7 {
+      reg = <0x7 SPMI_USID>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      pm8550b_eusb2_repeater: phy@fd00 {
+        compatible = "qcom,pm8550b-eusb2-repeater";
+        reg = <0xfd00>;
+        #phy-cells = <0>;
+      };
+    };
+...
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

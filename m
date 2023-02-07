Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86864C636CD
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 13:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlUkx4nqz+islQpN4nOBcZZatJExwN3j9rpz91eHEqY=; b=w5rtj0lqKOVWIH
	aU/0Y9IfPHNJzXOuC/UFFAyX3w5bLS5Pgq1yeAOnvQfufZJZ+UtdhytDIV8N6Ky2DkcmrE7nA0RZO
	X7E8ikeGlp/6Z0XJ+oBloeWiIN1J5kY/BfjE3xNuhuqv9dm9HBKd3mImQz/OMB7nROCMJ/FFb1fbd
	sIng3TtouDgBecgf7IMBymkV10uA1aBfChHgY0NL7HKcYwo7C+vDoDzZdUaFJUGRH6mMkFIj9ERhb
	FDC3dqmasB7ac3LQVV1gaElfv1t5TWu3AomBF6VeM1rpEDrjPYkeRbwFmGcSRsu+FUJPY4idoSaPO
	neFvF/0B+8OOKfa5rlPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOS2-00CMpL-Vf; Tue, 07 Feb 2023 13:56:02 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPOS0-00CMmw-8H
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 13:56:01 +0000
Received: by mail-wr1-x431.google.com with SMTP id bk16so13613885wrb.11
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 05:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QX4rZ/apusxA+kOocMUgPZzFJ0GB7RlYqxdsd8KGKjw=;
        b=ZePF7sbU5Y7OjGS2yW0g9dLDgyFY7/XNsDvb4KSI8zVo4duMujEAIRIDEAYzgW/aJA
         FXn4Dgir0houDF4USc1XH2s73/6rqJurfSkOeT1oH1oxUfxBf6PCNk3HVe/YGNwhKxjZ
         qPZVgPpkhtfd0Ru0984YUutdfo1dTodUWIjs4lNTELSKRLfCXPDs0+9zz1wsd8bIIZFl
         iyjbxsWzCmYzqO7DjEQkem0WgEleR8XNZPpIIvOCgElV+Tx2q5aeKr9ebSPBCsaKUIbz
         Z1pxs8ovrpq5wYQf/FbdwaBu0nh/mBbWqiGn3+0OHZ52xsseHlNpqcNp+POJSV7GzykX
         629A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QX4rZ/apusxA+kOocMUgPZzFJ0GB7RlYqxdsd8KGKjw=;
        b=C+VuJ9MJG/mq77oPsX7epFVEn5GVanUViucZAN13i3dzvq8G79mp3wKllJB77fyjrQ
         i+p/p8e89Nanj9DeYwwxJZTucEUVa3Zjqf4sopTjfTlDJuXcuQ/RQkP8IOgzfax7O8ym
         GolP9x0VJTovyCfaJVbWqgTk2gXOr0SOJV7+uxi76njQfkjnHBra1Vy1+mOZbeEzgR5c
         ABV09LLxV5vKVCymgTCOHvVVKnYQgjfYB63m1O8STHTChcTujcxHWc2F3UTEbwQ+G+tB
         qT2OGp2en3+hIjjWuwTS9iAjFqg0UEICHMxzbMqrW1RSRPusWYD9zfgoNKHECWmnom9a
         Xr5A==
X-Gm-Message-State: AO0yUKVgjCLr0ngnG8HI60WpJPvaCYsZNdjpdCnClbywZKRiR/Fg+RTW
	a6yboYkxd/jm+4IWS2Y6jrP9xw==
X-Google-Smtp-Source: AK7set/3HsxRPjRdhDnMoTIKD5/HI3EB5DMI/wZsOGOaUNEUdIzsU4vzJeppub9ye2E67JzGIA9cbA==
X-Received: by 2002:adf:dc04:0:b0:2c3:ea92:3494 with SMTP id t4-20020adfdc04000000b002c3ea923494mr2499644wri.55.1675778156573;
        Tue, 07 Feb 2023 05:55:56 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id p10-20020a5d59aa000000b002be5401ef5fsm11611312wrr.39.2023.02.07.05.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 05:55:56 -0800 (PST)
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 1/7] dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
Date: Tue,  7 Feb 2023 15:55:45 +0200
Message-Id: <20230207135551.1418637-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207135551.1418637-1-abel.vesa@linaro.org>
References: <20230207135551.1418637-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_055600_312416_33BB87AE 
X-CRM114-Status: GOOD (  15.14  )
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
---

The v3 (rfc) is here:
https://lore.kernel.org/all/20230202133816.4026990-3-abel.vesa@linaro.org/

Changes since v3:
 * made this patch the first one in the series to fix the binding check
   for the 2nd patch.
 * dropped the compatible for pmic in the example. This is due to the
   dependency between this patch and the next one.

 .../phy/qcom,snps-eusb2-repeater.yaml         | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
new file mode 100644
index 000000000000..54afab7e21fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -0,0 +1,48 @@
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

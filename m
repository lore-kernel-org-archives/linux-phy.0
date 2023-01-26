Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2385AC05027
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRQkWwoCAScXlIfMOF8L9htnqcf9wImx3pY48oJrTD0=; b=ICMkf/Ju+MZm1X
	+i2O49VYLOgyfPr7rY+IEbN7mdzYLeERyHMwiHl4RgHhoiSetWqUF9r47c6bCPdrkqwZE57Rj7Hmm
	SjI4e9WvlJRG4E1utN2n23qdJnVPv8S8ROciX76U8p3740bdGQyeuMLupJp5kVAnF8PMndf0X3gbI
	kl5swcSIiGSwbZdFOJmc//kjanXoi9c3eXOyz8adPt6qQhsIFzmSct0iCpJ/J75F0Xcwa2hoWBjLH
	P6euYgtR5kt9rQQjjInlIzLrEtdp9sZ0gmDF3wri8aG3l36WJAZuPU/1sgcExK17QWWJlLP6tscWk
	h5ddBakMJnLy5RP6DLjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mh-00B5Sk-C7; Thu, 26 Jan 2023 13:59:23 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mc-00B5Nx-Vq
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:59:20 +0000
Received: by mail-wr1-x435.google.com with SMTP id d14so1847517wrr.9
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9yxu9ED25jI4YsnaXumV3Ax7b6QC/J0yJHopprA5xIo=;
        b=tVjYD9WT4Va5NNtVX6RP6snlZAIg/T/dWyfEhIobdh59a76Za3x00mWJlt5izQ59aL
         4Us4qHv+WQfqOA/hSrtIZOtea6eBCPM+qE1xSXjwGW0dJqNZcS85er8RKJ5o9GphJATE
         Az/dfucI8PmLzih7dG41iGvFwrDDVKg/O7RY7gyStHd0VmHmE0bn9hMdhTot4PpvFBP+
         Bkb6Cq8jwadM1USTHeI5tC8XzaZWGM+4NTwR7pXXB3+MT6CwJNK4jbjgx6exnXG/q5hR
         L6UIcsz8kchWk0InEm94v72DzMuMwSoB3vxekx1FvB1aBnd4hLryUQ1B86SRGGwabKmW
         VP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9yxu9ED25jI4YsnaXumV3Ax7b6QC/J0yJHopprA5xIo=;
        b=p7sd4sozv0R6Np0OOB0zsGFOGck6K08LNcD3oZoUjRpLt+Iprx3m930LSolhwY9cbD
         Ro/GKoBYvW9HpE4lSIYv54g2xjKjhw5axLbJ5ykOFHeIcVowusKEZEkos2R/Rtf0nYVJ
         cx/5Pqr/OHfsxSEBXzdATIRHJmEPBHCWVOoBe3mq4yxbFLus20KpFGN7og7NJchqK/hA
         dyiyrcpnnGSV5V+qcPI8HbdTQrm73bILAArDHS6s6gDQZnZHpY9Y8g7E7Y3z/MSQ1X6f
         gzBITprm6ezeBA2eL8hS29l4qSxEM0i07xfsfTZLoFDQFhaiiTCB22SgNOW/VrDlvQ55
         ZskQ==
X-Gm-Message-State: AFqh2kqeYjBsHI8c9TMKdQbYEs4QpN9T93wfY4nrwn5RmgWiPw2Lb/6H
	l20HngqWaNfi3ntkCvyucJm2hA==
X-Google-Smtp-Source: AMrXdXsDK3DWCPIRP6iehIYsLBlDFOqDTH3kObw33/RQ4aaajCqfjj+naQDb3pmd097JUAdNv7HtJQ==
X-Received: by 2002:a05:6000:3c9:b0:2bc:7f32:e6ae with SMTP id b9-20020a05600003c900b002bc7f32e6aemr30290460wrg.64.1674741555300;
        Thu, 26 Jan 2023 05:59:15 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:14 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [RFC v2 1/7] dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
Date: Thu, 26 Jan 2023 15:59:03 +0200
Message-Id: <20230126135909.1624890-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126135909.1624890-1-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055919_065075_E5470F13 
X-CRM114-Status: GOOD (  12.44  )
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
 .../phy/qcom,snps-eusb2-repeater.yaml         | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
new file mode 100644
index 000000000000..3b99038be74e
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
+    pm8550b: pmic@7 {
+        compatible = "qcom,pm8550", "qcom,spmi-pmic";
+        reg = <0x7 SPMI_USID>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pm8550b_eusb2_repeater: phy@fd00 {
+          compatible = "qcom,pm8550b-eusb2-repeater";
+          reg = <0xfd00>;
+          #phy-cells = <0>;
+        };
+    };
+...
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9206BC636D6
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRQkWwoCAScXlIfMOF8L9htnqcf9wImx3pY48oJrTD0=; b=S9w5ihB3j5nb88
	Kak2H67M5z7r6B9PImGYS8r3fvSs8+3+QABYo6zaFKKdEI3OJ9Q8te8a+wGECd2azIuQLCryT8HzE
	IMyCJGDnDmkYqb+3nzgdP1ImB9AtefXS3QP42D95bCtIwmdJhy4df3VM1HaDXR9zCplpnkTXaaJsT
	fAKnAH4FE228DWxi6/BXPvnwu1embUKRxAMURrkeXzIqUgSCMs9K8UzDH5LZXzyUi82BgxqccQ7li
	qQyDem25ExiRMskHpA5St4Rw/AkzwgYQjDHyppRo9h+sx6yWWkr2e0Ihw5LKZWEicR2ItuP4B8WiX
	05PPmDZJYA287IX2sU0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnO-00G2Wo-05; Thu, 02 Feb 2023 13:38:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnL-00G2Ul-D5
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:38:32 +0000
Received: by mail-wm1-x329.google.com with SMTP id l8so1409119wms.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9yxu9ED25jI4YsnaXumV3Ax7b6QC/J0yJHopprA5xIo=;
        b=w2eUQMvLTM92x0vwuuRT1Wgf7qa6j7dzWEgymh3T0i7zYyTFaakJFn5WBeHy1M+XWB
         vYyYQh8guPId2wvoTL3lCCSgryIPjT4pqUhys/eTmXUPuOUUY+Yoz8mwDa4QuzuC+ohR
         rKIrT2hTqTubouUxdjA32JFmvFtuha5ts64evAHyS18cKRTlHiPqMMw3uFPpkXznKKjh
         j3HufhGJdiG97qbygLNWB5eX6SoGbQIZK6ZZoreu4aPDbnUrFebLvs7Cdmmb/h0PK8st
         /7qXYiYgZbc+FYw4EXAxCVsmx4iD0B6SAlRcQT1UPvM5o1MhOA4ztvoWOQoPjkxuBdhC
         SJkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9yxu9ED25jI4YsnaXumV3Ax7b6QC/J0yJHopprA5xIo=;
        b=J2+RbxFUZVM/ck215/KQfayKmHSCqb9zW+O7j3duiigx9rqkWbI5tbbRJCK1sBzi3O
         k+qZnl/b8+QkO1Z7NC6AQhaL/4rUbfhXdxA1RADZKLQDatIyFi7gdWQ6VGSt3oAbsotw
         ONrZKtcz+uSyURQv2Tc/5ULKyNcPMIIkdwS5uvP8pNTlvVgiXRDfeeJ3F2G60FZ8pEYb
         M+bMs5XJ7CpHeAqy4TEwLJxGlHM4R99MY9ySGfpL3No0TYm4TEDtF/x778KsjyqlRj2k
         wKDex/uQ09IpezS/ldFZnXk2Hc/aSGLi0Z7B5hgQX0jEm2XUFFtihQUex+GebYprp1q2
         e8Og==
X-Gm-Message-State: AO0yUKUiA5xqsYvmCY/VcgsbJivAmNTHuJiUF4G73kFuS4ZMqEVCbYn9
	UNbNOU/B/pUFXpp1qx7S/oDUQw==
X-Google-Smtp-Source: AK7set/XlhVcSy1s2ql7DbgL+4Fy4kL5rb4EcdZ+qg7OpWHsPtWFgTOEgZ6BWYFLqh+UdqMYaFQsOA==
X-Received: by 2002:a05:600c:3151:b0:3dc:5342:9f53 with SMTP id h17-20020a05600c315100b003dc53429f53mr6422602wmo.38.1675345109275;
        Thu, 02 Feb 2023 05:38:29 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c364a00b003daf7721bb3sm4672657wmq.12.2023.02.02.05.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:38:28 -0800 (PST)
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
Subject: [RFC v3 2/7] dt-bindings: phy: Add qcom,snps-eusb2-repeater schema file
Date: Thu,  2 Feb 2023 15:38:11 +0200
Message-Id: <20230202133816.4026990-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202133816.4026990-1-abel.vesa@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053831_458996_AE2D4F7D 
X-CRM114-Status: GOOD (  12.31  )
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

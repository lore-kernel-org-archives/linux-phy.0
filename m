Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E23CC54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xfsd6IdQ+9GQ2fDKd9b6YTaDK/lMq4l7J0nnMA/Df/E=; b=kmNv/9N8ZHHaD+
	BjoXnFJQoFX1jFr3PZaAJ/OZ7D0uMv4TYJgmwm8rY6sX1asxQotKhgeYhPUvAj1YOPjygoqB3EGIT
	18y83u8J1YKvGbbH3JskIakkkIT1LZzV9hwo2WTdiEkGBb8X6h0pQ4bu5O09WsjCts8ZQzT7CuMik
	iMnBUABLTKaDh6erv3cD7SKWQlLewWjlk6oTti0E63UUjWOfTOH/wUF5qLCfOBOqCofb0aNxLGeCB
	wlxTheI+BY5A+KyKB+JSILOXz74pu5Asrig4UHfhZ1a4WYxZlDULbuh87wC8txlE4YPkzLCwd8CCm
	hAyl6/L8F6DBI1/AlgxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxw-0000000CLQ7-2Cot;
	Tue, 19 Mar 2024 10:45:08 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxm-0000000CLEn-27Gg
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:45:03 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-413f4cb646dso35085315e9.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845081; x=1711449881; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w+CyiJitb+sZvqjM+l2rTfce0izU6NohaEsgLPWj2lU=;
        b=Igx48PAV7ZIE9em+Q9zZgYJ2drtJwtMu1cCAng9EWDdQqEhMoQF119xqEQDPdzyWlq
         vHLbnYN0WFT7ZQH5sKE/4USuHVxtZS/vxnoO79poN6a8s3AdFW4eKN6cs3eJfY8G+mxp
         vWklsuzvxSVorUXYq8SkPSStgD7CSdTmjkof1l4veL0PUifKhoz8HoOn4t3L8gllCQPz
         A1lbPyX2Cr2TlgCvDwfU86171jymav6zkP5trUCUw5n50EPOq6qYDZ7FaiRCtDw6Nigz
         zmahhTQmVNy5TnZIqhgBNOKKq50s9KTPc4Vc2dvmpdo7akTimIziq0zWK6Bjuek/wlly
         Y7Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845081; x=1711449881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w+CyiJitb+sZvqjM+l2rTfce0izU6NohaEsgLPWj2lU=;
        b=tNfHdfYbbg1vPHT5E4Df76cT7QZQHoJSE2PkrJLybH8cEz18duNrvoDeeYvSSaGJao
         L6flFgJ7md9JNT8gCP9AWGC5XzGEilAdInyA9XC+wfQnFC9uQ2FLkAjoqaWmczvlL9Tc
         dCRdtMWVpygeAkveMcu21KinyieeTFa4IRQ41UVFuy+8NpQcTrllEK1Jg4xpfSAaaIh2
         wwM0gVFaZ2wQ+oeaPvVlMJi1niVNakbq+upBsPRHXW+oPLVDUC9wTcVpuD+K7RTHBeMn
         /BXKMQV33DbcLP8ll6RMV1cWIZbAF3FWHEZCA+K+RxtUYIQohGCMpD+VN1AqmjO/nnh/
         8sJg==
X-Forwarded-Encrypted: i=1; AJvYcCWrWHcCIdwzO4oPRYZbx2yuMsH4/NQjAiQ9e7SeJCGnNgQvdCOIJogK8Qu/ErfZ8sMdDv/3oUFAGreZmO4seFSpVK8RG9vdkEp5KPk41g==
X-Gm-Message-State: AOJu0YyfajOrxVOrdoq/xuvbS80LcysGhnfPe4f/IVxKaCYeT/Q8AHOw
	kPTSWypBPNMen2xZni+psm742rz+SaokuxstmfTueE4bQhpqahxR5n5tN/v2eouaCgQVf4BrsTU
	EekA=
X-Google-Smtp-Source: AGHT+IFod7aH8if5MK1ECasnS6ahDAVSxt86oZPskyfEsyagEJMqbHS5KlO7A4yywx58PageRYB7OQ==
X-Received: by 2002:a05:600c:19cd:b0:413:ea5a:7787 with SMTP id u13-20020a05600c19cd00b00413ea5a7787mr9881899wmq.22.1710845081371;
        Tue, 19 Mar 2024 03:44:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:27 +0100
Subject: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document
 PHY AUX clock on SM8[456]50 SoCs
MIME-Version: 1.0
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-1-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2495;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=m3pSUc46LB6V21p4bYJawYlmpmQ1kewBH2mwVCgKFp0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyU7GicaV/Sa+DAWz8H7pfML0XZg2u0PZSmIsdY
 L6oe5wKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslAAKCRB33NvayMhJ0XMKD/
 9uRTCJZKFuVtev94M7vFk4bDB7e0lWMazZKjKs+HT61PBJqNBPU7c3ZTJ+d5072U0MG7cm3+9b6Yo3
 fnfqL3qbBfQ3iQZtdsH58AsG8O/nqde9bfiJwdklVmmTaF651OFPIfjc+MWDzhCGLC/b0sQGeOjZzL
 kaK5lEjx/NT71KTCp/CAP5zVWdhnqA4iSGUu8z5m1bhhpoqWdEQL4sHbbs7nZ4k7l/qbR7BV8W+OUq
 nCOpQQDBUvBlMhSzX6CjUiv4vGWyRg2WvlfhboFOHRwhbK63PPf2bJmgrMwPle9ZBFuczuIzxAN2uW
 NDA1fNgB0Q5do86B3M+r0YAg17p5RqyN7vXmIJMweqj7GLcRQo/K6vqDRguiAykZxJq4Xres+IkTd9
 dSbfT/l+637W8FWTpg2hd0Ds3NN9L2xwLjA6IV7nGGzp4DjLcMNa14eEbb4B9WpfbI4hii7M1WPjJo
 OgE7/Zqh3RZd7iWESTM6CagexAESeOcymNZid+hbT4O50ONrggsCHiijnkCW8WSOwM2zqbsDKnnF82
 rObVGqBK3AJ19Vc/DCa7jg6NuK4ch4zkLdczuIYOGE8G9PSHvIL5qPr+TExVApN9RlBoatyKU0QeK4
 bgPrtjxYM203L5Z0b55YoNH+GjvM8V9y55HdN2UP1Dccgko70dxlMgEbWezw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_034458_825820_23FB3891 
X-CRM114-Status: GOOD (  12.37  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 27 +++++++++++++++++++---
 include/dt-bindings/phy/phy-qcom-qmp.h             |  4 ++++
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index ba966a78a128..14ac341b1577 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -88,11 +88,11 @@ properties:
           - description: offset of PCIe 4-lane configuration register
           - description: offset of configuration bit for this PHY
 
-  "#clock-cells":
-    const: 0
+  "#clock-cells": true
 
   clock-output-names:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   "#phy-cells":
     const: 0
@@ -213,6 +213,27 @@ allOf:
         reset-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        clock-output-names:
+          minItems: 2
+        "#clock-cells":
+          const: 1
+    else:
+      properties:
+        clock-output-names:
+          maxItems: 1
+        "#clock-cells":
+          const: 0
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
index 4edec4c5b224..6b43ea9e0051 100644
--- a/include/dt-bindings/phy/phy-qcom-qmp.h
+++ b/include/dt-bindings/phy/phy-qcom-qmp.h
@@ -17,4 +17,8 @@
 #define QMP_USB43DP_USB3_PHY		0
 #define QMP_USB43DP_DP_PHY		1
 
+/* QMP PCIE PHYs */
+#define QMP_PCIE_PIPE_CLK		0
+#define QMP_PCIE_PHY_AUX_CLK		1
+
 #endif /* _DT_BINDINGS_PHY_QMP */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

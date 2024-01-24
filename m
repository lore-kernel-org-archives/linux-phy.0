Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16FBC47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QuCeeUBpHIsMzg1e4bb1+PIk/Vy50JJPYNq2hiwacA=; b=GGoihOSzRyD0+B
	bpQQUgxT1YpYeSFuvUlejkr08/cJZeUaAC1z46ofIYsc7NnHZNbncecB6rImzK5dqxHYW5lR57w4E
	76j51dgXiCzLufddIK4x/WUo8nAI+pnvBA6p5FysD4NM/H2lOYRWouHIGl5Y8K7GcaIreWdGLZyVN
	JSju5Thv5gMiX/SJpy/QlOjk/uXMF45cUNyLwjb2PUpTN5FF9jwndzERazM/HuAuEsuXw3MDcWHyj
	LMsIrLQva2PeuB2yky2eTJYSymkfbk0z/3ewOLkQO8zt1yXdcrPB712d1OtxXkjHATiEv0V7B9ZJa
	rz23pWqe1ciqAGCTn5xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXoq-001sNk-1J;
	Wed, 24 Jan 2024 07:37:08 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXon-001sN0-0N
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:06 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1d7354ba334so30721605ad.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081824; x=1706686624; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TYkvTvEMLj4JoaODxeTHusWVUfI5+qI8qMmzgmBVEBE=;
        b=j6+ayXd+VsMu33InJUzWHiPb7VxUnluhpLE7R+kDIqphd4iKasY9vakQ89R4kbhJ4z
         134yKBrMneFRS01ejfy3k3a+ayJ4Iz5WMkofIAaX1U2WywbrIzjaLdLcyIBP/7deqXYU
         9TVYmg2CbV4GTZ5JMox2Bj+yqNat3cCxbAjJu9GXO5TU9NROF5dy9i18+nyJpa3Q/tr5
         +a56tKvyKpedbKVQtF7xqiP/5/Vu0N+Ny6K5Jjij/pSAd9n7jFr58Jga/dzN6YCQ0iSB
         pomJpx0jyLXRSz6aAedwvO+wQS3NKt3uQ0k9i3y2RKZ7kOjWOsXLGlXm8W7+51T+0Rp4
         AOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081824; x=1706686624;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYkvTvEMLj4JoaODxeTHusWVUfI5+qI8qMmzgmBVEBE=;
        b=d99PQgXpyqVTOYgSkOHgoGqD23HelYMbP1Vdq9IQkYBLmYCcLv+FW6iVq5PBV1aPgz
         iwLZkOPnynf+8w9ZTTT9i1HELhTcXRko8VsGh88pCTsyVaINI4WKzkNzJUZ2BT4veXDZ
         KDsgfKKIMHUjd2yLQClrtdDv9D3h/B22V5cLe1MIwRm0at90yTouCUVpV8hbn3o6t4D4
         cz2POX7ZHDxJlVVh2qrbsvLMNAcUkAMUBYUN8kmq2An71Cg07SgXiVJR7NfvHY9cpyaH
         e8bxPRKYYh1ipFPE7Xj5P4wuwoUA2G7lFrhXhFnf8JjmGFNy8IDVfN3j3Pvoyd/4VK31
         fCDA==
X-Gm-Message-State: AOJu0YxL5XqytczdlbrgnTwrXrYCs0/28OBC1GqJ8x8zDy/6bo79yFaB
	ODcM2u3tpQz3B9gVIHbei05rfw9/L6ZVI5tyUZfa4WURxPkfQy4Nak0wVQtIfg==
X-Google-Smtp-Source: AGHT+IGTjeibUHV4ILPDRl0hWCHWuyMofMnIPtbp+2gsEYpQvq4noe4HRVKYN4q12hIlzAyNaf3Y4g==
X-Received: by 2002:a17:902:7401:b0:1d7:e84:4ede with SMTP id g1-20020a170902740100b001d70e844edemr494893pll.67.1706081824565;
        Tue, 23 Jan 2024 23:37:04 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:04 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:32 +0530
Subject: [PATCH 04/14] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 the usage of aux clk
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-4-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=6248;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=FUkkiV+2vDk+h8Fu4sCklCuzOARyg+ribP0i686xTfw=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4DHLbLRu4/rLPOQs1IQsAM94Al1MnHSEL/G
 wX5JYbKC+uJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AwAKCRBVnxHm/pHO
 9V8RB/4lFYgeiPK6H+XbHF+JN0qyPo58sySDUBLf/BX0tIhPOzwJ6npj041l/nk5ec9gDfo+CaN
 tJN7h8IN6S8zqtRZrIy2JpUo2nctn7HEPPoeRuk2DLVh6rTPwxGcFa01gSuDGZ+ajytR+/0Z+wd
 3ZtZXVcUaHBxJXJEznY8SUrE24e99wXNhCJBIvKGT9+b/6eo0RPdy9m+dDm6a0R4zbL8QQg60Mb
 e2WBw9v+QGK8KSPyaBupTaM4ycBHxC82P3Ryvw7RmdJTuym6QexRpM5wLaAqPrStq4S4NXq95Il
 5yImBNw7KWTyGuutHy0uYxDMv9X3sk3SwQGY3o6cFYpOehfw
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233705_152069_5483E700 
X-CRM114-Status: GOOD (  12.22  )
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

On some platforms, PHY block requires PCIE_PHY_AUX_CLK to be used when the
PCIe link enters L1SS state. On those platforms, a dedicated
PCIE_PHY_AUX_CLK is available from GCC. Other than this, the PHY block
doesn't require any other "aux" clock, including PCIE_AUX_CLK which only
required by the PCIe controller.

Historically, the DTs of the platforms requiring "aux" clock passed
PCIE_PHY_AUX_CLK as "aux" clock. But over the period of time, platforms
that do not require this dedicated "aux" clock mistakenly started passing
the PCIE_AUX_CLK as the "aux" clock. More recently, SA8775P platform passed
both "aux" (PCIE_AUX_CLK) and "phy_aux" (PCIE_PHY_AUX_CLK) clocks.

So to clean up this mess, let's remove the newly introduced "phy_aux" clock
and just use "aux" clock to supply PCIE_PHY_AUX_CLK for platforms that
require it. For the platforms that do not require a dedicated "aux" clock,
the clock is removed from DT.

While at it, let's also define "qcom,sc7280-qmp-pcie-phy" compatible for
SC7280 SoC which was earlier using the compatible
"qcom,sm8250-qmp-gen3x2-pcie-phy" as the clock requirement has changed and
also restructure the "clock-names" property for the affected platforms.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 79 ++++++++++++++--------
 1 file changed, 52 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 6c03f2d5fca3..2396a457f9c8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x4-pcie-phy
+      - qcom,sc7280-qmp-pcie-phy
       - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8280xp-qmp-gen3x1-pcie-phy
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
@@ -44,19 +45,12 @@ properties:
     maxItems: 2
 
   clocks:
-    minItems: 5
-    maxItems: 7
+    minItems: 4
+    maxItems: 6
 
   clock-names:
-    minItems: 5
-    items:
-      - const: aux
-      - const: cfg_ahb
-      - const: ref
-      - enum: [rchng, refgen]
-      - const: pipe
-      - const: pipediv2
-      - const: phy_aux
+    minItems: 4
+    maxItems: 6
 
   power-domains:
     maxItems: 1
@@ -130,6 +124,28 @@ allOf:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7280-qmp-pcie-phy
+              - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen3x2-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+              - qcom,sm8650-qmp-gen3x2-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - enum: [rchng, refgen]
+            - const: pipe
+
   - if:
       properties:
         compatible:
@@ -144,19 +160,19 @@ allOf:
               - qcom,sm8250-qmp-gen3x1-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
-              - qcom,sm8350-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen3x2-pcie-phy
-              - qcom,sm8550-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
-              - qcom,sm8650-qmp-gen3x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
           maxItems: 5
         clock-names:
-          maxItems: 5
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - enum: [rchng, refgen]
+            - const: pipe
 
   - if:
       properties:
@@ -169,9 +185,14 @@ allOf:
     then:
       properties:
         clocks:
-          minItems: 6
+          maxItems: 5
         clock-names:
-          minItems: 6
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+            - const: pipediv2
 
   - if:
       properties:
@@ -183,9 +204,15 @@ allOf:
     then:
       properties:
         clocks:
-          minItems: 7
+          minItems: 6
         clock-names:
-          minItems: 7
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+            - const: pipediv2
 
   - if:
       properties:
@@ -215,13 +242,12 @@ examples:
       compatible = "qcom,sc8280xp-qmp-gen3x2-pcie-phy";
       reg = <0x01c18000 0x2000>;
 
-      clocks = <&gcc GCC_PCIE_2B_AUX_CLK>,
-               <&gcc GCC_PCIE_2B_CFG_AHB_CLK>,
+      clocks = <&gcc GCC_PCIE_2B_CFG_AHB_CLK>,
                <&gcc GCC_PCIE_2A2B_CLKREF_CLK>,
                <&gcc GCC_PCIE2B_PHY_RCHNG_CLK>,
                <&gcc GCC_PCIE_2B_PIPE_CLK>,
                <&gcc GCC_PCIE_2B_PIPEDIV2_CLK>;
-      clock-names = "aux", "cfg_ahb", "ref", "rchng",
+      clock-names = "cfg_ahb", "ref", "rchng",
                     "pipe", "pipediv2";
 
       power-domains = <&gcc PCIE_2B_GDSC>;
@@ -242,13 +268,12 @@ examples:
       compatible = "qcom,sc8280xp-qmp-gen3x4-pcie-phy";
       reg = <0x01c24000 0x2000>, <0x01c26000 0x2000>;
 
-      clocks = <&gcc GCC_PCIE_2A_AUX_CLK>,
-               <&gcc GCC_PCIE_2A_CFG_AHB_CLK>,
+      clocks = <&gcc GCC_PCIE_2A_CFG_AHB_CLK>,
                <&gcc GCC_PCIE_2A2B_CLKREF_CLK>,
                <&gcc GCC_PCIE2A_PHY_RCHNG_CLK>,
                <&gcc GCC_PCIE_2A_PIPE_CLK>,
                <&gcc GCC_PCIE_2A_PIPEDIV2_CLK>;
-      clock-names = "aux", "cfg_ahb", "ref", "rchng",
+      clock-names = "cfg_ahb", "ref", "rchng",
                     "pipe", "pipediv2";
 
       power-domains = <&gcc PCIE_2A_GDSC>;

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

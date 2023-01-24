Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BCF4C54EAA
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 12:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTc1prrZE2mxWHXttAe4KsvWA+MuLWFnRb2vKrtrFIc=; b=SQsZYNcvTZTnOG
	ygLAkCEuJ+jBV//RIywt+Z6LkkmdyCNwHW0Bv/Bwcrovfmm73ZA6X7ZchzfxLzQSUlUWqb+jAH+gq
	KKxniF+Z0+IVK7md6HerAhOQHhKiW5nKVyxauLykgq+B1k3hHjUBrWhBPDMG+v02U2JEjiezvv84o
	PoWhpqyr57TBoChdasxurNJzvDenQ1mYxbsZnjwgC3vVPQq2LzpWZZSt+aRVUor9FnaPJn87J96UA
	YEXurxatrYEMLHvFU5+7thIu5VDozeXEuBGsRcFRWHd0Y2BY6vGgcoE4RSMLz96Hx4jYF7Pw2kU9Y
	0MoaZacsf2NctPsPAQ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIi1-003mzi-0V; Tue, 24 Jan 2023 12:47:29 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIhx-003mx1-J6
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 12:47:28 +0000
Received: by mail-wr1-x432.google.com with SMTP id m7so106998wru.8
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 04:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gIpFvpObr+LCa35ptTAWlpq41PQzSNF4rShpYTqKeo4=;
        b=jszTm7+tL+Z7AsIsCF2rdWTTmytF8Ert+h60gc2L6dBOosSdPnP21X/HLJ2X4/5eAH
         ERdcByEYGEU0MRjiFSvR9re1+Obxdj0PhpiR7mpEYSmwcU1rfRyD6SQjT1y+qkd4iz4U
         0LROnYob6QBVHTyynLEnKRLnvt00zDqte9RJ9KUCmsQcOmCsW0OzeIVVL84zm/PNupMK
         GAGlscWlBY+Srld1uFiixA8LCdvesuYyxGwRm4nwWp0HzugH0G+CK9N6mlCI0gTKKPYD
         tHloUGp/jxtb/7wdAA1QGbr+dyb0eRpnWzp5zM6aTk8nyo9UxgKwZ5lbtb7SBfjYGhzC
         6eEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gIpFvpObr+LCa35ptTAWlpq41PQzSNF4rShpYTqKeo4=;
        b=cZ/OSYldn22PDHoHN61D6wC3Bd4P3yocsEIfv0LjYvIVccd+fAHvfprjR9dYFpXwOa
         yX9LXWvX1Fy4sPLSLoii03ESkJaYAo8r5M8QkBL7ZlyxOJgkYM2DeBBxFflHM1AynBBF
         iEAU5e8Lv42WbmmYlpsj2+yDWSZeiNc6dpaYNEnNdI2/SxEPO3aEBBpgG8i042LHFyhs
         QB+pcoto07lN77G0BkhPSEC+19eHOxtaIQp5lDoTFFQ7XmBp3YQ+ADkkgasE+BLtKVgZ
         NggaHdNvC68cPdwf2YlKGWyAc2CQfOTWqxC7hfTIziuwSf8QY3Ju167QHr8uZUjGrAJM
         DEHQ==
X-Gm-Message-State: AO0yUKWXsiJc7X4dfncSE6x+efzuxByoc9x8xpaPMby1da5hQZg7YVRm
	HDRoi9f0Rv/78Z2lujfMYh0EAQ==
X-Google-Smtp-Source: AK7set+YMwedlvqtr7K1l0ADC2IbHJ3R8aLyO+c6ixu0trA29JDxkBdQ/I30lJtWzVrlA6+Q8Y/yjw==
X-Received: by 2002:a5d:4f87:0:b0:2bf:b2c2:e123 with SMTP id d7-20020a5d4f87000000b002bfb2c2e123mr1186333wru.34.1674564442394;
        Tue, 24 Jan 2023 04:47:22 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:21 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v5 01/12] dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
Date: Tue, 24 Jan 2023 14:47:03 +0200
Message-Id: <20230124124714.3087948-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124124714.3087948-1-abel.vesa@linaro.org>
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_044725_664349_8A451E73 
X-CRM114-Status: GOOD (  11.34  )
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

Document the QMP PCIe PHY compatible for SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v4 of this patch is:
https://lore.kernel.org/all/20230119140453.3942340-2-abel.vesa@linaro.org/

Changes since v4:
 * constrained resets and reset-names to 1 for every other SoC

Changes since v3:
 * increased the allowed number of resets to allow ncsr reset
 * added vdda-qref-supply which is used by pcie1_phy node in MTP dts
 * added both compatibles to the allOf:if:then clause to constrain the
   number of possible clocks to 5

Changes since v2:
 * added back the binding compatible update patch

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 8a85318d9c92..5b491f4efd66 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -20,6 +20,8 @@ properties:
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
       - qcom,sc8280xp-qmp-gen3x4-pcie-phy
       - qcom,sm8350-qmp-gen3x1-pcie-phy
+      - qcom,sm8550-qmp-gen3x2-pcie-phy
+      - qcom,sm8550-qmp-gen4x2-pcie-phy
 
   reg:
     minItems: 1
@@ -43,16 +45,21 @@ properties:
     maxItems: 1
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   reset-names:
+    minItems: 1
     items:
       - const: phy
+      - const: nocsr_com
 
   vdda-phy-supply: true
 
   vdda-pll-supply: true
 
+  vdda-qref-supply: true
+
   qcom,4ln-config-sel:
     description: PCIe 4-lane configuration
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -113,6 +120,8 @@ allOf:
           contains:
             enum:
               - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
@@ -126,6 +135,25 @@ allOf:
         clock-names:
           minItems: 6
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        resets:
+          minItems: 2
+        reset-names:
+          minItems: 2
+    else:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

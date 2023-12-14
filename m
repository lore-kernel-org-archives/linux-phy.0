Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2D97C4167D
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Y18nX3X1XKrtgv0mOoZdcN/anJCtIR9KDkmis22aag=; b=xq4z6K1JYEBfDX
	2WHP3ZRg5le6r8EkgVnNXrGZlv2ca/75J2hQCS11q5zSR9cBYtDSNxU1SBN3TVSSPf6+GJV6+pfY0
	o/xIQsX1DtectLr558zu+4u/qsI218kWfUZDeKwi36vuVlj673PrrU1ttRTmtDCODX5vGlPjDc8ha
	qjYVFe5BuOn95OX1BSVGDT4MVCjT6FAJ9GED3s1i6+fN/nJysiYD9v+PXwPhWyHH23vFmSmwET916
	ebZz6oJTorXKhk1xHQvNKF174QRSIyBB4AJP90ADE8Ly+lM7DEWUeP4+cmO6d+OhrlltywqRwU3+p
	1lgV+DpedS7lH1Iof5RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhkl-00HJYS-15;
	Thu, 14 Dec 2023 09:11:35 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhki-00HJWS-1j
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:11:33 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-67ad531686eso3365036d6.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545084; x=1703149884; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6IaFDod8qWxr8WQM1D5UKzpQIEJXDdQljMHqbalXZ3w=;
        b=ORHvj0kZTpJYa7BXQzZJz6movaW3D9yzk7xc5aEBoH12/K3KSMgwwlSPy+m8SWJprw
         xuS9Ih6BGay8oMVwYFojU3U2MCkQ9Mn17LQCMmQrZN8ld7yPHuj+DTLekq37eF3UrKJf
         EtxAFCB7bfloBaa5CGNimr4TIQUY3OkONweuPDTBptoe1o+06W9QgydvEjUEw/UQUa3H
         kqGJc7KiAAHolZRXipG0jhyoM/A9IozylnEJmR+sSgMpGfMIgVL6B8Ucs3qy6ezbBhub
         oYSYBZUKUBQBIJ15Gf80VkHOryclU6kIko+CA6/eYD9y7nXmtc2DwVl9a4DSvfNwjyM4
         nZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545084; x=1703149884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6IaFDod8qWxr8WQM1D5UKzpQIEJXDdQljMHqbalXZ3w=;
        b=By6zCfKXiju70uUuEJ5kG0A5bS/eBovlC5bFkqBiO3en0u13PNeJ3jHCQOjUyM262U
         Oczz1Rt759ncoGGFr6vJ+ILUesvOKylPtgjRgOlhX2ylaQ9IDTtxbWeGIb+NFBZyB1Sq
         uRreSrVp1YIKoLUyGM7g+XaIEhC/OIWVOCa1SpefYsjxBvmEBYkpQLU95jfihEGau7mC
         hmWFymzVUzAAoQdGcC/qgDRTZAKIIXaEfU2BBxXexoMJcNov8oLpgouRJs6Sh8Z5lIdD
         wfgtzvJpbUkM7GjFZCYcei1rwKZs/qnJXdJjEysJbeWvlwpGAW7s36ZyT6aAWMSzQSHh
         BmcQ==
X-Gm-Message-State: AOJu0Yx0vqfsTz/t2u0IncNLlZcxtESMdl+flUESmWCi6w5YtVj6w3Ye
	fcP8Fxw8fIV/8Ecg+XBakswm
X-Google-Smtp-Source: AGHT+IFWS5tXUoDuwKS0Y+S8DpQ1nM36WsP8DhgZT5a4e5se0ymj9dUim0tvEitMjyqjox+W7p/Ugg==
X-Received: by 2002:ad4:5dec:0:b0:67a:568e:5b10 with SMTP id jn12-20020ad45dec000000b0067a568e5b10mr15074701qvb.20.1702545083823;
        Thu, 14 Dec 2023 01:11:23 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:23 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 01/16] dt-bindings: phy: qmp-ufs: Fix PHY clocks
Date: Thu, 14 Dec 2023 14:40:46 +0530
Message-Id: <20231214091101.45713-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011132_573132_D8F0A72E 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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

All QMP UFS PHYs except MSM8996 require 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC or TCSR (since SM8550)

MSM8996 only requires 'ref' and 'qref' clocks. Hence, fix the binding to
reflect the actual clock topology.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 47 +++++++++----------
 1 file changed, 21 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index f3a3296c811c..800f11b29dcd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -37,15 +37,12 @@ properties:
     maxItems: 1
 
   clocks:
-    minItems: 1
+    minItems: 2
     maxItems: 3
 
   clock-names:
-    minItems: 1
-    items:
-      - const: ref
-      - const: ref_aux
-      - const: qref
+    minItems: 2
+    maxItems: 3
 
   power-domains:
     maxItems: 1
@@ -85,22 +82,9 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
               - qcom,sc7280-qmp-ufs-phy
-              - qcom,sm8450-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          minItems: 3
-        clock-names:
-          minItems: 3
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
@@ -111,13 +95,18 @@ allOf:
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
     then:
       properties:
         clocks:
-          maxItems: 2
+          minItems: 3
+          maxItems: 3
         clock-names:
-          maxItems: 2
+          items:
+            - const: ref
+            - const: ref_aux
+            - const: qref
 
   - if:
       properties:
@@ -128,22 +117,28 @@ allOf:
     then:
       properties:
         clocks:
-          maxItems: 1
+          minItems: 2
+          maxItems: 2
         clock-names:
-          maxItems: 1
+          items:
+            - const: ref
+            - const: qref
 
 additionalProperties: false
 
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
 
     ufs_mem_phy: phy@1d87000 {
         compatible = "qcom,sc8280xp-qmp-ufs-phy";
         reg = <0x01d87000 0x1000>;
 
-        clocks = <&gcc GCC_UFS_REF_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-        clock-names = "ref", "ref_aux";
+        clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+                 <&gcc GCC_UFS_REF_CLKREF_CLK>;
+
+        clock-names = "ref", "ref_aux", "qref";
 
         power-domains = <&gcc UFS_PHY_GDSC>;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

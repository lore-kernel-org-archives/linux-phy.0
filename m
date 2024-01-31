Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F31E7C47258
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JZMlbqXga55hPzXqCC2GYbKvPp7h9rtZyXKOc7CyXk=; b=2SD/JMGGWvSNuW
	IA2mxv/7h/J7yBgTxUTNQ4wmbq1YmX4iVxhkXnovZneaZVa6fBFsyQIOEi/EIaZwCEU4n0OLtXcDg
	oUo0bnyI/EaBKC9bwbgDBvSa9aWGw6NZIMZfmNnEuj0PCTzmKt7Nk8NzXZ+mNgrBVReerMa1U7wcK
	k7R7p66PHSKcNt8FYL8W29hJBUrRVYH9hl7kgzn3gi5qxuY+rVsbMs3jXzx1XKuoVzoty/SawLkvF
	luEkt+yKix1QiIRIU2g5A9C0vLXDxiWLChz9STVX3MCoUqDXGAnIOMWkn20P7+WarfCmLPPKKa7TG
	Ev69SWktODGVEQYzH7xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4ho-00000001j9G-2hEu;
	Wed, 31 Jan 2024 07:08:20 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4hk-00000001j3L-2HB4
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:08:18 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-5ce942efda5so3498372a12.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684876; x=1707289676; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=coxloDouSUUvKnRVFNrYwU4912onDxzNLQ/Lzm3Gahg=;
        b=Wj/ICLTxaj89l+W617Sky/NyAozanc8dehNq7PrzxVRktR7omBLTaGD1KzpTVahANs
         Rw3UVZiuUU2no5mQxNzYLgd8w9mka2PKpub0FrK7c+UU+SW315ZxXxJos0r6aFz5A6SQ
         5Zudhf24mLwHDuu4hDB72DmKi3t+O6yX2Q68kViNy79SxYePLB7EhC9rnO09ySr17AfY
         Lwv37zjVTF6EW8L6xQQaMvDPNq6X9iTIeEyjpdNUx36B5WZnxtPEjsXNk1H2ndAZR8IT
         sCpe4MBhgKpUBL3d9xQkdFgJhCnYYicEfkGTNdIPK8//69LUVzrUHEo68zTkPyZSajFf
         Zo8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684876; x=1707289676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=coxloDouSUUvKnRVFNrYwU4912onDxzNLQ/Lzm3Gahg=;
        b=PvbNObDBOeZ3aJAXwhpSewLaJVzXnK4G1PHJdgQXl+8Qov7/XnLKEDzUsWH+U8alHD
         IPVhtlnl4K1YghQzqBEQKhfH8oUC4aoWLtofZINS/jtkbNJFWkooqDS0pwCqblBSpdN0
         EeS6ZgaI+JMRJd/Zsw3KZHL4yqMxPl2zTKOnvDwDQwJhZKkOQd6HM4BN5AnNGnq/++bO
         nMDMZRDu8tnPKeJAsKjiDbskIvR0cEH1EXeEv/2PF3KGysWU4YBRIdoYQJLKsUSYtKKq
         pFoW6mBDUduYmtVopYjhRocrqPzofQpZ0giGVZoqrL/clSKkQ//9nKFMPJeKvWi2SJ24
         UXbQ==
X-Gm-Message-State: AOJu0Ywee5fwthHWbWo+iceh2PvZDGtfTo+QMRQ5kmTpqWIKmohqiTCI
	4ahKX/eQdEtFo5gOPH5qN1x4+th6l1qZwiOxp4GI4+/VeDoc5f4ySCKjOBDenA==
X-Google-Smtp-Source: AGHT+IHUy0XPbMF4KwS60BBVoH/xkV/oZdh8S9A4JKqzGeq7rtyDQzOffoPagqAFRnuPhp4OsfOf+w==
X-Received: by 2002:a05:6a20:b99d:b0:19c:8505:a232 with SMTP id ff29-20020a056a20b99d00b0019c8505a232mr660070pzb.40.1706684876422;
        Tue, 30 Jan 2024 23:07:56 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:07:56 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:24 +0530
Subject: [PATCH v3 01/17] dt-bindings: phy: qmp-ufs: Fix PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-1-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3589;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=ml/UM28kjmlc+frUcnxa+j2RW6/d0+c3kGBo/EvxtPo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG790GDMMLVLzZeV/Q9JRjDC1zn2/vd0of52
 gXjQqF7AuCJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxuwAKCRBVnxHm/pHO
 9ciGB/0TP8dhgNW+Upo4kF97YvCsnKZIv3FUbqCT/SokeCap2KZPfFokITJmj84238+AtQ/j8EC
 UuI/Cptq5CUkY8W7WSJXhj2QbHlEsQVUSoFAtwcJgqkk6RJ/iQk7D7JgozqmrDPqpigiR0J9R1n
 mqRzD0ayr2SOMNlWLGwpNZvvZEOIV2H9dMHmIhpcMOh2jcKn1Pv61VvhSxsfyOPOYNQSmHbmyzp
 uhl32nYOLLxrOc5JAMrISgKTBjLZNHb60J/+yiIx6o1Nq9bjVCzQ81+JJnRYckgp0SmP9SPTgme
 dA2DQxbf8HIJ95K2EembigLgZLObil316MycK6KkIXtdj1yD
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230816_601474_36B12FF1 
X-CRM114-Status: GOOD (  10.16  )
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

This change obviously breaks the ABI, but it is inevitable since the
clock topology needs to be accurately described in the binding.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 48 ++++++++++------------
 1 file changed, 21 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 5faa1cb3a12e..91a6cc38ff7f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -39,15 +39,12 @@ properties:
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
@@ -87,23 +84,9 @@ allOf:
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
-              - qcom,sc7180-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
@@ -114,14 +97,19 @@ allOf:
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
               - qcom,sm8650-qmp-ufs-phy
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
@@ -132,22 +120,28 @@ allOf:
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

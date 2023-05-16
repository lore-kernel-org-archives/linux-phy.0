Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C22CC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 15:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+hVkoxDuoAF9nOmdz/vh8ePLua9ZuQcV564DvyoxOo=; b=io/OxrHH/XAbOR
	NqgjcYw6BLoJiY8D1/Htgek4A9pArqML8kB9bKiEPi8MEyaUevJUzFp1fpAd3NISTiWMfTK67KDLD
	57LvZkN7DNRTTmr13vDjy4f4mpKuyxqnAVgAntw+BpgIQaGpmYoL2N2U1+C7jLAvm2wnNEww39Ntq
	ZZ5SDEGOWIBshh5yz7pbKRt3BXpTj5iEQ1jJT7AEMrTa2+pofd79iudZvDcAgbu/vKfBmtVGwqGWh
	pB4ufkl+JJc2+ro43eTMn1j4s8mermRT6VhaQKEx+Al2W24ED2uGVBLxUZ9TTrGwk8i8RIu43hHjV
	8nW865P42sD5uIcwitNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywEz-006BmR-36;
	Tue, 16 May 2023 15:05:29 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywEx-006BlG-1T
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 15:05:28 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-643990c5373so14550623b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 16 May 2023 08:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684249526; x=1686841526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sjHMnsxahLP9yaokDtSj6QqIcp96rWhNrr3eynjkYjU=;
        b=oDg0quMXbstLndxzIr4R73KeDkmPK+Nut3+U6e1GMQVhBfPyElZNO27X1QeJ/5U8Ri
         +o226ukrdcDjkYHr60zi36lReTPAsdGOyGDHoA5NanPSl8+zwLHs0rmORJnXYXYvI3W8
         fd7AFNH/7JjmGt+UrY9HNwgjGNoUIGEy/8GgGMjhPEey4Sza9d5GcZEbJVLDusjKDTUk
         nJExlKgb2lXx19b98O3yNFTC4N5LOuTPeJYuKejQUZcfNVEmjTnm6/vq3i2Hun/3IROT
         48zEk4an5B7A/yU2N1qPP+NxOkgoeacgOmFP56pZRthRBlOSQalOHuPFjVqqY553sWT1
         Wi0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684249526; x=1686841526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sjHMnsxahLP9yaokDtSj6QqIcp96rWhNrr3eynjkYjU=;
        b=FrhuAyXYr2SFjYxIBl+KkMgk/l1AU0JlilAGiAPjiYpgkcSDyGivnw6coywcyPfrcv
         xek/R1GyQgd8czQj2C8+uPLItxRVN20sR4GnY9Hwks69n6bWlboCLPL7biGBdkO6Yjp7
         a2265d/hom8fWiHomkgUQohc1AGiYFW+upDQ/OEb0fZvjdWBb2pPkLIGEMT7aNCIrhS0
         hrn2e87YWzJt1mZI8pP6KeIVAKqjMDYgA6N+wXkypCufFBvlVXmNPKeuR++5F/fsv2EP
         CjlYnrZ7+W6nh7MUy/Ibbxfgl7bVQuViD1X2qhxms5xa98TBzdYa2DSIt/GNUQGAQqMv
         wO2w==
X-Gm-Message-State: AC+VfDyBKkn7Ot4kVpcToukxBarnbJ+Hhj2qW7uOtRGqjYyrvbE/iUwj
	ZX4r5I5XU9Ouxlkstr2rIgNoy0RayHIz5Ff+mkg=
X-Google-Smtp-Source: ACHHUZ4qi+mjNa1yfbbfSHhmCjq8vhed5TGOVF912TIsamI/byJiRWtrvXqrvWMy4uuIbwOZvSXH+Q==
X-Received: by 2002:a05:6a20:440d:b0:107:1f22:10d2 with SMTP id ce13-20020a056a20440d00b001071f2210d2mr1644516pzb.20.1684249525828;
        Tue, 16 May 2023 08:05:25 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6bed:72cf:f5c9:ba94:6b85])
        by smtp.gmail.com with ESMTPSA id h1-20020a654801000000b005302682a668sm12817164pgs.17.2023.05.16.08.05.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 08:05:25 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v11 1/4] dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer one (SM6115 & QCM2290)
Date: Tue, 16 May 2023 20:35:08 +0530
Message-Id: <20230516150511.2346357-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
References: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_080527_494891_4C6CFA10 
X-CRM114-Status: UNSURE (   8.74  )
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

'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
which predate USB -> USB+DP migration. Since SM6115 and QCM2290
nodes for USB QMP phy are being added to dtsi files by followup patches,
move these bindings instead to the newer style
'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.

Since no device trees use these bindings presently, so we have no ABI breakages
with this patch.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 -------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 38 +++++++++++++++++++
 2 files changed, 38 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
index e81a38281f8c..4c96dab5b9e3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -23,14 +23,12 @@ properties:
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-usb3-phy
       - qcom,msm8998-qmp-usb3-phy
-      - qcom,qcm2290-qmp-usb3-phy
       - qcom,sc7180-qmp-usb3-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
-      - qcom,sm6115-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-phy
@@ -248,29 +246,6 @@ allOf:
             - const: phy
             - const: common
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,qcm2290-qmp-usb3-phy
-              - qcom,sm6115-qmp-usb3-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: cfg_ahb
-            - const: ref
-            - const: com_aux
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy_phy
-            - const: phy
-
   - if:
       properties:
         compatible:
@@ -318,12 +293,10 @@ allOf:
             enum:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
-              - qcom,qcm2290-qmp-usb3-phy
               - qcom,sc7180-qmp-usb3-phy
               - qcom,sc8180x-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy
-              - qcom,sm6115-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-phy
     then:
diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a272c4033652..2c3e2ede6671 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -17,8 +17,10 @@ properties:
   compatible:
     enum:
       - qcom,ipq9574-qmp-usb3-phy
+      - qcom,qcm2290-qmp-usb3-phy
       - qcom,sa8775p-qmp-usb3-uni-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy
+      - qcom,sm6115-qmp-usb3-phy
 
   reg:
     maxItems: 1
@@ -104,6 +106,42 @@ allOf:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcm2290-qmp-usb3-phy
+              - qcom,sm6115-qmp-usb3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

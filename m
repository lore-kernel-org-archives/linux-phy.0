Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7757EC4332F
	for <linux-phy@archiver.kernel.org>; Sun, 25 Dec 2022 11:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJrW6EgvqDK5WiSGtZtPcSgq+0jYSdwbd8E+nbMonZE=; b=jXk1SjEGi7mKpU
	cEMuJBJs8RmWGP8UAgLDSnmR8jN3hSCRziW/G5vupZQdAe6Xt0ML7CNlExSu6yRqT5AOaZRa5kaNu
	jytWKMFKX+A8IWJ9jDGuwO0mTvrYJBrlflzKRWdG0WAjBiD0O+gyeBd4i5R3jqtNw8rhXpidG1eT2
	FxCWOQmEw8N5kIBWdKWIJWShP6kae6Mp6CvbK3NVIANqydPutUbrPBcSvw21efGD5c3Tkmf0KF4xw
	F0CQhqq0W/2IgW3hCruyPzB6jUjT5eGVYRMzoHshh9/A+4E++/Wvtgrggi5/dQY8Oo6IbuoxJU88t
	jAkVpFtgmq38TQMaNvhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9PfW-00AgkN-Ny; Sun, 25 Dec 2022 11:59:54 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9PfS-00AgiV-4P
	for linux-phy@lists.infradead.org; Sun, 25 Dec 2022 11:59:52 +0000
Received: by mail-lf1-x12e.google.com with SMTP id j17so3369333lfr.3
        for <linux-phy@lists.infradead.org>; Sun, 25 Dec 2022 03:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJm2wioESvThzzMOuzKJ3QtCPr7g0JfFvuAg6gEUcPI=;
        b=LiRgMi1qkQ2+Ds7g9/JAYO4WUSM4FJmGIlvOD7cjtAb5RdlPgbnz502iHgVI+Q093a
         lyGWP0Jss+EmDo1QcTzafJXnnlJaoGsD/5kQ+wfELfx7hs+kixmS6ANmTMVqNSCzDAJ1
         u6MlwmI8y4H2UD3/FOBS5gxJ92miBatL/e2PkVVyjUlHt8JivFAx/55o9rBhNCrrRL4W
         2AQo+nlvvnNBfmESBQRfL6czWQ8lfe2GOqW5jTMTj7HO5T4puwssyH8HriVa0+An3g2Q
         uMC2ma/b4clP8Y0jOmLqWP7oXEuY28OgzvQvO44KifylJdOIua2nUutHqDQiMNhgBdJX
         fxGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VJm2wioESvThzzMOuzKJ3QtCPr7g0JfFvuAg6gEUcPI=;
        b=oX+GpgxRF9/uzfHnPOZd+X7gfSG5RJmhaBTbnAdVtLKsk6HcjtzTk5mmhayZgHDyBc
         kfMv/7cziZJmPg38A9bllVZ4FogR1meHxyZxzTQtCFRrBO3qXWXUx/owjH81r1lL7VAu
         8OD3u1hmWuZ8zR+2KlGF0nJyHCJERRJ9xCfO38lv13kafUfucG47105LhapTiikE+46H
         VwE2+vGGj/MjmUM/YIFHjWiiQG/Zzq8Xgo0NP8L92i8B0M7WbcdHPxGF6wndY6eQJ/Je
         09vmlf9/sWTWy3Tlhp2QFQOVkLyTxt0zeUEBjz9AsnrWpwP2ajrDOabn+cAdmQWz/rWn
         RQ2Q==
X-Gm-Message-State: AFqh2krfrbMurfjypDWZG/fIu5E6z37H1RJSMEBXXYs9lsz59w7vweea
	CkkHfqG6SnhJpUdk3uwxplxFYA==
X-Google-Smtp-Source: AMrXdXtZbcr1lewm33QSNJ02le4poAH1iJiWRMNcmbXeb/Tk88AaBN5cBHC8rGSoz6Usb0/FzIq/tA==
X-Received: by 2002:a05:6512:32cc:b0:4ca:d81c:f172 with SMTP id f12-20020a05651232cc00b004cad81cf172mr4589490lfg.43.1671969587983;
        Sun, 25 Dec 2022 03:59:47 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v10-20020ac258ea000000b004b501497b6fsm1338615lfo.148.2022.12.25.03.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 03:59:47 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: correct clocks per variants
Date: Sun, 25 Dec 2022 12:59:44 +0100
Message-Id: <20221225115944.55425-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221225115944.55425-1-krzysztof.kozlowski@linaro.org>
References: <20221225115944.55425-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_035950_189959_607739A8 
X-CRM114-Status: UNSURE (   6.89  )
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

Different variants of Qualcomm USB3 DP PHY take different clocks
(according to upstream DTS and Linux driver):

  sc7280-herobrine-crd.dtb: phy-wrapper@88e9000: clocks: [[43, 151], [39, 0], [43, 153]] is too short
  sc7280-herobrine-crd.dtb: phy-wrapper@88e9000: clock-names:1: 'cfg_ahb' was expected
  ...
  sm8250-hdk.dtb: phy@88e9000: clocks: [[46, 185], [44, 0], [46, 187]] is too short
  sm8250-hdk.dtb: phy@88e9000: clock-names:1: 'cfg_ahb' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 72 ++++++++++++++++---
 1 file changed, 62 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 97d94c685d7b..2e19a434c669 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -51,18 +51,12 @@ properties:
   ranges: true
 
   clocks:
-    items:
-      - description: Phy aux clock.
-      - description: Phy config clock.
-      - description: 19.2 MHz ref clk.
-      - description: Phy common block aux clock.
+    minItems: 3
+    maxItems: 4
 
   clock-names:
-    items:
-      - const: aux
-      - const: cfg_ahb
-      - const: ref
-      - const: com_aux
+    minItems: 3
+    maxItems: 4
 
   power-domains:
     maxItems: 1
@@ -171,6 +165,64 @@ required:
   - vdda-phy-supply
   - vdda-pll-supply
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc7180-qmp-usb3-dp-phy
+            - qcom,sdm845-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Phy aux clock
+            - description: Phy config clock
+            - description: 19.2 MHz ref clk
+            - description: Phy common block aux clock
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sc8180x-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Phy aux clock
+            - description: 19.2 MHz ref clk
+            - description: Phy common block aux clock
+        clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8250-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Phy aux clock
+            - description: Board XO source
+            - description: Phy common block aux clock
+        clock-names:
+          items:
+            - const: aux
+            - const: ref_clk_src
+            - const: com_aux
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

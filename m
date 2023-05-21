Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 449EDC7EE31
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vW66r9BiFm6X81t5jhY6d5ple9igcAJW/A+O2f/mF4c=; b=yEGiBu1H8e6ngm
	JXGmMbiPVFxrfqlo2/bkkUSvzWJt3KEA4DsWAQ9XRldo67JvxKMYz4+utxTj2TqVefosNPlVvMPnf
	b4wEsRDLH6CYM3iMOoqrTk5XzJncZFf/SZRXHZtPEJ4W2tppTZ5D4uJ4U6PX/0dugFrKVvqs4brRs
	4yf30LpIotbVfRwTEVuLdH4JkCY9u3GzRsJ0yQVX3v8vLLzZKsrJm8tPkACYH2P9H2xA1ENnAOTmR
	VAVJYwscz1R7EB1VZ2/4ljly2hR6A7dtAoHyGBERVdIFciD1PyG1+b8RwO4+MWbFDQUuBiNi7Z3RZ
	jqVBI4be2aRNodrt+SXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0orE-004Wf9-2m;
	Sun, 21 May 2023 19:36:44 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0orA-004Wcr-3C
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:36:42 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2af2b74d258so21589271fa.3
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684697799; x=1687289799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EiroO27hS4AZF+snBjK2iCZGd/3jX9bw1tCwVqyDokg=;
        b=MYSK0F1An91HeWwlzUzrReL9xdStCHQ9UZ92xXj1srFDH9KnUnDPH87zTEkhXAPZ3M
         CEvfms3WCgO/Fe6fXJk6AWCT8Q38EIOlijS5r7VKB0EcTP0On59NGxOCOsYieVMCGhfW
         LTyyxxSB+mcjNsbJpMTnKdiHStfM3cbgzzaXWDDb0ZoxDhVARxVJuoP+WmnXDfyan1BL
         A+wthRBe55gc5/Mwfg/OBjGN/KBBLYsC89MK2Mx9W7pCHuUNAWAbdbIrJ22fqZ9R7Pyb
         3W+aftCy6HsNGOP2lh1hbNZqaR9Eqbk9GyMeN+K0yG4V9jFWC6rCrlttpfywmeA5+zuF
         53MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684697799; x=1687289799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EiroO27hS4AZF+snBjK2iCZGd/3jX9bw1tCwVqyDokg=;
        b=dIvsSkkuAQYuS5D44Ymy5W8z8O4mK75ML6214fANdLVuCY67ghuZzNenV0E0DAKr6o
         ZdPuQELULhE/gK366gmRswkSLnnx9lmeXN21SjTHpnLRbaSCwrWk5XsFYn63ykmeGAik
         dWqte1H1HYK8j/l84S8hVIenu3yNkFu4nrLuq/NhJ/hSrW0eDeclF9tI/dbKLVf3ptx7
         AOwRTvCq6T5gIQatlJZeGbQ+gdbjoudG4uFc8H56eGGk1prAtZ5ZcI/B9aDu+gnELlIs
         by+/Wih+wSiJ/OoTjvadiWj5CtZmyg5YXfxXtgnOlJZP6/I17ENDjWc1tz/8OGZ4cbaL
         avnA==
X-Gm-Message-State: AC+VfDwHs3JwJgBfEegDcHRo21SGj+iGkhSEU9On3vde8YVAw1CbrrEi
	OKzo3xOxcJBmFPYWpeGeKTZX9Q==
X-Google-Smtp-Source: ACHHUZ5yXUMlfGUwiVeR7W+1FZlgHbq9Jw6x3gUo+jQyw48gcl0t4R2mQWz4fhPLaVrJxR7pJKutXA==
X-Received: by 2002:a2e:7e02:0:b0:2af:a696:3691 with SMTP id z2-20020a2e7e02000000b002afa6963691mr750983ljc.40.1684697799658;
        Sun, 21 May 2023 12:36:39 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id q4-20020a2e8744000000b002adb98fdf81sm830009ljj.7.2023.05.21.12.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:36:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop legacy bindings
Date: Sun, 21 May 2023 22:36:34 +0300
Message-Id: <20230521193635.3078983-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
References: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_123641_030925_9FB7B929 
X-CRM114-Status: UNSURE (   6.39  )
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

The qcom,msm8996-qmp-usb3-phy.yaml defines bindings for several PHYs
which predate USB -> USB+DP migration. Now as sm8150 has been migrated,
drop the legacy bindings completely. No device trees use them anymore.
Newer USB+DP bindings should use combo bindings from the beginning.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 80 -------------------
 1 file changed, 80 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
index 4c96dab5b9e3..827109d37041 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -23,25 +23,16 @@ properties:
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-usb3-phy
       - qcom,msm8998-qmp-usb3-phy
-      - qcom,sc7180-qmp-usb3-phy
-      - qcom,sc8180x-qmp-usb3-phy
-      - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
-      - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-usb3-phy
       - qcom,sm8250-qmp-usb3-uni-phy
-      - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
-      - qcom,sm8450-qmp-usb3-phy
 
   reg:
-    minItems: 1
     items:
       - description: serdes
-      - description: DP_COM
 
   "#address-cells":
     enum: [ 1, 2 ]
@@ -126,28 +117,6 @@ required:
 additionalProperties: false
 
 allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sc7180-qmp-usb3-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 4
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-            - const: com_aux
-        resets:
-          maxItems: 1
-        reset-names:
-          items:
-            - const: phy
-
   - if:
       properties:
         compatible:
@@ -202,7 +171,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,sm8150-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
@@ -223,51 +191,6 @@ allOf:
             - const: phy
             - const: common
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sm8250-qmp-usb3-phy
-              - qcom,sm8350-qmp-usb3-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: aux
-            - const: ref_clk_src
-            - const: com_aux
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sdm845-qmp-usb3-phy
-              - qcom,sm8150-qmp-usb3-phy
-              - qcom,sm8350-qmp-usb3-phy
-              - qcom,sm8450-qmp-usb3-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX lane 1
-                - description: RX lane 1
-                - description: PCS
-                - description: TX lane 2
-                - description: RX lane 2
-                - description: PCS_MISC
-
   - if:
       properties:
         compatible:
@@ -293,12 +216,9 @@ allOf:
             enum:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
-              - qcom,sc7180-qmp-usb3-phy
-              - qcom,sc8180x-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy
               - qcom,sm8150-qmp-usb3-uni-phy
-              - qcom,sm8250-qmp-usb3-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

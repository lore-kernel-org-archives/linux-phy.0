Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C1E1C6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 21:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6VzDH7PDXevEDtnfyzYdqw4hi2t+Thi6o9TfuBn0/M=; b=r6yt69QigPQA28
	TxdZ9pI2nhtkVFzjhlXc5Z83dkNFCPKaum/bCMC+CONmz4zXSsoDWmYhOEAw5cCmwoDIxC3+TuVOe
	5xVzVGdzXsC2IHg/rYmbPu3sPL9Zk7vur/NQfPQk2KTV1I3QLf8vSR2gaRkxiwWeClcV6ednAhc83
	0J9I3SBU8PlIK2OH9XjLNmjANEDQAtznUJNhTuzXPMWsPJv3kUzZi3W3QV6kiv+LWqg04vVtdHmk5
	rD/NngcYihvDh3wP93q3rIFoXZ2nM5c/bE4xIj8nh0pkYWAYKqXHrZNO38n/Olw9BSSAihS1EKGpb
	U+zg2w5AeGyWLVGXDHxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOJ-005gmY-02;
	Fri, 24 Mar 2023 21:56:07 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOF-005giC-0z
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 21:56:04 +0000
Received: by mail-lf1-x12c.google.com with SMTP id i13so3939743lfe.9
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 14:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679694955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HNNyuZvJvYKBcqK0/OMiX1YPg0B5MbtC1DLyTXAc5E=;
        b=fFRJAs9EWXwN/qrRmNJmz/+erMATnV/P27agcQ1jrN4LzjyazyEOfHxJXW/tDstlC6
         8LFWg2unfe5z9vXki4qvMFyVEzoTIqljG3hC1IxAfpPynqgjmveSGbWhwwiDpGeKBRAC
         LRijO/XrAEOdUVR2CGaU5lHh0IDFfHC6r5sgMGwyupNHHKZltgBfJhIFs5gxfqU4es6N
         DZBjaiedfm4B/3wx25l1AYFBu9zAUyUJYLQOE672UXKiN6LU3e1belfVIhwD1fweF+Bo
         xz7CA3UAM8/b7KvNdW52LK98mnWRoXlv3qbJ5jdzqvUqHKPw+5DxC6DyRs+irCQGwf6R
         JwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679694955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9HNNyuZvJvYKBcqK0/OMiX1YPg0B5MbtC1DLyTXAc5E=;
        b=ZtEuA+XByC9ANHHVYsxdxK/2st+1xp516Dcukj+Gekrrs5XUfW+1VA0UKusm5oJLHS
         gXRegXhTG1tusZjrv7mLWM6E8wKCYOacjnn5wAp7CM6EY9VAR/YE4a2/dCrt/yUgvLmR
         5m+5neQHcZBQ+OBUhPns9pdqdB/T2BdRcbkgnFeFUR2GMSPX8lZrKeHJ1vrIHCd9kKbg
         rf34vWTt6+bQ3dGTMRtpXubuOWpOUEI2ceJebrrGWAinFy8vj8pG0saAzvUWNuk2Ld2j
         kC5AcwyL8vBF3pyrl988ZZy9JuhnrqW+9Be0KxOJxIAoLdQu2Ba7pnTkERC27EjkJqVA
         OqCg==
X-Gm-Message-State: AO0yUKXMbP5wYO78Ie6HJ+LYyV00ty3+9G8IAkGGoLG6Fiv+AT8NT6Af
	VRXcuAAFNV7ZPFM9f3c/DuJRMw==
X-Google-Smtp-Source: AK7set9xb4KyXpvMnmN8dL2Lhy7A90LsO+TVlgBZ0MH5VYUdS3f7PXM+yP/6NZxgkpNqDVzsPUTljQ==
X-Received: by 2002:a19:9157:0:b0:4ea:e695:d116 with SMTP id y23-20020a199157000000b004eae695d116mr2493073lfj.32.1679694955438;
        Fri, 24 Mar 2023 14:55:55 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm3488285lfe.239.2023.03.24.14.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop legacy bindings
Date: Sat, 25 Mar 2023 00:55:49 +0300
Message-Id: <20230324215550.1966809-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_145603_342201_EACC5242 
X-CRM114-Status: UNSURE (   6.80  )
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
index e81a38281f8c..5684eaf170e4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -24,26 +24,17 @@ properties:
       - qcom,msm8996-qmp-usb3-phy
       - qcom,msm8998-qmp-usb3-phy
       - qcom,qcm2290-qmp-usb3-phy
-      - qcom,sc7180-qmp-usb3-phy
-      - qcom,sc8180x-qmp-usb3-phy
-      - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-usb3-phy
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
@@ -128,28 +119,6 @@ required:
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
@@ -204,7 +173,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,sm8150-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
@@ -225,29 +193,6 @@ allOf:
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
   - if:
       properties:
         compatible:
@@ -271,28 +216,6 @@ allOf:
             - const: phy_phy
             - const: phy
 
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
@@ -319,13 +242,10 @@ allOf:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,qcm2290-qmp-usb3-phy
-              - qcom,sc7180-qmp-usb3-phy
-              - qcom,sc8180x-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy
               - qcom,sm6115-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
-              - qcom,sm8250-qmp-usb3-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F277C47DA2
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 14:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0AfG+Jkn4hb3utQusNwZ0QG4vKCnLGcKV1h3QwIKJ3I=; b=fQaxeS151MRIw3
	BdqNEgR44Pg1j3bWusWolyohlE/Ys/AQrmB6k2BUyBHWXywWp2up4605j3ktsWrWBRQpEv8eg8sh6
	kwrb1IEhxfl5+XZ17VFTCMO6zXSSTW5O+wMSmLZPyXRX+aTqU+FcQLeMmJN7Hi9GwA/LHBd983gKr
	nW5SxVsHOeq36V3Mp4nXjYn5Tq/TuxuZ6vWspRgDDmaEd7mChpJwiUjyx3iHSbjWGZusWprIbxzCa
	zEnxV4407o1DnvH1vxqd0do8KT33/y2SE48nYPI5gDQ1Z92OvQ1q0KN+9k6B0Q1RJvf+6ooiZtYUn
	MGMcEKjmEXV5+LEd4nBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Ww-00Gr8W-07;
	Wed, 17 Jan 2024 14:04:34 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wq-00Gqzk-0G
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 14:04:31 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50e5a9bcec9so13547388e87.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 06:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500265; x=1706105065; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KbLebAsEZ6c2w85zme28SKXGx9zXJ3HsoqbiMbqoTy8=;
        b=zkK+jF03Fhu8Pblk8A5fsvfNRSW46dyrK1e7vxtQVUZNABPb63rBwcK+P5NE2Tglsp
         701KnNPFoPojYBOHsrGjJ4JsX1u40c/IHgJTiaA2hnSmi3y7l+FsUBLwj/zHQhk54uQe
         HovjHFLUVHn01LE4jDiDgKmXW+c+NjaNPbIGKKK6hROlUq32LyU609PMHLmKi0qUux85
         83BMg9EXgjMHKQWUbdcogyTcmLLvYUuWTZkyo56KzNLQfpRJRtvNjf6rrS7afRD/mztL
         2saDr/9Y2bc4+MiCbrlPlVJwfveSbCSrvf9cQtWt37dpd/6xqlzWfhk0nOhF4hpb+the
         xC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500265; x=1706105065;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KbLebAsEZ6c2w85zme28SKXGx9zXJ3HsoqbiMbqoTy8=;
        b=whh5xLey5AMKUM5myxb0b9RgTUYTGwf36gI67e1PVTky2ZKZDajjDOqkGLYoZrdLpm
         oic6+ZZ3BqCRVSkSoX7pDqSsQpMRUOUbWjyf+sdBeiSkOYs8abt6fHA1q2v/N2dIOIdJ
         comMwczWvLkzlfMO7ggaLzdXc1jZDzhdRO/1zh4EpjjMvHX6POIQVCumJGhkF9b7+zf+
         52yXPSE6D+m2cNsOE2Q3NVlVjmDHGQ1t5brIH+cG61xLK54uiqGVJAm00vw/WdiTsoSw
         xyuINSUrHIjYTR8qfY+QvkS52WR6beRTe1ZU2XJ0WEG0YUg9Ninft2wPth2XHh7q/Zqh
         54gQ==
X-Gm-Message-State: AOJu0YzqFt8hPPDrfPDuJT4jBOLzOVgeOfc8OCfeZSEyPuAZY9xnUvsy
	0vplXjrXA4TwM5MrPYNBKmFCfSxlOSt6/g==
X-Google-Smtp-Source: AGHT+IEci5w4VaCrjhPVRmsfWaQ2FL4MPwZ1X2aiAPUFUfEDYDWcAf7EinIhfVzeZWQw4HBq9Bwbdw==
X-Received: by 2002:ac2:4896:0:b0:50e:aedd:ed76 with SMTP id x22-20020ac24896000000b0050eaedded76mr3980995lfc.131.1705500265272;
        Wed, 17 Jan 2024 06:04:25 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:24 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:22 +0200
Subject: [PATCH v2 1/6] dt-bindings: mfd: qcom,tcsr: Add compatibles for
 QCM2290 and SM6115
MIME-Version: 1.0
Message-Id: <20240117-usbc-phy-vls-clamp-v2-1-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1121;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=BNkRiqUWArTJ0KVqmkfyrxNRNLwMagIurNBQJ1C0EgM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nRkdSUFFPVRgTFObupXEVUkGLJJlBCCc+Y
 tA4+bRCycKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1XnzB/4sv93LwvfIhcO0GMpB1xK3Bj4hbNRik3mVZ2P2W9HQgPrO+EldFpGPvSnlD9GnXqk861r
 ciGeIO5h8aCdnKY6u2F7d+oBfPVeg4s2C/B+f1Ya2i0JLVz+pd81dyW/wRRdyAEcwNpDxxS514t
 nqz50x44sMVjk5ycRKMgUoq8mLmXAU8lIycGHSoKQr8tzL74bn2YX/fedihkVHBYIKIqduM09wN
 SLnf7Mp5HnQTIhah2Z9RyC+b+8AhleF7p3SVuNxybWM79FOaLsXXSi1vEMPaDMtYfgLI8UM2GXC
 EBIUOnCMeN4aBfmWOT9z5mb9DMLXVTgjUJc27Z196CCCq8fx
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_060428_133265_ECE7B84A 
X-CRM114-Status: UNSURE (   7.76  )
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

Add qcom,qcm2290-tcsr and qcom,sm6115-tcsr, compatibles for TCSR blocks
on the corresponding platforms.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
index 798705ab6a46..b97d77015335 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
@@ -19,6 +19,7 @@ properties:
       - enum:
           - qcom,msm8976-tcsr
           - qcom,msm8998-tcsr
+          - qcom,qcm2290-tcsr
           - qcom,qcs404-tcsr
           - qcom,sc7180-tcsr
           - qcom,sc7280-tcsr
@@ -28,6 +29,7 @@ properties:
           - qcom,sdx55-tcsr
           - qcom,sdx65-tcsr
           - qcom,sm4450-tcsr
+          - qcom,sm6115-tcsr
           - qcom,sm8150-tcsr
           - qcom,sm8250-tcsr
           - qcom,sm8350-tcsr

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

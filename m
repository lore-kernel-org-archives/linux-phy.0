Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FF0DC47422
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYvt+zyhm0b9pYZyqDfmA4opLdtFeEC1kYE5V4hHy+A=; b=RF3BIQpYIaqO5B
	ajQe4/PMNb8HZbqSV2SyELZJvXXPuYyffg2PSTUhKqy3nivIKn6P4XS+W+lAi4KMWGP1ixvpBVgxW
	g9W6CoE2AUxNWsrLvPTdRvUl1f5G24TZD8iU4TayXAM3XeZ5mln8HlRwoxiaf2ymae6kgoZwcr1fs
	EPyhfbPDaPZAnWiaPX9P7Xuk45apMkMUTxLQDp+6AYKMVeKoTsnvEH1Vx3TEyI7dnwvZPHNnKMtGO
	yFX31bmHyJKZjQyzsJQMKe+ujyHf4xeC/gNAOakPJehwuZ2w4vMbJGF4AzzhhzIfarrCT4o25kBrC
	TQBChgCPDya2kwX7xVTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwb-00Adax-2S;
	Tue, 16 Jan 2024 01:08:45 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwY-00AdX3-2B
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:08:43 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50e7b51b0ceso9363886e87.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367319; x=1705972119; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2GejD4zZZsGDMHwYRtgsSZy6lum8oExkOS46Y7L43Kw=;
        b=CymaHXqB20GEFWDa87YfkM2DywjKf7viPErbSSK6IOdr77/7Bkc0I0iHsqBSRJXctA
         o+QyguSLg1vubO5Kp5xJhq+trtqeEJrG4ryTEyd5lZk7/zf4vlc8uqZHawyD3aB/jnr4
         r+QdI1En/gn9FRvUVg+e0tKcciGMrvVaG2RWMrWdX9YJi2ujA+DiFPKxTq1P+0gShpCo
         i5c60NbDMLzQXYubsKE0Mr7lOD811ZNKW92lURSc5FUv/7Kv8gCdafgeWGgiBLRjw5fI
         vZ/Xu5+2Sz2ctcFBGtszUnhTo+gGpbJ/aKRgOzQJ4ZmI4Ja6CCCFb/dCDxdbGVMMHexY
         /Jpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367319; x=1705972119;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GejD4zZZsGDMHwYRtgsSZy6lum8oExkOS46Y7L43Kw=;
        b=P4/WNZrcAd67JRqhfl1BDYe7ruY2OV4AXmsRj1JvDgAktgNQRcPn15z5qaNsUyZ/RJ
         97+rLt7aC015UYt/OLssXGy7ybZNtoO6DYbH0bgT6P8GWrKdhAT3CQXfIfVVApvvAgT9
         4Q/Zkx7UvKvI9gyB5ichtMsTmY5qmumOddsGEHbBmnqKmAvgtEWrDcKgOLuh6OYLz01k
         5m4nG3mqpNQ3Gd98hE7WcnkUCYCV+xC/p2KuZRDJifJX26elXtPcTMnERdEQNf//S5gn
         l1Cw/5K/owVxGDhF8xn/JpXo3f6y2IKIzVFB6XhEr40n1u15IMpDsG18x5rKW7F1I1xa
         wkiQ==
X-Gm-Message-State: AOJu0YysX5Gs1fH9ebsnzTZgEYycS+828Q1AjujLYMLd+CRAT2UY8qpi
	RnYyvlRbUsQD1lDoT0ODF+Xe8H/2wl0O2A==
X-Google-Smtp-Source: AGHT+IF4uY2IXXqcFlQk0kE43Q3PU+KiNoFsBavpJ8CtG05uDWkQ8ylL0yG7cG2uDfhV/l7L8wGeRw==
X-Received: by 2002:a05:6512:39d3:b0:50e:70b9:8600 with SMTP id k19-20020a05651239d300b0050e70b98600mr4138890lfu.0.1705367318393;
        Mon, 15 Jan 2024 17:08:38 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b0050eb2325472sm1615507lfr.37.2024.01.15.17.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:08:38 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:08:27 +0200
Subject: [PATCH 1/6] dt-bindings: mfd: qcom,tcsr: Add compatibles for
 QCM2290 and SM6115
MIME-Version: 1.0
Message-Id: <20240116-usbc-phy-vls-clamp-v1-1-73b2da7691c5@linaro.org>
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1054;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Y+5fCr59sQqkRvEhrPMHqTIkuV7VTqZkyNtAF9yAvO0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdcTmV3QAehqNHLkPutAKWHGSN2ww4nuk/KvH
 8y0ySv2OpqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXEwAKCRCLPIo+Aiko
 1e94B/9wqdYVWm8HYtf/Ue6b5mdGcQIQWHHHZMY1fnsWqMaPORGTKLpgJGwJ/EtES8+Q+49LwfV
 Me31jibYz9GVkaujuwN4H4y3EnYd3CWlIj6U44rJ1oiGBSGrsfYaece9x3H2l6PP5pMxpsRbq3W
 zAQ/Zq6h1d/R7BqeTT2B2uhfueY5EHjYmKmayDNi/M295/3b3O/caKdO953L6tGjfcFGfng2cdY
 KT11GycxK9SeZURuTyJzZgZiAxLQPcNFH/+qchs8dIEbDsNtqJmZEjL52sRcxKnY8uoyE7EXxkr
 CkeEpR5hLY1OSqfPZwSzv2dTNq+X6/EfwWy7pnQOS/3pWOup
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_170842_713660_42215BC2 
X-CRM114-Status: UNSURE (   7.77  )
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

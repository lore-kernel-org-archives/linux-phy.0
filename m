Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85D75C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 13 Dec 2022 12:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GhzW3Vuqay12Jmyzq4jrfujvfxixnJ+B1p8xBW229I=; b=dKY/BGjL3l6wIH
	8/0YE5dg60dOU7iOu4/wlwJ2hJrPR0V4vlwTQEM6m9TEvMH5PX9n8TmSKTDDyjuVNZ+pRQHLVQh3N
	ygLBkNqzUvRRNHZV75zOmlvbj7rbbv9wFX+7Vwqdfvet9DVBwswNT5+sGjsx0VwQTM2gglD8sJdIu
	UO6WhG1kY+HckhGQPBkiloxo3TCSuX+Et8LELWsSb+vrOVL0yxzQI9oo88ENXPBn9DuP+JvIMpnSJ
	Qc/04mLlr+iMBucybGYex6EoxnrlLL1ZwGORIiRXNIkRkLrT3wuB7RPqyefu3uhjwJAlExWfzNcP1
	Qj7wwste7pKDeWgz2tfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54PJ-00H9U1-Rz; Tue, 13 Dec 2022 12:29:13 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54PH-00H9Pl-O4
	for linux-phy@lists.infradead.org; Tue, 13 Dec 2022 12:29:13 +0000
Received: by mail-pg1-x536.google.com with SMTP id r18so10291500pgr.12
        for <linux-phy@lists.infradead.org>; Tue, 13 Dec 2022 04:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LBSaUOf/FOXjpduzpGni2TWWI73cP1UCmnduItbfteY=;
        b=M6jdbx3UEtOLNv1TCQ8ZU7Ltuxquu9wznOHIL5W+g/fR6wb2li11OuoOKwHQUGb2R1
         0DnWBPtlmw4QR01QGd8ydt+yddvN4oeGU9oruEqujsjwlSWjjfz6WAEu79APGb7YLazD
         S6g7MfgB/rqC1QK1Mc18NqtrIFE2MdbJSXtzlLn53BtBAW1eUQNXavGo7hXk80evtram
         2krFJcndbreobqQCm/3hCztVTX/az8x2qPTtaxyDk6HdkRtGR8f8e/4l//4NZBZ2Zfwh
         eW1pXjmeXsJ8uDS86yBcuQXo08kHgdtIxPnto6s1z9re3Ekx1PBN7nZbSLDtjAO78Rpk
         H8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LBSaUOf/FOXjpduzpGni2TWWI73cP1UCmnduItbfteY=;
        b=nnPDK4NzaAPH4I1si84z/FC1De2UjphmSLWsJOV3p3eOeP/kZLjrI9PFKKelIRbdYr
         iRJeMGeOe2j822u5Gxn7Dp/zPv7JzVNihczV+jloOHa6HWE7cYgAKiE3KSbSdGaydv31
         q/39wiuIHKe3MEdDPZVxSsJw8QmVZpLsijGpXHbjDhobmT67gX8IMM3KiL7Vv0hmSCL3
         e2MRZ+ystvxMGi0YEYCp7fUk+8bmGiTokwKbKfu5YmoUnVY+5CCt3+uUtgudX4xWtJ5G
         20leGwYpJD8u2ZSqkOV2OXmNUm8GexiAe6aVdme4zGtJDfjOAxrnTWd4fwM/EmkE4dSl
         8Esw==
X-Gm-Message-State: ANoB5pl9QdO3ybo3VKP7A3aMO85gpIaPB9NTEdFIVANeJQw64Y8dvP6l
	HEt3lWCdo9kD9OIinycJmJX+zg==
X-Google-Smtp-Source: AA0mqf7BO1EVW5IGhG8M4Hn3DldsiAJ5jDyFLHGbHZKjQ+RphrRMyysb1i88RjapbbhyVL32nVyxrg==
X-Received: by 2002:a05:6a00:1c89:b0:576:e33e:cd63 with SMTP id y9-20020a056a001c8900b00576e33ecd63mr18521486pfw.30.1670934549180;
        Tue, 13 Dec 2022 04:29:09 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id y10-20020aa793ca000000b0057555d35f79sm7602468pff.101.2022.12.13.04.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:29:08 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: vkoul@kernel.org,
	linux-phy@lists.infradead.org
Cc: shawn.guo@linaro.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	agross@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	andersson@kernel.org,
	konrad.dybcio@somainline.org
Subject: [PATCH 1/3] dt-bindings: phy: qcom,qmp-usb: Add SM6115 / SM4250 USB3 PHY
Date: Tue, 13 Dec 2022 17:58:41 +0530
Message-Id: <20221213122843.454845-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
References: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_042911_806032_966C2CCD 
X-CRM114-Status: UNSURE (   7.22  )
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

Add dt-bindings for USB3 PHY found on Qualcomm SM6115 / SM4250 SoC.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml     | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
index 0c6b3ba7346b9..e81a38281f8c5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -30,6 +30,7 @@ properties:
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
+      - qcom,sm6115-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-phy
@@ -253,6 +254,7 @@ allOf:
           contains:
             enum:
               - qcom,qcm2290-qmp-usb3-phy
+              - qcom,sm6115-qmp-usb3-phy
     then:
       properties:
         clocks:
@@ -321,6 +323,7 @@ allOf:
               - qcom,sc8180x-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy
+              - qcom,sm6115-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-phy
     then:
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01662C77B6E
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 19:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWqDnPblIFnsQgvgF7i2ryhY/jnlDYSN2dyVXCdbyeY=; b=o0P7xpTxfJIrqU
	mKs3Q1e0yuSt/7JgqKl7MWX7jy4WDHe8eawibiVHgG4nd6Lb1fykj/0BYUAiKF66sSkoK1EpyrYrI
	4/I7rZBP9TxDPdpX3PuU7bzbnuLTMhXhohmvfNydV5F1QCyPh3ygW7rPrZAISyE7rnR8ncDZAhKye
	c14t9SIxqQwvIME1SYh2NM2kxGOAp+JgAsBuqUCF2TVkvrzgBSqiTdAFjv+icyWlKVFilpDeTC4yo
	2SIL9c+KtwJxLMnMXu5/lzlZklKWe8FwrYnLsc9EUqXnS0H/MhUAMJ2w+wMH/hbSn2s/ZfvtZOTFR
	e6zyo6JVvGf/GkLMShsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8fA-005UtN-2C;
	Wed, 05 Apr 2023 19:19:20 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk8f8-005Us8-0w
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 19:19:19 +0000
Received: by mail-pj1-x1034.google.com with SMTP id ml21so13059272pjb.4
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 12:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680722357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nt7M02oqu6KTx155BRHBlS3z+3ibHCaV+H3c4NDslQk=;
        b=svFkAQDPQ6lQfJOy3eX2VKdwwi9AG2pmGyTJt3q8YsxggmR0MxczaTHGDaotjex1ZO
         RbbVpQVur6VgIgNdFu3VJUYmc+HTnw1RydgsvixTJ93qXriZVDZiCgeqWl+6zxtYcNQ1
         AfiKpiiQmnAY5Ybr8Ay9efQIJus6Hvc/k2XdGj9AX96M1pLdGkkQXCavOu9+DSHgoDSk
         3e0l5f2gEDkd4y9vUi+9pzVa2/GkbFjAcxLO30sgfV9VCJ2j59VBt7wctYuEbQmrWtZ2
         suWIEjXI2ESpngeQEPxMaINxc3KjO8M4YOJIvKPxm45NNQCSU6SokjZPJULyOTyYyhEK
         bAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680722357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nt7M02oqu6KTx155BRHBlS3z+3ibHCaV+H3c4NDslQk=;
        b=lmZ80gwym9Irad9UbHywd9/c6Xbh2hHgr25WqRj00eUkq28wU46yUKODS0z9m3+nwy
         jxB1ErMpOOcu8qbejAehjRyd2mGXUrE5MRa2wT+etqD6cRq0tXUyldRnA+38Pw10oXIF
         b2AaBpjLH3R9sXjw042UFbLtHwkWLHZ5Y+5YF6AWDSK2LS7rZYL3Ftto5Wwo7+xQ+EDc
         vkr4RDkWUEVF/jhERO9PhK3MF/Uod4Xl0qp9iTB9uOPTQS4neCY1eh0bA0KeZQnzytlg
         xkHzXPegmytzLxEzJIokaruEOH6++rfSZLSd9jh10R6Fe3hvHdUHRsQhtI3V9MYYe6L9
         cUDw==
X-Gm-Message-State: AAQBX9d+QhYnCOplDOtcgGQXaJXjvKwsqE4aJYiCIZniMeVl7PswfBi+
	KYvvNKG+orr49/6kaZ+erwfjeQ==
X-Google-Smtp-Source: AKy350b5JJdiYtWrN/RCf8v35EVXFdkifQOPo8juFYtwRgi6PZ7VfAaOzPfZ1PQwnNrV2zwYHiig1A==
X-Received: by 2002:a17:902:e18c:b0:19d:297:f30b with SMTP id y12-20020a170902e18c00b0019d0297f30bmr6156444pla.19.1680722356788;
        Wed, 05 Apr 2023 12:19:16 -0700 (PDT)
Received: from localhost.localdomain ([223.233.67.41])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902aa8900b001a1d7329235sm10478097plr.234.2023.04.05.12.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 12:19:16 -0700 (PDT)
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
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v5 1/2] dt-bindings: phy: qcom,qmp-usb: Fix phy subnode for SM6115 & QCM2290 USB3 PHY
Date: Thu,  6 Apr 2023 00:46:32 +0530
Message-Id: <20230405191633.1864671-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230405191633.1864671-1-bhupesh.sharma@linaro.org>
References: <20230405191633.1864671-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_121918_334197_9DB105C1 
X-CRM114-Status: UNSURE (   9.60  )
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

The USB3 SS (QMP) PHY found on Qualcomm SM6115 & QCM2290 SoCs is
similar to sm8150 QMP PHY (which is named as 'usb_1_qmpphy' in
sm8150 dtsi file, see [1]) in the sense that the phy subnode supports
6 regs, namely TX lane 1, RX lane 1, PCS, TX lane 2, RX lane 2 and
PCS_MISC.

Update the dt-bindings document to reflect the same.

[1]. https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/qcom/sm8150.dtsi#n3394

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
index e81a38281f8c..1575dc70bcf2 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -276,7 +276,9 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qcm2290-qmp-usb3-phy
               - qcom,sdm845-qmp-usb3-phy
+              - qcom,sm6115-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-phy
               - qcom,sm8350-qmp-usb3-phy
               - qcom,sm8450-qmp-usb3-phy
@@ -318,12 +320,10 @@ allOf:
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
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

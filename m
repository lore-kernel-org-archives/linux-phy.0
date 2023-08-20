Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF28EE4993
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 15:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDk6lsSUBO5hr6e1JwZPocECytjsiMKWPCd/qM7Kl8I=; b=VqurhvDB0pokHB
	m6uoCdGE3CfLxXjyKcxGM/bTvhUv4wRsmwXDUwffi2rsm03J3dmaxIEOqMHf4nYvCuyE90FjFE1zK
	MehT0KL228jj3j1hKXeO3GA7NjLjSr8JHTItx5O0eb6nWOisw1P2GfkY4I7MkO6QT/XC3L3vugiOJ
	QXXsWCQeL4mrLQgi2SBpPO1cjgmXdKoSEYoVMCL5sZlLntP9Mma6G+/kRdytXLTpixpf6PaM+h/vM
	x34e232UCLOL+AdKaLPnF9f6gxwXCCA6HoM0XHaFMcA0fPGtzSLOKQ6EiPeu9S5/BZncDPnyli97I
	8xPqLBY0i0YvUttelMeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXkNW-00C6is-2B;
	Sun, 20 Aug 2023 15:30:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIL-00C1AM-0z
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4488m6ufnvtM6zRq68XhiwvCa3j4jdkHB6b+QarVIdU=; b=SZiMmychDPeYDthh3wI/V/YQjD
	dEBw312Z2h6ivy6j8k0GI8BZX/xKCgA1mF1DT1eIjg/eG7fOQHNnnJdozIaTh8qH1+ep5M72i6GOm
	lZVl1scup7QqPsM3blsiQJdnZmRXfURy7WUQHg7k7Ym6b8/0iF8NSjg01P9a1IaU1OEBWDYdzDG3f
	ZoFwCevszPIFn4kDjmbHpIhO6/Ywx8fWW5G7MVpykoS9PgL5o87iHfL/TP/aWSUAnALWv6YSmfPMC
	YhSDi6FtbbmGYwWa03VJFlkx+34l/tAIb/TEcW33tVnnPKl6bQBKtXoifL1w3uN1WazSsHi8Aesai
	jcrzsMng==;
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIH-000Xqa-12
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:43 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4ff93a7f230so2882040e87.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541239; x=1693146039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4488m6ufnvtM6zRq68XhiwvCa3j4jdkHB6b+QarVIdU=;
        b=py+8OFRfNn+Ad+h3h6owoGpJSDcn4RvSVa4NG0LkY8I5UY5/ZNz5ZT+AmuZrLsT2xq
         DJcuyqmIkMSaat8prbWCpTCVIezIcXPCD477tW8jO+ms0IaaNmjwSQfazMdY2R0uobY8
         gwOJ8HpbxHz6LnDDiHInxo2b34HqFdpuQT6b0jlyf4Nb+JHB5Y1HTkAFcSPxjKblHdp1
         ERPcu0VWOCbaLMMu9b+LtdcGb0N6JM8GPOmgwnutawFIdvYU+kN6dR+0r7pAl1rfP61Y
         qKHhza7XqpSO57PF0KuvdNTDOc06NIpMua8VxMOrGhkO0DhwmStB6BQvPaMC55cAArrK
         9JSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541239; x=1693146039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4488m6ufnvtM6zRq68XhiwvCa3j4jdkHB6b+QarVIdU=;
        b=AtUkkaWIGWngdl6ACDbKXxPOTs5jjaFMbC0BIADIowRZnv50vrbwmU3J+80MaRB9R1
         E+7GmxozMImmw9Uz6nY+0c4uAn5j8jJkJcaz9QBHLEhEQAdTMcJCTWwd4xDEiVYkHa5P
         ScFpFaKNEo2iXnWvLUqFNA9+Z7jySusm36SGYwJfCnF2oC5tnDVCFJPsSloMlnb6IAdz
         kBOuEwdJAHS7onnLhj/sHK/3u/0rDqAHmdvKM/8tNwqrd2qPSn5nWq4R80iCmJalwAux
         E83l+vfoJBwP4Lg2cLYRIbFhOPN1yg1GoZdZPg1ddLp3+h73rXTADN88r8iC1GE++fGS
         S3Ww==
X-Gm-Message-State: AOJu0YxCQCiSC1/KYGhEf9fgGkGMhkMH2rMJ0mB9Fj/l2zLWkqR7CkYw
	xhAINV3hV7iXIwi60UDUVLno+Q==
X-Google-Smtp-Source: AGHT+IEx6VzILDtjRdmPOG+verwboLyFzC4EI4/m0ODbpxUdRrKZKtHDg3l4yHhmoqB63xPrWHO0Yg==
X-Received: by 2002:a05:6512:3ba4:b0:4fd:f0b7:d1f8 with SMTP id g36-20020a0565123ba400b004fdf0b7d1f8mr1437444lfv.23.1692541239176;
        Sun, 20 Aug 2023 07:20:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 02/18] dt-bindings: phy: qcom,qmp-pcie: describe SM8150 PCIe PHYs
Date: Sun, 20 Aug 2023 17:20:19 +0300
Message-Id: <20230820142035.89903-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152041_480365_EAFA990E 
X-CRM114-Status: UNSURE (   7.66  )
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

Descrbie two PCIe PHYs found on the Qualcomm SM8150 platform, single
lane and two lanes Gen3 PHYs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 82e30e75a2ee..2c3d6553a7ba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -26,6 +26,8 @@ properties:
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx65-qmp-gen4x2-pcie-phy
+      - qcom,sm8150-qmp-gen3x1-pcie-phy
+      - qcom,sm8150-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-gen3x1-pcie-phy
       - qcom,sm8250-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-modem-pcie-phy
@@ -135,6 +137,8 @@ allOf:
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy
               - qcom,sdx55-qmp-pcie-phy
+              - qcom,sm8150-qmp-gen3x1-pcie-phy
+              - qcom,sm8150-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-gen3x1-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

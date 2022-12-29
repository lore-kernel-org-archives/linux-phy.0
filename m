Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23077C3DA79
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 12:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOEclATkhkcD99BidybM7lcc61QpL3K6WXBSNVjz+aM=; b=C0Bx1qt9BP81ud
	9k2TIJ0luWhBOS6FuRTcfdGKCs9yQwRWIxbGtZiEGSkrstjE4kt1H1RAGatVR4KM90COPajhLVeZ2
	m84akBS++YSVIDEiHtXp6Il2W4qzN4GD/mc3UHL8+fhoaklCDvZdCr4FDaEdH/vmAD2hestGY+Pr3
	4qsusoGA47wH9kkwYQd8pq/gVyxxTH6aB2PrScQeSjjDtJenATak15pVWQ11HWOVR+m9L/HY4EMkJ
	PYILYacSa9t9IRAl52pQPgpc1mKTKIlGNoZzEteBXCrRB42FRHVYWCP0+SLsqp4sFm8wH+hHBttOA
	/GxpQs6EM7OBbma5Z/rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAra4-00FMyJ-Ao; Thu, 29 Dec 2022 12:00:16 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArZR-00FMbA-Jl
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 11:59:39 +0000
Received: by mail-lf1-x12d.google.com with SMTP id f34so27191829lfv.10
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 03:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Xg7dGXofrzsw5igv77htQx0UkAkniEaw5zG0MsVPy8=;
        b=DyZDFT0YCwwmXR3gSaTKtmDmOpGfDdLZADx9qJN6ufDUW/d9wg/hv1PIQAGLgphG5S
         38rwTd5aZQJJQYlHklylpV6+MrdJ+9kedNYzCFiZijlvqFnaSHAb1ITJJUOpi8C15hRJ
         K4+1n5RkzQzh7l29G7UC9h+g+e8PiqchRXecoOuIINRrJUhhqGgNvWMJQSWF2BDRPiJj
         2zBXitp8js1YCkQ1BpsC5vPqu852hU1rbh7EJxXFGbsZmJqtr9KTt4aHUyrXls9GlO/d
         mdHhVO3pHayvoDRoDZ2hpztjmf7zOpxCRjIZRuLlXa/sgxigNz4QDYgJhH9Coh06ofTn
         +dkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Xg7dGXofrzsw5igv77htQx0UkAkniEaw5zG0MsVPy8=;
        b=xToMSRI6dGJJqFXWKdYTQZ7soutZ1w3Ppl4ywhpuZDkEtAvuuTwV/sBORuA3Ak+SHj
         uK3BMu8ePJZuXCrohoE+HBWfvqyN9Ptx+Lz1CnsTdHoRQAf753ryJGQwBrhl8Sk5h1Vu
         Q3GpzrxCufEQLwwoffIC3+H96zbwmk4Jbf7Sk4XQmrCGTmMafWKjQR/RdMSNFAl3iTrF
         H0vceeBHuWfiaERj35KY7tAym3VJtJNYNUdKdiE7etY+bV6dxUNV689Tr2bEHFGT7jx3
         3Jew4fJpQNl6TnNpazSqyJ4tKpvf1M/Q5Jyqpiss3lDRBisedyKIZo55L51uHVHOTOTf
         edIQ==
X-Gm-Message-State: AFqh2kpAOZIGDTaIGZKiRpqW9n3GT9bFB7RE1vzpFXXc48w1tor42GLj
	mmUfPWGKIyElt81EjASG4c4D1w==
X-Google-Smtp-Source: AMrXdXtk00yspwEYYPdNRmyAg/9yb0OXDcRpi7r6iKKgLFHlaK3NFMrBOxzDEeLwITXDad5UDEh+XQ==
X-Received: by 2002:a05:6512:2a89:b0:4b9:f5e5:8fbd with SMTP id dt9-20020a0565122a8900b004b9f5e58fbdmr7653957lfb.52.1672315175537;
        Thu, 29 Dec 2022 03:59:35 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n7-20020a05651203e700b0049464d89e40sm3006313lfq.72.2022.12.29.03.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 03:59:34 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/2] phy: qualcomm: pcie2: register as clock provider
Date: Thu, 29 Dec 2022 13:59:32 +0200
Message-Id: <20221229115932.3312318-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_035937_777416_C435173B 
X-CRM114-Status: GOOD (  10.34  )
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

Register pcie2 PHY as a clock provider to enable using it in the
DT-based clock lookup.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-pcie2.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-pcie2.c b/drivers/phy/qualcomm/phy-qcom-pcie2.c
index 5407e59bb185..11a2bb958681 100644
--- a/drivers/phy/qualcomm/phy-qcom-pcie2.c
+++ b/drivers/phy/qualcomm/phy-qcom-pcie2.c
@@ -243,7 +243,11 @@ static int phy_pipe_clksrc_register(struct qcom_phy *qphy)
 	fixed->fixed_rate = 250000000;
 	fixed->hw.init = &init;
 
-	return devm_clk_hw_register(qphy->dev, &fixed->hw);
+	ret = devm_clk_hw_register(qphy->dev, &fixed->hw);
+	if (ret < 0)
+		return ret;
+
+	return devm_of_clk_add_hw_provider(qphy->dev, of_clk_hw_simple_get, &fixed->hw);
 }
 
 static int qcom_pcie2_phy_probe(struct platform_device *pdev)
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

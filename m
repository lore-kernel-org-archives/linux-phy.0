Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE45FC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 03:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mgmO53rSkeNgWnKPu40jlS67oGhURcqXrMZP0sj+jc=; b=jnvh1Q1GVhfLPc
	5lIdSJbghM8if71t0iMSbuNMVkbGkfjHtnxyBIH5UuPcxy6GNK3OE7TWLJPrMPoZ2s8ZoHq9NUfoc
	lR1FCeNKIDqVbgG/3/828ZkOKgYs7pECHIlYpYXxDuDrRvwNIsBLHXX6o2m6+GaD19b6SaAUdmLVe
	dQBeuxisto0bb5LEZH1FVQJHQVzu+l4q1A04NSjnywZpOCFIkspEK2GZi21FC3oHEhBn+HvPGQyaj
	cLbLaMrUJk8KSmm2cG4bMZjWMC3N1AMqSLbQrfQQ0QhSXoyn9TRafYIeOSJccrRSf/c3C3adJQxzv
	hJS7Rv9VhK9P+JKbjq5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNRba-003AbL-7M; Fri, 25 Feb 2022 03:49:18 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNRbR-003AWA-A1
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 03:49:11 +0000
Received: by mail-oi1-x233.google.com with SMTP id i5so6109159oih.1
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 19:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UDK1kz5Fr0UKhxFUazSV4lfvWljmN762R0UmyDLBbzw=;
 b=DiAwxygHlg2cunADRHhaLRH/oj/hg887zxesH6wxMvEbnn2WM1kTGcjd3b76js74Ex
 NFv2iIrjxYfyS6GoFxahnN6CvoXjD8vdR+QAkzRsIWFdREtCZdykdi9UwLaZ6t+UFtxu
 DVQ+C6oZtLJwgY3/gToIATa2kHQ2I3OrhIF+6PBaj8Cr01A6UFq0oBhFvGkTivzrGgpR
 fYuoo7Zico/l+lnF7zjeWhV7Xu7rHTbhAPCFEaIQdIhKE0VbGflbF76+lBQPsfeeQD+4
 e+fYH7ETmElVqP7IlRdOkGQN2b7ymK5JQJ5XfikwHU0jwdW9/a0Z1UHD0n+5zF2hEZiZ
 PiOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UDK1kz5Fr0UKhxFUazSV4lfvWljmN762R0UmyDLBbzw=;
 b=xzrv5PEGQvaOMXftvb+iXmo/Ufyqylr28X5GOBOB12DiclxM+xoaflZGvN/xu7QEgv
 aVcARQcV4WUxArzQ1F/mwu72T4OXNCUBTisO8JDmt9NYRDmrvYb3lNl8pfc7xJpHw50F
 yTnnhysdrcO9kEwHZ+cZmlQP9skSsug2RSw+ZWL76w29Sha5XDwpYuQnrmJhRWcEHF1D
 IUAndKKi+D3qMBn+eWVU9J5kfrcth6z2ElemHp/8iitdf0MhLAcWmQpk8000jrUxa4Wz
 IsFAab/9LgCdBhj1wS8xECPwUqz+8JdP/LdUJgN/T8/PiB5QIFTaQRVxDTQCiDxEXOKU
 v79g==
X-Gm-Message-State: AOAM531vlb2dlSYsYfRcE3i+kz2CyNFbQo2lTj2ZZlrCdzutToBpGJ4b
 IiRyYR0hTQCyECuS3gLI2qxVCQ==
X-Google-Smtp-Source: ABdhPJxL6kvHspWE/hrl9ic6VRR2xRWso6pVw0L7xjQUzQBX5YVNv21tx0NumUdaPwA1VlEks9B5Hw==
X-Received: by 2002:a05:6808:1281:b0:2d4:6e64:1c6 with SMTP id
 a1-20020a056808128100b002d46e6401c6mr639967oiw.293.1645760948192; 
 Thu, 24 Feb 2022 19:49:08 -0800 (PST)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 a10-20020a056808120a00b002d404a71444sm664088oil.35.2022.02.24.19.49.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 19:49:07 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] phy: qcom-qmp: add sc8280xp UFS PHY
Date: Thu, 24 Feb 2022 19:51:05 -0800
Message-Id: <20220225035105.2294599-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
References: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_194909_389257_426DC8C9 
X-CRM114-Status: UNSURE (   9.95  )
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

Reuse the SM8350 UFS PHY initialization sequence to add support for the
same found in the Qualcomm SC8280XP platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- None

 drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 8ea87c69f463..b144ae1f729a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -5977,6 +5977,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sc8180x-qmp-ufs-phy",
 		.data = &sm8150_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sc8280xp-qmp-ufs-phy",
+		.data = &sm8350_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sc8180x-qmp-usb3-phy",
 		.data = &sm8150_usb3phy_cfg,
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

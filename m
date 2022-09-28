Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEFE7C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrq7RyfS05cbXqXR9NdXx07e0N2IAqGBu8CUcwejFow=; b=j9DjDv5iq2jx6D
	YOmA1UGkmQkDAkUFld9qY3ie6BOD7mdNFY7UemdVEuh/3ceb4/FU4kLAvv0UGKqp/lpWbJsMcWSxJ
	Huj5IGSg4T49V2c+XQIa8utHG5znwnNVoyUDEvk5Nd+t8zqoJaJF0TXmTZFH9gNtkqK2lc38u7mPg
	s6o74mEjsiCTiFgypjFoXQRDpExUVOwauqghbnHrJnw221+SkJEfotZRpMtV+SZmBtTVMnclrhPQC
	UOVBA9rDERSGr2zxme5fJWd9wCsDEK0epUcHcqJi+B5epZff0AJNhwVusTYJZt1oNZtbe/xYlXnPP
	Dm3xeXVrUR0dMMPWRIdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCA-000cFp-21; Wed, 28 Sep 2022 23:10:26 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC5-000cCG-F2
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:22 +0000
Received: by mail-lf1-x12c.google.com with SMTP id g1so4949418lfu.12
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=zMMGoH9a62qEXJH7nGUhfedtajCJtrxrT8pB32VPuOk=;
        b=NM9TMNrpl1TpmPbGEjhFpEBqy3VHdMiupl6msViH9Gq2twHm6I5Er1sQDWxqMbN6Bp
         LcKp95kudjWnqw66sZLb6m1JyPqTYIpsgdIz7nw+VBXyWZ7lm7ltzRYOzeRWwJBryumi
         ih1Dj3skEBBunDWvp8w6d0eH+pEkcpcNTp3z0LmA01+rV1DcTBZgElW/ENL991f4/Gl5
         2B2LpiFDfvAewGG+bD4Iq/hACqJ2qST/gnl2ET+ELFNHVSZZ0OdljWtE+lW8bwLXTo7i
         TO+oN40NC3StvYlZxOoZhp34OrVdEPMYjX+FqIF/vpvhfNBuel1xRJdgYYvxPz/x73hl
         Wheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=zMMGoH9a62qEXJH7nGUhfedtajCJtrxrT8pB32VPuOk=;
        b=TyhDY0XzDx8nYsNgUP7NF1d8mmn7kBgPyRhx6FfEeokVxom0Yx1sbRdfE8BtwlexTc
         IhU3/1FYKXu5qOGbeLIwCMwkGf94wKhXSQpEEruPyyZuHvHToqqSOC49qiQ2/qx2dQ46
         1EMab7+l9gYRunWwzSuTzV1Gj2k2275Kzkc9Y9jj+auJuYz1dnk8931/hakQ5Pue1bUa
         m8TWpv8yGaASpjng18zMO2McUf6DJggOlwU7ftQQi9zO/rWSwDqnL3JIDp+wz5i8fcvb
         96pTIIH7zBfGCzSTe5m2KrXgQvxg8F2rxoqPcQWHA7EcwucPjtAo4cRJimGCN/IZrTFA
         68zw==
X-Gm-Message-State: ACrzQf3nXAb5z1FtYO+lxhcBw70gZqVGWAu0umLbm+18X+t4Cj3FXbUw
	rsq7mL1qALVVnsS+3R9vvQjbrDEY901yTQ==
X-Google-Smtp-Source: AMsMyM7K9PDwBf5JZFMANt6kqnHCahYoAmbrRrYk2tMnL4Y1jJtyhlGgZvp5OtMVkYxS3bTwM4RrYQ==
X-Received: by 2002:a05:6512:3b0:b0:49f:d530:9f52 with SMTP id v16-20020a05651203b000b0049fd5309f52mr119774lfp.646.1664406616973;
        Wed, 28 Sep 2022 16:10:16 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 01/18] phy: qcom-qmp-pcie: drop unused common-block registers
Date: Thu, 29 Sep 2022 02:09:57 +0300
Message-Id: <20220928231014.455201-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161021_525963_BDC0E9F0 
X-CRM114-Status: UNSURE (   9.44  )
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

From: Johan Hovold <johan+linaro@kernel.org>

Drop the common-block register defines that are unused since the QMP
driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Dmitry Baryshkov<dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7aff3f9940a5..7710e4dee39c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -77,11 +77,6 @@ struct qmp_phy_init_tbl {
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
-	/* Common block control registers */
-	QPHY_COM_SW_RESET,
-	QPHY_COM_POWER_DOWN_CONTROL,
-	QPHY_COM_START_CONTROL,
-	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
@@ -99,10 +94,6 @@ static const unsigned int ipq_pciephy_gen3_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_COM_SW_RESET]		= 0x400,
-	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
-	[QPHY_COM_START_CONTROL]	= 0x408,
-	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

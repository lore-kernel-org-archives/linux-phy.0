Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E81DBC47DDF
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 23:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Maxu1OyXC2yOTZBKdMDhz8vR6Y0/7VzYIImVnjnRjy4=; b=MtVZf/LelypzRL
	+gWtRZ4yXOnAN8zg7zZViL7eTGfIdwuqUgHRfoNlIo7IYCS932HILuMLMBsJex8DeTqgjJS8vwnGH
	mvpAiri28jQ3hzydbUisyphTDr35Lj0uJKymVzUXwT9mbJ+C4fqUUct4PtYY6aRdyZBMtUdLHUWh7
	reDSHwgNJ/Qb7g8WJCvwK0s3YwMZpm47E0n/82VTxdIaVEGL7PAMMQyke0fuDVYIq9ILz/UuoXFVh
	jETvgj59yogl/XqFavtdmHPV2H0QNnXoyfb1MLnKVeW6U7dhVqogVTTKALjUvPBxss5Y5y2N4TiVm
	aX8zkXnEsoUZhjw7af5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93r-00000002RSU-22wl;
	Thu, 25 Jan 2024 23:23:07 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT93n-00000002ROb-0QmW
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 23:23:04 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-51005675963so9028e87.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Jan 2024 15:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706224981; x=1706829781; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wdc2xHZt2Xz4uzpCvpYR0URs1PZWGBE8ZjwolkRZWZ8=;
        b=RPSQstR5U9PM8RQmCUWbOdPliAA8OC/MO0NsoGwgLFEG3qm6dms+D+jPVK4cTcc97K
         qO8I18GYwLFGEqHbTQCcBqjy3AceM58nNJ2AgSBSk4CUUdqsBtW4l0Nci+bvPc+XGAIM
         B1yDddnUL+q9omcTxukxGBITdk/lQqa5yc0FbuQrzW8FqFAd6Ps/USz5l5XqBV/BWX9I
         c6XReM5f87VvLKXPYm30ob8oVl1OD0e+hVKcyL4PFc8UxAnzZPG3/YXsB+hNn64YhUM/
         LPiSKSU1qdG/p03L/TGWH1TlEXKbMUkQY7bPoYkbq0Wju7VJYYcx6cduZOHW8AettZbq
         42eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706224981; x=1706829781;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wdc2xHZt2Xz4uzpCvpYR0URs1PZWGBE8ZjwolkRZWZ8=;
        b=EHOExqNlX9z+uZOVEqabjvUuSrz5Xaz19RBUPXIKeR7/x38AAfK7Q2ZEqFChL4UK/o
         bd3rOgsTRHoLQ53RwSNhMPGnBOI2mEUSSzer3pH3PEZVnxV1PDd2iS8wk8w+/BlzzV1r
         PwcC9ZEQIHRpmNv7e8NMCl2xw8RdX1ISZuzoQdXCQ3DC9ADM4TWKblUDTpZvJZ1liZNx
         uQjTWYAGbW/XC+j/txy67BOyYUoZUbJ8IH2duxXxKghxHehFa9jl1d9toG3utvhFJ+Rr
         xUx9EiVQwBOfzqglMNXHFcD3owzTR+Qvb9MokBAsLsroGdBMiAlTGxDYO0vLEQtG8+8b
         QBPw==
X-Gm-Message-State: AOJu0YyiGOtIkBqdXMqHbGlos0ZEt6Cjjdpl3qBAqHbCq9MFZej5l/5E
	PConMRHkcCwTvXFOEHjITVHcbrUsFg9SiRlixsARUnIcuQRa73Ev5v39+uezOtE=
X-Google-Smtp-Source: AGHT+IHkbQVKPwVIcgIr43lbGB27+XfyECmMTgLwkgL5C53cu2kpPUUTpHTWaCCSzJKTYfn3iRAmnQ==
X-Received: by 2002:a05:6512:2207:b0:510:544:78f with SMTP id h7-20020a056512220700b005100544078fmr214125lfu.14.1706224981632;
        Thu, 25 Jan 2024 15:23:01 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k3-20020a05651210c300b0050e6df07728sm3920lfg.180.2024.01.25.15.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 15:23:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Jan 2024 01:22:40 +0200
Subject: [PATCH v2 6/8] phy: qcom: qmp-usbc: drop has_pwrdn_delay handling
MIME-Version: 1.0
Message-Id: <20240126-phy-qmp-merge-common-v2-6-a463d0b57836@linaro.org>
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1040;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=FRVvslUljyOQBLlaNGTAULZaLPWz/2M8wuWvzbq5CX0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlsu1QRqPS+qA22zL86pzpN1d0spnPOswdMPEIP
 R0a2xRUyT6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZbLtUAAKCRCLPIo+Aiko
 1YTkB/42sz6uBhO6BPVJ/6X4X2gXBdyN2xzgtruBGC9V7X6ZrpLK6jcdUkVcYT1eAG4iKohlrUn
 FU4RMVP+Hkf/gcWJ09hVb94xno/F834I2Co1oaap9PCXEx+OM9MVeS1EQDOGY9H6dPRqTlZsKew
 lmPwIV8PY+w4jpc/KjFOThBvn1AmmDFBWwsbqQCVupKonCHyS1Tcfpf/w8eD8XxRCxtqd4n9i0B
 bB/OgBWWR0CUKC6OM4okf38GBQM/I2/qIROrsY+83yNF52KOTMnibI4JdwMs8T7SmzJe2H4he7q
 YNbBZT/5Nrvk6+MAOyOpgbQMyl1q6E4+tBnsNY/bKwy6kxyF
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_152303_196131_D6164112 
X-CRM114-Status: UNSURE (   8.66  )
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

None of the PHYs supported by the USBC driver need power down delay.
Drop corresponding flag and code.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index d316a541f628..5cbc5fd529eb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -315,9 +315,6 @@ struct qmp_phy_cfg {
 
 	/* array of registers with different offsets */
 	const unsigned int *regs;
-
-	/* true, if PHY needs delay after POWER_DOWN */
-	bool has_pwrdn_delay;
 };
 
 struct qmp_usbc {
@@ -546,9 +543,6 @@ static int qmp_usbc_power_on(struct phy *phy)
 
 	qmp_configure(qmp->pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-	if (cfg->has_pwrdn_delay)
-		usleep_range(10, 20);
-
 	/* Pull PHY out of reset state */
 	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

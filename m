Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44764C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykuIxgi8As6VIbZvtEOfKnn7330czRN/JqC62w2URLM=; b=pVSnUdN9e5WZHC
	HTG+sYOFdpMsoW7ncXETFFWehfufMoJBKdxHTa83zbuNPyAN93WQRoVPtKjFDuibhbVOJwR0At6w+
	5TkIr8RnKV9vo7yBNNwsfsx/XY0jpy9WLC8HeZoD4CFZEioOZ78Uw2zR2+Ame8HfvsNy9Nq8819UQ
	n9W1o209m9OCD3LbALqqfB4tUpX9c1XcYmjXXFGCyTrYBel3HHBqY7m4Q2Ln9dCi1IeHuYdiu6N+5
	UUjNn7PHQZwbk6KNdhJiM5APn+/dk1hDORLgK55K7v2gAAHS31WN94rhHkostelWgTfLi92nAOqiM
	aXt5pDsqDM4ylUnxkseA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDHy-008mG0-CE; Thu, 10 Nov 2022 19:32:38 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8Z-008fcx-QA
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:22:58 +0000
Received: by mail-lf1-x132.google.com with SMTP id l12so5044370lfp.6
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vcPWjds6mbsRpPKp/5SVoMeEsYJwXwMrOPUv6AY8j7w=;
        b=hWPTENd16gDyfNtE90doqMgenYj/3vA75LrwWv/0LrS0uMCwx0ESxtzbalYTZ3oZKk
         4uHFI4UO/Fx/ITkGiNmkO1fDojYrFkkiTI5MvZG0Wtmf2QBq6ZCneh4hPsXLI//CmO1T
         18BpolUdU5railfc9gDEjT+wtFgoVpHs+jGFcAFHFow37KhuvQjpe89ZKnunzQhRxS43
         xLCEnmING5OjWg4nu007657rNEWMmR8NWzSVK4aA4VT44CQ3lA+RtnnqoarCwdOsosap
         Z/f6EfKeDLk+n3XYGtJ9XVjgA+LoWQuVHCWa2mxY7yPW7xYT2Ia3m2Iu1iQdo9Vnabkb
         mbGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vcPWjds6mbsRpPKp/5SVoMeEsYJwXwMrOPUv6AY8j7w=;
        b=eMc/Q8bAZUaGGn6XLJSkCOUk2sfSjWnr8AH+2q//Zxq8cvnku24m2xbafrhQ4sKDn2
         TQlFlgYBq8XYUC5XM/P/bZmAz4bwFpc96pRFcPjVcKqL/YS7Bm5QxGnHR/TIK/5/gdKM
         7qJRcgcet2eeLHkGyc0h+j0FXHR/1o06I5VyOMIvDSBUeCRS/X64YJPIgSh1Arx5W26X
         pk95Xg9cLaaCFptQQsS9nOJ8wUzXVFd/KIDk7ES7/7Og7YrvAsBsGFJkOQzlnfQHVuqg
         euZAtWazBi4SIf7BL3fFbBT4RCEWx+ar2XWeIBYoSVy59zzZiFJ53au8nOZvAcnLAgNB
         fmRA==
X-Gm-Message-State: ACrzQf3nYE0FzGAPhkDuKs16lWI2EILPVL8dQLA+VnOl5k1FSGVLSyk7
	4FfnWkZGB17P/+7EeBlVkY7kDg==
X-Google-Smtp-Source: AMsMyM58KmcjPSKgeRBdweaOO+IIBjMMbArHcJIRO29TPoIrgAyAd4GioIIozN1yA+R0n1AGUVr7aQ==
X-Received: by 2002:a19:f607:0:b0:4a2:4f6d:7963 with SMTP id x7-20020a19f607000000b004a24f6d7963mr1956428lfe.638.1668108172881;
        Thu, 10 Nov 2022 11:22:52 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:52 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 05/13] phy: qcom-qmp-pcie-msm8996: rework regs layout arrays
Date: Thu, 10 Nov 2022 22:22:40 +0300
Message-Id: <20221110192248.873973-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112255_927370_D0E58D01 
X-CRM114-Status: GOOD (  10.45  )
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

Use symbolic names for the values inside reg layout arrays. New register
names are added following the PCS register layout that is used by the
particular PHY.

Note: ipq8074 tables appear to use a mixture of v2 and v3 registers.
This might need additional fixes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index ff198d846fd2..b120a7e2e1ec 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -86,9 +86,9 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_SW_RESET]			= QPHY_V2_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V2_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V2_PCS_PCI_PCS_STATUS,
 };
 
 static const struct qmp_phy_init_tbl msm8996_pcie_serdes_tbl[] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

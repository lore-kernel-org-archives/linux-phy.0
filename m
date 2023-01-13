Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B7A7C3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 21:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=69/AdHe1ke/XBB7NUQ/keqPU8/QwUEdY8GO0+M3tzi0=; b=rcgGS3ryISX7BX
	PAzC54BcoJ9i2xaeJj2g/vVR4fEihcSMNrQ3t45Ax9yIN7AlRcDTgc9U4JfMG411PDPvqo+4xKyCv
	em0EKw1C8PTrGc1FXoFrHPJXeDTL0gbO8yxFRepj8Sr7SGjl9zwuuVc3P+of+Y3Ps1elCIsodRDFO
	9l29E64v9/pOEMhx4wf8uNVo7Kr7icssbz8hVi1L5Jc/efW5OHFylVlfnjBKej4fswZ6GJBQjZbw0
	LucfPkDDOfaaWSA4dqp7Hp4yfigZMuFSuMafHo6Mv5+o70VtenSnYgmzykkLL7cSvMF8GsMwSVrJx
	RqX7E30yPCWOeKBe9RGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGRU9-004Zda-4G; Fri, 13 Jan 2023 21:21:13 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGRU1-004ZYK-FE
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 21:21:10 +0000
Received: by mail-lf1-x12d.google.com with SMTP id bu8so34808594lfb.4
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 13:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tTQShJXOSeSWVAzHkEXUIIDyr/KPTLwtNcNNqe4LAsA=;
        b=myjxbRmS1er0kDxiwYviTZnZGssUomNTifZxwW+sOutYQsz9WyTTPFeIZv738IWb3g
         jtByFcnXEF3frxswGxVRFhlkqcznxpJ91plj4yHXRQ4ZLsIIxLCetrqT1Tm0F6UCljKU
         MgKpUgWUwJs4Iysf3BaEXTClHhdSBxE1gwC3T/0yrH96T85g1G7m2T8lJiinToKZG9zg
         h/fTkPsu/7BXgdDAI/7dkjq/gN2plYN0ayAxvHKX3l6jvqXIazP4v1YpKpY8VVr/sv6L
         MOp9R2rex9KVFfU89bLPeUd5RSutuPQ3B4ZtIJyYeT976h7aB9MG/WGg2+DjQxmyAVCe
         oq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tTQShJXOSeSWVAzHkEXUIIDyr/KPTLwtNcNNqe4LAsA=;
        b=HQGlVWo3uEkRPxP0BfYJPFpD14oyennX9ctp55CGSkqcu+wMzariEtgQi1pPB05JPe
         R49XIjaB16Wk5SfbLMkZJAW1FOSWawitdJtb7qLXA8+mTfSBwYbWgyJmb7i+YC4enr+r
         DnuAbsNmus89sdeg9u0pghsuaSQy6RfJvIjkn4uVMIThIE6ycEkGUAFVDDdyVz7TaYgh
         ZSzcwru+uM3iVcr/LQZp9WWkY1y1l4eGWmXVgrvXAJeyKo1m0LM3yPsGZ/zYZIjtQ4xR
         yGbsFhHo401UWT5N9474oBl5RyeYztwUIgNm7as1wqQSYT+dO/VE73cvGzRop3FpoqTA
         fVQA==
X-Gm-Message-State: AFqh2krRzQtgc3S+laeilssGBLFVLk2cOLZKZt7/t5Yzb3OORIlxI4eL
	UCADgxDwKtwItc9BPXNWbaQH3Q==
X-Google-Smtp-Source: AMrXdXuoTqOsnf22kuXjsZrWlNrjinyvm7Q8uvjT9bfULjz2v2DgkY13vt1SJ7xm+YeZdMSLF8mbuQ==
X-Received: by 2002:a05:6512:2302:b0:4a4:68b8:f4f1 with SMTP id o2-20020a056512230200b004a468b8f4f1mr28746817lfu.55.1673644863739;
        Fri, 13 Jan 2023 13:21:03 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t24-20020ac25498000000b004d39af98b04sm80602lfk.19.2023.01.13.13.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 13:21:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 1/2] phy: qcom-qmp-combo: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
Date: Fri, 13 Jan 2023 23:21:01 +0200
Message-Id: <20230113212102.421491-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_132105_551045_2812F7E8 
X-CRM114-Status: UNSURE (   7.95  )
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

The QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register is not used, remove it from
register layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 521ea3ce6b83..ee35bcd2bdb5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -59,9 +59,6 @@
 /* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
 #define IRQ_CLEAR				BIT(0)
 
-/* QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register bits */
-#define RCVR_DETECT				BIT(0)
-
 /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
 #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
 
@@ -99,7 +96,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_STATUS,
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
@@ -112,7 +108,6 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x170,
 };
 
 static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

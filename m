Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF169C3DA78
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsnxnJcV3SaCRnmfuDgrdks17+VCWfRAhoDmqmFkBTk=; b=xh2AHI7kevrw4q
	r0i34UBXuKSUolHJkgEh5CZznTBksw9If7weRLXL8NRjEmgPcntah/F8YMvROoxdg/E+/qZKVKsEn
	ejlm1IkAMdZlvkFimvXyECw6IupyLbWRWTh2/3s2uk6CqSP8/liOVY3tRjBiJSw0eND8DWamD7EXN
	Kud7VD6jLZhW31AZyevrb8B+E0AzBIxCa9J2FeJBLgh+l2STxlvZcS8kdO85Egvt3AmveS1kx5mT0
	DBtoAlXufjfJbMdS3j6sk6XMZo/Ih1yCytWxXq8zXWV+/zVnXJ1j4wm/HurcD3tLJQdD40TfZYhDV
	YfW6oKeBgwO1H9T87fIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagy-005OGQ-Bh; Sat, 14 Jan 2023 07:11:04 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagv-005O8x-Nm
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:11:02 +0000
Received: by mail-pj1-x102e.google.com with SMTP id v23so24492217pju.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4PwdjXA5SmlO8nYbrDvRgCYSmaJnFGUQlCDqC6dIODM=;
        b=U0mpAizT5O6VluAg7cfuMxsdtV7F6Sbr6BVaoGSaA0lTUUrRh47eyP3zOR5fr3c+mm
         zW4nIZfztgutfOWLgjmRRd6+vq2b0yt7ryGui1McJEdx7R2wmbtwNUMgL9pSYndlvP6w
         GRCflJvRrE1CJ6PRdiHYlHaLHfEN2oCaW6H9pa6eekOLMu+by3bUMOoVC1D0obAy4ZYV
         24cpNBRGlFTG/4E1w/pvcr98udx88FWfm9ZlznhsL7vFMEhzKiicxGfwzxz3tc/cXC67
         JD9XIdJCyYW0T0UcpoYCrP4IuHwGARE1+n0WrjEk8BZxbS//TG55fBlmV88vkEd0P5+N
         A0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4PwdjXA5SmlO8nYbrDvRgCYSmaJnFGUQlCDqC6dIODM=;
        b=qMvD8OejZ7u7YtNQuahIl/JUsYAQRRlu2pvD2VHSbFkt2zFfgidcyBJXYGkPiXAMI2
         MfsfHtB6Dl7sFYIEPqKSnR81BvI2R2BJWghAnSN20O8w13SEIYA0RyEmPxrgad2Axa3J
         2yPCv7DgORCYw9QEDNFwK+AOoKK2MWMy8vkQT3apGi/r83HtnsZCQmdPeE8bHENWsqRx
         QrP+BO/U39WVpOupum7w2km5cRgPLbU8hUqOS9gH/geq/t9SaYpY46xc3y0x2pYcn4kM
         SpwudPK14fZ9zmbBB+Vrn551SDxv5XfWgvFIBHj8GI1w2R1lDCzHne3jL3W8IG8AX5oG
         +P7w==
X-Gm-Message-State: AFqh2kpG6Z0Qkp4TxoTXzbvAxiA0E7gTWvNJo+BdVOokXl7btP0yU1mJ
	CQe04jE+XmTkMqPKQpuYGJuD
X-Google-Smtp-Source: AMrXdXvl2hpvC3tR63eDAw+p8gHxgqEOR5I6HiLJpseb35C+a/q5zx4NosHnS75WoQjhn3noR4sxsw==
X-Received: by 2002:a17:902:8686:b0:194:3fd8:f56a with SMTP id g6-20020a170902868600b001943fd8f56amr15571964plo.55.1673680261313;
        Fri, 13 Jan 2023 23:11:01 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902e30a00b00192a04bc620sm15225358plc.295.2023.01.13.23.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:11:00 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: andersson@kernel.org,
	quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 11/12] phy: qcom-qmp-ufs: Add HS G4 mode support to SM8450 SoC
Date: Sat, 14 Jan 2023 12:40:08 +0530
Message-Id: <20230114071009.88102-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
References: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231101_794511_E885ADED 
X-CRM114-Status: UNSURE (   8.87  )
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

UFS PHY in SM8450 SoC is capable of operating at HS G4 mode and the init
sequence is compatible with SM8350. Hence, add the tbls_hs_g4 instance
reusing the G4 init sequence of SM8350.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index b784eed2eb1f..5cdac38c5fdc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -942,6 +942,14 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 		.serdes		= sm8350_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
 	},
+	.tbls_hs_g4 = {
+		.tx		= sm8350_ufsphy_g4_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_tx),
+		.rx		= sm8350_ufsphy_g4_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_rx),
+		.pcs		= sm8350_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
+	},
 	.clk_list		= sm8450_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

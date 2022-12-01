Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94611C43217
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s03wewxZGmIUxRJUnZA4Br16VzCfZSsLkZgtGrqTwko=; b=F1XE7JYAqPu9WE
	PCfGdBmWx+5N/F4gCGU8VK48Bjven8+ffSLlPyqD7o5cBFtmUZ0Mgu8hO5ekzcYrDM6S69Lt/fovM
	l75Rych9faP3YXxBFGJbhO7GZ7lk1kWasLbxReTKaiL1YA5ke3SXaTSl3ZroAvOTXWV28v9iKkqVv
	VI3WL+YRioiptQMofZwrQ5DdqwGQaENNmo9WnPZJxKcvKsr96RC63FxEeeRlBGjIsBX5JhTGPuQre
	T1R8LmouFYCWJCMCu0SwRk0Nr/q2y4pfcqE1Cu7r9s0qXNuMvrTH4qoKElxUwgkfjtm52SCzx48x2
	UIh+PqLs2wxj5O2tmjzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ncd-0099gV-Te; Thu, 01 Dec 2022 17:45:19 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0ncL-0099S9-AZ
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:45:02 +0000
Received: by mail-pf1-x430.google.com with SMTP id w2so1019913pfq.12
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uHyB7436weYMuPIAQRzFHHIdfwli/IaDh2memTnfiz4=;
        b=HwHJwJOkwvSEBUNX+i+oZEnpWllIswdC70KvR+kb0qoQXwyW7rXmt9ffX/6u2JdVIu
         oSzW/56vt5Tl7xWubzhe5dxi/84xaOBStPC3lv/k39zV3eekwlbqyC+dEBNNYfmTZfAJ
         X61OSRbasOgl6D1799NcneY8nu6gC952PM9kUZaumvHBxBfPfGkZq5XbetEBplXlnVGp
         hoDLJVJFZuFUYVj3+C2Jsd0y4EbnJofFBeknYgcBgHFyA7R2S2kLHiy7EY9sKGBDpSUQ
         LigNfvAbSg4RyyZiVHTbKKy3SwNmfgC8BiyqqE+mKyw4tac1l3wjFLw01kaycvmK+ojQ
         bq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHyB7436weYMuPIAQRzFHHIdfwli/IaDh2memTnfiz4=;
        b=Sl59gFQtjo/qq3sIDaTroeVjAWcZG3rXezqKfAk4IW8jZz4aePOlgxu5wqwecVZ6df
         OjpKR3Kr4eCNS2fSSnHI1bAOH66jXY7HSHpzQdZBZoLhyxtIfcnCQTtXXWfTjWp/HLwF
         Gm5I0jiAEUvZB6fU3WH0sGBLJi1kM3i3V+CXupGU5SQmDTQvkJBzxbQw6RrxUK05X20w
         IWwJ5Ce65P6rVTLnaCFkMdTJJV8qrpPTUvfHqymDKTXyjx+nHQichryeEYXMGlDgZhKH
         K1mMoFb/YC2kymW3lf1JJfOTaOrf8tHQfQZkEOcW0jZqEV8tZ/gRfdn+jBFe7YbODsmX
         h1Xg==
X-Gm-Message-State: ANoB5pnPB4kpPZplrOfcUVfqey7m8EdO35XsIjD3lkfua8HFUfSEn1kx
	O5tq+oNwjKagNdLitfaEzaiu
X-Google-Smtp-Source: AA0mqf7pE3rCyuCdvjQkNP/HRiYfLrj8jcDj6Hur/yJdWj3IQEMvPUxutM5ggF5nePqmhnq/mu1Zhw==
X-Received: by 2002:a63:2251:0:b0:477:9bc8:dffb with SMTP id t17-20020a632251000000b004779bc8dffbmr41247741pgm.306.1669916697598;
        Thu, 01 Dec 2022 09:44:57 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:44:56 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 11/23] phy: qcom-qmp-ufs: Add HS G4 mode support to SM8450 SoC
Date: Thu,  1 Dec 2022 23:13:16 +0530
Message-Id: <20221201174328.870152-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094501_392881_1337FE4A 
X-CRM114-Status: UNSURE (   9.25  )
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

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 75e55c4181c9..96e03d4249da 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -935,6 +935,14 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
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

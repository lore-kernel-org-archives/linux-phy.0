Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F36C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVdAjHnZBiSctnDoX/SKzxZaYTThvnnxvxDAiSYrgLo=; b=Fmr0bkxwEUuQTX
	KdepSJyl2OZ+5AW4B+gZkxdEoDROFsCc9TfdG5inpLiGe/cTcGHJF9c1b/xRG1YAwKILEh5LjDu5/
	nq7zcFHPeWBNxqIaHuXJvfIfbI4oJMf40hOP41Pe8gwyZ8ue0IClhtfrPOntphjKC+D0SXOLjSqvC
	61Q6My5JeLe3yCUyJKg0TQIyTFpbWaoqOVoVWoKIxFlT75GyZh0CDdnXOyrpuKXdvxb8nj0gDrqZN
	2z82bOsPj2iC+Cqmg54pwQXlrwpzRj6lV2Lh59YYZ/vXBsWh5H+amK2Eh35741miVdJ/wUnmXrsBZ
	PGt368dJFvQWvmeLH1EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYT-00CxcN-8c; Thu, 22 Dec 2022 14:28:17 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIN-00CoUC-Il
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:11:41 +0000
Received: by mail-pj1-x1036.google.com with SMTP id v13-20020a17090a6b0d00b00219c3be9830so1966966pjj.4
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9LXdGVP9dxpaOugOFMrnDCyUZiHcY/u5VEvcCrjnpKE=;
        b=sEAZuCy9o1mSeZ+mOAF+2MpfasokgDnmXc8LSn05lHnTxhCmTkhTVkPygFTTLKDhiZ
         nixCIHoQz4+ceVMPOV8l6CPCGmNL/nQjE9wXY0f8N/Q+1xbJBuaj9EvBybl6jYyWiAan
         5fTz+ssWMIA3tVSpty3OIwg8gkvJeC8aonGebs/3otg1iGl50Ji8OhiTV8RXiKqD/feM
         ywqCABVk3r5mwBOVSldMLZp+krnjPcA50oIL3rr6aAMp9BZ2KcgPsj1oWVAj/bUP4RYZ
         FXX/RgA1P5h3cIVDjosBxIxNQqMJnztYhdcW/7dU/63ub1u9hqkA8c4B6Wq7g6lN2lvd
         lLIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9LXdGVP9dxpaOugOFMrnDCyUZiHcY/u5VEvcCrjnpKE=;
        b=ea6+jAATLqtFQ5nYOzWhOztVE61Xbry0e6tIU37nVz9upipnTkIgKwUFrcn029aXbK
         Hf1oK437Rq/FKFIJmBezxi8BLvqErzhwjKKKSqFTa2vNC6L9on/xIkRSSatzsI9UzT2Q
         DsEgV/iAtqzhS3YmZaF/Xf0tcU/gNcr6DM8G5FraLIVqkpEr6N6izZkLKelPK7I+bzpw
         WYgZMEoJ/AxycLQs3nW/VwyZ5bb5QfHQ/mQZsqkLcePf5Ygxr+BEl5k7AJTHN/N7mnfp
         DH9KhN3hknBRwskiHx3B1Izi1gS2vZqUZQuM5fk4AHSVPHABQKdonYNXghxCzI5/+2Di
         2enw==
X-Gm-Message-State: AFqh2kr2MoCeKAITB1UlAmKbwO+WToccVc8Fgm2hzPB1LWzAgGrnrqKw
	fbSfft9cWwaQN7891bbhQbaT
X-Google-Smtp-Source: AMrXdXs6kCUEn/CZL/Ia+qJ9szz8RsqG0cT+AqgbrzlUI0r6MdzQNrClwbaz2RWxvRBh3//sVlCyrQ==
X-Received: by 2002:a17:902:ef89:b0:189:bcf7:1ec0 with SMTP id iz9-20020a170902ef8900b00189bcf71ec0mr6659380plb.30.1671718298860;
        Thu, 22 Dec 2022 06:11:38 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:11:38 -0800 (PST)
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
Subject: [PATCH v5 12/23] phy: qcom-qmp-ufs: Add HS G4 mode support to SC8280XP SoC
Date: Thu, 22 Dec 2022 19:39:50 +0530
Message-Id: <20221222141001.54849-13-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061139_702451_A7284422 
X-CRM114-Status: UNSURE (   9.05  )
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

UFS PHY in SC8280XP SoC is capable of operating at HS G4 mode and the init
sequence is compatible with SM8350. Hence, add the tbls_hs_g4 instance
reusing the G4 init sequence of SM8350.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 96e03d4249da..9f5526758985 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -763,6 +763,14 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
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
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

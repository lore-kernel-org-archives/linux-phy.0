Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF390C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EJsiFdEgAYJYfoM9S/ESHaw7FzaBkIdgY/ss0Yh9cc=; b=FMmNiQljT4qLDK
	vt3U+nJpQfFWXtguf+zwNkN0/bIHxKjP9yCDi7KQiG68Fo4PbOEEdiQisXPrmz7hIeXD/iv9zHPB/
	dyoXrbwEeXaGgdECOvz86Zx70sQvFwp/pjvpj5bR6/rauQKlBsxEzmOgOL348SSUwfngWevjSUYnn
	OOLuJRWBJzF62FQy3Zpzm/qtML8Pf3X6VUJDMqSa7iLJ8VPqs/rThQ/dYktSGtIb33RmKfy38cPGl
	mbbCi8/tRHlpDt3S2cBNIAuRyasxeQ6h7qFGZt/tCgCG9JPMDiRJNueeFgrSLLWMkw6IzL0YDffnN
	fmNhDpLFk8tZLsOI6RFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYS-00Cxbi-76; Thu, 22 Dec 2022 14:28:16 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MII-00CoP9-BP
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:11:36 +0000
Received: by mail-pj1-x1032.google.com with SMTP id u5so2005710pjy.5
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4X1A4TMvEV2bS5ohL9A0SpECVAvBKwWjyx8LJOjuk7U=;
        b=BxWVBMysDolWbx+Cppe3zn3m/KFARMGNqquNzCFgm75WofleLqYgk94x2rBFTc9Tvl
         MZBxo2wNJc4SWqNe81JTB57k0Z9JvK4i7vYyp8pREFAEhZvECn0YN+yQpOEEQoAdW96g
         Ncxo0MsLT3eNWetF7L6BRXvxqUXOLujvVgRPGzz+TfrkDHDGn6HL+Ao4kbaTlgGUaK6I
         8s7CDXnQPue+wbvAJXkvx3PqI8LwdJGqisMXJTTxK2jM1BQq3MM2uv7nVXM2+FVDYmWb
         ELL6DrURh9fTN/RBhRYcl7VaLD2A3s5w4uUj9klBISsKgTNuMTAhE7ydRglDOnG30Hx8
         sX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4X1A4TMvEV2bS5ohL9A0SpECVAvBKwWjyx8LJOjuk7U=;
        b=Msg6mY1Sb6y2v9PFekqwUlw5yyhSaFeqHeG7/OOFtFVR/7A2BFXDV2kWaEHBnhW+p/
         mfC2pFTx18tKAPUsoDWQUqBgpmafTIo3jAqZEsHcUuJjbxAtbKfiJPoNzJstrzRUCqdC
         iKgqUMlN85vC1vqzA/vE/onEfNu4i9j66Oibdjp7DTxZJvTmuNCNxEGaFTY0ZfdEEGc9
         LXOQ6MyWfsGD2hJCb8S1JVPGHzV3vuZjbUucNWFwb0G52bEZ/Q8vMBWjSpb+PvB/PGRc
         68beiGq2gwJgDARdzgLyLWI9QfoCnkcEsHhtOEDNpUcfb3jhFM/72XVsbFwCAZbHRhCp
         2xhA==
X-Gm-Message-State: AFqh2kqc/PKbikJlGWgMDurY/nrwL5jNwb7uCdZ+uHaHupdsSorv0qav
	ZWs0nSXERRX/soV3sUq7amlM
X-Google-Smtp-Source: AMrXdXuZk/NEnRPNupNCna4VffVs4EjjF+9WNS/4kFEQ/Zy/NZFN/ZFkZIxohRNAc1flJSboQdPzHg==
X-Received: by 2002:a05:6a20:d80a:b0:ad:f82d:78ad with SMTP id iv10-20020a056a20d80a00b000adf82d78admr7597717pzb.46.1671718291165;
        Thu, 22 Dec 2022 06:11:31 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:11:30 -0800 (PST)
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
Subject: [PATCH v5 11/23] phy: qcom-qmp-ufs: Add HS G4 mode support to SM8450 SoC
Date: Thu, 22 Dec 2022 19:39:49 +0530
Message-Id: <20221222141001.54849-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061134_548065_F03CA2AB 
X-CRM114-Status: UNSURE (   9.23  )
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

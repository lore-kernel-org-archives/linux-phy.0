Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C80A5C77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 05:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wv0yHXf3g946iC3hhfwaOgHGui4+IW7DrauHDwa3vWg=; b=rf9nzX4S7Jp8Fo
	irXMb056kmsv0acjsrr6Ju7AcBJlB+BrCKxSlVbVtqA3o840Or4IwRh2vYBb/NEpPH2q+TLVra6zA
	52Or4ELkhZyOvalmeyhq8IWdjCCYHFwdW4pvG/a6BkuGtx6Bb10XJNCPfPqSI1h8cvmTVmjs4W59v
	qc371GpuPyUn3xqSQDHIKRwq/4HJ/JFPh06zee1v9kI+l9vuXbCqP+ucaiYBWarRr3FjF9uxUnRyD
	dJApRZWDAFIEwVzsuQfy3s3er+9xEV44WlXgkcnIc/3Mfc3e2Siad/GMtZSAjvFGTpkIyI59VeIFp
	pk0zH+EyuxnyZpH5WwZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptigG-000DGX-1U;
	Tue, 02 May 2023 05:36:04 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptigD-000DEm-0W
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 05:36:02 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1ab0c697c84so1869825ad.3
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 22:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683005758; x=1685597758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iFZDahJ1qpozC1mCB3SvMK7u+IXOSO5tIIA+RIrQqiA=;
        b=PXBUVLnKWk2RaXst7QwTMi1l9Rv/rZ7fvx6nBC2A7JYlc9CmFKC1EIu5jPJ7QIMS6c
         SKBgq7TC7bfFQ3DZ8fRgyKKQmJcetwsJ9mDIXWYPJ783niOTh4uZAEarQwAipaexzE9E
         v06qvOlD7KfUV8xoHnqYlrWm7qGTaYbKPROQaCjZ8U2SGJSDl2tymA/QRrDnIaHWmOs6
         TEJS0Rj86YSD/n+Z/lQvRc462Nao5miMC6QyEbQo1nCUcybxIwC0pkK34q5GYH48cXt8
         /FoR+F4PVJyQQpmpqzudEgAY8Rm8G20gDb/X2jKrPoNAlZ+bxxZi1U0zu0Pw7MXT0e/A
         VR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683005758; x=1685597758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iFZDahJ1qpozC1mCB3SvMK7u+IXOSO5tIIA+RIrQqiA=;
        b=Jc5n5AlEHKeVBQWa5QRPIAhjGavtuxanxjy46CGXiTjr1UW1xNLYJOmTlFJvWpg5HN
         F6HVrUmi7HucJGzJcT1SJgrr4g2RxWlbV6IRYgd87uEpupMdUtpnw1X4WMqqeiqogEJv
         6E3M3WpyyzYWNMmcD0RgTCa9PjlgEnu6B68FU+Ctz938US/boIdOl6FWt+/KmxNA4MDa
         sRjt7nId52bLBiBM2ktaKDgwRst9caL8MIi7VbP3hyjdLOi0JoHw1Bv47fZFr/g5wOLc
         9Eu0YWD//mWHE/4vHDeCUWYQ/yKGcBsDiNs/qed/LcZVlOf40///MJ5kT9fqUszwzq26
         ORVA==
X-Gm-Message-State: AC+VfDxDY+4qTlhpLTY5A7WsgnF+P8g4tG8gqeXHJ6r0q5PCKz9eRQ3P
	l/fcZZAJN4UCHRqFlMtamHkBmA==
X-Google-Smtp-Source: ACHHUZ4IYyg9BKrQ3QtFVFftnxGNHKN1hOh6WGGkoaaJ/c4bAbcJoGke3k1Hyv12eU5+xl9gieSzVw==
X-Received: by 2002:a17:903:2350:b0:1aa:e0c9:7e77 with SMTP id c16-20020a170903235000b001aae0c97e77mr11209898plh.36.1683005758260;
        Mon, 01 May 2023 22:35:58 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id j12-20020a170902690c00b001a6a6169d45sm18870369plk.168.2023.05.01.22.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 22:35:57 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v10 2/4] phy: qcom-qmp-usb: add support for updated qcm2290 / sm6115 binding
Date: Tue,  2 May 2023 11:05:32 +0530
Message-Id: <20230502053534.1240553-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_223601_199251_9015B1AA 
X-CRM114-Status: GOOD (  13.43  )
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

Add support for the new qcm2290 / sm6115 binding.

The USB QMP phy on these devices supports 2 lanes. Note that the
binding now does not describe every register subregion and instead
the driver holds the corresponding offsets.

While at it also include support for PCS_MISC region which was left
out earlier.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index a49711c5a63d..ae4710f08bfb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1411,9 +1411,13 @@ static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_tbl[] = {
 struct qmp_usb_offsets {
 	u16 serdes;
 	u16 pcs;
+	u16 pcs_misc;
 	u16 pcs_usb;
 	u16 tx;
 	u16 rx;
+	/* for PHYs with >= 2 lanes */
+	u16 tx2;
+	u16 rx2;
 };
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
@@ -1558,6 +1562,16 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
+static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
+	.serdes		= 0,
+	.pcs		= 0xc00,
+	.pcs_misc	= 0xa00,
+	.tx		= 0x200,
+	.rx		= 0x400,
+	.tx2		= 0x600,
+	.rx2		= 0x800,
+};
+
 static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0x0200,
@@ -1922,6 +1936,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_usb_offsets_v3,
+
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
 	.tx_tbl			= qcm2290_usb3_tx_tbl,
@@ -2493,10 +2509,16 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
 
 	qmp->serdes = base + offs->serdes;
 	qmp->pcs = base + offs->pcs;
+	qmp->pcs_misc = base + offs->pcs_misc;
 	qmp->pcs_usb = base + offs->pcs_usb;
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
+	if (cfg->lanes >= 2) {
+		qmp->tx2 = base + offs->tx2;
+		qmp->rx2 = base + offs->rx2;
+	}
+
 	qmp->pipe_clk = devm_clk_get(dev, "pipe");
 	if (IS_ERR(qmp->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

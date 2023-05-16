Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA4B6C7EE2A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 15:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvSLrSG7dTCiFgBBKQqBFdML6JxRyip9+cAX++4QX4A=; b=10B4ApOIjLNn7B
	yV5+fXio8dPmV9MY3mjQkmOSo7E3SSr9Ug6z7WYBJxMClvt0Egn0jXBxKfaBI5kwbk5FNGYJRsCTf
	xCyzv1QyHryrtWZheGcNcY5fzZpKCCxLEaFDsgRjtGTV1Jkv6o7sDjuo0SexNe4a11Dda1kT1WqWz
	Pzpj92GVcWM4lheaUNwJk4t2LEdQojp//8VuvsQfBF/d5rfKj2H5QM6b43d8gVUXWthPS8ZWV238V
	ZtPkxNr6pFu3r3l7H1JgGhh+hkPtkH1FJCZo0nhYRJslm7eisC88wMUIAFE43212470ExRbt7Lhkd
	2POyiKrqTZ892dZQoS7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywF4-006BoC-19;
	Tue, 16 May 2023 15:05:34 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywF2-006Bmh-0R
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 15:05:33 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-643912bca6fso11196441b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 16 May 2023 08:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684249531; x=1686841531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Tk69piEZehakfGwQkU6K1Gxhofm6gj5FoUxxJ+kPXY=;
        b=bP3GrpcPfjNBk7Qsk/LbSdl3l/3ZxuLchlMgUJGN0o4YXwndKpmIZojFY/CTUtDIGR
         xb73/AHdtg1ajXvnzRe5ZNRb6FNWreWIGWep2+lkHSuaGhGYTHwNrFUof9yauxP5aicx
         Bdvrut7O1relZSspFc3SDu7H/7Mn8gP9F76jPwsnCQihwiZzECCCtfz9IFp9dcfZJLw6
         LPFWL5jIRIjyHejoCJNNoMuVcGCqlTQz4zAPVM69CwEp790iPNA/LYfmaOTCOKNzW3Mx
         QvHJyuY18IYtAP4er4A+CjpHwwlo5kDQRWqUEPIyklhH4n1khUM8F6d0BxZssRZiYF2Q
         xISg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684249531; x=1686841531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Tk69piEZehakfGwQkU6K1Gxhofm6gj5FoUxxJ+kPXY=;
        b=eq851DjETTkUKKSkmldecPgKyQWZikBKFe72h+CmkCoRpTkQbQ3b0NvTv4f7iMNb/f
         47ycXWVJQCwc2rcQEj3ljU2EoY77KcNoNdb+8HzKvA5s0ipI8o4wOqyI56Na0ZGGNHny
         Apv36uBNaqiTDD3Zl/0YZb/ta8vmddbMnOyhoDbi+/OOnUFtoulpF/fh47EBCVhZgMVc
         psGIsOLzlAIsiUAwJq72rJelgUk8MCmO++nzF4xzRxjw6JtLRtBRiS7Dayn8b00h62gA
         efCy9YbZkOgA8aAFWZuPHLgBNfM1+V1t+YShP6Xh2xlzyHRPy0jJVmRJLGQUOWPAP84B
         F4lA==
X-Gm-Message-State: AC+VfDyCm8fKtFS5zJNvcJRTxR1I9yOa0qDdbMj7uW5SY/7PAEGQOfSI
	WMJxk2db4YHn8XjyyuxHseodYA==
X-Google-Smtp-Source: ACHHUZ5Uo07ip94m8A4F6ZiYgZqe5DrESlk+jSBowuJvRUz6YM5eMTJ06NNsVaIeITxG0EDxXWeimA==
X-Received: by 2002:a05:6a00:2e1b:b0:63d:6744:8caf with SMTP id fc27-20020a056a002e1b00b0063d67448cafmr44506593pfb.26.1684249530715;
        Tue, 16 May 2023 08:05:30 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6bed:72cf:f5c9:ba94:6b85])
        by smtp.gmail.com with ESMTPSA id h1-20020a654801000000b005302682a668sm12817164pgs.17.2023.05.16.08.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 08:05:30 -0700 (PDT)
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
Subject: [PATCH v11 2/4] phy: qcom-qmp-usb: add support for updated qcm2290 / sm6115 binding
Date: Tue, 16 May 2023 20:35:09 +0530
Message-Id: <20230516150511.2346357-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
References: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_080532_174192_D4FB4DDC 
X-CRM114-Status: GOOD (  13.48  )
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
index 6f2798bbe513..466f0a56c82e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1513,9 +1513,13 @@ static const struct qmp_phy_init_tbl sa8775p_usb3_uniphy_pcs_tbl[] = {
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
@@ -1668,6 +1672,16 @@ static const struct qmp_usb_offsets qmp_usb_offsets_ipq9574 = {
 	.rx		= 0x400,
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
@@ -2076,6 +2090,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_usb_offsets_v3,
+
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
 	.tx_tbl			= qcm2290_usb3_tx_tbl,
@@ -2647,10 +2663,16 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
 
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

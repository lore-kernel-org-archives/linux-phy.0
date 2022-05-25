Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4900C43217
	for <linux-phy@archiver.kernel.org>; Thu, 26 May 2022 01:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjS9b6FMSlcNzGfByDY+TXE48AbKY+/LmkGSNlp4R80=; b=mAFKKaFJxT8FKy
	4VM63PeKAl7vst0x1oz5s9I22uwOLldk+8zAy+25OvZyOiQq6uFWk7Ogg0jWr1Mji2NCmmj7be449
	o+/NNueK/lHV58Pbkm5taYX+/51T6gaIai6Ki3Au7WTXg63P0hbsVkUxuHErQhbW8krdeU6oVed68
	7B0fkkIhEfUwL2gh8aulSsJRUxCKhl3VNNNl8dcO/hAMoYXm++95BWEcV1Pcw2KQZk3zFI3eqipLM
	FCboGvfvRJBJaWaqHMs2zQp7Rvui8Voi7gfcy12knbA00n6CDZUOSricFC3yjJyAzJp1zpygkCamd
	mAf9ITLglB0lWiPCBbLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu1tF-00D8se-IP; Thu, 26 May 2022 01:02:13 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0uD-00Cz95-7l
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:59:11 +0000
Received: by mail-lf1-x12b.google.com with SMTP id bq30so105902lfb.3
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wOwGE3ofov4w8qEaJ2tpEpjd8bEZKEfIle5P6QrWK+8=;
        b=CszNb4w13GLSRg3L9Gt5vtmxMjjJB8Q0OtJZML5E72I6USjOrhAWk4++A8OUVWTTD0
         afIj7NtKXucvCemUeDi/yrXmtaUerGgDMlqF7+2TdEIVp0QOJJYbOIAuyPh3s4GDeTD8
         J+7Y6E5NjGHM7LFt9xhwYMZmZtedRShMRdCdBU+vFpQlwK4zsP6s7Y6IjvlQkc0c4UX/
         ZehC0SPdNA298uadfaO8oVtNLbKYfPP5WRH10H+tsiO1WUNG5iFOOVxmLDTvnJyXiqmC
         YUqV9bxkW444vt24S12u9XFuMfHVCk5yp/UDDKp73+PaWV1OD+m9b0U0UIcAB+U1TZyE
         5Z7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wOwGE3ofov4w8qEaJ2tpEpjd8bEZKEfIle5P6QrWK+8=;
        b=l7R9dpqnkEj4IANwnD4H2r5qDQ0JDzb0yBWJu3PNLNvqB/ArFNw0hNWBKhobHz2w6L
         wt/Lb8fvUelAMh08tv0p4xW2trB9SLBybNk8U4bwkaEvE4XO9olSkzT8CS4kxNHB4+C6
         MQXKA7bmBK8BFPTph88z4c0m0U0Pv7ldB8GQG1fxLKm3QfyJQ3G5NR1RI4yyutl4KCHY
         FYVtNB0HiAYi34Rq84n1+xvVA4WWD+PW0lx60xtt+36Wn5s839c7tTvrATJew6LLrFzn
         dgt3jI1rVyItsk0OURj+t0DAUMVIX/GCcXVD0mjnioPS0wzYnM+6YIDL+PSDHeqrl/oO
         BQ1g==
X-Gm-Message-State: AOAM533mc/8GnrTCE1t9wlDj/XKv8TB4izi2GfEKGtlyELfjwNd6n9dM
	5CNxtHyzYEoCn7nSwMTSrfrjnw==
X-Google-Smtp-Source: ABdhPJwu9PvRreuPr0nci1PPeAyxlxtxn5ZQqb1T5/HRt80ci0C+K+tUInjkqrYc+TDRiLIQ7/GFBQ==
X-Received: by 2002:ac2:550f:0:b0:477:bc6e:9bcc with SMTP id j15-20020ac2550f000000b00477bc6e9bccmr24743242lfk.279.1653523148680;
        Wed, 25 May 2022 16:59:08 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:59:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 25/34] phy: qcom-qmp: move SM8250 USB PHY to new QMP driver
Date: Thu, 26 May 2022 02:58:32 +0300
Message-Id: <20220525235841.852301-26-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_165909_312417_F58492F0 
X-CRM114-Status: GOOD (  12.26  )
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

Move support for the USB PHY driver on SM8250 platform to new QMP
driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 213 ++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c     |  83 ---------
 2 files changed, 213 insertions(+), 83 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ca37a7419408..997627d5853f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -785,6 +785,142 @@ static const struct qmp_phy_init_tbl sm8150_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
 };
 
+static const struct qmp_phy_init_tbl sm8250_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_TX, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_RX, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0xd5),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V4_TX_PI_QEC_CTRL, 0x40, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V4_TX_PI_QEC_CTRL, 0x54, 2),
+};
+
+static const struct qmp_phy_init_tbl sm8250_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_THRESH1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_GAIN1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_GAIN2, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL1, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V4_RX_RX_MODE_00_LOW, 0xff, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V4_RX_RX_MODE_00_LOW, 0x7f, 2),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V4_RX_RX_MODE_00_HIGH, 0x7f, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V4_RX_RX_MODE_00_HIGH, 0xff, 2),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x97),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0xdc),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0xdc),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x7b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0xb4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_AUX_DATA_TCOARSE_TFINE, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_GM_CAL, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VTH_CODE, 0x10),
+};
+
+static const struct qmp_phy_init_tbl sm8250_usb3_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG1, 0xd0),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xa9),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_CDR_RESET_TIME, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG1, 0x88),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG2, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+};
+
+static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0xd5),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_2, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PI_QEC_CTRL, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX, 0x02),
+};
+
+static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0xb8),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0xb4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x7b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0xdc),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0xdc),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_THRESH1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_GAIN1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_GAIN2, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL1, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x47),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_GM_CAL, 0x1f),
+};
+
+static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG1, 0xd0),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xa9),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_UNI_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_UNI_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_CDR_RESET_TIME, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG1, 0x88),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG2, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
+};
+
 /* list of clocks required by phy */
 static const char * const msm8996_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref",
@@ -798,6 +934,11 @@ static const char * const qmp_v4_phy_clk_l[] = {
 	"aux", "ref_clk_src", "ref", "com_aux",
 };
 
+/* the primary usb3 phy on sm8250 doesn't have a ref clock */
+static const char * const qmp_v4_sm8250_usbphy_clk_l[] = {
+	"aux", "ref_clk_src", "com_aux"
+};
+
 /* list of resets */
 static const char * const msm8996_usb3phy_reset_l[] = {
 	"phy", "common",
@@ -1062,6 +1203,72 @@ static const struct qmp_phy_usb_cfg sm8150_usb3_uniphy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
+static const struct qmp_phy_usb_cfg sm8250_usb3phy_cfg = {
+	.base = {
+		.type			= PHY_TYPE_USB3,
+		.nlanes			= 1,
+
+		.serdes_tbl		= sm8150_usb3_serdes_tbl,
+		.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
+		.tx_tbl			= sm8250_usb3_tx_tbl,
+		.tx_tbl_num		= ARRAY_SIZE(sm8250_usb3_tx_tbl),
+		.rx_tbl			= sm8250_usb3_rx_tbl,
+		.rx_tbl_num		= ARRAY_SIZE(sm8250_usb3_rx_tbl),
+		.pcs_tbl		= sm8250_usb3_pcs_tbl,
+		.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_pcs_tbl),
+		.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
+		.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
+		.reset_list		= msm8996_usb3phy_reset_l,
+		.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+		.vreg_list		= qmp_phy_vreg_l,
+		.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+		.regs			= qmp_v4_usb3phy_regs_layout,
+
+		.start_ctrl		= SERDES_START | PCS_START,
+		.pwrdn_ctrl		= SW_PWRDN,
+		.phy_status		= PHYSTATUS,
+
+		.is_dual_lane_phy	= true,
+	},
+
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
+	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
+
+	.has_phy_dp_com_ctrl	= true,
+};
+
+static const struct qmp_phy_usb_cfg sm8250_usb3_uniphy_cfg = {
+	.base = {
+		.type			= PHY_TYPE_USB3,
+		.nlanes			= 1,
+
+		.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
+		.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
+		.tx_tbl			= sm8250_usb3_uniphy_tx_tbl,
+		.tx_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_tx_tbl),
+		.rx_tbl			= sm8250_usb3_uniphy_rx_tbl,
+		.rx_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_rx_tbl),
+		.pcs_tbl		= sm8250_usb3_uniphy_pcs_tbl,
+		.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_tbl),
+		.clk_list		= qmp_v4_phy_clk_l,
+		.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+		.reset_list		= msm8996_usb3phy_reset_l,
+		.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+		.vreg_list		= qmp_phy_vreg_l,
+		.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+		.regs			= qmp_v4_usb3_uniphy_regs_layout,
+
+		.start_ctrl		= SERDES_START | PCS_START,
+		.pwrdn_ctrl		= SW_PWRDN,
+		.phy_status		= PHYSTATUS,
+	},
+
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
+	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
+};
+
 static int qcom_qmp_phy_com_init(struct qmp_usb_phy *qphy_usb)
 {
 	struct qcom_qmp *qmp = qphy_usb->base.qmp;
@@ -1408,6 +1615,12 @@ static const struct of_device_id qcom_qmp_phy_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8150-qmp-usb3-uni-phy",
 		.data = &sm8150_usb3_uniphy_cfg,
+	}, {
+		.compatible = "qcom,sm8250-qmp-usb3-phy",
+		.data = &sm8250_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,sm8250-qmp-usb3-uni-phy",
+		.data = &sm8250_usb3_uniphy_cfg,
 	},
 	{ },
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index c18fd9fee5c3..e9d88f02f356 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -595,54 +595,6 @@ static const struct qmp_phy_init_tbl sm8250_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 };
 
-static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RCV_DETECT_LVL_2, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0xd5),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_2, 0x82),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PI_QEC_CTRL, 0x40),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX, 0x11),
-	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX, 0x02),
-};
-
-static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_rx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0xb8),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xbf),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0x7f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0x7f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0xb4),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x7b),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0x5c),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0xdc),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0xdc),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0x99),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_THRESH1, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_THRESH2, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_GAIN1, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_GAIN2, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL1, 0x54),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL2, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_EN_TIMER, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x47),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
-	QMP_PHY_INIT_CFG(QSERDES_V4_RX_GM_CAL, 0x1f),
-};
-
 static const struct qmp_phy_init_tbl sm8250_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG1, 0xd0),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG2, 0x07),
@@ -1484,35 +1436,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.is_dual_lane_phy	= true,
 };
 
-static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
-	.type			= PHY_TYPE_USB3,
-	.nlanes			= 1,
-
-	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
-	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
-	.tx_tbl			= sm8250_usb3_uniphy_tx_tbl,
-	.tx_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_tx_tbl),
-	.rx_tbl			= sm8250_usb3_uniphy_rx_tbl,
-	.rx_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_rx_tbl),
-	.pcs_tbl		= sm8250_usb3_uniphy_pcs_tbl,
-	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3_uniphy_regs_layout,
-
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
-
-	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-};
-
 static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
 	.type			= PHY_TYPE_DP,
 	.nlanes			= 1,
@@ -3234,15 +3157,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
 		/* It's a combo phy */
-	}, {
-		.compatible = "qcom,sm8250-qmp-usb3-phy",
-		.data = &sm8250_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
 		/* It's a combo phy */
-	}, {
-		.compatible = "qcom,sm8250-qmp-usb3-uni-phy",
-		.data = &sm8250_usb3_uniphy_cfg,
 	}, {
 		.compatible = "qcom,sdx55-qmp-usb3-uni-phy",
 		.data = &sdx55_usb3_uniphy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

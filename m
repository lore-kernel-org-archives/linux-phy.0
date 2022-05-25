Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC40C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 23:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kb7lyCQOtEcTHM6+hFE4P1M54I4m0Za0Q4eZ6qLER3E=; b=mLUcKmkDGIQtGN
	P9s4Y477Gl2Bf8Xht/aZFq2T+0JyL0gZdSfUrsru9NNc1erILVYKkBE906AGa6sWhWGIbUn1wkcSE
	ysKuN8NixKsqk+kCkEWQ0Kz9MlAT86PKaMUZK7EUexH0R+7kmyFpF51nDxTzoGPPAASXS88GqM+IZ
	nvsg/3N6KF9oPlgL8vKY9CxvbX2txWng166akOPHlJQmbS6YU5dp1WGKwMlXSR5YAKglsBi0LTr3p
	QiQ8EXw6v3hLxiMkJ+xtUJUjx4X2Trf7fJ69s+/uPVKpmJjKTPQSFBhj5nsVUXTUrIBA1e7/3UzBr
	uttf2HjiAYO9nPVGVx7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0uc-00CzKW-4Y; Wed, 25 May 2022 23:59:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0ub-00CzK4-0t
	for linux-phy@bombadil.infradead.org; Wed, 25 May 2022 23:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AaghgJV3RWxswvwWMqb90Y4VmD0Lo2dTJ1tWjmmQXGo=; b=elrygU4kRrEQnoXFwbY9kustF2
	W4Ler+ucFedXYW9EjUz6kBjb81CL28eaZFIDaXhu/s7MFrUu85CHHpaoFWpPnVgGfOC35HxvPYAa8
	pW1+eFLOyckyBGRSKMBuRUeUQ04XDT+DTDnyf8VM5ytqOobB3SkESzlhNjVda2LYMWWiychAMLIqr
	e7CcmGjp2sIvrTML4ET/RrHSRZ+UO3KI6x7CkW1j4MvoLsMBJtS58+FnJYv74iUCImhk9KvvAm34n
	rwflYUAG5e+KfCaaSQ1DDcNJA2keEdUQSvYu7HRTKFr4/CrTs5HCeJC73onvsGne58J7dPIaX4mNi
	hfMf1M8g==;
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nu0uP-001kvi-0n
	for linux-phy@lists.infradead.org; Wed, 25 May 2022 23:59:25 +0000
Received: by mail-lj1-x22b.google.com with SMTP id v9so112038lja.12
        for <linux-phy@lists.infradead.org>; Wed, 25 May 2022 16:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AaghgJV3RWxswvwWMqb90Y4VmD0Lo2dTJ1tWjmmQXGo=;
        b=zlhGMon6HXNGybAznYvtgs9vuYm+2dnvQlj1YbV9Pje1/8QgooBCZcH/vVvXAayr/x
         9OVYbxea5Sj5qs0t9VMDkrYiSA9MDEcgJ81QlTA48Mb24XFeDPf6HkBmvAWoUGDWJ/sQ
         2hS0yPMRMhvmrZUp50xpQRWn3JoPAd2AaiekWhq7tWu5Fzl2G9X86N4DfEjUDWeV95nj
         S3xBo+hrn/ah5vJxJ5zTqsEemMfu/cKJ1ujYnl/XbDTzwVsZ82oAxj4eV3/1vSn9NaoQ
         JxPDIcYRn994w1dlCr7hh5Y2w5fe4QPT0AoRmLMLusdck3Z8wFKTNyHneZhrQiXHhnAi
         QEIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AaghgJV3RWxswvwWMqb90Y4VmD0Lo2dTJ1tWjmmQXGo=;
        b=gZ1v0+b8J32NL1K/ETt1fiKlTwusg8tmuAWavPLQqLjOSloPbzvQM4Amc6aBc2SeRP
         driKkpJjHI/0SUi4/vm9oDDC2KIQpnjGRhXJcOygHKrp+QT1wQUOCXq+qpw07lvqTlEd
         uYiaoFerBC0HX2iqKBHgXj/OjHv022Gkk2dNvRWGNo4GN9uSzZQ3uHSMaj1oBu8UUuxa
         Ab1gu9t97Q3n10Weh4w2AxHQhxKzc0ibqrelCgINib/iaROmQFaP/3QVMenB3Sm/g0+X
         fbRiTXAod4qpaGVGRrhkjY2dwXIbOUC7fv63kepBJ8rcDVz+cp2VmY3EbDwDW7EcHmO8
         gUPQ==
X-Gm-Message-State: AOAM533x33QDwGJun+c0/tfWs+uA53xh4O2Q3SzlBaWOdLbuOkIbq3/4
	4ZIFVKVajBnK8pE4wcGZgdsFCA==
X-Google-Smtp-Source: ABdhPJwrbQgLTxOgQlFU5bX78+v7ldLOyF3hWFP5vHH5M4umK4zp3wV0A930mhtcpMGEkOTz0z+7Sg==
X-Received: by 2002:a2e:a7d3:0:b0:253:edee:b0e with SMTP id x19-20020a2ea7d3000000b00253edee0b0emr9526006ljp.168.1653523146832;
        Wed, 25 May 2022 16:59:06 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u28-20020a056512041c00b0047255d21203sm9557lfk.306.2022.05.25.16.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 16:59:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v2 23/34] phy: qcom-qmp: move SC7180 USB PHY to new QMP driver
Date: Thu, 26 May 2022 02:58:30 +0300
Message-Id: <20220525235841.852301-24-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
References: <20220525235841.852301-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220526_005923_976949_739120EF 
X-CRM114-Status: GOOD (  13.40  )
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

Move support for the USB PHY driver on SC7180 platform to new QMP
driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 42 +++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c     |  3 --
 2 files changed, 42 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index d8a4b7774b49..8c4a01bdf359 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -565,6 +565,10 @@ static const char * const msm8996_usb3phy_reset_l[] = {
 	"phy", "common",
 };
 
+static const char * const sc7180_usb3phy_reset_l[] = {
+	"phy",
+};
+
 /* list of regulators */
 static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
@@ -719,6 +723,41 @@ static const struct qmp_phy_usb_cfg qmp_v3_usb3phy_cfg = {
 	.has_phy_dp_com_ctrl	= true,
 };
 
+static const struct qmp_phy_usb_cfg sc7180_usb3phy_cfg = {
+	.base = {
+		.type			= PHY_TYPE_USB3,
+		.nlanes			= 1,
+
+		.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
+		.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
+		.tx_tbl			= qmp_v3_usb3_tx_tbl,
+		.tx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_tx_tbl),
+		.rx_tbl			= qmp_v3_usb3_rx_tbl,
+		.rx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_rx_tbl),
+		.pcs_tbl		= qmp_v3_usb3_pcs_tbl,
+		.pcs_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_pcs_tbl),
+		.clk_list		= qmp_v3_phy_clk_l,
+		.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+		.reset_list		= sc7180_usb3phy_reset_l,
+		.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
+		.vreg_list		= qmp_phy_vreg_l,
+		.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+		.regs			= qmp_v3_usb3phy_regs_layout,
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
 static int qcom_qmp_phy_com_init(struct qmp_usb_phy *qphy_usb)
 {
 	struct qcom_qmp *qmp = qphy_usb->base.qmp;
@@ -1047,6 +1086,9 @@ static const struct of_device_id qcom_qmp_phy_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8998-qmp-usb3-phy",
 		.data = &msm8998_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,sc7180-qmp-usb3-phy",
+		.data = &sc7180_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm845-qmp-usb3-phy",
 		.data = &qmp_v3_usb3phy_cfg,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 3a308fcbe198..b4b5a22877ff 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3323,9 +3323,6 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
 
 static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	{
-		.compatible = "qcom,sc7180-qmp-usb3-phy",
-		.data = &sc7180_usb3phy_cfg,
-	}, {
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		/* It's a combo phy */
 	}, {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

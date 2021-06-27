Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8877AC48BC2
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 18:58:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 485F2619A1
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 18:58:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 485F2619A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvonVRdqcoTw1Qp4gP5S32CyaYR5tK4k5XiQyohugqw=; b=J6q7o/A1DfPAil
	j3d6nKOyx0n9w3aBlcHOiP/KwPCWGKIxIIW9xM6y5C406L6GcC26AFx21pk5lVj7hOgmDwua0pdD1
	ZI9+l+7WOaB3EXuz74N6gb2xKEezAUQVTAzcaDwt3S9OxSVZoap3FflqPXedu/6+zYfQzYENy4aj6
	9seJkW861eY3dLcNyqZoRE3n1f+Wt5XNWNnoQnofXAKHpgY1xKK57QyVC9Q0lsAM48JHJkPS7FeeH
	13b1tz4/24UBiRNDVAPUQEkFt9gWtMWqWmdCLUsFKINUVYciqZTIJ7TZ+VBAq1BgIjkHjeTXMvNqf
	DpVO0MK5x8TaRREnjC8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxZyv-0060KN-R7; Sun, 27 Jun 2021 18:58:13 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxZyj-0060HE-Ct
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 18:58:02 +0000
Received: by mail-wr1-x433.google.com with SMTP id r8so4133024wrx.5
 for <linux-phy@lists.infradead.org>; Sun, 27 Jun 2021 11:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8hmlrjkmcfJ1aygTd9/3P+2nz6SFwwd1iwgYQqcLxhs=;
 b=UfmKcy5TpNUzSWe4GDJCKf7QvH9lAePOnJ3l/TC7g94fZWkUGKrLKanodLbckQmQSp
 sGSy/AFz/V5SsyEYyE1UWwAO6pWI4w1SQ0oIC/TT+iQQwzaDj60bXsg5ITQ1ueFlkb4p
 SKFfl0wyY6vI8d3d8jkj+ZAni3IxYCgn5Ju9B+RVgii8GFNm6mbpJqosemtf5xASnl+E
 Ip0woSYOgNJ+WZkG/+klMFXX2Vpa7rK1e+i6B/Yus7JKKewa1NLu3yQU9yOdC3wCfhAL
 tbPiczpgRYNwOi/fZHllyhMzMIka+bOYXC/4g1d8mMfkaggAwyeO668jTlc/Gyzu4okJ
 JVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8hmlrjkmcfJ1aygTd9/3P+2nz6SFwwd1iwgYQqcLxhs=;
 b=oswsSUCp8CEbIfFi7GdzmdLQ0eeULq6kcNF4f7vcov6/9OYGdq/tbaIrSAHcV5PhPq
 aJ505UstqJPNgXeYYNckEUCRjz/sFIPyc2n97uN4m7SzmBRX30uANeLI2LRC4uaEZxc+
 SYT4ZDCwCnVRINIAryk93OBp7TbDGQMRH5zN3VoePaK2vsFCgMT33PBiG8hGHGsvcvwf
 TbNgOZDmB08PhQeRqW3CY8nM3+aov+v9ixGqlhcmtwk6Q6nU8Q2KqdgNlnMCF3390yqt
 vQtouQafJKtC3wPQK0nhwkvvaTbnXP7vNHtkypLsFqznY4ozYykXii2uL1QaVpujT9nU
 UFuA==
X-Gm-Message-State: AOAM533eIJLzcCYCT+QhQ2k9dszIh6dn5uA53jrSv9Vl3XigLMkmsJ5g
 oWJ0uS3fAZkdEGVKX9vYgbM=
X-Google-Smtp-Source: ABdhPJwP2SMhEedxbe82P5wnMpvxkRpnjkXS+JizfvwCU1buhGIqG5czHnUzlvRZHiZeyJ85LnzcJQ==
X-Received: by 2002:adf:a2d1:: with SMTP id t17mr22941948wra.74.1624820280034; 
 Sun, 27 Jun 2021 11:58:00 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id i9sm11890745wrn.13.2021.06.27.11.57.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Jun 2021 11:57:59 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Manu Gautam <mgautam@codeaurora.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Iskren Chernev <iskren.chernev@gmail.com>
Subject: [PATCH v2 3/3] phy: qcom-qusb2: Add configuration for SM6115
Date: Sun, 27 Jun 2021 21:57:50 +0300
Message-Id: <20210627185750.693222-4-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210627185750.693222-1-iskren.chernev@gmail.com>
References: <20210627185750.693222-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_115801_476790_680A92CA 
X-CRM114-Status: GOOD (  11.83  )
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

The SM4250/6115 uses the same register layout as MSM8996, but the
tune sequence is a bit different.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 31 +++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 8f1bf7e2186b..51e5478ea7f0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -219,6 +219,22 @@ static const struct qusb2_phy_init_tbl msm8998_init_tbl[] = {
 	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_DIGITAL_TIMERS_TWO, 0x19),
 };
 
+static const struct qusb2_phy_init_tbl sm6115_init_tbl[] = {
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xf8),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE3, 0x81),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0x17),
+
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
+
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
+
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9f),
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
+};
+
 static const unsigned int qusb2_v2_regs_layout[] = {
 	[QUSB2PHY_PLL_CORE_INPUT_OVERRIDE] = 0xa8,
 	[QUSB2PHY_PLL_STATUS]		= 0x1a0,
@@ -342,6 +358,18 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
 	.autoresume_en	 = BIT(3),
 };
 
+static const struct qusb2_phy_cfg sm6115_phy_cfg = {
+	.tbl		= sm6115_init_tbl,
+	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
+	.regs		= msm8996_regs_layout,
+
+	.has_pll_test	= true,
+	.se_clk_scheme_default = true,
+	.disable_ctrl	= (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
+	.mask_core_ready = PLL_LOCKED,
+	.autoresume_en	 = BIT(3),
+};
+
 static const char * const qusb2_phy_vreg_names[] = {
 	"vdda-pll", "vdda-phy-dpdm",
 };
@@ -888,6 +916,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,sdm660-qusb2-phy",
 		.data		= &sdm660_phy_cfg,
+	}, {
+		.compatible	= "qcom,sm6115-qusb2-phy",
+		.data		= &sm6115_phy_cfg,
 	}, {
 		/*
 		 * Deprecated. Only here to support legacy device
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

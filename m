Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30CACC49EA6
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:32:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE8906138C
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 20:32:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE8906138C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzxSqYB7tBTHMxkmXwr1r4ImumcgsSsZ2JcMWNh7RJE=; b=AsHUnoyeZqbCd7
	Gg3pfAp6U6FfBuI6kjmJcLeirjfGwiHyKSp90f1bE0/2FGQMFvp9hLv0SFDbMNCPKj6u/zRDIxyel
	wuB3K/DRy7gqbFnujYDhqIyBwyGGZs0cwkfV1rvP+tsBHeMtRSVGVAZhOUIh35gvxT6hHtQ6Rtlod
	tIKRs6lELAXFgfJoFaCMUgvVPBdJrMi6DdkP8wiY+NDWGM3EfbJzU/vU5j9aayhLBhKfSfUEemkjK
	Zxq0O5T4Kjx6y8L1GUFPK24B55WDRTrrDXtyjcbHz0UcDVKVZpeXy5ySmmpxM24PFAjznvXkX/+zt
	knQOXhgIPK0tqwn3+KoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvn4r-008MEd-II; Tue, 22 Jun 2021 20:32:57 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvn4o-008MCv-UC
 for linux-phy@lists.infradead.org; Tue, 22 Jun 2021 20:32:56 +0000
Received: by mail-ed1-x535.google.com with SMTP id i5so535601eds.1
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 13:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bRmU0C3A1PBdjl5vqeNkyE5P00d04OKPIvoyRXjo+cI=;
 b=eh78Bnm+j6S+6X8B4s3AYZQLwNjytisFyOUjyuDFx/wSupiyaqCr2ozjjOv6M3xEqX
 LU8IHRiV8IikDPeGWn/cBz0LRw5XUW1oZZJikY2RaYpnqDuq+3itzyiBjkUKKA0UOP9l
 cFi8EcRZyKKbhool2g1Amf2jS3UevUz5Q4OfwvgdsBYgcZHT2RHKBzUXmWH3+XAPgYXa
 jfNLyJSbdoK0ztXXFJf8QNHc7ZYjqVosv/vk4a1Si7e6iGL+Kzy/pS36SOzBK2kpIAR3
 2NH4RdTLdZkWdxqJi68zLT1icK5SJ+nuniJ72MUADL+Yvq3IryMgUigBgelEnS+5O6iX
 5OOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bRmU0C3A1PBdjl5vqeNkyE5P00d04OKPIvoyRXjo+cI=;
 b=qv2Y3raBdENSfF8Ab4uUnzEKW35nhv/xD1lt1r4BXA7b3laFiryx+7QSEjtBVQyQhF
 Cn+RuExJ57xx4D/qRCze7VFlpg28UDyHLQoCul3udK0w2htsb2FhpO/tqalpH5FFS2Fz
 ZRJjIiS9q3BvTLCrLNvnKPISGkUpeA9pdU6B+X+sTs4CRWVwnA+vuo0LHcbVOtzfTRDZ
 cyWH8/88DkKf09XcZE1YwOdALpprAmldLTXoVfDHqzQWLeSjlJBAM81ApEnd5DKx5wG8
 N1S/576wTwT4CAA+0NaM5OyRLiUx1I4qj2Ta5Eym6Z/b2w0LzxfWiisi4DRFf4XbK22w
 zv6g==
X-Gm-Message-State: AOAM5339cLzT77JEjVYRWHM4roj9tRG8e5zuDyguLV75jk7x4RKKvQBa
 ifkt7nFNmOqoo7jqjjwLI8U=
X-Google-Smtp-Source: ABdhPJwbz3QUmSTzQ0fczfEhsl+CmyOYAFuQUrl3h0/d+tDgTfmd4HKyyk8/MVZ3hoPB7fbCSsY/BA==
X-Received: by 2002:a05:6402:138c:: with SMTP id
 b12mr7698964edv.268.1624393972375; 
 Tue, 22 Jun 2021 13:32:52 -0700 (PDT)
Received: from localhost (178-169-161-196.razgrad.ddns.bulsat.com.
 [178.169.161.196])
 by smtp.gmail.com with ESMTPSA id fl21sm6514883ejc.79.2021.06.22.13.32.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Jun 2021 13:32:51 -0700 (PDT)
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
Subject: [PATCH v1 3/3] phy: qcom-qusb2: Add configuration for SM4250 and
 SM6115
Date: Tue, 22 Jun 2021 23:32:40 +0300
Message-Id: <20210622203240.559979-4-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210622203240.559979-1-iskren.chernev@gmail.com>
References: <20210622203240.559979-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_133255_017949_A02B19D7 
X-CRM114-Status: GOOD (  12.27  )
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

The SM4250 and SM6115 uses the same register layout as MSM8996, but the
tune sequence is a bit different.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 34 +++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 8f1bf7e2186b..3c1d3b71c825 100644
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
@@ -888,6 +916,12 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,sdm660-qusb2-phy",
 		.data		= &sdm660_phy_cfg,
+	}, {
+		.compatible	= "qcom,sm4250-qusb2-phy",
+		.data		= &sm6115_phy_cfg,
+	}, {
+		.compatible	= "qcom,sm6115-qusb2-phy",
+		.data		= &sm6115_phy_cfg,
 	}, {
 		/*
 		 * Deprecated. Only here to support legacy device
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4967EC7619A
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnKmGu9g4gjRg+ti2ZW27RtRZ/7C5tEINkv9oQ6ONQY=; b=i7ct4MxSR6h2Nl
	D7aXrBB2YBWjmkVB4/6lW8n9IzKSXdywIvZd0DAVg9CippVa3nBuVoxy2HmVPNXFIwCjClDm8iyRn
	/z3FqfvnHD2KQKt1cGUGrOablABKmY//RxojvZ4YStWxL399EEyzxu0EskM2SWdngc3Oh7QMSNKqx
	BCrtFGNjdz6N3f/hpL5S1e0Wv1jqFsd/tMerGYU0i1E06z5XHNz2uiFEW8Qw1bLRp9u2ps8TzoCVt
	KGzfAaWipa7XCebrc40sxOEHLLEvRJlvnm/cfrtCfHa0X8FWR/7FNXgBC/K7juxAHhw8tvRV9Gnx0
	IbJ2MKXykGBKwrjdIuow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7R-003OCe-2j;
	Fri, 24 Mar 2023 02:25:29 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7N-003O9a-2P
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:27 +0000
Received: by mail-lf1-x12a.google.com with SMTP id bi9so376552lfb.12
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LlHRxValegSqnSMBft+K8PLCC3g7dnAwqGZEFqtWtJA=;
        b=C5QNN7IX6yRB+D/EJdba2WTRgAFiBQQoPRWwyi2sGUPv5a8pYiJ6FUUdzgGvwsdz/4
         a4zq8/AyuVvk0AMtiyLxfD/LuFDLVYAs5K9KKH7rLcMjQ32kM6ht5jEwlcK2YY/QpbJG
         3Cvg8cyEy8Hofjc2xl/Tl3nUZckvOhRnRlxCgR6nfceD1n7DwYOZrGxXVGL6i4Pb7AFs
         dK8syEi4fnv8SmKXC+woAWvAeJY9P38U7CxwyzwYz+qDrlRxosQyn/5S0zgvLmnSzkop
         qvp8EAbgyZmz0/h4KHk/BTxRHs3yP2S34T571PQwwRTzMs0GmMPxsx+1Y68wOYo/jUyo
         r8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LlHRxValegSqnSMBft+K8PLCC3g7dnAwqGZEFqtWtJA=;
        b=ipwtdzcufeW0KVwMzFrdV3s0VUe58IHJjdQ0nvZiZVizdg1KxEubpnjvo1d7fSKM4Q
         +gqgrjcDXxAVq/nKwGeyFdnwNkLg0f/1szbPAR3ScIFPEpTINBl3hUsEz1vJU2694a/Y
         Gh09eG/fzoRPrzUGVv9+RGZ/r87So4dZoszjIr2jnHS5JqOhAWd1lekCaM/5LQ0HbDbq
         /JdnOK7O4I7tqYRUHUa3W2Gg2RYtcVRm9fozLPFuHGoBY7aJSAZlWdiRT1doydA3GSTi
         1iL7TtnMYyqLJXl9n9vnxkmFZR5Zp7H8mmJmy61ZEQpHdVKPd50NyXilPnfK3/yNTq/d
         zesQ==
X-Gm-Message-State: AAQBX9dhEkhXZVjRFRGTThopUGzySpGn/uZaO+AjcAHYSpZYRk0hpEtK
	xCYBG8uPh/zUeynNcU5BMAviiQ==
X-Google-Smtp-Source: AKy350b+ewgIkjp2ZVOKPIhcKN/92Bkarm+0H3NMHqExND0WIG6crQy4ZmCESBC76L85gkw39p3SPQ==
X-Received: by 2002:a05:6512:143:b0:4e9:9f10:b31d with SMTP id m3-20020a056512014300b004e99f10b31dmr269509lfo.2.1679624724462;
        Thu, 23 Mar 2023 19:25:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:23 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 09/41] phy: qcom-qmp-pcie: populate offsets configuration
Date: Fri, 24 Mar 2023 05:24:42 +0300
Message-Id: <20230324022514.1800382-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192525_800890_BFF3C9A4 
X-CRM114-Status: UNSURE (   9.10  )
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

Populate offsets configuration for the rest of UFS PHYs to make it
possible to switch them to the new (single-node) bindings style.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 84 ++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index c95bf7ec2abe..ac60da8e0b88 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1939,6 +1939,56 @@ static const char * const sdm845_pciephy_reset_l[] = {
 	"phy",
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_qhp = {
+	.serdes		= 0,
+	.pcs		= 0x1800,
+	.tx		= 0x0800,
+	/* no .rx for QHP */
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v2 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v3 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.pcs_misc	= 0x0600,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x1 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.pcs_misc	= 0x0c00,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
+	.serdes		= 0,
+	.pcs		= 0x0a00,
+	.pcs_misc	= 0x0e00,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+	.tx2		= 0x0600,
+	.rx2		= 0x0800,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4_20 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1200,
+	.pcs_misc	= 0x1600,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0x0200,
@@ -1949,6 +1999,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5 = {
 	.rx2		= 0x1800,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1200,
+	.pcs_misc	= 0x1400,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_20 = {
 	.serdes		= 0x1000,
 	.pcs		= 0x1200,
@@ -1963,6 +2023,8 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_20 = {
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v2,
+
 	.tbls = {
 		.serdes		= ipq8074_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
@@ -1988,6 +2050,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= ipq8074_pcie_gen3_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_gen3_serdes_tbl),
@@ -2017,6 +2081,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= ipq6018_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq6018_pcie_serdes_tbl),
@@ -2044,6 +2110,8 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v3,
+
 	.tbls = {
 		.serdes		= sdm845_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdm845_qmp_pcie_serdes_tbl),
@@ -2071,6 +2139,8 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_qhp,
+
 	.tbls = {
 		.serdes		= sdm845_qhp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdm845_qhp_pcie_serdes_tbl),
@@ -2094,6 +2164,8 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= sm8250_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
@@ -2131,6 +2203,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4x2,
+
 	.tbls = {
 		.serdes		= sm8250_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
@@ -2168,6 +2242,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v3,
+
 	.tbls = {
 		.serdes		= msm8998_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(msm8998_pcie_serdes_tbl),
@@ -2195,6 +2271,8 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4x2,
+
 	.tbls = {
 		.serdes		= sc8180x_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sc8180x_qmp_pcie_serdes_tbl),
@@ -2330,6 +2408,8 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x4_pciephy_cfg = {
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4_20,
+
 	.tbls = {
 		.serdes		= sdx55_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_serdes_tbl),
@@ -2446,6 +2526,8 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x2_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v5,
+
 	.tbls = {
 		.serdes		= sm8450_qmp_gen3_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_serdes_tbl),
@@ -2481,6 +2563,8 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v5_20,
+
 	.tbls = {
 		.serdes		= sm8450_qmp_gen4x2_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_serdes_tbl),
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

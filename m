Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58BD9EE49AF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvV/YQHX8pHKEbcNVfL+iiZzWmuT1K7f9em0LAJ7TTI=; b=d6i5HUZ6M+3mHP
	hpDHN16nNA++lhCRzOYlejvj3v7epfP8Wl4Mgx88tSRpkhKwde+D1OIKfQ6hmfKqbBxosaEIz4hSI
	Y8mZkudyoAIeUk830pg+akSTPi+RwYMkJgcNWtFhdIgLcKejcQJIsv9+bgagekuOahABuHSmwcjp2
	FQOog0GADTEVxXU8K65sCzqaWufhxk3cdScX5dxkdd1lNR38CaCVOVNp+luspzJ012B8UoWrwt1C5
	GhSLIhVnLMA6csGnhbspFm0+8pYPnBBnZP37XPMfXSyA0w6fWCWrPquNeCv/cTss/J89r5zdQlcmm
	OOzj6PGd8nYOBTbjYo9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjr-00Cjoc-3C;
	Mon, 21 Aug 2023 00:25:47 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjo-00Cjk4-1P
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:45 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b703a0453fso47856601fa.3
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577542; x=1693182342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oeyhlBcYF6kNyxOOHtFnOfb9CYrap2bu/TWYuUuCiA8=;
        b=noPH68PhoAP11M2uoW/s9Li/Fv0D7+kTLM0YY1kv5oNdmbqVEIF2GZAq4qv0pLWLsT
         dhY9j7D35ourJz6t6giLmlCAcBu0700jOK6j/e97n1+9MYdcrhvMvAq5aHtC6uwxu62d
         qYEPdmFNjJPNFXR/3+dycnD0djrSPsikeA48UzV+VF/aNBcffNRTScyOl5fpJcJ2fsoQ
         FFd7hK5k7AUP+e0joHzRVE0W30bld6s795ZN7wXjN3Yp8Z/T9XzZnaXexVrd1pVNC1qZ
         9CF3mzlzuxS6ZqTNYz0KDOeO9uCgM5gdAyImuuCvx1LMcsE0YllXzgjjwSqPPh2ZruyZ
         Q/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577542; x=1693182342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oeyhlBcYF6kNyxOOHtFnOfb9CYrap2bu/TWYuUuCiA8=;
        b=YBXneEUm0vJ+ioQf3H521Fv/cVFNvodzZwEPmcWi+Q5+mCdtg6uvbcQZg2fKSiESTL
         PgXht6qL4md23qcfXyXRhMTPM59Ce8dtQyM+u3o0zUAI2UFhonF2I7hg8M3u+Axnp57j
         nDRUTbCn2/fFsnhV2J47sgrPjOing8sjLHb4D8jT3UI/WvM5KvYr0uk41LRTD7UlOaFp
         xiOigR8hJfiGKpJNQgZTGsSuv7ZC6urUGlglrT9BASavmvLTSVdKkPMdKTCK14lXxuJa
         edMB9QW294JKAr/0SNNpeIuhNnKvKq4I8RAjD6D06b/dCV991ckbrhFgRS4oRnP5CbJR
         Z5XA==
X-Gm-Message-State: AOJu0YwUd5adpomHW9DWxp4NUFkL9ErytrGc/WjY5GI3c7Tk0G6i2eYz
	BCwBjuWK9Ds88H6a8GZPQUVV3Q==
X-Google-Smtp-Source: AGHT+IHg6Zt9h4F5UhUCd1cOSxojRqd3DTW+Pc9tnEdz29x0o5lZdxvLCfFvCH6l/wQ9IgLf1i16ZQ==
X-Received: by 2002:a2e:9e09:0:b0:2b6:dac0:affe with SMTP id e9-20020a2e9e09000000b002b6dac0affemr3876779ljk.31.1692577541973;
        Sun, 20 Aug 2023 17:25:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 06/16] phy: qcom-qmp-usb: populate offsets configuration
Date: Mon, 21 Aug 2023 03:25:25 +0300
Message-Id: <20230821002535.585660-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172544_472112_4304F0DA 
X-CRM114-Status: GOOD (  11.76  )
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

Populate offsets configuration for the rest of USB PHYs to make it
possible to switch them to the new (single-node) bindings style.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 41 +++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 42a1a3f00759..2a094f2345f0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1280,6 +1280,13 @@ static const struct qmp_usb_offsets qmp_usb_offsets_ipq9574 = {
 
 static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
 	.serdes		= 0,
+	.pcs		= 0x600,
+	.tx		= 0x200,
+	.rx		= 0x400,
+};
+
+static const struct qmp_usb_offsets qmp_usb_offsets_v3_qcm2290 = {
+	.serdes		= 0x0,
 	.pcs		= 0xc00,
 	.pcs_misc	= 0xa00,
 	.tx		= 0x200,
@@ -1288,6 +1295,14 @@ static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
 	.rx2		= 0x800,
 };
 
+static const struct qmp_usb_offsets qmp_usb_offsets_v4 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.pcs_usb	= 0x0e00,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
 static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0x0200,
@@ -1299,6 +1314,8 @@ static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
 static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_usb_offsets_v3,
+
 	.serdes_tbl		= ipq8074_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_usb3_serdes_tbl),
 	.tx_tbl			= msm8996_usb3_tx_tbl,
@@ -1333,6 +1350,8 @@ static const struct qmp_phy_cfg ipq9574_usb3phy_cfg = {
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_usb_offsets_v3,
+
 	.serdes_tbl		= msm8996_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(msm8996_usb3_serdes_tbl),
 	.tx_tbl			= msm8996_usb3_tx_tbl,
@@ -1385,6 +1404,8 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_usb_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_uniphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_uniphy_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_uniphy_tx_tbl,
@@ -1403,6 +1424,8 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_usb_offsets_v3_qcm2290,
+
 	.serdes_tbl             = msm8998_usb3_serdes_tbl,
 	.serdes_tbl_num         = ARRAY_SIZE(msm8998_usb3_serdes_tbl),
 	.tx_tbl                 = msm8998_usb3_tx_tbl,
@@ -1419,6 +1442,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_usb_offsets_v4,
+
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
 	.tx_tbl			= sm8150_usb3_uniphy_tx_tbl,
@@ -1440,6 +1465,8 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_usb_offsets_v4,
+
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
 	.tx_tbl			= sm8250_usb3_uniphy_tx_tbl,
@@ -1461,6 +1488,8 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_usb_offsets_v4,
+
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
 	.tx_tbl			= sdx55_usb3_uniphy_tx_tbl,
@@ -1482,6 +1511,8 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_usb_offsets_v5,
+
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
 	.tx_tbl			= sdx65_usb3_uniphy_tx_tbl,
@@ -1503,6 +1534,8 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_usb_offsets_v5,
+
 	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
 	.tx_tbl			= sm8350_usb3_uniphy_tx_tbl,
@@ -1524,7 +1557,7 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.lanes			= 2,
 
-	.offsets		= &qmp_usb_offsets_v3,
+	.offsets		= &qmp_usb_offsets_v3_qcm2290,
 
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
@@ -2078,8 +2111,10 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
 
 	qmp->serdes = base + offs->serdes;
 	qmp->pcs = base + offs->pcs;
-	qmp->pcs_misc = base + offs->pcs_misc;
-	qmp->pcs_usb = base + offs->pcs_usb;
+	if (offs->pcs_usb)
+		qmp->pcs_usb = base + offs->pcs_usb;
+	if (offs->pcs_misc)
+		qmp->pcs_misc = base + offs->pcs_misc;
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

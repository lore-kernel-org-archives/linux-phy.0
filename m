Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6719C7EE33
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooLvKgAQeMy5DTOxWmR3W8XhFuKQdILGMPA9ee57GiM=; b=0W16XUuYtYg2YF
	GpqQOJotKlwJZnhafuUrJKkYlXF1rURtiicZMUWncrHjkKOIy6XiY6mqb7x7oFwAtabNqYO74Tl7I
	v5tzOJuTokeTf74EPlIM54/sggeWT3vhHwGMdKX6isTTcCGc5/DZhehlVGcAOsukepG03lE4ciKFc
	Dfafld8MX5Nuu2XWABGyW6YNldJl5X67+8kHgW3Mb/UyJJWrpSnu2JQv+FPe2WvzqWgh0OufhGhHd
	LDRhvo2A//rrLIw1AAmvTKrHdkP8tp4lkHZKmiSz2oq5LSl2lqgLhvH6M4zcW0kaQlZ88hz0YhQN4
	0Sb83nqsVS5b/cc5oAPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfj-00ASaO-0v;
	Tue, 23 May 2023 14:07:31 +0000
Received: from mail-lj1-f182.google.com ([209.85.208.182])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sff-00ASVa-1J
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:29 +0000
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2af177f12d1so71501511fa.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850785; x=1687442785;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I68K3BB4iJfx3Xn7rbtjuQH5W+UC/hortCKGNEq34Zo=;
        b=xGczPVEOxj5TK8sFUdgTtaP289D8M968lk4WpW/rbaC19oN3W63WNxH9xMCeGPbsRe
         lXk7mR99FXDWSJ8mczu3gXkmcpBRonfAKKMfZvqTqZdJ2DsLF5D8b8RPRchW0PRT6wVg
         Vj4SCG18Fb7mZWqummeapp5bib7qX91sPjbopQOvPOw3ogubdGr7WpSVgrh1lH1fAZpY
         miXgOEEy1NxTheOXdeu6Cx1jcqS23RgUYdQ+z5h8m2tv03FgekiQJLzBFsTSPZ9+VNht
         FdVvCKxRZzePzuEHIJQXGZTLbgcjV+9T9mpNpZP7KuFbOs/4HwpPWI/ssBGeosgs/EpF
         P59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850785; x=1687442785;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I68K3BB4iJfx3Xn7rbtjuQH5W+UC/hortCKGNEq34Zo=;
        b=FRJWnQV3oeuyJ6+ji/2SLn5vrBYjC9BuN6vEAbpNLiNOaGqWtp8nhCRWBXqHQv0SOa
         bgIp2RymwNy/31olmJRlKTHgd9I+WzjyLJGFGtlI8R6zdHn3A3mC3eILJ0jNwofWpB9Z
         eQwTep9+VE28VgLI1D1aQb+X2BfVuqxjHCf//B8Z4HWztT+109n+kRnunBXKNyXdonMr
         4zdIOIuSx84REidY/QZ4ACszE69W+vl6rsQodyOCJlJbMdn5jxShKHSrIeLHU8+ghzOH
         3hLhGGIvMwM4VQWcPgA7oVPzpdHQlK3YQd4H7iEPKUvOtyACG5Vgc7KhGqHZJSGaiUfa
         Aicg==
X-Gm-Message-State: AC+VfDyk9hzDzwS0UsK+oRxIE+U+cBiERagoT2bdIYOhpv9ovXsQdg0K
	n8vc8tWp+LogqqkNFQD526UmjQ==
X-Google-Smtp-Source: ACHHUZ6/mAovC+w8kfwOqclTWdEbzxxpbdcrvCzhQwrkuGWAZ/+NZ/h/ceBmlSxpU4rb8b+KpRR9kA==
X-Received: by 2002:a2e:3612:0:b0:2a8:adc4:a928 with SMTP id d18-20020a2e3612000000b002a8adc4a928mr5216807lja.18.1684850785222;
        Tue, 23 May 2023 07:06:25 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 02/11] phy: qcom-qmp-ufs: populate offsets configuration
Date: Tue, 23 May 2023 17:06:13 +0300
Message-Id: <20230523140622.265692-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070727_450503_BC77FCA3 
X-CRM114-Status: UNSURE (   9.62  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 8c877b668bb9..d99dc1043f74 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -833,6 +833,8 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
 static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= msm8996_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(msm8996_ufsphy_serdes),
@@ -924,6 +926,8 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sdm845_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_serdes),
@@ -1038,6 +1042,8 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8150_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_serdes),
@@ -1070,6 +1076,8 @@ static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8350_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
@@ -1102,6 +1110,8 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_ufs_offsets,
+
 	.tbls = {
 		.serdes		= sm8350_ufsphy_serdes,
 		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

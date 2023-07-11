Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA696C001DF
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 12:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teOlwdzdo4H60yivWocxlXhZFdh2Ouydi2w+bFDbXC4=; b=HgzRHW/0bHNYok
	ZTpPSRyA0L4fVNXJhvGicx0r9amNbjWaKb/j0GS5Wd910twef5VrYzyCjBgZJBaodAH/57CE2oipH
	HgW352hKgEsWQzkiDEHzu8XlDAZ+u1i54j5X4CqGa1QAYQbCglSf1Bu3oVXuyQe/nKyljo9DVGKfu
	ghclXJRAbk2gM07g/5BN4AJGycjS+rQukAKSEIgmlPunvMzKkRJ90C9IJ3Joaw9y7vj4nz7JOhraZ
	KEHw58iT0ZTg0/xFHFANXr3yL/F4oglAfeC2uP6Qwb0n2HkOgvxEdkcuY3MXMfPlQ02xY1Z0uxPCR
	VowWUu/8fTFhDxGrB2Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBL-00Epqq-14;
	Tue, 11 Jul 2023 12:09:27 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBH-00Eplk-2n
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 12:09:25 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4fb960b7c9dso8943809e87.0
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 05:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077359; x=1691669359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sf+BXVXIsB1Vw9FbZaHYZjp79cgXPbbNpseEKS6anQM=;
        b=c/tblfOzWs/7ou60TgTLAD52NX+fgg2GxdcoOR6P5CPPefVoyqUUL6aK2P5yiW+HKN
         7Ouc1JMXcexdBVcuYnIK3Ai7lZ15DkHK3QSye8th25nPrMABE0xmLS0uWo2t0m7Q5j6l
         jxPWggsIHMEOizMtLBwRqfFBCYmLKlFaixVG5iSIyKaNkuCx2BPSn6CsHLcVxEBXbvP8
         SKpttjc4CKfiC9gplAqjh0EjoZUV+pLbJ0v9EDFD5bbX9XNimxJjfRdeOmSxjYw8DYvn
         tOtDERIJECopHAm7pLJWGR0FifX1fpIMd+aPVxyrLXrkQpJy6KNG1Xg55K20+kcrFrvn
         saJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077359; x=1691669359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sf+BXVXIsB1Vw9FbZaHYZjp79cgXPbbNpseEKS6anQM=;
        b=f8lTAHAbf8RXYgBHHD0ywnGordmEloJiBiTWfeFDgxYTXImK/5c/gufZ23gdJtq4+Q
         wGGTvzO7/WUkX65Mh10+TAxMariGlIbBj+14SgpDXhyithSswWa3BH0hN16fIK8mCgSo
         P5fYcT6FUeookTy3538J5Nhe5UapTRHdXViuOjlMHkEKMniSa0qU1EaHuAoVCdgix1lF
         r9WJvp4P0tCDoNHSO11vnjBRzPv1H1KwiT11V+jQ2kOhFOLRcmlt2Y8mpaUTpEMOBRat
         H6kzXJHOh2/VuI95kyeHYb7tILkvNQ/JQ94qEQvR63svZvK8b9McvBfOZ0q+LJH6TH/i
         yqdQ==
X-Gm-Message-State: ABy/qLbAcZu+Op7GzWRkBC1gPLDAmVJHCC5U1/Uz460GbYfrejI7LZ7T
	M39inH6Rt1ONpGP8IZLF1h9sLg==
X-Google-Smtp-Source: APBJJlH9JLWb2xYJD1ZDTW5+JgYW3aKZfNoFM3mxt5M8A3aNFF3fGuTKgCDF3fUOnYR/Jq83EvR4Og==
X-Received: by 2002:a05:6512:694:b0:4f8:68a3:38e2 with SMTP id t20-20020a056512069400b004f868a338e2mr13998017lfe.0.1689077359384;
        Tue, 11 Jul 2023 05:09:19 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:09:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 03/10] phy: qcom-qmp-combo: populate offsets for all combo PHYs
Date: Tue, 11 Jul 2023 15:09:09 +0300
Message-Id: <20230711120916.4165894-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_050923_906614_921040CC 
X-CRM114-Status: UNSURE (   8.54  )
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

In order to support newer style bindings for combo PHYs, populate
offsets for all Combo QMP PHY configurations.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 3a98234eb16a..7558a8407b9d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1505,6 +1505,8 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 };
 
 static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -1548,6 +1550,8 @@ static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -1591,6 +1595,8 @@ static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8150_usb3_tx_tbl,
@@ -1723,6 +1729,8 @@ static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8250_usb3_tx_tbl,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

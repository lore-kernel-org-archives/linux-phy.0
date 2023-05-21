Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EC47C77B73
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooLvKgAQeMy5DTOxWmR3W8XhFuKQdILGMPA9ee57GiM=; b=KXn0tJJ5D0rCB0
	S/hE0cJW+AAkTQKtQZa5N/95/4rSp+UUsg+8HLkzj3QcIErqJq8jCY8euQ+lQ3xP1VspwnOWkDgnf
	YxArM5Lo/cY4fNTTe7vnqZzcy2dz8aO+fl2PSdjlBU3yF0lBy4mrpfcMaFHX2zojzrKVoUMjfPttB
	D1bu6K4cEvzRxV+7Nf33v6ctOX8Qcs6RbuJgtS3udyvQ43vbulmd/b6GO8AAFmfGpEq3K7Y8nkeod
	DYGUkRa2GrVbmpJ6BHogdCasCBXgXvDAXArJotNXBn8GK3RcPgTQPibdNhE6XIYVHV+ZTmKgcZe9n
	rneKrokAcr8828RiLKbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qrW-004isI-0e;
	Sun, 21 May 2023 21:45:10 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppA-004cvE-00
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:41 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f4b0a0b557so285258e87.1
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701517; x=1687293517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I68K3BB4iJfx3Xn7rbtjuQH5W+UC/hortCKGNEq34Zo=;
        b=pj01oD/DhA4/PgO4feLJ8t9ehDOMDF2InPTck84lY5WdhFPA8dFrZ/0ZwtlIAfDSjo
         mqftDUnLAWtwLc03DikoKEJwHtpN8uHlV3AG1YNFrFhjnNwnrGua0dC/WYiQ4BvLwp1X
         zriZ3ePEj7338L1BODdoIY0T/530dQGyrKpPfVLFy9Eco0CbF1oZiloeo2l8iG7qVURP
         Mmm0NPimncaMGDJhA32BYjTzQlw8TJxGhqLuSAZySBpn04KAnO0Ul2Uv0x34d8Ja5IzY
         I+zHK4sAEIMe7l6focLM82i9Zr7tc/gpUeyjWT9HzhcIqcoBofD/dRjnl8xK7D/CYoqv
         IlyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701517; x=1687293517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I68K3BB4iJfx3Xn7rbtjuQH5W+UC/hortCKGNEq34Zo=;
        b=Ue2fszdu0PlK/dLx7s39HLmmrHnXm1KhHAB9jK/1b5qSw5L2TYo069Ie5bnZ5lGPID
         zGlc6O1seZFmkpuNc+54ujeHMFaJ/xeG6ou5Fb9mVnTvzrdpU47dt1jsyPH8oHQoV8m+
         XW8jmn602c+ASVFmcYldasGWGvbr0vz84ERczVqre7ZDGAuMav6Ldn2JP0iFYGirzyr5
         fwWRWOtjtE6PU0InakVNzvz5GHibyCEvu+ZZZskdjKZYC9VsdPAS0FYUQd6Hb4kBKOo7
         9gtm8R3x7Osu9R/z1A9XJXBJPG66PC6YCwBUi8HidUYHNT1hlP+SCYNJCkQce9e/UvNb
         inMw==
X-Gm-Message-State: AC+VfDyVnR7xVgswkbvJyO8SryOtI3UmczCo4Ag+X2I+thKtaX2kBlpT
	/BYL8YMxKhNQF1gvHzUOv+HhyA==
X-Google-Smtp-Source: ACHHUZ5hmXRPSqTfhQ9vTSq3nxEv2YfyIpbFxNUWDGxjmKUkje/zdKG3uQ4BUNrsBSYS4rZq2NX4tQ==
X-Received: by 2002:a05:6512:489:b0:4ec:9e40:e445 with SMTP id v9-20020a056512048900b004ec9e40e445mr2666873lfq.19.1684701517021;
        Sun, 21 May 2023 13:38:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:36 -0700 (PDT)
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
	devicetree@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 02/11] phy: qcom-qmp-ufs: populate offsets configuration
Date: Sun, 21 May 2023 23:38:25 +0300
Message-Id: <20230521203834.22566-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_133840_103236_AFC3D340 
X-CRM114-Status: UNSURE (   9.09  )
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

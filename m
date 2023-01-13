Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 426E3C6379F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 19:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BTcuLjEvQXl/+KA67ziC3qKvmFPSEoX98FPQ5PSKpWs=; b=12bIEA/DpCbOQ4
	wwvOweztUFU2uUfKmhXmZH4xFFJaWI4abvsPYTE0So+/eph/2e7GKMtb6dz1AtPQJXLL/JSLFnnYX
	uwTOH8Wj8NcCda2LdQReIYIvnVd6QJ5YWjIY5/thav72qzJvJ5dL0w843RRv2Cza9VrFbx77e1Toe
	UZyGfpOkXzTCO+2t6mGN/VIPvxhvYKTsxeafIrnRx9eT6NzQxoWcs/rKK1OVD5Di3uFTTzWP1uxsY
	hfahMKTgEq4P5hG8tyoLd03eFoU5Y6maL+Ay4pxi34jxVWJHXhi5rQ8NHDT//fN0stmswm7i+rmWT
	mDe7EiKgxr4slBnlTmKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGQ97-004H8n-Hb; Fri, 13 Jan 2023 19:55:25 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGQ94-004H7T-Tf
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 19:55:24 +0000
Received: by mail-lf1-x129.google.com with SMTP id f34so34538202lfv.10
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 11:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9oeSZuMYd3LT/X1OwhODYATjxB9rKtWVz8sj+tiVyDM=;
        b=s8Xuhkn6J3YR0r9ytJG+bvRtWlfjL2HMGuRaAs7PZNcUpwIMe6Mkfz+O/BB+Z8F2K8
         dV4bTJGmPEd3FqaEXFxmv8jlSymaPrpacDLL0NUpZcYz5GP2K8eOg81cvlf3m8kjKJc9
         wHS9RnQojaU1392xafWiYvzGJG5VLgOhr0kxnF+nL6Q8FDZRCWMXgUnGYSVksR4M5ay5
         Din/RF1J/fNsTY0gy74uvfG0zy+XyoomPAjSP1/fgZVt/UZqdBpNFNqZ6wZ3L/c53bDz
         tAGmHwwoyMu04kg+GanVStuBJ/Y/Os9e3AwR3UVUw++K6x0zX7NLEryUNZnJp1wPj6A1
         SMIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9oeSZuMYd3LT/X1OwhODYATjxB9rKtWVz8sj+tiVyDM=;
        b=r8GYYHUsJExiD1U3JFmNvaTj5S8nFca9qcwKXUyKywG1wDJ3JQ9y1IkYrRBnuahjpb
         W1ZXjduu84HU5EBNwxqPPvyAd6d0YNnpdoAQrSeHpYwdgpBQR24bApSnLzpy0PJ3kFRt
         NhlduI+zxqXOyfDnnyWJkKgno4nsySgPwWiFqMU5dYRISo0EGPy0MT7C5XwcjAXuF+Ob
         iFhi8JRhYFbYP1oyurAqnIJ4CiaFnxfoBlU3kjLFONxwrEXVB6D/wiAdesV3/wyAlOPN
         gtSf0M6YPVdeTG79VhJFFv+3fkRK7GxCULoHznnbsHguPk2bZy2qpEF9NRy0jOHGHjqs
         QTDw==
X-Gm-Message-State: AFqh2ko5/npLaSxiq6zzymfNeH8QKdZXxZEhhT95RXBpMHhkdAxESrPY
	J82GqU9OHkVAdSagOZZirIIEoeJmMSRR2xgSTxySAw==
X-Google-Smtp-Source: AMrXdXtOMhPcxZbViTRDR5rm438/yzfLeEWOC1d3C55CfWj1jPzEPgX8IGxx6d72TAe3R8s8COhfTQ==
X-Received: by 2002:a19:8c51:0:b0:4b6:ed1d:38e9 with SMTP id i17-20020a198c51000000b004b6ed1d38e9mr316540lfj.64.1673639717301;
        Fri, 13 Jan 2023 11:55:17 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q21-20020a0565123a9500b004d272bf56b5sm193904lfu.223.2023.01.13.11.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 11:55:16 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: qualcomm: qmp-ufs: rename qmp_ufs_offsets_v5 to qmp_ufs_offsets
Date: Fri, 13 Jan 2023 21:55:15 +0200
Message-Id: <20230113195515.407866-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_115522_978978_07C300AF 
X-CRM114-Status: UNSURE (   9.16  )
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

All currently known QMP UFS PHYs have the same offsets for register
sub-regions. Instead of using qmp_ufs_offsets_v5 for older generations
of PHYs, rename the offsets struct instance to remove _v5 suffix.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d2f3cba625b8..72eb37669e6c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -625,7 +625,7 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
-static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
+static const struct qmp_ufs_offsets qmp_ufs_offsets = {
 	.serdes		= 0,
 	.pcs		= 0xc00,
 	.tx		= 0x400,
@@ -658,7 +658,7 @@ static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 	.lanes			= 2,
 
-	.offsets		= &qmp_ufs_offsets_v5,
+	.offsets		= &qmp_ufs_offsets,
 
 	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
@@ -698,7 +698,7 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 	.lanes			= 1,
 
-	.offsets		= &qmp_ufs_offsets_v5,
+	.offsets		= &qmp_ufs_offsets,
 
 	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

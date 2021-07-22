Return-Path: <SRS0=SrD0=MO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FD87C6377B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 03:09:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F217D61221
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 03:09:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F217D61221
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UdXtCBGwDxGV68TChaRQn/12f1XocpSlbKeFM28szpg=; b=JdLwSBA/rMhjTh
	c42pXTNEpRxwtMRN0IlAnskuntCT9BneqTpniwPaxKEhlIjb5tKPFKBMbTnYIO5eBfiLIribUVWYl
	Sox5Ul2bHAQpI7w6CtZQIWRw1N8P96+3l8c3fr76C+f17id8nfnvPxecHH9qPDKI5kT5ACdLmPByd
	6bl8JgrSvwjTTTvZpj+6ibcgPSpf0SCctKqfTJaeErSIvzD/lhQWtglnsirtIFXiTt+CsitrvjQ9c
	ER/HE8IwT/E9xHxhmjRrBPpAbplxiqaXnWjPFo21MtvvSTX2ccg+C7Zw5HfJ5ue0JiQHeZH5l2frp
	PGQRkQWys/OXyFdykRnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6P5S-0006BF-FX; Thu, 22 Jul 2021 03:09:26 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6P5O-0006A1-Uu
 for linux-phy@lists.infradead.org; Thu, 22 Jul 2021 03:09:24 +0000
Received: by mail-oi1-x22a.google.com with SMTP id a132so5133960oib.6
 for <linux-phy@lists.infradead.org>; Wed, 21 Jul 2021 20:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HRxzdd2cU7TP9bQqkyvQP8mNDhcOMiq0kQRkrXwpMGA=;
 b=TXmr/lgi204QkWG+FfHEX0vyriVt1FZRxWyDpqRqBBz79fVsD+ov/vOCkb/OM0ew7x
 BqnljLROkw9X90VtrP8cJbTNGzvsWpEVRQtgBZacB7j+le0LPXH3fE88KzL+zBBwehmc
 /Mf8lQvkMowAe25kBVoC4Bs9K4sJFz9vVE+/xFROPVezM1wbfe5LJUtasHo5hENZ9yGd
 ezvp8GoVaQGx8Syd+SDHjJ2VG0gZcjCSlYRMg47S+ksVp7rcTpfmzd8FSX4gnRSdHOum
 iA+6wf/ELim3n81a7+yry7F2YhqIFTPpiZTJ2FWKINrA1YcDuk3MaWElmu9nBb+GepWu
 eFPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HRxzdd2cU7TP9bQqkyvQP8mNDhcOMiq0kQRkrXwpMGA=;
 b=Bgt3PgjpgTqXuzF8wJ7Xge2O2JhAfPuNJm7hPqFqE5fk32rBV7jiwZxmdmyKGf6h0V
 xi728B1Pu6VHg5Yl7ZB0RtkrD1Ll9pGA9FrI/TFDSc05D7CxUDv4+5KbcJDKVAj5Rfdw
 JfhUf3kK4JAyniJy9hvNO2Oz6o+F2OJmIkzKd5Y/aKfKYlmegRQ7N/HgtIaVeNvwX8b9
 6qnh9lARis6D4ZQg1EYmQXkA8ExJ4OE2csa2vkhTLNkXJ+iY0sxBy1YxfWS4Bry+0fZg
 xDdWbruBXU/WG6f7ATERfiyeOYHYYwzqsyFfAX+khquYDg/YLSJ2zBHg1RPkc1kNr9qB
 bZwQ==
X-Gm-Message-State: AOAM533m+ARs9mKRjYLPCEmdRAZFau9pSuAgRjd6uJNJyD6RRldPzPFy
 MMIvPvpDLK3IuMMaX7tNGs7FUQ==
X-Google-Smtp-Source: ABdhPJyiHR6tqUP1L+4umx32f2vdjjcDm0+i3iT+RDo7C7N7HBVCkOR23PEO5rdRPJO+jJ8+eGy4+Q==
X-Received: by 2002:aca:5f8b:: with SMTP id t133mr4346676oib.15.1626923361903; 
 Wed, 21 Jul 2021 20:09:21 -0700 (PDT)
Received: from localhost.localdomain
 (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id v11sm2488909ott.68.2021.07.21.20.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 20:09:21 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qmp: Provide unique clock names for DP clocks
Date: Wed, 21 Jul 2021 20:07:38 -0700
Message-Id: <20210722030738.3385821-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_200923_040011_FB461D96 
X-CRM114-Status: GOOD (  11.24  )
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

The USB/DP combo PHY exposes the "qmp_dp_phy_pll_link_clk" and
"qmp_dp_phy_pll_vco_div_clk" clocks, that are consumed by the display
clock controller. But for boards with multiple enabled QMP USB/DP combo
instances the hard coded names collides - and hence only the first
probed device is allowed to register.

Given that clocks are no longer reference globally by name and it's
possible to replace the hard coded names by something unique, but still
user friendly.

The two new clock names are based on dev_name() and results in names
such as "88ee000.phy::link_clk" and "88ee000.phy::vco_div_clk".

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index b7f2e36d7960..61707d99a9eb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -5213,6 +5213,7 @@ static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_phy *qphy,
 {
 	struct clk_init_data init = { };
 	struct qmp_phy_dp_clks *dp_clks;
+	char name[64];
 	int ret;
 
 	dp_clks = devm_kzalloc(qmp->dev, sizeof(*dp_clks), GFP_KERNEL);
@@ -5222,15 +5223,17 @@ static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_phy *qphy,
 	dp_clks->qphy = qphy;
 	qphy->dp_clks = dp_clks;
 
+	snprintf(name, sizeof(name), "%s::link_clk", dev_name(qmp->dev));
 	init.ops = &qcom_qmp_dp_link_clk_ops;
-	init.name = "qmp_dp_phy_pll_link_clk";
+	init.name = name;
 	dp_clks->dp_link_hw.init = &init;
 	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_link_hw);
 	if (ret)
 		return ret;
 
+	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(qmp->dev));
 	init.ops = &qcom_qmp_dp_pixel_clk_ops;
-	init.name = "qmp_dp_phy_pll_vco_div_clk";
+	init.name = name;
 	dp_clks->dp_pixel_hw.init = &init;
 	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_pixel_hw);
 	if (ret)
-- 
2.29.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

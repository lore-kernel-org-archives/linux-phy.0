Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 590C0C05027
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bhacAQ6liS7vuhso0I9o/3jeMhwigMjnnMyECp9tRu8=; b=ssp9LC1LbKV5qh
	D/XTifEa33BSVsS4I93kV1pkpriKQ+bld5KwZhv7E5lTDvGe+Qo0Rmd0/IqrUlDD0QFBOmWQYC0F0
	WvK8T6gl8oiIYrIFtkIlXDTBew6P0LEAzcBAgM5U2074tp8AFFtJbOeENKB/S7GXWj/jbJm81FTS+
	4aLB+Ke8Wr18X2A1W6MgAnjPtNcwcF+77l7Bdn5zn8VWRYiEbL7s0TUVyvYaeNbb+TXxq1XbTUf1V
	JW20Ov/DgzwQp5Zv1TYfD/cS9TwnRD7zqIHuex6b8eNWr3Q69XX0MIGc5gq7CO8ACFeeLIlx+RGi3
	zo7hqIOS2AXerIAifvXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJvcV-00H2Et-OG; Mon, 23 Jan 2023 12:08:15 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJvcS-00H2EG-K7
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 12:08:14 +0000
Received: by mail-lf1-x136.google.com with SMTP id x40so17800276lfu.12
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 04:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5r1RWWmyZelW8ciLojcTUHVYQJpMERt0jy6Bio8UjhY=;
        b=lNjbFbUv7QFGjGr9tLAAkDAiVMiRIpalBuHXHX9HKKj4Gi+xLKd1FGb/GoaegoVisL
         VQWqq9Z2E1Nu5rTlAOFqcdOSe8gQ6k8Slzl838to6aIUxB4S4iDpS75NA641J1lU0C5P
         +htBqdP2g/1Sc0DAIKz5YK8IX/wmxi6kLvXp7iwIPWc324BDs34+Z9lbRsWPR2/q5ztS
         es2BU7lk1kiuqSHZE+65ORiYd8X1PX/p7aFgpbHfR0KDnLbO/8P/17YqTHbZMlv9n2jl
         6kEioLaauD3f3i303y4+Q6jxn7hZUg00Qlgobpu4yuRnJyS11tTHZwG7NHi5FkWkwNw3
         z5mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5r1RWWmyZelW8ciLojcTUHVYQJpMERt0jy6Bio8UjhY=;
        b=YwB/WdmdAuB0+EurrEVulFhzbahO7IvOPCCuG44Mh3DvnT9wdCIN3LfeW+H9tESFeP
         rfRdUUGC+MGAJ6e/q9tW/ADuLEFiUi+IpqK3pIcXT8tc9dXMu82sPUSfluB8nuP30jat
         /w2fcfBP2zdnnwjktMDXdBtmeMav8aaoWIBdFEng03QtY3ipeu47hD+zXscC76chRyOD
         7lHoo9rR9Es/LwmgkeL5Pbi4a/bn58z2DlghzKMMYKZQvbr7fq361a4yb2oOismRpFIQ
         Y08se8hxRYiLKOLzPN5OdI0XsZelzBAihuDpjrKwGUtyNAM4UKzCl5E/MdNyGAT6NZC+
         YWMQ==
X-Gm-Message-State: AFqh2krtziwVgOwVnuVxa0D6o/4R4qb1EUbHF/6Q89wtAwhWrxFsqY6p
	7EWQ1etazvtn4L09iXGV4GMNOQi66YAfTl++
X-Google-Smtp-Source: AMrXdXtpQST401RG/1EsTOF0LomgSYPyj18Cx1+eQ2yHiNLFVYKo4k1GY1MmR9WgjVB6CG8rnZ9DzA==
X-Received: by 2002:a05:6512:3988:b0:4ca:fac4:5a34 with SMTP id j8-20020a056512398800b004cafac45a34mr6816378lfu.61.1674475688850;
        Mon, 23 Jan 2023 04:08:08 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t24-20020ac25498000000b004d39af98b04sm2588486lfk.19.2023.01.23.04.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 04:08:08 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] phy: qcom-qmp-combo: correct DP register offsets
Date: Mon, 23 Jan 2023 14:08:07 +0200
Message-Id: <20230123120807.3101313-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_040812_769782_818DF57D 
X-CRM114-Status: GOOD (  10.37  )
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

Correct DP register offsets used with new DT bindings scheme. First, DP
TX registers reside in separate regions, not in the same regions as USB
TX registers do. Second, correct DP_PHY region offset to follow the
offset used for earlier generations/bindings.

Cc: Johan Hovold <johan+linaro@kernel.org>
Fixes: 83a0bbe39b17 ("phy: qcom-qmp-combo: add support for updated sc8280xp binding")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 1f022e580407..c6634f92de19 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -807,6 +807,8 @@ struct qmp_combo_offsets {
 	u16 usb3_pcs;
 	u16 usb3_pcs_usb;
 	u16 dp_serdes;
+	u16 dp_txa;
+	u16 dp_txb;
 	u16 dp_dp_phy;
 };
 
@@ -984,7 +986,9 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 	.usb3_pcs	= 0x1400,
 	.usb3_pcs_usb	= 0x1700,
 	.dp_serdes	= 0x2000,
-	.dp_dp_phy	= 0x2200,
+	.dp_txa		= 0x2200,
+	.dp_txa		= 0x2600,
+	.dp_dp_phy	= 0x2a00,
 };
 
 static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
@@ -2639,8 +2643,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
 	qmp->pcs_usb = base + offs->usb3_pcs_usb;
 
 	qmp->dp_serdes = base + offs->dp_serdes;
-	qmp->dp_tx = base + offs->txa;
-	qmp->dp_tx2 = base + offs->txb;
+	qmp->dp_tx = base + offs->dp_txa;
+	qmp->dp_tx2 = base + offs->dp_txb;
 	qmp->dp_dp_phy = base + offs->dp_dp_phy;
 
 	qmp->pipe_clk = devm_clk_get(dev, "usb3_pipe");
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

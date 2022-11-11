Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EA4CC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Du6yiVgzEYxb9ujn3qc5PSq7JeFlm+LVZPPEJUOYV0Q=; b=pzyBqqjfKGA9pi
	J37o30uDjapxR/WDFJ/ZEBRMLjh8BFheO7J/uDh8kMK4NSYp4Jsv+qQbi1DxnclqKUK32fuM+BmWi
	N5sXX1wtd4uvMu41eB1B9KB8A9lpyq9JmGAGKrlj9n4HHvu50c4n6Ju4a+IZp9KKcMRRnjdg9lyNQ
	78SBI2BMPLj+85CTadtqdvoFAGbN9zVgIKHI6kn2+QBDNqALRU3IFkAjXHhViRaXxcg5VytKRfpcK
	LZp7+KKQBA1nk6zF6IGGlyJmmsYzPEHCh3Gy7tzySkoc7pj0Um8Yo2HxNq30TgywSp1GpzjCNAA/u
	dS/1fclGX7nMkG6NHvBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPen-00EIXf-8L; Fri, 11 Nov 2022 08:45:01 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPej-00EIUC-HE
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:44:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C1243B8245E;
	Fri, 11 Nov 2022 08:44:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6260C433B5;
	Fri, 11 Nov 2022 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668156293;
	bh=I4u+iA9wG+mse/x7qapE0EwSlmwdaRWKqs47dh11hNs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LMsnzaTo8wn929aBHWk99K0FyRSzj+oelLX7Pfj+NXjWhRvgrsskrqaXuZZTHAfAd
	 Zr25+FET+uCUswqjZLmkQ1WTcppq4Obgu+7RYbezg+obKgo3rVwWCX1YCcQWcv1vt+
	 umhAUZM9WBPy+5CCgJL8huMIMPEYis4JilKab0cK7+sKXpqh9NgPi/21R/xFLS83Lm
	 B886jhZG+aZQdkr30DTcNzH4m/78ShiitzIwTCTU5FpP9ZdVYJFNuT3xvayLcnz/wA
	 47s4xxmSoeFB78oz3oI/DYhcKCkkdfyuhJ2wqgykwC9qTkaW5BJei1Q8qV7e+GZyYz
	 EcjRRC/WVKm6w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPeD-0002Mg-JA; Fri, 11 Nov 2022 09:44:25 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/6] phy: qcom-qmp-combo: fix out-of-bounds clock access
Date: Fri, 11 Nov 2022 09:42:50 +0100
Message-Id: <20221111084255.8963-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111084255.8963-1-johan+linaro@kernel.org>
References: <20221111084255.8963-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_004457_775359_8DF80E47 
X-CRM114-Status: GOOD (  12.18  )
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

The SM8250 only uses three clocks but the DP configuration erroneously
described four clocks.

In case the DP part of the PHY is initialised before the USB part, this
would lead to uninitialised memory beyond the bulk-clocks array to be
treated as a clock pointer as the clocks are requested based on the USB
configuration.

Fixes: aff188feb5e1 ("phy: qcom-qmp: add support for sm8250-usb3-dp phy")
Cc: stable@vger.kernel.org	# 5.13
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5e11b6a1d189..bb38b18258ca 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1270,8 +1270,8 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
+	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

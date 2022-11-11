Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06C55C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+4QIRXtvlM7hton7Cf16x6bIksROcD6SzJtIabkRpg=; b=hmV7FAXeDKCTz0
	mU3rARzdM8Pt903dVHQfPpxhwy6lrpJVx47JPr7CfeG20yreKrwXXaM4NDKrOFQXyCtJqvLqB8GPf
	9FaJqBlEWHNa/+Tq62BKiRSUehwQbUrQaPPzJQLqrtll/cBk8+oaLMgbTcjpSPK3WLCvkIhNUumAW
	kVZcvbj87X7ZpWYFHeldKPsnTkHRznjJA6Z3Rl73A3A8ToeCWSOe4q0lKEJN1pMFgDDxW38iopt4R
	Wtsc7qs07uXBlJIJxoeBtTgoV/IN+fUdrbWqOC38aye7mxtIB3pY9JLoopF3Wt1ixPfw8I8n3kOI7
	Zips+Yb1F3d0QgkYPj9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZc-00EgHH-7U; Fri, 11 Nov 2022 09:43:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZC-00EfvT-5A
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:43:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9868761F19;
	Fri, 11 Nov 2022 09:43:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BF55C4347C;
	Fri, 11 Nov 2022 09:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159796;
	bh=NPLRtc4/Xi9APO2NAgfGkGH+wyMbp8HKKo8ZM8BktiM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SmTC1BBmrJxXcYYRf0fP3bXS4z3EM0EYWeLP9UXr0ulim3nf06NrmRvF0HfJ766kw
	 Krzq1iH5aamZYtsRKqYQys8BlObh/bzCX2qSY3SFPTXmlaiYqtcWG87lhR24fM8sP0
	 5gNN2VHtaOnvBJQpxwSYonvdk/s6oGfLO+0EbBxTJWLXmR910uSHEki/mEYO9Xw5oV
	 eH3jhao8g3WxHqBVVdYmZjD2SXW3hml5ViNpgpCQUUYuRIfUx8KULpVyiRy41cGTth
	 oMA5bB0MpqmKi9xbz5TTUdIyISQR34+nr8/uPuPFVDFjEmC65DzU+7Hc6sajR09qgC
	 VjiwEg8w5zU8g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQYi-00030d-I4; Fri, 11 Nov 2022 10:42:48 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/3] phy: qcom-qmp-usb: drop redundant clock allocation
Date: Fri, 11 Nov 2022 10:42:38 +0100
Message-Id: <20221111094239.11547-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111094239.11547-1-johan+linaro@kernel.org>
References: <20221111094239.11547-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014318_259456_EB592990 
X-CRM114-Status: GOOD (  13.36  )
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

Since the QMP driver split, there is no reason to allocate the
fixed-rate pipe clock structure separately from the driver data.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 8b111b7087b9..27f2398ebf08 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1485,6 +1485,8 @@ struct qmp_usb {
 	enum phy_mode mode;
 
 	struct phy *phy;
+
+	struct clk_fixed_rate pipe_clk_fixed;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -2357,7 +2359,7 @@ static void phy_clk_release_provider(void *res)
  */
 static int phy_pipe_clk_register(struct qmp_usb *qmp, struct device_node *np)
 {
-	struct clk_fixed_rate *fixed;
+	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
 	struct clk_init_data init = { };
 	int ret;
 
@@ -2367,10 +2369,6 @@ static int phy_pipe_clk_register(struct qmp_usb *qmp, struct device_node *np)
 		return ret;
 	}
 
-	fixed = devm_kzalloc(qmp->dev, sizeof(*fixed), GFP_KERNEL);
-	if (!fixed)
-		return -ENOMEM;
-
 	init.ops = &clk_fixed_rate_ops;
 
 	/* controllers using QMP phys use 125MHz pipe clock interface */
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

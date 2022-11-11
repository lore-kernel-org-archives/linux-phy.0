Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A7EC4321E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlrAlwrPaEjRHeMU7/KqP3TFQkkdbUoF2BmJ5gx3n/E=; b=zGQKRU9++RCsAO
	EbU6MiUT62SuGTajlcxIN1tDi/nOELR10ldcctYfaRCgksCyBF6nONZioWwlz88v2pIhrGnX0cBDh
	emZLrnZxUu9MvmHYzfvudl9V9aWQO6VHHl2adXW9wrKWNADt8REggcqZkIkj/+h0y9bJ1Q7GyrlTo
	c50LwjttUlzNQz6LK9eJv6pNUWoqdhWR/wT8i2+SLYJaExQa87Qbc9i2xP/mTwj5b5wm0wVg82O18
	WLIq8akBu5pya8GOhcu0F8/woFTXXxzCMt32NSAoyV2jegjPdkoLPmt+Z1dzpFsXVl2MeVDf4tIoL
	YSxc1XzYw5At/Awj3saQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZd-00EgKo-Sv; Fri, 11 Nov 2022 09:43:45 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZE-00Efwa-5H
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:43:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BAD42B824C2;
	Fri, 11 Nov 2022 09:43:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DF7EC43142;
	Fri, 11 Nov 2022 09:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159796;
	bh=TzRtDoyAfzMufPd65BGkX4pJ/DMl35ij09Pc1cMge34=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AkV9KHrhRaLPwJse3DLZBzlWclo57AXP2hdYhe7qInV7pfqF1KTZLt8OMfbx06k+r
	 o9GGULfLHoOYWvqVHiK/U//cKrOV5fQEIgyp82qL6bkblNQBoFr0UWNXpefv0i3vQo
	 UhF2MbjxzLtaebXZnrwmJWD3RRmzZcMEEUBXYlvKnpVPB0Uj+BRPBT7YvqxZpQFyVM
	 bE1LRoirVW/mSJ5d2+oiuKEcDZ8mucVDY5C9hRZ7fZiKu8BJGI6gdKRcyibQcdW9EW
	 TMLCzMJbtt+Hqv4Jl0/GqRZLjftDUwTEsdFe0ry78I9NZwRHxcmFN/4y45/JZd7qHM
	 3mbwPHT3w88QQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQYi-00030f-Kx; Fri, 11 Nov 2022 10:42:48 +0100
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
Subject: [PATCH 3/3] phy: qcom-qmp-pcie: drop redundant clock allocation
Date: Fri, 11 Nov 2022 10:42:39 +0100
Message-Id: <20221111094239.11547-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111094239.11547-1-johan+linaro@kernel.org>
References: <20221111094239.11547-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014320_403523_A71D9027 
X-CRM114-Status: GOOD (  13.58  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 328708a09c37..68cafc9561ae 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1546,6 +1546,8 @@ struct qmp_pcie {
 
 	struct phy *phy;
 	int mode;
+
+	struct clk_fixed_rate pipe_clk_fixed;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -2410,7 +2412,7 @@ static void phy_clk_release_provider(void *res)
  */
 static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 {
-	struct clk_fixed_rate *fixed;
+	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
 	struct clk_init_data init = { };
 	int ret;
 
@@ -2420,10 +2422,6 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 		return ret;
 	}
 
-	fixed = devm_kzalloc(qmp->dev, sizeof(*fixed), GFP_KERNEL);
-	if (!fixed)
-		return -ENOMEM;
-
 	init.ops = &clk_fixed_rate_ops;
 
 	/*
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

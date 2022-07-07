Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A67C19F55
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hqtP/JhU8Eu39+BC3vgMjQOl9AgN2l2hMdv/O78FuQ=; b=qoqi9qfsMppbuY
	10G2F42y8K0+Mlqgqn1tINEHi120qXhIrnxZnpVjckYcUdzlpGqLzptHhNOPYWfwl+8WuL6/8ILVm
	uL19qh8JwB6wwoN2O4kY5SxJUjBa2RkokjJrzxwce7+b63IIKEVv1e3JeLdSR2FCKa6eGTcJAU5oc
	IoIR+71e/Me94N0RE8/EeDg/3Lr6DPT0VXamHf8MrB3nfDHPLBd9OesMSIuA16Vu0d/nBCZe6wMPb
	PUyTXH8w83PXYlcLKN44Zq8EMhgS/L9gcXig74jYdrzbm0ZU0FE50f5306cJkxzsW8i0NaiMw/KGP
	l7NyFBEgn+wDulJ9n4cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrT-00GL4L-6d; Thu, 07 Jul 2022 13:48:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-00GKg3-7i
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E8E91621E3;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A257C341F0;
	Thu,  7 Jul 2022 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201661;
	bh=RG4rUjJxfIPALVIN+0nq0W+XZlRCL/Tdq+TIR6QNVeY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lIZhzUWvzl1/FYQB1UDfyDSr1n3InaRkRd8evXX5rKUfuPF57qWKlTQnoEukxMe5H
	 CwDqA6jNzpUXzok6oNe6AETnQRiwc0XGd/kWsv1BaoCuniKZVDRaAQPHcn1gVNuxsZ
	 XDk9JF8lEHZJOegPHRRUgnswPjauJB3UaU8TURgihxHkokbY5LpXZWY9R8MuVEBrpD
	 I6BAvcuLgv8c6T+U+WW7qNM+11L4cNN9eS3aN3iChF5wYoUCfVmJJRQrcAXkRnFVAf
	 gSzbX9VzC79Kt/MnNrN7euPvgDy92VYyqFOJJvyjSlcIUFU69gXbkV/fl4glZ3w8pM
	 250Yt6du3uWuw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr6-0000z2-5s; Thu, 07 Jul 2022 15:47:44 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 29/30] phy: qcom-qmp-pcie-msm8996: drop reset lane suffix
Date: Thu,  7 Jul 2022 15:47:24 +0200
Message-Id: <20220707134725.3512-30-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064751_402089_84743004 
X-CRM114-Status: GOOD (  12.83  )
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

The lane reset is defined in the "lane" node so there's no need to keep
adding a redundant lane-number suffix to the reset name.

Update driver to support the new binding where the "lane" reset name has
been deprecated by instead requesting the reset by index.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index af2f14a53b38..1734fb01955a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -909,9 +909,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 				     "failed to get lane%d pipe clock\n", id);
 	}
 
-	/* Get lane reset, if any */
-	snprintf(prop_name, sizeof(prop_name), "lane%d", id);
-	qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);
+	qphy->lane_rst = of_reset_control_get_exclusive_by_index(np, 0);
 	if (IS_ERR(qphy->lane_rst)) {
 		dev_err(dev, "failed to get lane%d reset\n", id);
 		return PTR_ERR(qphy->lane_rst);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

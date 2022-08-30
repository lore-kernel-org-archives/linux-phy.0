Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 944FCC6FA89
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKtsP1ZtHaYncss1Gkqqz2Uti+O6ey9tW3mBsVx9YMw=; b=3GAFO8HyCVbMKk
	6eXfmLzxvKVESwS6cgOh9j6yRZJYSzGlo8Bv6+dvd48sToxPQgWnIbNjgadM6MKydQoyfmKTtk2KD
	lAsZxiMmEqIPd25RsM3bLvyNMGPWsurTQXqzY8A2MIwFq6h6OlkeHkAE44s6r0XlYJjTZ7nh5j9WB
	qWDAsR8jmlOcwv+3kP/0jVYWJuaHXx/52pGA4x17wZ7hojuJuV6RKe5IVZ5H8qbBLS77o8xnXu+CR
	Fe4U+rl3o+xdpyS9+8paRd1AKU1y/+ipRcEoavQ1r4UEoA/DG+JqyK7jNU+nWAIFdSV794XI0bOO/
	HzBMxpuu8iwS/uwN7NYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRq-00GZn3-VY; Tue, 30 Aug 2022 11:30:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRf-00GZg9-5U
	for linux-phy@bombadil.infradead.org; Tue, 30 Aug 2022 11:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6FVealfPN3cxkqpolVK3mtJ0F5YJYOWPHrc8+wMPcAE=; b=haMzo11yvSG5x2ERFoGapZab4x
	e/s9OpQ09lTnTDAm7D3eVEpF0lfyNwfWwyBsdB4OsP08RATpqwx7GNS8JRWLNe446MNv4P/CCDGBE
	7CH/QWbU7ATaXN+jA6gSGA/AhDBL65nuA8s38UMixypDkZtn6UiZoaEU5R2pFKr2w+o35X5mGXYhh
	6xb+bHCsnASYfj/D5DQEDJQ4n59u2TN9LoYIaTp/Y34JkySZlyoI9gz+PalxUuX+oXiLka9RD+OIq
	2XsSiAcdeDZ/Wsp4HzzW+KUPHmsg3OqDnMVvVg+VLDvur57Yu9QFJI+IEZvsQJohh1TxWTKhghi0A
	7ODG3P+Q==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRa-007ozl-Ee
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AF9E461552;
	Tue, 30 Aug 2022 11:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3E44C43146;
	Tue, 30 Aug 2022 11:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859001;
	bh=rSg12kEuWS2O2FPCoPpZ3ZokcSUHOv1wererebey3pg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rxg6mR2devwTXYEMS7dUmNKKBexRyNFdB+fjFB1IqBOoZ/oRvAcfoz64FiFudgRov
	 Q9ZBqbWUYE5OeqzICbzN/t6yOnYEVc9usVtdSp0bv71WawUSsGlwK+r7rOyJF4LC1n
	 bOJRhduADe0QWkWkAwiQUjOkGwg4DbImiwKQx+aQ7AUwkwKi86tzHSNhZ04j9wsbK9
	 vuufSwQEykyaJdT6uUMiO4SPUbEa/zxiLcNUTWJ+DgKYGgMe5Zk22plwRcD9AM3tyG
	 issfTVOp/ameJSI+ARBYex/Sntc7BSgOMoJHlLFeEv6BX7hvcbAhkoVOHa5O1p+mtT
	 IiK3RFMpcmNXw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRP-00011A-AM; Tue, 30 Aug 2022 13:29:59 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane suffix
Date: Tue, 30 Aug 2022 13:29:21 +0200
Message-Id: <20220830112923.3725-29-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_123010_782945_55380A20 
X-CRM114-Status: GOOD (  12.67  )
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

The pipe clock is defined in the "lane" node so there's no need to keep
adding a redundant lane-number suffix to the clock name.

Update driver to support the new binding where the pipe clock name has
been deprecated by instead requesting the clock by index.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index be6a94439b6c..7b893c66cf75 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -892,8 +892,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 	if (!qphy->pcs_misc)
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
-	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
-	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(qphy->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
 				     "failed to get lane%d pipe clock\n", id);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

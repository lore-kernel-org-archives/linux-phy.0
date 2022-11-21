Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8528C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4VGPhDbbDD4LRh03x9rFbvIHZWfoUspq03QsIhUlco=; b=1GXQt+hfNusqT5
	J4cR6+/et5HVXvB77bUl2Yi87H0yVl9MmVIdd6+mkFjnhkjN7KyhKXmPqJwqQAVUsvjC/yS26AKSP
	unz/wEJReKLPfDcUOlqalE6pL4EGt5ZIGmCVVehtJo7pHdTi2fCK9oTulGJyrrEjag/0vIoa51RkV
	+MhEcKQGnMOzrdxtvz+O85Ge/oWBnMXybgTNSYOOZ/A2hJ0BipLE8OkZKVAFhpyH2XBQDjR0wsAxu
	giqvd00hZfv3zJTkElOsQw8ObhSvIgDsrsFFgQbwS0Ag+oDp4+0LIzMZoVrazNpMo3IGSiT2F6Y4G
	XrBEZ7sn1l06mJTPoihw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2XE-00BUmN-AM; Mon, 21 Nov 2022 08:52:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X1-00BUbB-8n
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:52:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0C71F60F40;
	Mon, 21 Nov 2022 08:51:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F30BBC4FF13;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020715;
	bh=S5xseugGMZk5s5FcsKTKBF2KLbZ80lWoZS12gqBQ1d4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gV77FZj3HmD3muBAP2D3gn4WplONtukbm/wFPKcKAoCZjx+5mQ6Ku2s49W17rsJMS
	 dY1yhcum1TAZD9YX9VYWldMz14noh0kNSwjOrIwDD/JptgPKkeVfELHuJEf3xOHWSL
	 h6apXcfivOGUGNLQx3pUl/eMfywTmSw/obX3RkvUg1Iv1DYoeShmgvhU/6XmEXT/YL
	 0omqchMQFLyBIwoCnyz7+SgDqVQ5HDdp7V7/rAsefkEiluVKsKhz5YULiiEjR0PKd3
	 8Lg7/x5kvbY60IIxiP633QQ4bfGIiP1eTyLkuztj5eS5MYp1u17O7zObU2mjdT2g90
	 EVoDTmEJiGdLA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WT-00088U-3D; Mon, 21 Nov 2022 09:51:25 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 08/15] phy: qcom-qmp-combo: add clock registration helper
Date: Mon, 21 Nov 2022 09:50:51 +0100
Message-Id: <20221121085058.31213-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005159_387811_B78DFC73 
X-CRM114-Status: GOOD (  14.72  )
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

In preparation for supporting devicetree bindings which do not use child
nodes, add a clock registration helper to handle the registration of
both the USB and DP clocks.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9b945a72ae9b..1079a16b45f6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2447,6 +2447,22 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
+static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *usb_np,
+					struct device_node *dp_np)
+{
+	int ret;
+
+	ret = phy_pipe_clk_register(qmp, usb_np);
+	if (ret)
+		return ret;
+
+	ret = phy_dp_clks_register(qmp, dp_np);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_node *np)
 {
 	struct device *dev = qmp->dev;
@@ -2606,11 +2622,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = phy_pipe_clk_register(qmp, usb_np);
-	if (ret)
-		goto err_node_put;
-
-	ret = phy_dp_clks_register(qmp, dp_np);
+	ret = qmp_combo_register_clocks(qmp, usb_np, dp_np);
 	if (ret)
 		goto err_node_put;
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

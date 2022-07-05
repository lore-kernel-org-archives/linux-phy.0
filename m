Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB224CCA485
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBHWcS1x9OHRI7XAYfjRVyM/ohEmLILpTPeuTe5IidE=; b=UKZ/xxNI7v7h+0
	ME7Xqyv657zm7BljmONr0kONfLBqUnPDbmuoX/85GUbtwbpsqgmg6BVU1/MkjCOIZZWXr86alDD3Z
	4O5mVEUcT3FSMzfAcM05PjljuauSqDqpvEGEGL8gm1EiXQoz5YAXlrqFlnSJ+MPl4oCqY2T5PUD2z
	rw6uu6+qDvthYHHxkA7O9AqViYApHyu+nXQUIqWGg2tluCrQyfOpm6mRICONIvoBtVPp9EePdHoQS
	F/1Wuwo4Sf2/qQUO3V3sYz6E9f6PTdWkEZWCzy2Z1b2g71K+Yqh7GDp6H0JtLJ5s+lUsp3BLgnl9d
	99AitnVbZxRPXkFNZ9NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDl-00GwgU-UB; Tue, 05 Jul 2022 09:51:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBF-00GuYX-O8
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 75DFC6195C;
	Tue,  5 Jul 2022 09:49:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C8F6C341E6;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014545;
	bh=piYlAksvw7TqXfZQBtDopHCTzi1zuCK2raNHXyFhjds=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UvDyJrBDF+nnK4WRhAi9c7EzJ6yH+8+ULJkW6bBBSzWTT+IJQ6IXqSuZ3ysOWiSzi
	 sAqfFk5Se02vo1SZc3BhY3M3V8e1ZRBk5f4rVZ7UNk2P+/N97pgaCR3XJOiR4oH9F8
	 PqAEoDXY88IrHCAKxJGILlxuO36OAbvPI4j/Y2piIC8S+cKha+8GlgwMYMv40aeBm/
	 C3Px2/jUYm86vQ6aAB0hDrLOBNwW1QVyPYyMM29R757bav9OWA5ajasu4k9T1GU8am
	 eKnYdRVrBEDAj9PHwhQR+nSbrZl0dZNrHDwsQQHw/8QPBaxvLkzBpniHUsZgasZiUD
	 yXKIN1Y7XZv8A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB4-0004bD-J5; Tue, 05 Jul 2022 11:49:06 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 43/43] phy: qcom-qmp-usb: drop pipe clock lane suffix
Date: Tue,  5 Jul 2022 11:42:39 +0200
Message-Id: <20220705094239.17174-44-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024917_946694_565BFCB0 
X-CRM114-Status: GOOD (  12.31  )
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

Drop the lane suffix from the pipe clock name, but continue supporting
the legacy name as a fall back.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 994a8232be7b..dfe7294a589f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2665,8 +2665,12 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 	if (!qphy->pcs_misc)
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
-	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
-	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	qphy->pipe_clk = devm_get_clk_from_child(dev, np, "pipe");
+	if (IS_ERR(qphy->pipe_clk) && PTR_ERR(qphy->pipe_clk) != -EPROBE_DEFER) {
+		/* Fall back to the legacy pipe clock name. */
+		snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
+		qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	}
 	if (IS_ERR(qphy->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
 				     "failed to get lane%d pipe clock\n", id);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

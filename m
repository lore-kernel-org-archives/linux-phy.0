Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C6BBC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kG0TKGrfHw/FvgM3DejLVPP1gWkPki8jID0tG8MRSws=; b=R5pEngW+PcC8NX
	AehCdhvwcJpUxWBlYpb+BXBgJcJGRrBx4Jro69gSZ6nfKZo906/PYqWy5Ox/VACCmQ7pu7jjbvb7o
	uDxeOWdnPWkG/3LHG3ZHQt1hcYRZXXoVbTwR7fJaiu57OLJIxIT9f1527LQXan1q4JOTLTn1yCnpK
	htp5DXXqwxQfLIs3uZ55YItOxD3fh8ZWYAmZ5jUbvyMvydhDcWS+NztiKbkw9s/Ujt/SSN2PnXHHs
	WrdUoqkptAoJJ7pit2+qxxI66cWs9hq4aJSvcreK8k1uJzp8f01/tZf7h6PENk0VuWeCfDPwWdzN3
	wlqaJyaLhncnNvuIWIgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDi-00Gwam-6J; Tue, 05 Jul 2022 09:51:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBE-00GuVw-IA
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3ACA66194B;
	Tue,  5 Jul 2022 09:49:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 565A7C36B03;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014545;
	bh=YMvAOoxj66wx3vQtLy6RtQ77bhpRxfXPIBlYHFKEAkM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DWSSxYGX2Rou1bXKSrmfSI3NcuE0Gv7nf1rQSkHzkSpx+XvreYDTiSCG9p1nQuTQ0
	 cttp0E9RR0tnw4KK1AJCG/oE2fIDw8ZZODUpiTfWjsFUx71ph6PICFImzxPEXxPvh2
	 kj9jxmaDD0tBYr9uBRzz+dIOfm017deDchFFQ+cOTL75+mzrIYMeRD1lorVC8RQOuV
	 Uow4IDe61D7+JHm5wVizd8vHUpj7xJAcnCIgdYHrV1r18/imE3pCOeI58syf9TcWeu
	 d2ISrjBxRsV7THQsVtiSfIr3mtdvUtO+N9R4p7ChHjWFr+HlwBeEKvIthlSJs7V4sY
	 e2RftCF6M3jlQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB4-0004aC-7o; Tue, 05 Jul 2022 11:49:06 +0200
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
Subject: [PATCH 40/43] phy: qcom-qmp-combo: drop pipe clock lane suffix
Date: Tue,  5 Jul 2022 11:42:36 +0200
Message-Id: <20220705094239.17174-41-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024916_662770_8BDEA1D3 
X-CRM114-Status: GOOD (  13.39  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b266514ae9ee..7b2eb234cfc2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2558,8 +2558,12 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
 	 * Otherwise, we initialize pipe clock to NULL for
 	 * all phys that don't need this.
 	 */
-	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
-	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	qphy->pipe_clk = devm_get_clk_from_child(dev, np, "pipe");
+	if (IS_ERR(qphy->pipe_clk) && PTR_ERR(qphy->pipe_clk) != -EPROBE_DEFER) {
+		/* Fall back to the legacy pipe clock name. */
+		snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
+		qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	}
 	if (IS_ERR(qphy->pipe_clk)) {
 		if (cfg->type == PHY_TYPE_USB3) {
 			ret = PTR_ERR(qphy->pipe_clk);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

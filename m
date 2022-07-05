Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E25F4C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 15:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjAQ0zOSW9N2VtovzHC4FhQoAt9q9ORs9tmq5us0aQQ=; b=WPzPAT0dOPSEDI
	mz4K7NQtHKLmZOL5RnlXbf0FO8yJWDvZmRa4nZozML6iAYohM4culGhHCTs2s4XoEeSfDGi31qWX/
	rdYp/ud8CEURPITgKgesbhWaYsFdfBX+QXh6CR+hBVFhLUALOzUpG5zaMFMIcVlCILdOuS+N9CXvm
	GRRoJyei6ymBjdkWxiANCdwESy1MKD2aGN8X+d5Wl0cmcPnUV5dsKyGDwboICgqkDdlGNnJAjDIs7
	foNfyA6CwM1SiLLRaae0briXO5BNrh8QTOy5Ra79lZwN4lfX3JEIQvCwIqofL9DPt3Pmj96u48EwC
	NuhvJLT2YI+C2PsDLWQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8kIV-00155Q-6q; Tue, 05 Jul 2022 15:17:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fNx-00H219-Pv
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mxQqEXHz6VHUkV9S5lcYf84phptWOGR6Bb01S+Wt718=; b=maQe56GX+IIzuMeCHrukXW0hTJ
	34P5mJ0izjgTGoYG9/3uAwcVqPNR944K2eyIf8XtSoA7+B7sGnKy1y/JAQwHlugDBuOCWeftPQHK/
	1829k4B8+dyrOqEcsLYquaIYLKaO+UnjRKwU3i7Zx8wiCvHC9yS6WavFvDlw7LlMmdjV1D2v15W6K
	FMpYl0TdpEcHqPLgLkQFPzTGtI4+mZstkDXHjCkIL/0dvZ7Qa3jjd1ZsIZpSwxeDQFhQaS3zJA3p5
	dwJyj+ivmTWT33tT+cT8Zcp3nvDdizipGMS0hMoTr7yCMmbiOmFekNhs4ZRJsEMIJn84uNFgVQ+Dh
	a/Aps3Qg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBG-00HV7Z-3H
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 49C8261961;
	Tue,  5 Jul 2022 09:49:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 603CAC36B04;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014545;
	bh=NnKadBX0uQiTIGEQh4rkH/Llkp6mA0RpNtPji7zBpeU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tlyS9sOoQRO/kQ5ohVioxfNPSqVrgkdSTSkqipO3BMGqGkAyNzvhUy2RLhT2VaAw8
	 yRTYtOUjtA9fuI4A/t07/JC8vnzKERS1h5JNxD/p7jTJWS9jErckovwRzHRyP+Ci1U
	 zntmJpOijWSWR0cWXOGZMn46MDJi3ncF1xpbTzvkMeaSYpAR91E6rFNzCDjL6inQTo
	 exr41COcpMTUhdbGtjMKOY9jBXQUYKrmPmfy18YceI/QkavQJP85WPfY/VI4IaA4Rx
	 DRPYsQ+iz3aosmh2F/UjrAE6WQ33w6giN5qeiEas68mSxxf0TT27pvmyCiQYxUowzu
	 3Uy1VXzKzkETg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB4-0004aa-CD; Tue, 05 Jul 2022 11:49:06 +0200
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
Subject: [PATCH 41/43] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane suffix
Date: Tue,  5 Jul 2022 11:42:37 +0200
Message-Id: <20220705094239.17174-42-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104920_767285_7D359F6D 
X-CRM114-Status: GOOD (  12.25  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 812d14afb5ec..b8481dab54db 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -904,8 +904,12 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
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

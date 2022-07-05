Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72EB4C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 22:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/uWHGlx/rTQZVlB4TSGfj+9Q+rsbX06DeuQVC27a0M=; b=iGM/A3HUTmAWcB
	ZrnoBppFMX5N/X7e/3OVJdA0t8o237J0e4mjgQOEX/m5h8ViTEk+yNcAMw38OKntVp3yf1kEL8swt
	qdpltkhguz8jRMgbMJyhWch4WQZdT/cCG9U/fvwlmf0Nm5zME9aWUWcVE0CKpOnGBq841JdwGla1z
	JQPDJcBlPi7ub4o8KKkRJ/kPon7i7MkjN43T0kfuvRLvpJdi3HqXx0F94u7djpGlDUPiH1LdpqFc9
	EoBsSeRJhExboelR2S5tk4SrfKsw28Vo1PnEiJbXB5KA3f+6Vdre8ZnnILWC2a9yhCSc8EGGUv8cX
	Dpnaga2+pv8drp3X+hcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8rLz-003IZc-OZ; Tue, 05 Jul 2022 22:49:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO1-00H219-AS
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LyZG814cLZUwWL6VWDbrXyUCApcvrncQqEb1pQY0yrA=; b=L8S0Ik61Nqn9Hf1ggD0j+RvXgW
	r2xK9lbEhQr/Sqf8bPAfrmRrlYZ4PKYwsl+5k6nzRXAyBbtTLuh7rXkE7vZgOuoPmoagZEsE545Fx
	Jjsp0qZOz4MCeRRcmVr/5BZbUQE1xr+QXAb5snu0/ewq7REQzS6A36GstqCbkvImH+SyAMv8TIgHW
	HeLz6g0TRX3Q0urM88J/FeaWrBowtqTN1AemzqKbtrlS2P3TosYIKNSs2uNtDTd4WKE2pSxPiJzWf
	6/7unp48SDjLtHJeJa3K2WM02mOK9+GjCtVUDllc/9YUmlLo+Ub6dtCGrKtk4HmMyEvwgAOkigacc
	cBMS/FKQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBF-00HV7I-Dy
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id ED4026195D;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 053BFC36AFB;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014545;
	bh=wcigz9eclfSlWhiIkb00jJF/UDQ56QYbAzKSS2z1YZ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kS5qxQ0WIivvIBz1ZT5ed8ga5vBNVzH0vvcvbnikOB18zbQ3Ahg89WGoDp2Hbe4Bk
	 DGXYq6wRxTa2OW0akV/vfoO28WjOHOmlTA9HKtJWfEJYE82znjn8ptSypyWH4gaV9O
	 4ja90ZV6zmc10StWi9rbSP2aV5t/ukUBE19BnvwtHn0fr6X+uhd5A1EYbzC9MWSUtV
	 64hcgg4ReNdLJvCj/HOhAAIyOptEZ9tfnwcy/pZG0tI3pKjiibuTHSskFguML9Cnbv
	 p7ZTot6duCOe1YhBYJaA3pO/44+4Ww+hZJWLCFeCm+bpUW4eNT0Zg/dZ5j7WqBsou/
	 JXo2cVUL8Md1Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004Yf-TZ; Tue, 05 Jul 2022 11:49:05 +0200
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
Subject: [PATCH 38/43] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Date: Tue,  5 Jul 2022 11:42:34 +0200
Message-Id: <20220705094239.17174-39-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104918_304846_193A0A1D 
X-CRM114-Status: GOOD (  12.16  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 385ea3d8de08..254ad25591b9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2210,8 +2210,12 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
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

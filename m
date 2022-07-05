Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21EE5CCA482
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqAmxbsPxsHXivEG1hnlVxK4IpeXAQjrTWHUj3TNfoI=; b=r5C8xTUJQbo0bj
	4zcQ4e7TBHH7KFfQYUEcstceLAC9VYqu5qrAFOFCiEp4mluBVcRwBOElyoLORA+ToHp5CWFBUWoYD
	l8uWOgCJMvXdaMNHbh7EjoqMi4xJC6BaC4Aov0cvQAOt/SlJfPWlWjIHXQ159ZLbOwdC043SKujyn
	soqGI7ghKLZCovllCnuAU9nLwLhtOhpe9nloRimXxkSjXcqwKcjUDnL+m7EQ0iX2KGoglWSH6Xr3y
	kUy8VZF9S70FfqCIP7SipnTcNIp+hcP9+z2OzpPd/C2xfF3+FccIg3EtFQF8ohg7uTOqDXaWHhVsR
	LCQ7Pc49bhPSh5OFL37A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDl-00Gwfj-DO; Tue, 05 Jul 2022 09:51:53 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBF-00GuYH-O7
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 87165B8172F;
	Tue,  5 Jul 2022 09:49:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 793F2C341ED;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014545;
	bh=qN2MBS4iXGKTp1LW3/dBfjDQA+8VCN1gORTM4XGT/iM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DWmeq/gYfSAg1ikbfrLtH3CMfWj9qsAoxOQQhIn+zQtPFlk6MJX1xvHNNRWYo0lML
	 fucZakFMVgY/ggoVfswqb0HwlzPxnzoRtURtVfUw/qDH8oOkRdumR+d+FJF36ERF0I
	 49vBVpfGADAhp7VYNfXfcJZpgd6DxGEYbcV42aroyPQDDVF/bfSW71nWXGT5wUOeWM
	 tGP6qLNv6zfSDYmHjx+NFmIXzAEHTWKOO6DtNtQI+nAbK58l9d1jxWwdSKE3e4rQJ+
	 Qjrlo035l9tGAb0ardpolr0Tf1NcGUAKdJnJmzHcjjDaVrKyW1ehbiFQscF/+a5iom
	 Xk9Gxg5SQXfvQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB4-0004az-Fq; Tue, 05 Jul 2022 11:49:06 +0200
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
Subject: [PATCH 42/43] phy: qcom-qmp-pcie-msm8996: drop reset lane suffix
Date: Tue,  5 Jul 2022 11:42:38 +0200
Message-Id: <20220705094239.17174-43-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024917_986571_AF4578DF 
X-CRM114-Status: GOOD (  12.80  )
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

Drop the lane-number suffix from the lane reset name, but continue
supporting the legacy name as a fall back.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index b8481dab54db..9ddb42fa5f7a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -915,9 +915,12 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 				     "failed to get lane%d pipe clock\n", id);
 	}
 
-	/* Get lane reset, if any */
-	snprintf(prop_name, sizeof(prop_name), "lane%d", id);
-	qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);
+	qphy->lane_rst = of_reset_control_get_exclusive(np, "lane");
+	if (IS_ERR(qphy->lane_rst) && PTR_ERR(qphy->lane_rst) != -EPROBE_DEFER) {
+		/* Fall back to the legacy lane reset name. */
+		snprintf(prop_name, sizeof(prop_name), "lane%d", id);
+		qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);
+	}
 	if (IS_ERR(qphy->lane_rst)) {
 		dev_err(dev, "failed to get lane%d reset\n", id);
 		return PTR_ERR(qphy->lane_rst);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

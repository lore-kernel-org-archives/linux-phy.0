Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17513C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fPZNvE2irWPxyPspQqp/KnuorySxxMV4yPxNFY36Ps=; b=ElXfMcpGVElo9o
	PjqDPtGiDMFg/A3whgjAEfcrWVC/Nx3CXKCEOtR0hFTlqavSXoKm6+ji9Kp/XgIKGu/N2COgY6acR
	VrNPm4pntd03cbq+bcgH9LzjDImqTHbGrvcyPMPdjhZ6adfQZr+1JHu0iYUcR6ikGv9IcIq/x2J0o
	TiUL+ws1ou97BJBFD2fFGx66C5k78CdED3UVuSVd8AQ+tfpuQNyLSwBoACOAiQWUC81EAFyd4KbAV
	/1hfmbSPG7N90UROHl/D0IDEGCtTOxOYg2cjVJ8Gm/C91xRG2Nis15QU/M8rzBgH92re1qnrNdKW6
	FzSU7FxL3l7ZMHQdxVfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIi-00EaMW-9k; Fri, 11 Nov 2022 09:26:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIZ-00EaGh-L7
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id ECE1061F25;
	Fri, 11 Nov 2022 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD23CC4314C;
	Fri, 11 Nov 2022 09:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158764;
	bh=3pXlPvBiX4UHRWK0RkVb18PuS/x2qj+9C0c3P6lX9pw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oYT1gLybaRIwR2VkplhZ1pElULJjDwUJ/p91B8O2UXUN5Yt2w86a827JlQJAg1ELH
	 58Ti88SxqMjS8jT7FkSTF3rILdtVAord+2xhV3D6Zm6y6gDcbhzcMStUtozzxE5Oka
	 iOxrr7/BCPeljNNyGbA3Yz0rnceDAMSzNFRB1bk0306kx2HcBJLayOIZngwLxLsKaO
	 vruM4vgOLPyRFKK6jxuY5UAm4ynAXPWy5DIDOaRD/5OznZbPvjAOob4PWUr/7oW5MZ
	 TVWEmzTmRfM4nlkNBRNeECDCArmGRibWqIpusM5kplZ2w84Hik+IHSBHyNhfZ3JmCU
	 WNvBZkwBGjucA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI5-0002l1-0D; Fri, 11 Nov 2022 10:25:37 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
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
Subject: [PATCH 06/14] phy: qcom-qmp-combo: generate pipe clock name
Date: Fri, 11 Nov 2022 10:24:49 +0100
Message-Id: <20221111092457.10546-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111092457.10546-1-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012608_079958_9B5F7E98 
X-CRM114-Status: GOOD (  12.82  )
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
nodes, generate also the USB3 pipe clock name based on the platform
device name as is done for the DP clocks.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 1a6aa61a12c5..01e38dc81a3a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2259,18 +2259,15 @@ static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed;
 	struct clk_init_data init = { };
+	char name[64];
 	int ret;
 
-	ret = of_property_read_string(np, "clock-output-names", &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
-		return ret;
-	}
-
 	fixed = devm_kzalloc(qmp->dev, sizeof(*fixed), GFP_KERNEL);
 	if (!fixed)
 		return -ENOMEM;
 
+	snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
+	init.name = name;
 	init.ops = &clk_fixed_rate_ops;
 
 	/* controllers using QMP phys use 125MHz pipe clock interface */
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

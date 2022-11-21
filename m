Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C67EBC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0yA//oUWoc3udu6zmR7Ue6XslJAqPl7fbygTO7Dif4=; b=5G6gq9Aae7cwkB
	cwexw8Wujk+OgrhviQTwiNGT8NyyNPm3kesaYPqOUE31AaM7jIYeJ/IuUSQHzRIbAHsZ1txpMvQfZ
	SFZf2W/1yrw1fDfsJ2sCcdRsm0yJMCr9BdwnMULBhVp77oS72XQf/fKMAmoEu42dQQqcmz2Dw7ees
	UkuJediJBQW8oag8dEMRJK+3CyEgrMl/RtwOWhde+C0P05F2SplpEIhTrjVcyiCv0TLIASoufmVuk
	8bNCsifvGu6vadgccEcq1Qbg/PZnc9CsgOPgX8UGfPZV+2ObIzfJbyLdpcdB4KBMivavlH0Q4E8ch
	2bD89+H9cCSNLLHIe63A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2XE-00BUmE-7g; Mon, 21 Nov 2022 08:52:12 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X0-00BUZo-M7
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:52:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4BDE7B80D6C;
	Mon, 21 Nov 2022 08:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E2CEC43470;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020714;
	bh=rhNguSejjtkHA6rQ2L6dE0ZSqitXPRK1vRjUNJUgpvM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EA16iPG9ypkMshvtc06CbwmrvRe+qb5WP/tDi6G45HRTGLInt52k+r7hFqXFKBcl6
	 DdqRzTNXLETE+ET+lWwP9chQSLhzNPPoaQ7LhlP8ENd1m5bhgOA97Pby91ys40UQZB
	 wtQT2rQWcSMkLEsi3VUT+YQlvnKrWSAo8WZ3rJ5FFwONAkGKGqIzZbeF3x44ojHK+g
	 fSmExonOL4LPUUFd0/2gFm/B93xfINupaBBWOGOUDXcAmUl5qfBhUxo+sTQYLOZOXE
	 ndK9JliQzFWb8OhnM68mI2vKl3EYk28qoqB9RNmKwG5W5pwt/w30oogANu/iMeM2zt
	 174L6xdaW0+uA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WS-00088N-QT; Mon, 21 Nov 2022 09:51:24 +0100
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
Subject: [PATCH v3 05/15] phy: qcom-qmp-combo: generate pipe clock name
Date: Mon, 21 Nov 2022 09:50:48 +0100
Message-Id: <20221121085058.31213-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005158_929520_57648FE8 
X-CRM114-Status: GOOD (  13.37  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 85def6560e43..7434955c8898 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2247,18 +2247,15 @@ static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
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

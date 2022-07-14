Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FB2BC43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tipvqy6lbpifOJHZjttJlnsY8X8X6hY5WTfHNQkWS9k=; b=xv+U6CI/qeCyuA
	tfOlvbjJeqJr+K/55jfhquKGuq9iiZ9YJMWLujt390FinPOQ8teTcCH6Q8Pm1z6hXlyMJdG8M+gAG
	aaYfDZbKBnOK8JRMTitl42LqFBfAGdH2J6pdV57qNsSacBJmL1ILpZB3UqicdbiHE9VkpqH8u+jmH
	V/8mtb+zfAzK9PwMPcFsJYIM0PxV9DXBIiewjLMGbeR2B6wiaUMDasFDIe3qrsSTKAdt5twdhuzEs
	jew6Qe3gXpQrFu3lQcfcAw1sbg5tOMYjQZFq203MjrK2yRN1O/6XzHd9jtWiw571RJyou2dZRPAvO
	OXWH7Y6STrhdrKU9L0Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFO-00ENPl-I8; Thu, 14 Jul 2022 12:47:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCR-00EL6I-Gi
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0A12D61FBE;
	Thu, 14 Jul 2022 12:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE3C6C341C6;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802645;
	bh=Qwq7RbI17m2/GdjL3BRPNYIKJgcODNU7UK2YOTiTrvc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iJKI1zdEsmFahij91pr3+6mjEIKSlou09RC8zvQAFDkEF842WHvymkOAnVR3DmWOm
	 5T0OJzutdLoLRfL1G3e4D2YnS6u3ReVEGTAbDnrYQQVbQUccrZvm90GsWBuRM3PRRd
	 NRvWsge2M3dikQsdRsqZICjfRFqDO+KFLGTqOnXZzExYub8jz1MhqH28n/JgLT/TJk
	 benqmpw8sMDU3anZ79xbIVfmxOYrz7ckyhI4o/yaphN4VMQPD0Bg1eHxGrY89p4b+K
	 Wip0J16QbTc/X9wgyCNDi4FsmIAJRp8H734Ly82hYfbCNNUc7dTo8J+ogq1dvBhY71
	 mUaQLLw7PvWNw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCR-0007EI-3P; Thu, 14 Jul 2022 14:44:11 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 26/30] phy: qcom-qmp-combo: drop unused lane reset
Date: Thu, 14 Jul 2022 14:43:29 +0200
Message-Id: <20220714124333.27643-27-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054411_621722_7A945E5D 
X-CRM114-Status: GOOD (  10.41  )
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

Drop the unused lane reset pointer which isn't used by any combo PHY.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 05b7d694de1f..faa50cf2e35e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -838,7 +838,6 @@ struct qmp_phy_combo_cfg {
  * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
- * @lane_rst: lane's reset controller
  * @mode: current PHY mode
  * @dp_aux_cfg: Display port aux config
  * @dp_opts: Display port optional config
@@ -858,7 +857,6 @@ struct qmp_phy {
 	struct clk *pipe_clk;
 	unsigned int index;
 	struct qcom_qmp *qmp;
-	struct reset_control *lane_rst;
 	enum phy_mode mode;
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

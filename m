Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58130C38A2B
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahNhEKp5xRihkXjc2aZy4jI555JRt4nRV0V1UuUQ/nA=; b=ncCUlqALpHzKWP
	uV+nPCQlFieKtQEVQoCNtKUVh6QaSfBX4OXc3pFRBbO637AHx16cja8RGkZe9k/DJMc9tiHItWsVV
	jsHNxvy023N79R/98rgC/4YlmO4KOh7dvl517yvVELg/XSPfDlfJZKDfudiQzp+bkB09NgXiFhTko
	AW4LW5OEakqDIdlcHJxApVHmUdbDLrw17g2Agz+OTnIpqMkPMd5K1jTZ7zZFnV2NYvhNhaBB1zHR4
	MGljhPu56RoCODoufeAi/LSazQZDQ4Wf5ceQ8JCG4rQoa/07GV0JEqls9BoIwNDbhFcfPIbHTwcmy
	76UEMmD5TAhRB2LgcU9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXS8-007QF6-Jt; Wed, 12 Oct 2022 08:51:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRr-007Q4R-J8
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3D3E3614A7;
	Wed, 12 Oct 2022 08:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFE39C4FF19;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=Vm0IV9Ie9L+1jEdO8boOCGtP7r5+JBi9mG/Dn1+E7Sw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rHOq9XNTchJ0UN2mHMRcK0md4i/e+nacmQO2MInHqQ74nNOk1TlpXLT90Ir3y0ePI
	 J3wiQHjm3e9mbWCBIfcqiZrqrItMpjiTM3VKf4Q+GtWlwuwhpZWQD56PL5EsVGGTXS
	 YE4kDM6F1yCrj2mnT9j4RT8qlhOa8yRQQIu+rY/WJGrqdUuno1bA5JhABAW4n1Ysoa
	 Ma1zowH0jNmbGwb8lgec+3IlCYZSN0qIhM7tmVpWComSEYGI16kOrFF7djNn37oJjr
	 ESwtZ3WMtpmiJoxMIlSr4CZqezAkA3ndPnub1cx1dUNawRk29df23PtteBkM0x6m8I
	 zlm3vmgCg2U0g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRf-0006IG-Go; Wed, 12 Oct 2022 10:50:31 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 17/20] phy: qcom-qmp-pcie: add config sanity checks
Date: Wed, 12 Oct 2022 10:49:59 +0200
Message-Id: <20221012085002.24099-17-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015043_784095_68B7354C 
X-CRM114-Status: GOOD (  11.02  )
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

The driver expects every configuration to set the pwrdn_ctrl and
phy_status masks. Add some probe WARN_ON_ONCE() to probe to catch any
new driver support that fails to provide them.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5534a4ad0243..7c81667dd968 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2347,6 +2347,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (!cfg)
 		return -EINVAL;
 
+	WARN_ON_ONCE(!cfg->pwrdn_ctrl);
+	WARN_ON_ONCE(!cfg->phy_status);
+
 	serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

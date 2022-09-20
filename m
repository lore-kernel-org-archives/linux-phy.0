Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9231C6FA95
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLFBem8CXYiPkXfSjhbJhXcUXadzgPHf9YlHFYQVYfM=; b=eurmBGLlCB9l+O
	/Xl61dQfiwO3jnZUhrseoguO4V22DMdiC3zyu0LszDuCPLqEHhtnyEcf4giKzXFABgYbN/rj74Xve
	7DVMxrIh3cXGG1pjY1TTpnNqZuZOL860AEScghExqhP5bxOv2LbofrLYTdE4x+5Df25uiHHqdkVoC
	E0Kb/DbS9busfvriApLh1kGyCzmFUWyGUhxaooFc/iOuxofIaYrXOzyo8tJyxXhkTFcdUcZ31uzt5
	TrPgs2uE15G0rZkmihmpW++XhlsqGasE/QpbrmY2Y5NCRxfxO8Pg//FxLQUuiWs5a+aK3gNLDDzZ9
	m+jWXdM7jJSNvhAKdOfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqd-001QjH-2x; Tue, 20 Sep 2022 07:39:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqR-001QUS-HX
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D7A8CB82578;
	Tue, 20 Sep 2022 07:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F448C4315C;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=YxKfMvKkJdDaUBit3Bsy0QcfwJMDFuCmqFBtIGUEcL4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NWWLz7JYQxtbJ0GSKEQY8HLk4zs2VJY0AdpkI0a4jbxMQ7hasef4dWRfL9uyVQglv
	 wXioZ8sLOWhWSAp7EPA6E55nBHNDWFxDfcfKiM8+/SdmN49J8zz1LYlaRDKjHYv93R
	 7iUcJtMTWNpA4qd0u6Ou6I1DA3hKJ6qXDv2JuCPReS4/5ImTQ+9njmSe94OLil58os
	 /aRsLWMijeq9Uui/Bjj9GxH8ILt+cqMJ7UfOZ/EPFZ0tToKvaipV7azuD44KdqhVvk
	 hAWskY+3/iV2abnuxv0BGsR6Dtz/wC+fsyLtvyISpTqt8V52SvNSKzfog1Rnh5Nopd
	 k9cMlHsiO/hYA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqQ-0005R4-4a; Tue, 20 Sep 2022 09:39:02 +0200
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
Subject: [PATCH 10/17] phy: qcom-qmp-pcie: drop unused config field
Date: Tue, 20 Sep 2022 09:38:19 +0200
Message-Id: <20220920073826.20811-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003903_746884_1BFD3FFD 
X-CRM114-Status: GOOD (  10.54  )
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

Drop the unused mask_com_pcs_ready field from struct qmp_phy_cfg.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 65825ca41e96..d22d2cf2fc18 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1342,7 +1342,6 @@ struct qmp_phy_cfg {
 
 	unsigned int start_ctrl;
 	unsigned int pwrdn_ctrl;
-	unsigned int mask_com_pcs_ready;
 	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
 	unsigned int phy_status;
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

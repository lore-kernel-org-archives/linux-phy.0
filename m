Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2391C43334
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 05:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PtHbifuUYL9rdZ4/KGkYEjYyW3CMa96tlsrM1dJl68c=; b=jU6aL/Z84h/jSU
	MyctcPrOSA6mwhCoAViTOWxW+JUNqvVmDH34a1HVCOsPB87I4A4VVnxqZWmHAVziBSXk0nLT9nbxJ
	HxicgQWfe3wVCE7f/lQKXdsW3zTULndgrB2cKgZ0yM36cRByavvN+niE4fJTo5UfETV2ozTCuhbnJ
	bGMN1vgy8CCl6rUXIEJnPpdd6aP/vBp06P11Z7cCls4Mu2JwulxJjUFy6feUoSDI2byxarQPRSSf7
	oOV3R1/302TBHVBT3kWemqtutzUfv2zuRd5FjDnMx0nIU9zZeu/ToFFC3KToqKEBbyx28PN3ZPuVi
	9l3/Nod/yvJ3g42pL2AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gQT-001owR-1y; Fri, 08 Jul 2022 05:21:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gQQ-001ovy-Bg
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 05:21:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9E747623AE;
	Fri,  8 Jul 2022 05:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D337C341C0;
	Fri,  8 Jul 2022 05:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657257669;
	bh=KLGJw23mYWR4pbhJCYVyVEuZAxCLz5NIUf6oVzI57yA=;
	h=From:To:Cc:Subject:Date:From;
	b=S7BUK5w9vrnjRZnzS5isQ3Ugt5r1bU8Q9zxrIUp6qrvoa1IxvV04oxpmAFugv0Ja8
	 EhYb814z3yTmbG2q9grtmPDvoTSiUjkPzxwgCWTAt8GFDPvqCK0vGne5w+nEqMedLs
	 ZfhlcIyS0vzsPKBzYIxHqtG/lKs+SlfbM0Jbw4juRwxVAbAru6OOkYvIuQR1woHOPP
	 VtZ5Nf9bQn+C+rhdITOj6Rd01gM9roeMY7fqhTsCGNG2k3peWDVr4CMBW0MQqXahKB
	 OTDmVWeS6g6PWxQGEVFJKYo7KfivOyWfpXg311PpAVAq1dLPDLOKLTjB0+Dc4vwe1x
	 pxUdBl9lyhUbA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH] phy: qcom-qmp-usb: statify qmp_phy_vreg_l
Date: Fri,  8 Jul 2022 10:50:59 +0530
Message-Id: <20220708052059.3049443-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_222110_470594_81A79B64 
X-CRM114-Status: GOOD (  11.57  )
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

qmp_phy_vreg_l should be marked static, this resolves warning:

drivers/phy/qualcomm/phy-qcom-qmp-combo.c:616:27: warning: symbol 'qmp_phy_vreg_l' was not declared. Should it be static?

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c77e427a74cf..4b1828976104 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -613,7 +613,7 @@ struct qmp_regulator_data {
 	unsigned int enable_load;
 };
 
-struct qmp_regulator_data qmp_phy_vreg_l[] = {
+static struct qmp_regulator_data qmp_phy_vreg_l[] = {
 	{ .name = "vdda-phy", .enable_load = 21800 },
 	{ .name = "vdda-pll", .enable_load = 36000 },
 };
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

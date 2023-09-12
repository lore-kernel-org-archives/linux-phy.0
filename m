Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D96FCA0EC3
	for <linux-phy@archiver.kernel.org>; Tue, 12 Sep 2023 11:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xY3GBIpb275LJV4i030odApjmVAbgqch1/fgUWLV/lw=; b=lOMg9ZSmjB8PzX
	imt+nzw16fGm8vKViXMWaH6vu0SWkjHJJCSOwmObHTcBts579Se8oVdPPtFbPiHwhqaGvApDHRIHj
	kjagjPGT9gDvzCkix2Vb4JMX/PurHwD2Em01q10jHHB73cQR5KIgFNFHJX2Njy4A19IJPeo1Wx+Kc
	1ZJOLnB65hNEomqloCZgaTpgPY/yr6sfwma5ft5DshSgUb4h/mNhLa+wIvwlVCobFKRhXNTucOx8g
	fb13nDMFIft5IyUXeGR7D/yKHrk8XUzznFqu+uBHNmmBJZrTQv6bhAgQTfFlcr7VfQLq6XXjeldVv
	hv/VxLlnzHzBVu2u+ZBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg1rR-003FSQ-2o;
	Tue, 12 Sep 2023 11:47:17 +0000
Received: from ssh247.corpemail.net ([210.51.61.247])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg1rN-003FPL-1b
	for linux-phy@lists.infradead.org;
	Tue, 12 Sep 2023 11:47:17 +0000
Received: from ssh247.corpemail.net
        by ssh247.corpemail.net ((D)) with ASMTP (SSL) id IMH00048;
        Tue, 12 Sep 2023 19:46:48 +0800
Received: from localhost.localdomain (10.200.104.31) by
 jtjnmail201609.home.langchao.com (10.100.2.9) with Microsoft SMTP Server id
 15.1.2507.32; Tue, 12 Sep 2023 19:46:48 +0800
From: Bo Liu <liubo03@inspur.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
	<vkoul@kernel.org>, <kishon@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Bo Liu <liubo03@inspur.com>
Subject: [PATCH] phy: qualcomm: Fix typos in comments
Date: Tue, 12 Sep 2023 07:46:46 -0400
Message-ID: <20230912114646.8452-1-liubo03@inspur.com>
X-Mailer: git-send-email 2.18.2
MIME-Version: 1.0
X-Originating-IP: [10.200.104.31]
tUid: 202391219464892185f47b6da30f4b9d140dc948cea35
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_044713_882769_E2F19C89 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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

Fix typo in the description of the 'succesfully'.

Signed-off-by: Bo Liu <liubo03@inspur.com>
---
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
index 8814f4322adf..3642a5d4f2f3 100644
--- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
+++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
@@ -152,7 +152,7 @@ static int qcom_apq8064_sata_phy_init(struct phy *generic_phy)
 		return ret;
 	}
 
-	/* SATA phy calibrated succesfully, power up to functional mode */
+	/* SATA phy calibrated successfully, power up to functional mode */
 	writel_relaxed(0x3E, base + SATA_PHY_POW_DWN_CTRL1);
 	writel_relaxed(0x01, base + SATA_PHY_RX_IMCAL0);
 	writel_relaxed(0x01, base + SATA_PHY_TX_IMCAL0);
-- 
2.27.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

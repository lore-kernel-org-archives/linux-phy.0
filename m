Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8540DC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jan 2022 19:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93ySPKBt1roO8fgkhh1IkeekqQVNTgyJv2l3dtZvx5k=; b=K7551ESJhN9b+w
	Xlqr79fRnLfsgMWa0KyqF1+LfYWkjHRYEteJDeA7Te7zhICbjDscQC5kvPAdc4DdXea1tKL1PqNXe
	DmzqANX1HyvlLlD/cBbvXn6kVxTXN9RzDYRBpftlU9Yu6osDgJ6sJ8kEoAXb06MItTsWfTPndqpe7
	hDtp8Y1Cvpqz+yBTU1bweiomNTg1MKG18UZSfCzKD7NW/6o2KSb/B+8DPE1Hw/N7mm3I0KCjV8j9t
	xn8WTfi3iEybHtwrEVQ4WQLLzcQeuy6PkXkXJgZ6lv4H/Dof2I04mtwsrPhK6jBqheVLuPe5sYQBU
	NZMpBh4mkGmK0tPxwqCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7jdk-003eRs-QV; Wed, 12 Jan 2022 19:50:36 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7jdh-003eQM-7U
 for linux-phy@lists.infradead.org; Wed, 12 Jan 2022 19:50:35 +0000
Received: from localhost.localdomain (ip-213-127-106-2.ip.prioritytelecom.net
 [213.127.106.2])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 93EFCCDFB7;
 Wed, 12 Jan 2022 19:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1642016545; bh=MNjITzwZLGiO65HqfkpFso4zWkx/alLclG/PQK0PQm8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hpi5fWHim/KbZeecfjBrNP/fnt4BJVqEgy/2Amju4H3JrWNoWQHMOEWUe0uVK0DpK
 HwgbMVI9dSkUeoX4C9GQphaSrrla6DNvDYWEqvboULxqhfIFr3wR3F263Fs3bNcTgL
 v+Ub74yLKPyHq+PYZVVsw8IFwjyDCtLA7yaR2DhE=
From: Luca Weiss <luca@z3ntu.xyz>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca@z3ntu.xyz>, Konrad Dybcio <konrad.dybcio@somainline.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 02/15] phy: qcom-qusb2: Add compatible for MSM8953
Date: Wed, 12 Jan 2022 20:40:51 +0100
Message-Id: <20220112194118.178026-3-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220112194118.178026-1-luca@z3ntu.xyz>
References: <20220112194118.178026-1-luca@z3ntu.xyz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220112_115033_452319_AFF68292 
X-CRM114-Status: UNSURE (   8.31  )
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

Add compatible for MSM8953 QUSB2 device which reuses MSM8996
configuration.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 032d02bf50c5..7529a7e6e5df 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -911,6 +911,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,ipq8074-qusb2-phy",
 		.data		= &msm8996_phy_cfg,
+	}, {
+		.compatible	= "qcom,msm8953-qusb2-phy",
+		.data		= &msm8996_phy_cfg,
 	}, {
 		.compatible	= "qcom,msm8996-qusb2-phy",
 		.data		= &msm8996_phy_cfg,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

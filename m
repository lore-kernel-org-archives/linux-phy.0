Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EB0FECAAD3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 16:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZVuk8FGJ1jGbcdlqBf3dZTI7wt1LM4G8lO19GAoznY=; b=hm8PhrelWZYDvF
	ICSWvY3CYoUhoRs/lJB0oYZQIJP1BoRTVmD2wis5JhLyfw9uLKtJ5jDfYQYZM2CcdDOOk0S5NET3x
	jWO6uWn64VUWnQ/ZrF0HfgvkHXNkDwNABEBX/0HtFzb7NniFx6o40XspeIkUatWUl/ZF14t5e47Cy
	lsesZJtb0BMORt4UPRIlHv3p6js0cACa2ZWVQ7jpLCZZRXmfsH/q4tmjjqxd++YJCg2KR13bG29R2
	NsXUSssCVjfKpffiZ5hGDghrP/3w/JtIWu8kWEnlE9tMhvDKVP9eujIKxQhDgd+oKiwnEYJFWnVz0
	cDBfNGbQ/HFYIkK4LQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDs-0054bf-ET; Wed, 14 Sep 2022 16:26:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDl-0054TW-6w
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 16:26:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 612CE61A0F;
	Wed, 14 Sep 2022 16:26:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4F08C4315F;
	Wed, 14 Sep 2022 16:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663172798;
	bh=paVqUMRBQw9kTTDsBjch9ckYDPbckCXhP60LUyZoBiE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=s52mFYDnriTA62zIeNSjL/p+m9YQAw/9vZE4YGuphHL6NP6yDaAKrOJ53dAicmj46
	 pK+Y10NAiojuETsnqfUtuBZ0/KSS6B9R66Goq0k5CSwtuSqbTLKey/A68o2E/z2yd8
	 y7wCnfN9vverKdJ0MSZJjTf14nPtRpoH7xqI7z0yMinuqUP3ctDZDMpAGQqUDqoAwq
	 j/0OXLX00tBebvbPyz2DogdhS0sJqAqLUKMPtSzwt0Qt8ssxXVmJFyybB3ZstcqLs1
	 wBq8r6JaWADW/9y9KJOl6QTYCY1r0VBCKS/KHXSNy+jQkC5/d8w2vO+yC5a3N4hGNG
	 x8pcINVAV4rlg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oYVDk-0001ep-3H; Wed, 14 Sep 2022 18:26:40 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 08/11] phy: qcom-qmp-pcie: drop unused legacy DT workaround
Date: Wed, 14 Sep 2022 18:25:42 +0200
Message-Id: <20220914162545.6289-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220914162545.6289-1-johan+linaro@kernel.org>
References: <20220914162545.6289-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_092641_389716_97A16213 
X-CRM114-Status: GOOD (  16.53  )
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

Commit 5e17b95d9893 ("phy: qcom-qmp: Utilize fully-specified DT
registers") added a workaround for legacy devicetrees which did not
specify register regions for the second lane of some dual-lane PHYs.

At the time, the only two dual-lane PHYs supported by mainline were
"qcom,sdm845-qmp-usb3-phy" and "qcom,sdm845-qmp-ufs-phy", neither
of which is a PCIe PHY.

Drop the workaround for malformed devicetrees, which should no longer be
needed since the QMP driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 ++++++------------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index e6636700871c..4939edcd8cb1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -38,9 +38,6 @@
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
-/* Define the assumed distance between lanes for underspecified device trees. */
-#define QMP_PHY_LEGACY_LANE_STRIDE		0x400
-
 struct qmp_phy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
@@ -2270,28 +2267,16 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	if (IS_ERR(qphy->pcs))
 		return PTR_ERR(qphy->pcs);
 
-	/*
-	 * If this is a dual-lane PHY, then there should be registers for the
-	 * second lane. Some old device trees did not specify this, so fall
-	 * back to old legacy behavior of assuming they can be reached at an
-	 * offset from the first lane.
-	 */
 	if (cfg->is_dual_lane_phy) {
 		qphy->tx2 = devm_of_iomap(dev, np, 3, NULL);
-		qphy->rx2 = devm_of_iomap(dev, np, 4, NULL);
-		if (IS_ERR(qphy->tx2) || IS_ERR(qphy->rx2)) {
-			dev_warn(dev,
-				 "Underspecified device tree, falling back to legacy register regions\n");
+		if (IS_ERR(qphy->tx2))
+			return PTR_ERR(qphy->tx2);
 
-			/* In the old version, pcs_misc is at index 3. */
-			qphy->pcs_misc = qphy->tx2;
-			qphy->tx2 = qphy->tx + QMP_PHY_LEGACY_LANE_STRIDE;
-			qphy->rx2 = qphy->rx + QMP_PHY_LEGACY_LANE_STRIDE;
-
-		} else {
-			qphy->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
-		}
+		qphy->rx2 = devm_of_iomap(dev, np, 4, NULL);
+		if (IS_ERR(qphy->rx2))
+			return PTR_ERR(qphy->rx2);
 
+		qphy->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
 	} else {
 		qphy->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
 	}
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

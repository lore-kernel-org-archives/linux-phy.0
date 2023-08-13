Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D981BC04A6A
	for <linux-phy@archiver.kernel.org>; Sun, 13 Aug 2023 16:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiQ0NNjefdxUahI4SCWWP/4ha2h0kkY4Cf0G3XeXWL8=; b=3iRwWZyz6QyxjU
	90e4DhrY2fKO9U972woKlv0q0SdrMh5YhGy9GIjgpizrtdDzgPB9h7H0S/aUEMTAHDI2wP5f8UGbB
	Um5+FGiZ9e/ui69+4+h6QzZmWj6xFzRGU5+8FyZ9LaEYWCDftXH5Fcm/MBz59gtL2xd38OQ6tZHrX
	OarRPPecgePz/6pHMaCWpKlHrYe+kY9WQI5UDOy/4pC8sK5XYPOEOkjJlvzdx1Ghi97yuuvS+EzV/
	rPKNLWi2B3VnOPPqUGxlc+JcJCn2IOu/jYmHMpUalwnkZhiAZPxvEy0Y2n+Fba9+uyQRS9E912unk
	0tECIO89P9985z0gFm9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVDVt-00FOGN-20;
	Sun, 13 Aug 2023 16:00:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVDVr-00FOFj-0i
	for linux-phy@lists.infradead.org;
	Sun, 13 Aug 2023 16:00:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BD8D760B38;
	Sun, 13 Aug 2023 16:00:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D475C433C7;
	Sun, 13 Aug 2023 16:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691942418;
	bh=E9wJhB+ZoYihOE2/ISrBt+nXzog6pjXvyMOKrPUCu/c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RNowNzXotEVvOF9QnHGVhWV6tBnZmrudIaqlOCRHd/E4B35XRfv+rEvmYjkFvd86l
	 ZSisloacjFTUd/lWHbMN2aUhFy+/U+VNPCVrpGZ1DiMXJPfHMsO+wYSEbLYVo/b8Vw
	 rlXuM/5QpDcIamKWniKCVsKFb9dMP7XUwoSG4yFrXTmQy6DmozdP4MdC+emwuExmIC
	 5yWh6ch3ormI+ofRjUkv8IwWAOUUWUgyw2k8orHEuBqWzEYsL0yhdtSj7WZ/dhzfuj
	 ZTLXydGYvo/hFVv6/zTKcDTRuDU9y9ArBaEbOvuXXtHx9JIqFLVw+wu3she3XNPaP/
	 iAHKDwA4IoADw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Adrien Thierry <athierry@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 02/47] phy: qcom-snps-femto-v2: use qcom_snps_hsphy_suspend/resume error code
Date: Sun, 13 Aug 2023 11:58:57 -0400
Message-Id: <20230813160006.1073695-2-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230813160006.1073695-1-sashal@kernel.org>
References: <20230813160006.1073695-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.45
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_090019_300553_5A3AEE55 
X-CRM114-Status: UNSURE (   9.67  )
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

From: Adrien Thierry <athierry@redhat.com>

[ Upstream commit 8932089b566c24ea19b57e37704c492678de1420 ]

The return value from qcom_snps_hsphy_suspend/resume is not used. Make
sure qcom_snps_hsphy_runtime_suspend/resume return this value as well.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
Link: https://lore.kernel.org/r/20230629144542.14906-4-athierry@redhat.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 1d45029b19cd5..d73c7e2208485 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -182,8 +182,7 @@ static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_suspend(hsphy);
-	return 0;
+	return qcom_snps_hsphy_suspend(hsphy);
 }
 
 static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
@@ -193,8 +192,7 @@ static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_resume(hsphy);
-	return 0;
+	return qcom_snps_hsphy_resume(hsphy);
 }
 
 static int qcom_snps_hsphy_set_mode(struct phy *phy, enum phy_mode mode,
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

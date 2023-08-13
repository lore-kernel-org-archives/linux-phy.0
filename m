Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE94AC001DE
	for <linux-phy@archiver.kernel.org>; Sun, 13 Aug 2023 16:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIVg6tmkd4E+vVxMadwAiiBJCk9zXKdLcsYnx4mavy0=; b=KVVWWgjOVHAXE6
	QAGotyjEoV/1oMF7h6EPElLnnzjJ7cL8MtUclZvRJfHz7QGs6ZfCuz8JpxZz0cJEVEPAWfYrdHRFK
	IZrQHxJlVyYCoXLw+0iTlG9Um3WdMIKMJ1PQgYyKTK+zSr8RmQ7UZT56bWlLbW+apidxSLxoBRQ7E
	gpnTMBgPZRUkScCHKmGFU0QzaZq4XMJodcCTI/XWyNiweU42suzwUYxCq5Eb4CEIDZW5OUT/5iqa0
	Qx3DGQMTapejIp+X9pDnOVEQNJdju4LA5kObyPncsstRrsUFmu6jZPw9pCvvhZcfn8TJIaj3y163E
	zsylw6w3qtlGllywpF/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVDf3-00FPhW-1U;
	Sun, 13 Aug 2023 16:09:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVDf0-00FPgK-1z
	for linux-phy@lists.infradead.org;
	Sun, 13 Aug 2023 16:09:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2044563A81;
	Sun, 13 Aug 2023 16:09:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AB03C433C7;
	Sun, 13 Aug 2023 16:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691942985;
	bh=MAbDjF2njdOYNg9tRPhy20/cP3ibwHDePgjiAVqI1xA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uhvxm8z+sh82Ihie1SsgiG13AAh6aZfPcIl8IimyAnEFpheqp3c75cDI5hjnuy7ja
	 04wIl/iWeAlDuknQM34x1JGJ4RCAyvL9VVXW16o06wDu/Ic5Mo8zoAGonKGQtS8eBG
	 uyfVq5DqCAVNxsTicngOgVDeD3DjIextFsesFpM7g+ufchw9ZFUp7nznP4orgihwcu
	 UcmgdT3ZbZaq55DNoelUrnuMXsT4xLpPrqPaMlzKnt96lsgrJNjJ0rvH3kIL1s2Iij
	 iU3vwSqwdPyMxIglPJCIfSnzUbnB2JQaFQZw6C9cLpU3yy2dhPV2r2LCgUi6gmTHLs
	 xy0RMHC5LPGuw==
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
Subject: [PATCH AUTOSEL 5.10 02/25] phy: qcom-snps-femto-v2: use qcom_snps_hsphy_suspend/resume error code
Date: Sun, 13 Aug 2023 12:09:13 -0400
Message-Id: <20230813160936.1082758-2-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230813160936.1082758-1-sashal@kernel.org>
References: <20230813160936.1082758-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_090946_694543_6C62C83F 
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
index a107f98c662d5..68c21c08a0397 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -139,8 +139,7 @@ static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
 	if (!hsphy->phy_initialized)
 		return 0;
 
-	qcom_snps_hsphy_suspend(hsphy);
-	return 0;
+	return qcom_snps_hsphy_suspend(hsphy);
 }
 
 static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
@@ -150,8 +149,7 @@ static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
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

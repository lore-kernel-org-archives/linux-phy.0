Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58B68C6FA8E
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZMH6cST46Uoc2bhSLaQVp5L1VbefyVWjMOx7rd+t3I=; b=PjeIo6HboZkKpO
	gxJMR9uXUhcmrHXt+nvHNkLJakrRrq4NzG1C7yJG8EOhfK8A5VbGJrPdXRkq3EeVA4G1nGRv3HRBb
	Hm7DdcZCKgp2nDj4BxbgRhstMpHpZTmsfN/GQQy5q5dJ5NCI8Mpgg/Qm1bbGyvawFqeep/wkf6umR
	ZF/wHCIwqJQ76tWy+j7nNvriBi5NW/4tSHTssFUMZ73Vb5q9jVWTxaCYd3om7igGWLeldAYB4Yy5n
	NXFGQuX2Z6jbQARf0CiAhugTkoicVFV/XTwmcuMrbAmEbaaT7oarWOZISlie4UE070DaFaV8RhlmI
	6hmn1PWYCHv7EBsBJUUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzL-00Gtxj-Io; Wed, 28 Sep 2022 15:28:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzG-00Gtrm-2o
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 15:28:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8CB6EB820F6;
	Wed, 28 Sep 2022 15:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E50F2C433D7;
	Wed, 28 Sep 2022 15:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664378916;
	bh=2PNuiWS0wXqb3wfqtzEjmTZQ+QrEITCNR73xkCcLG0o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V/hCKZjEil8MaDvKDtN/VSEHN027MWIFB7ldiymERCUtjtcBA96YDsfXUFHk7FEww
	 NVRncGXCgZdxIXnZmUz1mS+gXaHQ9rMiuTc4w6zGj9/pWIpK9qhF4mMas5AQrz5e7e
	 vje0tslum1iqkzghh66OP50K/1X69UL6Qr9AlXDQKCzkAt08hNbLpBq97y6vs3neVv
	 iwfaR8y8TrACuqLgQK17wVy+3O3/dy0rqzyiPWtMMjbwAFdLuxaoVEpf3WirnJaNF4
	 DJelP6bN0jikvj183RpSoIjAeporai7eleYI9iB58Gj/tBtijTQetLR01Vit3ng40y
	 j4/Bbi+et+B+g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odYzK-0007ze-EQ; Wed, 28 Sep 2022 17:28:42 +0200
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
Subject: [PATCH 03/13] phy: qcom-qmp-pcie: drop unused common-block registers
Date: Wed, 28 Sep 2022 17:28:12 +0200
Message-Id: <20220928152822.30687-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928152822.30687-1-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_082838_284595_D0796229 
X-CRM114-Status: GOOD (  10.99  )
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

Drop the common-block register defines that are unused since the QMP
driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index abf1cf1abf2c..ec453f908f1d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -77,11 +77,6 @@ struct qmp_phy_init_tbl {
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
-	/* Common block control registers */
-	QPHY_COM_SW_RESET,
-	QPHY_COM_POWER_DOWN_CONTROL,
-	QPHY_COM_START_CONTROL,
-	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
@@ -99,10 +94,6 @@ static const unsigned int ipq_pciephy_gen3_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_COM_SW_RESET]		= 0x400,
-	[QPHY_COM_POWER_DOWN_CONTROL]	= 0x404,
-	[QPHY_COM_START_CONTROL]	= 0x408,
-	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

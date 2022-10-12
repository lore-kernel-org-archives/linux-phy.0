Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A585C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7CA9Lymn8OatSBKv5pkeIRcWSq4+FhbUysWK1k0XRk=; b=Sz/XG2tenEYG1z
	4j+cgUQeZlPOBVH6atVfYpAtRdfp/ddY6QTiMgt729lZnPANDT6K9yuN7tyOe6s0y5xiHopR4KltO
	07rDYSA0m5S1gTHxYH9z25G8JHft4rDLBwtYRCd4q5QMyirQOTOIOQ/7gaBCaF4BvnQTWLp1qD5ik
	/nXiWxxYLQjuKpxuURdBs7JbbitoouSPtazrdmLBDWhXseGoiMFrmH0+5jxbxY2qsHNYMkR0GOji9
	V6Yl1KzSHsLO3BNgIApznEO28VqmIziZahcLeF0JqHE/FEBN8iU4XyCjA1WrcGIuMjJmD6/d08dNX
	S9X3Iou6okE+5NTrlU8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuK-007IX1-Ge; Wed, 12 Oct 2022 08:16:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuH-007ITa-TU
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E2C3761480;
	Wed, 12 Oct 2022 08:15:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83074C4FEBD;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=erC65IQqHAKXzl/EEYi72T7IH4BMuinND2MOz4IUJvo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mt6v3er0QS29BlZ06xRZs5nZwUPu4IY9O7bqw1Evh+GPoct2zQPgKLrq0hhg1Wtjb
	 z0MF7mfLeUObUj9/xlG2J/DWR5sQd0sRbZC6Q1S9WxcWTCrW6hbyWtQzZ3gjlTMkZN
	 tTkGaqZWpgQrEgBYzuCXMLSznV1NeKx5CHvfvZeY4X09EODIBCVtJpfn03m+dq3MSK
	 /TolRxRNH7ivqiO1paiPQsR1VZ3zavXLwK5D0myzFkdWqtmhbvrbydBnvCzgSPTZ3+
	 D0g4fSfOS5hcXtfJLZLf3WvLOSHangfmgdlyatHbvkh6axTmJ4EWQUlgsIiEZbWwXF
	 rYPlRFQd6muJw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu3-0004oo-49; Wed, 12 Oct 2022 10:15:47 +0200
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
Subject: [PATCH v2 11/14] phy: qcom-qmp-combo: drop sc8280xp power-down delay
Date: Wed, 12 Oct 2022 10:12:38 +0200
Message-Id: <20221012081241.18273-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011602_267750_99F9394F 
X-CRM114-Status: GOOD (  10.27  )
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

The SC8280XP combo PHY does not need a delay before starting the USB PHY
(which is what the has_pwrdn_delay config option really controls) so
drop the unnecessary delay.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 84380852ba5b..a8e09333072e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1210,10 +1210,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS,
-
-	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

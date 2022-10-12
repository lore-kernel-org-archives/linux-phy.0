Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FA85C352AA
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8O0D34XvJ1HnAdCiFIx2lbLlQI7M9wB35r0FYW+gmM=; b=grvdgu/qcnzJLv
	cRvgRVfyiohYfKBL8nxlw2KBnziXulQswQeBw4RHDV9YDLGN2CZtMKNmF1YWFvvFA+hCwXZW/rVS9
	LJuSohusE94gue3kjnfnnqjOkiYUIoKztdfqc2o+LBsub++PduFNUGLD9K5U1Dkdyp0quEAJPdRkj
	/YIR+Qj7+Flsn3U1ExbLvktLBtoj0hxm9exN09ypVlJK2L6TFCeldxYzSVp88Dw1+5jbdrAeRYoQa
	M/oMWNTtyOy50KPVBr+BqeqPv2+N0SX1SS2GyXhQ/7bcutwBiPMaz2i/jKvksXrW1EZQKQ3R3jVAa
	7VT601yhl+NtE4in21Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuQ-007Ice-Ty; Wed, 12 Oct 2022 08:16:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuM-007IXk-Id
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 208B1B819D5;
	Wed, 12 Oct 2022 08:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0A88C4FEE4;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=h+INOBNjBEzjQm6Zd/5hAWKajFCTWwVQYTkFZDHNr5I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hwXFNCMjq91S4TvJxRFhPSopbZjyYe+WjDQIp1BcHIP6z4UoioaVy0237MszarFpu
	 3qIVUTzVi94kV5TJwidbWQK5qoJfbPWHfgKgIiBnSSmqvJaW6YaXuxHvBFRlWNyamB
	 Cn73XLKWEFF/pLm+/q+By1xfpgk+KLIG8Wm7zYrsW/9V5DthZh4lA4gTzUQaRl7n0U
	 XnMVKM/Hfnw1P6j2PjFRdJhLS8Ismphzr7wm6/yj8Kc7u9hmvqwH6VFAzMkA4sxKbG
	 LyGwI2L2OrvwV9oXQg8/eYwkSlIhV2Loab65X7sfyPN9DD0OHl+81Hbo2j4OPukaow
	 UO5t7zeSJo3aQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu3-0004ov-AI; Wed, 12 Oct 2022 10:15:47 +0200
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
Subject: [PATCH v2 13/14] phy: qcom-qmp-usb: drop sc8280xp power-down delay
Date: Wed, 12 Oct 2022 10:12:40 +0200
Message-Id: <20221012081241.18273-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011606_767547_A9676B8A 
X-CRM114-Status: GOOD (  10.47  )
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

The SC8280XP PHY does not need a delay before starting the PHY (which is
what the has_pwrdn_delay config option really controls) so drop the
unnecessary delay.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 3aab9ea90078..57dda1ecefe6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1718,10 +1718,6 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS,
-
-	.has_pwrdn_delay	= true,
-	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
-	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

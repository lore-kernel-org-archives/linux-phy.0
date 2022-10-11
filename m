Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 948C0C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8O0D34XvJ1HnAdCiFIx2lbLlQI7M9wB35r0FYW+gmM=; b=f9hFZO+GmMXeE4
	NmMhn3NJQljGbOn/7+x4QU/N2PbKmH82vMYeqtcFYhVIAn8NabCl0vRSZs1zjnCHQm3VwT7PNNxjb
	bGIazUGRCL5Q7tZrGwNFF1fp4EyHsu3aSB0Yst5i2jYUKLXxpI8kUEy/l2ZWKrNOsjehMSyd5TIkK
	LZOR1UHHewHw2z4IVnYnjKfxaERVcOwxEwWnBGPwumkb42r75shelhT9guroDfjzYMkv6NIlruIVE
	vBegOPXhWnEtg7Tg0MrtFlV+m33FjQ68Zsx8YUmwA/ZeSG7t6dAgZvDlSuzCE8rgEGd9Lj68YnIpN
	fNxqIxLa+6RrCrD5r4cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF60-004JDl-18; Tue, 11 Oct 2022 13:14:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5v-004J9h-M3
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:14:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DCC24611AC;
	Tue, 11 Oct 2022 13:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA78EC4FEBC;
	Tue, 11 Oct 2022 13:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665494087;
	bh=h+INOBNjBEzjQm6Zd/5hAWKajFCTWwVQYTkFZDHNr5I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bAmPODI4LEXUBfqIyCbqMjKvpdDgRiH5Tm/uSVs2vhJE/Dpe3UrjMsVBHHtr31MgA
	 tMB+AyaZ5GDhHu8tKxpF0mjH1cOc3TFHDpDWfz8s9JboDshnD9sDaSQjX5ADH2jmP6
	 +52PC1eNCreMeSTy5bUzh7+uBH9NBulJru+mIfQaNNbKpSPWR5l1TujKE5V0dKnXt/
	 RXE6+OhN64nhBC0HuUcUV6xextqoVd0+l9ZYXA2WkA96fmnWoSG2cuJdUxEctCMTkY
	 CJNQdzC6w6PRC78eAOA1tb752Tu3/RNvdYr9LEW2YbwTD1kaPSTCxBEPogcwxnD/se
	 sjz7tjhh6IiMA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiF5j-0000fE-7J; Tue, 11 Oct 2022 15:14:39 +0200
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
Subject: [PATCH 12/13] phy: qcom-qmp-usb: drop sc8280xp power-down delay
Date: Tue, 11 Oct 2022 15:14:15 +0200
Message-Id: <20221011131416.2478-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011131416.2478-1-johan+linaro@kernel.org>
References: <20221011131416.2478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_061451_802476_34E744E5 
X-CRM114-Status: GOOD (  10.35  )
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

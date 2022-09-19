Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2226BC6FA82
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 09:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5n4k9AyuH+YeXyAOdFFQw0GYZ+xfEWXXI5rbaUCcofo=; b=W8j1uADVhozq45
	htLkQghACYO1yp6qSlFmOoMzdLWTCifEnwuxtQVIvaHUpsV78ofMG7s2dliNYzSWB8grMuuXvLLlf
	gdgSEDWspme7oanD66QRqm0SC1BpYU04sWBij4MoISnGQF9gzKjUXP7nTesskBuKjKf652WS72W6Z
	Di37mVzCyUgztXTlPyCPDrkX2ofDAwz4ZpuCgc7B9kf1fgiymF4Hw8xJ7LO8UQYmHfZeg0Hhn6NdX
	Zv4p8BDz4SvxEAJXXdtC4NZEmGRGXt+EfMaS67D6leRs/YbWYfDYnqAvv7rjRQEY5JGtkp4upT5el
	kNdIG9+gPiBrdnCPDFZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDWv-00B2yr-Cq; Mon, 19 Sep 2022 09:57:33 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDWn-00B2qN-PC
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 09:57:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6F504B80768;
	Mon, 19 Sep 2022 09:57:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 340E8C433C1;
	Mon, 19 Sep 2022 09:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663581442;
	bh=SC0xpJYfatRTu9GE/Tfh5/6VjsG9r+bd/p1faUdRTkI=;
	h=From:To:Cc:Subject:Date:From;
	b=Aq2Rbil72SBqmVgyJnsZowmBIeehH7/MFTIFFSPJJlPNLc87aum31tc0l33+1HdxJ
	 VZx6koaAXFC45wDvXeSLXFBZaDYjGDpYx8jFbudlFz7JLWdoI3giurWfY9HOSdTbws
	 X9WOtEGOU0+MuHr3RNY/iHVAtiRqfhf2pjJar6EfMCoWtOnuWrfrVvMRGRhI5vwZSo
	 eNtmZk+PuoImccjmWbnDJgWAmVSZhs88lkb82+EaaxXUs9GpBds1qt06HrNJkW4nLV
	 uVXTWhkiRY5aTsiTC8Wx22OTN0Yw8crP9v3w8PVa6NZ1es5BAGh2BnRQx//4iD/xUc
	 GvnJw2TWrgHmA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaDWn-0000aD-Ro; Mon, 19 Sep 2022 11:57:26 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] phy: qcom-qmp-combo: fix sc8280xp PCS_USB offset
Date: Mon, 19 Sep 2022 11:57:00 +0200
Message-Id: <20220919095700.2228-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_025726_269450_E2F51CB1 
X-CRM114-Status: GOOD (  10.63  )
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

The PCS_USB register block lives at an offset of 0x300 from the PCS
region on SC8280XP so add the missing offset to avoid corrupting
unrelated registers on runtime suspend.

Note that this region should probably be described separately in the
binding.

Fixes: a2e927b0e50d ("phy: qcom-qmp-combo: Add sc8280xp USB/DP combo phys")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1 +
 1 file changed, 1 insertion(+)

The corresponding DT fix is here:

	https://lore.kernel.org/all/20220919094454.1574-4-johan+linaro@kernel.org/

Johan


diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index d200cd5ca4fa..ed196d00815b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1261,6 +1261,7 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x300,
 
 	.start_ctrl		= SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

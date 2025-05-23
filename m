Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2DC2C54F30
	for <linux-phy@archiver.kernel.org>; Fri, 23 May 2025 09:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HyHRnyZ3HsA1wUAOiW44rceEyRLa+1Q9ojUYhlZgAdA=; b=ZcRmvAaYHWYkqK
	BcNVYIiIQFtBoZ72xfmJn/0PWb7GxMHtLxQF2/0bQrbAn65jylngZf+y703wlz4BRVGGLOVPxPRZk
	JVCfwJEudImL3xwobxRhvtUbd09lN1QpSdcETKCxsBvAh8nopOV0elQ9LofMv8vfCdlzZ9T5sNtWt
	XcZGGQIn6Q23RrjbBKMG021WrH3UzmF7X+fVYSTi4ju8I61W90QTJB55yRfc14t0YPqnCgxQuroXf
	QZTcvGnxHc0jLgqNZik54PdWYPXFkm/YGM6nYg2wVIceqgIVGmxpz2aJ64riq+RXQHS5ym8BW6gto
	RzrvcfO409reqpr1AaVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIP5d-00000003UnS-28oX;
	Fri, 23 May 2025 09:53:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIO5Y-00000003M10-2DJw
	for linux-phy@bombadil.infradead.org;
	Fri, 23 May 2025 08:49:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SE3xaRWbD7rQg+OrbcjloHapPB9NJW0iMHLZ506a4b0=; b=f5M2dC2PfIyp6Z4tE50cagGzpa
	guCVTj+Ku6zz0/U4P5XC/pwGTPHm9Xab0M1DUEbu7aMsQtR6wuD7/MsUQ23yIc3aK7VCiA5QIJYQv
	H2R0oPxTs2ukb1C5R3aDLX6mCv6SICLU6kws1VUTMxxQX0eItKVAZ2K3tz/A3ZLC8ha2dm8QkRIT8
	VidpvppfpWniK8+zWZPHFOSd/qo4CL396UBb7fzp59rIeumLwYrRXkdEZk0S+wPZIpVxAnBgaBdpB
	Xekxghsjz6li8ygdyhPKUBt/sohTqr2u5BqQM3jxzb1cu3bqfP7qjJADuEI9gbhit4ZGNqqsgKPDW
	YLUcAVWQ==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uIO5V-00000001EMF-1fzG
	for linux-phy@lists.infradead.org;
	Fri, 23 May 2025 08:49:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 28CDDA4F1F7;
	Fri, 23 May 2025 08:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4BD7C4CEEB;
	Fri, 23 May 2025 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990145;
	bh=5JcbaWnU4DoMGQDtdSraUtirBZ7DeySehZbf2U9yd8o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eqhV2wzM+2ML2SQ69Ou6NVa+do0LIjfBgpCC9Q2SmHjgduIEqvrM6T7+sRPglKPzr
	 356xwhF8h54kQhecDlie3lNBYlFoBGZUdtSzHpmNxzw6ayghaGg97X5DXRyin+dtja
	 wuP51h979S82+eIIB6yfuOHXrwjcbq9sGeyqaIA1y/mNLIuC8/h9pi2LjMBqY8rAm1
	 TNNCDkLEfxkKznB03a8iq1lsLLidrjNrSiZVIZtO3+DfZzn67lduzCvnrxeTN6Esu7
	 085DNRah2OCpO8h12EafGRUgB/UcvuSOPaykr2/Aq+Yl21lxkWif8o20Du1HHu+794
	 pxf2GO15tH8VQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1uIO5P-000000002se-38CV;
	Fri, 23 May 2025 10:49:03 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 2/7] phy: phy-snps-eusb2: fix repeater imbalance on phy_init() failure
Date: Fri, 23 May 2025 10:48:34 +0200
Message-ID: <20250523084839.11015-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250523084839.11015-1-johan+linaro@kernel.org>
References: <20250523084839.11015-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_094909_888419_B7BBDD74 
X-CRM114-Status: UNSURE (   9.39  )
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

Make sure to disable the repeater PHY also on phy_init() failure.

Fixes: 3584f6392f09 ("phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater")
Cc: Abel Vesa <abel.vesa@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/phy-snps-eusb2.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index 19af3f99692c..a799c3d2bcfb 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -468,7 +468,7 @@ static int snps_eusb2_hsphy_init(struct phy *p)
 	ret = clk_bulk_prepare_enable(phy->data->num_clks, phy->clks);
 	if (ret) {
 		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
-		goto disable_vreg;
+		goto exit_repeater;
 	}
 
 	ret = reset_control_assert(phy->phy_reset);
@@ -493,7 +493,8 @@ static int snps_eusb2_hsphy_init(struct phy *p)
 
 disable_ref_clk:
 	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);
-
+exit_repeater:
+	phy_exit(phy->repeater);
 disable_vreg:
 	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

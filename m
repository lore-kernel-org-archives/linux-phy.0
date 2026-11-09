Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE58606A33B
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 22:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LaeWOj7l;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=proton.me header.i=@proton.me header.a=rsa-sha256 header.s=protonmail2 header.b=nLWFZvSY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=FSGKkucrUmemH8ZipnQ9QvEqnBCsy/vNisRPb+/vJJQ=; b=LaeWOj7lggVvqkHJNhFeviCaht
	99HuM5dq25RrUebRcvKz5ZzxqWsJFicE7HoIcH2ABJaRKQ3L7xoRMvryhDS7GWpeRTsrl6POeNWMP
	LiEvOhj2UIVEmUhOqcc9ENh+1vGIinsi6LoiJtP+5Y5Nv46pD1v6Sih+mHRpg3NJUDETWgeKok8LO
	fH1yIn3znIikUKApieJC1qy/oF+mZVwmbgttqxkmiDyj9P/oI++xrg0dQPSIOlaHCsT4RKYavjRua
	4ukSsLVTijvCbY0jGzaKRvqqgHBNeVhlBC8lVwWyiDL8p4Fd3Os49Liu1t5B9VPbPiRQymnBsvs40
	GSQ6cGag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQXey-00000001rY4-1r0T;
	Mon, 09 Nov 2026 22:16:16 +0000
Received: from mail-24417.protonmail.ch ([109.224.244.17])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQXes-00000001rX7-42Ul
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 22:16:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1794262565; x=1794521765;
	bh=kE4syZx4j/5qX4L+2YVxHbOJsxFk3bQcYDZtlzgC2zA=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=nLWFZvSYE9lR2C9K/r8k0MTD19qXnddoMFxZKLIOatwKpWURP0sLdOB38Pow89wpS
	 UA4tJjDcc+9FZBvm5oGkRwLPrL5Zlb0uWg1Snqp53csXFY8tHH9PxfGfWzBZSFINW6
	 YdPF9X2TsTcQbIjQB81Q81+4K+89p780GR0Vi9kA4BSHzhDWCrXTxnxo3BhNNdQHVP
	 3QSSMdAdM6ccd1CYfytwB+k3qROci7ZZMVDabBn+cf7Q5zje2xisB/VuW72oxLXwrV
	 ogz08D4DKyNxlC0GXxF2NJObnVdO+/aZmZsZlasJS/c10IpI7Gt7NQzq7qJUsq7AZr
	 a1aZPYQaobvUw==
Date: Mon, 09 Nov 2026 22:15:59 +0000
To: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
From: Soheyb <soheyb_boulaa@proton.me>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, Soheyb <soheyb_boulaa@proton.me>, stable@vger.kernel.org
Subject: [PATCH] phy: exynos5-usbdrd: fix HS phy init count imbalance on Exynos2200
Message-ID: <20261109221522.2796426-1-soheyb_boulaa@proton.me>
Feedback-ID: 140697376:user:proton
X-Pm-Message-ID: 5ec8a07a4fff850a81f2eff5aebc5744ac5da29e
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_141611_500511_2C779EEB 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

exynos2200_usbdrd_utmi_init() calls phy_init() on the high-speed phy,
but exynos2200_usbdrd_phy_exit() never calls phy_exit() on it. The init
count of the high-speed phy therefore never drops back to zero: after
the first init, every later phy_init() of it returns early, and its
clocks and supplies stay enabled across an exit of the UTMI phy.

When the high-speed phy loses power while the controller is suspended,
it is thus not set up again on resume, and the DWC3 core soft reset
times out:

  dwc3 11210000.usb: DWC3 controller soft reset failed

Exit the high-speed phy when the UTMI phy exits, first, in the reverse
order of the init.

Fixes: cc52a697f87e ("phy: exynos5-usbdrd: support Exynos USBDRD 3.2 4nm controller")
Cc: stable@vger.kernel.org
Signed-off-by: Soheyb <soheyb_boulaa@proton.me>
---
Tested on a Google Pixel 9 (Tensor G4) with an out-of-tree port that
uses the Exynos2200 phy ops and powers the USB block off in system
sleep: without this change the soft reset failed on the first resume;
with it, USB came back after each of two system sleeps. Not tested on
Exynos2200 hardware.

 drivers/phy/samsung/phy-exynos5-usbdrd.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 087d552..0bee928 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1486,6 +1486,13 @@ static int exynos2200_usbdrd_phy_exit(struct phy *phy)
 	u32 reg;
 	int ret;
 
+	/*
+	 * The UTMI init initializes the high-speed phy; exit it in turn, so
+	 * that the next init sets it up again after it lost power.
+	 */
+	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI)
+		phy_exit(phy_drd->hs_phy);
+
 	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
 	if (ret)
 		return ret;
-- 
2.56.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

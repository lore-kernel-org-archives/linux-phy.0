Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5179606A885
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 06:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rQQJcdPf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=proton.me header.i=@proton.me header.a=rsa-sha256 header.s=protonmail2 header.b=mVxvbNwo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=j1x1jGsTnuLDwNfBkQubxe3C0XY1JiFo87WPVJ9u+vU=; b=rQQJcdPfUo7nhK0/5UHaeVwug5
	pTO1Mo94smvbdfmf1bqztVjdxJbeOeTwE8nkhsEzi2zDAiTW0PQlZ/lQx5kMhHsnlcIOG+/QZtm/D
	uS/oZ80Ct8/A6hGGStalKataNExiQTV0p1eocD84rU2mzO4rG/ZceGJozcogyCiugYHix8biT7SeW
	SBGRo07UCVVe1aLsM0IO3spP+mKPrfk+s8LQjindWxX42TizoaB5THpDivJQnzv2ECvn35jXIWwa6
	tCPX9gIlJn9c1rkvmnWy1Fe30ZtsBdPG6fqhgQIHAp8PwrE0XKr1KngTC7Lz1+R/8TwgaPMMHgr+o
	ivEy0rAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS7V2-0000000FXU6-2ozR;
	Sat, 14 Nov 2026 06:44:32 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS7V0-0000000FXSQ-1HJK
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 06:44:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1794638667; x=1794897867;
	bh=GQtdBeiFOXP728SD4q3k0TWUdrvTTTXxrXqVYnu7l4k=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=mVxvbNwoQ2fLHFpZy8VDIpt7Sfr0JRryBGhX2h6oZlv2edn/kMNqa17j+XRJUQsLZ
	 LJ0cBxT9ZumVd5w59stkhKSM7R5MakEL2+o2KXpYPmn3/cmUGy5yAUHqqLyfcCH7H/
	 ToRp8BaJa5nqbHBLtgAIUExqeQznjJCC988tfWzVKqPAHL9l/+EZHtevivBh6Js2z1
	 YSwodNAiUpbngiMQ2L9VFzjx6kg+saq8zcgTCjmtcvxop98mCOpY83R16OohTx65yi
	 W7ElhL/GGvWC8+2rnsjUADndrmsAIKQc4dWM2sWzFj6V5MHaXQFfToOlD2eHX1y1zj
	 07fBwsNX8Z8JA==
Date: Sat, 14 Nov 2026 06:44:23 +0000
To: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
From: Soheyb Boulaa <soheyb_boulaa@proton.me>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, Soheyb Boulaa <soheyb_boulaa@proton.me>, stable@vger.kernel.org
Subject: [PATCH v3 1/3] phy: exynos5-usbdrd: power the Exynos2200 phy down when its init fails
Message-ID: <20261114064400.45572-2-soheyb_boulaa@proton.me>
In-Reply-To: <20261114064400.45572-1-soheyb_boulaa@proton.me>
References: <20261114064400.45572-1-soheyb_boulaa@proton.me>
Feedback-ID: 140697376:user:proton
X-Pm-Message-ID: b61ff92e42010bfa9a4b2839dd5c983310e9ecf9
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_224430_493310_27EA4B9F 
X-CRM114-Status: UNSURE (   8.56  )
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

exynos2200_usbdrd_phy_init() enables the regulators of the UTMI phy and
takes the phy out of isolation in the PMU before it enables the clocks.
When clk_bulk_prepare_enable() fails, it returns without undoing
either. The phy core does not count a failed init, so no exit undoes
them later: the phy stays out of isolation, and its supplies stay
enabled, until an init and an exit succeed.

Isolate the phy again and disable the UTMI regulators when the clocks
or the phy-specific init fail. The phy-specific init does not fail yet;
the next patch makes the UTMI init return the result of the init of the
high-speed phy.

Fixes: cc52a697f87e ("phy: exynos5-usbdrd: support Exynos USBDRD 3.2 4nm controller")
Cc: stable@vger.kernel.org
Signed-off-by: Soheyb Boulaa <soheyb_boulaa@proton.me>
---
v3: full name in From and Signed-off-by.
v2: new patch.

 drivers/phy/samsung/phy-exynos5-usbdrd.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 087d552..a6fe779 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1462,7 +1462,7 @@ static int exynos2200_usbdrd_phy_init(struct phy *phy)
 
 	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
 	if (ret)
-		return ret;
+		goto power_down;
 
 	/* Set up the link controller */
 	exynos2200_usbdrd_link_init(phy_drd);
@@ -1475,6 +1475,17 @@ static int exynos2200_usbdrd_phy_init(struct phy *phy)
 
 	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
 
+	if (ret)
+		goto power_down;
+
+	return 0;
+
+power_down:
+	exynos5_usbdrd_phy_isol(inst, true);
+	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI)
+		regulator_bulk_disable(phy_drd->drv_data->n_regulators,
+				       phy_drd->regulators);
+
 	return ret;
 }
 
-- 
2.56.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

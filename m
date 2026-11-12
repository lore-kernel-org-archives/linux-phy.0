Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995C5606A89B
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 12:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a50UO952;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.a=rsa-sha256 header.s=protonmail3 header.b=m0BvharU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5/DoscGPD4q5KU8O4fFWiYqFh/8NYg5MkY9B25lkaJM=; b=a50UO952oUO4mVPyaWHpYB1/uv
	XE10N+VWVnviZDKhnxoq2r7TKOVbhumBtzYCgAcxExgKL12Tg8o3YTOieGX7YMnmxcQM9W97qm9Sw
	X0l++0UA+ryIB98VWsRD0uS6lwElYeINA6lSn2PyvTVrjeg2/kkGZuQBQgXrkdrz5N90+83+8DWGY
	8m3IrunHPkix+j1843BAzBFuk1IA5Yxar4iSEkId0WgAMO9l2RPXDNhLhLpRYZZKvYxFWAn4Tz6jq
	zqAk+5iSnG2IjSc5SWrUOGO5D0qqDObXh6uQi7yiVnrTOTNIYtCT8YG7tF5iyhfoOYxzdZVGkZwE4
	zoLFugEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUIx-00000009vwT-1UeI;
	Thu, 12 Nov 2026 12:53:27 +0000
Received: from mail-43167.protonmail.ch ([185.70.43.167])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUIr-00000009vvO-45rG;
	Thu, 12 Nov 2026 12:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1794487998; x=1794747198;
	bh=jGP1b9jLSQAhw1LFbHdnVE1Cm2LzDCydg1pHvlgHSlU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=m0BvharUtArG4OstXIzrvNfYNCC4VZhvXTlvV9msTyo7x6bfiVWEAQE3QcXUBin17
	 ub8mMN8L6PHCPEYXlNqEhJS7oBDtkHv3VVY5cd/r7f1MAqwfu7EMSRcowTj2HnZtnl
	 LU/ZuilRJb+1nmqI6MvC5mGv8VCGVWCVpgKVgIRozLTAo6XVcdxBqwKtgsMlhC+y3v
	 vR995jHgD6DhGvPmkZrSkwqnulBRwduA0fs4FezDJJJpflEH0e5gELUVYFkWTQ+hMV
	 No907ESqdTkXIgLwP98X69v9GqQNY3NLuAhM+BkS2IPvKHYpetIGwegv/3QMr8da3o
	 SLmaVZkaNGGFA==
Date: Thu, 12 Nov 2026 12:53:13 +0000
To: Vinod Koul <vkoul@kernel.org>
From: Aiden Isik <aidenisik@protonmail.com>
Cc: aidenisik@member.fsf.org, Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: exynos5-usbdrd: Add support for the Exynos5515 usbdrd phy
Message-ID: <Dhrinh2IqyBByHLyFp_SHX9igTjQgKk4G62C1vp6tHdO8QkM4kiFDLaExxnZeljVMXJ8YksFrLRDRT9voAj6LiJYqPvrUg3nFVNFzi7C9Bc=@protonmail.com>
In-Reply-To: <avWeJqbpbLcWgq_R@parshuram>
References: <20261022-for-next-lucky7-usb-phy-v1-0-2e47f8484bf4@member.fsf.org> <20261022-for-next-lucky7-usb-phy-v1-2-2e47f8484bf4@member.fsf.org> <avWeJqbpbLcWgq_R@parshuram>
Feedback-ID: 46524699:user:proton
X-Pm-Message-ID: cb3b8ddeefb938cd47e6dcf3bc37b5939fef5922
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_045323_130649_78BC3A4B 
X-CRM114-Status: UNSURE (   6.95  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Vinod,

> .n_phy_cfg does not exist.. Please fix this

As stated in the cover letter, this is introduced by dependency [1]:

> This patchset also depends on [1], due to using an
> exynos5_usbdrd_phy_drvdata member > (.n_phy_cfg) which was introduced to fix
> an out-of-bounds access bug.

> [1] - https://lore.kernel.org/all/20261020063559.3530901-1-selvarasu.g@samsung.com/

Which has since been merged by yourself. I assume you just
looked at these patches in a different order so saw mine first?

Kind Regards,
- Aiden Isik

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

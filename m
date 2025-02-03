Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA21C02193
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6QzYJegoQsoRTTQfxIIisGxNTg4jx8xGX/CoEPeFd4=; b=uc6ZoaMh1OAEmi
	voSdJCeu9cWSdqvePM2FBTRtS3r1dJ7XmGHG8e1GHd9AkYeVDFgfAGLlPfcJ+HEKkTEPblph0Fqvi
	BiJULjyyjz/r/X19M5iMZ4oM6QxiI7lZofUw0LI+dFXXbe3woqLA2O1Hfy1GP3z0X6H0EHo5Jg4xu
	lBxAkZWAA8DkfcgpHf06zSQwfAsq0yGzttzxgkpWUTi8HGXu0d7csvoyeoBsRZFHajzKfrwbRetBc
	ByEOuVAgFFIXUFMCkdpoX0tkWXiR4T1nVM6Vv3O4B3uT1FhGEdQ0OPVNEOhNXABPjatVLKGEKgVd0
	3rWXGy4AckDdoryAHzuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1terHs-0000000EkKq-22HO;
	Mon, 03 Feb 2025 07:54:32 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1terGX-0000000EkCR-2ckZ;
	Mon, 03 Feb 2025 07:53:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3A1DAA40EAA;
	Mon,  3 Feb 2025 07:51:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D18AC4CEE2;
	Mon,  3 Feb 2025 07:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738569188;
	bh=98P8X6HMfcm3Oxb2BZKVpxuLvrRbMpgR2GrkKyq4mkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GdzDDw+TQ2RB5QCOljApbh1Dlc8hoYjvO4lSQ/49lsQ6ZVV2A4k2pJaVsWI+FbVNo
	 VJ0yLHPv9e01G669yA0cuIG1WK5T0WTiUegMwrtsOhcnUeitdHku8VcHPoepnDJlw8
	 nKJqcmFLJrGplgm03KhG48/AI5d0XlKpajVGrFIv7SBLqq6QE05rpho4o4HNhHNnXr
	 d8pLn1baGWmyQ7nL3QgzE6t+29sl0NIKOwo3GOwMGDtBM0fK9eXa7LqHDX5ggldgBy
	 NAhtDZ4dmKbGXZwVM37OEtQwAQvLvyAJXI61czxKGZ0rwcFHOkR0idtiPKZFfgURMR
	 VVlgiT8sUR8Pg==
Date: Mon, 3 Feb 2025 08:53:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Andi Shyti <andi.shyti@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Jaehoon Chung <jh80.chung@samsung.com>, 
	Vivek Gautam <gautam.vivek@samsung.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>, Sergey Lisov <sleirsgoevy@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 02/34] dt-bindings: hwinfo: samsung,exynos-chipid: add
 exynos7870-chipid compatible
Message-ID: <20250203-roadrunner-of-unnatural-wind-54bddf@krzk-bin>
References: <20250203-exynos7870-v1-0-2b6df476a3f0@disroot.org>
 <20250202190353.14572-1-kauschluss@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250202190353.14572-1-kauschluss@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250202_235309_733598_FA5A9733 
X-CRM114-Status: UNSURE (   9.48  )
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

On Mon, Feb 03, 2025 at 12:33:53AM +0530, Kaustabh Chakraborty wrote:
> Add the compatible string "samsung,exynos7870-chipid" to the documentation,
> with a fallback to "samsung,exynos4210-chipid".

This we see from the diff. Say something not obvious about hardware
instead of repeating redudundantly subject and diff. Otherwise what you
said is equivalent in just few words: "Document Exynos7870 ChipID."
instead of two lines of text. Instead say whether device is or is not
compatible.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

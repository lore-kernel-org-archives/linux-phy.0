Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25F5FC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 14:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kC4V70yvDgzvRzVA2r1MVn4jw9K9msaHd2HFzDuJ0nI=; b=gFCgqVNgufFTKF
	C2wXhRxESfPGcYMv71/QodRUFLDE0ESixGhmbLiw8QUB5xXMhoVkQ3/G3egzVXy+R3YplbcWft6GM
	uEzEJWfJyUCsYVnY7Oj+2FFaaXp42UFlEHmAW78VxNa5CRXYEuEsLDEAp0Czr6Nvimvqmy93cIfNz
	HYJTbpVrNb6BDekNgHpm/vMQUqUnRD1VIOIhFYR6VrKFjqaXkJSmVdWPBrmTup2TmbHuuJMjvh79L
	sewJB+0C1wKQHHv1JtECnvShvg3B6BRJ+7jZ9HCcQmUcoBDjpXF1bYXXMZQ2HzzmtOnAlJa2IaKR/
	aUkYn4PVvFVC+pH9J2gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvN1-0062BF-2Z;
	Tue, 16 May 2023 14:09:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvMy-00629w-2p;
	Tue, 16 May 2023 14:09:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 60A7D61B09;
	Tue, 16 May 2023 14:09:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1E11C433D2;
	Tue, 16 May 2023 14:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684246179;
	bh=0RSHeuFCD2oceb9abj/1/8VS0htG2UkEmX0KLrYlQGA=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=WgLNzi4CU+Iq84e2g5cZY6+HiU6CyPB94Oz3EvRBXv4tOH/3oxGe1j8azfWR9Zn47
	 Uk6rLEKIpr0aJe0BBSPYMjpjckPvIEqrxFYnrW3XRdHGkxskbUpxK/AHdGPAew1H7r
	 CT486piuqu85p/iVrPXTrruMDSPwjpjWQ9tJMHCNJuhgO8MEtojLhilZf0XeffFUos
	 2kOzWmuFUlHm/QiZcS1YCk5VrlyfRjqDsb+psp0fR5hYuD9AIBx0YyyeU4yekab4IZ
	 JfEuWrJgtCfmLtChATdNRn3kN8d+ouGK9E1TAF8hhqfauDa2ixDArvPFNLaJZTQbz1
	 MyIgTv2rUQrBw==
Date: Tue, 16 May 2023 19:39:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Artur Weber <aweber.kernel@gmail.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>, soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v3 08/13] Revert "phy: Remove SOC_EXYNOS4212 dep. from
 PHY_EXYNOS4X12_USB"
Message-ID: <ZGOOoGIlbqlmo/2Q@matsya>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
 <20230501195525.6268-9-aweber.kernel@gmail.com>
 <193f3489-4937-6d4a-2466-a67d335ac37c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <193f3489-4937-6d4a-2466-a67d335ac37c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_070940_955809_77BE2935 
X-CRM114-Status: GOOD (  16.51  )
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

On 09-05-23, 19:42, Krzysztof Kozlowski wrote:
> On 01/05/2023 21:55, Artur Weber wrote:
> > Support for the Exynos4212 SoC was originally dropped as there were
> > no boards using it. We will be adding a device that uses it, so add
> > it back.
> > 
> > This reverts commit fee7e1d50c6e6da1d99035181ba5a5c88f5bb526.
> 
> Subject:
> phy: Revert "phy: Remove SOC_EXYNOS4212 dep. from PHY_EXYNOS4X12_USB"

Right a revert patch is patch which shall follow the sematics
> 
> I assume this will go via phy tree. If not, let me know.

Applied after fixing the title

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
> Best regards,
> Krzysztof

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

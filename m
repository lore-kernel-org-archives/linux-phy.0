Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE929C5AC7C
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukYU4FYhX7Ll/KY2egyGlAIxS2snX4sWJ1Wj1RtPqCo=; b=zQbZvqHRyvjqbC
	/I+iJijmLsIox+ud+drbpzdrgByXZ4RM9vgRLmlnXJuFTpZFMIYOTJJXexswE1YsMzZR2fOUKEwVG
	v4w2WvPF1UgmfwKrH3w+GyPiOXoONJ+Ku7Gdul0KhpZZhjQVBfdks7OAJQqWh+7tVB/EeL8eqXkDL
	+V77Dokdy4zMYMtg0VAR9GBGtWjSSs6zeXX7hMMJVQRYCCNQI7QIq4mcnxjghzFBiVWNbdXLU9zC4
	hlp6yNMUTC46bqfP0aHg+glUPSef/zugEXrZKlA1tkB4VHlQfh+Uwt18NWphBJexkTjt9G2qJ8s4y
	8aOooToKXzbc7IkSNXBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vc-00000006CxQ-2nEA;
	Thu, 06 Aug 2026 16:26:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0va-00000006CwK-40VG
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:26:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B3A3D43FDE;
	Thu,  6 Aug 2026 16:26:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 528731F00A3A;
	Thu,  6 Aug 2026 16:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786033602;
	bh=PKFRZzfK/eoYM6bVyzeDKvY1W6THJ6L9mt5NOCpTsVw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=XIdcRjoqqYnm8SFK+Y8waGJ0jqLtuXWeI6mCXEZq066GhVGf34zR4F6dWw6TI8yOq
	 eBoxVFbmGHiMfFALQqCZI2Vf+230b+HdzYA6Cr+wH7pd2kp6DIcfW347ypP8ZbX4qr
	 ExMY4DD0XLMKrseYCxB5mRUzJ76DJcrH2eEme2NaqKBIYm8K+eOP7g40haE8Jle1lk
	 tohayz2E5rJkc29N1IBeIiQLUyKGz30zHgB5IVYxg0UKzUxd5jP1KRUGptFjNbptnh
	 24Jfl4CrK+h4Y369lXVTmkNxFbBs49vf4N2dAx5pIvhShaq/VjHVz2bpXw8/odfD7b
	 n4n8DQNvYO2lw==
From: Vinod Koul <vkoul@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, 
 Fabio Estevam <festevam@nabladev.com>
In-Reply-To: <20260729192830.487150-1-festevam@gmail.com>
References: <20260729192830.487150-1-festevam@gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: Balance runtime PM
 operations
Message-Id: <178603360092.674490.16705103270444199658.b4-ty@kernel.org>
Date: Thu, 06 Aug 2026 21:56:40 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 29 Jul 2026 16:28:30 -0300, Fabio Estevam wrote:
> fsl_samsung_hdmi_phy_probe() enables runtime PM, but the remove
> callback does not disable it. Unbinding and rebinding the device
> therefore results in the following warning on reprobe:
> 
> Unbalanced pm_runtime_enable!
> 
> Disable runtime PM after removing the clock provider.
> 
> [...]

Applied, thanks!

[1/1] phy: freescale: fsl-samsung-hdmi: Balance runtime PM operations
      commit: bb82e4327a39a17a9338413554b11b328ced0ffd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

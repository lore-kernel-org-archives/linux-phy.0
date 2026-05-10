Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17963CD37AF
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIdwNprxyeKbPz80VRDof6UdDDhfB1jJUtdswlLkIdk=; b=kgRvj2Qc54COi9
	2zmxa63FX4yhRIn6rt71r5/Rq1gr4JLNvL40XexLpSAj8hVHh9A1SlSg0L6q62CslgHzV2WPiNFfs
	8BeYnymTMoWrHHTnt+q5eQoDuFb3AJZfpSLbVYaIvJZWQi8qP6yoHL6wLtgrxpotOjPOq3QFZsnxg
	DvhY5JyFLcDmQJ+K3hjlza7BjzMJ4bmoMyesZstNjEVJWv8fsoad8rgjV+7uX7SC06CYJ8Z6l9dBk
	mSDaVsJLm9zx+ysZkyEEyBVoWtlBoYWWw1EmsMQAYscrY9c+bc2s5960EjpNeDUIzqZma3wHvBnwV
	lnNgxRZrY7vn0U9US7Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3K3-0000000AiSi-3WGx;
	Sun, 10 May 2026 12:31:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3K0-0000000AiRA-3btu
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:31:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5F39343F6D;
	Sun, 10 May 2026 12:31:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50945C2BCFB;
	Sun, 10 May 2026 12:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416308;
	bh=rYTVoUJlOhx6RpXKgdLOgKe0eiYOtQiy1WmXvoW1AEg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jFUgWkyevAQAqAmOH0fekKaGkiwlHpWNb68zIEUx0hFLD0rRXm7tb5o3XkoXWcRj5
	 2Esw4whwBb8jiAYNA9F/ZHQRa7xDsRV8T/UQp98xMg3+tSHrS7PhBMtY01QeCElLJI
	 1X6FNCJ0GfBbD5rvdI/r1aLVZ8ZrvdLXCaYyPhc8FQp7d5/mhNDHa5MwOLude1xnkX
	 LLpSP69vN0lCi/fQ5gfvwu+wrepNZRsAsPKFUWYdrk7ZXQJirzEr5dtWgfXTrFlrt/
	 Opc311r4zPiJCWShvwZjBiIMZgDb9wHPgMdcMaYqeuKoC2b1VysqxyxJdaHmjsRJ6d
	 xgCWNf+BXi9rw==
From: Vinod Koul <vkoul@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Niklas Cassel <cassel@kernel.org>, 
 Vidya Sagar <vidyas@nvidia.com>, linux-phy@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260426000309.54959-1-sashal@kernel.org>
References: <20260426000309.54959-1-sashal@kernel.org>
Subject: Re: [PATCH] phy: tegra: xusb: Make USB_CONN_GPIO select
 conditional on GPIOLIB
Message-Id: <177841630492.434434.10037791395679049058.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:01:44 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_053149_078185_6BDA3727 
X-CRM114-Status: UNSURE (   4.27  )
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


On Sat, 25 Apr 2026 20:03:09 -0400, Sasha Levin wrote:
> kconfiglint reports:
> 
>   K006: config PHY_TEGRA_XUSB selects USB_CONN_GPIO which depends on
>         GPIOLIB, but PHY_TEGRA_XUSB does not depend on GPIOLIB
>   K002: config PHY_TEGRA_XUSB selects visible symbol USB_CONN_GPIO
>         which has dependencies
> 
> [...]

Applied, thanks!

[1/1] phy: tegra: xusb: Make USB_CONN_GPIO select conditional on GPIOLIB
      commit: 18af47764d75bf2cd6297289255fd7f83967e7cf

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5093C30658
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eh1kUw/XCgC3F528NN78KFaG3K4eF5jzYaAIGcqx1o0=; b=Cf6uR6rqOqMp1T
	3SGPjkiDS60YMCtgkPPZs01Ee8h9wl46KktcIPDf5BhRlfx7xAeR9WHtRYJO/CV4X96YqfwhNCwU3
	mb8t2k6LK1egA2BHg39xRoCsw+VAmpXHITeyLBu2bKD7Gx2VcdWaJ+ca3P10S+0HQ/mFl4o1aOHYs
	W31huujbgqyKgaL3LUtNgcErQvev0S8IxS5dSHnOQsPaE1pnb/eSrsIqZTHeESmxW50tzMIVenMGi
	WqCvZUsqoOi7VjLZ7IBAoWpzFN67MvhFBqUYREYVxtiErHu5Ix17/Sa/85TxtAncR9C1voPkLlRI5
	aslerJqjHUJQvXMnl2MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgc-00000006sYV-1Q44;
	Tue, 02 Jul 2024 13:36:46 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgE-00000006sLK-21FK;
	Tue, 02 Jul 2024 13:36:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C2A44CE1DF3;
	Tue,  2 Jul 2024 13:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 626F3C4AF0D;
	Tue,  2 Jul 2024 13:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927380;
	bh=44/04iEfSWZJOuq7DzquvfVUDBFC9Eq1hI75oOfnXIs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jVci5KtqNo3GJS9u7LJbYxh/4jq6YhT4F//kmuRhytaqnhc7EvRekBO1pD/dd3WOh
	 K9jNhs9L/sya9xTFciiZOoCazKFzcX/gkAV6VYR8POvAQgzaLlV6w7pHBWzMBcYsdJ
	 xMY1C17123lRebRssDu9O+VdQgxM9tvh/197nYBprSrDSCnueZNL7FIXTdAV81fGV7
	 8Lg9F/5F9+96m3INFmptqbVTY+MByZQWKKBb9L3knZVjCOrnD5sGJCbFUCMlDdud3q
	 IyKZofoN0zy4Ih9int/zQ+z28TRsTm1hGUWb1mxFtx7Z4XBS14xdMRNgMW72NCAk6p
	 kVfbVFgCjg47A==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, heiko@sntech.de, sebastian.reichel@collabora.com, 
 andy.yan@rock-chips.com, s.hauer@pengutronix.de, jbx6244@yandex.com, 
 Shresth Prasad <shresthprasad7@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, javier.carrasco.cruz@gmail.com, 
 skhan@linuxfoundation.org
In-Reply-To: <20240620212806.3011-2-shresthprasad7@gmail.com>
References: <20240620212806.3011-2-shresthprasad7@gmail.com>
Subject: Re: [PATCH v5] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
Message-Id: <171992737501.699169.18109328511977115085.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:06:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063622_839995_D2DFD2FA 
X-CRM114-Status: UNSURE (   4.86  )
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


On Fri, 21 Jun 2024 02:58:07 +0530, Shresth Prasad wrote:
> Convert txt bindings of Rockchip EMMC PHY to dtschema to allow
> for validation.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
      commit: e245c725c72f8c94e5fe435fdefd6852851450b5

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

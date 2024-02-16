Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E771C48BEB
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 11:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjLF9rX8jM30Qy0Lny8pINwVOZ0kjxPjaHLFRbR4ikk=; b=3hdYstrmjCi6vm
	CsVeqpXvwG9VN1R4eyv3RhMxnPPAda4iWVRvRgB8bFudXwz2QowUDMBCRO1fe9NuRua4J7zKMCs7F
	RG6Als1Xh2M3YdM2RyVul6t180xEDwQtYVSElPKYMICGJlSnru4RgsnTlDrcyiEK1GOB0aT/qg1vH
	jt/pQdNMrkeEDjTF/AEOTulC25PpnHF5aArDj4x4f1MgBYJcR0zA91wIpIyDjviV/OFYisQOFlNKR
	IAUsln+7VKSJWQWtCj09xr50n5rBzba0AQKgPt7N/orZweYdjmaEieqgZFJSXavwT581uPgMMo1Qa
	IqXE5wRqKtF0n0Mz8I+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawr8-00000002DuU-0aqz;
	Fri, 16 Feb 2024 11:58:14 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawr4-00000002DsR-3zwe;
	Fri, 16 Feb 2024 11:58:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4F307CE2AF6;
	Fri, 16 Feb 2024 11:58:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A69EC433F1;
	Fri, 16 Feb 2024 11:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708084688;
	bh=02zB0ODjIh7Ni22bBy7tChA9AIJOF8lNxePQq8wnRdk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MzpqLh0y6hKn3tTEciOdvs8P4G6Ht+gx34okHzjAp26dx0rimQLB7q5B0dVsk8cb3
	 nzuRQMDVXTHpZkVv+pBuAnV5P4cPZD1fYeA+r+aX1nFay7F5a165rAU5JHQArPdCnT
	 6/DwO42uGzbeBCyIwqwQmXb/x8cRtek0nPgK9LEkkvCvziju0tvOUxvufyzbESioLE
	 jW6+nBJK6LgLsoVkl+/4KKR2N0xJRTb3Fx6CrVUrrSvec8zx4yKzpl5EClWigLa9ic
	 p1uYWwlHYfYE85j6A2V7gNE0g8APT8xKyFlURWCtiKIBikItL6oKLfzoFyUNRguZoO
	 VYwdQtDfV0bMw==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Algea Cao <algea.cao@rock-chips.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, kernel@collabora.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240214-phy-hdptx-v4-0-e7974f46c1a7@collabora.com>
References: <20240214-phy-hdptx-v4-0-e7974f46c1a7@collabora.com>
Subject: Re: [PATCH v4 0/2] Add support for RK3588 HDMI/eDP Combo PHY
Message-Id: <170808468224.352706.3107795890372449699.b4-ty@kernel.org>
Date: Fri, 16 Feb 2024 17:28:02 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_035811_201587_51A26BA2 
X-CRM114-Status: GOOD (  10.74  )
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


On Wed, 14 Feb 2024 13:45:35 +0200, Cristian Ciocaltea wrote:
> Add driver and bindings to add initial support the Rockchip HDMI/eDP TX
> Combo PHY found on RK3588 SoC.
> 
> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
> and eDP links.
> 
> Please note that currently only the TMDS related functionality has been
> implemented.  This has been tested on Radxa ROCK 5B and Rockchip EVB1
> boards.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add Rockchip HDMI/eDP Combo PHY schema
      commit: 3312a0e8f64ec68db695224fcc7457e7292426eb
[2/2] phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver
      commit: 553be2830c5f33308483e8118de748a2c69fe593

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

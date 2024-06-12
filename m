Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29819C27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsJnLO+9KypDn+qyLoRpkbhw5yfaMahWZACnx4N/vx0=; b=xM1JXrY5fjVUif
	/uBxZHeS4QdJxn0Ud1RCkhIbAJrlmW/PUoIH9DYydj6sRKyTYNGenhNmBqlGxqNfavjnOy/Sp7qNW
	lNVEUIvErVHBmL7wuTPWq8Nw3OZigCgEk5wvFrv3OhbzaXL4Ecpr51Wqj1j1OUPXWEImaZn6lMpM5
	akJwRJbYGvL3QhrT0olb0F5y5obOXe8OpLZjOGraBzeiAgRW9YUWLLMI0ZwVfmhnuzX+bgmDCZJb3
	7joeo24BRCF/98i/4FNqLo2mzNg1esPnwCsS1Mo7X2gPvIyMnjWm3QnSr4s5JHkpO5pL4IpQBYMKT
	0gflEnWcP/Hbh4kN9bzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS8i-0000000DclZ-3DWQ;
	Wed, 12 Jun 2024 17:52:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS8d-0000000DcjE-1NVs;
	Wed, 12 Jun 2024 17:52:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C6AA2612F2;
	Wed, 12 Jun 2024 17:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFBB6C32786;
	Wed, 12 Jun 2024 17:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718214717;
	bh=GXMOHq2P2oehyEINCQ6sMop0V6CFw7xgPbg6IOfzRRg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GnHzZj9uYQh4LIbCVKnnC+cLgooqzhp2ghSUtsFCGYeUWpdylbDClZW+qP5iB4jhZ
	 yD6U9tzL89AqY8y8niCXVtIpu1IWFtKVdGkkjgGmO68OBpaVlrXv38TSbOJYzHT+Mo
	 RyArX9rfJrsyXWY7DFr4C3LturjCXYWM0YRcE80GJv630A4NsrlE6DamyGczwzHJQ0
	 g2IwTPmpHfwQkaJxpSd5kpi8KYCnGpda0ULMjmXt5IaQkzK50uqORj0sVQVuM+CpOq
	 jRXpKyoUfPat8zHdDvTVlWFufyCMjdj6CGFrkINfUSNoq9OBaRjSNUvj8pA7kDHanj
	 JdNNgnoUeF32Q==
From: Vinod Koul <vkoul@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Daniel Baluta <daniel.baluta@nxp.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Konstantin Porotchkin <kostap@marvell.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Josua Mayer <josua@solid-run.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
 linux-phy@lists.infradead.org, netdev@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240602-cn9130-som-v6-0-89393e86d4c7@solid-run.com>
References: <20240602-cn9130-som-v6-0-89393e86d4c7@solid-run.com>
Subject: Re: (subset) [PATCH v6 0/7] arm64: dts: add description for
 solidrun cn9130 som and clearfog boards
Message-Id: <171821471028.586907.10718051314971795937.b4-ty@kernel.org>
Date: Wed, 12 Jun 2024 23:21:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_105159_469238_B7BD452D 
X-CRM114-Status: UNSURE (   5.53  )
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


On Sun, 02 Jun 2024 17:49:35 +0200, Josua Mayer wrote:
> SolidRun CN9130 SoM is a mostly pin-comptible replacement for Armada 388
> SoM used in Clearfog and Clearfog Pro boards.
> 
> 1. Add new binding for compatible strings closely matching the original.
> 
> 2. Add device-tree includes for SoM and carrier shared design.
> 
> [...]

Applied, thanks!

[4/7] dt-bindings: phy: armada-cp110-utmi: add optional swap-dx-lanes property
      commit: 4de480264948cbf2b08a72c39ee122a9f9761e03

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

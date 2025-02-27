Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A092C19F32
	for <linux-phy@archiver.kernel.org>; Thu, 27 Feb 2025 19:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3RjM82rug5Blx36q8lZ7Smn6I2MDjhdZpioqu0EO7s=; b=hX5w9Xsmb6OpDJ
	1Lie79vZJYUGYFhLSQm2Aiqb94GIx+AU7qREFqJs0l9GXv3Q3DQmVkZckSoRMj4uZG7UUJ2T8po5W
	I56HcBpJM46Cf5vkfRKI9yRqT2TAZxopGYPzPwsHdurlfq9m0kLnAsPjud+bAXwXkRqiBbz61qsWu
	6XUIpviUOqRXUP7mMGuP/XnMRGnVHLk5D5ZvG1SOp0HieprRrQ7x7+P0ufeifTWF1zUgiqcF66Ftz
	7fUhtAYCc236YCFktFKzeKpm1lQZMQ1rhjqK/B/rLmzPY5QM2ysK0d5Eun1LC4v5ZddFpR0wtoLwd
	B5c3QLpJsBbqW568ID/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnjjZ-00000008YUj-2Nqq;
	Thu, 27 Feb 2025 19:39:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnhAn-000000088xW-1bHp
	for linux-phy@lists.infradead.org;
	Thu, 27 Feb 2025 16:55:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 14E2D5C3FCC;
	Thu, 27 Feb 2025 16:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F032EC4CEEA;
	Thu, 27 Feb 2025 16:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740675344;
	bh=PMQzIiaM7tv42ojB3AJIVBgOlb9WCl+GQFr8e/SPuHk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TG6tgIUL8fAuBotaRDPKSVVKLXPmbDQDpgo3TRFqtHagXWwwHnAuEXJXKJr2XRxO9
	 9sfl3Dbm1yAqjc2OHWQrupL+54GEK4cAqGIIBZmEMFyX8xSJHW2r4GroHENmIkNh0T
	 JPCAeCDsvde30RAzTx0O+XczB7y2p02El+1MKtRmPOX3Gn1YpKBno4KCl41B7P4sX7
	 8GiNADBdXu8ZRAOGt7CZGLxSMEZvwBnt8wMc+YBNxaeUuq86OD3MeduUIUhydR3P9L
	 K9GkWoZU3SxEiXFOOZ200JKfgTDywS0JeBZfCjgEIK3A6LeyOSsFsAg97PvkH4i7H2
	 hWWjJ9MfJfDsQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Peter Griffin <peter.griffin@linaro.org>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20250227070518.5468-1-krzysztof.kozlowski@linaro.org>
References: <20250227070518.5468-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4] phy: exynos5-usbdrd: Do not depend on Type-C
Message-Id: <174067534154.390201.8029469655401583990.b4-ty@kernel.org>
Date: Thu, 27 Feb 2025 22:25:41 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_085545_468150_D6EC6ED5 
X-CRM114-Status: UNSURE (   5.83  )
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


On Thu, 27 Feb 2025 08:05:18 +0100, Krzysztof Kozlowski wrote:
> Older Exynos designs, like Exynos5422, do not have USB Type-C and the
> USB DRD PHY does not really need CONFIG_TYPEC for these devices at all.
> Incorrectly added optional dependency on CONFIG_TYPEC caused this driver
> to be missing for exynos_defconfig and as result Exynos5422-based boards
> like Hardkernel Odroid HC1 failed to probe USB.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: exynos5-usbdrd: Do not depend on Type-C
      commit: 49166afbf4ce3b5049295534150886a99b9867ec

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

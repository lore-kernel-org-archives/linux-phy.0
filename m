Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AEC7D2502F
	for <linux-phy@archiver.kernel.org>; Sun, 11 Jan 2026 10:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shck3feQ4AJ0BVyP9gJSZ9LGDYWZEtbJWhu7lkxkozY=; b=coNvUd8iovcfon
	mw2W3ZHGoQITtGqF+A9T1cLC3oWrpC1e2at6B13M5K5X8pKLSSdM/gLYW22imavnKDg5CXUhz885O
	Uu9ABa5viROom5GJy4hViM8keCVmLFJikDuE18pAorkg5ANUfpwLW94kRxitEoR85/l0/qk2XcnGg
	AUpNj+n5dkkLEVaOgsOC//C3Y0w103KEerUKtl96WlD/yAFsDN7YQ+y70OM1RRYLd+8C4zO1AA1/0
	0Q661U1Qz1M2zAfHC//f99nad8da81k002+lEPbFVMdhsBO4ZeptaujwXUUUUewIsXNQanAPZCjEF
	EZEHFj6MdVPbRaWOccbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vespJ-000000048Gm-3DVV;
	Sun, 11 Jan 2026 10:37:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vespI-000000048GZ-3C4n;
	Sun, 11 Jan 2026 10:37:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E185460122;
	Sun, 11 Jan 2026 10:37:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1642FC19423;
	Sun, 11 Jan 2026 10:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127859;
	bh=9UpBDNHe5jcoYRtrv4gn8uXXwDp4yiBsR/f8enh8Hyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xzq9hh3MT9GZEifu4fhQWEdPRgrFYoGfUw/Mq8y6aLgmNrR2+0GaLHljvBgfM8oJR
	 9jhngsGNLPJRNF4O6ih3LAGfUT8aU2xTusklouJdDYjWG7BtghzqGA49HJ0Ry3m+e5
	 pkP2iGldANmKazxyiE2e7rCOeXUFx9JAFKiEPJbwwi8LISnBFe1IzGHb/pT3cx66AB
	 cfj+Bst1f7ujbj0Li/YO7hgNbiNpGNfF0g4cjHd5L8UtX2EYvzRDyN0WN9qF2jbVN5
	 B3eHxP1EL81ClisWyH7VbgzGaIgc3d0rxBT8p6LZhzqSDdtQeUFm3gheMUSuUDKuna
	 9P0ihrFiF3kqg==
Date: Sun, 11 Jan 2026 11:37:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tzu-Hao Wei <twei@axiado.com>
Cc: SriNavmani A <srinavmani@axiado.com>, 
	Prasad Bolisetty <pbolisetty@axiado.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: axiado,ax3000-emmc-phy: add Axiado
 eMMC PHY
Message-ID: <20260111-camouflaged-shiny-wrasse-796dbd@quoll>
References: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com>
 <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-1-dd43459dbfea@axiado.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-1-dd43459dbfea@axiado.com>
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

On Fri, Jan 09, 2026 at 05:43:29PM +0800, Tzu-Hao Wei wrote:
> From: SriNavmani A <srinavmani@axiado.com>
> 
> Axiado AX3000 SoC contains Arasan PHY which provides the interface to the
> HS200 eMMC host controller.
> 
> Signed-off-by: SriNavmani A <srinavmani@axiado.com>
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
> ---

You did not bother to test your code...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

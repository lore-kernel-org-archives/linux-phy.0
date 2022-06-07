Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDDD5C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 10:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4y+IqLD3HJHS3G+hd99WKhh93N83hTlUzxjNyZ1hpk=; b=sYyo4CXf8JLVQC
	u551vysgYP3Yl9C3zU0uuw2qQO5kvnhWg33V1lkDB3iVDsBpy7NYga6achqhyy/kw1myPWJl+7+cN
	tkxlL6kLYF7T3v0LRPGGlcNvRqgLzyLOITYMEjTqMwHO/HMnV6ihQFM4GzGkhu85FWKb7N4qmXcpa
	L00u0AgzYOZIWYeXV8i/1VTYUrVgXWa/qrhFg7lW7J3g6tKiHeIfbpgfslMvYvyTn745/MDnJMnyz
	wYSrVYJDhZhFQ4CaY3xRbsX7I0QlV4RsNh30FUqfzhxCD2ebwaIXPQPStDTf/OZVe2Tw0KJTkDcag
	svOSRvL5AclNRdbB2lHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyWoa-006pwP-VY; Tue, 07 Jun 2022 10:52:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyWje-006nM3-Q9; Tue, 07 Jun 2022 10:46:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6173F6152A;
	Tue,  7 Jun 2022 10:46:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D994EC34119;
	Tue,  7 Jun 2022 10:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654598813;
	bh=hlj2Yw+EG0pWKoO3cXlRjHbXss4PXj721LR0qzOjcRQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lLjZE/ozDwyHnNNLv6KyRqV2xvU5uJJz9u7TCauhLkOPhBG38x6MdtEwI+8UIDQGw
	 uwtQiaJiwSNPU3upK6sgPC39kbtNdgB+CJfvt4RS1u1WkKKQpLeo6s5YlC3hEycLWK
	 DZ8Pjgv0h7TbVz5Vt1jDWfcTuWpK/D09EzsT4BVhx4hbG2e1VCKQHVGbNkyCNRk8sg
	 k6i/de3UcYlJTd5vP0lgvg+Z56k+nzRjJukId3zcOJcHo7YFPUDXs4S3klIjdIoaFE
	 QhfEG8FvKM9beX57uQhEHDZQEfg+6mZSxo/qgqEJSsXBAY9yR2jt850+wpSUTN7I+A
	 ZsaWxiF+LqPiw==
From: Mark Brown <broonie@kernel.org>
To: linux@roeck-us.net, robh+dt@kernel.org, vkoul@kernel.org, matthias.bgg@gmail.com, jic23@kernel.org, srinivas.kandagatla@linaro.org, krzysztof.kozlowski+dt@linaro.org, chunfeng.yun@mediatek.com, fparent@baylibre.com, ulf.hansson@linaro.org, wim@linux-watchdog.org, qii.wang@mediatek.com, chaotian.jing@mediatek.com
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org, linux-mmc@vger.kernel.org, linux-spi@vger.kernel.org, linux-iio@vger.kernel.org, linux-i2c@vger.kernel.org, linux-serial@vger.kernel.org, linux-mediatek@lists.infradead.org
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
References: <20220531135026.238475-1-fparent@baylibre.com>
Subject: Re: (subset) [PATCH 00/17] Add support for MT8365 EVK board
Message-Id: <165459880859.302078.17715085151206065145.b4-ty@kernel.org>
Date: Tue, 07 Jun 2022 11:46:48 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_034654_977099_3B409FCB 
X-CRM114-Status: GOOD (  14.10  )
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

On Tue, 31 May 2022 15:50:09 +0200, Fabien Parent wrote:
> This patch series adds support for the MT8365 EVK board.
> 
> This series has dependencies on the following series:
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646256
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646091
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646083
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646081
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646076
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646068
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646020
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=646052
> https://lore.kernel.org/r/20220504091923.2219-2-rex-bc.chen@mediatek.com
> https://lore.kernel.org/r/20220512062622.31484-2-chunfeng.yun@mediatek.com
> https://lore.kernel.org/r/20220512062622.31484-1-chunfeng.yun@mediatek.com
> https://lore.kernel.org/r/20220524115019.97246-1-angelogioacchino.delregno@collabora.com
> https://lore.kernel.org/all/20220127015857.9868-1-biao.huang@mediatek.com/
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[09/17] dt-bindings: spi: mt65xx: add MT8365 SoC bindings
        commit: 901fc8e8079e401f3240006cab6629e65579701c

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

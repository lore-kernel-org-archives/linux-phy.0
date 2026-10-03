Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 217FBCA5FE4
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 20:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5p43YOXk6tBWEuNj2pjn+Fm5m6RtN1wFp9XKk869X8=; b=0+6hX4Dmbg7JYe
	wDyxsaqe2iZ0Elc8SmhRvMU6h9ZVUjl6ou9haYS/Yg/DJaX755dvZHrd4Bvn+Uk3OXP1AbOmci/r+
	5/31RMS9bnBgKOrmrK11t8TYcQvqsghJz/cQBcZRFD5CbZ6cCR962b5bu0PdTfDu2ozpE3Mtef3rG
	7f1LdYECLEcu0/rt4lePa5D+RFuPSE/DMBXSTJHV8cvFEUwW2/PA/7rXD/QH8L0uEk89R8uzK9vfQ
	/8E9sPQT4qxKUIKYT0FxDe8QJ0oQS6/sZNNeS68ToMEEJ/Zc0q8C8y9i7F/ljEhvs31EDM5YEGlEm
	gc8UpErgV1gM9WqHSCIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6g6-0000000E28K-3RbO;
	Sat, 03 Oct 2026 20:49:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6g5-0000000E27U-1p2g
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 20:49:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D9A0860120;
	Sat,  3 Oct 2026 20:49:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 231D01F0089B;
	Sat,  3 Oct 2026 20:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791060592;
	bh=ECkI1b2uI92RNCBi2hVMJpjNQM8UXiOAvTSo1ulUUl4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=PW4DAp/DoyqbERernO8dLo7la+7yrUhhCXEGMMGBEHpnPHtnazeIStl7rxYTz6+7D
	 GUkDZIJz1u35HIg8C/vMxnltHM/OJGspeOuR/Eb1XFPzUga7EZ4UotsE26rwSMSCCY
	 YjkcVG+jvnV0j+iGCOzYlFcikGXQWhwQdXxAxO0ZG2F+Lkqg7caDUqUgRxl8jkMH/y
	 L9bIALywoVQg51/uyrzCjndxZalhQrfKATTX7UksDJzv50iGBCbRHsYN/gy91ITa7N
	 vqMyaxe1PNfqkOHNz425+wKI1bwan068ynFl38jvkqeYXoNknEVkZN4325g0SCbPdu
	 S1GFC8+At6vKA==
From: Vinod Koul <vkoul@kernel.org>
To: Kees Cook <kees@kernel.org>
Cc: Kees Cook <kees+treewide@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Stanley Chang <stanley_chang@realtek.com>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 Jinjie Ruan <ruanjinjie@huawei.com>, Rob Herring <robh@kernel.org>, 
 Charles Han <hanchunchao@inspur.com>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
In-Reply-To: <20260917211303.i.538-kees@kernel.org>
References: <20260917211303.i.538-kees@kernel.org>
Subject: Re: [PATCH] phy: realtek: usb: Remove const from phy_cfg
 allocation type
Message-Id: <179106058877.240943.13071215640007818125.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 22:49:48 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Thu, 17 Sep 2026 14:13:04 -0700, Kees Cook wrote:
> In preparation for making the devm_kmalloc family of allocators type
> aware, we need to make sure that the returned type from the allocation
> matches the type of the variable being assigned. (Before, the allocator
> would always return "void *", which can be implicitly cast to any
> pointer type.)
> 
> In both the USB2 and USB3 PHY drivers, the assigned type is
> "struct phy_cfg *", but the converted allocation type would be
> "const struct phy_cfg *", as the size was taken from the local
> "phy_cfg", which points to const as it comes from
> of_device_get_match_data(). As there is no general way to remove const
> qualifiers, take the size from the assignment target instead. No change
> in allocation size results.
> 
> [...]

Applied, thanks!

[1/1] phy: realtek: usb: Remove const from phy_cfg allocation type
      commit: 88498cfc3ce6d8ccd3080ab4cc3f394eb2754b1b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

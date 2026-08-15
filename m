Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E9FFC5B572
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 00:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1Ij83PlDM/OnNkPTDkuT4wkffCmSB0Vvcc1vjxkp6c=; b=AYHdrxGXgTVMf9
	S9r22cl8zTWe9kvVowozliD2iMksrcgm6HPRqOxHgJRSU5XgaWQ/1ARWrRzvNP8LTlhkLEy1TrLSG
	0jkAlYhhjZuRn7ug6bVmHXGG5EsEiLvXoIib6NcNnn22+Z2VKzeUV9SaPLpFa2PGBeULK3xjglfNL
	Uctx2YVC3ggsfqW52Vqu5cdSCLLGoG6LR7jLQmwT/gA4WMc5VEY0oPo8iCyCzmQEVQWSGhGEsIEK4
	bVeZAWKhCdc/wi3XHc/hpWmTuj3hP1hLCdhTjn21/+nq82B8jKwBa3X1LSs70MllxCAPsU23Kk0nK
	TOFCWVoxXocbG5Ta2BWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wv1vr-00000003KQn-2WkT;
	Sat, 15 Aug 2026 00:07:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wv1vr-00000003KQh-0aBY
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 00:07:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3F424600E2;
	Sat, 15 Aug 2026 00:07:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 537161F000E9;
	Sat, 15 Aug 2026 00:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786752445;
	bh=8VX6Ds4+VVHwji9yYO6BlrcNEeBvIEUFqy5YGaI+leg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RGXoFfFjb6Mv0dWBOVI3QYiA7TvdYqUrMBRyZZw3W/X6N7Et6LZTZVXiWMUN6KB7c
	 6/2972eydibNJVlPds1f1jbD+fhU9oRDtBOOOy/RkU/ecRKbARdvNlrmGV0ZDse2aA
	 OA9MbDo6+NO1cerhkiyWsGNKr5031quVbQ6FSLqu4Znf6nxYWFMVs39PvO2peSrxYv
	 N18AFJshFUg28ZRqf159kk9yifFue5gklIh3KH1mpf1y1wnjgdQ7W8KyDVdrmW1vWd
	 sPJMlTFbaXEzt9cjZG2cQzZU25o14Ik8wkvE8zBkBFT2va8+HmVHy2W9E8cXuCUW8D
	 EkZ6y43k1m+8w==
Date: Fri, 14 Aug 2026 17:07:23 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Wei Fu <wefu@redhat.com>,
	Drew Fustini <dfustini@tenstorrent.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 0/2] phy: add support for TH1520 USB PHY
Message-ID: <an-tu75UOjleqcA7@thelio>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
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

On Thu, Jul 23, 2026 at 04:43:14PM +0800, Icenowy Zheng wrote:
> This patchset is splitted from the "Add TH1520 USB support" patchset,
> with only the PHY binding/driver part.
> 
> Icenowy Zheng (2):
>   dt-bindings: phy: add binding for T-Head TH1520 USB PHY
>   phy: add a driver for T-Head TH1520 USB PHY
> 
>  .../bindings/phy/thead,th1520-usb-phy.yaml    |  73 +++++++
>  drivers/phy/Kconfig                           |   1 +
>  drivers/phy/Makefile                          |   1 +
>  drivers/phy/thead/Kconfig                     |  11 ++
>  drivers/phy/thead/Makefile                    |   2 +
>  drivers/phy/thead/phy-th1520-usb.c            | 180 ++++++++++++++++++
>  6 files changed, 268 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/thead,th1520-usb-phy.yaml
>  create mode 100644 drivers/phy/thead/Kconfig
>  create mode 100644 drivers/phy/thead/Makefile
>  create mode 100644 drivers/phy/thead/phy-th1520-usb.c
> 
> -- 
> 2.52.0

Hi, are you planning to send an updated version?

Thanks,
Drew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

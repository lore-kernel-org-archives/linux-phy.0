Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D102EC43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 12:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZKGXz/FI9E0dLBzg4gqLl96P7JCsa5K/0YZorcXbsU=; b=X8WQQrAuWJBp9z
	DNiMwp5nH6jwpHn/314xyIPQDjJj9kqv1AlzQ88AKkQFALGKYJ50B54+rUd8BeO2ia5V4Z4IjjjdX
	qG1KhgdEYr+s8CUMQo3wfCpwcv81Jq0IosE32z5m7/vgD4/kewBq4GYQAYLq/VQ5aKISUgjqZF9jR
	TO/ZedTiX/OirNdoG7/xcO/SzTtG3j0HJJqrQg9Io4pwjH8wq22PfipD9puaVnhvosRWoqYbXWrZb
	Ax4mYwVjB0cq+Xfn+mRWfNxgLkcOSmBq0b1roCbJ2jZpVMady+g30OfK8C9/usT+wWRe2+7yqm5ps
	aAuR+FvetvfbSfzWy/0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1witHQ-00000007Rdn-0nps;
	Sun, 12 Jul 2026 12:27:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1witHN-00000007RdB-43k2;
	Sun, 12 Jul 2026 12:27:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EAB096004E;
	Sun, 12 Jul 2026 12:27:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C37F81F000E9;
	Sun, 12 Jul 2026 12:27:21 +0000 (UTC)
Message-ID: <ec9e62c8-3c1d-4493-a876-82432575b381@linux-m68k.org>
Date: Sun, 12 Jul 2026 22:27:19 +1000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/10] m68k/coldfire: replace linux/gpio.h inclusions
To: Arnd Bergmann <arnd@kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>, Frank Li <Frank.Li@nxp.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com,
 linux-m68k@lists.linux-m68k.org, linux-mips@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-input@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
References: <20260710211954.1373336-1-arnd@kernel.org>
 <20260710211954.1373336-3-arnd@kernel.org>
Content-Language: en-US
From: Greg Ungerer <gerg@linux-m68k.org>
In-Reply-To: <20260710211954.1373336-3-arnd@kernel.org>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Arnd,

On 11/7/26 07:19, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> linux/gpio.h should no longer be used, convert these instead to
> linux/gpio/legacy.h for coldfire.
> 
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I have applied this one to the for-next branch of the m68knommu git tree.

Thanks
Greg


> ---
>   arch/m68k/coldfire/device.c     | 2 +-
>   arch/m68k/include/asm/mcfgpio.h | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/m68k/coldfire/device.c b/arch/m68k/coldfire/device.c
> index 1420bae0964f..9a0258acd998 100644
> --- a/arch/m68k/coldfire/device.c
> +++ b/arch/m68k/coldfire/device.c
> @@ -12,7 +12,7 @@
>   #include <linux/init.h>
>   #include <linux/io.h>
>   #include <linux/spi/spi.h>
> -#include <linux/gpio.h>
> +#include <linux/gpio/legacy.h>
>   #include <linux/fec.h>
>   #include <linux/dmaengine.h>
>   #include <asm/traps.h>
> diff --git a/arch/m68k/include/asm/mcfgpio.h b/arch/m68k/include/asm/mcfgpio.h
> index 7103cfa4edb6..29726aa40eb6 100644
> --- a/arch/m68k/include/asm/mcfgpio.h
> +++ b/arch/m68k/include/asm/mcfgpio.h
> @@ -16,7 +16,7 @@ int __mcfgpio_request(unsigned gpio);
>   void __mcfgpio_free(unsigned gpio);
>   
>   #ifdef CONFIG_GPIOLIB
> -#include <linux/gpio.h>
> +#include <linux/gpio/legacy.h>
>   #else
>   
>   /* our alternate 'gpiolib' functions */


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6AE4C021A0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 18:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0AwP/GG4clz1dkUpER/y1lBACZhJQbH6fMo6kNEsxM=; b=QdS1Oeyr7RRZLJ
	8xkO6qcsTwjqZ6scI3voQoRkj002xG0wDbIvX66vPFU0MC0kh/qjpCtJSpp5XgBO0oxK3pxN53wJ5
	nh6dvM/PI/t3FCb1kHzyd0h+Fj/IYpXZuyskm60yJ2vvimMu4FSZPzJp5oDaflqpmlN7LK00LDw7A
	kTB+gCYt3WHkZkn7MHDKM1x6Nasl77M+yY+wptLW6nh0HokxYHOk7htMRlDnzqHu9IGlWNqYx5zRJ
	Bj/FFXXBI2D78t1kl99eoLQ7K9OunbL27OgFsvc0XMWObDgYxfZgKOdWI2OkLQFUkOzBPr8xz/iL5
	m5pUc9MVLbDOiGnsZVKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tidmA-0000000CBvI-2NDX;
	Thu, 13 Feb 2025 18:17:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ticuJ-0000000BzXe-2ttU
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 17:21:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 69ACBA42808;
	Thu, 13 Feb 2025 17:20:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7115C4CEE4;
	Thu, 13 Feb 2025 17:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739467306;
	bh=7b3tiR515nbHuXH37JXwcZMGqsx2+CI2oXw9UOzBwG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vk7L3TjGgvDZ88rkKo1f+7cCCKr0k6im7o74QLsJCXW6TM38Au1PTj9Waf+TipLFk
	 ZCNxToozxFogVFdPl+7mmVT6aG4LuOJ9RDRSWSJzH2iICpi6INUZ2Brh9jiYnS4XOx
	 /hfTZh/Xxqkvaq9PoAWGcb9igOvi490Usrq7/Q8Dv31LpYTwPe1d7AhEzcSvEPNOoV
	 r5Izw7978sB/1+oF6EIw8696Q4PnqaCrfQZ/DdLupB3aaXOt8i2dgkGEowJakO7Uqx
	 Tj8B/1Aqu0QGbzguohO1KXyovh9b+yIp82VyRV6HYX09ihDXHBP6Qi7YnGKaKgUFU8
	 /EqeW0kKHZWUQ==
Date: Thu, 13 Feb 2025 22:51:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH v3 14/15] phy: mapphone-mdm6600: use
 gpiod_multi_set_value_cansleep
Message-ID: <Z64qJjamqN+9GG+P@vaman>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-14-d6a673674da8@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250210-gpio-set-array-helper-v3-14-d6a673674da8@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_092147_801552_FCCEDAED 
X-CRM114-Status: UNSURE (   8.71  )
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

On 10-02-25, 16:33, David Lechner wrote:
> Reduce verbosity by using gpiod_multi_set_value_cansleep() instead of
> gpiod_set_array_value_cansleep().
> 
> ddata->cmd_gpios->ndescs is validated to be equal to
> PHY_MDM6600_NR_CMD_LINES during driver probe, so it will have the same
> value as the previously hard-coded argument.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

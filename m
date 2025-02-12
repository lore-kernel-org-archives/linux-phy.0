Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10465C02198
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 10:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3s8SGLwjiIBFyQ6fsHZm5OEBUOIKRiqaY4twUkdqzA=; b=gYHBVBAucES1v9
	r2oA3kLYmxeMtS9DSIByLJiWY3tW/5Wys3IvozoBce0mBVf0fpIJYt9qXzPgmA7MNbI0YFvtrGB3O
	QNrHGrk83UT1sEfLzmWiQysQzmzAWcdwSYB0cgP3PhHyN9yQf874q5YUHj6dTrDt6qM0vd1lod7rW
	tgO/ZiUwec+jknmOPNsUUZvnaenvK81j7ejxqHULe2wCTUiELTqqwBy7tSCdYiaN/X540dqQXIoo/
	7px8PkyC6TsX9310Ilj9molANV1GKFpgqoSU1urR8g+UmFeWphutkh13HvNMupTqV1OJhyK+pH2Qj
	BPT22bL0NZLQQfVG7n3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAQ1-000000074bZ-1Lxc;
	Wed, 12 Feb 2025 10:56:37 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiALb-000000073bD-0IAN
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 10:52:04 +0000
X-CSE-ConnectionGUID: 0GTvDCWXTHi28qFupy3iqg==
X-CSE-MsgGUID: KQz9yKaZQBy/6RgvR2P5cA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51439733"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; 
   d="scan'208";a="51439733"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2025 02:52:02 -0800
X-CSE-ConnectionGUID: xsNA+7mWSyqAUWvIp4sijA==
X-CSE-MsgGUID: dgmpaOdtTfqQk2rluTJVRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="112643183"
Received: from smile.fi.intel.com ([10.237.72.58])
  by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2025 02:51:55 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andy@kernel.org>)
	id 1tiALP-0000000AoDj-0gye;
	Wed, 12 Feb 2025 12:51:51 +0200
Date: Wed, 12 Feb 2025 12:51:50 +0200
From: Andy Shevchenko <andy@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
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
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH v3 02/15] auxdisplay: seg-led-gpio: use
 gpiod_multi_set_value_cansleep
Message-ID: <Z6x9RuONNYw0LBV6@smile.fi.intel.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-2-d6a673674da8@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250210-gpio-set-array-helper-v3-2-d6a673674da8@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_025203_114453_8B279457 
X-CRM114-Status: UNSURE (   8.28  )
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

On Mon, Feb 10, 2025 at 04:33:28PM -0600, David Lechner wrote:
> Reduce verbosity by using gpiod_multi_set_value_cansleep() instead of
> gpiod_set_array_value_cansleep().

Pushed to my review and testing queue, thanks!

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

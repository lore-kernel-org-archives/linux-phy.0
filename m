Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DFFC0219B
	for <linux-phy@archiver.kernel.org>; Tue, 11 Feb 2025 09:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5/TXfialNJIIbVC/uRATuR1m/maC3y6RH2vrUFU1v4=; b=iNV+PPPj01aFl8
	SAM7bdpGOj6/NmjFYorSCAQWaPK9D7Aw6sR4RT7pYf5TMQfa5Y9/lNKPjtQHXoDoTBxwVOrKJ94n4
	TkNUpDKtONpPazsNT1ND2p02m6hE7a5fQOecNRssMkHg/YjbcITL2N6i7bZt7myeLENvheLvtj/al
	35ebgCi45E1mGEdX6x8ZHwaHPO1lmOYuRnk0735nvJkDI/HNti3myb4nuJPsrzeCGFGEushM9pqnM
	BhX+zd+/t25XvIJELCRTKRsbgMQdDsoApvr6INyTySD9GYHyHM292BmWwvtFsJ8fWAQzTRLJCTZhL
	spDuRxXbndQR7tfX96cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thmjs-00000003DZp-2mXG;
	Tue, 11 Feb 2025 09:39:32 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thmjh-00000003DWg-1fsq
	for linux-phy@lists.infradead.org;
	Tue, 11 Feb 2025 09:39:22 +0000
X-CSE-ConnectionGUID: MphG/H2lTh+7HqXTXfNkUw==
X-CSE-MsgGUID: 8oDDryZaQFmC8e9fWehtAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50512309"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; 
   d="scan'208";a="50512309"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2025 01:39:20 -0800
X-CSE-ConnectionGUID: cJvLFL1FQAm1X4Xl9szJ9g==
X-CSE-MsgGUID: WtVy6JKQSCiOBQl3Jo+Lvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="112318016"
Received: from smile.fi.intel.com ([10.237.72.58])
  by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2025 01:39:13 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andy@kernel.org>)
	id 1thmjV-0000000ASXJ-1H97;
	Tue, 11 Feb 2025 11:39:09 +0200
Date: Tue, 11 Feb 2025 11:39:09 +0200
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
Subject: Re: [PATCH v3 01/15] gpiolib: add gpiod_multi_set_value_cansleep()
Message-ID: <Z6savSGQhDGA_Z9k@smile.fi.intel.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-1-d6a673674da8@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250210-gpio-set-array-helper-v3-1-d6a673674da8@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_013921_476052_646211A8 
X-CRM114-Status: UNSURE (   9.97  )
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

On Mon, Feb 10, 2025 at 04:33:27PM -0600, David Lechner wrote:
> Add a new gpiod_multi_set_value_cansleep() helper function with fewer
> parameters than gpiod_set_array_value_cansleep().
> 
> Calling gpiod_set_array_value_cansleep() can get quite verbose. In many
> cases, the first arguments all come from the same struct gpio_descs, so
> having a separate function where we can just pass that cuts down on the
> boilerplate.

LGTM now,
Reviewed-by: Andy Shevchenko <andy@kernel.org>

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

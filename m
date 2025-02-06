Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C77A9C02196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2GMJRVXUlJ6uxL+2YFdZuz7FQgT7AmzR8OsNGToXLM=; b=dSUUjLhkBLJnEZ
	I2LMwQpDerARIsV4DNxiVYD3mkmReIAB512KubOhDxeVv8HnCvb5nVTGqz+Qn6x7ja7O871awW/Q4
	7trM/mU29ZA80Ev9ydSYyT3Su5p6mQhbxgoTD9RcoT1wWpz6xiO6uJwq0odaiF6pVwWfsD/pE4qSp
	UdtNTg09AABoctNf4mbnpjjYiD3jrIVkZIZwJ/+nicU8TpfHy0MPaR88O9NQFPg+mMn+tqHAIY71W
	FrYI09L95V8JiXddDnywYFL+2SSvxwdExUT4Y8si8W4Ys8pwfPtyKzLO+UN5e5CU9ewNyCyE0SL2o
	HMrqFZ6yrqoMOuwT4d0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfq-00000007iT2-2Ntx;
	Thu, 06 Feb 2025 22:48:42 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfn-00000007iQl-1Owq
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:41 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3eb98b3b63dso379178b6e.1
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882118; x=1739486918; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rir37DR+dGjXzV88JkfAUftf+GWLKbTzx84djPKNaJM=;
        b=OVr3HfDGdUKRH50VAotkvfSRFTpIHVCqUCgEHZkZKhn6Mp/DMj82/bWzoI4g1ZeGJb
         MWh7yxjm6HprJmzHmUI/SkyFommWpK+ir+JBKujXMzOi4sFLB3CAaI05UwMP1PexvqsN
         YhLRtoNk7o1I61W8cEDHrKjqfKzM3DNGYIyijUPxxdzu8hNUElbxbuogGdvH3Y6Lw+Yz
         3Qly6T0G7uX83LmqveIA1X1kWOUYKze4vfkymB6cmOx28tLvuRis9V7lyY0UvWy0ahRL
         a/cHwx5tnAUDxndDd/iCbmeYi4XUZEltTfO9HrifV0wzARrHgyRsiKwlnmyDBvXRMX3B
         JWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882118; x=1739486918;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rir37DR+dGjXzV88JkfAUftf+GWLKbTzx84djPKNaJM=;
        b=H2FJmpNk3b25lJS05q83Ay6NoRXVhHc9DqMGYSB78yZrQMCd9GifGH9otfR1ZS1FT1
         OUsxBI5+3JmWyrtnonaaJ3zpXEh7QMMVIHUosdX9svW13fblvCCNEpHF4O5Cj5zm8mlc
         91nSrEvkFxDOPulD7nuO6cvBcZuOo5fDMEpxE1RdNOmMOPbn3ZDBt8QmP242By/kEZnY
         7UU2vVa2vl1jF97O8tUOuBjmRY+u6Q21YRhoEyml/OFzrVOgFntdZUFEZef58h0jb7+1
         20bdgzq1G4Gmr6kLcMcSt5Janr2/rM51PD0ogQXim09eawLo4o/RQpreLtJrNS2+Ty0N
         3k5w==
X-Forwarded-Encrypted: i=1; AJvYcCVzXORVzWcJw/dbNspH4RXdCF0KyAfqFDPma8ofJ0uGBHW4+NFxyeN3TBSyifWp37zg09ytFCS3uOc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVmZoT+uMyrL1JxpGYbgneigusIvoymuUJcCHZI1IX2zxc41Ki
	ZAtWilWLSj2gxsxoaM82w/unZ3kzN5WPnjuvI0DqXp9+yRPgQKv5GwFEjlukV34=
X-Gm-Gg: ASbGncscGOl01OMHa1AvsTOYEB3M329jY5kF0JlCsVOpHFDP3LZo/6mjpaHGzKkgZoa
	pp2TbHjtYbe/rkp+lIPygrZKTqns1pMuLwkqc9U1WgxjXIPLb1ii00MZymetx0f5JUugNXnKc+b
	r57jd3JiA9nJmyUq5NpLYAHkUkvkhK7BbZEy+7fyBoIevfK2Urk5wRzwpfNc3GeNvsHM2G4Gelz
	u3xd1niG/J9xciIjWNOaMAiQIw1CuN8xzEuX5IzVZ7/95eP+ra4CLZZ8aIq+gw2ZAEvGh6+lqyX
	dfXYFP3H0doMyA0s4tLE8HULBKPmiSgrFKmttLRfNsugu4Q=
X-Google-Smtp-Source: AGHT+IHg1dkR38vC+BOfsqdfTGHavmIhAar+M8vjgAZ97yt8yxkX/PgUDRgvY/W1hOK9akNHaGFBHA==
X-Received: by 2002:a05:6808:2f09:b0:3e4:d4ca:2774 with SMTP id 5614622812f47-3f392318adamr932419b6e.20.1738882118361;
        Thu, 06 Feb 2025 14:48:38 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:37 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:26 -0600
Subject: [PATCH v2 12/13] phy: mapphone-mdm6600: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-12-1c5f048f79c3@baylibre.com>
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
In-Reply-To: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org, 
 netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-sound@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_144839_387391_051D6DA1 
X-CRM114-Status: GOOD (  11.46  )
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

Reduce verbosity by using gpiod_multi_set_value_cansleep() instead of
gpiod_set_array_value_cansleep().

ddata->cmd_gpios->ndescs is validated to be equal to
PHY_MDM6600_NR_CMD_LINES during driver probe, so it will have the same
value as the previously hard-coded argument.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index 152344e4f7e44de0f8ab1cae6ae01a1f1c5408e9..fd0e0cd1c1cfb10fb55ed271e47b6a0bf857028e 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -177,9 +177,7 @@ static void phy_mdm6600_cmd(struct phy_mdm6600 *ddata, int val)
 
 	values[0] = val;
 
-	gpiod_set_array_value_cansleep(PHY_MDM6600_NR_CMD_LINES,
-				       ddata->cmd_gpios->desc,
-				       ddata->cmd_gpios->info, values);
+	gpiod_multi_set_value_cansleep(ddata->cmd_gpios, values);
 }
 
 /**

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

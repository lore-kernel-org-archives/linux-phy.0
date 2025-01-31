Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1B31C0218F
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxUr9IaHUbk0w+3k/PMPkCVRx08sVRd6l8ueFIhjbWM=; b=Frysr9q/Fj3QPo
	yp6XZT4oiNjiy1LzXQHox+Yu0qaBhNnoj4bZYf/OUJRhu0LxBG48pV083CqfjJdzr0nJUcTHiJBMM
	sK6zq7P3Mgs6zyF2fa4m+wpcjYpF1X+u0HqcNqNTo+QMGt1w+kYVozb5t5ODtBspoOkDXxo6A4Ti9
	u4+DEh2whSBLXfZSjxG4dGEokJ3RfA9R6aKEfhDTjV376bdB4yt42ZTyRh6tXNScHiiI3sp2U6HCG
	KluhTXwicD2lugZCmOnMmGFuBMqz8wElrxnqjn9kLBtsMn+yRxeS36PjfKID2d8wVAr3vn2OikzU8
	5uGwqU9rTIAoVu389q4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZp-0000000BMyh-1jZW;
	Fri, 31 Jan 2025 20:25:21 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZm-0000000BMx6-2pDj
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:20 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-29fb5257e05so788408fac.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355117; x=1738959917; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FzzIwzQtyYUR99JIrJ6how8p6bj9KukV10X1RHN4Hv8=;
        b=Bvt0xM0vf5E1uszFLQOsz8oVnxcq/fXcWNShiimH6hmdapPBq9Y02oj1+PS2zM+798
         7fCL+zSRxexAZY/wBxqgZYgbe0sORAI5wPZN4I3YRzJDS+4eWUoH/sTJUwpkKR/YNUNn
         s1vxQnOrs8F/57JjpPt6J5dMX+OTvtmFgpHuw/qw08Ryob+IGUdCPs65d2luidl56P6u
         qg1z47dwoXL+g7lJmijpnDZAONV5LBxI2UeCXBQz9BC9fwcQ4J9hLrP3/miXDaVCmaJ7
         wnl6LS+YbxLpJt2DLB/Fr7zOYmALO5BqNg4qr78ZduSdi6hJ2KCkGQ5pwQeq0q2cvhdn
         S39A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355117; x=1738959917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzzIwzQtyYUR99JIrJ6how8p6bj9KukV10X1RHN4Hv8=;
        b=vNF5gtSyOTQHjw72LoKwG+EDwvkiDB/rBlvrnSV5qnxrNxxYcF9O2PaxyU/gC+J/pD
         boqYdOKcjVwii+M/hyDZg/luU8fU5NnXNY9hvA8pjjYNbVN/5o1s8vrn+IVMTcAR2k0K
         kn+e4fHUmxzklhkwfgjLYWVhgKN38i0hNIfi9eHN4b9jQouFzVdFVznSKusxm5mJv9tl
         dH9tR5KLmkZhIRLYCdpikqkVg8yLfscQgiPRqg3roF7081hQj99otLjlZOXibM7spDYg
         wF6obDnTFSOz60/r0XAuMpvDJZFe0kLHygcvedNKvK7v9enPS4fvL3uPzIeVseOZqg0w
         tsaw==
X-Forwarded-Encrypted: i=1; AJvYcCU9L30NsncumsQHj/wuGYqNNRrtnFAiacT/Nfraas8ySkHuIFS82+qdkiQg8uj9BEN0EsumL1HOpgc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxa4LZIb8OFqS+qHWo3VJzi47wb1J14HLOr5yqRV8ZojYi60Qlv
	O9RzTYQRqQgwkB/1aSpmUHuKNfVM+OdZwj11Aa0VD5mmXQhxc8NXhbwoFMIiErk=
X-Gm-Gg: ASbGncuMOIZEUbNzHQbySZq6vytppvTJhc0sUWaZze7d1atRqqq8Dy8b1dPYBh0tULP
	lGTmfaStmGFKH1ePp3O0Gubslw1TOXGDg7xgpubC7tScThs+MEr8e2QIEztBP3yDTZgk3V41WZI
	6QtMZzWLb8Wdikvg8oXge8CGXy7+YcJwfJLTOI2w+D7gU3a7McXTlw34KDt7FWUZ+g4iue0Xa95
	VV5XAkSJy5T3+Ev0xU+8/pdNQLLsXtQUzMyjnaWK7hQvCKJLL+CtmxAh3Qlloie3sJ2Tg6s3SJV
	cNTNSsW3+QYMq8QxIqMpfpp4m+QM0TEhigSVT50jFMlUA8s=
X-Google-Smtp-Source: AGHT+IERsKIHS0RESeT1aGghrd2e2VbJU3Jew/L2qRirwk6axnCtq0WNFwypLdr9E1c9DhZObl9GKw==
X-Received: by 2002:a05:6870:32cf:b0:29e:255e:9551 with SMTP id 586e51a60fabf-2b32ef5a830mr8108456fac.2.1738355117684;
        Fri, 31 Jan 2025 12:25:17 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:25:17 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:52 -0600
Subject: [PATCH 12/13] phy: mapphone-mdm6600: use
 gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-12-991c8ccb4d6e@baylibre.com>
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122518_720064_ECF2A2D1 
X-CRM114-Status: GOOD (  10.95  )
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

Reduce verbosity by using gpiods_set_array_value_cansleep() instead of
gpiods_set_array_value_cansleep().

ddata->cmd_gpios->ndescs is validated to be equal to
PHY_MDM6600_NR_CMD_LINES during driver probe, so it will have the same
value as the previously hard-coded argument.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index 152344e4f7e44de0f8ab1cae6ae01a1f1c5408e9..8243bab6ac3af2ee1394ef743aaad12a19c8ae36 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -177,9 +177,7 @@ static void phy_mdm6600_cmd(struct phy_mdm6600 *ddata, int val)
 
 	values[0] = val;
 
-	gpiod_set_array_value_cansleep(PHY_MDM6600_NR_CMD_LINES,
-				       ddata->cmd_gpios->desc,
-				       ddata->cmd_gpios->info, values);
+	gpiods_set_array_value_cansleep(ddata->cmd_gpios, values);
 }
 
 /**

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

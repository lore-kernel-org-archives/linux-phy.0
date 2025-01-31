Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E082AC02194
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDTYCjwpVidxWdbIm+eElV9+YgQu/M3/96rSnrIJWM8=; b=CuOicnHVz8ztAu
	j6pUehd+m1338W5+4NREpNUSwjRfELwgGH8Yq7hW8/Oic3bxmWO6B7TlvmpV8Ig0D04PrpUwgGIf/
	+mv696Qsr6H7HrLOKGVZwatpe+XyVnxtI93ubVQD8T0QAg5AQAp/fUGemY8I0dVHUI3hrPCRBuSeC
	163rSXUOuX5oKCGLryVUBODdyb3yx7KDTkrIsEk4bgodViqXZoNBgOfK4C19LUgdTyubKrJxAT1vm
	3XDjaxnBFfDskNsj347dZ/qA7OfCXb4LAISvyoZiKHeQ50oKUIgIhEwEPpC1ESlc/36mIu2WWbQAw
	kscWjB25qyUcgENRM6SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZq-0000000BMzZ-2nUI;
	Fri, 31 Jan 2025 20:25:22 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZo-0000000BMyB-3b1U
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:21 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-2b2b6019a74so1123830fac.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355120; x=1738959920; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t9cxGVlfrmOEOQA8LocUnneYPfclUeeeatGnfm6leQU=;
        b=mWY8nlJouWjt2OghQ24xFO6cU7ZSWiXwHRF4Hr5Sduq7mi7lqEXRE6ac8bltHjzjjB
         VA9/i9Eq33vcaxMtFJh57KAbCmecvRnN7+5rrvdoyQ9l5DCvUMFSw6dwrDRx+IjoueCw
         fHTkhui3U0sGs59gYwsCPRgpivgppDeRr49vQr1m4O5KVCPLNMnudW9uTNlTuevhylHY
         xJO78K3b8I9c0Z2RjWVnOxnEu0o9FVHZiiU/R0RXX7c2BpNljNKG1CbIUNK8rGFXCCzF
         36vYUz448hrGwD3w4o66r7EFM83RgOrjtCBixkVJQHLLxB2KG9OLUv6bF8vIT2T+ov1F
         NL3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355120; x=1738959920;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t9cxGVlfrmOEOQA8LocUnneYPfclUeeeatGnfm6leQU=;
        b=npleop4EWhQTXlnC2IQMHbebe00gIfLsgWUxs1kVt0EHp3iSGlgLBC5N4K3JMZVtGK
         zNm9ui5RVI9ZAQlmJj7Dx3yH/elPeD/vBGHG+c6kDwiZ+6xvzqRZ4+VKaj5hPfEIR8ah
         b4W/gZJBv1UOtqJ4NAmEO6bFV4DmV0ci7PPEA1Kk6IZCWpcBhK4u42ieaimaoJ+61yB1
         RASK4xQZy/F+6Sf/Fg7I78flkfggjsnskMnfgy3VEDnmV9zYyr5L2JSG8Xoe36drQAnR
         AhONuysouFrJqBZV4x/xC0uMBd9te9EirZeMEW0cABKFr8zKq4qM03gfjD8S3ht3mXii
         tw1w==
X-Forwarded-Encrypted: i=1; AJvYcCWdH3FwBBOIbE+un0pinOL+KTJWK0SF0DQwV3HGSsFCgnQKXuH5ysWEyfA04oeqQ87IaJ4pocH7cRA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxm+UGkz92j/3zXPIUjnqoILGxdWARAq0Nm9aQY1dZTUp1okDVK
	CWnxfQd8DQdvjXWDpx0cUyRXdEcYC1dfgXF69qAeaK+iKof+g2uz3EPvtBFCEAY=
X-Gm-Gg: ASbGncumwJ27OxdD7V6rdUweyOePCSCXkwEmjJa12LbANY/KRBEcIB07uKb3s/ED7BR
	ji0pqXcHZtFfG3Miv+6vpKmMPphSQugy20QXvLy8l99EATksGDVJOd7lI+fJdCoTdPBvC6dtlGV
	ZvOCKoTKBD5Gwb0r9CJnlfeKUSFi1Q45nH7D/llQUm8dUDAizxvuLb769HugdUwHBktyVlMUByW
	soG9WtLrZqGzfstsZE8N8UK0unvZdRHsayT7VLD9aPMEEaU3+HMlwPUKKVDpdfRdi1emUrXPYfX
	fRWcKVGZll486eZP1GVBfiw8kILEgwkO+430tKsLq+encVM=
X-Google-Smtp-Source: AGHT+IGqg3uaTvNfsfu96auAGMNqMTSmH6qy7PdoMmcZZ87lNXJHf3Cu8HBE7iXbpxe/5j7p/ZYumg==
X-Received: by 2002:a05:6871:209:b0:29e:20c4:222e with SMTP id 586e51a60fabf-2b32f2f8592mr8795453fac.34.1738355119837;
        Fri, 31 Jan 2025 12:25:19 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:25:18 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:53 -0600
Subject: [PATCH 13/13] ASoC: adau1701: use gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-13-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122520_904572_1B56D459 
X-CRM114-Status: GOOD (  10.18  )
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

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 sound/soc/codecs/adau1701.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/codecs/adau1701.c b/sound/soc/codecs/adau1701.c
index 291249e0a2a32df7dde81904dce2f6be143fc2d7..d3e6b2763950f78143c0feb07c36764cb265441a 100644
--- a/sound/soc/codecs/adau1701.c
+++ b/sound/soc/codecs/adau1701.c
@@ -325,9 +325,7 @@ static int adau1701_reset(struct snd_soc_component *component, unsigned int clkd
 			__assign_bit(1, values, 1);
 			break;
 		}
-		gpiod_set_array_value_cansleep(adau1701->gpio_pll_mode->ndescs,
-				adau1701->gpio_pll_mode->desc, adau1701->gpio_pll_mode->info,
-				values);
+		gpiods_set_array_value_cansleep(adau1701->gpio_pll_mode, values);
 	}
 
 	adau1701->pll_clkdiv = clkdiv;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

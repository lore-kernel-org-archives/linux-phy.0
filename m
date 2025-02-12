Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3CDCC02198
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 10:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xBTXvF2zeVolKxhq5NwIsTaPkuOIn7X0YhFibAv7XWc=; b=jF4vtkFdF8Onb5
	zadMjm7P/RgbIiwoGEkgMIEh+ECFkaAyD/0Rjd+Cs/djN6iYPwYj1VFXbt9VOQEvFhVeZVOhAfrjr
	rG2RHSGV13VJjQN0lLXflERAHBgnHwPeMnCgZXkVxGZ7Dn1B8+XSfVvFceosdIkZ545fI2TrMqsL9
	2z2F9oryCSIMxYagsFKdyJobWWM8coXmk1eGozb2Sgsh5aPvDNSP8njz6d4/F7NIE4PHQhOnnnqDd
	k84TQwZtESQbKeJ0c+50gmn+GQY3lG1/I1+GgYf6AVgT1SdRWbljwkONbpwTh+Sqbl1h2tfRgmMsd
	WYJ8L8vb96XqFYLNt/Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9gT-00000006vxn-1XKw;
	Wed, 12 Feb 2025 10:09:33 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9Ji-00000006qUV-37c4
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 09:46:04 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-38dc33931d3so2931602f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Feb 2025 01:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1739353561; x=1739958361; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8zuOOH+cqbW5sfzyGH9UF9miBvxPH8Nl8TrZbDwlVwE=;
        b=DLdUUUk+q9nwuCOU5dZ3s+U7KDkvftS/D6NZ97OySKEo1UZvhGfuzISVrazlqTW2Q7
         zLeMC1wDpByoKkNcLKBiS8JnWpXflRlTEST7HTc+Zo+0sEg+lqulo0X/VtVc5Yl9anvC
         Vd5ULWRk+YxfepW4g6eECgzOqGXRfqCBvXG1Erdg0gk7M4KTnxo430gfe0DLHdn/EvcC
         WLV06CC+HEr/sQYFD9EC6Y9kPuXhG//MhqlyhErjw/SJ0vXYJ7eTjJlAeyaRi31Y6bRo
         OaL6anoNX5g1gpzvOpeUEwQ0ohSfEWRrJap2Sw8RDBYnUazI6Mcesl11ykgvZREzYljr
         y8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739353561; x=1739958361;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8zuOOH+cqbW5sfzyGH9UF9miBvxPH8Nl8TrZbDwlVwE=;
        b=u8Whr9eFny+VmhhPIEcE+hwWJGhpWBIpa5ogBTvPzPp1xO7KG7Y9EEQfmEGa+QeEZa
         D5IXKtogejnRHPM9VF+vohdW5w4Nf7+ibvD3qTV++l3VNy9raQWqZC9uNuvdAD4sb5Ju
         lDdCERdp3E6SvE7TXsjszGlWIVaj13fSj43Cqtwf89cbKxGJfuDi+LhX/IhIEfsIj+Rj
         oz/qffaoK/lvVulZPcYc9Yw7FQDKrU268izIqKxHEVcqUa+kyfAsDKUEUS8QlKmkUJc9
         yq7Saf+wEFQFfZHLFjvSaxxgngtTQ6Vmmih6TiYEN+jttROTr5pxy72kYHGBmQA+TKmq
         bB0A==
X-Forwarded-Encrypted: i=1; AJvYcCWpelCcfQt0FPtIJjukVUepIHcui3qQz3rOyVN9sZfRwVKwr0bgUAN7+T6JTfmRWDhkgsTS2+dU3OY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzlz9/TcRvNx6dteWpK6D5u0IsfSiaKiQoE+HGxpzTS4Ww/I6W1
	sSzo23tPIrln43ITfIMrrbqfsr0vFGnUDK1BjEQ1ovpTI7rpUhUtYlatcRJkwj4=
X-Gm-Gg: ASbGnctNV/p6j1BfiiQ/kJWWd3yTwvZO4PxeVz1mUjJFWw0EAOtAw9KvyhWHzX0MNwz
	r0A9useshHatmC7J4afy+FBX+W8OJ1eyKojoSEBsADjlIWX8LWJnX9pflUyH1CvuiZEzYiP4V0M
	AL49tBwHxpvjw/D4D8xfI/635grNJG5e+5ilthfCbxh4PWeCWc2+28+QqTV5L2GVgU8o3LNnLbl
	uVi926bK3E/L0Fnq2n7+rMLMi4MLqs/urELFh2tQxkyTFDvo6QwqnUxpIcKa924FcMgCZrzw63I
	rSnWP7nVmg4idHc=
X-Google-Smtp-Source: AGHT+IFpt/tGI0C0Llxj6yqwoW6+UDGvasbspWqNSw5lXAH/EOQlfLcMUFUUZtUM6+ncdDrcGoubYA==
X-Received: by 2002:a5d:47a4:0:b0:38f:2065:3f20 with SMTP id ffacd0b85a97d-38f20653f83mr612508f8f.17.1739353560896;
        Wed, 12 Feb 2025 01:46:00 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:521c:13af:4882:344c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a076496sm14262795e9.32.2025.02.12.01.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 01:46:00 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	David Lechner <dlechner@baylibre.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-sound@vger.kernel.org,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [GIT PULL] gpio: immutable tag containing gpiod_multi_set_value_cansleep()
Date: Wed, 12 Feb 2025 10:45:46 +0100
Message-ID: <20250212094546.11895-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_014602_783292_3EF91159 
X-CRM114-Status: UNSURE (   8.31  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Hi!

This concerns the patch series from David Lechner[1].

I applied the patch adding gpiod_multi_set_value_cansleep() to the GPIO
tree. Here's an immutable tag that maintainers of all other trees affected
by this series can pull in so that the entire series can land for v6.15.

Please pull.
Bartosz

[1] https://lore.kernel.org/linux-gpio/20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com/

The following changes since commit 2014c95afecee3e76ca4a56956a936e23283f05b:

  Linux 6.14-rc1 (2025-02-02 15:39:26 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux.git tags/gpio-set-array-helper-v6.15-rc1

for you to fetch changes up to 91931af18bd22437e08e2471f5484d6fbdd8ab93:

  gpiolib: add gpiod_multi_set_value_cansleep() (2025-02-12 10:29:27 +0100)

----------------------------------------------------------------
add gpiod_multi_set_value_cansleep() to GPIO core

----------------------------------------------------------------
David Lechner (1):
      gpiolib: add gpiod_multi_set_value_cansleep()

 include/linux/gpio/consumer.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

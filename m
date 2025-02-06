Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52431C02194
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tAvXx9N/0PdLKCFUMbf7rVpPTIxlczjmFSu1d/8Oi4=; b=ikjvh97ckX8KPl
	kk2DJIZX/TpPirMGPdkRCfryVwregX3pt4ExxCFL15/LDHykwuuc4JGa/TP87l3EEvDsx8sw6uKu2
	tDjyv62i11uAq3PT7ojtbQiXIlL/yLw0aQ5E9YdZs9xvmD47Lu++r0d/hCQFK14ZqiE8OUvNZBNSY
	h5deH4f+YyGuYoMdJS9HEzphdcG2duZQOgNN4+K134dOzHHCXsHA3hwklb+vW5QdJWbxom1SYUFgJ
	ldBmyUwqLOecedcZLoieFLi+UJISwgxQlmfHmPxnkCnCZQo2T4TLAflLZLtbMg4ZLx3oxIcuOW8U7
	kspdX1UK/jygYQ9Gjcrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfp-00000007iSU-0MJP;
	Thu, 06 Feb 2025 22:48:41 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfl-00000007iQ3-3VT3
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:38 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-726819aa3fcso912412a34.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882117; x=1739486917; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wW6RHWEtayZ55WpdhtLO2i1JoETOot8MdB4MGkvPArg=;
        b=XK/2+DILAboBQMyGDA+RWvMRmbEJ98FORAHTZ/Q4nuB4KLip8Df76pwuaSkt75Yobf
         E8bdJE7dvSYG9xFZZ+A9zI0Y2lm4gJ86WSA2SN2iezmgPgMz2gpLJGZ6L++kH0vGnZ6C
         MMVIUNzMcKpS3RlKsfxG4UjMGZCSGXHA8qjFRsnoexfMrUifvKa9yPBTGcvtVQ0xhJfQ
         Pcvztxz5j3OqA2eRNcKdXfTiNoggRuMlZqJHHOiBcrKMPQWUkzx1dpx6CAGrcGTeCzp4
         ZqotooqjyHQt+3NiRVVWkRRF2xhkbJqMBNv5Iz2QGKESC0X1Wth6cIjAqlq/hBlFlUNF
         IXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882117; x=1739486917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wW6RHWEtayZ55WpdhtLO2i1JoETOot8MdB4MGkvPArg=;
        b=LZmvC0lXv9SaNWXgcbXuFxWMJ+GBMwQ7tEZPrEsvNCOsG0FLlC9oaHrxQSdclg3+qR
         +3nBwz1zP9E70vHiF6oQFQWFoeJ0AgPN18LzuxBtanzSyt2Aw3nCsjinLmIvTspbiuut
         HA6MJH24S15Pe/bNRH3aZStSOjoHS0bjUx2oLP0pv+AtRfHttodzBbH70DmDcR+eo6l4
         10fIyAr/g/FtgCHfFdQw0yU0K9B7PduXIKnSsedZiNQc+VVRpLuMqQHnY/X0iK/uMEHZ
         Fyi1xeuz5zgzr2TriGUUJXL3kMgbubozgSw/sBO9xVnOBnP3AQ7Mjw3Yg9WB/pyfdDUc
         /7wQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEib6tuPd08Brz44tnORhRWII9qTEgJZUqt9Rxv8WB94YEHj1t3rkzZwuGvPYmOFQEhuh1Edpb2jk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yytj1LJ7LvTGnKaBzVRKBqVILUHCmgd2rJdpbDMMiqRqePiQNLh
	l/E8Wx1nHNYERxpPvXNKMmmlqc6CaJ499yF3zXmGfs9bamJ8Dy1a0KUcpaPiirM=
X-Gm-Gg: ASbGnctzDUiBpifPRgCl1+PJ/NIT8TNYbRC8VlMwqMHlPu73Itwv816o8yxsruoDmrg
	64d1ZAYHZv34eLXRMorGF0JQqK0iHoQ4WIvKGX1EJPprSzVhme8bkOLCBo0y8YKTlMtpTJQ+PyC
	uoMy+HhUIMpMy9I+geG9uWTQHyYGLPNAIY+2gL3oEt4szsWwUpyU7VIHq6uJ1tLFp03igRLDSrZ
	0VwQ6kNC+Hlom80IgxrKD6wrP+RQgMke59OXldnC8lZubldAyHGS7guSnr3pkTg0YRC6sVy9yPW
	I4F0iXga/Gicqe9gerQNW2Muh3DmpnlfzL8ejpiWhWY8CsU=
X-Google-Smtp-Source: AGHT+IH8zx5vDbhBOU+RiFLjmMV8uSugiz4ArRiuueUcFuxbcCISDHEvqYTZqWFApQPLnbiuZHKf3g==
X-Received: by 2002:a05:6830:d08:b0:71d:b6a9:7489 with SMTP id 46e09a7af769-726b87dae1bmr640053a34.7.1738882117199;
        Thu, 06 Feb 2025 14:48:37 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:36 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:25 -0600
Subject: [PATCH v2 11/13] net: mdio: mux-gpio: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-11-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144837_876931_7634DC20 
X-CRM114-Status: GOOD (  10.97  )
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

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/net/mdio/mdio-mux-gpio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/mdio/mdio-mux-gpio.c b/drivers/net/mdio/mdio-mux-gpio.c
index ef77bd1abae984e5b1e51315de39cae33e0d063d..fefa40ea5227c5a35d89ec2c6f95c6668a2470f6 100644
--- a/drivers/net/mdio/mdio-mux-gpio.c
+++ b/drivers/net/mdio/mdio-mux-gpio.c
@@ -30,8 +30,7 @@ static int mdio_mux_gpio_switch_fn(int current_child, int desired_child,
 
 	values[0] = desired_child;
 
-	gpiod_set_array_value_cansleep(s->gpios->ndescs, s->gpios->desc,
-				       s->gpios->info, values);
+	gpiod_multi_set_value_cansleep(s->gpios, values);
 
 	return 0;
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

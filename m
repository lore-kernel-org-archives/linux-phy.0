Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BA78C43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 07:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAk1FPFUPevc40axKvalPD5lHtqY2KLhx3RZp1oW9/0=; b=vV4MwULEnLYeVk
	jTMNdPmvOdlxx9eKK/bTmdCEMLu9KiFxy4RX/R+geUECdSznew4Va+6VVVRZz9s72mLUO4w2OE7Ym
	F89F+dlos3M8YiwMmQZ9LTRFwwgjktzjaBPkeEAIpeWWRENHkHGygC8aO/Uvbigh2+vf65+2Xf43K
	Qd5TwXYCLZs1+TXnR2dq5Oe6IEEc4PEs/Kay92RdjdaB0arm7J2ZS/T9IkOckY4CV13rzUCZbPfOm
	H3PfZrcdXG22uXWv1FMZYcyNm1Erhjw/NT6nk+BX+2HTTlfgnTQGNdMTedPWZbvsIct5xMn+x5azZ
	N/37DuhkoQXrFYTRgnDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiSEJ-00000006Jpt-05mz;
	Sat, 11 Jul 2026 07:34:31 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiSEF-00000006JoP-40tG
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 07:34:29 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5aeb98460c6so1840106e87.2
        for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 00:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783755265; x=1784360065; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aBafLctpeA1AoyzErbEa9EGgxzwRbfKFWoPKc6c7bv4=;
        b=AKV2hVNJx40YInVxrPSOjsFiZJ60kAq4HIjdmsqBjnaTuHCeSSmLQskhqBH8aIJKvj
         57E1OTI5ofmylhm+P3MnNQB10+ZS16wIu0392S3xn6iPJT6z+kHLAFk67S1lctpJTt5W
         QQNAlCxyI25efJPFPOIBmNxySGXvI4u+dI5b3+zgUMZ5Di6yojc6HwP+5Z/Txi/7ncGX
         G1qzJ8JCS5Vi3E2t/bT8xuJuUxXKWIF7489zIXw5EIUtQmMbSbpqLVvdcCv+SYV1tOdc
         6WIi7Iicvf4NJ7yswUKdScZBt6MYoBM6Wngm9rO4cGwVciwaRIFxGE8lERHvIt5vtTy1
         53Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783755265; x=1784360065;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aBafLctpeA1AoyzErbEa9EGgxzwRbfKFWoPKc6c7bv4=;
        b=DaYLSh+Jgwvv2ei7mCAjsfKYGxj5y75xq/ha/58/pc5u/4zDIu16aQNy0MA8/wYOfg
         hnAJcpWPv+9eVnErbkm2maVLHoFkVVSlQKofs0FuUFg2tGylZeTyFGwK4HelQ1qEpfW6
         cahjTSqtfTCWA0UiskxKGrkXdY3BT65aOpIukqHCrKtrx792voe/kN9jnZQLuwTkXaZW
         fsnBsEFsqrNNP0cpJLHYUMeS7zkZvWkWZ1jJRkPqMOEkmvjVjpETE7LkZxXQ0LKmGVDP
         NIeSjI89yqvINYlFrnCHzqoikjtgEYLwFUZ6MrhUc76Lw8AkhmyFDH6GZCWPX9n/1Ok9
         uvSw==
X-Forwarded-Encrypted: i=1; AHgh+RoCRezNp5PpUmKQ46LFn9p78fF0G5C4AfszRWJrXLvKAvwtoNXNhpDoa+j9iSibZ1LSgGz4MldwdJs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVBWs+WIRQDi3lKdE9TZEfg3Ax2YRjaSAoBy4EzcGdTqsW+4/J
	RRJfdAZWDLc0ORrHtlPUuHsvim5N6qhbdC1gwKh11IFPItlxCmmi8tDK
X-Gm-Gg: AfdE7cl9j/kWP+zSqUQ5TjSaRNSW3ZiL0EG6B8r71umURwp0AofCxCxATuAPkk7n+e6
	f3rUDa3QwscKGr7qSzpKb5fGiNFEEkg5coGG+uFfp6Rwge+YsDQa/m2+4KLoSzsl9EgldtKZbVx
	+jcCQhtm7Mpm/aLcml7FN6UIZB8aeYxbWRxrocaa/e0tojkBm6LrkJ1s+2BDKqcrt35UsE2lWdn
	9puonXdQcxTDIRrY1zJDGZ2td+mtSRPRmgEjKR1EIq7KT4jab9CZ4DRq9fFAXa38HGW5UTxRT15
	NfK+jcD0MjL6giXch3QOy6vaCyA760ekMHE/A0IQyMTpUTNjYesLb05lbPLMR4bAb0xszv41gqC
	QzRfKcFaXP11EE2KTT170PBacex+Sb6/rT5UOO0VThkL/1Hi/YAwGsbt8qhMe+KoMqwHLtQYz8Q
	efOYryqJcE/tPNFyvUgMPtaAY4NZJp5GnCTSO6FXAfR8VXLUHX+pZclbabAUHvY+gxyM3ddg==
X-Received: by 2002:a05:6512:3f8:b0:5ae:bf45:e3be with SMTP id 2adb3069b0e04-5b0236689cdmr321070e87.21.1783755264967;
        Sat, 11 Jul 2026 00:34:24 -0700 (PDT)
Received: from ?IPV6:2a00:1fa0:4322:18e2:4e2b:60a6:4ce2:33fb? ([2a00:1fa0:4322:18e2:4e2b:60a6:4ce2:33fb])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b01ca9dd41sm1117527e87.48.2026.07.11.00.34.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jul 2026 00:34:23 -0700 (PDT)
Message-ID: <de1d491e-159e-41c2-b145-4d09db091031@gmail.com>
Date: Sat, 11 Jul 2026 10:34:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/10] ASoC: replace linux/gpio.h inclusions
To: Arnd Bergmann <arnd@kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>, Frank Li <Frank.Li@nxp.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Krzysztof Kozlowski <krzk@kernel.org>, Greg Ungerer <gerg@linux-m68k.org>,
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
 <20260710211954.1373336-7-arnd@kernel.org>
Content-Language: en-US
From: Sergey Shtylyov <sergei.shtylyov@gmail.com>
In-Reply-To: <20260710211954.1373336-7-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_003428_006811_F2D837FF 
X-CRM114-Status: UNSURE (   6.16  )
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

On 7/11/26 12:19 AM, Arnd Bergmann wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> linux/gpio.h is going away,s o use linux/gpio/consumer.h instead.

   s/s o/ so/?

> 
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>[...]

MBR, Sergey


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

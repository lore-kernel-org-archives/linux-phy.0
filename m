Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE2C8C02196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ7iqIk+fniulshAjGckHGzsHnSk+9Cy8L+cxrN/WlA=; b=1NaeBVvoFkwIby
	YWyHdImcR+8KqawHlCGreEHLNtan62YEsOfFPAhokqwU64jsF/l/1nfGvyRuCrlh7TsbZ5Nz7hj53
	eekzI24JTCQtwQ+XcTcbDJ8ro56E+DJldh1eTNP3ncbGNXSxNA8rEERBrCg5OlOULEaADfFl/M6i/
	z4khn7qPc+VyNFlIMcuIYEYwQA+ZUDakd/b9N9f4AIaah1BasKqCrCPf6Jv/i9FCM7xOlYrDUnIHc
	T4L+l3DJ68RV+nCiOHoSKpX8ppq7G+ihcbxD1LA8/VMRC/PxMMZrD9we2tg8b30Lq4Km1esnthe1o
	ZsKHq/AEbGEDww8VIBcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfd-00000007iKo-28qY;
	Thu, 06 Feb 2025 22:48:29 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfa-00000007iJF-3BFa
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:27 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-71e2764aa46so1038575a34.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882106; x=1739486906; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dI+YClki4Q+OM8j5JXLpkAENpDyF7Cb60VCru1h+I9Y=;
        b=mJ6Phc+I8yxR9wcoq3tdsPEGPWrkSdGwFGG6jGeDuKYJJnAckmnzT564DHFrYo2y8W
         6WwzV+tZU7eG9c7Admxr/R1vl5kQ2+/SZZ6d8dXUMIJpXirr/ZfmtorNxBDHqnCAAkUL
         kQuJzkGvv/1xQTdYMhgfpxBnxnT9D90Qb91sQkEj3+SnN2nBbVJqdgEZkbwv20eCUcDQ
         z6nb23L92wXk8MkwI/JnrWRK7CsB37+Sdv1Bbhg1KxUzVWIDt3jJYbOrY2aivSAabR4A
         siUAliA5KdYxK6wRWwNL6e1kpmpxO5onqGzNDWvUaSOt8+iYMqXJDKhCUI4ac1Q476vU
         //fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882106; x=1739486906;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dI+YClki4Q+OM8j5JXLpkAENpDyF7Cb60VCru1h+I9Y=;
        b=Jmwt8mSwD0ykExzfXad9NOunT/dLWqM4Xx3+GPy2Fj3g/r/h/yoV5+Rhw99QzDAByS
         y8VmFJXtlaPvhkCqBlAYc5dlQLUuCrdVZyWb0fzZOsgcml9Wmbwg/RUZBTrX6M4I5SVM
         8/dH00DMKhFg3hUsXS1hMZNG09uYGMCkO9Y33Urt9ralMdkM4mwisQ0Tbvl+zSwVCfku
         SAu+/2NtWR3YGNghzHEnXKX/z+xNS1T54rgJDR/fkGVIlslWwxO0J1gkMKFKxmgoM+ku
         6dxwNug8/zb4L/aun3jjE3ARORcUF/4j6zi7TaSj6eoURFdWY6lG8uXFGcS+PX/zvyWA
         bOuA==
X-Forwarded-Encrypted: i=1; AJvYcCW/eOepcXnXQ2b7zVSBPYBgC7cbrz9NK7lvQ+rwTn9q2wMzbjjT+lJMhrkh3rS4JtNf+NXsbgyWljk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6EWbKXIZFhgSsvZnNexKWzV6DwfAgp41Y67NBHEU7phEtrWTA
	KppLHai01HclDygHFR4+RLe9XPywUBoyi3l8M+Y5+STc81xElwfyIge+DRHrWXA=
X-Gm-Gg: ASbGncvTrXqlK8/qWxjyypeca9TKfmfnPrZ46t2i9MQUE/hpkmFRmiwkftt/IP0pJq2
	msrKT+wwWkrghbdaGKk0t6NMPgN98RY9+N+RozC7S0hKcuwWr81m0UUKG3raa8TBBbkueVMSYVr
	KFYHJW7BIgGsmI/CpJORHdeA4hCsE0KpB9ovJr5SV5tr4qwSavQ61ywcYgCp7ApPbFWDk4pbkfs
	urwKvHkL3BTQF1z20AAdLjuNstWGl4krAARVdhY0B7wVctHrCU2rr2XQPVdBdbVgjz8me/NsEyx
	/IFTY7ylG6IJowPoOyoJyWtFr50otRQDstKipcAZKUqyGOM=
X-Google-Smtp-Source: AGHT+IGju4AgrFHpgx+WkS4zNBcn38CgmaIyeMDkbsnAb4rmy84NG+uCyuhvFXnSaOB2zZt+BWiqyg==
X-Received: by 2002:a05:6830:6e03:b0:71d:63fc:2ea6 with SMTP id 46e09a7af769-726b87db6c0mr918380a34.8.1738882105791;
        Thu, 06 Feb 2025 14:48:25 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:25 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:17 -0600
Subject: [PATCH v2 03/13] bus: ts-nbus: validate ts,data-gpios array size
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-3-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144826_799525_4F27E4CA 
X-CRM114-Status: GOOD (  12.53  )
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

Add validation of ts,data-gpios array size during probe. The driver
later hard-codes 8 as the size of the array when using it, so we should
be validating that the array is actually that big to prevent possible
out of bounds accesses.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/bus/ts-nbus.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/bus/ts-nbus.c b/drivers/bus/ts-nbus.c
index 2328c48b9b1260e805c631f2aa7379d620084537..d3ee102a13893c83c50e41f7298821f4d7ae3487 100644
--- a/drivers/bus/ts-nbus.c
+++ b/drivers/bus/ts-nbus.c
@@ -48,6 +48,10 @@ static int ts_nbus_init_pdata(struct platform_device *pdev,
 		return dev_err_probe(&pdev->dev, PTR_ERR(ts_nbus->data),
 				     "failed to retrieve ts,data-gpio from dts\n");
 
+	if (ts_nbus->data->ndescs != 8)
+		return dev_err_probe(&pdev->dev, -EINVAL,
+				     "invalid number of ts,data-gpios\n");
+
 	ts_nbus->csn = devm_gpiod_get(&pdev->dev, "ts,csn", GPIOD_OUT_HIGH);
 	if (IS_ERR(ts_nbus->csn))
 		return dev_err_probe(&pdev->dev, PTR_ERR(ts_nbus->csn),

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

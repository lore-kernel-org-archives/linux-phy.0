Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDD8BC02194
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPksdWFLQ0rEKufw8FEzV82SO01/egygbfSbj527fY4=; b=VA6VH1a4RvIkgD
	k4sxNml7OMADsBk8eFVR3rFQTdcas8Ddu6STCyb9WE3qO04sYb3UkdJCbSjDC3p261m7MhIx4ZPyp
	RQTkL200ByZ0THqWt9syLcAgtq8/81ekEeEL15dzjPhtiAY5Xj8Tcm8UasuywH13SVVE+xLc1C3su
	JHzPwes8m3fM2Bkts5/NoztkUBD8fXXwVSzPj3CvFma38c6RlLiECWrVo5ziF5Fg0pftc18sQkjph
	QWCYvPvnewfzSDpgLRmqs5KlSxNSalXUO+NEcrt2W59yXTC/7XVc/AGQEhvel8IdtS0kBjD9f6UqJ
	wVoEOUFao0G7gg5CeMHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZa-0000000BMs0-2leD;
	Fri, 31 Jan 2025 20:25:06 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZY-0000000BMrB-3IjM
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:25:05 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-2a01bcd0143so1484715fac.2
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355104; x=1738959904; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WNU4SR73NkzT5flFO6XZzV58Nb+8n8xP048rFGpOLNA=;
        b=X8tb2YBJny1BkJS5lMyeDR+4CBK8s3oTM/XAnMaYBpob0KG8aJycBFMiIgDFzkG57N
         9FStGzPEGaioLzqjDT8kgkEyetr17MRWG0+ugasDmAhS098BPSISkRvwq3cmcn0tD9Vv
         6SmMoFbMl18p3g4buafJFkPjEoLiJ8JEdE72bZ49eCffNUNW4bE7I8Ft3MnnwpjnUnPl
         AZK9AeZnbvvTVZcsnnQH2/XdVyDXQI8+EOUP0DG2SY3tRQ9TXR2ef36GGSpYShvAhKgg
         m1HsgkJUsSFT3Zl9a2DGdrddf90b8Ta49qHcKbi+187Dm2FQeG7kLfgoz9iD+NclXRdK
         Pg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355104; x=1738959904;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WNU4SR73NkzT5flFO6XZzV58Nb+8n8xP048rFGpOLNA=;
        b=H51aaZwpAlAJnDrUicQZZX6g4piqdDg52/3LFMJntBRiiFfcRYPDnGQ6fC2CQbdPio
         9ABvZL6n32S7BeEW5bLG/HL9q1at2/BpovkiZrZeOqajwKOgKBeOkpd9JVSE4+NScJeh
         pQx8XQpw4VRc7puYbXil941npW7bJ8m0PE6B71U0Fmo2r8JSVnYvXnbDFJnMFlXxfvGY
         cMTeM3QhMJTCsWlfo0DzY0iavw7OOQn4/YVKannoYaB8RZXLo4E6qjFJ5XJBOxe2Isn8
         bDMius8x9bo+pXum/7jEvhw6cd/sZkv9xiXuTTXj+ghaqwVmvylocKWAVnWScBiHeBpl
         ci0g==
X-Forwarded-Encrypted: i=1; AJvYcCVjaqGCcI5m5aNJ6Axb01V6W09kQJH7Sfwr85IBhkydLIN+FwakGOlrc9N4mXaA5UXPMhLV35k5Sk4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBBc4shqg/lcqKeFTb2n4HjXdxGqFOdQzAcPkz2ESwKUzQZPTk
	DRnE92s+o+QxzGO8yjxjq7dlg7co89MhQFJ5jdYdOJnhgKrMAoVmA7fMZxm7Ylg=
X-Gm-Gg: ASbGncs4p0KLEdrYWhjMEWP5KANTNzixZ0iOIVeOrnC20LY6j+Vnpgc7ogYjfvVqH2w
	fyJQz3TMsCtX8T2rX+4z5MlfRBIhjPwpobkCZsLPc3NCk+7negKhD5F2rqFX3F8IJvkCL587HiT
	HU+F7Nh4jelQ2d+lV9P98O7z2s20YFGjckkUgf8NwFmjTaW3E3WRA+igQQrkwhgcVgphmcPNdmx
	2HKtIgq7dQ3L4EJSLTfcx1U/FduOmbkJH25gTcCyJp5gPLpp3k0Am8bwFL97D8I32fVTavX3dml
	T/dxB57xkH8IsDId3gdBUlGygj8u0XCzriN5YXIGc+Hw8cE=
X-Google-Smtp-Source: AGHT+IEjjM8UkUItH0qBBqM7/8yjcARln6tFWMQk1I1vtwY7yg+bjxT3tjK0CN1AwA297vbCg45WVA==
X-Received: by 2002:a05:6871:7891:b0:29e:48d6:2e62 with SMTP id 586e51a60fabf-2b32f06986amr8146491fac.9.1738355104164;
        Fri, 31 Jan 2025 12:25:04 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:25:02 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:47 -0600
Subject: [PATCH 07/13] iio: amplifiers: hmc425a: use
 gpiods_set_array_value_cansleep
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-7-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122504_833843_976DC3BB 
X-CRM114-Status: GOOD (  12.31  )
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

Passing NULL as the 3rd argument to gpiod_set_array_value_cansleep()
only needs to be done if the array was constructed manually, which is
not the case here. This change effectively replaces that argument with
st->gpios->array_info. The possible side effect of this change is that
it could make setting the GPIOs more efficient.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/amplifiers/hmc425a.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/amplifiers/hmc425a.c b/drivers/iio/amplifiers/hmc425a.c
index 2ee4c0d70281e24c1c818249b86d89ebe06d4876..e8c67c8145b1b9ccb9b70ccd3ce4f5de08f96e69 100644
--- a/drivers/iio/amplifiers/hmc425a.c
+++ b/drivers/iio/amplifiers/hmc425a.c
@@ -161,8 +161,7 @@ static int hmc425a_write(struct iio_dev *indio_dev, u32 value)
 
 	values[0] = value;
 
-	gpiod_set_array_value_cansleep(st->gpios->ndescs, st->gpios->desc,
-				       NULL, values);
+	gpiods_set_array_value_cansleep(st->gpios, values);
 	return 0;
 }
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

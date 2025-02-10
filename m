Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ED70C021A3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhGyYlyJFHPBMAtEONy4IAmtd0xYnk+nRHIVISMuykM=; b=B9Qa0ROdn80jYu
	WCl7vbGQwt9YgVawRi6Amx3zbxxpxOetPTFAEXrkVmhp+rB8cdABMy/Z2r6/amRv4NNhf37uPNXOb
	k6URF8QPnEF3NLbEGIbxUrP1y/v5Ipk0ZW3OokuLs7RB3mh0q1qhlFuKK8LiVydSULROxeUIQx0fK
	EOObPzbL7euqK3UNdMzOL04fkUBPAtAo3SBwBlkATkmC8YL3ameAwfUYd1WdVpJgG4354MqfhnAxk
	289g9TEDi4UlfnfJU6fEoBUYJu9aYM1h3dBLFMhVUUREfI+1xW12KtSJZL6wL5fzJh9fE9RAq6OjW
	MA4UNtm9XPCiyXinpMwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgm-00000001kTL-0qwf;
	Mon, 10 Feb 2025 22:55:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPU-00000001gKu-2Q5v
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=oAgdP5/7nbSCpei3bdgHz+Kvp3J/VbeQ+Dc9cWuRxQY=; b=GnprzL996I6vPkCtdeUPLgsPCn
	s+DUXt3TiU5VgJNCYPTgUuThTWDy+vNRa8Mt1pkkrPrMHgbpmzbHS6eT9QWTl/gB42Bc1yjujqYBt
	aVlDpbV4/eDVWdH2ne564NgEybN2ftQvSp8RHFEvFOHZ2usE3Z6AfYR7oJ0bK30My0Hkyh8FqArGs
	HCf8FaQf9SxqOx9qY93BknphlIcGO6HsBMvhDR1/o+u28/JqdwmBtciwqi0h1QPrrjq5tRTGTE3kf
	Q3CrN/yECtgfaFSuaKROy2nX39lSQHbFOCCrr8DRVZkzcJZ/vZxg6n5APRfCBJ+npk1jSM7hnrbQy
	sbJaK7Dw==;
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPR-00000000KO9-2Ud1
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:37:47 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3f3bac262f9so586898b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227062; x=1739831862; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAgdP5/7nbSCpei3bdgHz+Kvp3J/VbeQ+Dc9cWuRxQY=;
        b=X48alOK8ERiPzI2HKuVpyzctFGTitNejp83FrKCh46Zr/TCrSeDO8suoHd65Pqr8JD
         gs22HbG3AWv2JpBUOhJjrTQga8Mxk4wsfJOqYdxCPF60HLMGEus63fY3e3VCsEL96+eM
         56OChKB10taqAyfkECdrZOc94jT+r08HH16MSnDdKt6MlPgOjhqAl6UdYpENOwlLGt/r
         xtScRVDEPeOhWmD3BCaahGoeOshKrz83QALbsRvEqJ8Lm+e98eyP6QDAxgOyBVmbwwVf
         VdJIdyI/b0kwD4+O01P3cTXCfC9k2jSmWEaPTneEAAdgqbQnmC1CgRh9QMHFDy0iL2Nv
         4/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227062; x=1739831862;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oAgdP5/7nbSCpei3bdgHz+Kvp3J/VbeQ+Dc9cWuRxQY=;
        b=TXyXn1RaOKcsGtQRWHnx5rxYVTNFUTeG5guBR7AP9USxfATpxQ9IBbyf05ebKzZSTz
         Sj73mHaVqdgv9tDZ+OkQhnZgvFCK7Kx45L5flne2C2N2OTpEDGOUdqQIbO6ydj5TtEJ5
         9Uss/Z8fqAn7hSHzWew7ESStJT5wwZ2h99HAVQwJv27sfApmCEhEesAXwkylA+w4kbKR
         HyDL5EtQr4CNS4jKzov7nixgNH6Ag9dPcPfYy6y3VWR+s94q0ql4T/8zaSZFcRYmRUbW
         QvD/BlQAtyQa9nx0KPD5rNhgUT1OsEmkiLqtK07B+cDRs7QFKXoBFf0OnHDgwZJwO+gP
         O+Bg==
X-Forwarded-Encrypted: i=1; AJvYcCVfshuIhfCjy49VHpTbdBs5IxV9MSLY6zGS9gyllrAdsxRf7mR/CUlof2Lzh7njuMs/mdeQjL/sEwU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyj7kCZgiw/w0jrtcjqlK2J1MwdRA0ae/XrZGMsfPQ49XAopgo/
	sKwYMy1hnRmsNHjJepo4UQyg/5ZVybCTNx5SMj6GA78SuFiIg1iKZdYsVAFdl9E=
X-Gm-Gg: ASbGncsOuN9+mUb3VFIzf9jP3EgkVbzxLILr+9cTcJUIjIKK4yAg/EJo0i1w6Z2udvV
	jzadAJ9jDkV/XbPPKu3LCXfZfXP0ZoXCvg4LAzRfSspkfUt2VgEdfI+CP4eogLJtzZWedZ8zwQE
	h3edXRU3GDJ9b4JqrwsMmRAJF5BtvgS6QdAlAfzH4HdrdPtPzF7MZZNY6ZXw0ulBy+PQkeOD7H7
	7bUONP6p2pF0olpXeSghZIlulYC3K2JT+uoaTxNY0BJacW2H25IV5bWHooT39OqyjBgPJfrnXns
	RgwdLWS0T8O/qBNzuHHSD6Hz+MzkbSvrhN/+Rte3qHLKSLE=
X-Google-Smtp-Source: AGHT+IGCum5h1AQwvUJNh3Kk51lVy6xq7QJ+B7z8EkY33CFant2nucCBaXwDqcXBpkDagMClSCsXTA==
X-Received: by 2002:a05:6808:4099:b0:3f3:b0ae:7998 with SMTP id 5614622812f47-3f3b0ae7b3fmr3901508b6e.17.1739227062548;
        Mon, 10 Feb 2025 14:37:42 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:37:41 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:30 -0600
Subject: [PATCH v3 04/15] bus: ts-nbus: use gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-4-d6a673674da8@baylibre.com>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
In-Reply-To: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_223745_819792_32225DD0 
X-CRM114-Status: GOOD (  12.08  )
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

ts_nbus->data->ndescs is validated to be 8 during probe, so will have
the same value as the hard-coded 8 that is removed by this change.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/bus/ts-nbus.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/ts-nbus.c b/drivers/bus/ts-nbus.c
index d3ee102a13893c83c50e41f7298821f4d7ae3487..b4c9308caf0647a3261071d9527fffce77784af2 100644
--- a/drivers/bus/ts-nbus.c
+++ b/drivers/bus/ts-nbus.c
@@ -109,8 +109,7 @@ static void ts_nbus_reset_bus(struct ts_nbus *ts_nbus)
 
 	values[0] = 0;
 
-	gpiod_set_array_value_cansleep(8, ts_nbus->data->desc,
-				       ts_nbus->data->info, values);
+	gpiod_multi_set_value_cansleep(ts_nbus->data, values);
 	gpiod_set_value_cansleep(ts_nbus->csn, 0);
 	gpiod_set_value_cansleep(ts_nbus->strobe, 0);
 	gpiod_set_value_cansleep(ts_nbus->ale, 0);
@@ -150,12 +149,11 @@ static int ts_nbus_read_byte(struct ts_nbus *ts_nbus, u8 *val)
  */
 static void ts_nbus_write_byte(struct ts_nbus *ts_nbus, u8 byte)
 {
-	struct gpio_descs *gpios = ts_nbus->data;
 	DECLARE_BITMAP(values, 8);
 
 	values[0] = byte;
 
-	gpiod_set_array_value_cansleep(8, gpios->desc, gpios->info, values);
+	gpiod_multi_set_value_cansleep(ts_nbus->data, values);
 }
 
 /*

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

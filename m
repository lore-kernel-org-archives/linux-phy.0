Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8B98C021B0
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 22:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2GMJRVXUlJ6uxL+2YFdZuz7FQgT7AmzR8OsNGToXLM=; b=2j196h7Foga4fN
	2b7xZ+qxEGx2W0CgFNohiQNF924YK990xLnITNMG4piAgNnNTyrIVGXa2DQzItR46K6+2+PU6pOhf
	6MdASIDboQZaHSG2lzWVp9VuBrbshhVrF5VGngKFs1hhCViTXHR5SGOUuw8sA73FUqNhO6yKTfqy7
	cimzCmHrAsKFaR5Epv1OjHgp2lFT3HpZ/XwvSjF0AjnNdDH7Ibh+12suCPzuCYtfC+PUhoZ2iz+wE
	iP/Do4VyUG2Mp8NeDrJ/CsLvRKJzKDwEQFGkyynjufj19EwdcIPR59m11ngGv4YXkKLDRhEhAfWBv
	5dx/2ev7AJBHWqeIRLQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thcgq-00000001kZc-2LzP;
	Mon, 10 Feb 2025 22:55:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPz-00000001gUD-2we6
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Feb 2025 22:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Rir37DR+dGjXzV88JkfAUftf+GWLKbTzx84djPKNaJM=; b=RM15PzPojE1Y5ynmThVQsq04Mo
	XO4O2p493Nja9NcR+K/bOAn9V5x5TaRn+HCNNWq+4vqA75Xm+ETwaAOlaQ78bWcz5YV9ae3nKAD61
	hqTmxvT2vWSn6SSuNpTXzfuqAWKHhcvhjS3MzYXDQwJ++vlDFpm7+1GZPsa3rO5hejrDZoEz4wFxh
	M1ywSsv6xtqKGMeehiC0/cpQlRLMy6XjNVpOfjZ8+YQPPLUsmMo2uMptU4L4o86kvx3kjdizIyX52
	ZIKW23jO7kTov5O4jOSRGWGNBAvkY/QUNEGMNgFsWOxHQodwGQf7AeY1seFtCaOdc0sxeep3VPne8
	wc2FC1mg==;
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thcPw-00000000KU9-2kcy
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 22:38:18 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3f3a6ee569cso484187b6e.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 14:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739227094; x=1739831894; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rir37DR+dGjXzV88JkfAUftf+GWLKbTzx84djPKNaJM=;
        b=KCno6SoPLXIjJf+kdmHw8rLawrfQKoTx1Pn4mp2hlRjF7H/XUMuq3VaWnnL6JtSgro
         FHTrKmDKzBhrmYzv9Cwla9DHJBqKuH2CB9hzyLNICOrblGewsmT3pk0mnm7pO5ZmTCWJ
         9T+d22aHFdmsgvgb/SvN2IN8HsObd0tE4TZ0YeQvwuNOntxNEtNMEL2g+Pa5pGxFfpXC
         z/8K0QnLukXNvem6KpBFU9MXmovt3Axs5pP9rmasCUovAPTj3HVlAYWtV722KP6qP5rK
         V7wtytKs7wpl+NQYkfKPMOCDeGcsiTYMQFgGcBpfZD1pVyrEsx4DB5barJH6dL2NlngM
         Dnqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739227094; x=1739831894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rir37DR+dGjXzV88JkfAUftf+GWLKbTzx84djPKNaJM=;
        b=EIbDWaA5LyX185dbNnzj37k9OAfRo+WK/tOOoOzIodgrToCasQ42eNfsm2BAQ7Z5KC
         yUN9jeVhU5EZClxguMbZ8rvweh9Pf1OT74RJemDMgGAI7EDWcOkhDPwQXBYtM5EQOGll
         JGwAg6ZmQPKAO6mGYq3pPubU/MjklvrAaD3qtiW3+GwTvmhO5kWdiwSgfAZqAlnaAmL4
         bX6R3jya0b4WRK5DUOGN5v+pLSvsxCumh5mBC1y96zHLPK7tqYs9SIEvTLWsSZqWbiH9
         5nok+R5NEhO8J7+HRci+nqXimsJTdN1Cs6+Mb3i9o+eifXGAKcAJbN5bPTBlrH/ctsXQ
         eQLA==
X-Forwarded-Encrypted: i=1; AJvYcCU987+dgZLcLX9MbNsSPzFah0LUOwnxT6hqcc3ak4SWUkCUK7PapF0vfB5+/W+oyy5FVBI1PK8nb+A=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKcWN0uGTr3mbpudSG39RFpNVWaagk2Nccmr/fJ2chmESH9nhN
	ThESUt8AlShuQcy5eeGpVwUCFWY6b9NfgtQxuG8rOK9UaQHT+9viHVHgZMUfj8M=
X-Gm-Gg: ASbGncstJMfYdmxMf0+5vUXfBRHd7JIQFMH9FlzuJvSdXUrEiPyf0488EhbCQw7h6k5
	iAjARwAlE51CfH9bYOwUmiodgJv2Fyi74NEPgvN0LIVRiS3jq5y4XabvQP1KJJBqKTG6sE7IHN3
	ziB2neDa/b3BfH3umgCgXDwO09XRBHNE6ky6gSnFz3F+8DfMIbk7PR7SGJqsDWMP4ibrnn1C4Bg
	ecLpEh9Ch+Gm/qEeuZ4Uv2uzbHsKntEIFuX3oSGKHDXg4tI8yE81vjXJiVdCgUM4yjX6g/buaM4
	3YVje6tSn+W2bbur37TdujgIQpdUqSwoC7nRp7V+T46/gTU=
X-Google-Smtp-Source: AGHT+IEVAt15PQdS8DVNqyeJacSiAcXpbNeOp6OkG5/0y5b43SqHZC4XrUJm46YNpLSsnE3NWRVPBQ==
X-Received: by 2002:a05:6808:150e:b0:3ea:519e:cc71 with SMTP id 5614622812f47-3f39242c9d0mr8056705b6e.39.1739227093792;
        Mon, 10 Feb 2025 14:38:13 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389ed1ca2sm2521820b6e.11.2025.02.10.14.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:38:12 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 10 Feb 2025 16:33:40 -0600
Subject: [PATCH v3 14/15] phy: mapphone-mdm6600: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250210-gpio-set-array-helper-v3-14-d6a673674da8@baylibre.com>
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
X-CRM114-CacheID: sfid-20250210_223817_004694_60333677 
X-CRM114-Status: GOOD (  11.68  )
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

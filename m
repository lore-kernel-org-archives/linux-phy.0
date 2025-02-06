Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A9AC02196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 22:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMkHR476oMdYSvp6v8ZsQOT5MNrVHOBoslWMHDv69AQ=; b=q9ZlT/MP841kDs
	bfmPi1wjuKU4SQrfNZJD1nCI4+Tm6y9yVdt7CeHnNsWriPO/yDsQfxt86UsDn5LrN9AP+U4zUT0oW
	wTkVhFVe24fMyWDfzh7mtvnLO6pAtT2eulNQa9pA+nc1XPR7BdN2LDvwHLcPBaa/npQKId/55wheX
	I7QFGXLZa0SPSwi+bC65JXmF8eTcZeaBaXTENSP20cDi0Qf6kGc5Aj63XJRpR5y2PNbDjrWFMMUJi
	zcoCMzv9/YphaZnLQvRbRw1/6omSpfopbleEaqUdg+LiFBjV6Mq003Wf9o+eLuahMt1JWefjffHhf
	QO3BERFbH2+cfqnb9qeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfk-00000007iPa-2LTN;
	Thu, 06 Feb 2025 22:48:36 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgAfi-00000007iNr-21M3
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 22:48:35 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-724d1724657so1335028a34.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 14:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738882114; x=1739486914; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hnz0az7lntDGiOpb5KMBiHYUt+/ZN1SFQQir1JT9FNk=;
        b=GvV0lpDezUz3ZZ3vbm7Nrfp14SYG/8f7tCMzsz0VMlCAgiK8GvxxCvwdxxA3G0t3mG
         osHW1O+Ga1CMZpndpMAXIAaK0LoxkN4FWlxJIi+PZwTLF1g/cgdpeZ15eAnv2Umq20Dd
         fa6Hu15zPQh9wVV5aEooF844Ccc2M8sqew1XlYznjSJ+kV1iYLD4sJ4oZmss+eZ1xGPH
         gK5fT/kEsdZ84J9M7mIDxYwgcRuKtszWQ4jlYLBZghcUN1e3kXeI2bm4kXSMINhGKPpI
         vS7nNsh+Xw7U/+/xjpapThOFz3/YU45qc7mRkJ/Avctkl1LMsAKxhGB4+r1E9dr6/oaI
         +6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738882114; x=1739486914;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hnz0az7lntDGiOpb5KMBiHYUt+/ZN1SFQQir1JT9FNk=;
        b=UvNokvicDtgJUsqo9ipIhSVUthFqQQ4OBFMeYHVjMLBhYx+AeIS0oCd3JXZ053ZbN5
         8LlqmrXK5UxKNdOTT49utV8YJl4MYLO3ykOlvQsPgx+JC2xDjC0gBQlh1K9WrvZn2Q2U
         5MlhSCwqrJWSjTNgkGnWXPo0bRsCDNhsoQzRPm+j6KlIAaRb5WX1ElTVFSks0gOwcIfW
         F4aYSJ0OSvik+ynBOJH1rHGlZNg3l2tFw9Say9p903VERKzOixhSDV8UWgJmapUdGcEK
         /h3yF/xphffHCH4xvkyPOfKhVj6v0Rdw5AsQ1FBVqdyxv1EhsZ8Tt+eUWGr5mRdVRV9c
         5/jA==
X-Forwarded-Encrypted: i=1; AJvYcCUOD0Q6jsELEE6JBdVElbAZkgv4dNODPfcrzeYUB7+RtPavcRVqIjRYh6adm5JPRhDhYZkjr+GoDrw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzl9MRlvjc9z3lGtdMBgBho2Q7UVZOZB6kHS5vJ/VEcTm91zTQ7
	3ZWDKO0KV2HOja07h2EaesWeRtWPtjCPVJv2kdNfBweCOKbQHnRueIx7ePCdmfI=
X-Gm-Gg: ASbGncs/ozIdTpABU2XZuTuOl6dQ2CUdDr4F3HNY/pWml4+kxktG56oIqlefrzZwZK/
	ZVY1JUrTLUei/C4z2QwlTdEnAJPFVFOWft1WcKayKBklE+RbarnZy+NAJ5yypxFP+MahVLGWRtL
	fi2NMD2mZ+vXXTePl4mB4fE6U0iAHOyYr8tF1kffMza7hYz5M50vcHzReH8MJ1NLlbZaeMBd0Yq
	s3SNZPrcfxr2ZYTYMOm5BwNpOkqmSddOW9tAGtBuMmhCn/wpqGlkbMU34KmhQyIX1y7BEVJouku
	01PVCHkT9IX3ENIkJCkyqTABMI0PcRI/4uDdK5OM1pt9nds=
X-Google-Smtp-Source: AGHT+IEVknGonsegy5S/Aw+PLXi2TjO/wnkH/rmRbYYU8mAcrJGwZvntuKEgjA/jQ79DrZ7uQxsojw==
X-Received: by 2002:a05:6830:3981:b0:70f:7375:e2b5 with SMTP id 46e09a7af769-726b8f3ab09mr416555a34.6.1738882113893;
        Thu, 06 Feb 2025 14:48:33 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726af95bbb5sm510986a34.41.2025.02.06.14.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 14:48:33 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 06 Feb 2025 16:48:23 -0600
Subject: [PATCH v2 09/13] mmc: pwrseq_simple: use
 gpiod_multi_set_value_cansleep
MIME-Version: 1.0
Message-Id: <20250206-gpio-set-array-helper-v2-9-1c5f048f79c3@baylibre.com>
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
X-CRM114-CacheID: sfid-20250206_144834_528584_466916E7 
X-CRM114-Status: GOOD (  10.67  )
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

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/mmc/core/pwrseq_simple.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mmc/core/pwrseq_simple.c b/drivers/mmc/core/pwrseq_simple.c
index 37cd858df0f4d7123683e1fe23a4c3fcd7817d13..4b47e6c3b04b99dc328a8b063665a76340a8e0d0 100644
--- a/drivers/mmc/core/pwrseq_simple.c
+++ b/drivers/mmc/core/pwrseq_simple.c
@@ -54,8 +54,7 @@ static void mmc_pwrseq_simple_set_gpios_value(struct mmc_pwrseq_simple *pwrseq,
 		else
 			bitmap_zero(values, nvalues);
 
-		gpiod_set_array_value_cansleep(nvalues, reset_gpios->desc,
-					       reset_gpios->info, values);
+		gpiod_multi_set_value_cansleep(reset_gpios, values);
 
 		bitmap_free(values);
 	}

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

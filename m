Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7DAC02194
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jan 2025 20:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmIvRCvcDF3Dj2KR2kPGhjP3It2QNcHK0RksTxjF7Jg=; b=0Lcw4BS4JocL8n
	U6HEU8wFzOVch5Jgh1NVr9qWO33VmmhpcpuBla5xkgoFLqm5W8GVsplB+IUqax9yHxzjHABRBIUkb
	FWFea8uOTgoryhjwhJD5F0/o1S1JKrjDgo68/CvKsSfX+eG3cf53afc8xsh+xNv69wW1kdNydiWPc
	PGWwdKqgzAdr8fWNt5Ev+F4y2XI3KoqKkGuVzuLSCx+5sAiHT6kdyOwqcj8Xh2ELKftQvF1eYLulH
	wxfVRPnnUSvRtpMY8PFIWTeFXjmRWyn6oZg2t8441Jk7dFE5djkxjV/dxxvOMRW5ibRw3VZJMJ9AA
	7/1SbbJEbwim0N6ogT3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZR-0000000BMnV-1dQT;
	Fri, 31 Jan 2025 20:24:57 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdxZO-0000000BMmL-2of8
	for linux-phy@lists.infradead.org;
	Fri, 31 Jan 2025 20:24:55 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-2b3680e548aso934577fac.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Jan 2025 12:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738355093; x=1738959893; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g/d91jflGtqcHyVEIBk6nu4SgcmlMkVjeTIYU/X9iWg=;
        b=ddm2W9tv5xODMVMC0qOScLFeckihXN0rhxzK0GrQprH/j5qpeDyVgjJ4dk5x+s9OHf
         oSLcgpRw3phxMHzx6PCFdE5X2jmqMtAFfa+XvEWllCjZtnmUuGeqjgNiS7jro4c9j/Mt
         XVeRqmNEi164x8zT8KP/UyKnm7gh4U2fkCPrwmIaRtgoJV1UOjE3+A0vTjqz4j4PRe5b
         ovgBr7x+xCitOIdA67heDXfTAgRunOptj9YrmBzaOZe3x1PNepwC3FkDcdLIPO2UHOK9
         XKxzl0Cn84EG4kWrnb2cIur2+w23CDepvuyL7ZH2iUHvaOgFRPcRFzeZ8PdovLjmIqd/
         bLPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738355093; x=1738959893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g/d91jflGtqcHyVEIBk6nu4SgcmlMkVjeTIYU/X9iWg=;
        b=T6b9S5hIhvXkjAp+oZ88+lriZpHjBizlvtoMxdw5QbtrPU8qGiLgyFdXIZqvWs6Q5/
         X1BA6j52ksjoOJzryXvuFlYOaQgDrxMwgmvUFJGrDshjC61xHovH7KSFUQMWbVTQa3jC
         WV8Z2e9OjBixtXYqLacajRhxuJXXm4kP53Ut5vVDp10HFVcj7/AxlRNg7ZGqzDFVOPHt
         BbpHL7S7L+A6x9zKR6nRLQY2/IVL4uuehbvcoEAJeXWoJeX9PF4eOwiKCpk8DKRxU0mH
         CckkREKnsuSHOUofBMAgcnLGzdHxMZtjAke+KVFkHtR1cjG92cQ9lFu+djSwlNtXGmS3
         OiKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVW4E09/QnsCA50qEd9YAfLQPfUlphY55Z2ENyZeE0Ypmz8h8hyqFsQ9JGzejhtoAE7+DL084lhLhA=@lists.infradead.org
X-Gm-Message-State: AOJu0YypWCCGEWPpKfukPhElBG/KFLZWjOSOUMRF+J4PZ1V8qoTIyhZ6
	cDnA3MMpl7u9g9G/O1OXO4oH1pzIrUY99bzg/NA0FS8MsFSa1ahE1x6A1XJdQV8=
X-Gm-Gg: ASbGnctFJmrx+bu0g+7tyf4gVhnGsr55nelJVDrQLQP4LetbyRk3gBlRlK/Snan3YeB
	GMSG2cb566sxx8/wWKSrajehA09DDgnK7Os1ATMk/xb0kRiOlmMpsDTxVcuVEoHe2fNU/WVSxc8
	KAAgv3BlJ2vShyoNgK5+Js1cUHVdAnAxduGpEoQhN6d4eC2vde7WuA3aofu9msW/TGzs7jO4Lzh
	IJuT/UpW08RDKBcn1ehIY/UABe627sN6l5P9YRLjCZkYKhcEoHC4IUZZ1unUmMp3r9a9Tql1EQM
	PO1kinitoKF2QdfVfQneCDnfyoPG2vh1Rh2ZnlY3ZoV90ws=
X-Google-Smtp-Source: AGHT+IG7MwrRorXxkcWjIdgGK+4mzXkuq9AO0FFEdnZrk7oRmiSNnPUZ/DfqxHivj4lEixFczChGQg==
X-Received: by 2002:a05:6870:d1d0:b0:2ae:d23:3c2d with SMTP id 586e51a60fabf-2b34fe99372mr8034579fac.8.1738355093684;
        Fri, 31 Jan 2025 12:24:53 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b35623d2ffsm1403157fac.22.2025.01.31.12.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 12:24:52 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 31 Jan 2025 14:24:43 -0600
Subject: [PATCH 03/13] bus: ts-nbus: validate ts,data-gpios array size
MIME-Version: 1.0
Message-Id: <20250131-gpio-set-array-helper-v1-3-991c8ccb4d6e@baylibre.com>
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
X-CRM114-CacheID: sfid-20250131_122454_714233_4195771D 
X-CRM114-Status: GOOD (  12.00  )
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

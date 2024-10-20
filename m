Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F330CD3C92A
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 16:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yy/vTeXcWWvChlzHm5yxhKwherZ4uh/VH1pcPwwb3o=; b=PgSY5rrhTVBDX4
	JSahUa67aZjOkiwqNf95XmorM6HCj4HghppNMglxjdfTZbIXLVHygWoA5Bceck32VAeNfX+K4s7SZ
	GWtZUs6nH34uvJ9viNv5aVitic9wwaxSihYpBGEJPzgWzWjYhww2hc76yvyPiMfJscpX7VhzYn64x
	5zsrn2sPNc7Lg0uj4K+qPdNqU3dvBUsxlFLIaX2TW1i8gh3aDJdnUvP+meO5doOKz6DR2zLybiz0X
	eB+aM32yWZ2YzU7P4dl7qHP9sPkFFUzdPlur183Ui62i2oLro4p6zBEVzbF3udkd9ZVbf5x7mdnKQ
	DvyTawRFOw5kUuU0RHwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Z99-000000059Fu-1mb0;
	Sun, 20 Oct 2024 16:51:15 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Z97-000000059FP-2Nol
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 16:51:14 +0000
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-3a394418442so11388905ab.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Oct 2024 09:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729443071; x=1730047871; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oYBLg6rMRxWp9iLFroMdP8/SxVXSgHBiuOWN86UrkIw=;
        b=av7SAy8pI8vAmlIqLN7tXo+tOt4C2pJzG4zjMhZSkva+D0Q0PccMR63Og9dOCfr7fh
         pJVZIO2C74xT+EL3w5k2j1bxnlJfhCkgq0L8OsFzLswkfPPBHqV5Luel2YywTRs4vrvm
         CI0v+hskdqUQXUUdnVqDV0Kd44bJ2zrugiq1X0GLTXTkqadFKwH4ruka/V/N/kHdDWhm
         YCd9kvbJedTrMp+IMUwLgZOGFZZfnozimFN/JMpZlodiDr7A6m2B6GM7PmHvs3Q6FuXv
         EFJEp4ihCKb+vUgaOcJZUIrmkaUGABoegaJKA8QHZsiIGZmaPSvtDoNUqns7ApqWhwJX
         6yxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729443071; x=1730047871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oYBLg6rMRxWp9iLFroMdP8/SxVXSgHBiuOWN86UrkIw=;
        b=KRs6iMHQJSfAw/u840w4NqmNBtBq5dtMcmW6cYsXv7mZBvuzj2FVpYPpJXoh6hRH5t
         xJ4s8ncRk3fwzwxTaGtUtaLkqnea3ww1OS8yJ7e5uOC7pqTDjXB3sX85Jx+KIBH3fvLd
         nMZ8jNAkT4QaAC8/6Ne/Qrq94x/639i50vuTUl1PWf1m3V5HRe8vOYI6Ps13zdosKzX5
         Hj181Tz0n5hDH2iEq3FJqywr3FYCHmly3uAwQeQTE89G5AHDur6EasYBJsHY/y4FhqmJ
         bkfs4+/YcT3XntXE+UCK5wuE4uBYc5WLjXN9WD8c03XooLSzP8fvd6rQwHdjERiBX43M
         ANLA==
X-Gm-Message-State: AOJu0Yx4z55H6F5BI6EIvT99Go9FmZLBXQX0rrF1mtt1lDIJyuQYOqyS
	qJiJtXS1wgP9pKjBbbqjSrfa+ApArouhJ5ZYqssNSia8KP39nlpE9USsSw==
X-Google-Smtp-Source: AGHT+IFuzOTVocMaas7n+dappwDJvhkG7PkLCuHn3PZpVgaEfKIahES5jrLYoOT+UvM5KMHwUDN6Ww==
X-Received: by 2002:a05:6e02:1564:b0:3a0:a71b:75e5 with SMTP id e9e14a558f8ab-3a3f4054351mr81781465ab.7.1729443071006;
        Sun, 20 Oct 2024 09:51:11 -0700 (PDT)
Received: from aford-System-Version.. (c-75-72-162-184.hsd1.mn.comcast.net. [75.72.162.184])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4dc2a52fab3sm533821173.35.2024.10.20.09.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 09:51:10 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: aford@beaconembedded.com,
	sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] phy: freescale: fsl-samsung-hdmi: Stop searching when exact match is found
Date: Sun, 20 Oct 2024 11:50:46 -0500
Message-ID: <20241020165102.340838-2-aford173@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241020165102.340838-1-aford173@gmail.com>
References: <20241020165102.340838-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_095113_629456_B6AFC3EC 
X-CRM114-Status: GOOD (  12.51  )
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

There are a series of for-loops which check various values of P and S
for the integer divder PLL.  The for loops search all entries and use
the one closest to the nominal, but it continues to searches through
all for loops even after the nominal is achieved.  Ending when the
nominal value is found stops wasting time, since it will not find
a better value than a deviation of 0 Hz.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 3f9578f3f0ac..719f8972cb5a 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -440,9 +440,13 @@ static unsigned long fsl_samsung_hdmi_phy_find_pms(unsigned long fout, u8 *p, u1
 				min_delta = delta;
 				best_freq = tmp;
 			}
+
+			/* If we have an exact match, stop looking for a better value */
+			if (!delta)
+				goto done;
 		}
 	}
-
+done:
 	if (best_freq) {
 		*p = best_p;
 		*m = best_m;
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

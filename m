Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B127C53219
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 19:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GAZUwP41JqXOJogVo4Toh+vBTCtrOqa8ndSS72s9EIo=; b=ygSTD0enZHiiS5
	06c1fik/NmfLKyCHYcR5yL3Kn+3zfoek6tCxFlZMxxcCDtpEqcQD72QHS0+JJTmPhxUN2SIbQ6+zs
	fbQIjJ3VnTYftnz5z3+h+QTTBfpsw6jT20iR5gls7KMWYYxVjIyyiSRJsBeK5ZIZ1+agfPm4+lSlq
	4gpykUaeAyXu4bTFu0h1t4YPtjOi8mckWsMCR85K1jREqNmGVJfjbavbgn0wcZU3ZvcpgD4xnVZs9
	jiy1kDovwdHE1GsPpdIGx3qMn1FYGGb6rL1cwKIF40fsaAfH5Fcsn7ye0nylUiUZo6ubTJtXnBSIe
	Zr2G++IgnWd+y8ZiVhSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp9xQ-00000008tJ3-0zMj;
	Wed, 29 Jul 2026 19:28:48 +0000
Received: from mail-vk1-xa2f.google.com ([2607:f8b0:4864:20::a2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp9xN-00000008tIb-32M1
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 19:28:46 +0000
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-5bfa6766cf6so640675e0c.3
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 12:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785353324; x=1785958124; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Zw0RLxqDt8ltnYvxH2pSkXYrtGBRy0ZXfT9tg4nadNY=;
        b=HwJHjqZLnWJytxP5jW6DOPc4t3jUcrN4dem1iEZOFhscI+d3lkv4w4NtDIDcYMjL4t
         zalqZPR6Q3V3yBpg9kdt/O4TaWelXdgEtAd37Y9cxieMxvtx7C2uKxbt47CpwhMU1PBS
         /QiHMe7MCra84tTjzwRN15C1nlx/uO1/TdtSa0KARpS3eC7zm9YVuX1F5rsAGNkOC1JQ
         8bkfNwfTBkADg9MGdYb6VXn/NR1rXmsE8q+x9pc3KsVWzvdmbwFKkbqyMun7mS3zBbu7
         YXYYJg8wXh913zbLt+yqlh73Gs9O5BE4t4xQSyFc4eS8PNBXBBgWDso/VsMgToi3h8av
         myUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785353324; x=1785958124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Zw0RLxqDt8ltnYvxH2pSkXYrtGBRy0ZXfT9tg4nadNY=;
        b=QJC35p/CdJq3aeir/agwkZE7xNP2z7cvgt/nxdi/HTBDU3nPJ7iiAsgMwOIh9P6DE3
         bos/loPV634kCcG+wo+50giM7V4U0Mtit4KlPusOP/kftguu+dWatXGqpY04aJCqHIM3
         xm+UR0EQ7SQV1kq2ZnhENUzFmSfBVI6j4PFCDPz7mus+au3EPbt61ZsAt5kQOGRgYoZf
         fPkd1FuYkVo8+n+LYi4BRmuInlfmLXE4XqE6tqhCXs9DPtTlDFE3a7+iWXYiPO7H9HJf
         eK0voOcve/aKrFiTMDLJalZGxAQbCnteaIYUD6oc7GBHXHi6fZAsPRD8DaILqmi7rXNU
         3hTg==
X-Forwarded-Encrypted: i=1; AHgh+RrizX+DKZRxJXl99HEhYNebKOaxAo3E1WgzbbchyzSsd8W/g8oMiDeG0QwDU+KOWA6kzmPY/aqAUFw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwkeP+67M9r3Noz3hZLZxZTPOTf1NxvtceXsWKs+y2IPfjbPpia
	hLHZnTMy53qHiQpyNztQTpyY3rKb/yhUvFmOggRLMueUpRsPfBnOs6Ea4BUmsg==
X-Gm-Gg: AR+sD13By0nL/FAFj8Rt6cBV2jnEZkQj4cAB/k0LHIuuzmp51+r1BqHIL+PHid00bBv
	WlRdKf/IJ/rCeOtKKEoxk2H/miz/ey76AEcFfs8ahM08t49Xxu1glCbK2CWwvw2Yg1p74+dkeXJ
	5hMH4kBxZ06fVvns5JisF9whVnh5YYZpbo9FQ8pzmVeXrYpkQIXMZVkgSO9MXWsxlUP6NF+ZC0O
	ASr71RGXOy+B7A0wOXgnszUPv3jZ7JQD/wtHRV1YwiEcuhIGQyzyygtjlpfsDz6nTFCS7v2fHNh
	lcg+jXkL7DJgEt/mOA47dejXOv9DC6VZ0kRmhXshIaz9T1GR/UcS0iSzpreTdvN0P5RF+4Hfj4f
	rSpbcYsootKxrsAES4Z1GgPEOmsFnzE2OoCY7rV4MBD7bUA9uhh/bEt3jMDapxcjFILZTma9zTA
	cG6XVr4JKK/7OfgSLm7Bi0K3kdNhx97tnLrDONGQEAdKbFBu/xiFX8TTplw8YUfOcXhtu23OBuj
	ev/R1DdJvmSpQu4GW2ugTAvBxPeh+PaFauObdA=
X-Received: by 2002:a05:6102:84d7:b0:74a:b492:3a62 with SMTP id ada2fe7eead31-7549f34856dmr2616287137.4.1785353323905;
        Wed, 29 Jul 2026 12:28:43 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:60b4:a913:91a7:b883:6046])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-755a74c0b8dsm2078893137.6.2026.07.29.12.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 12:28:43 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	linux-phy@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH] phy: freescale: fsl-samsung-hdmi: Balance runtime PM operations
Date: Wed, 29 Jul 2026 16:28:30 -0300
Message-ID: <20260729192830.487150-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_122845_768005_AD61DB44 
X-CRM114-Status: UNSURE (   8.91  )
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

From: Fabio Estevam <festevam@nabladev.com>

fsl_samsung_hdmi_phy_probe() enables runtime PM, but the remove
callback does not disable it. Unbinding and rebinding the device
therefore results in the following warning on reprobe:

Unbalanced pm_runtime_enable!

Disable runtime PM after removing the clock provider.

Also undo the runtime PM operations when phy_clk_register() fails.
Otherwise, a failed probe leaves runtime PM enabled and the usage
counter incremented.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index d010fec15671..0f25d81de61b 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -679,12 +679,15 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 	return 0;
 
 register_clk_failed:
+	pm_runtime_disable(phy->dev);
+	pm_runtime_put_noidle(phy->dev);
 	return ret;
 }
 
 static void fsl_samsung_hdmi_phy_remove(struct platform_device *pdev)
 {
 	of_clk_del_provider(pdev->dev.of_node);
+	pm_runtime_disable(&pdev->dev);
 }
 
 static int __maybe_unused fsl_samsung_hdmi_phy_suspend(struct device *dev)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

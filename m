Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B42FEE20A3
	for <linux-phy@archiver.kernel.org>; Fri,  6 Feb 2026 13:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=/yk1p5cZ/oqsBzE7Xtj2Sydg07uQm6pr+caae5de1Kk=; b=Atx/Vrwn1KDH2H
	IDLUxJa/DpHr4r+9CIRckItZmReVTvUVt82iOEv4F6wzf5FLl+5U6ifzDmPvlNfqjKF+b2YMYB9xv
	gOIDjEG+IPXSe5uSCRVlZrou4oTYx1f16ULIkcR/kXEdXY/H717fCiRhEeO4V4exzvXrPJMfDOOyt
	EWoen1WODwzIZO3yy/L/mtt6KRW973HHF//4tUAoBI1DBHbRQi8vPOHH4IwNrhW7hhoZkGh/sJop2
	q4kjVk8Wu5uXUc7bL0XqKbyJKv2LBfbr3ckZkAJ5ukO0B8NyAdwwSXclqZdp5uuFA3RTBzUt9Pvf6
	AusCEu/gnuMfCEE96NkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voM4s-0000000BNUP-3Co9;
	Fri, 06 Feb 2026 13:40:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voM4q-0000000BNTk-2DQT
	for linux-phy@lists.infradead.org;
	Fri, 06 Feb 2026 13:40:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso18680145e9.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Feb 2026 05:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770385251; x=1770990051; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LkO0ZDFXsTERryZDi+Xw4hkZo9DKWHuedNYRkbdXlU0=;
        b=RnbTRTWAOMLHJKxinZmfDa9a8CMJYg676ckkSQ0fok8IE31A/JEIGk9bLfJFsv9rNf
         bYaCmguMS78cxE+965BfSN549cfov9kSQc5chVYrD3juuZuarh5fsBU1iq5KcZbIN9fY
         yKGZkDjYo7YJ9aO9FEdnPEwMksv/rJav5/lItMwIcJdRh0oV69p0JwcK4PGxpU6hVhl4
         fCB4b/qFfsgH85R+53O5/E7TUiIe7aiFmUisQJB/BZl3ZwiwVjP/CmWUHG4cDSXpe/z+
         ybhBuusagSRZl+bSEq4JNTj3guY3JlOEuN11GsIRDcLK9vUNx6520qbWbLLSA2cySCyo
         5Obw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770385251; x=1770990051;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LkO0ZDFXsTERryZDi+Xw4hkZo9DKWHuedNYRkbdXlU0=;
        b=LTVtW0CCzOMP/d/qBXNCEo0haZb1OwjNT1A5Jt8BFocQkfUATM9ZueLWvR8eoztRqc
         Ruo/wySyWHDkWYZEl4a/0Nk/gCojbeZq9wjW3kzeZAoHQduH3ejQAHmy/VK5/Bb/KrPk
         pawyE3q6uFexCiHNt9y27abULvFXRClYWLf1IQDnD9o96PZ/m5NkdaQqEJaYUvd2TgMF
         E5YEAHL+pKxZyxz3toTvDH4PYNnB5eQJz3n+FMVMETcTvTnukemV1VDVlvFtf5HEePwQ
         nnOMbzyO4TKOgNeRxetUpYAwy1en9VcHXK5dcZPm6qk+xB70xZSI9eJsRieFt8Rye/0s
         oRxg==
X-Forwarded-Encrypted: i=1; AJvYcCVmz+okwkD6DpOCEMEapbMyTm3ElgM6dv36jf1HzaG8L+qemkRLwLoahWxz/tV+gi20t0o6F8CwCjs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUAfZ4Z7SNaBe6tI2+NPhLStJBfBP68mf8fN6SilikEkHYJl7G
	aVN6IkmgOUpPbJUUi/87obAyOAw6rH920SY6zKiPk5Ec3v0OIW7XUoCBh37mfFEMzDJ+Sv9yuC5
	EAnLX
X-Gm-Gg: AZuq6aJSowQ+5AYOgXgJY37OmO2t5cWstX/46ZMdp5gt4x2bPiJBjxPuH7qnFMwNwzD
	/d/ZBTkuVPXGKuw1/XMD7OPrstvcDE+oVJVtVXaX2GVEGHamC4p2NFzVaNasYCj+9lLzkjBcrkG
	2l8QFTyzEt11AnOV2OXN5X14Wd+aBGxze/9xx7xKXQecA+bKujHOj5MKioeBfSrevQUHeOo/L1m
	yx9HRS1TcFHZIjraTqXdWDQ9AP8ZylIWUzjZiwJ3pIQcjcX4HehcXOTko0r32H6uZ2KBepUivga
	KjkIDHw5fndLy4XBgQ9dWHomH0G4MlwdMlWnvxh6Tq8fiw3wt5DsD4I9AVy2PsCAEeRNhboov1A
	p5mJqiL9BAo0IC0nFYEVYfl4D4K2pmWlo7bNGgo/ps7iyLu0+O25JPDN4JHgluSRid76lm17+OD
	fXh5twYDhDJxLuKDm+
X-Received: by 2002:a05:600c:8b61:b0:47d:3ffb:16c9 with SMTP id 5b1f17b1804b1-48320966711mr32154065e9.23.1770385250573;
        Fri, 06 Feb 2026 05:40:50 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483206b8bbbsm81547395e9.3.2026.02.06.05.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 05:40:50 -0800 (PST)
Date: Fri, 6 Feb 2026 16:40:47 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Sven Peter <sven@kernel.org>
Cc: Neal Gompa <neal@gompa.dev>, Neil Armstrong <neil.armstrong@linaro.org>,
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: [bug report] phy: apple: Add Apple Type-C PHY
Message-ID: <aYXvX1bYOXtYCgfC@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <caa37f28-a2e8-4e0a-a9ce-a365ce805e4b@stanley.mountain>
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_054052_608198_88247D8E 
X-CRM114-Status: UNSURE (   6.95  )
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

[ Smatch checking is paused while we raise funding.  #SadFace
  https://lore.kernel.org/all/aTaiGSbWZ9DJaGo7@stanley.mountain/ -dan ]

Hello Sven Peter,

Commit 8e98ca1e74db ("phy: apple: Add Apple Type-C PHY") from Dec 14,
2025 (linux-next), leads to the following Smatch static checker
warning:

	drivers/phy/apple/atc.c:2209 atcphy_map_resources()
	warn: 'resources[i]->addr' isn't an ERR_PTR

drivers/phy/apple/atc.c
    2191 static int atcphy_map_resources(struct platform_device *pdev, struct apple_atcphy *atcphy)
    2192 {
    2193         struct {
    2194                 const char *name;
    2195                 void __iomem **addr;
    2196                 struct resource **res;
    2197         } resources[] = {
    2198                 { "core", &atcphy->regs.core, &atcphy->res.core },
    2199                 { "lpdptx", &atcphy->regs.lpdptx, NULL },
    2200                 { "axi2af", &atcphy->regs.axi2af, &atcphy->res.axi2af },
    2201                 { "usb2phy", &atcphy->regs.usb2phy, NULL },
    2202                 { "pipehandler", &atcphy->regs.pipehandler, NULL },
    2203         };
    2204         struct resource *res;
    2205 
    2206         for (int i = 0; i < ARRAY_SIZE(resources); i++) {
    2207                 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, resources[i].name);
    2208                 *resources[i].addr = devm_ioremap_resource(&pdev->dev, res);
--> 2209                 if (IS_ERR(resources[i].addr))

This is checking the wrong variable.  The * is missing.
if (IS_ERR(*resources[i].addr)) {

    2210                         return dev_err_probe(atcphy->dev, PTR_ERR(resources[i].addr),
    2211                                              "Unable to map %s regs", resources[i].name);
    2212 
    2213                 if (resources[i].res)
    2214                         *resources[i].res = res;
    2215         }
    2216 
    2217         return 0;
    2218 }

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FFFAEF48D2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 09:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkL9zmstY7m4uOF4QhEzrM04ongbp7vSQBvirk8xFF4=; b=2VxRvultfriT5B
	YBXYB/XZ+7SmsZsOAo00uwZRge+Fj9WumAHVDo14mGVO2P+GGKKgF94/K3svzrpFKn0OmaZhQ621u
	V1iKLKUXhvgsTCyxeB+lOCib0/vxcO5TLIggm3ywR4qm1aX6fwNzHYqtjljoMRn1ZNs+PtCiSF2Zx
	KqpZSR9+oD/fhfUYhEBmu2tFMe55b3OR9l+Lmt8cnTS2HwBxASSG2xFpQdgZ4V9ChfoQYrpR5Q6Op
	NOwbx1jktDVO3SN6w6o1O9m/0mGphy2BXwRASUPCOCarr1zWwkKSvA+cXks5WDKEz6VgBkWITnpYm
	xerxrFYGkFN5EDgBMYNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruuy-00000006H2Y-09Bk;
	Mon, 16 Feb 2026 09:29:24 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruuv-00000006H29-1iRz
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 09:29:22 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4836d541968so1834965e9.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 01:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771234159; x=1771838959; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ogvJ3kqaNl4WpBdAZZzPnlDtG3SqRNUddgrdVVu6K+8=;
        b=A9rU2q30fZy7TrckOwk09yeqLUtWKgFJ6+k5ekdllScK4XoTWbcsP4K9A2OtLK60m9
         Wpk+FPozELmS8hz08DStsZ0KKExCrUD1+OKb2DJksJgAwVnb3TFhvwc2h1JIiA/yxI5j
         u23kOVwiUYfojDuAXmss5/9gHiZh3ik+eE+4tTrF8XKXU4UMWwrhyd/LOzPt+LGwJxO9
         sVEpiL+ZJqqFrX+cTGHwiHmpuhTbvW0k/w+ER5hXRfRSAkfbl8nmVfIDN5uQObxwoz3G
         DB9dEyVQ918f8dVUnCpaMdDoDuKo46hd5jLhRCFN0bJ2E4rwhpA2yDPicKrEH7/rMGeg
         ED0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771234159; x=1771838959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ogvJ3kqaNl4WpBdAZZzPnlDtG3SqRNUddgrdVVu6K+8=;
        b=u7b+EDM2OL6140+/BEIO/E4NT0GO3qY1JhZD7wklAE2DgotmKWeFfdUsAfjhMjLOGy
         QH6wK/kdlGkYkIxhEBkSPNA3sUXPBeyLdHO2URDM+7p4KL8z+BsS1uL+B3uKqSigcwnd
         t8VefYWyAGrohEhZdhAL4YTp2el0S507yL9hGWKNnwjCW9OKFK4uxEwa5u6uxJh8UiJC
         n+h+KQf4SEyNibWEdjD6dczcta2ww6dQzuuKqQs+BsYlWrAXcCv5hVzp7MxO+GU4ndXP
         HYDLLCj+7pDIkLLqr2t8Myt46bKYQZXhGQKzEfVWMZezpgxc2/xVDxxLzqDyW52Gc6VF
         Gerw==
X-Forwarded-Encrypted: i=1; AJvYcCU2+j3vYzS2ABTiE7QBazXE/skhs1yWr1x84xfYrwC3rgLiNI+9dQorRrMqfbYWfRU8+EIF4PDMwX0=@lists.infradead.org
X-Gm-Message-State: AOJu0YytJWD6k2AglgE7fxuHTy2IQeFeh/leMxhJReNiHIMq2pzJivu3
	kn7YoBWGqzOiCdOevZiX4/4rtINTnxlHKOdT45pt7GRofBVB5UPdmcv4
X-Gm-Gg: AZuq6aI007aL4XPnfwwEhAhqVW5HiG7i20sEfqq5jFGL7Seu3sxqMZsIEI/98lQf+VV
	MtHIBW1Q3zIGW4kUqJk1V70r5XDJ+uXmTHYMX1S8KLioi+Wa1uGeuh2cUFF1uzZi+aIvTqacNnG
	ecladh3BdOx96jqy8p4WsX4VPkw90eVc8xZHa5XkW2QBVjh5nlRWiMTNO6vAiQd6wYEdqWOTfJa
	EariTMqFG0dcaFrUBrEqB4mIlG6r6Dmu3KLWqI9m/JQ4qYe1Azz9aeTZq/yVOcjELX7qN3cXty2
	QxCGHx2HPV0F1Z2QVlVlCIrXkI8KFuB2bJ2AvGnVr292icPEJDSLRkoyjf8StuKLns3UGzCPbog
	FGaXmzGIxP8LJJr/Ck3sFOjpWmzszqbPfstQJacla4CWjvit7InX6qxQFZoi8EOkFXugxCro0M2
	5s6nLen/b3jybMPw==
X-Received: by 2002:a05:600c:3b98:b0:47d:3ffa:9838 with SMTP id 5b1f17b1804b1-48370e18ff1mr144504325e9.1.1771234159012;
        Mon, 16 Feb 2026 01:29:19 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:68e2:cc27:74c:c083])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48371a3c03asm76821035e9.24.2026.02.16.01.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 01:29:18 -0800 (PST)
Date: Mon, 16 Feb 2026 11:29:14 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Message-ID: <20260216092914.kmvl7aep7dantcsd@skbuf>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
 <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_012921_487142_562810B9 
X-CRM114-Status: GOOD (  20.67  )
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

Hi Josua,

On Mon, Feb 16, 2026 at 08:19:27AM +0000, Josua Mayer wrote:
> >> In the future, when you have a series with cross-tree dependencies,
> >> please try to think of it as individual mini-series for each tree's
> >> 'next' branch, and specify clearly that you need stable tags (to be
> >> pulled into other trees).
> 
> I don't really understand how I could split my series up to avoid this 
> issue.
> 
> Due to the fact that one (and now two) drivers implemented local
> mux helpers, to undo that an atomic change must be made tree-wide.
> 
> Meanwhile it must be avoided that while the mux core helpers are being
> tested / reviewed, that any tree adds another driver-local mux helper
> like appears to have happened here.
> 
> Note that my patch-set did go to linux-phy@lists.infradead.org list, too.
> 
> The second challenge for this series was that mux framework is being
> enabled only by drivers Kconfig "select" - and not possible by menuconfig.
> This is e.g. responsible for being unable to test =m build with arm64
> defconfig - and lead to it only being detected through kernel robot
> x86_64 allmodconfig.

To avoid this, a combination of developer due diligence + maintainer due
diligence is probably required.

From linux-phy perspective, there will be some automated build testing
(which did not exist at the time of your submission). This would have
caught the 'hidden' devm_mux_state_get_optional() call present only in
linux-phy/next, when testing patch 2/7.

But, to work, the build automation needs to be able to apply the entire
patch set on linux-phy/next. So expect some pushback if it doesn't
(hence the recommendation to send a mini-series to linux-phy first, and
request a stable tag).

These are the tools we have, we need to find a way to make them work somehow.

Then there is the fact that local definitions of devm_mux_state_get_optional()
keep popping up, possibly in unrelated trees (not the case here). This seems
to be a bad practice which should be discouraged during review if caught.
Otherwise, some 'retries' will be required from the developer until all
occurrences are removed.

Note that the upcoming linux-phy automated build testing does have an
x86_64 allmodconfig test too.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

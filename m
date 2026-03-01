Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98489FD0040
	for <linux-phy@archiver.kernel.org>; Sun,  1 Mar 2026 00:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhQkSPPmi2aku0fum+eSps/4t9xUrT78PKURg8YBIbU=; b=uN280//YYXuBvw
	XK0ihMoB418UXJERU3qXE/jXLKqLr57kzgGCffD2DT95xdkeFA8hlO/S1VquzMe4vT5YB2E3iufKL
	LvcxTkx3fDJAOGyfwVD8grxB0cT6CbLzx/sk8KMFGew0LdiCYkYmGfWNmyv2cyJILq2QNVNgfVygD
	92fMJzgk+xrpD8Z6ExeEQEkgPJy4jpT6YWZGPjC0Q6dbm8NduJ7cv9y/GTSpo+21y/ZJQKgt6n+9y
	nb/cAkGFCsXgbJFckuvv7mg7XVdt7yxh1b9IROk7OfquGz1oJYO5lsF5PfGYtR0om0omhbOZ7sBiD
	GqqgwpAP+G5ucRoBKsDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwUSd-0000000AOfW-0Ift;
	Sun, 01 Mar 2026 00:15:03 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwUSa-0000000AOeO-0Pa4
	for linux-phy@lists.infradead.org;
	Sun, 01 Mar 2026 00:15:01 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-439acc60f9dso104550f8f.1
        for <linux-phy@lists.infradead.org>; Sat, 28 Feb 2026 16:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772324098; x=1772928898; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zYnsoG7qDnrk7Z/gOuxzAyQoovXIM2RIYjUlYbsloBk=;
        b=l6z/yyyIARuuvuZusJA39yVbXiBSWxo7+IMi1sibMpeWKnIEatwlW0d4GyI0p5etXH
         GvgaW+XY6o41YlHU7UxmSfyjvCr2DQbWWY4SkcD7V9/xOrHcp5FZ7qk4xWimjvTbYtqa
         8N5hY1T+xzaTwabaKFEcIYpFTyZyIuRlKPpfKHgIG/bUdZZ0L/o+A9jrOpQSLLOk9Gfy
         /EcwsdnS6IWu6wQA4MxxELg8eKXdz3721YnIDV9zAIoOPkRtnQM9g73rZhEkTm3t5Z/q
         tvFT8p6+UudmWHVCgRgOoMOf6ji9iHo1N1fgFIG5y+KaskX09DVAIp/EfLniTS/U/A8F
         /BEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772324098; x=1772928898;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYnsoG7qDnrk7Z/gOuxzAyQoovXIM2RIYjUlYbsloBk=;
        b=W3OT0/X7+O16pqiSMUbRORDsj5jCgMUeE4B1YnzY+oZAVFw/t7vvmJSqg8mSAJwd8p
         7ab6GQZ8LtpYSRLq4FV6pmSKduAwkPfoiBfh5MID+7OjxjzpfWdEGx9ekIXZDO+NBVa3
         eYHMiZGpuw5DE39EAAcGtpwin822Jj+RawncjOnwZUDkuYB1q42dimwBhRZx+uFJ0/gG
         sfGzCOP5W0tJKJYZ6xA7YnFIQedHDBwdS26PWlgKjpjKbUpDhvvtakP2ycBj4uiE+vWu
         n97Cndn1ORNFuXvcWuzRqFFDZt/rrQlH2T71zwP9HwCXf5YXQvFf392L6C6ozFMHVsEP
         LHgA==
X-Forwarded-Encrypted: i=1; AJvYcCWnFzn3FQtG6DchxD37bZnlC4xXtG4VfcDFbd//7B+3N7312Nrx5oXjw5cSe63Ty3HhcP17r+08nks=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcWB+Dvtv2eW6jwfVQ13JJfxlkafuJ8einccUorNm/RxQnYdTp
	LS8v0IIlJOg2HBlIqK4O3zrtKQaPCBZ0C6teJq8Q/V4Bcy4BmGsQ8i4OXWfitg==
X-Gm-Gg: ATEYQzzhhAgj6fiEYIrl4KkRgbpVtSwEduRIhAsvzC2Yu82MWVuEZXelk5ZIEucLKjo
	F12BhpqPIsPrbB1nWYkiI5NyPnshMYqgnMf9bI/urMlfHdCC7w1RvWyU3wjgX7JEM/UXBQFHJff
	MdyJeMvxi4/zliu/fCmH0ZEPRnM4iqJdMLuYS2amWmTjKka2aXEJ2sDCCPwuUfcxikKadlYYdPi
	WlN1EboYGgKgEGRrkvu3HDMSfjjDK+6WnoJkxAzrJMRNJ3VQz/r5v8Gp6Argum9qE13tdLHMFoO
	y8wsfPS2fLs/gP0CT7ZP0BXDA4dece5mcTp3kMiNOOn0+2GniOPONXVbUZX05c86tijQ5h8Oxrq
	Dw6+Vkr8IlPiLq2ScEgTRYdYSF7Lf1eV/kY6QLk64WhS7paQVmQiXs+pARCVoUmQmzZ78aDCv0K
	rjX3m8s5Jo95qV3CqWf5c=
X-Received: by 2002:a05:600c:474e:b0:483:7d93:9fb7 with SMTP id 5b1f17b1804b1-483c9b99876mr77353565e9.2.1772324097547;
        Sat, 28 Feb 2026 16:14:57 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:53bb:2a43:1888:95a0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd75dfaasm278799855e9.12.2026.02.28.16.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 16:14:56 -0800 (PST)
Date: Sun, 1 Mar 2026 02:14:53 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RESEND2 net-next 0/8] net: stmmac: qcom-ethqos: further
 serdes reorganisation
Message-ID: <20260301001453.lpd2rawy7bqxyivp@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <aaIysVxy-WxbiJz9@shell.armlinux.org.uk>
 <20260227165556.5cf9e844@kernel.org>
 <20260228083111.5df8550c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260228083111.5df8550c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_161500_149086_915C18F3 
X-CRM114-Status: GOOD (  21.64  )
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

On Sat, Feb 28, 2026 at 08:31:11AM -0800, Jakub Kicinski wrote:
> On Fri, 27 Feb 2026 16:55:56 -0800 Jakub Kicinski wrote:
> > On Sat, 28 Feb 2026 00:11:29 +0000 Russell King (Oracle) wrote:
> > > The AI review for patch 7 says:
> > > 
> > >   This commit fixes a bug but lacks a Fixes: tag. The commit modifies
> > >   behavior introduced in 360000820ae2 ("phy: qcom-sgmii-eth: add
> > >   .set_mode() and .validate() methods") by making phy_power_on() call
> > >   qcom_dwmac_sgmii_phy_calibrate() to restore the previous setup, and by
> > >   making qcom_dwmac_sgmii_phy_set_mode() check if the PHY is powered on
> > >   before attempting calibration.
> > > 
> > >   Should this commit include:
> > > 
> > >   Fixes: 360000820ae2 ("phy: qcom-sgmii-eth: add .set_mode() and .validate() methods")
> > > 
> > > which is _wrong_, this isn't a bug fix.  
> > 
> > Yes, that's what I thought but then I saw the other thread..
> 
> Trying to apply this now but stmmac parts don't apply on Linus's tree,
> and Vinod wants a tag :( What do we do? 
> 
> Could you, perhaps, send us a PR with this on top of Linus's tree 
> (a resolution of the inevitable conflict with net-next would be helpful
> too).
> 
> Or do we give up on the tag?

Actually, I think it's mainly me who wants a stable tag. I'm working on
a series for phy-next which will conflict with this hunk from Russell's
patch 1:

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 5b1c82459c12..4ea3dce7719f 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -7,6 +7,7 @@
 #include <linux/ethtool.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/phy.h>
 #include <linux/phy/phy.h> // this gets renamed to <linux/phy/phy-provider.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>

If there's no other way to provide a stable tag other than on v7.0-rc1
(like for example a snapshot of current net-next/main), which I didn't
know wouldn't be possible, then I think going with the route of fewer/
more trivial merge conflicts makes sense.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

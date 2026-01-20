Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DA7DD2ECF7
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 12:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8s9T+wknjErHLLcB3qDJHQ+cSTRRn4eUMvOR4zFySI=; b=oNggf/OU8BgRe/
	WyeyrGmw74ZLsg3aEd46MzYJi0N0Q4iihlak6KTbL20fscbXmhfl4J2xSQ61MUVAEWq8hX6WnTDKZ
	WeBZ5D9T5VSrEKIDcfAIzWDM3ExY7Wk/Ls+lM20JAfCqItZ0zBGHYY+n8lXorobyT1l9fsK4reBDT
	ZTygst2ncsZhNVhCt11f1LGI9thAE5ITQSgjgilCYFaYzCSouxfrY0JimYs9cHChPBTMC+2xqqTqI
	SbNdGTjJvo06o/hEurRBJ8QCvjuHCjG6zTfez0bYDMnNA4VZ6yLsV20SmV3XmRqZZ4Q6PuScFZdVz
	WFP19gas4L0Qqcn8tAXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAZv-00000003nPV-17G1;
	Tue, 20 Jan 2026 12:11:23 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAZs-00000003nOj-2QcI
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 12:11:21 +0000
Received: by mail-ed1-x542.google.com with SMTP id 4fb4d7f45d1cf-64d00702990so995319a12.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 04:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768911078; x=1769515878; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EdNwNcGnrHVRj7c7tzYxsUBjZ6i7z3klcWNlJbURQPw=;
        b=CfyPsMpWYvxdLeaR92bJYz9jv9PKWxok1XVOaO92iPI6msyHZMd+g1MOMAGziHhT8D
         eK2RuqidhwCkFfi/KCdqS1XAZsYEWtN8NIY8UgmsZ6pMnZZxhNvGLfYBzVelPosbpHNs
         3HhjAz/bBrOCc1p+AD0/W3hKfmBJPxfW3HfywRWTSlk858H0xC3db48V1DEYJkfuwumY
         llEhLqa4knBxyV1hf7MShslxbDkq8Kk83dVq9Q0bEf6SGANTauSzGcD1BaFmzYHUyrxw
         fR3UrnzD932sGgHb0c43USpC05iAXQJp+8cRht+3bXK3mYS0YGZDTZwJp4vlgKzvqs4u
         ikAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768911078; x=1769515878;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EdNwNcGnrHVRj7c7tzYxsUBjZ6i7z3klcWNlJbURQPw=;
        b=xIum9jbzqh5I+XtnX5evaLqcFlgu1yLuIV4KZVCGTgDQv5fMMRNMbkFK9rapS9WdHY
         Dhkfae1kmYKbtzbT41faWHVxbOcYtgCKp9iSbKKWPci7kwxLd+qcGsUJ5jcvY5IYjVWW
         lEBJGXfqPF0oZhQApLqc9EhDIYZ2hscqL1VdGjJeEU4KkqF9DrybRPbRQScOCrJNwTkm
         yWS9WBgi8c+rtBFoo3ks0jDsE+qQIq7HzEb6hbQ+OKEqRdfw8vM2/ChXGbK4PPJgHArb
         Vrl/lLRc4njhZ9YB7QZgHx6g1X/sqo24cE8HNRzlzN3FMMMvEYjk6qyCNlUtMvLE8oOR
         O3/g==
X-Forwarded-Encrypted: i=1; AJvYcCWdiad272Dy/NKiH+k6rUZ1UB8Rxmnwnl3LJIxv6VSQ8L0roXikqy53mR5sexWkT/FayVTpKblsJmM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6BCUEAlYoB4IXB9N+5ua04ZidrEwljJnaAXIJFGstL+aSScuS
	3e+GxHaap5zla6gl7mF5bSANActS0Xh0GL2qcrZnkKvxmEqsVjZaATHLC9YxXdx+
X-Gm-Gg: AZuq6aKKmSBw4DwSpRAd97HukyeaEru3god9OU7C/YzDi4mJzGpritI8DrLKi3TEHJX
	pzCw81ZAg9Iu0cyYlZ+LjP/yzqPMSlfyuPkNEZpgwoN94HjyIbOPhZhy3oKHtoG2JiJrc4lq2C5
	nahmw/SOUMbdQTtFWwxzKvem/VVofC42rf1HPdGvwGdAko+Q6Ks36lPg6hEMYWPUMKDFvsiqD6N
	KyC3PREnBqkjp+PmnJ28oW5bMCeNxIf1bX4euAmGJJBsQ9IsByHn9xo7Rsku4vrcwFD6Yv9xwiJ
	mCGgytxJ3p87neXencLoSqCT1vOOvOQoPZT7RZPtD3BPQXbavGnszSKM6QR/hGRc1WSKMOyJheS
	zTpiWMTtdJT0OeUdlCPnbdAnu6i4p3ukhDTjfqQw+kYiLZN9rSLsc7J2BA+svZ1tFPuXLXapmaO
	jhaGo=
X-Received: by 2002:a05:6402:348d:b0:64c:9e19:982d with SMTP id 4fb4d7f45d1cf-654523cc85bmr6515961a12.1.1768911078156;
        Tue, 20 Jan 2026 04:11:18 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:619a:24df:1726:f869])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c4aa7sm13503305a12.34.2026.01.20.04.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 04:11:17 -0800 (PST)
Date: Tue, 20 Jan 2026 14:11:14 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Jakub Kicinski <kuba@kernel.org>, linux-phy@lists.infradead.org,
	davem@davemloft.net, maxime.chevallier@bootlin.com,
	alexandre.torgue@foss.st.com, mohd.anwar@oss.qualcomm.com,
	neil.armstrong@linaro.org, hkallweit1@gmail.com,
	mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
	edumazet@google.com, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, vkoul@kernel.org,
	andrew@lunn.ch, pabeni@redhat.com, andrew+netdev@lunn.ch,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [net-next,05/14] net: stmmac: add stmmac core serdes support
Message-ID: <20260120121114.2aedgu42i2wax3yp@skbuf>
References: <E1vhoSH-00000005H1f-2cq9@rmk-PC.armlinux.org.uk>
 <20260119192125.1245102-1-kuba@kernel.org>
 <aW8M9ZiiftGBQIRM@shell.armlinux.org.uk>
 <20260120081844.7e6aq2urhxrylywi@skbuf>
 <aW9VHt6meEJFxV0I@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aW9VHt6meEJFxV0I@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_041120_666913_AAE481DA 
X-CRM114-Status: GOOD (  16.45  )
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

On Tue, Jan 20, 2026 at 10:12:46AM +0000, Russell King (Oracle) wrote:
> First, I'll say I'm on a very short fuse today; no dinner last night,
> at the hospital up until 5:30am, and a fucking cold caller rang the door
> bell at 10am this morning. Just fucking our luck.

Sorry to hear that.

> On Tue, Jan 20, 2026 at 10:18:44AM +0200, Vladimir Oltean wrote:
> > Isn't it sufficient to set pl->pcs to NULL when pcs_enable() fails and
> > after calling pcs_disable(), though?
>
> No. We've already called mac_prepare(), pcs_pre_config(),
> pcs_post_config() by this time, we're past the point of being able to
> unwind.

I'm set out to resolve a much smaller problem.

Calling it a full "unwind" is perhaps a bit much, because pcs_pre_config()
and pcs_post_config() don't have unwinding equivalents, unlike how
pcs_enable() has pcs_disable(). I don't see what API convention would be
violated if phylink decided to drop a PCS whose enable() returned an error.

Similarly, the fact we don't have to whom to report an error code
doesn't make it pointless to offer the guarantee that pcs_disable() will
be called only when pcs_enable() has succeeded.  It is only the latter
that seems necessary in order to develop reliable complexity on top of
these.

If SerDes PHY integration in phylink_pcs drivers is a model to follow
for other drivers, I think the way in which balanced calls can be made
from pcs_enable()/pcs_disable() needs to be given more attention.
And I think it's a bit worse than "doesn't matter, the port is dead
anyway".  For example, we can have QSGMII where 4 PCSes share a single
SerDes lane, so one single malfunctioning PCS instance can affect all
the others through the lane's phy->power_count.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

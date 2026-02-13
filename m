Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E0A5EF99C8
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 19:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6NISMOXbx41/6UIXB8Y8gqRIkWN7fRWmtkJutY+tcc=; b=ayrXkzX4Gss1DA
	moTUdPb4hqIfZ8A1T3Qu07cbT214ES/PLziYa2k4dZ2O952HwjRUHeloaGAErFclXYLNA/TwfqhDN
	NhOo6mA7bqDNeiaTWLSJXcDkXKwfpB3jtHMfm+LhsFaTxadzFaKhjKiq363nuYacQh+Qjg+xLW0tU
	6YOCFIX9Q5uEMslHdsZkPUYqawF4ycWTzG7JkVOj/wINNRrvb3XIgyHMHu0X/QnQqdgQGRVvYzk8V
	+rh72aDA/SOSxBkup007+zVPkaKkd9Zu+STvR6BKE8AGF/lA726hWAFcVECH9dukcj5qFVg0mIOne
	t/4fMZke5KVGehBWoxaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyPX-00000003p2U-07rR;
	Fri, 13 Feb 2026 19:01:03 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyPU-00000003p1Y-3YiF
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 19:01:01 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4836d9d54f6so1498435e9.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 11:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771009259; x=1771614059; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sapC28wGLkNp2EIPovx9wYrvEx8pCtzRMVnlm/Q5eK0=;
        b=OL5EUM3pSgnAbtUkbEL6hkb/b+wWdyn5TvVR3EkpfZPhlRKi8Y1TWn4oSYFholyBCs
         Ytc4Y46nhY9O3NfT5wxetpzdbCrg2DR7tScqHMrJotBtuEHaXNUi883GSRJAyU+fIKqw
         eQgTh6I/photm6bgB6dXW+/fo2950rnS3POv/tZ+b6LOi8nGz+2FAW13X5X3+xaH4kpG
         6jcx1pGb+8Izb4F9F+IhPSlUBFJC20Njvb/jlMVwXiXtbUEq9gB9LhMH47hJk0IX2DMW
         A8R51qxBDncEIxZkad3p8H2Dyexj9R6vCuG4QHQN85KzCKXFvhxOBXKNey18Og00mf87
         0YRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771009259; x=1771614059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sapC28wGLkNp2EIPovx9wYrvEx8pCtzRMVnlm/Q5eK0=;
        b=heB1+50LuFfyGEvnoAe3nnPobkkDu2SDrMsm25cLBrp87PNWwYpC1KV9CvFmv1CYTn
         YTK/TIrSeIldYJh8A6ovxTU0g/tLvDgV7Mqo10ZMCCfqIFqqNK5cArGKiNp9Hcklukl8
         dgHsKoHsv7grCR5+aL+xk8qPWsYkLEa90mj9pTzCX8Twnrbt+DgtJotDAX2IN98egmRx
         snERIWqhE1z6f02GcukQYh/z31cmz9UP+UZkINcWL2VWZCfYYg/vhu+jIWqRH4vgjG/l
         wsKP3Ae92De22Z5wlYmh2/xeRh7yoVCKvCF/bh6veqUve6KkOLwCjvwJDaNlnP/3WU9C
         5yRw==
X-Forwarded-Encrypted: i=1; AJvYcCWWDD9f3a3kfH+o4D3b8TmlhFcgqCarnqKZxCEFjQtd1XJF4zo9U/q7m+Y7WOYEXRIu6XadzXJr1TM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyt3ecjcDwQrSt0+lqk8esRp1e91bnycPfvTGD0ERUhVDfUMXvK
	YDK4/aiMmI74ps8JX8jxb3DVtIOR5wPEb8xQxSmXjPRL+pEZ7ozCqc8t
X-Gm-Gg: AZuq6aJ/1/phj0GOqJNyNLa0Pp00MBlnD8claTn+pWgP03AikzfPs1XbsNUPboykf8S
	fqNU0ZLxK9+PWUcGc4KeeYE2e9ogZQ96VxZbQGaXTtTlDsH1iwe5bgiZsTgWNQ+xZQUtpjWCZEx
	LGlZwkIBfsf5WA7O9R934JZ5/2kYEnERIcNeySG2cGaGb7wWpO02PKMu76t/94yOd3w1Fg2lwxP
	p5m93gVeRMZKSkNvccPLuY3oxF6/hqPVrMT2K13BF0mzsY75Mv6GX3mGyxmK+Fce2hHuJ2Ml/zk
	mR9gjRnzK9c3pqegizrUsNyD5GXR0SQ4fj6GiZF+g+TybHKJJSMLJsQx3CNkeYcxbCa5vvosKRm
	/ztCZR7TYX8pPzxm6GymmTUVkF2Y3Ijau9mMLfxLKOagxxVTvZm9mYT6nRrDmCw6ZGuiWKQY7Qv
	4m/AA+gjvmcuaAa8a+Rd7ljI08Tw==
X-Received: by 2002:a05:600c:474a:b0:477:7b16:5f97 with SMTP id 5b1f17b1804b1-48370cce47cmr34850165e9.0.1771009258323;
        Fri, 13 Feb 2026 11:00:58 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:34e8:30f1:fec3:9b0c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5b2d1sm8491744f8f.4.2026.02.13.11.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 11:00:57 -0800 (PST)
Date: Fri, 13 Feb 2026 21:00:54 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: Re: (subset) [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP
 control and PIPE3 PHY to DT schema
Message-ID: <20260213190054.ezblztj3blmhtywr@skbuf>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <177021985530.133434.13436195442562231016.b4-ty@kernel.org>
 <f60156a6-58af-4548-9dc3-71c71b822343@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f60156a6-58af-4548-9dc3-71c71b822343@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_110100_937862_EE22A90D 
X-CRM114-Status: GOOD (  17.67  )
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

Hi Charan,

On Fri, Feb 13, 2026 at 10:06:16PM +0530, Charan Pedumuru wrote:
> On 04-02-2026 21:14, Vinod Koul wrote:
> > 
> > On Fri, 23 Jan 2026 15:39:01 +0000, Charan Pedumuru wrote:
> >> This series converts the old text-based DeviceTree bindings for TI OMAP
> >> Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.
> >>
> >>
> > 
> > Applied, thanks!
> > 
> > [2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
> >       commit: 62c9ff8fc20d23c0dc36be1330734fdafb3e8585
> > [3/3] dt-bindings: phy: ti,control-phy-otghs: convert to DT schema
> >       commit: 7878306d182a1750583a325a29e5ccab9ce0235b
> 
> Hi Vinod,
> 
> You missed to apply the first patch which has DT node pattern changes
> and now this dtb check fails in linux-next as these YAML patches use
> the updated node pattern. I got a report of errors from kernel test
> robot.

If there was any request formulated to Vinod to pick up patch 1, then I
also missed it while reading this series.

Usually, dt-bindings patches are picked up by the subsystem maintainer
while DTS patches are picked up by the platform maintainer. If you know
that there is any dependency then it would greatly help if you could
mention that upfront, or even specify how you expect the patches to be
merged.

In this case, I expect the warnings will get eventually resolved when
Kevin picks up patch 1.

To avoid warnings from being introduced in the first place, you could
have
- requested all patches to be taken through a single tree (requires
  maintainer coordination with ACK from the other one, more complicated
  if the files touched are under heavy development)
- requested a stable tag from the first maintainer, to be pulled in the
  second tree
- send patch 1, wait for a merge window to pass, send patches 2-3

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

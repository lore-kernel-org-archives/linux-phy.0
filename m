Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01ADFF4BB95
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 22:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l472YbFWbkcwdUXIe4x8ivAI6tyPnfWRQMddIV49/38=; b=rdMsfTrrH64jGZ
	ZDKy1YSA6tKqrfcEKlBd2m6cHAi9NzSGm/xOhaPKDfOYciLAvO/Rsa/pkrsX1/STMzbNA4fae4QpQ
	w6dXRJGBNX9cfAUb85c5YHyUYRZBBYNjswR8aXsxkytUmwm/pTqN7pg0hMH803yzbJGytevENJEJw
	lWQBL7SubAkilEX4ZU/rsb+0CqZnq5llqIcKrYdF9y+OJEW/TQCryfiEroNg5CDPp3pzt80nG2Z8j
	FnhspW7VrK+Ade0N4M1Ipw/el4EJZp61cPFsBFb1TJxqicG+Wc/yICLDQwRT07SA+bbBkviZcE5m1
	LzEC5HxSj3P2J1pJqP1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv0t4-00000002s6l-2Be8;
	Tue, 24 Feb 2026 22:28:14 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv0t2-00000002s6O-162T
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 22:28:13 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-679e5688b25so492981eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 14:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771972091; x=1772576891; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TaG8hwC2DP9/pQRfQce4RRjKTObpfeEkNQAyxe91JQY=;
        b=VEHH4rY6nZ1w9Nd6R35PGSYVk0OBkbIb8tB0O2du2Aua69B0U5PTgi5+7O7A/IJqu2
         665GQZRVIwiwMPWaCbTxaA++X88glFlQzbI0yeLHK1aCNNZ69ntXRIuTijwQm2tb/oMV
         9oszxuKQAwwxMrznt99X31vXoEQwMjeTWbQyWF25x+reu3R3McpNKz6XOUgI/bceZP5g
         4g56nrSoo4DLFGpw+C1qFqbxMDDlcYj3mXg/s67IQmmWI+4gHfva8g0QQWVPeIMHgR7H
         eZwSlHG7pYNs+SgQ3eyYr97NQLSMjDj8hAgKIuaMSZuSYLQR+dV1zqMQD7Zn2aWG1mjM
         X9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771972091; x=1772576891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TaG8hwC2DP9/pQRfQce4RRjKTObpfeEkNQAyxe91JQY=;
        b=TiASBsJpA9vne8l0YQ3B3B67Avyr6Rjt/eqXBO1CfO1yVhsHqz9pZxHivk76a8KTCe
         fh6px2gFUp0LZWHyRz25z60MzH4WaiB8pDneyyvBgYCbOcnO5P8htGjcEsXSQi56Nahj
         5oBcCUbYZdAWShL4Ont3ZQ98B3aXUn03yUKrlhibdGFQ0v2ZcsUx7Xfq7zP6HTHfjQZV
         aythomZpBBnzbbiqrQ/srG4t12BH0hNJRuyqBqvvFgULqLa04P/U8rEIvuEcBTgHgfji
         5qJ2DxQ3sVaXobaY7ZAUZk2u29U3XiAedkqRFPdVprlUJvrMtVpPWoXKav1Io6FzVqQM
         YXcg==
X-Forwarded-Encrypted: i=1; AJvYcCXzMsQFMJZCVoAd663zyiRfcMjpWOUwnYY9QImNjak2OOog/hfa/eqbtxcEAiYAYZJ0wV+9LP09uKI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbTCYSgCnt51xxbLu6PLJ7jEPvrYW3nNjiP3rvjfMaXMYpXjVU
	azkWQT6Zplz/01FlyTkZ/TO2EzqZ1+/BiwZe9NH+wNKJuMHR2D49Mu3e
X-Gm-Gg: AZuq6aJtkQM7KOxM9jOUmrrlErk53nmylfqElPf96OIwU1sHV5cC4kgSgkHKvErgCha
	vt80iKKLR9KWbniEcjpFvcAOILhfIVdb34OtCBEPPjO2M1C+cXEc5qynsPT9n34AwI3j9NsPAlN
	frejaIwmt4XZIwyjmo71KAMN88JKNE9Sy6yFIeWcAQuzBm9JpYFIkRr8nJ2eb5MJhl+FunvoW7z
	YRy0aobPFKaM6+BBtSL0OjssPlHb4vOORs2NNcTSz0AXfC2qcNdj6OdR1gQq/w2ylSV83+zUBGh
	5+lubwMLjQJaoguAJwB9dZu9ZIrg2393mySrBMcnAkoVTGcfWLKgs3JS/nyePQQiMmN/Pg7T/R+
	Q1bkJ6mjdWbW88XA++ongp6BIEelFCNYpIrPDW9wc5g9BX/aUakM8pHnH/bcJ8grWZFyPlsJHzA
	mwLa8xF7iRHK4fbPkzlXnVZq+9hp978EQutWE/2GCTZ1JVV/HcK7ege9X1n5+mPCWEMvh/uQBTA
	Eo=
X-Received: by 2002:a05:7300:691f:b0:2b7:4157:9afc with SMTP id 5a478bee46e88-2bd7bd23dfdmr5324137eec.19.1771965531786;
        Tue, 24 Feb 2026 12:38:51 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:e1d3:e70f:c61b:7501])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7dbe78b9sm7329307eec.18.2026.02.24.12.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 12:38:51 -0800 (PST)
Date: Tue, 24 Feb 2026 12:38:48 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Johan Hovold <johan+linaro@kernel.org>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	"Dr. David Alan Gilbert" <linux@treblig.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: core: fix potential UAF in of_phy_simple_xlate()
Message-ID: <aZ4Iel5AsL3hSgrE@google.com>
References: <aZejMSJ9qqRWb2pX@google.com>
 <aZemjhBNFyOfKeNL@google.com>
 <aZkCyQ1oizPXplyU@google.com>
 <20260223231500.zeffezslctqamhp7@skbuf>
 <aZzmU_oA6mVMsdQT@google.com>
 <20260224154730.qqnomchkdpxnyf4x@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224154730.qqnomchkdpxnyf4x@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_142812_327002_33E226B2 
X-CRM114-Status: GOOD (  71.36  )
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

On Tue, Feb 24, 2026 at 05:47:30PM +0200, Vladimir Oltean wrote:
> On Mon, Feb 23, 2026 at 04:37:39PM -0800, Dmitry Torokhov wrote:
> > > You have hit on a weak spot of the Generic PHY framework and I would
> > > like to encourage you to follow through with patches for this finding
> > > (although it won't be exactly trivial, I think it's doable with some
> > > determination).
> > 
> > Thank you for the detailed response. I am not sure how much time I can
> > spend on phy rework as this change was an essentially a drive-by. I only
> > happen to look there because I want to remove
> > class_find_device_by_of_node() in favor of class_find_device_by_fwnode().
> 
> OK, I believe you can still do that without any dependency.

Right, this is independent, I just happened to look at that function.

> 
> > > On your direct question:
> > > It will impact downstream in subtle and unpleasant ways if you change
> > > the of_xlate() semantics w.r.t. reference counting, but the code will
> > > still compile just as before, i.e. when looking just at your downstream
> > > driver (what 99% of developers do) there will be no obvious way of
> > > knowing that something in the API has changed. I would avoid doing that.
> > 
> > Hmm, I was not aware that we needed to take particular measures for
> > benefit of downstream trees... 
> 
> I think you're entirely missing the point.
> 
> Obviously it benefits the maintainer/reviewer first and foremost. If you
> don't make the API change unmissable, drivers expecting the old convention
> will eventually creep their way into the mainline kernel. Why put avoidable
> pressure on reviewers watching out for things like this for years to come,
> when you can force downstream to notice and adapt (OR not make the
> change in the first place). Note that downstream means "API consumers
> invisible to you, the API changer", not only "hopelessly un-upstreamable
> drivers".

Well, this is whole "stable kernel API" argument. Rules of lifetime
around objects may change and the kernel needs to adapt. Anyway, this is
your subsystem so you get to decide.

> 
> > > The patch above leaves a few loose ends.
> > > 
> > > The most obvious is of_phy_simple_xlate(), which has that put_device()
> > > to balance out class_find_device_by_of_node() - which bumps the device
> > > refcount to 2. It "looks" wrong but it is consistent with vendor
> > > implementations of of_xlate(), which also provide a phy->dev refcount of 1.
> > > And as explained, the refcount never _actually_ drops to 0 with the
> > > above patch.
> > > 
> > > I would actually address _only_ of_phy_simple_xlate(), for cosmetics sake.
> > > Instead of devm_of_phy_provider_register(..., of_phy_simple_xlate), I
> > > would offer a new helper, devm_of_phy_simple_provider_register(), which
> > > would internally use a callback that doesn't drop the refcount (say
> > > __of_phy_simple_xlate() for lack of imagination). I would convert vendor
> > > PHY drivers one by one to use this (it would be valid at any time to use
> > > either the old or the new method).
> > > 
> > > You'd notice that most of the of_phy_simple_xlate() occurrences go away,
> > > except for freescale/phy-fsl-lynx-28g.c which calls this function
> > > directly from its own lynx_28g_xlate(). It will still have to keep
> > > calling it, and for refcount equalization purposes that weird
> > > put_device() will have to continue to exist. Just leave a comment as to
> > > why that is.
> > 
> > I this case I would simply add a comment telling why the reference
> > should (and can) be dropped where it is being dropped in 
> > of_phy_simple_xlate() and call it a day. There is not much benefit in
> > adding another helper.
> 
> OK.
> 
> > > But there are more important loose ends still.
> > > 
> > > I mentioned that "zombie" device. We've solved the memory safety issue,
> > > but it's possible for consumers to hold onto a phy whose provider has
> > > disappeared. The refcount of &phy->dev hasn't dropped to 0, so
> > > technically it's a valid object, but from PHY API perspective, it's
> > > still possible to call phy_init(), phy_power_on() and friends on this
> > > PHY, and the Generic PHY core will be happy to further call into the
> > > phy->ops->init(), phy->ops->power_on() etc. But the driver has unbound,
> > > so it should really be left alone.
> > > 
> > > If we fix the UAF but leave the zombie PHY problem, we've effectively
> > > done nothing but silence static analysis checkers, while the code path
> > > where the PHY provider unbinds effectively remains treated as poorly as
> > > before, just moving the crashes to a different place.
> > > 
> > > I suspect what needs to be done here is to introduce a "bool dead" or
> > > similar, which is to be set from phy_destroy() and checked from every
> > > API call. The idea is that API functions on zombie PHYs should fail
> > > without calling into their driver. I **suppose** that
> > > try_module_get(phy->ops->owner) "tried" to avoid this situation, but
> > > it just protects against module removal, not against "echo device >
> > > /sys/bus/.../unbind". So it's absolutely incomplete and easily bypassable.
> > 
> > I think this is a problem common to many kernel subsystems, where there
> > are devices that are vital for other devices to function, but are not
> > parents of said devices. Think about regulators or clocks and such.
> > In many such cases even validating at API level is not sufficient,
> > because if you enable a clock you typically keep it running at least for
> > a while, if not for entire duration of device being bound to a driver.
> > If that clock goes away the device will break even though you are not
> > calling any clock APIs at that particular time.
> > 
> > We need some kind of revocation mechanism to signal consumers that
> > providers they rely upon are going away.
> 
> Yeah, this gave me pause.
> 
> When you unbind a Generic PHY you can kind of expect that the data path
> it affects to not work. But you'd sort of expect it to start working
> again when you rebind the PHY driver.
> 
> That will not be the case, though.
> 
> The problem, simply put, is that the struct phy that the consumer has
> will be different from the second struct phy that the provider registers
> when it rebinds. Using the stale struct phy, we cannot reach the phy_ops
> of the new provider.
> 
> If we implement something similar to what Bartosz Golaszewski suggested
> here:
> https://lpc.events/event/17/contributions/1627/

There is also "revocable" from Tzung-Bi Shih.

> 
> aka decouple the struct phy given to the consumer from the struct phy
> provided by the provider, and perform a PHY lookup during each
> phy_init() / phy_power_up() / etc etc operation;
> 
> we are kinda able to:
> - match the consumer phy to the provider phy and forward the call to
>   phy_ops, if the provider is present (or rebound)
> - return -ENODEV instead of calling into phy_ops, if the provider is not
>   present
> 
> But there's still one big gap.
> 
> PHY consumers are driving the PHY through a state machine when they do
> phy_init -> phy_power_up() -> phy_set_mode() -> [ phy_configure()...].
> When the provider unbinds and then rebinds, that state is lost. But the
> consumer has no idea. It knows it is in a state where it called
> phy_power_up(), and next thing it knows, the power_count is 1 and it
> must call phy_power_down().
> 
> The Generic PHY core cannot actually replay the entire state in a
> meaningful way so as to make the provider reprobing completely
> transparent (think of phy_calibrate() calls).
> 
> So I guess we're looking at what Bartosz refers to as a notification
> side-channel that the PHY provider is going away.
> 
> At least, for drivers that care in a meaningful way. For drivers that
> don't care about such complexity, there seems to be a simpler answer:
> device_link_add(DL_FLAG_AUTOREMOVE_CONSUMER).

Does DL_FLAG_AUTOREMOVE_CONSUMER result in forceful unbinding of the
consumer when provider goes away? And if it happens does it happen in
the right order?

> 
> I can also answer why device links with "autoremove consumer" are not a
> universal answer. This is because the consumer itself may be a
> multi-port network switch (single device). If you unbind the Generic PHY
> driver (retimer, SerDes PHY) from port 3, you don't want ports 0, 1 and
> 2 to also disappear from the kernel. You need the more complex PHY
> provider disappearance notification which does something more localized
> (calls phylink_stop(), I don't know).

Aren't the ports represented as individual devices with their own state
and lifetime?

> 
> 
> I can say right off the bat that this is too complicated for me to even
> think about in more detail than that, at the moment. I would be quite
> happy if it's possible to unbind the PHY driver without the possibility
> to rebind it, as a first step.

Yes, this is something that is not phy specific and I think should be
solved at driver core (or at least driver core should provide subsystems
tools to solve this).

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

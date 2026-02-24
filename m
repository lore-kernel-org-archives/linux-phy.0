Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 507ABF3C99E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 15:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMLH6UO2E4rvEgwTI3kTba2I7qBuuebN0037bK87k0I=; b=cMNmZX5XO3Bqc1
	rZmnhFq/9+qIXttsIAt7fUWPjJ0+a7vlfmjq+SqCVeJB8whMkMS4k/AUijiWSYzEts722ZMnGC91c
	HIPWh3Jvqbx/PfM9KdAyyLzumt9cswzopVtiI5DZC0hMJZT7MSXtgB/0qsPBSvB2pB9cZjvdps60N
	svboQO+7gUd271HpIMKesiBKdYs8LCMPzYm2eVEu82fc8sXXK7x1XrAujwFQuati89C0bX/kCPv3I
	/V3MLVWn5D+DqAX8Me6VSdgAcbKh2TCP1SEY+6Yn51u55w8uZ/L3q0ll3pkgLgHKUuxFOgqy9SRi6
	rvA8W5DyIeMlsIg0xRag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuudP-00000002L3I-3bl1;
	Tue, 24 Feb 2026 15:47:39 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuudN-00000002L2w-0MxB
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 15:47:38 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-4359f35effaso332365f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 07:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771948055; x=1772552855; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mGYqgkA+EbQMCjcEwBJ8nqQUV1AtMYD5uEyyDP947f4=;
        b=PGvf4Ai60YYIA6HhHJayEgpF6B8AwWcxLNBbAmyV7+2l9N+VUveUMSKuMwvOqpf7oM
         8tVrumPYsq2pB3FrFWekyyLloH1LoeZuY38bzfDDzZgPtGHa1i8c9L/ErOk1irHKnaM9
         ezpP6WFjYyLNvXxx+HLtp+Kwucy1HKZ+3fMeOZaWBhhc82zWuJJrUO5rjf5JuitOvrLQ
         +mgjO4pUslqynK0RKAL5okQuleaYg5ctknXo75774vHZo1STzmW8rCOiw1QzGg2aeQRg
         1cdgIclBpqhcQxmM3nDcqouQjz8HyiBR5j84s0KdVC2PAPtyYg345momMoOU9HLYUatJ
         mVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771948055; x=1772552855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGYqgkA+EbQMCjcEwBJ8nqQUV1AtMYD5uEyyDP947f4=;
        b=HTuwm4ctVUpeiMGB6/gHxprw7nwjHxjaK1ge8a9Yfek4Mnfdh7XkW6Fmmw6SSkYJBK
         Ai7w8QCDPV+VmTBEYuqvGKXtmUXb+dq+eV7WCemkx4+gVBfAhXjIc34DZnYYJklLjESN
         M2wY9eL/CHTD8vVNVOXKGy2SzzHcSE0ZiVDNM1pmsgkBTO9gjtVxHQa0PUA20ppEjW43
         WjP7S+vuA2Jo50rGdxt7e4Ft/Nuy8Itfct6FYoZy+9qbwkwDzLKvWmG3lP0Rn7A2iOPJ
         w6Sjb1m6ziP96/RJp2EA3geYoPlFPBMnNYPAgU99vcPKMkrXzvvLyEeYPy7GddPt9h1k
         7Qbw==
X-Forwarded-Encrypted: i=1; AJvYcCXQfk4FFsOXAZ9GkwweWGfcB29At3H7+MDtVzA/lXDxjPeOhJmxW5wkTWOcLSPTyV9jD3cnpfvdEXc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwUxKNuMmo07aCqBf5YQ/7JJMuKY6BoOe2YEGTr8OsJUr1dI2x+
	pzmfNSb0E58f9XeZMYGVKt3EcyS9C/2XbQlIE39fZd2PYQRPWEXGn7TurlnoTA==
X-Gm-Gg: AZuq6aLDJ16++8VCZfD658kysIcKzLnr/LaYsUlQaUu/OaWzN4akK3EHSl8sRfLmKIm
	n0BRIdDtE6nXUG7b3Oodxik0VrjmQ9CxnzwtuAMXvMZnIzqBbX4OHpYbQE6hoKRLczzg5pVYfM0
	YUYSkaUve0MggyA4KsnhAmLFEkaG7KgY0mLqlhNkFcBrplLKMBpzGUpZeo4Mos1JjbfvZ7ShOAq
	u8DaltT7WY4c0BsCyjnm7GId7G8zX6OZ3bwQM+i9Ssa9ipN0oydlthxI4JKsjMWq1ecOTj/TCY8
	tbFF1uLHxohQ9EiiLaGf0RetrYJP/C+A9lYqYgsvm8IQOZV+/Nv+WZp1Nbj7eqG/PZjNsnST5SK
	qqxh0Uq2VRabsHyAXmzATK25+j0EJxR0c504LUM8uHqqWdynkBTuDqApSv4s7N+tCjlu0MSAw4r
	e5lDH+wXoFLTfaUJE=
X-Received: by 2002:a05:600c:1d0e:b0:483:887:6e32 with SMTP id 5b1f17b1804b1-483a9607cecmr112883725e9.8.1771948054540;
        Tue, 24 Feb 2026 07:47:34 -0800 (PST)
Received: from skbuf ([2a02:2f04:d809:4b00:7cd9:3431:5b61:7303])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd6854c7sm21383215e9.0.2026.02.24.07.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 07:47:33 -0800 (PST)
Date: Tue, 24 Feb 2026 17:47:30 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Johan Hovold <johan+linaro@kernel.org>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	"Dr. David Alan Gilbert" <linux@treblig.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: core: fix potential UAF in of_phy_simple_xlate()
Message-ID: <20260224154730.qqnomchkdpxnyf4x@skbuf>
References: <aZejMSJ9qqRWb2pX@google.com>
 <aZemjhBNFyOfKeNL@google.com>
 <aZkCyQ1oizPXplyU@google.com>
 <20260223231500.zeffezslctqamhp7@skbuf>
 <aZzmU_oA6mVMsdQT@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZzmU_oA6mVMsdQT@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_074737_212918_F34E09EC 
X-CRM114-Status: GOOD (  71.99  )
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

On Mon, Feb 23, 2026 at 04:37:39PM -0800, Dmitry Torokhov wrote:
> > You have hit on a weak spot of the Generic PHY framework and I would
> > like to encourage you to follow through with patches for this finding
> > (although it won't be exactly trivial, I think it's doable with some
> > determination).
> 
> Thank you for the detailed response. I am not sure how much time I can
> spend on phy rework as this change was an essentially a drive-by. I only
> happen to look there because I want to remove
> class_find_device_by_of_node() in favor of class_find_device_by_fwnode().

OK, I believe you can still do that without any dependency.

> > On your direct question:
> > It will impact downstream in subtle and unpleasant ways if you change
> > the of_xlate() semantics w.r.t. reference counting, but the code will
> > still compile just as before, i.e. when looking just at your downstream
> > driver (what 99% of developers do) there will be no obvious way of
> > knowing that something in the API has changed. I would avoid doing that.
> 
> Hmm, I was not aware that we needed to take particular measures for
> benefit of downstream trees... 

I think you're entirely missing the point.

Obviously it benefits the maintainer/reviewer first and foremost. If you
don't make the API change unmissable, drivers expecting the old convention
will eventually creep their way into the mainline kernel. Why put avoidable
pressure on reviewers watching out for things like this for years to come,
when you can force downstream to notice and adapt (OR not make the
change in the first place). Note that downstream means "API consumers
invisible to you, the API changer", not only "hopelessly un-upstreamable
drivers".

> > The patch above leaves a few loose ends.
> > 
> > The most obvious is of_phy_simple_xlate(), which has that put_device()
> > to balance out class_find_device_by_of_node() - which bumps the device
> > refcount to 2. It "looks" wrong but it is consistent with vendor
> > implementations of of_xlate(), which also provide a phy->dev refcount of 1.
> > And as explained, the refcount never _actually_ drops to 0 with the
> > above patch.
> > 
> > I would actually address _only_ of_phy_simple_xlate(), for cosmetics sake.
> > Instead of devm_of_phy_provider_register(..., of_phy_simple_xlate), I
> > would offer a new helper, devm_of_phy_simple_provider_register(), which
> > would internally use a callback that doesn't drop the refcount (say
> > __of_phy_simple_xlate() for lack of imagination). I would convert vendor
> > PHY drivers one by one to use this (it would be valid at any time to use
> > either the old or the new method).
> > 
> > You'd notice that most of the of_phy_simple_xlate() occurrences go away,
> > except for freescale/phy-fsl-lynx-28g.c which calls this function
> > directly from its own lynx_28g_xlate(). It will still have to keep
> > calling it, and for refcount equalization purposes that weird
> > put_device() will have to continue to exist. Just leave a comment as to
> > why that is.
> 
> I this case I would simply add a comment telling why the reference
> should (and can) be dropped where it is being dropped in 
> of_phy_simple_xlate() and call it a day. There is not much benefit in
> adding another helper.

OK.

> > But there are more important loose ends still.
> > 
> > I mentioned that "zombie" device. We've solved the memory safety issue,
> > but it's possible for consumers to hold onto a phy whose provider has
> > disappeared. The refcount of &phy->dev hasn't dropped to 0, so
> > technically it's a valid object, but from PHY API perspective, it's
> > still possible to call phy_init(), phy_power_on() and friends on this
> > PHY, and the Generic PHY core will be happy to further call into the
> > phy->ops->init(), phy->ops->power_on() etc. But the driver has unbound,
> > so it should really be left alone.
> > 
> > If we fix the UAF but leave the zombie PHY problem, we've effectively
> > done nothing but silence static analysis checkers, while the code path
> > where the PHY provider unbinds effectively remains treated as poorly as
> > before, just moving the crashes to a different place.
> > 
> > I suspect what needs to be done here is to introduce a "bool dead" or
> > similar, which is to be set from phy_destroy() and checked from every
> > API call. The idea is that API functions on zombie PHYs should fail
> > without calling into their driver. I **suppose** that
> > try_module_get(phy->ops->owner) "tried" to avoid this situation, but
> > it just protects against module removal, not against "echo device >
> > /sys/bus/.../unbind". So it's absolutely incomplete and easily bypassable.
> 
> I think this is a problem common to many kernel subsystems, where there
> are devices that are vital for other devices to function, but are not
> parents of said devices. Think about regulators or clocks and such.
> In many such cases even validating at API level is not sufficient,
> because if you enable a clock you typically keep it running at least for
> a while, if not for entire duration of device being bound to a driver.
> If that clock goes away the device will break even though you are not
> calling any clock APIs at that particular time.
> 
> We need some kind of revocation mechanism to signal consumers that
> providers they rely upon are going away.

Yeah, this gave me pause.

When you unbind a Generic PHY you can kind of expect that the data path
it affects to not work. But you'd sort of expect it to start working
again when you rebind the PHY driver.

That will not be the case, though.

The problem, simply put, is that the struct phy that the consumer has
will be different from the second struct phy that the provider registers
when it rebinds. Using the stale struct phy, we cannot reach the phy_ops
of the new provider.

If we implement something similar to what Bartosz Golaszewski suggested
here:
https://lpc.events/event/17/contributions/1627/

aka decouple the struct phy given to the consumer from the struct phy
provided by the provider, and perform a PHY lookup during each
phy_init() / phy_power_up() / etc etc operation;

we are kinda able to:
- match the consumer phy to the provider phy and forward the call to
  phy_ops, if the provider is present (or rebound)
- return -ENODEV instead of calling into phy_ops, if the provider is not
  present

But there's still one big gap.

PHY consumers are driving the PHY through a state machine when they do
phy_init -> phy_power_up() -> phy_set_mode() -> [ phy_configure()...].
When the provider unbinds and then rebinds, that state is lost. But the
consumer has no idea. It knows it is in a state where it called
phy_power_up(), and next thing it knows, the power_count is 1 and it
must call phy_power_down().

The Generic PHY core cannot actually replay the entire state in a
meaningful way so as to make the provider reprobing completely
transparent (think of phy_calibrate() calls).

So I guess we're looking at what Bartosz refers to as a notification
side-channel that the PHY provider is going away.

At least, for drivers that care in a meaningful way. For drivers that
don't care about such complexity, there seems to be a simpler answer:
device_link_add(DL_FLAG_AUTOREMOVE_CONSUMER).

I can also answer why device links with "autoremove consumer" are not a
universal answer. This is because the consumer itself may be a
multi-port network switch (single device). If you unbind the Generic PHY
driver (retimer, SerDes PHY) from port 3, you don't want ports 0, 1 and
2 to also disappear from the kernel. You need the more complex PHY
provider disappearance notification which does something more localized
(calls phylink_stop(), I don't know).


I can say right off the bat that this is too complicated for me to even
think about in more detail than that, at the moment. I would be quite
happy if it's possible to unbind the PHY driver without the possibility
to rebind it, as a first step.

> > Finally, I have identified one more loose end still.
> > 
> > /**
> >  * of_phy_put() - release the PHY
> >  * @phy: the phy returned by of_phy_get()
> >  *
> >  * Releases a refcount the caller received from of_phy_get().
> >  */
> > void of_phy_put(struct phy *phy)
> > {
> > 	if (!phy || IS_ERR(phy))
> > 		return;
> > 
> > 	mutex_lock(&phy->mutex);
> > 	if (phy->ops->release)
> > 		phy->ops->release(phy);
> > 	mutex_unlock(&phy->mutex);
> > 
> > 	module_put(phy->ops->owner);
> > 	put_device(&phy->dev);
> > }
> > EXPORT_SYMBOL_GPL(of_phy_put);
> > 
> > This function is called by PHY consumers. A PHY provider can have
> > multiple consumers (example in the case of Ethernet: a QSGMII SerDes
> > lane has 4 MAC ports multiplexed onto it).
> > 
> > If a single consumer calls of_phy_put() to release its reference to the
> > SerDes lane, the phy->ops->release() method makes absolutely no sense.
> > There are 3 remaining consumers with handles to the lane! But we aren't
> > even telling the PHY which consumer has disappeared! It has nothing
> > useful to do with this information.
> > 
> > Looking at actual phy_ops implementations, what they want to know is
> > when _all_ consumers went away, not when individual consumers did.
> > So the phy->ops->release() call needs to be put somewhere which is
> > executed when all consumers disappear. If I were to guess, that would be
> > the phy_release() class callback, but this is completely untested.
> 
> Shouldn't phy->ops->release() keep track of users and decide when to
> destroy the resources? The rest seem fine as they simply drop references
> (I assume each user of shared phy will bump up references as needed?)

AFAICS, the only instance is phy/ti/phy-am654-serdes.c: serdes_am654_release().

This undoes the effect of serdes_am654_xlate(), i.e. calls mux_control_deselect(phy->control).

The fact that phy_provider->of_xlate() has side effects on this
platform, rather than just return a struct phy * for a given struct
device_node * (as it's supposed to do), is "interesting".

I don't have extra info why the PHY maintainer didn't add extra phy_ops
for consumer_bind() and consumer_unbind() or something like that, to
make it clear that these calls are supposed to be _per consumer_.
Notice how the first of_xlate() call sets am654_phy->busy = true, and
second of_xlate() call is designed to fail due to am654_phy->busy.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

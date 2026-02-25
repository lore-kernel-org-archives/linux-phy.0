Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8215FD45F9
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 23:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8EPP+o0AZSSea40jWJ23Fz830pEvu6nKNC4HkpmVpQ=; b=S253/Vawu30+h8
	CqdT9GCnGthwpJOvkNyru6VQeEKcTdTmDIdzEO3aRIG1Pgek53osRcVvM3j6YNp+l1U2hr0FqWE7D
	erc6OIXy1wYbP4T5V8iuj2ZOyCTqw27VHm7w+l4+sGM8rtvGK3L81gYU+et1His2HfGUWd6L5nUSP
	QhVJZ32MMIqtNjFehj5Hab7lNqnmXSonCqvMh/sCgj/BS/4rERCuRjWJguRiXF28sglfIxIRGThfB
	qc4bYZp/YhoaqeS+zUGTYtjbFNSQ5N13KUodka1QMuEPvF6ek9hpv7n6N/bimYaMMGYUCElAB2cBR
	oQgTncu78PgJ6QRiWoqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvOeZ-000000055nI-1x7j;
	Wed, 25 Feb 2026 23:50:51 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvOeW-000000055mw-3nM3
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 23:50:50 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-4376bd50b01so6764f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 15:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772063447; x=1772668247; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JQVWTH3HPm2HzGiE+EBHhvF4y29uhoc9WxfC2q8gjvI=;
        b=RKRHb0mT+fOsMhYZ8gGM4KBoF4gGgK9xPpdyZLzpUuNBvLPOaRi6f/j04BSdokGzp/
         4JVvBeK/2VtbwuQIUpYtHFlZnAOcFEUdj2pvR5eoB7Q6kFxSFQzvAWDONEMyi1luwPMr
         SBIJR/h8/6CBH/EOvTzRdp3P0zXSXVkU/+fJLklB92RvY7Y1/KqUhGUh+akFr1MCn++C
         WgUaXarG+qqEC2iFFdKgpApESsudcWRg4hMjnHiSjkoAfVoU3TNKnUr4z9qMQBk2rMYI
         CKKYmfVAersfcAi02OGM62qtyzQAcKHk9CsYzfHhNDixFcaZA6PsZ/merjGBgAmeuGTl
         YyjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772063447; x=1772668247;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JQVWTH3HPm2HzGiE+EBHhvF4y29uhoc9WxfC2q8gjvI=;
        b=nEHX2HG+BoHLFvs9YXu8nwFKEhT9rTmE9SBF9HDIOSbM/OpDP1+5thxf9FByWbn2uT
         jqYCHl88Z21AYVWsNx68yNXFo3ofK1yxpp4uXDSUwKgv4rCFuvN1+c2uHLvxUWxvcnQK
         efkPEiAlIoSYbMqdO2MKqMUhBskfsMEQtPYoMkstvYmhgkZT1sZpZWnnVXGGyvuNo8of
         DT3KDwGAKPJizcRrrnVHvSEhCOk6Bwk42OsEU294FX8HeIYKuR5hdVQxwXB4d6xzBWXA
         L5/xsNdzyY6c6Z/E/QkjrrCyUupxOidvLPKp7FmBWTXGl/Wb6ID+9FjzlqEQwsNriTDx
         jsYw==
X-Forwarded-Encrypted: i=1; AJvYcCVXRBpzAn7b7XBO5+kgZBryFlDOoyj8QOP710a8wsqcQ5Sl66rXotsyrzkqInN9Jqy0l7YFbQ+3tWs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwRqA7IyiPHHj9IHAITCFSLCaRL/RsfxV3Z/4eugb89k9MWZsnQ
	JzA4cIaY5oJ6w8TapCVEJuw2iQwemfE83MKq6ya8d3FklFk7YGUQjYul
X-Gm-Gg: ATEYQzwE4f/OA2Uzs80taYv1RjJ9B+Um6mXmrSbv5kBjEj0VxQXvzoCNjK+VkM4MTla
	7zG602jMUAOX5UlbV0tfcjlWxXem169oK1K7wUQQYmkU4qLMbNcVFWeRV7KNsvsXHbxnKJ7O/0B
	K8wL7lqona7Tcdr1rSqPEMHqrMEPOq4IMN52pH1XO02rw2YkbSFjf95UoxiZ6rywY2PDCOpJEHp
	b5XXH7zVFSEe0RZuw8Q0qMHDsYm5lXfjncVmSsah0rn0ZA06mUfZA1pZ+an/dHLqfojr3mN3NWS
	ZLn7zBaRXJ1Qmug2eY6qado4Sqho7VEfxw7GbBOF9xAkVRm7F8ZbFA/f43XlvzQrq5oIXl2y0Ou
	M5kedyrFt77EBQhG0mTSeojRa8IF8ZeRDbGKzCDYpu69Q1TuFf7I9j2s15UarUhgki+K2sr2pCL
	N8xXIx354uV2NwIA==
X-Received: by 2002:a5d:5f87:0:b0:439:8e3b:d06f with SMTP id ffacd0b85a97d-4398e3bd4e5mr5123698f8f.6.1772063446395;
        Wed, 25 Feb 2026 15:50:46 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:6e08:ea2c:b2bc:dea])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c60bsm36400340f8f.27.2026.02.25.15.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 15:50:45 -0800 (PST)
Date: Thu, 26 Feb 2026 01:50:42 +0200
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
Message-ID: <20260225235042.al27evzgslvk33y5@skbuf>
References: <aZejMSJ9qqRWb2pX@google.com>
 <aZemjhBNFyOfKeNL@google.com>
 <aZkCyQ1oizPXplyU@google.com>
 <20260223231500.zeffezslctqamhp7@skbuf>
 <aZzmU_oA6mVMsdQT@google.com>
 <20260224154730.qqnomchkdpxnyf4x@skbuf>
 <aZ4Iel5AsL3hSgrE@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZ4Iel5AsL3hSgrE@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_155049_023955_630320DB 
X-CRM114-Status: GOOD (  65.09  )
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

On Tue, Feb 24, 2026 at 12:38:48PM -0800, Dmitry Torokhov wrote:
> > Obviously it benefits the maintainer/reviewer first and foremost. If you
> > don't make the API change unmissable, drivers expecting the old convention
> > will eventually creep their way into the mainline kernel. Why put avoidable
> > pressure on reviewers watching out for things like this for years to come,
> > when you can force downstream to notice and adapt (OR not make the
> > change in the first place). Note that downstream means "API consumers
> > invisible to you, the API changer", not only "hopelessly un-upstreamable
> > drivers".
> 
> Well, this is whole "stable kernel API" argument. Rules of lifetime
> around objects may change and the kernel needs to adapt.

Actually it's not the "stable kernel API" argument.

I just said that if the of_xlate() callbacks currently need to do:

	return phy;

and you propose a new scheme where they have to do:

	get_device(&phy->dev);
	return phy;

, then you are creating the possibility for:

- the API change to be missed by anyone who hasn't been _actively_
  monitoring you, because the old code will still compile just as well,
  and won't show any superficial runtime problem either
- the reviewers and maintainers to not notice that patches were
  developed according to the old convention

and such patches may even get accepted, but be buggy.

I actually don't care whether the kernel API is stable or not. But
if you change it, make it obvious it has changed.

> Anyway, this is your subsystem so you get to decide.

Not my subsystem. Sorry if I gave you the wrong impression.

> > > > But there are more important loose ends still.
> > > > 
> > > > I mentioned that "zombie" device. We've solved the memory safety issue,
> > > > but it's possible for consumers to hold onto a phy whose provider has
> > > > disappeared. The refcount of &phy->dev hasn't dropped to 0, so
> > > > technically it's a valid object, but from PHY API perspective, it's
> > > > still possible to call phy_init(), phy_power_on() and friends on this
> > > > PHY, and the Generic PHY core will be happy to further call into the
> > > > phy->ops->init(), phy->ops->power_on() etc. But the driver has unbound,
> > > > so it should really be left alone.
> > > > 
> > > > If we fix the UAF but leave the zombie PHY problem, we've effectively
> > > > done nothing but silence static analysis checkers, while the code path
> > > > where the PHY provider unbinds effectively remains treated as poorly as
> > > > before, just moving the crashes to a different place.
> > > > 
> > > > I suspect what needs to be done here is to introduce a "bool dead" or
> > > > similar, which is to be set from phy_destroy() and checked from every
> > > > API call. The idea is that API functions on zombie PHYs should fail
> > > > without calling into their driver. I **suppose** that
> > > > try_module_get(phy->ops->owner) "tried" to avoid this situation, but
> > > > it just protects against module removal, not against "echo device >
> > > > /sys/bus/.../unbind". So it's absolutely incomplete and easily bypassable.
> > > 
> > > I think this is a problem common to many kernel subsystems, where there
> > > are devices that are vital for other devices to function, but are not
> > > parents of said devices. Think about regulators or clocks and such.
> > > In many such cases even validating at API level is not sufficient,
> > > because if you enable a clock you typically keep it running at least for
> > > a while, if not for entire duration of device being bound to a driver.
> > > If that clock goes away the device will break even though you are not
> > > calling any clock APIs at that particular time.
> > > 
> > > We need some kind of revocation mechanism to signal consumers that
> > > providers they rely upon are going away.
> > 
> > Yeah, this gave me pause.
> > 
> > When you unbind a Generic PHY you can kind of expect that the data path
> > it affects to not work. But you'd sort of expect it to start working
> > again when you rebind the PHY driver.
> > 
> > That will not be the case, though.
> > 
> > The problem, simply put, is that the struct phy that the consumer has
> > will be different from the second struct phy that the provider registers
> > when it rebinds. Using the stale struct phy, we cannot reach the phy_ops
> > of the new provider.
> > 
> > If we implement something similar to what Bartosz Golaszewski suggested
> > here:
> > https://lpc.events/event/17/contributions/1627/
> 
> There is also "revocable" from Tzung-Bi Shih.

OK. Thanks for the heads up.

> > aka decouple the struct phy given to the consumer from the struct phy
> > provided by the provider, and perform a PHY lookup during each
> > phy_init() / phy_power_up() / etc etc operation;
> > 
> > we are kinda able to:
> > - match the consumer phy to the provider phy and forward the call to
> >   phy_ops, if the provider is present (or rebound)
> > - return -ENODEV instead of calling into phy_ops, if the provider is not
> >   present
> > 
> > But there's still one big gap.
> > 
> > PHY consumers are driving the PHY through a state machine when they do
> > phy_init -> phy_power_up() -> phy_set_mode() -> [ phy_configure()...].
> > When the provider unbinds and then rebinds, that state is lost. But the
> > consumer has no idea. It knows it is in a state where it called
> > phy_power_up(), and next thing it knows, the power_count is 1 and it
> > must call phy_power_down().
> > 
> > The Generic PHY core cannot actually replay the entire state in a
> > meaningful way so as to make the provider reprobing completely
> > transparent (think of phy_calibrate() calls).
> > 
> > So I guess we're looking at what Bartosz refers to as a notification
> > side-channel that the PHY provider is going away.
> > 
> > At least, for drivers that care in a meaningful way. For drivers that
> > don't care about such complexity, there seems to be a simpler answer:
> > device_link_add(DL_FLAG_AUTOREMOVE_CONSUMER).
> 
> Does DL_FLAG_AUTOREMOVE_CONSUMER result in forceful unbinding of the
> consumer when provider goes away? And if it happens does it happen in
> the right order?

If "the right order" means "consumer before provider", yes.

> > I can also answer why device links with "autoremove consumer" are not a
> > universal answer. This is because the consumer itself may be a
> > multi-port network switch (single device). If you unbind the Generic PHY
> > driver (retimer, SerDes PHY) from port 3, you don't want ports 0, 1 and
> > 2 to also disappear from the kernel. You need the more complex PHY
> > provider disappearance notification which does something more localized
> > (calls phylink_stop(), I don't know).
> 
> Aren't the ports represented as individual devices with their own state
> and lifetime?

Nope. A single platform_device/pci_device/spi_device/i2c_client/mdio_device/etc
represents an entire switch, and its driver will call register_netdevice()
multiple times, once per port. This is the switchdev model as per
Documentation/networking/switchdev.rst. Technically each netdev has its
own "class" device (for /sys/class/net/) but it's not a "bus" device,
doesn't have a bound driver, and their parent is the aforementioned
platform_device/etc.

> > I can say right off the bat that this is too complicated for me to even
> > think about in more detail than that, at the moment. I would be quite
> > happy if it's possible to unbind the PHY driver without the possibility
> > to rebind it, as a first step.
> 
> Yes, this is something that is not phy specific and I think should be
> solved at driver core (or at least driver core should provide subsystems
> tools to solve this).

Some subsystems I'm slightly more familiar with do have mechanisms to
handle this.

Networking has (a pretty complicated) netdev_wait_allrefs_any(), which
waits for all references to a net_device to be dropped before fully
unregistering it (these are net_device :: dev_refcnt, different from
struct device references). Drivers are supposed to monitor the netdev
notifier call chain for the NETDEV_UNREGISTER event, and let go of the
reference.

Sadly I don't know enough about the Generic PHY subsystem to be making
generalizations with any claim of correctness, but I suspect the
majority of consumers are in a 1:1 relationship with the PHY provider,
and would be happy with the cost/benefit ratio given by the
device_link(DL_FLAG_AUTOREMOVE_CONSUMER) behaviour. Only a select few
would care to continue their lifetime in a PHY-less environment
(normal operation on other ports / degraded on the PHY-less port,
reestablish connection to provider when it comes back, etc).

I'm not sure that there exists a space for "revocable" in Generic PHY
between the above two options. Only if the device link idea doesn't work
out, for some reason I'm not seeing. I'll have to put this thought in
the background and let it simmer for a while.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

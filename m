Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54334EEC2B3
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 00:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXgx+t7nMM9a/G266ub2nahXOhMO4mn4nSsTGhG2foY=; b=pFn0QUCut490tW
	urnB5JdXT9YogfvIpGtDiyWIpYaD6pllluUvt2FRx9jQVWLCvVpRuTsfERYTkZT+ckDI4I7xxYhQq
	wa2eVxnRNSC3vfoSSfubVSp1+0+EOn1fSvvGyuzcLSVeKcaGl93eOHEDhdAnR+jzJ/Vv1FrUmQAZj
	iiiSlHyR1ukMHdrpBexEdFBYI/oAF+h+556XQg7M0iJtAyXbOFVnK96L7NpDVmUpsu0ncGBmnmOA4
	mFt6Lli7Sz3zeGKruJdkw7H49M7xTgkEvaLp2DVl9fDqDvNGpyrdpbL/aE+cWLzzRH4WhNuMkUNsl
	gb9flGgFu8yGcxgZOJnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vugQt-00000001FHN-2sWw;
	Tue, 24 Feb 2026 00:37:47 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vugQq-00000001FH0-29eZ
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 00:37:46 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-2b82c605dbdso4965949eec.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 16:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771893463; x=1772498263; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HG1TExzINsV+xuMh5Kuyzh1hEQWYIpn7r5uQFpXRoDg=;
        b=TiyOHf0FnfJOJGie+ob7IsTV/sOa0jn6SiGTCWs31cnN3DNFl2uIJwge+REOQDhb0x
         Q3JImH9MpUu0mU6vNlT+Nx7zwcLYFgB4YkUqCc0TBD1YnoJjGq5oi+k8kbCA6VtNrjC7
         Jdy9NpGCswKbvK+odg9z0rOj1bvVkao870W7GmDIPVEDxiFy+P3BCa7TFT1oMwH9sur9
         5rPGpR0DRT97B3hNzwBmvkESb4AkksakiE1+OVGPOJXj/3K2fmyOEnkdNw9pXKECvlLC
         r0x3RoEhSHL5eEJiEsBkE4czNy6KX7SeieE2wof5hOB6z51bhD4gynxgSdTGu2JQxSX4
         P4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771893463; x=1772498263;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HG1TExzINsV+xuMh5Kuyzh1hEQWYIpn7r5uQFpXRoDg=;
        b=S+RwZtfwJrRhVUHod6gh/Bj0O0+TSFFsTraxxZJYAsuNVyebtoLPu4NnAC6I1BSZGL
         vt5H9hXAsmO0jAjyv+dhrSMZPCWFlLpa4p9f42/TwOJWt/KAUI+ff7DC6t5w8hu2WGxY
         wMDXiUMVLwd86L0e5U+cL4VUMlfqxk7UkRMLyG3gnvhOMOjZTQB5XGPJH5qIEWKpQBPm
         epPICa5p3xBYJMYhf539Ch17l/y7gZ2qRgF1hXja90LCM/QuQvQUoLDCya1AwJeKyFWQ
         VaJ6GvCUMtoD7EeG6DC97WRyELew8U4m64/2P6DFS8J7AJvAJORbZwGMK3YCeFNEDesr
         POUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVf8TvTiO1xO3sFot9eqsVMzpTUadNsQ+0HWOeYi4l8jsYTe1F5ihk6QOtC8L2Gugv6GTJxHyuZtLg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKBGhxsF/ZPjBTnEsYbyi46ZrAYx0galCETBvmNWq8yY5WNLnQ
	Ldb+anSUuZrykbtu7CSwvTtqqHDOe0sUTbPR9isryCCpgEP7K/HYbm/8
X-Gm-Gg: AZuq6aL6OZ8rbHMB0sIFHPI5Spam00VkMDGsvVLxrVa30kmpYN2/0QdKY2L/Can6hP9
	r3cv+WQkpBuecmT2xMYamub/NJu/Zr/O+I0Vtxnhfirpyv+KhUWKzez4bHuc2PwDnNKq4+y88Sb
	sq9f8/g0njVdXzAJGIklXJwuifNOQLHy5sh143wvx2NxTh3cYRRTZpalG0bwzb7+Fl3aBESnvSF
	Nf85aulwsAefqQdgHaw5p+n8FdRAlJ3TS47Bh56jnTwaa55v96gKPePq37+U1OscMBN7czdXKOc
	d1NVuQLvP3odpCSG5PumOkHKS8Bzt+aJLEl35y3IlqDT7cNb+orMAR9UxzG0A2sxlHPjcGwILJG
	IOW61n0rxPRqk7HKQ/Vo5oI+HG57cZUycCYKNv9mpCU8xh3q2agkpD6qu8cpYZFVkvrjkSM0hnr
	AvfEwhBl0CAlvMrz7Lx1xkZ5vclpJAMt5hwD3tQNlK7lJxS5kGIgoYyuhWbo2BHSQ1
X-Received: by 2002:a05:7022:2383:b0:11b:9386:7ecd with SMTP id a92af1059eb24-1276ad67e87mr5146475c88.42.1771893463136;
        Mon, 23 Feb 2026 16:37:43 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:1b48:5d6e:ab6e:5287])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af8ac3fsm9170196c88.13.2026.02.23.16.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 16:37:42 -0800 (PST)
Date: Mon, 23 Feb 2026 16:37:39 -0800
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
Message-ID: <aZzmU_oA6mVMsdQT@google.com>
References: <aZejMSJ9qqRWb2pX@google.com>
 <aZemjhBNFyOfKeNL@google.com>
 <aZkCyQ1oizPXplyU@google.com>
 <20260223231500.zeffezslctqamhp7@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260223231500.zeffezslctqamhp7@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_163744_588648_412735D2 
X-CRM114-Status: GOOD (  71.54  )
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

Hi Vladimir,

On Tue, Feb 24, 2026 at 01:15:00AM +0200, Vladimir Oltean wrote:
> Hi Dmitry,
> 
> On Fri, Feb 20, 2026 at 05:01:50PM -0800, Dmitry Torokhov wrote:
> > On Thu, Feb 19, 2026 at 04:11:37PM -0800, Dmitry Torokhov wrote:
> > > On Thu, Feb 19, 2026 at 03:57:11PM -0800, Dmitry Torokhov wrote:
> > > > The implementation put_device()s located device and then uses
> > > > container_of() on the pointer. The device may disappear by that time,
> > > > resulting in UAF.
> > > > 
> > > > Fix the problem by keeping the reference to the framer device,
> > > > avoiding getting an extra reference to it in framer_get(), and making
> > > > sure to drop the reference in error path when we fail to get the module.
> > > 
> > > Hmm, I was too rash. There are bunch of other xlate functions that need
> > > to be updated to take the reference.
> > 
> > So I am convinced that xlate functions need to bump up the reference to
> > phy devices they return. The question is how to deal with the ones that
> > do not. I can either convert them in the same patch (the changes are
> > quite mechanical) or we can do the whole song and dance, introduce a
> > flag, set it up in converted xlate functions, have the core respect it,
> > and then remove it from xlates and from the core when it is all done.
> > 
> > Please let me know.
> 
> You have hit on a weak spot of the Generic PHY framework and I would
> like to encourage you to follow through with patches for this finding
> (although it won't be exactly trivial, I think it's doable with some
> determination).

Thank you for the detailed response. I am not sure how much time I can
spend on phy rework as this change was an essentially a drive-by. I only
happen to look there because I want to remove
class_find_device_by_of_node() in favor of class_find_device_by_fwnode().

> 
> On your direct question:
> It will impact downstream in subtle and unpleasant ways if you change
> the of_xlate() semantics w.r.t. reference counting, but the code will
> still compile just as before, i.e. when looking just at your downstream
> driver (what 99% of developers do) there will be no obvious way of
> knowing that something in the API has changed. I would avoid doing that.

Hmm, I was not aware that we needed to take particular measures for
benefit of downstream trees... 

> 
> But first the problem. Too little has been said about the problem, and
> too much about the solution. We can't find a good solution if we don't
> call out the problem properly first.
> 
> The phy_get() function follows a "lookup-then-get" approach for PHY
> providers, rather than "atomic-lookup-and-get".
> 
> Namely, the phy_provider->of_xlate() caller, which is _of_phy_get(),
> returns a struct phy * with its underlying device reference count
> nominally at 1. All callers of _of_phy_get() do later call get_device()
> to bump this refcount for each PHY consumer, but it is "too late" in the
> sense that a window has been opened where the PHY provider driver can
> unbind, and the reference count of &phy->dev can drop to 0 and it can be
> freed.

Yes.

> 
> Immediately after being created by phy_create(), the &phy->dev has a
> refcount of 1, and only the action of its provider driver (calling
> phy_destroy() directly or through devres, on driver unbind) can drop
> that refcount to 0. As long as the driver doesn't do that, the &phy->dev
> refcount is not in danger.

Right.

> 
> Then the PHY is exposed to the outside world using of_phy_provider_register(),
> where the fact that the provider driver can concurrently unregister
> starts being a problem.
> 
> Therefore, I would say that the problem is that consumers, aka phy_get()
> callers, can get a phy with a &phy->dev refcount that is not already bumped
> by the time they are handed over that PHY.
> 
> Mechanically, PHY lookup happens under &phy_provider_mutex, and I
> believe it would be sufficient to call get_device() under this lock, in
> order for consumers to get PHYs with their reference bumped.

<skip the explanation and a patch>

Yes, given that there is 1:1 mapping between device and provider (not
phy instance but its parent) it looks like we can drop the reference and
then bump it up again as long as we hold that mutex.

> 
> The patch above leaves a few loose ends.
> 
> The most obvious is of_phy_simple_xlate(), which has that put_device()
> to balance out class_find_device_by_of_node() - which bumps the device
> refcount to 2. It "looks" wrong but it is consistent with vendor
> implementations of of_xlate(), which also provide a phy->dev refcount of 1.
> And as explained, the refcount never _actually_ drops to 0 with the
> above patch.
> 
> I would actually address _only_ of_phy_simple_xlate(), for cosmetics sake.
> Instead of devm_of_phy_provider_register(..., of_phy_simple_xlate), I
> would offer a new helper, devm_of_phy_simple_provider_register(), which
> would internally use a callback that doesn't drop the refcount (say
> __of_phy_simple_xlate() for lack of imagination). I would convert vendor
> PHY drivers one by one to use this (it would be valid at any time to use
> either the old or the new method).
> 
> You'd notice that most of the of_phy_simple_xlate() occurrences go away,
> except for freescale/phy-fsl-lynx-28g.c which calls this function
> directly from its own lynx_28g_xlate(). It will still have to keep
> calling it, and for refcount equalization purposes that weird
> put_device() will have to continue to exist. Just leave a comment as to
> why that is.

I this case I would simply add a comment telling why the reference
should (and can) be dropped where it is being dropped in 
of_phy_simple_xlate() and call it a day. There is not much benefit in
adding another helper.

> 
> 
> But there are more important loose ends still.
> 
> I mentioned that "zombie" device. We've solved the memory safety issue,
> but it's possible for consumers to hold onto a phy whose provider has
> disappeared. The refcount of &phy->dev hasn't dropped to 0, so
> technically it's a valid object, but from PHY API perspective, it's
> still possible to call phy_init(), phy_power_on() and friends on this
> PHY, and the Generic PHY core will be happy to further call into the
> phy->ops->init(), phy->ops->power_on() etc. But the driver has unbound,
> so it should really be left alone.
> 
> If we fix the UAF but leave the zombie PHY problem, we've effectively
> done nothing but silence static analysis checkers, while the code path
> where the PHY provider unbinds effectively remains treated as poorly as
> before, just moving the crashes to a different place.
> 
> I suspect what needs to be done here is to introduce a "bool dead" or
> similar, which is to be set from phy_destroy() and checked from every
> API call. The idea is that API functions on zombie PHYs should fail
> without calling into their driver. I **suppose** that
> try_module_get(phy->ops->owner) "tried" to avoid this situation, but
> it just protects against module removal, not against "echo device >
> /sys/bus/.../unbind". So it's absolutely incomplete and easily bypassable.

I think this is a problem common to many kernel subsystems, where there
are devices that are vital for other devices to function, but are not
parents of said devices. Think about regulators or clocks and such.
In many such cases even validating at API level is not sufficient,
because if you enable a clock you typically keep it running at least for
a while, if not for entire duration of device being bound to a driver.
If that clock goes away the device will break even though you are not
calling any clock APIs at that particular time.

We need some kind of revocation mechanism to signal consumers that
providers they rely upon are going away.

> 
> 
> Finally, I have identified one more loose end still.
> 
> /**
>  * of_phy_put() - release the PHY
>  * @phy: the phy returned by of_phy_get()
>  *
>  * Releases a refcount the caller received from of_phy_get().
>  */
> void of_phy_put(struct phy *phy)
> {
> 	if (!phy || IS_ERR(phy))
> 		return;
> 
> 	mutex_lock(&phy->mutex);
> 	if (phy->ops->release)
> 		phy->ops->release(phy);
> 	mutex_unlock(&phy->mutex);
> 
> 	module_put(phy->ops->owner);
> 	put_device(&phy->dev);
> }
> EXPORT_SYMBOL_GPL(of_phy_put);
> 
> This function is called by PHY consumers. A PHY provider can have
> multiple consumers (example in the case of Ethernet: a QSGMII SerDes
> lane has 4 MAC ports multiplexed onto it).
> 
> If a single consumer calls of_phy_put() to release its reference to the
> SerDes lane, the phy->ops->release() method makes absolutely no sense.
> There are 3 remaining consumers with handles to the lane! But we aren't
> even telling the PHY which consumer has disappeared! It has nothing
> useful to do with this information.
> 
> Looking at actual phy_ops implementations, what they want to know is
> when _all_ consumers went away, not when individual consumers did.
> So the phy->ops->release() call needs to be put somewhere which is
> executed when all consumers disappear. If I were to guess, that would be
> the phy_release() class callback, but this is completely untested.

Shouldn't phy->ops->release() keep track of users and decide when to
destroy the resources? The rest seem fine as they simply drop references
(I assume each user of shared phy will bump up references as needed?)

> 
> Sorry that this email is a bit long, it got a bit late writing it and I
> don't have a lot of energy left to trim it down.
> In summary I found 4 highly related problems:
> - use after free
> - misleading of_phy_simple_xlate() API pattern (not a functional issue)
> - zombie PHYs
> - premature release call

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

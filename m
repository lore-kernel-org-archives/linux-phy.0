Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC7F9EEC2AD
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 23:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JLWNjnEKbpCD/XKZGE+q6Gpw/MH/46gVWeZwTRBoJ0=; b=hkRPIzlKg9twGM
	2qU2C7dEK3c7U9wUX9hjELV7s2X2fhGuqwwbxrGKqdR8je2pmg6VHYp/5pUnedKPyW6GRxaJ+eaFr
	z4en2PfQbP9i5AOWR/n5yMhkke5nygZn0J2P0EDlxcV8l08vNPugN+ZTdEDDwSy9p/1B8CSzWTEnL
	9A958ni1YSIYwOWso1X3mza0bvV/Z/zq4hxRolOaa1T9gNtW8adL3jQcjTW5RObPdbGt5TQ2pYeNb
	1GnAMwYce7V5nylRGGPlb06zyBbivr+cnP73U11TGTUwFqQG+Tahl7boby2L7uw+V1RFv0Q6OyT8E
	cDsyxbPbOl3rURzxQSuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuf8w-00000001ADK-09I4;
	Mon, 23 Feb 2026 23:15:10 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuf8s-00000001ACe-1WSP
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 23:15:08 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4836fc075d2so5693045e9.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 15:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771888504; x=1772493304; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tKTS42YBOWM388O2yeAIptWildo0XwTbAk8by2Z0Q8w=;
        b=PcsT+85hQ3SJPpcAG1QVmzXNnZC2+yvy+DNo/ZFT9kjz3MOSJX5pnb314pwWzFBpae
         0QQC1gXzRZT5dO0k4dHa50g/lzuXmq+EWdkc2R/y2JmxjzNzipBvrwJFFL3LoWI0E7c0
         oYaCGFxq1JVnM5V9QGJtRZMfxTLPvXbMJ0/QAEIsfI6L8XDDRuIKIA44X60iz/elJZcX
         vC2c4syH3p+wips0wggB1oM72IDhIQNKGG6i9qLUmjfXSSLGy2dbPYOr1ZNP/NCTqScz
         w/B0QKaf7VRliAmKRjjbJKaAr+ZOxfsxDdAvPKWpzB4z22XSsuJlY1s0GmvFYjJpqsYl
         yt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771888504; x=1772493304;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tKTS42YBOWM388O2yeAIptWildo0XwTbAk8by2Z0Q8w=;
        b=etyI3uisslzTfkywgMNbTj7lhjwi4qWIV2t9eScB9b203pX5VApxQHQIo905n2W1ki
         I/ziSEwbvhyjx4PVia3niYjKebxtq2a7226eshfrkpd6FmDZKHogcjxBNe6cw4CRATyd
         bA9E9jd5ZW734qoFuKT56NzwG2DL+Fp/vzTXHxXrUVl+NpvkEF+kGjv2s99vUazVk8vi
         yfdjx+cY4MswdV4J0KEAttCiv8jyZurYELBrLYAqf9NYLU3NXGVxq1HT5z5ghDme+gqM
         7JDivSX7JswdjoPc4pMvPH5nTpJ2G+bRM2+DyLi+skqRTTGyCxHJ73wIY4hTl2WDSMRi
         mtww==
X-Forwarded-Encrypted: i=1; AJvYcCU+lH39ctwCBMEp5MWlHPxrMDDalwPDKAr6KWOevoepKPKeIoxR6ZgzXB0dZ/shaLYF/Usq5WQgNlI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxYrT/2AK6GJ5sV+Wf88qqa6Gsm3jqG3/yUf85jU2GX/+ig8k3O
	aN5Xv1xqkauwZSg4Ac8ys+nIn3wm7C4aTwODAyWu9wFl8owkSLiYlc7w
X-Gm-Gg: AZuq6aIgfddqerGJoxS98faAEccm6FjgDwZqp7Geos2enoccfJpjm7dPjrSypbN3JG3
	ydJ5XmwbJt8zbJcemJzLHV+HPklUp20KwGVO3ZRSsKRuA1DHS8xjqHqhd0V8ccpQmK54Awt98/Y
	9BLaS+qn801lgdMypuvWULyNQyjWsfCBdXIYBMalzchDHbhoirNE2LDvts5laJ9VjdkU+6/UPgC
	ortpShiHUn8aLcJjeqX0yzfuIaWccm9A8t40zNCTba6247OnoukVwYiGkpOonxr6Xelnu0lv/WN
	x7kaWfZ3Q//uuGPkVeUwvKV8DLDfYJhGk5YiT+iYnVW492mP3IhDse9N+nsC1kNuvtDGQA4s1DN
	ndCd+MtZSWMTPQQHOMoboWEb/mp3xYKFwjoaL8xfwIG7RZi3W3VMwBgDoGJdNdmd94Ppb5k2vfC
	jHFu1M956lkeaFKdY=
X-Received: by 2002:a05:600c:3b28:b0:483:7d93:9f8a with SMTP id 5b1f17b1804b1-483a95a75ebmr100676895e9.1.1771888503732;
        Mon, 23 Feb 2026 15:15:03 -0800 (PST)
Received: from skbuf ([2a02:2f04:d809:4b00:a289:4e95:a726:c01d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483b8919db6sm4133545e9.31.2026.02.23.15.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 15:15:03 -0800 (PST)
Date: Tue, 24 Feb 2026 01:15:00 +0200
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
Message-ID: <20260223231500.zeffezslctqamhp7@skbuf>
References: <aZejMSJ9qqRWb2pX@google.com>
 <aZemjhBNFyOfKeNL@google.com>
 <aZkCyQ1oizPXplyU@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZkCyQ1oizPXplyU@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_151506_469289_F1157EBC 
X-CRM114-Status: GOOD (  48.61  )
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

Hi Dmitry,

On Fri, Feb 20, 2026 at 05:01:50PM -0800, Dmitry Torokhov wrote:
> On Thu, Feb 19, 2026 at 04:11:37PM -0800, Dmitry Torokhov wrote:
> > On Thu, Feb 19, 2026 at 03:57:11PM -0800, Dmitry Torokhov wrote:
> > > The implementation put_device()s located device and then uses
> > > container_of() on the pointer. The device may disappear by that time,
> > > resulting in UAF.
> > > 
> > > Fix the problem by keeping the reference to the framer device,
> > > avoiding getting an extra reference to it in framer_get(), and making
> > > sure to drop the reference in error path when we fail to get the module.
> > 
> > Hmm, I was too rash. There are bunch of other xlate functions that need
> > to be updated to take the reference.
> 
> So I am convinced that xlate functions need to bump up the reference to
> phy devices they return. The question is how to deal with the ones that
> do not. I can either convert them in the same patch (the changes are
> quite mechanical) or we can do the whole song and dance, introduce a
> flag, set it up in converted xlate functions, have the core respect it,
> and then remove it from xlates and from the core when it is all done.
> 
> Please let me know.

You have hit on a weak spot of the Generic PHY framework and I would
like to encourage you to follow through with patches for this finding
(although it won't be exactly trivial, I think it's doable with some
determination).

On your direct question:
It will impact downstream in subtle and unpleasant ways if you change
the of_xlate() semantics w.r.t. reference counting, but the code will
still compile just as before, i.e. when looking just at your downstream
driver (what 99% of developers do) there will be no obvious way of
knowing that something in the API has changed. I would avoid doing that.

But first the problem. Too little has been said about the problem, and
too much about the solution. We can't find a good solution if we don't
call out the problem properly first.

The phy_get() function follows a "lookup-then-get" approach for PHY
providers, rather than "atomic-lookup-and-get".

Namely, the phy_provider->of_xlate() caller, which is _of_phy_get(),
returns a struct phy * with its underlying device reference count
nominally at 1. All callers of _of_phy_get() do later call get_device()
to bump this refcount for each PHY consumer, but it is "too late" in the
sense that a window has been opened where the PHY provider driver can
unbind, and the reference count of &phy->dev can drop to 0 and it can be
freed.

Immediately after being created by phy_create(), the &phy->dev has a
refcount of 1, and only the action of its provider driver (calling
phy_destroy() directly or through devres, on driver unbind) can drop
that refcount to 0. As long as the driver doesn't do that, the &phy->dev
refcount is not in danger.

Then the PHY is exposed to the outside world using of_phy_provider_register(),
where the fact that the provider driver can concurrently unregister
starts being a problem.

Therefore, I would say that the problem is that consumers, aka phy_get()
callers, can get a phy with a &phy->dev refcount that is not already bumped
by the time they are handed over that PHY.

Mechanically, PHY lookup happens under &phy_provider_mutex, and I
believe it would be sufficient to call get_device() under this lock, in
order for consumers to get PHYs with their reference bumped.

Why?

Let's consider what a PHY provider does when unbinding. It runs the PHY
registration and creation processes in reverse, i.e.
- it calls of_phy_provider_unregister() directly or through devres
- it calls phy_destroy() directly or through devres

Since of_phy_provider_unregister() also acquires &phy_provider_mutex,
this acts like a synchronization barrier. There are 2 cases:

Consumer                                 Provider
phy_get()
-> mutex_lock(&phy_provider_mutex)
-> get_device(&phy->dev) -> 2
-> mutex_unlock(&phy_provider_mutex)
                                         of_phy_provider_unregister()
                                         -> mutex_lock(&phy_provider_mutex)
                                         -> removes phy from list
                                         -> mutex_unlock(&phy_provider_mutex)
                                         phy_destroy()
                                         -> device_unregister(&phy->dev)
                                            -> device_del(dev);
                                            -> put_device(dev); // -> 1

and the consumer remains with a "zombie" PHY device (more later)

Or

Consumer                                 Provider
phy_get()
                                         of_phy_provider_unregister()
                                         -> mutex_lock(&phy_provider_mutex)
                                         -> removes phy from list
                                         -> mutex_unlock(&phy_provider_mutex)
-> mutex_lock(&phy_provider_mutex)
-> doesn't find the PHY device!
   It was unpublished even if not freed
-> mutex_unlock(&phy_provider_mutex)
                                         phy_destroy()
                                         -> device_unregister(&phy->dev)
                                            -> device_del(dev);
                                            -> put_device(dev); // -> 1

and the consumer won't be allowed to even find the PHY device in this case.
So this is why get_device() under phy_provider_mutex actually helps.

Now, it is much less important whether you push the get_device() to the
actual of_xlate() PHY vendor implementation or not. For simplicity sake,
I suggest you don't do that, but instead keep it in the core, to
preserve driver API semantics (patch not even compile-tested):

-- >8 --
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 21aaf2f76e53..c50e38f057a8 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -122,17 +122,19 @@ EXPORT_SYMBOL_GPL(phy_remove_lookup);
 static struct phy *phy_find(struct device *dev, const char *con_id)
 {
 	const char *dev_id = dev_name(dev);
-	struct phy_lookup *p, *pl = NULL;
+	struct phy *phy = NULL;
+	struct phy_lookup *p;
 
 	mutex_lock(&phy_provider_mutex);
 	list_for_each_entry(p, &phys, node)
 		if (!strcmp(p->dev_id, dev_id) && !strcmp(p->con_id, con_id)) {
-			pl = p;
+			phy = p->phy;
+			get_device(&phy->dev);
 			break;
 		}
 	mutex_unlock(&phy_provider_mutex);
 
-	return pl ? pl->phy : ERR_PTR(-ENODEV);
+	return phy ? phy : ERR_PTR(-ENODEV);
 }
 
 static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
@@ -649,6 +651,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 	}
 
 	phy = phy_provider->of_xlate(phy_provider->dev, &args);
+	get_device(&phy->dev);
 
 out_put_module:
 	module_put(phy_provider->owner);
@@ -682,10 +685,10 @@ struct phy *of_phy_get(struct device_node *np, const char *con_id)
 	if (IS_ERR(phy))
 		return phy;
 
-	if (!try_module_get(phy->ops->owner))
+	if (!try_module_get(phy->ops->owner)) {
+		put_device(&phy->dev);
 		return ERR_PTR(-EPROBE_DEFER);
-
-	get_device(&phy->dev);
+	}
 
 	return phy;
 }
@@ -803,10 +806,10 @@ struct phy *phy_get(struct device *dev, const char *string)
 	if (IS_ERR(phy))
 		return phy;
 
-	if (!try_module_get(phy->ops->owner))
+	if (!try_module_get(phy->ops->owner)) {
+		put_device(&phy->dev);
 		return ERR_PTR(-EPROBE_DEFER);
-
-	get_device(&phy->dev);
+	}
 
 	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
 	if (!link)
@@ -969,11 +972,10 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
 
 	if (!try_module_get(phy->ops->owner)) {
 		devres_free(ptr);
+		put_device(&phy->dev);
 		return ERR_PTR(-EPROBE_DEFER);
 	}
 
-	get_device(&phy->dev);
-
 	*ptr = phy;
 	devres_add(dev, ptr);
 
-- >8 --

The patch above leaves a few loose ends.

The most obvious is of_phy_simple_xlate(), which has that put_device()
to balance out class_find_device_by_of_node() - which bumps the device
refcount to 2. It "looks" wrong but it is consistent with vendor
implementations of of_xlate(), which also provide a phy->dev refcount of 1.
And as explained, the refcount never _actually_ drops to 0 with the
above patch.

I would actually address _only_ of_phy_simple_xlate(), for cosmetics sake.
Instead of devm_of_phy_provider_register(..., of_phy_simple_xlate), I
would offer a new helper, devm_of_phy_simple_provider_register(), which
would internally use a callback that doesn't drop the refcount (say
__of_phy_simple_xlate() for lack of imagination). I would convert vendor
PHY drivers one by one to use this (it would be valid at any time to use
either the old or the new method).

You'd notice that most of the of_phy_simple_xlate() occurrences go away,
except for freescale/phy-fsl-lynx-28g.c which calls this function
directly from its own lynx_28g_xlate(). It will still have to keep
calling it, and for refcount equalization purposes that weird
put_device() will have to continue to exist. Just leave a comment as to
why that is.



But there are more important loose ends still.

I mentioned that "zombie" device. We've solved the memory safety issue,
but it's possible for consumers to hold onto a phy whose provider has
disappeared. The refcount of &phy->dev hasn't dropped to 0, so
technically it's a valid object, but from PHY API perspective, it's
still possible to call phy_init(), phy_power_on() and friends on this
PHY, and the Generic PHY core will be happy to further call into the
phy->ops->init(), phy->ops->power_on() etc. But the driver has unbound,
so it should really be left alone.

If we fix the UAF but leave the zombie PHY problem, we've effectively
done nothing but silence static analysis checkers, while the code path
where the PHY provider unbinds effectively remains treated as poorly as
before, just moving the crashes to a different place.

I suspect what needs to be done here is to introduce a "bool dead" or
similar, which is to be set from phy_destroy() and checked from every
API call. The idea is that API functions on zombie PHYs should fail
without calling into their driver. I **suppose** that
try_module_get(phy->ops->owner) "tried" to avoid this situation, but
it just protects against module removal, not against "echo device >
/sys/bus/.../unbind". So it's absolutely incomplete and easily bypassable.


Finally, I have identified one more loose end still.

/**
 * of_phy_put() - release the PHY
 * @phy: the phy returned by of_phy_get()
 *
 * Releases a refcount the caller received from of_phy_get().
 */
void of_phy_put(struct phy *phy)
{
	if (!phy || IS_ERR(phy))
		return;

	mutex_lock(&phy->mutex);
	if (phy->ops->release)
		phy->ops->release(phy);
	mutex_unlock(&phy->mutex);

	module_put(phy->ops->owner);
	put_device(&phy->dev);
}
EXPORT_SYMBOL_GPL(of_phy_put);

This function is called by PHY consumers. A PHY provider can have
multiple consumers (example in the case of Ethernet: a QSGMII SerDes
lane has 4 MAC ports multiplexed onto it).

If a single consumer calls of_phy_put() to release its reference to the
SerDes lane, the phy->ops->release() method makes absolutely no sense.
There are 3 remaining consumers with handles to the lane! But we aren't
even telling the PHY which consumer has disappeared! It has nothing
useful to do with this information.

Looking at actual phy_ops implementations, what they want to know is
when _all_ consumers went away, not when individual consumers did.
So the phy->ops->release() call needs to be put somewhere which is
executed when all consumers disappear. If I were to guess, that would be
the phy_release() class callback, but this is completely untested.

Sorry that this email is a bit long, it got a bit late writing it and I
don't have a lot of energy left to trim it down.
In summary I found 4 highly related problems:
- use after free
- misleading of_phy_simple_xlate() API pattern (not a functional issue)
- zombie PHYs
- premature release call

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

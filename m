Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E8DC44508
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 20:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dK1coKnslHit15DFeOSh6NV05M2tc0ZT7+evxkj3UE=; b=VQU/jhDihlTul/
	4YRNrgh22HB5aXnQK4Iydt22hAZ832QvUhvs/CE7SQKF5f7FN/vH7tEBhiK0bgxVkeHykr1tirHGf
	uKUbGqxXEXMELoZMxefdTJqvSjJc3WL8vHgKYo/srHqQnxsvJ8nDT6ufAyef70jed8m9Nl5JqGkI0
	s4hCJmaPIDP8Fo5GAcLeGihtaYaf0iflaaEYvvcMwiufupNWiRjY3YlPght9pf+O4R+b5ud5WndgH
	Rn9JsB7pJjU5QLdVYaQZW75YbX8eMIfMZy3tc2L8DRzvVKZMiiKLJlmWcpdcWibNYLx0xAXTRUbj+
	jLpGLlQSnlDYQMm1oRrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk6IF-0000000Ft2D-3xJD;
	Wed, 15 Jul 2026 20:33:23 +0000
Received: from mail-ej2-x00.google.com ([2a00:1450:4864:34::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk6ID-0000000Ft1j-1tld
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 20:33:22 +0000
Received: by mail-ej2-x00.google.com with SMTP id a640c23a62f3a-c15be76348eso113074166b.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 13:33:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784147596; cv=none;
        d=google.com; s=arc-20260327;
        b=f6eHT6fyjRKsRYopsSZaY1OojU77CpScEN++n+a2AXnHDxUqhJuvx5t2nJ0qYb+CIL
         kXtDZ0hNBiqKJ6iI6PD5KZU/AgB4skEtXsO6inHZuZ2z5HGQ6H4H+ThxQOpPxgxxcO2u
         auA2I96+3GhzyuYbAqSUXXKciNqL0PDrz2pGjkHDvg3c1WXUx/jM2h3dfR0NV3hVfMid
         /ZyMSUVy3FAbcJX49CfucNZlXsy7u7/VC2M+hIMioROY4TkCa/nFkqQ6ni5ug16lsM7L
         DQkP8FJHgNCxXGquLgb7az+3w7EzE2CMbQeAYtHrzhM/knQ8AmYbZOdPG+IMqpLS0FhH
         Kl3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ChZRrIPY+q69QoNpgGM5mCWAZDJasoa0uEar2XXIlDE=;
        fh=RwfH2Kra3ZpaDCEDP723d9kAHsxDA6is/GtgOfxu5PI=;
        b=X8/5vzK7jYwMVbfLrgs2D2PBZEJgLtLwS5PGgknC7OBs4JZHU9Id9Y8ymsTil0eUyv
         c4ED2AtUN5t8EGheFCF7iRoiLh90QO6uADhN/oZuX5bxf1LXvMwF79XUz9FFpuHx0sI2
         cjM2w5OZKJEUfcIV/FGJA9yjRjotoKcSoLGAQAsgJSnBTdwvIg4Qk5QU0osrz4143uRh
         q3pJErEm78QmVKgmDnUN3gau6R+GqL9hk510kfd4kbIyK/MqOdq/5loikgS1lHhUTyZg
         jQxf8cPPKbCk+E/NaY6ji4hZanJStCf3qruU0xqMl9sX3h+SQeYQEnqPQ1lIlFHAnbIw
         8UOQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784147596; x=1784752396; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ChZRrIPY+q69QoNpgGM5mCWAZDJasoa0uEar2XXIlDE=;
        b=gUzd17iRwyht4cnvZQS5Hh4qznEjPQrlRo0KQ7DKGu9bx4CXcegsYV0D72N1n1Y6Yn
         NBnEDqD+Y/DMdvjxX6wPkB3NGxjUjY1FCTht7vtLxGUSso31tld/QrZMkCDfCcmqwKs0
         xH0D9SBqH6F2y+W6DxtKA49tqI8dPpviRTUCTS1g5JD4bxObzVofZDqNdoIEWsy0v6n1
         P2oS9OvJNkZBbI2JuqcjyiWTH8qxiJj4FnijgFO/CVBHrILDFo95FbVI0fPoAegS93i4
         ee4GYi5AyV0RoFpN43rpoj8McHxQcoRegQtDBWInSlEq9dHUmmsHD/8HoBWAuTfQ4nbi
         gV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784147596; x=1784752396;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ChZRrIPY+q69QoNpgGM5mCWAZDJasoa0uEar2XXIlDE=;
        b=CF1dMnpaQRA1ecrpSpmdMSYkf7ipPdij1n8PmV5fjaqh4Gx3gqGyJne6JR6EpZdgL3
         kgqGrOLB8ckjLA9SKhI0aV/YP2wAxy3ar18hA+y7D6hqXpw73fqwv140yJLyygVuDwub
         1XZKLL01nEMM5XkWI9wwYqtu6nxwiJgcZGXlH6gYgT8EMAgtd6p2Ouh6ger+D5So7h+Q
         lq/M4+MkMu4PJ8X1oT5kSMyc1PHrIlStwHRjwndWtcDbo/HfSwPma/+ftLvyFOjijRWA
         mKv+BUUnmWT/JOiW037/rBy7GIaJEOuHKYXFcZ9+QHZ/fxGg9ysITxcMyKqlzSIQtaP5
         8vig==
X-Forwarded-Encrypted: i=1; AHgh+RpmvQYCPJVA0RKYg8EuD0wCXMl5SGzWbZouJBb6OWnXWaAuipey5DwbiIGpp6AUpexFhNl30jsiPC4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCZZDOSrQLa3BNGvDRWsW8pc+FEZpo/GbVtpfUyapBkrUHyaVe
	JE+5NlM2hIo20Y70Ii30VS/JpKivLOI4UBaVxN3u/KIN90uC3wkQBfsFoYQbzozsrC8PnENRZfu
	E96Af4N2nXt/4EvZ3XMkSea+rA7Io6l0=
X-Gm-Gg: AfdE7ckpD400esPr6Y3UBrZQHORrgNCXQpXVTdZfKq1cjxstQdj3yC2fEpYPTEL0Zcr
	RWmLDqesgtNild0UHJCKHaePeOdwkexmiwcsa8QfYLp/sXcZy6amZBzlBuxUf9Iopejm1SY9s20
	Qt2hj90VsvDG54RQEtkLQtCL/ugrUvoV2hIE0CKffGm5dJzDeE75qCXVB2/oUgYg1McAwMCWLNq
	cQtZA1/8oS5whga7aGNB9OoFQxiGSftJeLgNIa9AttTsUQIY3a3m4ydNOmlfLtN1aV9SPVaXTE=
X-Received: by 2002:a17:907:d649:b0:c16:5cdb:9f89 with SMTP id
 a640c23a62f3a-c165cdba195mr563594166b.64.1784147595530; Wed, 15 Jul 2026
 13:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-9-coiaprant@gmail.com>
 <20260715191455.D033A1F00ACA@smtp.kernel.org>
In-Reply-To: <20260715191455.D033A1F00ACA@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 04:33:04 +0800
X-Gm-Features: AUfX_mywQaSTkJvyJzv8XehCE-odr5e5YLAuGpoxeXM7OtZo7VSAqzu94NbaTns
Message-ID: <CALj3r0hjOBgRL21R9tRPDP+yrN0QbAXw=NcOvp4jiu_0PxFeWw@mail.gmail.com>
Subject: Re: [RFC PATCH 08/10] net: stmmac: dwmac-rk: add SGMII support for RK3568
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, 
	olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, 
	conor+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_133321_742865_92C7ABA9 
X-CRM114-Status: GOOD (  15.90  )
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

> [ ... ]
> > @@ -1379,6 +1441,9 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
> >       if (ret)
> >               return ret;
> >
> > +     if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_SGMII)
> > +             goto set_mode;
> > +
>
> [Severity: High]
> Does this goto skip enabling the MAC clocks? By jumping directly to set_mode,
> we bypass the call to gmac_clk_enable() further down in this function.
>
> Can this cause a synchronous external abort when the MAC registers are accessed
> subsequently while their clock domain remains disabled?

You are correct. The original RFC patch had this issue: the SGMII path
bypassed `gmac_clk_enable()` via the `goto set_mode`, which could lead
to hardware faults when accessing MAC registers with the clock disabled.

This has been fixed in the updated version of the patch. The clock enable
is now moved before the SGMII check:

    ret = gmac_clk_enable(bsp_priv, true);
    if (ret)
        return ret;

    if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_SGMII)
        goto set_mode;

So the clocks are always enabled before any register access, regardless of
the interface mode.

The error handling has also been cleaned up with a unified `clk_disable`
label, and the default (unhandled interface) case now properly returns an
error and disables the clocks.

Regarding stable backport: this issue does not exist in the 6.18
kernel that I am using for backport testing, as the code structure in
`rk_gmac_powerup()` is significantly different there. The fix only
affects the mainline version of the patch.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

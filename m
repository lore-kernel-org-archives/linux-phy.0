Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBE6CD37E39
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwZlHrM5FmFD+XPwIaQYZmpNb/tc5GZ2MK3P+oowdRg=; b=0whYbvLNkfSnHI
	T41XujXIYAptSo7rgUss81+wLOocp6mAOWSdI9Ulr/5D0sR5HBHP202UCNWmbUYvm2AqAzYo6ksJ0
	fcnIhpHXZUvA2kBp+YfVRL5frcsTeZPtSbuwgdbKoBRdKEjoPnFQXpKqFKdwSL3wE02/jjnac2wJC
	hy1Nt46HUOFdeC0eju8Er4pmmARY6UUqlf7LkWRh2dViO4gUWzTCDmYh14QO0zs19za6f6aR4Wivp
	467bK2fHziMN9/V3mGoqIeOMX2/T36Km6nkn5tJwbZtxBgZHndbPyTMosi7QIZ+AdZFzt7WT+12+n
	+pBVeeOYgVQsUHTom2Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1fB-00000009Tyk-1cKW;
	Wed, 14 Jan 2026 14:15:57 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1f6-00000009TwO-2QAm
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:15:54 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-59b7882e605so8664394e87.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 06:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1768400149; x=1769004949; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5hjPkkzMohS45ECF+5/vRW6fDsFf40jPRuoL50s4x7Q=;
        b=eZ6HiiXe+sUWNu3TMjCuGIDUqDBeDStxOKEdH7KEgyksisUfyVOsRU4NbRnR+N1izg
         /Jsq7dnlweOXzSc1PbKwcqyWQe0TNphN5t8lP6msOdfs0nxXU04MfgPrweqGH4Wnp2oS
         si3Q27PzlxW6FYZZdtR4612XT7Ttlui1JZiXoVJeB8bBJT0oDa1ScfwQnda6mxTF7S5D
         D/BTuKTE6R0i2Yow8/xhHBro0CfpzP3c0jSCaYpZVpBEMpO3VhaQdTNPuYyj9wyhenpZ
         1n8DzQCcHNgLXMi6UjTM5w9YFr55g/N4SdfRziM1QyB7kOioxvKCKd7wCNHpwUgc+BaL
         qC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400149; x=1769004949;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5hjPkkzMohS45ECF+5/vRW6fDsFf40jPRuoL50s4x7Q=;
        b=roBmEwNlKBokXDgomSxzigUu2eIelJydedNbmJIOEbSTJu2F1ex3YJ4zDJSi59++nV
         jSx2X/7mWz8cuibKZI+5YejSe8Xsd3ixpmA8cNI+bhia0BHzGI5qTpaR3l1aklcuOiw6
         PrHCJW93YNKbOSdVGROruOhawJAMP3voN7NGTih5EUGtxRWqeE2Op5wgLArAzPvzxaXs
         hE/eybVUUWsG/6JyR6C+KMCtEvUZwQqiUh9rPD6eqo1Dd9fnMM4A5LA690I0RHhDHwQU
         f5NYNelGVlU/2QpOD3GQMK6DcajHkj81WP5lFTRrxUGh+tGO05weHcGvFEep4N9NVxNC
         SkDg==
X-Forwarded-Encrypted: i=1; AJvYcCUBOiRG/m3AMXkJdifJU3HXtA72o5ErGSikOOT5ZUDdq+AefXxgajI7Z5fShCmZ7GkdzjWOp1KQiHU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwD0Q/MVwA3jrvRQzFdMaT4Y8W+EYNgSVS76b40EJ+8Wjhwit1g
	g05RZp9judYWM7ZZYiNTn5CPH9dM3KDIfZ8Rh0eeUP2IpHdaUvxSFdNqMr4Ced+Oo2jtrY9BiwO
	NuGfp0pUl1jV9qXRRCz4yvFJxUBq+XIEeLiQ+mAjULA==
X-Gm-Gg: AY/fxX6GEuKc4mxUbcOm29HdhfxDDgVFz8CLLe2FuW6XnKjikN7sWUXky5mA1C1h0jm
	UPxz2GiYNtrWfD0s++I2LXALHsjjFIswYAcklW43rb1cvcRsOPtSjAzj9pxOmMF049AwtkOCCDt
	UngpcIB9VovnbjO0AQmyRka55vY4gN9zvUCYFxU2Hp0CU1Cx/tvWaqgFJgrkMmgRZ0rANWWNrWb
	gdx3lUs3Cnvwq05OiUf+wbhAFSFmO0JdWgcJ9BWepMCf+QN3UGN52YDgQxg1lmVkXklp5MCJ2e2
	Qa4QWARxX04O6rETWs15s+7Wd0eH
X-Received: by 2002:a05:6512:3401:b0:59b:794e:dfed with SMTP id
 2adb3069b0e04-59ba0f813d9mr955411e87.25.1768400149484; Wed, 14 Jan 2026
 06:15:49 -0800 (PST)
MIME-Version: 1.0
References: <20251105152023.259813-1-marco.crivellari@suse.com> <176839928954.937923.15095865192573263958.b4-ty@kernel.org>
In-Reply-To: <176839928954.937923.15095865192573263958.b4-ty@kernel.org>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Wed, 14 Jan 2026 15:15:36 +0100
X-Gm-Features: AZwV_Qgj3UUsI_qnNsOnW1eSo8sD6BvrOvfDzZ-kVDXYnmGSUkrSa02nUWpKX50
Message-ID: <CAAofZF6n_BVQhoPGOc+BeKgBr8YncgKzkLrRQKDrZHO0EtUpug@mail.gmail.com>
Subject: Re: [PATCH] phy: sun4i-usb: replace use of system_wq with system_percpu_wq
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Frederic Weisbecker <frederic@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Michal Hocko <mhocko@suse.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_061552_623742_19DCD1E2 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKYW4gMTQsIDIwMjYgYXQgMzowMeKAr1BNIFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gWy4uLl0KPiBBcHBsaWVkLCB0aGFua3MhCj4KPiBbMS8xXSBwaHk6
IHN1bjRpLXVzYjogcmVwbGFjZSB1c2Ugb2Ygc3lzdGVtX3dxIHdpdGggc3lzdGVtX3BlcmNwdV93
cQo+ICAgICAgIGNvbW1pdDogODc3Njg2ZjlmNDJiNThiMDRlNGUyNWQwNzAzNGJjOTVjYWRjMjBm
MwoKTWFueSB0aGFua3MhCgotLSAKCk1hcmNvIENyaXZlbGxhcmkKCkwzIFN1cHBvcnQgRW5naW5l
ZXIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=

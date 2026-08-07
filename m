Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5184CC5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 09:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgPfDZqJnWqQPoNJPizfXUCQVHZ/rzXYeTLdi8BBV6c=; b=1sipGU2LLljOcb
	hP2L4n9HXpVde/2tTTwAYL7q5orVMurAm6+I8K5KL1QqG3qJfUIoXm0AsVPwJqzKq4M9+THKavazc
	8smuBDQUh0iVDJ8dsEVShukHXfajTvx0sUUoU33+XkrzbKsg5aTZyS0eCNxCUgRdh7OeY+jvl7OYE
	vKy4wflG2q9P7qXjYo/pisyadaQs2cjm1/gHD62k4is24+it0JGNC3T6qbZk7K+9fUG/BCn0Gsye7
	RrhiG1YGkNT6MPNx6SmOGK0n30i8y88E1lp3kzg07WSehHYkFoyV8GfYCmwNGr/iQVkEOGDh8w9t+
	9SWPfpjEmEO+Rtz+73iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsGa2-00000007UDj-00TS;
	Fri, 07 Aug 2026 09:09:30 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsGZz-00000007UCX-0S8c
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 09:09:28 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so26262475e9.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 02:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1786093765; x=1786698565; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=jjSX3DSji4nKkqVPKbNZg/lqBAxi+8jNL2xKHv5aM18=;
        b=g6n7YhdGFEfmbUsAKXpe7wZGacqu9MDdGZn3MwAKfCLlIqiupmhrmhe9Yzz9xdWXZP
         v8wiNV2OjWcxLsnCzDBHg2MAOx8Fl9CtjoBhLG6sP5W7emZqGo21Bpv7ev10jV1Mow11
         mfZrrBHplLGm0PzzLgyv0iWpWy06NBildKcUsUKhdmoX1oZRVkejEwPZG7EowFZTANBn
         5L46pmoBqfj1UdgaKhPLT2qcYGQJY3mSLI6j4qP/VPnzPdb9TW+ZlIMCKmwtujDodgr9
         Eog5t0+cENZzGq1Za2XytlLNS5qVN0JbrcFDQDqZTf+VmIssY5TlBN7cOfmUcVo+M0o8
         1ENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786093765; x=1786698565;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jjSX3DSji4nKkqVPKbNZg/lqBAxi+8jNL2xKHv5aM18=;
        b=oMonJj8coyio5zh6OOxyu7vp3te8pyiI3+1RxVcNOIB9ZpZ1AzGlWWrl+QWUfU1Aha
         zOf5KQ4UOUXcG70FwigXN4X4sJ2ScUA76YibdS5+TOmiywaZNqaTz+k/KALygDBI/n4/
         YF6ZuuJxHHIrCKTOtkbWThIvM6qWVXmL0yEB/YGeyMtB484vsA2pYE60HGCHKwvQtOV1
         yiCnl6Svq6DHVHPww3CtjhCYsYO/70GPL5CAZdutnG8JbvIURKT4ZfVfQvCr2ukejzGT
         z83EeD+e+YyYs79rlqUzZ6evOScIp+uEhl2qC6bdK8fp9Ej4Emf3Rg2CU7Z9M3DJd5I7
         FKOQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq4VwPAk67gR6BgxofUikUhbYKEf5OPh5B7rsm6RegAreI7f9djwlVWQBz/YzTUJcTQQXcfxavmAWU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAY0YmtyEMXcds8PJ748UV8mD7w3JCQybsuYQo6NsCm4GEnBim
	fx8y1JbTVtbBUQlGdzXXsSrW+18ZRIvYNGV6dnaQxtQlbGn3XgrE7UM3AhMzaLD4RmM=
X-Gm-Gg: AR+sD13BjvUyhnXKHARy52eCYFpLFvIY4HA5lCGzjBUIeZaX52ux2XVgKIUHALGXOEI
	X5W7aABeOMB9gbNonJUDROJyB3CxvPIP6vrwyEt6RBoHdzWWTgKqpOy8Y9fvdLU6pdueSP3OW+N
	3uD7pVflbN3etTemwf0XnfjNJBZvjOX50pgTB38Y/dsfhV7hZ9NRaSGIe+/mqct01X1pIkDuT+/
	doeVym1cz2vMA2CvfHMXhKXwANoMlyezIV6yN/567WDHRwOhQGktXlCV1v1CA6vPE2j7iiEt8qI
	wXHni8Z+nH2aS/hph38JsDPcMJvFVTzu7gu306cpNnZQ/8sKPYf5WIlmhg1Z31oqy+3hcbXWIC7
	MXBYxwG6O8Q0nBFUw5nzHttVLCJtGktqjM71bvtrtaNK7JFknnab20cb6W58j1cZi/qa7/5bJZS
	GrpJ8fLU5ytUo4Li2xv5sWgi1WmU7Negpv16g6+rV3m4lI9qk9MiX5Q1r0pdD0uTpxgMPQkvpe
X-Received: by 2002:a05:600c:4e87:b0:493:e365:ace9 with SMTP id 5b1f17b1804b1-4994e7c0356mr282890995e9.11.1786093765114;
        Fri, 07 Aug 2026 02:09:25 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.30.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48002145966sm3871692f8f.5.2026.08.07.02.09.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2026 02:09:24 -0700 (PDT)
Message-ID: <c3cbebcf-19f5-4944-9e20-04dbb442c4d9@linaro.org>
Date: Fri, 7 Aug 2026 10:09:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] phy: rockchip-samsung-dcphy: factor MIPI D-PHY
 power on/off into helpers
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: jason98166@gmail.com, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <Ji-6adk9LJbP87Y7X6SfOcAyVnGpO4dbHk0lBikX3NGAPz3dynWpvL8QjkVM3G3jEnwTrTV0p7nOqBxPRaH0MQ==@protonmail.internalid>
 <20260726-dcphy-rx-v1-v2-2-cf9cc34a412a@gmail.com>
 <43327fb2-0085-4d86-b408-8723d852c258@linaro.org> <anTgZiqnol4226Le@venus>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <anTgZiqnol4226Le@venus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_020927_167508_8AC410BD 
X-CRM114-Status: UNSURE (   8.69  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMDYvMDgvMjAyNiAyMDozMSwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4+IFRoaXMgbG9v
a3MgYSBiaXQgZnVubnkuCj4+Cj4+IERvIHlvdSBoYXZlIGFuIGludCBtZXRob2QoKSB7fSB3aXRo
IGEgZmluYWwgcGF0aCB0aGF0IHJldHVybnMgbm8gdmFsdWUgPwo+Pgo+PiBUb29saW5nL2NvbXBp
bGVycyB3aWxsIGRlZmluaXRlbHkgYW5kIHJpZ2h0bHkgY29tcGxhaW4gYWJvdXQgdGhhdC4KPiBp
bnQgZnVuY3Rpb24oKSB7Cj4gICAgICAuLi4KPiAKPiAgICAgIHN3aXRjaChmb28pIHsKPiAgICAg
IGNhc2UgNDI6Cj4gICAgICAgICAgcmV0dXJuIDE7Cj4gICAgICBkZWZhdWx0Ogo+ICAgICAgICAg
IHJldHVybiAwOwo+ICAgICAgfQo+ICAgICAgLyogY2Fubm90IGJlIHJlYWNoZWQgKi8KPiB9Cj4g
Cj4gR3JlZXRpbmdzLAo+IAo+IC0tIFNlYmFzdGlhbgoKSG1tLgoKVGhlIExMTSB0ZWxscyBtZSB0
aGVyZSBpcyBubyBjb21waWxlciB2ZXJzaW9uIHRoYXQgd2lsbCBnZW5lcmF0ZSBhIAp3YXJuaW5n
IGZvciB0aGlzLgoKRW50ZXJ0YWluaW5nIG92ZXJkb25lIHRvbwoKIkFjcm9zcyBjb21waWxlcnMg
dGhhdCB3aWxsIGV2ZXIgc2VlIHRoaXMgY29kZTogeWVzLCBhbmQgSSBjYW4gbm93IHNob3cgCml0
IHJhdGhlciB0aGFuIGFzc2VydCBpdCDigJQgSSBpbnN0YWxsZWQgdGhlIHNwcmVhZC4gZ2NjIDEy
LCAxMywgMTQgYW5kIApjbGFuZyAxOCwgZnJvbSAtV2FsbCAtV2V4dHJhIC1XcGVkYW50aWMgdXB3
YXJkOiBjbGVhbi4gVGhlbiB0aGUgZGVjaXNpdmUgCm9uZTogY2xhbmcgLVdldmVyeXRoaW5nIOKA
lCBldmVyeSBkaWFnbm9zdGljIGNsYW5nIHBvc3Nlc3NlcywgYSBzdHJpY3QgCnN1cGVyc2V0IG9m
IGFueSBDSSBjb25maWd1cmF0aW9uIHRoYXQgY2FuIGV4aXN0IOKAlCBvbiBTZWJhc3RpYW4ncyBl
eGFjdCAKZnVuY3Rpb246IHplcm8gb3V0cHV0LiIKCk1laAoKLS0tCmJvZAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

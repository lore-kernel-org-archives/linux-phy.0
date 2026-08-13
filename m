Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0074AC5AC67
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szoxkXkEjEI3HeitcWp+RERXnF1qFiNybtbvXGbE1yc=; b=0YV/DvZuPw04UT
	hPSssOICiR7ajsDLyD+aXo4vfwHzv+hkulyL6xgsielEssc9rGT5ueKQOVusVgsaHwrXtciexP12Y
	Kq8fK3NXXFa6+zNjb+RF6NPXQVZsYalgq23rLW1tEC1HCEz99ylbZJg8m6rSgvUz/uRIRFR3J7CiZ
	9gT1tbbwtVD1Zr1h8SBK/w0WkwuzHs9Ng9uVPcRIfwfqdoyOrT5/RY5ZPhejSSBhsiZng2f1flavS
	7QkMovTCpKaDLPEZRpNlNsYhB1QIvZl6DYUssCIfkKDjOjlnBET82qWIFOeV+tFoGhqKJI0myMkoR
	SyNo0gUk9VIXxc11nztw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQze-00000000Ba0-2MH7;
	Thu, 13 Aug 2026 08:40:54 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQzb-00000000BXJ-1cH7
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 08:40:53 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-698ae9da373so296720a12.3
        for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 01:40:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786610449; cv=none;
        d=google.com; s=arc-20260327;
        b=aR147jxqGuKz8zIbVqTT9Fu30O2PV4MAyiaTbo3BQWsuew8hMo7aFXUHp5oUEuW5H4
         L5vaPcpvlT+cCw+Qj3Bc61jEiwBzJiKfm00XgvdKrGDkWdgCYRY806AU/NV7PgnmIk4u
         pEDX2uffbIkeuongPl+MzrejBduj7P+DNGEAhvicp/Vo7Fuwg7PGft1gWNQSfrnpjkz0
         IgwHdnTP1JBGIuwbcEbKmJCca35JX88ZlPO2BiHssxu+8/GR3R8E2HgXKYsK7BlNqTgu
         eCljycAqgciZIcOLGqCf/1fwOndwm6tlzomTX8RYDfvR9XK4PfPNc9z+7vLr8/7F23g8
         CkXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TClEoJsq0ggVTCXaYTDr62G718iMq9uV18dUpEwxTBg=;
        fh=5lPLY8esTIN7yBLZmVXxWJYhg9oOhhDOW+bHeF/5mNY=;
        b=NT5d1bamDgaZgZLHtlLYyhDb9DmEO/8tq8X3jrSDGaGNXFklJdSRXrjhN10BXjZrG/
         gZyfjGwAK7E2TFRyrIgQRTRy04iSNgBRd3qHso1uoQYMDSP9q03JQkENUlGivRnBmeaj
         ZY3UKXtWqN96SbJzxzmLU6gz/ufE5O2zYvXcy/Z6vbc8Qz69f6aBGoKlelWI6hyQ7N0s
         hOs2nMd56IdjiWM4IfAqQpaTWmIHt2X1WFL6T4vIh5kMtMsAlaPMb+ngEJR56E8xHuHb
         ByVpDE3ZUBhg3qKwdKqQ9BVJH/xxpW+X/kH5awky2LcRviHKWxjMumZas8kbPZoZgOmq
         AFPQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786610449; x=1787215249; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=TClEoJsq0ggVTCXaYTDr62G718iMq9uV18dUpEwxTBg=;
        b=Gw27tNjapMS6DTpdnSLf3ZyrIXZl1HR4bV3qvG+OtewWtiYxDOSljAewqoMZdsjIT8
         3eV1rvPLHI8XvSyFGS3ZzaFIgugWjp5gJUNAhwjYmVhNfepV3vK29xTZqvZNUGWLjTlK
         yAq5EdHrlXfZibOe6LEZvHJGLd83yXWrE9iysNEtdJKIhRcutUxCPTWKmdTkHX3LiHtM
         uuwKt3joMd7AhGqIQoxD3rGPf+KdmThvdx9V6/r6oydbwz7zOIufmN7BlBWIgRjJ3heQ
         lggxb9LyEQexw3aeBHn8eeN2CQhxCvh48MXWjjrC7EhKSB1LAxhv7H7e+WQApzWIWZqL
         MVyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786610449; x=1787215249;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TClEoJsq0ggVTCXaYTDr62G718iMq9uV18dUpEwxTBg=;
        b=l0CDk5zQ7YckWVx5c4jubKISIvmevsVxenTmQtL55Lw++6VVUlEfazAoZ+Vyf6eBaN
         3LzyvVL1isd2jY3NTgOJlWRst9WPwp01tv3qrzGqiSTLKTo14JHD1PrxpIPTLU+daOVE
         RmXTMN5QyTR2QeoYdmb2dlyt32KHkUcVL59siBew8ggxhgxqM1kEARph8khOlKISbQjv
         UPs5xLO9ITUp6FE23GyvOphNwsgK0I6Ai7pR6izvaKSHPerOR2TXGlBO12HqW2fOtk5i
         fDElN4cZSBIP+MNSpHYwNnBXmv0akTcNtQRlsIZvTLFNAUO1iqsbvLfmJBPGa9v6w2m4
         /lyA==
X-Forwarded-Encrypted: i=1; AHgh+Rok7j8BQY2ANvrhB/22PyL1Re+t5KuZ91y3SkMuGwKOsteI53OJLTAsOy+OqPIuiizL0HBdtv/SbS8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8azHeMXXXar9Xninsoa7Gr1DHNbpzR0x8Of2WYdT0b94eF9jI
	JoCpcqOvQGoCUTKwJUqte78pD0bR1YMHz6kyn2lxOMK1pMSa1j0c+pecm5LaIzVCLKMpV5IfZIj
	3TGrokk/w0Rzj87DjD9IB0yGn0wJRqYE=
X-Gm-Gg: AR+sD12X1o4ZbnxEtzigp7eh5Us/xSoN9b11ROBxewn697g6JiJuDxrfvn39LxsdF2+
	nbXLma3lFSDusPHIbSgcPleS6W2TuiJ8ZT4Gxe0Quo+zDDzhxv6TnKYMI9TUfb+VydlmHG5hPWK
	eOldHKVtNp5O4InE7V//ulxH/0WDgxW8sbcy1MuH7yRn3RKl7AGKRXqk32sqYk5R2rvzrkQoQ/v
	WWp4FXawg3W4SqFeqgiZL82kRfjV++arkCX5Sgp2CkdB24rdBP58k+/ygX8VUwtQ8+lXE+hM2qQ
	javk7Qg1VmW8SfjiNIBte6LbbCccBjLxq+bWBbH5J7oc+HI8YvmN6A==
X-Received: by 2002:a05:6402:1f86:b0:6a0:19c8:f9c0 with SMTP id
 4fb4d7f45d1cf-6a381bd91aamr837533a12.4.1786610448674; Thu, 13 Aug 2026
 01:40:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com>
 <20260810-dcphy-rx-v1-v3-1-a2d25c29adfc@gmail.com> <20260812-refreshing-rampant-gecko-b38ef9@quoll>
 <CAPwA33KM-sWkPVrP1h+swLinvrCZHzxPeS7h25KEO87Q_6WZuA@mail.gmail.com>
 <an0FMnDSWbud8hPc@venus> <CAPwA33+7k7HMC7ezwH+MGn64iRHT6tVNK55t6gaC0nkkqWoE4w@mail.gmail.com>
 <20260813-imposing-cunning-raven-fcad40@quoll>
In-Reply-To: <20260813-imposing-cunning-raven-fcad40@quoll>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Thu, 13 Aug 2026 16:40:37 +0800
X-Gm-Features: AUfX_mye9jktuvnjIqJR--jOE-SjnI1mJ-tyZFHa_AmY4WZ5Toj9QFewcV4UoB8
Message-ID: <CAPwA33L-x=H+FU6-c9A8uKqhKbsfxcAJaaG49rUfnjvWk0f5mA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_014051_462878_D6D86920 
X-CRM114-Status: GOOD (  24.67  )
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

SSBhbSBzb3JyeSBhYm91dCB0aGlzLiBTaW5jZSBJdCdzIG15IGZpcnN0IHRpbWUgdG8gY29tbWl0
IHBhdGNoIHRvIHRoZQprZXJuZWwsIEkgd2FudCB0byBtYWtlIHN1cmUgbXkgY29kZSBhbmQgcmVw
bHkgaXMgY29ycmVjdCwKc28gSSBhY3R1YWxseSBwYXN0ZSBteSByZXBseSB0byBBSSBiZWZvcmUg
SSBzZW5kLCBsZXQgQUkgdG8gcmV3cml0ZSBteQp3b3Jkcy4gSSB3aWxsIGZpeCBteSBhcHByb2Fj
aCwgYW5kIG1ha2Ugc3VyZSBWNCBhbmQgYWZ0ZXJ3YXJkIHdvcmsKaXMgd29ydGggdG8gcmV2aWV3
LgoKQmVzdCByZWdhcmRzLApKYXNvbgoKS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwu
b3JnPiDmlrwgMjAyNuW5tDjmnIgxM+aXpemAseWbmyDkuIvljYgzOjU55a+r6YGT77yaCj4KPiBP
biBUaHUsIEF1ZyAxMywgMjAyNiBhdCAxMjozMzo1MlBNICswODAwLCDmpYrmmbrmiJAgd3JvdGU6
Cj4gPiBIaSBTZWJhc3RpYW4sCj4gPgo+ID4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lgo+ID4KPiA+
ID4gWW91ciBuZXcgYmluZGluZyBpcyBsYWNraW5nIHRvby4gSWYgeW91IHNlbGVjdCA8Jm1pcGlk
Y3BoeTAgUEhZX1RZUEVfQ1NJPgo+ID4gPiB5b3UgZGVmaW5lZCB0aGUgZGlyZWN0aW9uIG9mIHRo
ZSBQSFksIGJ1dCB3aWxsIGl0IG9wZXJhdGUgaW4gQy1QSFkgb3IgaW4KPiA+ID4gRC1QSFkgbW9k
ZT8KPiA+Cj4gPiBZb3UgYXJlIHJpZ2h0LCBhbmQgSSBhbSBzb3JyeSAtIHRoaXMgaXMgYSByZWdy
ZXNzaW9uIEkgaW50cm9kdWNlZCBpbiB2My4KPiA+Cj4gPiB2MiBhbHJlYWR5IGRlc2NyaWJlZCB0
aGVzZSBhcyB0d28gc2VwYXJhdGUgY2VsbHM6IHRoZSBmaXJzdCBzZWxlY3RlZCB0aGUKPiA+IGVs
ZWN0cmljYWwgbGF5ZXIsIGFuZCB0aGUgc2Vjb25kIHNlbGVjdGVkIHRoZSBkaXJlY3Rpb24uIE1p
Y2hhZWwgUmllc2NoCj4gPiBzdWdnZXN0ZWQgdXNpbmcgdGhlIGdlbmVyaWMgUEhZX1RZUEVfRFNJ
L1BIWV9UWVBFX0NTSSBjb25zdGFudHMgZm9yIHRoZQo+ID4gc2Vjb25kIGNlbGwgaW5zdGVhZCBv
ZiB0aGUgUm9ja2NoaXAtcHJpdmF0ZSBSS19EQ1BIWV9ESVJfKiBjb25zdGFudHMgWzFdLAo+ID4g
YW5kIFZpbm9kIEtvdWwgYWdyZWVkIFsyXS4KPiA+Cj4gPiBJbiB2Mywgd2hpbGUgbWFraW5nIHRo
YXQgY2hhbmdlLCBJIGFsc28gbWlzdGFrZW5seSBjb2xsYXBzZWQgdGhlIHR3byBjZWxscwo+ID4g
aW50byBvbmUuIFRoYXQgaXMgd2hhdCBsb3N0IHRoZSBlbGVjdHJpY2FsLWxheWVyIGluZm9ybWF0
aW9uIHlvdSBwb2ludGVkCj4gPiBvdXQuCj4gPgo+ID4gRm9yIHY0LCBJIHdpbGwgZ28gYmFjayB0
byB0aGUgdjIgbGF5b3V0IGFuZCBvbmx5IHJlbmFtZSB0aGUgc2Vjb25kIGNlbGwuCj4gPiBUaGlz
IGtlZXBzIHRoZSB0d28gZGltZW5zaW9ucyBzZXBhcmF0ZSwgd2l0aCBlYWNoIGNlbGwgZGVzY3Jp
YmluZyBvbmUKPiA+IHRoaW5nOgo+ID4KPiA+IC8qIE1JUEkgRFNJIGhvc3QgLSB0aGUgdHJhbnNt
aXR0ZXIgKi8KPiA+IHBoeXMgPSA8Jm1pcGlkY3BoeTAgUEhZX1RZUEVfRFBIWSBQSFlfVFlQRV9E
U0k+Owo+ID4KPiA+IC8qIE1JUEkgQ1NJLTIgaG9zdCAtIHRoZSByZWNlaXZlciAqLwo+ID4gcGh5
cyA9IDwmbWlwaWRjcGh5MCBQSFlfVFlQRV9EUEhZIFBIWV9UWVBFX0NTST47Cj4gPgo+ID4gVGhl
IHNhbWUgYXBwbGllcyB0byBDLVBIWSwgc28gdGhlIGJpbmRpbmcgY2FuIGV4cHJlc3MgYWxsIGZv
dXIgY29tYmluYXRpb25zCj4gPiB3aXRob3V0IGFueSBmdXJ0aGVyIGNoYW5nZXM6Cj4gPgo+ID4g
cGh5cyA9IDwmbWlwaWRjcGh5MCBQSFlfVFlQRV9DUEhZIFBIWV9UWVBFX0RTST47Cj4gPiBwaHlz
ID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBFX0NQSFkgUEhZX1RZUEVfQ1NJPjsKPiA+Cj4gPiBUaGUg
ZHJpdmVyIGFjY2VwdHMgYWxsIGZvdXIgY29tYmluYXRpb25zIGF0IHBoeV9nZXQoKSB0aW1lIGFu
ZCByZXR1cm5zCj4gPiAtRU9QTk9UU1VQUCBmcm9tIHBvd2VyX29uKCkgZm9yIHRoZSBDLVBIWSBj
b21iaW5hdGlvbnMsIGFzIGl0IGRpZCBiZWZvcmUKPiA+IHRoaXMgc2VyaWVzLiBCb2FyZHMgdGhh
dCBvbmx5IHdpcmUgdXAgdGhlIHRyYW5zbWl0dGVyIGtlZXAKPiA+ICcjcGh5LWNlbGxzID0gPDE+
Jywgc28gdGhlIGV4aXN0aW5nIGluLXRyZWUgZGV2aWNlIHRyZWVzIHJlbWFpbiB1bmFmZmVjdGVk
Lgo+ID4KPiA+IEJlZm9yZSBzZW5kaW5nIHY0LCBJIHdpbGwgZ28gdGhyb3VnaCB0aGUgY29kZSBh
bmQgY29tbWl0IG1lc3NhZ2VzIGFnYWluLAo+ID4gc28gdGhhdCB0aGUgcmVhc29uaW5nIGFib3Zl
IGlzIGNhcHR1cmVkIGluIHRoZSBjb21taXRzIHRoZW1zZWx2ZXMgcmF0aGVyCj4gPiB0aGFuIG9u
bHkgaW4gdGhpcyB0aHJlYWQuIEkgd2lsbCBhbHNvIHJlLXRlc3QgdGhlIHNlcmllcyBvbiB0aGUg
Ym9hcmQuCj4KPiBXaGF0IGlzIHdpdGggdGhpcyBwcmFjdGljZSAodGhpcmQgcG9zdGluZyBJIHNl
ZSB0aGlzIHdlZWspIG9mIHBhc3RpbmcKPiBhcyByZXBseSBwcm9tcHRzL3Rhc2tzIGZvciBBST8K
Pgo+IEFsbCB0aGlzIGlzIGp1c3Qgd3JvbmcgYXBwcm9hY2ggYW5kIHlvdXIgcGF0Y2hlcyB3aWxs
IGJlIGlnbm9yZWQgaWYgeW91Cj4gYWN0IGFzIGEgcHJveHkgYW5kIGtlZXAgcGxheWluZyB3aXRo
IHVzIHRoYXQgd2F5Lgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

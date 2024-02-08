Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9BC5C4829C
	for <linux-phy@archiver.kernel.org>; Thu,  8 Feb 2024 16:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmaASO4FUA9GuVJE+1UgXbkzD8/803M3VyjlANCHCuo=; b=IdDBIbT7ideREP
	gcS2782C5eHa7gMTz6yOLSn86NIh08OQGPsdJlyJ2YtNlrR5jhPg7qc5WEWrm8sbRVEhqBGqw6e+N
	hjTjRBq2Q9mEdBA+alutcFl2JHf3ENv6dxm5U7LzICg4FqFDJyQoykXHuZ+75YQoEWdGU4B4hizn8
	6gtMbbfk2gNnYOaJF0pGqJOQaFApbLQ7A/k/GZQs9rpIyxPJ4InbYRgglUwGlp/kMV/BXS+C3/1Qr
	yrT2uQrAWyhLkFfAAPl/xi34Clo1s78CtVQ8YbFTDtwfcqp1NVA7WoLR52gPpsaBMZC/EycdB64Ch
	lwd3l+a2di27ggijieRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY7fS-0000000EMgX-1Vjq;
	Thu, 08 Feb 2024 16:54:30 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY7fC-0000000EMbM-0cdC
	for linux-phy@lists.infradead.org;
	Thu, 08 Feb 2024 16:54:16 +0000
Received: by mail-vk1-xa31.google.com with SMTP id 71dfb90a1353d-4c0232861afso735637e0c.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Feb 2024 08:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1707411242; x=1708016042; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+WnqOpqwrKMN/Ii8lvXs8Tih6LFYmoJMhLY7pjgCWgA=;
        b=tNDoLMhuuoDQw5hqE3bwtU+TgYQ3Wxh3eNe6koK0ZpBEBHXMhY+QUc7GoubxjYbUho
         WcYjcmf82zGGRIR4znfixXm52TZqhTo9iNl4QZTw2MWPOeG6Wk5+KNe0SKinhry2wSyh
         IR/UM/kSFrPXDrmUTKz/iM8jQ/OeMCJJvbaIqkQbKW69fRi+KNeG8L0SIGQa098m/sqk
         0A3sht65xdDrrRgLVxP/TG5SyxLNAcLVCPMv4rV9UE3GUjBj9drIQ/ycZavjrEBuuJZ0
         EhRuDHdyZ7tWetty2umTJz7OnMAzpbjotsUUYQxbWcBu35nIPmkPrUhUJBNDEwbgOeQf
         AdIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707411242; x=1708016042;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+WnqOpqwrKMN/Ii8lvXs8Tih6LFYmoJMhLY7pjgCWgA=;
        b=bRUbB9UEIdzqh086ZxTsS6EO5B4fGvin7aDWXTXnLWk3pGT9OXHudtelidx8QX4tHC
         NxZNtAWJlxxtEYXhxWpBrwMbE/9uYszWG8Q1TxhYiliCXU0dQU9MchUU8ZAtQjGuiZ6r
         oZU6XbHqsGmDbNiVn/4cNIxcJsknkZJh3E/Y6dRw0QGs5J7WnOF5d0KWm3VbBb2edfEz
         lHyOBiGfyx/kyuULPwK0cIY2q1lbo4D55GVTUnIPIOzYYLIC2kLb8k0p+XiBqxY58M5e
         wmgxQVXun5mBPkpAPRXof1J7tMsVTzj/pbJ+LJKttzEwBUiaHMWyzGm2pOW/o/jzwV00
         rvcA==
X-Gm-Message-State: AOJu0YzNfOmC3Llo/EuPkLMC8407F9E+DOExC9hIRpWrF5UaNWr4Z096
	CIlGUfP93mo+Zlu9xNfKaAsUpLDvuBS80fyUEJOrbAGDd4xlaR4iaS0QrSnzya5AGtwI2rDhkSC
	U1EWB0Dv9P6L2y13AUAol1WZtXHVOlS+xIQBO2w==
X-Google-Smtp-Source: AGHT+IHz0CjsWbNfwLVsvbsu2GnwvD6mVTutx2G227R7kTzOxqJNrEtSn6iMso2qq7PPj4o9RHpX9LDEy5dwka8VO8g=
X-Received: by 2002:a1f:e681:0:b0:4c0:2416:6fc2 with SMTP id
 d123-20020a1fe681000000b004c024166fc2mr161766vkh.5.1707411241926; Thu, 08 Feb
 2024 08:54:01 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-1-84e55da52400@bootlin.com> <20240116074333.GO5185@atomide.com>
 <31c42f08-7d5e-4b91-87e9-bfc7e2cfdefe@bootlin.com> <CACRpkdYUVbFoDq91uLbUy8twtG_AiD+CY2+nqzCyHV7ZyBC3sA@mail.gmail.com>
 <95032042-787e-494a-bad9-81b62653de52@bootlin.com>
In-Reply-To: <95032042-787e-494a-bad9-81b62653de52@bootlin.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 8 Feb 2024 17:53:50 +0100
Message-ID: <CAMRc=MfSkuYocKMGyVjqQ5qk=MSkR_W4F5PNs+M6HwBkmjcK0Q@mail.gmail.com>
Subject: Re: [PATCH 01/14] gpio: pca953x: move suspend/resume to suspend_noirq/resume_noirq
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Tony Lindgren <tony@atomide.com>, 
	Andy Shevchenko <andy@kernel.org>, Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_085414_453399_440A71AD 
X-CRM114-Status: GOOD (  22.05  )
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

T24gVGh1LCBGZWIgOCwgMjAyNCBhdCA1OjE54oCvUE0gVGhvbWFzIFJpY2hhcmQKPHRob21hcy5y
aWNoYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIDEvMjgvMjQgMDE6MTIsIExpbnVzIFdh
bGxlaWogd3JvdGU6Cj4gPiBPbiBGcmksIEphbiAxOSwgMjAyNCBhdCA2OjAx4oCvUE0gVGhvbWFz
IFJpY2hhcmQKPiA+IDx0aG9tYXMucmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPj4gT24g
MS8xNi8yNCAwODo0MywgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPiA+Pj4gKiBUaG9tYXMgUmljaGFy
ZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+IFsyNDAxMTUgMTY6MTZdOgo+ID4+Pj4gU29t
ZSBJT3MgY2FuIGJlIG5lZWRlZCBkdXJpbmcgc3VzcGVuZF9ub2lycS9yZXN1bWVfbm9pcnEuCj4g
Pj4+PiBTbyBtb3ZlIHN1c3BlbmQvcmVzdW1lIGNhbGxiYWNrcyB0byBub2lycS4KPiA+Pj4KPiA+
Pj4gU28gaGF2ZSB5b3UgY2hlY2tlZCB0aGF0IHRoZSBwY2E5NTN4X3NhdmVfY29udGV4dCgpIGFu
ZCByZXN0b3JlIHdvcmtzCj4gPj4+IHRoaXMgd2F5PyBUaGVyZSdzIGkyYyB0cmFmZmljIGFuZCBy
ZWd1bGF0b3JzIG1heSBzbGVlcC4uIEkgd29uZGVyIGlmCj4gPj4+IHlvdSBpbnN0ZWFkIGp1c3Qg
bmVlZCB0byBsZWF2ZSBncGlvLXBjYTk1M3ggZW5hYmxlZCBpbiBzb21lIGNhc2VzCj4gPj4+IGlu
c3RlYWQ/Cj4gPj4+Cj4gPj4KPiA+PiBZZXMgSSB0ZXN0ZWQgaXQsIGFuZCBpdCB3b3JrcyAod2l0
aCBteSBzZXR1cCkuCj4gPj4gQnV0IHRoaXMgcGF0Y2ggbWF5IGhhdmUgYW4gaW1wYWN0IGZvciBv
dGhlciBwZW9wbGUuCj4gPj4gSG93IGNvdWxkIEkgbGVhdmUgaXQgZW5hYmxlZCBpbiBzb21lIGNh
c2VzID8KPiA+Cj4gPiBJIGd1ZXNzIHlvdSBjb3VsZCBkZWZpbmUgYm90aCBwY2E5NTN4X3N1c3Bl
bmQoKSBhbmQKPiA+IHBjYTk1M3hfc3VzcGVuZF9ub2lycSgpIGFuZCBzZWxlY3RpdmVseSBiYWls
IG91dCBvbiBvbmUKPiA+IHBhdGggb24gc29tZSBzeXN0ZW1zPwo+Cj4gWWVzLgo+Cj4gV2hhdCBk
byB5b3UgdGhpbmsgaWYgSSB1c2UgYSBwcm9wZXJ0eSBsaWtlIGZvciBleGFtcGxlICJ0aSxwbS1u
b2lycSIgdG8KPiBzZWxlY3QgdGhlIHJpZ2h0IHBhdGggPwo+IElzIGEgcHJvcGVydHkgcmVsZXZh
bnQgZm9yIHRoaXMgdXNlIGNhc2UgPwo+CgpJIHByZWZlciBhIG5ldyBwcm9wZXJ0eSB0aGFuIGNh
bGxpbmcgb2ZfbWFjaGluZV9pc19jb21wYXRpYmxlKCkuClBsZWFzZSBkbyBydW4gaXQgYnkgdGhl
IERUIG1haW50YWluZXJzLCBJIHRoaW5rIGl0IHNob3VsZCBiZSBmaW5lLgpNYXliZSBldmVuIGRv
bid0IGxpbWl0IGl0IHRvIFRJIGJ1dCBtYWtlIGl0IGEgZ2VuZXJpYyBwcm9wZXJ0eS4KCkJhcnQK
Cj4gUmVnYXJkcywKPgo+ID4KPiA+IFdvcnN0IGNhc2UgdXNpbmcgaWYgKG9mX21hY2hpbmVfaXNf
Y29tcGF0aWJsZSgibXksbWFjaGluZSIpKS4uLgo+ID4KPiA+IFlvdXJzLAo+ID4gTGludXMgV2Fs
bGVpago+IC0tCj4gVGhvbWFzIFJpY2hhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQg
S2VybmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQo+CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

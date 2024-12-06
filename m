Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A8D6E7716E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 00:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cl2WQ2OTV98GD48Iiu2NCsiswS+r1z+cHnRREzj/PX4=; b=VZn3qq4iRNa8fF
	wLixt4y8XdRHhQLRrJnE93zaeRU9cPhUhL5ZmyB3+VQCMBmJmNVX0SOfM/rh8SMmPj7JokBIDTGsf
	vmeX+nfOia78Cx8fa6qXfM33Ka1F25kZdPEJ0Q33Zd8Q0GKqmX4lpe7zc8ezpaZnfA0/GUx9hvI7A
	kPY8NRDyfasEcYdFO9g951RC7nxgi3vY3w2oXNFDRKqt+yRZymEnqPJklhKp8SxxeY2AiAlNu97qM
	FsdIoH+fLi4rT/5mzdDMiIiPNfGEJl+4eP5V2/jduXa+bbzyuvDsGdK6NWJYbbAushvqan7iBs0IN
	xLbc+6Vd4tAdU8k1btUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLqI-000000001U3-1XUK;
	Fri, 06 Dec 2024 00:05:10 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLqF-000000001Sj-0Wwn
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 00:05:08 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53e1be0ec84so1809250e87.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733443506; x=1734048306; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4mffP7SIqpVqHwqmdEnMFI8Mhd4D6LAYDdX9afu8rwI=;
        b=SRpLn8Gj+PlozOS2I1k9I++/AgDZM/qg/vcDOdiKL2MWzC3Afo2uz+9cVq0NK9F0Zv
         oa54KACpe9H+5Aijgkf/LfZWktUxwFYiusk9Rgkncb3YRb8OgZCzcs+IgvIIN1nK+ofk
         jBSs0lFFtseK3CiDfKBbM6/ERqIvTfi47mAZl9cpUKvbYWn7vjxUtYFhd39fmCW86xcr
         akR7nFU5igOaAZ43aaKvgECYoO4w2baidOOt/zo5M2sC3XtO/Kwvg4ifmDns0AdDiLzS
         3lhXDXDHIJsTmzdO7d5n9gti8jxKIYNKLUr7juma90NoiX/Cl6yTsh2U3JrCn8pMyzcE
         baIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733443506; x=1734048306;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mffP7SIqpVqHwqmdEnMFI8Mhd4D6LAYDdX9afu8rwI=;
        b=Mbealqz/qYRa9JhjAnaTnDBYtTCGtNFEL5IW4to9plaKt0x/A6MCtV1l7dRuErm79i
         4RGaHyRaTWpx+7BrIPxuTgLr57IPwh0TpR9gY3obIa9uA6c8ZgMmOQXnK2VuaS+qN4pa
         KosyzUIvtp2Scc+VDxpZXICzPUv3wnle9iox/AKy3cwXv3q1XZb5B1kAk1qEVds7lGrM
         ovD4JNfmp0jogh5f12s1Sb+dVe96zVI7D+MHlcEVpe+1HH1dw22Ga9+5X+LcVRxSwtSp
         JHKLqzMBgEVnPXDKUm78pdWg0UiqJRZbfDSFJQ2m3Nh8MDnnuWcygVAMsZquNg5aQNQT
         dKmA==
X-Forwarded-Encrypted: i=1; AJvYcCW58xeeQ0nJJYJ/C5nYFpAQVtmpI7VS/5Z/0Iqn01+XI3a9f91GH/lmpK1bWTLf9JIsRLfRieh09Fs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4wANCckVdyHDwZdrnfd7crVXZcjiyWt15jyA9zWwiaE4U8idy
	ay4nqa0v2i7fqIF/f78HNyq/229BzHTtPF8vIiDpe3jNs6tMKTlkrRrgn3uM/d22i+bM66wRe9q
	l7u3xUxs/dhjSUP7ZKInTG1nT/AJaWWPLXm3V
X-Gm-Gg: ASbGncsxq+MUotJsBfVTwcGwMRW/MS7UcuTOqpN24YoA+uJ28YaBtyIOrRqb1OU1zMT
	3OsgB3yW9M799lblPruv6KNVYWXnmJA==
X-Google-Smtp-Source: AGHT+IEphwAKG+akjlfTDJM0cFC6ySOTXKmmpvLObu98Xq16kqT8AeY48zqrBxP7D7gn8VnXD7qHI6i/RHkPxXyECew=
X-Received: by 2002:a05:6512:1cb:b0:53e:3103:b967 with SMTP id
 2adb3069b0e04-53e3103ba29mr28490e87.35.1733443505497; Thu, 05 Dec 2024
 16:05:05 -0800 (PST)
MIME-Version: 1.0
References: <20241204221925.2248843-1-sashal@kernel.org> <20241204221925.2248843-3-sashal@kernel.org>
In-Reply-To: <20241204221925.2248843-3-sashal@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Dec 2024 16:04:29 -0800
Message-ID: <CAGETcx82VRmbU-UJ3iQxipCWncJPB_N9rO702K5AoVitpLNo9g@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.15 3/5] phy: tegra: xusb: Set fwnode for xusb
 port devices
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Jon Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Thierry Reding <treding@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jckuo@nvidia.com, 
	vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_160507_181350_ED38CB83 
X-CRM114-Status: GOOD (  17.02  )
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

T24gV2VkLCBEZWMgNCwgMjAyNCBhdCAzOjMw4oCvUE0gU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IEZyb206IFNhcmF2YW5hIEthbm5hbiA8c2FyYXZhbmFrQGdvb2ds
ZS5jb20+Cj4KPiBbIFVwc3RyZWFtIGNvbW1pdCA3NGZmZTQzYmFkM2FmM2UyYTc4NmNhMDE3YzIw
NTU1NWJhODdlYmFkIF0KPgo+IGZ3bm9kZSBuZWVkcyB0byBiZSBzZXQgZm9yIGEgZGV2aWNlIGZv
ciBmd19kZXZsaW5rIHRvIGJlIGFibGUgdG8KPiB0cmFjay9lbmZvcmNlIGl0cyBkZXBlbmRlbmNp
ZXMgY29ycmVjdGx5LiBXaXRob3V0IHRoaXMsIHlvdSdsbCBzZWUgZXJyb3IKPiBtZXNzYWdlcyBs
aWtlIHRoaXMgd2hlbiB0aGUgc3VwcGxpZXIgaGFzIHByb2JlZCBhbmQgdHJpZXMgdG8gbWFrZSBz
dXJlCj4gYWxsIGl0cyBmd25vZGUgY29uc3VtZXJzIGFyZSBsaW5rZWQgdG8gaXQgdXNpbmcgZGV2
aWNlIGxpbmtzOgo+Cj4gdGVncmEteHVzYi1wYWRjdGwgMzUyMDAwMC5wYWRjdGw6IEZhaWxlZCB0
byBjcmVhdGUgZGV2aWNlIGxpbmsgKDB4MTgwKSB3aXRoIDEtMDAwOAo+Cj4gUmVwb3J0ZWQtYnk6
IEpvbiBIdW50ZXIgPGpvbmF0aGFuaEBudmlkaWEuY29tPgo+IENsb3NlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzIwMjQwOTEwMTMwMDE5LjM1MDgxLTEtam9uYXRoYW5oQG52aWRpYS5j
b20vCj4gVGVzdGVkLWJ5OiBKb24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KPiBTdWdn
ZXN0ZWQtYnk6IE7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIDxuZnJhcHJhZG9AY29sbGFib3JhLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5ha0Bnb29nbGUuY29t
Pgo+IEFja2VkLWJ5OiBUaGllcnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgo+IExpbms6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDEwMjQwNjEzNDcuMTc3MTA2My0zLXNhcmF2
YW5ha0Bnb29nbGUuY29tCj4gU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVn
a2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2Fz
aGFsQGtlcm5lbC5vcmc+CgpBcyBtZW50aW9uZWQgaW4gdGhlIG9yaWdpbmFsIGNvdmVyIGxldHRl
cjoKClBTQTogRG8gbm90IHB1bGwgYW55IG9mIHRoZXNlIHBhdGNoZXMgaW50byBzdGFibGUga2Vy
bmVscy4gZndfZGV2bGluawpoYWQgYSBsb3Qgb2YgY2hhbmdlcyB0aGF0IGxhbmRlZCBpbiB0aGUg
bGFzdCB5ZWFyLiBJdCdzIGhhcmQgdG8gZW5zdXJlCmNoZXJyeS1waWNrcyBoYXZlIHBpY2tlZCB1
cCBhbGwgdGhlIGRlcGVuZGVuY2llcyBjb3JyZWN0bHkuIElmIGFueSBvZgp0aGVzZSByZWFsbHkg
bmVlZCB0byBnZXQgY2hlcnJ5LXBpY2tlZCBpbnRvIHN0YWJsZSBrZXJuZWxzLCBjYyBtZSBhbmQK
d2FpdCBmb3IgbXkgZXhwbGljaXQgQWNrLgoKSXMgdGhlcmUgYSBwcmVzc2luZyBuZWVkIGZvciB0
aGlzIGluIDQuMTk/CgotU2FyYXZhbmEKCj4gLS0tCj4gIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2Iu
YyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jIGIvZHJpdmVycy9waHkv
dGVncmEveHVzYi5jCj4gaW5kZXggYmY3NzA2YmYxMDFhNi4uOWEyMDRmNzhmNTVkYiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS90ZWdy
YS94dXNiLmMKPiBAQCAtNTM3LDcgKzUzNyw3IEBAIHN0YXRpYyBpbnQgdGVncmFfeHVzYl9wb3J0
X2luaXQoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCwKPgo+ICAgICAgICAgZGV2aWNlX2lu
aXRpYWxpemUoJnBvcnQtPmRldik7Cj4gICAgICAgICBwb3J0LT5kZXYudHlwZSA9ICZ0ZWdyYV94
dXNiX3BvcnRfdHlwZTsKPiAtICAgICAgIHBvcnQtPmRldi5vZl9ub2RlID0gb2Zfbm9kZV9nZXQo
bnApOwo+ICsgICAgICAgZGV2aWNlX3NldF9ub2RlKCZwb3J0LT5kZXYsIG9mX2Z3bm9kZV9oYW5k
bGUob2Zfbm9kZV9nZXQobnApKSk7Cj4gICAgICAgICBwb3J0LT5kZXYucGFyZW50ID0gcGFkY3Rs
LT5kZXY7Cj4KPiAgICAgICAgIGVyciA9IGRldl9zZXRfbmFtZSgmcG9ydC0+ZGV2LCAiJXMtJXUi
LCBuYW1lLCBpbmRleCk7Cj4gLS0KPiAyLjQzLjAKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

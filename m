Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4185E7716E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 00:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlOWalpb/CL4hWuLynFydEHe2X5rxthdbbxwV8lpJw0=; b=I2ijJcXyJbBSEw
	b2GhRnI95Q88jwDbZk3qVCD7/wsyGGgSGOt4Ha5ISUxc8I89PuHiL4xrzcS5J7c9ssSLy2tw7GTE/
	/iWfYi7arRDOpjLWxOxich2Gor2DONxctsf4JkIAsBAcSARDiVISwrTYb7hZ/tNVfrRVLk6736Xrg
	uWwfceQOlGii44ZHK8iFpFFpaKQAn0OdzAyj0BVM5KP2WqfvyDIQhUPTpECxCcRoaF4oGL6rBl8jO
	uNnXEuDCCIJXh6KLaoFtOi+Vylf/lqU19H8av0D9ntHDeMEkBkDsKp20mRukiwsZ1N2kD/RIrON05
	JHQtXbC1yI6ybtUUqHgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLqY-000000001YB-2nJn;
	Fri, 06 Dec 2024 00:05:26 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLqW-000000001XQ-2KVV
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 00:05:25 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53dd2fdcebcso1934873e87.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733443523; x=1734048323; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H5RtrZRI/1Z/nEZqE6L75MMu2O/LqxV0qtQGfh6HrqA=;
        b=TLhrReJhTwn5hXd5ZIOWn2h8Ukrtfs+Deflnlo+bGpBKvpMEurl/dgeCoIWYBI5lQS
         I1qxLpavI45XR02bCe4JadfxTLaHN18DShEnDstjq8Bi/xifLHlZE51T4s72D4eLrjwH
         wyn0Xn+8EqacKokhLCicsa9YTSCGiN0DC4s7Cqhy+ousvicimejNJW1ONlqxPukX+CmI
         gPM5uqlV52nxbfSnwyuUjIJQbI2rmPE/MSPxd03AjKs7he5S2bQntr0A0ck+A4mYtr+E
         kSYErWl5FkZLpLdpxLdSY1QnC+Dv3SMf8fKxL3SXz9B94LJO56J0DFGfkVw/nZQ/ikCl
         rcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733443523; x=1734048323;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H5RtrZRI/1Z/nEZqE6L75MMu2O/LqxV0qtQGfh6HrqA=;
        b=VhWQ3LQ72Xm1RwAesvUiuBr2cG1DzJkwy74d+FQNvXE0rmmTHa+seJNI0GS61EU6i8
         HAJLf1ecsB8L1vPXbBI5tiYtlojsBbDR4ufsb/TGErA+G2ztOhBNN7j+Rwt63+SZZQIJ
         CeCEpE8r/xyRnm6803XuHTG+dOJbyF509GS4o8Ys5EvRIAn7Lx9bkhZwYBBEdy28k7Ky
         bLXR/C3wWmcrZ/4X/mI/KlJsXrAGC1XvRNrCbrrxc+n/7wmueA0rOJI8//K0kBH3x95Y
         8OHe4TOHW35n3s0rQ/5skQdGIeiyANumQUtz4LzAg1KkOhBwYGl6ztOk8/G53C0Pt1Q5
         O7gA==
X-Forwarded-Encrypted: i=1; AJvYcCVGbIAj8MxGyPDwHw5u1vWHqnv9TLhf6ZQslgZsQfoc1PYmwnPO1HZgLA1K22005Xr7pv6zCVk+IUk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJny7txtxFoszC1Wl7djxexl/8ZhI3DeHuUwps7spX1N48YV8C
	ogQukOQqX+5iLuVuLgy06AwvfgulEiGfgu44OCvlrkDR0UhRotfFoX3sUGtctIUYnzcMPzu+A5P
	ag4nPhgkrIsrmzEkhMH7c1BKAUN/YytkuWqhsflw8oyyfBIbWN9Pt
X-Gm-Gg: ASbGncuuLgXmLmZSVV8K3ibiw56DvqbzZdCK5/v0LX45QMwTYZq+ogFXKSJcAkEEdaG
	warSxU2EK32s3B7/q3Lluqscx+cwgVg==
X-Google-Smtp-Source: AGHT+IFWOhrrumLva06Fo2cZYMRAb2M405YCAEMmk5ILPh80o6m8HUDKsIjwa29hzHHjQIZ46RNwRiWk4LAYzA6au4A=
X-Received: by 2002:a05:6512:68e:b0:53e:1f14:f6be with SMTP id
 2adb3069b0e04-53e2c2e8a9cmr367734e87.38.1733443522467; Thu, 05 Dec 2024
 16:05:22 -0800 (PST)
MIME-Version: 1.0
References: <20241204221859.2248634-1-sashal@kernel.org> <20241204221859.2248634-5-sashal@kernel.org>
In-Reply-To: <20241204221859.2248634-5-sashal@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Dec 2024 16:04:44 -0800
Message-ID: <CAGETcx_tdhb80X0-sWSBTskY8dMsRr0oV08-=Z_j_yPocWf7cg@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 6.1 5/8] phy: tegra: xusb: Set fwnode for xusb
 port devices
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Jon Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Thierry Reding <treding@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jckuo@nvidia.com, 
	vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_160524_621296_F815FAC3 
X-CRM114-Status: GOOD (  17.08  )
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
dGVncmEveHVzYi5jCj4gaW5kZXggZGMyMmIxZGQyYzhiYS4uYWEwNTBhZWEyZGY1OCAxMDA2NDQK
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

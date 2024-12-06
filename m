Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA2A2E7716E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 00:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqMb7FoTZy1Qw/4tqBcB+NfMojXUeAMmC7MMOecxDh0=; b=jBj2MOI/pu2gW2
	UnePWVhWm1G2JYOVSstjOfBd0aZKtmbk13koqLlA0oAhTE5z4atinh4uXIt4W1VB3MuI0C0jPe+YU
	ibBDHqvnZ6AzrPI1wD7j+9Eoq7NCB2uYaX1zwB6DTipJhmTWCtr+ebMOHAIO1Dx72urBERJvMh7Hp
	szJzy4vrxxCxDrJ8Pu6uATmMGWXJUOyZmNU0JdqyLB8UGRVZkS7ahllimEcxTMbu3ou98LLdPi1Ta
	uZfT3ueJslot5+uTGQ8i5ZLmplF8TRyICvqaCJMNOArVB/bf0MpKgViVZTJUThIgs00iqFIgVPf1t
	+lXG19PE+tvpb9BJGesA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLrk-000000001qc-0pIe;
	Fri, 06 Dec 2024 00:06:40 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLqu-000000001ec-04jE
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 00:05:49 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-53e21990bcbso1643744e87.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733443546; x=1734048346; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P3/q1ekefyKSw21VhHKqxx/fV6+Xb8BjKlvjw8MK6pw=;
        b=HKzvZfmapu9spK/C0kzSDh3JENdPjNMvDhGgPUqzL/HM5y+vqdGZaGqxhBXXPZKnog
         oNoDdeARy1xO0VylH1XGOvBS4IuXgDGmpR72y2d3E+/71p97jhyBBolYJL21el6Sk5dL
         z6XKNQwqoDsFIDnqVkBQgAiFUxBzrTMQAoLxyP4qOvnds7GZVIT59mBLTiLgVLJM/RoV
         DY5oh2qaK9y6eXRFeybJ757t2AWo7WFhE1NROqimhSyhueEGqn5FGzh0UKHYxFEjcLnt
         wGc50S88rzkTkIflrMLMjIfIOg56ecvijLnwj81RgTQw0QbEDTsxKA3rJginNl/qcn42
         wkgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733443546; x=1734048346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P3/q1ekefyKSw21VhHKqxx/fV6+Xb8BjKlvjw8MK6pw=;
        b=fmxbfInPOUe+hHetDQJ79SufuZFRbD437NNRNB3FrIWBeWEX4COjZtDRsJDIq97nsp
         dDyowjtzcinRDW1kXP0nB0+B9FNcY5uB3/9n7t+zFEazRfgc/KcquDciCLnXJbDp8VGh
         y5M0YNi69jkVDsMDZD0xzmq3EFZ3S3csB4zodcR9PUeg8JenANitsOtFOWqX6ck3+thn
         OplyU5pybs8AQMUSlp5A+X5AnR9cWC3xoP9mYJn5ah1n0JjWMIfIUqvnNjcP80AY1NSv
         XJ7L+4iNyz3UAfzmd96QmGTmuhBqeC0HyxvmUbIL6X0o6mD7kdtpYY3M2cHuBZlfZszG
         6ovQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2erorPJhWJZlWrHOMYKXVPiFIqDYX1k/ZlLL4rVWsKEYZ8mWwcOH9GwRhtYBUwyYxeiJkeo2E4Mc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6lCCNpuX/wiKiz7zkYMNyvD5RVCr7/2abMbnbIw4V0sGM+kDr
	KMSDg032gE8kEJSLrkogTIdxkLtqwozB4p8Ka3RBVWkiijC/6Y9r/7jPImCxArNWllAmiKFNEec
	clKDZMvvHffpMEGhoWtYFhFiD2lIr7U0mjk50
X-Gm-Gg: ASbGncsC9YSqpHOyGpgQXHdH5dq6d4hMn9Gy9zTKFOhnYiGetnWgZn/t1CGAPRBD4Gh
	CVnm5y8/YPBmtRY292iU7V88hLdupiQ==
X-Google-Smtp-Source: AGHT+IGD47hfGvANCdu/H98cv4C8vaKdOhudEJLTzTOk1DJNMSQxpxDwRVMeaHp270RuqHTe3e6FAhnpSV68P4d69tg=
X-Received: by 2002:a05:6512:3b06:b0:53d:ef60:ca9d with SMTP id
 2adb3069b0e04-53e2c2ededcmr230836e87.55.1733443546368; Thu, 05 Dec 2024
 16:05:46 -0800 (PST)
MIME-Version: 1.0
References: <20241204221820.2248367-1-sashal@kernel.org> <20241204221820.2248367-5-sashal@kernel.org>
In-Reply-To: <20241204221820.2248367-5-sashal@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Dec 2024 16:05:09 -0800
Message-ID: <CAGETcx-RPvWq1DMGcuEneovA7Gs2WRp=pVQ9W_+A_Ywriq7UBw@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 6.6 05/10] phy: tegra: xusb: Set fwnode for xusb
 port devices
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Jon Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Thierry Reding <treding@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jckuo@nvidia.com, 
	vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_160548_084229_41151A16 
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

T24gV2VkLCBEZWMgNCwgMjAyNCBhdCAzOjI54oCvUE0gU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
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
dGVncmEveHVzYi5jCj4gaW5kZXggOTgzYTZlNjE3M2JkMi4uNzY1YWU1M2M4NTY2NCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS90ZWdy
YS94dXNiLmMKPiBAQCAtNTQzLDcgKzU0Myw3IEBAIHN0YXRpYyBpbnQgdGVncmFfeHVzYl9wb3J0
X2luaXQoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCwKPgo+ICAgICAgICAgZGV2aWNlX2lu
aXRpYWxpemUoJnBvcnQtPmRldik7Cj4gICAgICAgICBwb3J0LT5kZXYudHlwZSA9ICZ0ZWdyYV94
dXNiX3BvcnRfdHlwZTsKPiAtICAgICAgIHBvcnQtPmRldi5vZl9ub2RlID0gb2Zfbm9kZV9nZXQo
bnApOwo+ICsgICAgICAgZGV2aWNlX3NldF9ub2RlKCZwb3J0LT5kZXYsIG9mX2Z3bm9kZV9oYW5k
bGUob2Zfbm9kZV9nZXQobnApKSk7Cj4gICAgICAgICBwb3J0LT5kZXYucGFyZW50ID0gcGFkY3Rs
LT5kZXY7Cj4KPiAgICAgICAgIGVyciA9IGRldl9zZXRfbmFtZSgmcG9ydC0+ZGV2LCAiJXMtJXUi
LCBuYW1lLCBpbmRleCk7Cj4gLS0KPiAyLjQzLjAKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

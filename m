Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C62F2E7716E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 00:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTA/HMNSgdBAM3aypvhElzR4wFfbpgbV//tZfw8dExs=; b=V53vLx74Kg3vJF
	6z+FYg+HdM2kYPNh0J5hl4saAf+EKT972r2AnKmYHBHDIVOSEvCqHKBqzjBN25iPrxOsvOQkFczbc
	hBHTRJ60rU5+BaGd0bg1OkHGehHYXKXUcj9v+J4ZSvR1kSm3rU+lS9Hjxw9hYA4rqkWqUSHGfp8Jk
	ccgHJiNjUYP6iwiuWLU2GUzdRNn5x+jcKzCVX5wvZJGaMEa7g5SDnq4cOQ8CWDhlfFPRqHae7eiF4
	H/EGEgQeW4SO2c4UpZI2DUOM+Fb5ambWHvtQR4gWU1CbTqq1xMCO489/DpRRjEOW1VggNqKPCDBsI
	FUHgWgJ1rdDYFDSsuKbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLsl-00000000280-2MLL;
	Fri, 06 Dec 2024 00:07:43 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLrY-000000001nZ-0hzR
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 00:06:29 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53de79c2be4so1625127e87.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733443587; x=1734048387; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5UvGh6EOnV+tEG2ZRwFyVPJh9DPbnKKWL/LvEAvRqYI=;
        b=CKLqimRlSQirfYBYCihMNn0Bqjj5KSFCZMuG+S9U/b4/Ik6yYqafwj1FtQO8UFzN2o
         gLdpvWVTwV3jP1uXfy99zPxu5gVNB0YAw5Ii3ME5wsWKH9KoV3MSOgI6WHHvPoXYwbmQ
         x4yCs1Gb5aGjh+f4XZRsm1gkTPQ5p7/26Mx/G38IpAJ5DNHXiUWJtTF5Unz2q53HLUEK
         hKfG2TWAVgLrc6/vzBQqhlTvaoEz3r1ubNF8zy1SeGksSmqc9zFq26a8di/87+sPkgUN
         Pm0VvlEi30NYESRu31d7AtIb79tcVqeCbPZ+36IRRPxLbmvcgEmv+8qTSlc5jJh9zo5W
         14og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733443587; x=1734048387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5UvGh6EOnV+tEG2ZRwFyVPJh9DPbnKKWL/LvEAvRqYI=;
        b=jc880BmIfPSgIzcEuhFKXKZJEzPZM0/FjimhfXCUtAbbQ+uMbiozv3KinxmrDK2SoH
         xgIxx14E0kOQuPM3xmqXmjx2OAEe+RWwakBvrAfJz9EyBGKhxq2Jg/5/+vXRPrWhxkyP
         eWw3B5CmcK2OFEeMp2xX6eUdcqMqw7ck9ahaHO9y1THhdf30/9zE6OCdP345c2FHbW5q
         MwgOr0d7iS23wktNRh75A4judmFHcOSYCQ/tyUEbe2nyFjor64c37qfrXvzRRhib9i3P
         psjobSibOzrlQMxz/MwlCPfnsgyzVh3XuS0kZdjZhbprm1JOXpamgXWXG5SuiulwY43q
         SNLg==
X-Forwarded-Encrypted: i=1; AJvYcCW3y+AaatMigZoZTy1GEXaiLbcgzOLExQIdMBFQII7Wk2R7cnuMLcF+U0+Xe04+yU5CfmjvIQtYR3Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoJnTKXvCu8OFFK0a3uCiPsjbY27dDPhv/1a4wG/PXh/P4KLUK
	1gXqAuUmZZy9VxIl+1cTmxmsMkioJTsmp5A5DMWiE9+nyBmT2ZaLASEEignNaHIJVmxGAqhOmVU
	tF7pJyDBWh0tDZxQc2OaZkhLZdnDN9KdQevXI
X-Gm-Gg: ASbGncuztUcxuhMywjbuvwIuz2MjdA17rgrgZh0te1aVuVVCydEQYS+OVrSyu4yCx90
	YAzXoqI+LD5ecoDOuxcVcNSPYFiYvnQ==
X-Google-Smtp-Source: AGHT+IHX5x8YT8vafN6ekk1TbVsmb+8aDHy7nFhJeilXsENAEenxd424hEKN6feA90avQyEUsRnxLsZ3M/AV3xsrUVg=
X-Received: by 2002:a05:6512:3c8a:b0:53d:dd4c:aeaa with SMTP id
 2adb3069b0e04-53e2c2b1ad9mr224016e87.9.1733443586479; Thu, 05 Dec 2024
 16:06:26 -0800 (PST)
MIME-Version: 1.0
References: <20241204221726.2247988-1-sashal@kernel.org> <20241204221726.2247988-9-sashal@kernel.org>
In-Reply-To: <20241204221726.2247988-9-sashal@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Dec 2024 16:05:49 -0800
Message-ID: <CAGETcx9V_pWmgpX+HXC7tEQm4L1Fm6yghaXjJba4S-Y00um_=w@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 6.11 09/15] phy: tegra: xusb: Set fwnode for xusb
 port devices
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Jon Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Thierry Reding <treding@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jckuo@nvidia.com, 
	vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_160628_209915_557D13F4 
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
dGVncmEveHVzYi5jCj4gaW5kZXggY2ZkYjU0YjYwNzBhNC4uMGEyMDk2MDg1OTcxYyAxMDA2NDQK
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

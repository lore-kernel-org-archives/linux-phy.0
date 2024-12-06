Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 254A5E7716E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HGu9YCVIGpIFz3yMO33TzYZ/QlN875a85id1nztjGE=; b=fGkNG5mnAH90Rl
	gsG7aSoOxNMbufXmmmrXw46gYA4M4btcBF/4R2v8dHFPLN1oVReiIPtjsXXtRi5l5AIOw0SFsbHkC
	SAoWDp++YtBp1aKAqthOhAub/wST1O97ECIRF5D46fQKYStJcmn4HBld7Ujf2e0K5f91D/MlwesAY
	CRL1smogVrQOQkLb29Cevk37bal+XeaV9tiZpAak7f2wyVq5qaUuW0zzNB290dAL4QExHvVI8p+0H
	n5Key+88w0Dq1SmgGKxu0JlS17+yha0KdPCk0FrwLV/Ej1Orn8soCizZz4GSN6r7NaUw+Sz1Isjxq
	0rYcTuW9pJHDyljDDCig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLpV-000000001ED-0eZ0;
	Fri, 06 Dec 2024 00:04:21 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLpS-000000001Dm-2OhB
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 00:04:19 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53e1c3dfbb0so1425879e87.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733443455; x=1734048255; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xwj/agv7HQLTwHjDmPbArm4lVXi5bkqm0hUb9PKPpxk=;
        b=q3ySW87XQXMzRpUiq1d/m0Bw7ZHW9Hfou7Ywr6a59OlFMhHrpnuHHqGcu2ZwxQE3kO
         rcbaVXh+cD429RAPQLxrtwy1rHCIquUSsU2tKGrjPO8dBj5LCiyO5eG2nblPXhhUYoU6
         nR+j+8snfIxTbrPD2cI6DLInRxXnF9wP+qEJWYav1NiTJiJhnun//MhkiyXTVX/juEYd
         6C+4Dr5mpwZY7aNc1j6xxvsc8WAU3nA22eWjIbgdavCWybn5ayUe3VE2U9rgkojupidn
         hcjHlqq2XLtGkVU/UlPMuoCzP3oMr6ZIbZ6Nn2RtQZ+CSJrPY1jaYVrk4h6Y9BpRCwtb
         /fVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733443455; x=1734048255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xwj/agv7HQLTwHjDmPbArm4lVXi5bkqm0hUb9PKPpxk=;
        b=extGDRcMpWzCMy7JCa454tuETCXkVDDCuHdSlQrWxIKWl+hziu6zWFZ2yZOOE16lAs
         xIvW+hZFwXUBORNMG4l4sjZUVSR+UBk27qmHnrgceihZA2eJ7btU0nhmp2i3x7EimV+q
         s97aUtRijR7lU8rU/JObx6wf0nVtJVLF3EgrL4pFE2xfIlXiMmn3o+E+8hynIR/jucoz
         Yu5SeTsltEmgXY8fyr7zz/Vqr3S9GxweOBO4u3q2oAiNIam6h/CyeADnnLS4YUpZ62Ue
         J5tOunFyCLDzC6INl/EBFqBqVHZfJwJqrpxQi9Vh1iww3hAHZvdIT9LsIdiRk2+RbPQ8
         lBOg==
X-Forwarded-Encrypted: i=1; AJvYcCVLIcQmnSJbhjNTi3Ie1R+vsJLK1SxgRYiNR+I3JX8syhN5YSbkboPZlE0hX0Mq0XQcokzt1/SNSQw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVDZtXpvrI8D8ehKnVBjFQTRE7LTRCrQdZqNJMMkANWGCxETQ7
	eqSw8zby2I3IbWoM7Q5UnzFCWWg5H6MYOIaj7XPMulckzIibS8KxzuEwxE/jNCisnYkImNTXGsh
	2ZX9XTcBRL3fcc5qsNuFDMYU/NW1byz5BKiZs
X-Gm-Gg: ASbGncvohLLXGP9DygGjvvlEE4IHduF5ZwiXWR4nvvsOluTC2OKQMVMr/COR4gyQkq0
	8bxn6hBDAvKXGXP3I4ChE7exTQk/k1g==
X-Google-Smtp-Source: AGHT+IGl2G+ZtrZsi0Il70DwFniDP6/Jpy6f/54NvatI53Q8jXo3yQ6cXcDsZ/Inpw7JimLVPKqN2Ay8N4V3sAFXdcc=
X-Received: by 2002:a05:6512:2316:b0:53e:1c46:e08d with SMTP id
 2adb3069b0e04-53e2c2b1a75mr166757e87.2.1733443455261; Thu, 05 Dec 2024
 16:04:15 -0800 (PST)
MIME-Version: 1.0
References: <20241204222006.2249186-1-sashal@kernel.org> <20241204222006.2249186-2-sashal@kernel.org>
In-Reply-To: <20241204222006.2249186-2-sashal@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Dec 2024 16:03:38 -0800
Message-ID: <CAGETcx-a-+ktU8rzVwP_GN2pM8-_vaWd7OiqFJCwiNpyQMETpg@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 4.19 2/3] phy: tegra: xusb: Set fwnode for xusb
 port devices
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Jon Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Thierry Reding <treding@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jckuo@nvidia.com, 
	vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_160418_630486_46B1D060 
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

T24gV2VkLCBEZWMgNCwgMjAyNCBhdCAzOjMx4oCvUE0gU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
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
dGVncmEveHVzYi5jCj4gaW5kZXggMTcyMTFiMzFlMWVkNC4uOTQzZGZmZjQ5NTkyZCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS90ZWdy
YS94dXNiLmMKPiBAQCAtNTE5LDcgKzUxOSw3IEBAIHN0YXRpYyBpbnQgdGVncmFfeHVzYl9wb3J0
X2luaXQoc3RydWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCwKPgo+ICAgICAgICAgZGV2aWNlX2lu
aXRpYWxpemUoJnBvcnQtPmRldik7Cj4gICAgICAgICBwb3J0LT5kZXYudHlwZSA9ICZ0ZWdyYV94
dXNiX3BvcnRfdHlwZTsKPiAtICAgICAgIHBvcnQtPmRldi5vZl9ub2RlID0gb2Zfbm9kZV9nZXQo
bnApOwo+ICsgICAgICAgZGV2aWNlX3NldF9ub2RlKCZwb3J0LT5kZXYsIG9mX2Z3bm9kZV9oYW5k
bGUob2Zfbm9kZV9nZXQobnApKSk7Cj4gICAgICAgICBwb3J0LT5kZXYucGFyZW50ID0gcGFkY3Rs
LT5kZXY7Cj4KPiAgICAgICAgIGVyciA9IGRldl9zZXRfbmFtZSgmcG9ydC0+ZGV2LCAiJXMtJXUi
LCBuYW1lLCBpbmRleCk7Cj4gLS0KPiAyLjQzLjAKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

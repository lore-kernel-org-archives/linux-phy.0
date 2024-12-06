Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D023E7716E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 00:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEn1dNYTvYbh+H93LlfVsSBp2IMIU1FVwmVv9ktKkXM=; b=SLcwT5i7wRK+qm
	OkgCGvGwFYRiYzSiiGsPY5H7VV9YijiFRXohthjA6eMX9rRS2okw1ClFd+6QLT9qfbGxweQsXFrUJ
	TBvjKOTN+pWJJa9FOQ/o18midb/4M34Mv3fT1Ur6Jnv8p+5zo+AIfUMa01HKsgMf4uofqwoT+HTwi
	jZNgWRz7WNS0K1RWjmu2Pkzixz1yN5kONrI8sMEEjOnPp7Rk6icd1DoYfp02/klnsfyqo+jpivALc
	dooxLsRdIB6FO9u5BcZI+29E5lI6s+u4iYGwztZWzIwXPWo1lr1cWt7CiPR6E0ZUMs7dd/wV+/9Ox
	B+xlVj6B8bpkQgWLzaRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLtl-000000002Ky-01PO;
	Fri, 06 Dec 2024 00:08:45 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJLsQ-00000000229-069W
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 00:07:23 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-53de8ecafeeso1700086e87.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733443640; x=1734048440; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R2doDvxK+CULFQ2UnwWf3U8VWA/Vt0nltw3QZqY77uc=;
        b=mvuDpZ7OZJaVsYPbZPrseg1chKl+NM1ykmN4GqIQ23cqPCEhi0mkAVXoJnQA0pHHXD
         4ZaNhMeITw0uwQh81X6xOWu30l+k39A1s/8eFOaiV549YsQ4GgcjnFlrP2wyRkqtRvU/
         I3cSnsnTJRmJbu/vWTAkqCdXWL2/oF5lgzEUDdRZ7guYJ9Dc9YRzgA7oxgRzrtB7+bgQ
         Veh8Gz5TzG3Zd3IzTf/poi8BR4UPWC3yUPDFvooaffUqrjlh1nYBVsnr3rfayojH9Qhl
         dyqEltRPrHGN0Bco/RGNQQAnAPOwW1VLqxj/Oql7bWMNxAM9zVwX20RFaovn6WcNPCLx
         aEiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733443640; x=1734048440;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R2doDvxK+CULFQ2UnwWf3U8VWA/Vt0nltw3QZqY77uc=;
        b=YIVNmzfAp98Pg0DzKZs4uOLnVGvklSX8PeZCfmMAwptLbFA7kHr5H8h1xIrSusX5IT
         NmHjxm+qpVC1yT0Wv+OAJsqyiTvKQsP3Zti3+RY2oT9D/KgbSpei9wlsrTlOv6Inka5m
         izPCOPKtgK4001co/TZHQV9iR9ApZ5FIFVnX7/liRlGcr6/TVYDTDci2rFzjSoxAi8L/
         mQJ8IyB3pJOFAbGLTVC9NdZvbRFpGw6Zp50FDz+LJ925xk1xl29dASVq41x/oLmivIy3
         urSpwxEsljU0NVLGUUxKJuLadP4yBXzLxZTQNF/i3VuB3vU4Xpfa9jmFHg8X6jn8ccPR
         3ncQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFIDKvN1841bWehZn9/Hc/iN2mlrRSJVY3FLNjndDNykb2TQT8WMZg5DlD5o6i4IwUXhVlJKjTFLs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxmnQitYbURAEzhjjODi+YwusPFvPhkUZoU3WM4VTjbp8vm0Z5M
	eSX79FFoFGXUA7RuwTWrip266COGzD6Boej9I+ANOK/M7/TO5ekTh1bxFF9yNR9pza1AOQEauL+
	PY4Ud6qcoNhZcAR675kVHaVK3uGWaP5R3ny3Z
X-Gm-Gg: ASbGnctqYp/2INJ/JZxh/6FKWNvG64g8sanUkf3uRUPv2BzD3VZ1Mp2uGypraUBC/1a
	M8mhGPn/BuQOnLr1KUC6qKO5G6JZcug==
X-Google-Smtp-Source: AGHT+IHaI0AVY5lyobeFZl0k/V7TMSyEVv+jXjth4KpfJSRJPLcy/jwR6tpenWO36YP212k6Vdyuntsp3cqW2ONz/SM=
X-Received: by 2002:a05:6512:10c5:b0:53d:d431:74fc with SMTP id
 2adb3069b0e04-53e2c2b4b93mr245681e87.10.1733443640385; Thu, 05 Dec 2024
 16:07:20 -0800 (PST)
MIME-Version: 1.0
References: <20241204221627.2247598-1-sashal@kernel.org> <20241204221627.2247598-9-sashal@kernel.org>
In-Reply-To: <20241204221627.2247598-9-sashal@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Dec 2024 16:06:44 -0800
Message-ID: <CAGETcx82X2bYd4kMuFo6UXpw9qv51iUL0M-vyYKYOpL_J-auXQ@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 6.12 09/15] phy: tegra: xusb: Set fwnode for xusb
 port devices
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Jon Hunter <jonathanh@nvidia.com>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Thierry Reding <treding@nvidia.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, jckuo@nvidia.com, 
	vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_160722_060271_84979BB2 
X-CRM114-Status: GOOD (  14.77  )
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

T24gV2VkLCBEZWMgNCwgMjAyNCBhdCAzOjI44oCvUE0gU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJu
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
aGFsQGtlcm5lbC5vcmc+CgpJJ20gb2theSBwdWxsaW5nIHRoaXMgaW50byA2LjEyIGFzIGl0J3Mg
cmVjZW50IGVub3VnaC4KCi1TYXJhdmFuYQoKPiAtLS0KPiAgZHJpdmVycy9waHkvdGVncmEveHVz
Yi5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMgYi9kcml2ZXJzL3Bo
eS90ZWdyYS94dXNiLmMKPiBpbmRleCAzNDJmNWNjZjYxMWQ4Li5kNTM2OTk4Mjg4YWNiIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3Rl
Z3JhL3h1c2IuYwo+IEBAIC01NDMsNyArNTQzLDcgQEAgc3RhdGljIGludCB0ZWdyYV94dXNiX3Bv
cnRfaW5pdChzdHJ1Y3QgdGVncmFfeHVzYl9wb3J0ICpwb3J0LAo+Cj4gICAgICAgICBkZXZpY2Vf
aW5pdGlhbGl6ZSgmcG9ydC0+ZGV2KTsKPiAgICAgICAgIHBvcnQtPmRldi50eXBlID0gJnRlZ3Jh
X3h1c2JfcG9ydF90eXBlOwo+IC0gICAgICAgcG9ydC0+ZGV2Lm9mX25vZGUgPSBvZl9ub2RlX2dl
dChucCk7Cj4gKyAgICAgICBkZXZpY2Vfc2V0X25vZGUoJnBvcnQtPmRldiwgb2ZfZndub2RlX2hh
bmRsZShvZl9ub2RlX2dldChucCkpKTsKPiAgICAgICAgIHBvcnQtPmRldi5wYXJlbnQgPSBwYWRj
dGwtPmRldjsKPgo+ICAgICAgICAgZXJyID0gZGV2X3NldF9uYW1lKCZwb3J0LT5kZXYsICIlcy0l
dSIsIG5hbWUsIGluZGV4KTsKPiAtLQo+IDIuNDMuMAo+CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

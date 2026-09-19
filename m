Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF62EC982DA
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 12:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0htnSjvxn1RP2DXSBZ2mDGe+ggIHJATGpUY6NrBGX0=; b=WbjUYYa+DET67h
	dhdeUSfCOTtAeEmqEHCzq6vSlPoCHSz2eT/gT0Hc7R9A4P4NUcOiVJOXF5+pkgs5KACZYgIycc7bt
	hHTPPChDTBksy9GiSOZCpmYQw8gG405FWzoDHdR/lJie0IF7nIZJx9kHLsIE6j2Ri2TbySkjGU9+y
	/WIELNyTgNCehzcaNFYj59c4wAbIQM0CroYuse5YkkECzO1br2O9Nq5mBOKCEMy70a76yWuz/UkFQ
	uyAUQa1HDmxVMVwkIUcwgN7LPynBCXiBo3BlVtQ55VWrdMCzsVdir/HVgRzdNfQ2ignwPV+QjL8iN
	VOvG+3Un0TqB7CwPWuYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uDf-0000000GFUa-2HO1;
	Sat, 19 Sep 2026 12:31:03 +0000
Received: from mail-ed2-x06.google.com ([2a00:1450:4864:33::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uDc-0000000GFSw-308X
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 12:31:02 +0000
Received: by mail-ed2-x06.google.com with SMTP id 4fb4d7f45d1cf-6aa13e192bcso990095a12.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 05:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789821058; cv=none;
        d=google.com; s=arc-20260327;
        b=F/Wm3pX9wsUpuIkS1x+yPPjIVlgsJhOpmt9oSOtnVdQgwTCKAYPvV3v8lXcp5KOc8I
         m/aqcWkr84a6piV+HEuKAMGzXtglqsGnwWDUtZIWGj0iW1bsMlVY6m3F8ekBSfZF5c+A
         hcAVqsWbABxAgGsYYJh/bZaKgEwFpGtJBb+Lkan5aFdb+g4u+ch5OxoecmecqUrS4Spt
         XBLu0/DC4vqAn2LeQ2pQsaSymVppf4ZpMO9cHiMd1k45nr0ahr4HkfWqqzWyTee0s3uV
         eJVuvfqWtunX8ciXQRWEUmM/YhSmSUMM73DHF8c+5wuP7Bwp2gtbUOtl7LxtbUVNQhhG
         Gd3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Kbajk6IEEwy/Xs7sY4wEcDzXgbsQyEmagqT4mDV/8qY=;
        fh=f3ycq+/4bP9gktJRtvKCExNScWm0v1WWaXQmd79KnsU=;
        b=hY76voDlqv1lKt4bacejzKLlPHWj+2uUHgeVASFLnUrf0Mj2Kj8fr8ewAsWg4LdduE
         rOycdAuL4RXrLAZNBuCjoPSWmd1VK8tY1G+mxiv2lO2RoCdHlARi7RtyWzaCThQ9uYMg
         W6WYe4GW6Fk/tz1Dvo2g4ARInIE1RwJNhWriF6aV4ftIrCI0n5OiBjaSPJ+6KeQOT8Zg
         5tYzDl5KUnVTSDbHKPpCjf/0dZNaZwVf18lKD3lb/guZIInIDI8+d0cKEpJMshjQGhAA
         QQbQ2uIMpsrO/w3YJ110d5aFVCS060/OOVUwf/kq/qxAzhsju4v14NX3dc4o0o3M3ghl
         3zoQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789821058; x=1790425858; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Kbajk6IEEwy/Xs7sY4wEcDzXgbsQyEmagqT4mDV/8qY=;
        b=EIhD8YBrbK8srI9mcccX9F2rB9OnJlkPtkHHG7spMc4aTYFPS2mGflXG31jj5WHbSz
         uyz0ugHoH52WWzYQjjivmVCSCvo68J/wTQxxJPgK0EwoT9aaA8acnQgX+/XtUxY8CuDi
         I/+SgVFwHTTWUGlwL2X3AfcAevHqOCCA+HiQy4NfyPSYZw8r8HVLaqZg25Ybwz4vefMw
         RR1E/zf3lxXDALKVcYwDVLdBOZAVNX5LO+CA7G0GocxJjUNjsNm2P5CGQUVVY+dJQCT2
         8s5d1xFdunPDQMeqgMBgK4DGBaaCX5zEdyFz+PMmBGvqbeONg0ZLg36xcJ+AwmqHgf9e
         9SgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789821058; x=1790425858;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Kbajk6IEEwy/Xs7sY4wEcDzXgbsQyEmagqT4mDV/8qY=;
        b=Jq140RKFf2Hw8DSb5VvGITAn6rJ1PvNRmrmd2zPYaQXf8Fx+r5To5b875qR3ydWIs0
         3Onz2t4LP+vKsPH/93XUdgPikYuYWEbb4ViwjqF07J0j/DRsWlFxLXdrKTIHbnefh5D4
         Wv/m406pTTUyaZspEBld1QL6lvCHsteAf9ZAVYQgqZEZr/tHPqL/r0UqZbxqt7VFR0rW
         KsHzBnzObmnGipar8k4G7uOJsJExVtzcygsqDMuQMXGbaW78Q6yj7LUzxxcZAwx3Qa8Z
         s2gFW/v/lb8XZwW7P1s3qSedw/g7o2kNb18efVzeYyxGhlMDsUcCstxJTcpE0pzoa4Sz
         gVsA==
X-Forwarded-Encrypted: i=1; AKwUvBybZHqN+9DGQ/49KFgTOJMyBjRErGG5kDIFFJESZBaKHMkZtv6hFVUQrYM5kid2oIyRkXFaV33/tAM=@lists.infradead.org
X-Gm-Message-State: AFuF++leSN0IM9tKC1Me12i7rvwl1LPei46lFKyfce75AL2d7bkG9REe
	ovA1veSZ2tGD5aDYkViEhFgmmZjUNGsTHZeYBCXvm9S+iaIwJ4iwHDAENpIvWKD4EzDE0z2b0Q0
	r3lbHWiU1SUcIwk9UJroTxrhB2xge4bM=
X-Gm-Gg: AYBFou2TYCuZqxUjTqxrmK7RBMOd0CRPOPo6sPSopuYchC20i6MYTkmMLj97E3G4er1
	w/hh2dB+7sjRAxq0I+ke5bEyaI2LJKulOVidt2m+bHzp/WNzOS/tKqfDKF5Q2ZlYyxR/8ZID3M2
	8vIkOXOSjMUHisppZt0s77nPBKMRaop/p3DO4i8dduTn8Mg+/c1x4eqJU4aiZceScbgw7pI1FH4
	Z9Vj8ZjIcNKkD7cdSuW0rWZyMwB4s0HaEnCIu8TaBKCBSEQbQNv6Qv3CzNqNSX5Ucsmig+fBtrH
	QWk+bUCLb6dGZdQs2soz1bLdSI8F6IJ82cfiGzLE54PBW3Iw7WqIBC84QQ==
X-Received: by 2002:a17:907:3f82:b0:c29:d1b2:35df with SMTP id
 a640c23a62f3a-c2a1581946amr470610666b.10.1789821057622; Sat, 19 Sep 2026
 05:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260917204624.2427486-1-coiaprant@gmail.com> <20260917204624.2427486-8-coiaprant@gmail.com>
 <20260918204847.2B6441F00898@smtp.kernel.org>
In-Reply-To: <20260918204847.2B6441F00898@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Sat, 19 Sep 2026 20:30:45 +0800
X-Gm-Features: AcwNN1Wj96ApSAjh0B3vVvs2DEQWJ6lwYwJqIyKTrL4WkG90sIjEWZrkuc7fyp8
Message-ID: <CALj3r0hL9fewnCgcO4wT+5q=nWgcR6TXR=HXoYjQwtANo-B7Bg@mail.gmail.com>
Subject: Re: [PATCH net-next v7 07/11] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, 
	wsa+renesas@sang-engineering.com, robh@kernel.org, 
	linux-phy@lists.infradead.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_053100_793195_A6A0AFEF 
X-CRM114-Status: GOOD (  35.19  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIMTnml6Xlkajlha0gMDQ6NDjl
hpnpgZPvvJoKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkg
cmV2aWV3IGZvdW5kIDIgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW0hpZ2hd
IG5ldDogcGNzOiB1c2UtYWZ0ZXItZnJlZSBpbiB4cGNzX3JrX2NyZWF0ZSgpIGR1cmluZyBjb25j
dXJyZW50IHN1cHBsaWVyIHVuYmluZAo+IC0gW0xvd10ga2NvbmZpZzogdW5tZXQgZGVwZW5kZW5j
eSB3YXJuaW5nIGR1ZSB0byBQTV9HRU5FUklDX0RPTUFJTlMgc2VsZWN0IHdpdGhvdXQgUE0KPiAt
LQo+Cj4gY29tbWl0IDdlMmQ2NzUzNWNlNmYzMTczZjI5ODQ2ODBiMGE3N2I2MWNhYWY5NjQKPiBB
dXRob3I6IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5jb20+Cj4KPiBuZXQ6IHBjczogeHBj
czogYWRkIFJvY2tjaGlwIFJLMzU2OCBwbGF0Zm9ybSBnbHVlIGRyaXZlcgo+Cj4gVGhpcyBjb21t
aXQgYWRkcyBhIHBsYXRmb3JtIGdsdWUgZHJpdmVyIGZvciB0aGUgU3lub3BzeXMgRGVzaWduV2Fy
ZSBYUENTCj4gb24gUm9ja2NoaXAgUkszNTY4IFNvQ3MuIEl0IGltcGxlbWVudHMgYSB2aXJ0dWFs
IE1ESU8gYnVzIHRvIHRyYW5zbGF0ZQo+IE1ESU8gb3BlcmF0aW9ucyBpbnRvIEFQQjMgbWVtb3J5
LW1hcHBlZCByZWdpc3RlciBhY2Nlc3Nlcy4KPgo+IExpbms6IGh0dHBzOi8vZGwucmFkeGEuY29t
L3JvY2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDEl
MjBWMS4xLTIwMjEwMzAxLnBkZiAoUGFnZSA1OSwgQ1JVX0NMS1NFTF9DT04yOSkKPiBMaW5rOiBo
dHRwczovL2RsLnJhZHhhLmNvbS9yb2NrMy9kb2NzL2h3L2RhdGFzaGVldC9Sb2NrY2hpcCUyMFJL
MzU2OCUyMFRSTSUyMFBhcnQyJTIwVjEuMS0yMDIxMDMwMS5wZGYgKFBhZ2UgMjA3OCkKPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3Bjcy9LY29uZmlnIGIvZHJpdmVycy9uZXQvcGNzL0tj
b25maWcKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L3Bjcy9LY29uZmlnCj4gPiArKysgYi9kcml2ZXJz
L25ldC9wY3MvS2NvbmZpZwo+IFsgLi4uIF0KPiA+ICtjb25maWcgUENTX1hQQ1NfUk9DS0NISVAK
PiA+ICsgICAgIHRyaXN0YXRlICJSb2NrY2hpcCBYUENTIGNvbnRyb2xsZXIgc3VwcG9ydCIKPiA+
ICsgICAgIGRlZmF1bHQgQVJDSF9ST0NLQ0hJUAo+ID4gKyAgICAgZGVwZW5kcyBvbiBPRiAmJiAo
QVJDSF9ST0NLQ0hJUCB8fCBDT01QSUxFX1RFU1QpCj4gPiArICAgICBzZWxlY3QgR0VORVJJQ19Q
SFkKPiA+ICsgICAgIHNlbGVjdCBQTV9HRU5FUklDX0RPTUFJTlMKPgo+IFtTZXZlcml0eTogTG93
XQo+IFdpbGwgdGhpcyBjYXVzZSBhIEtjb25maWcgdW5tZXQgZGlyZWN0IGRlcGVuZGVuY3kgd2Fy
bmluZyBkdXJpbmcgY29tcGlsYXRpb24KPiB3aGVuIFBNIGlzIG5vdCBlbmFibGVkPwo+Cj4gQmVj
YXVzZSBQQ1NfWFBDU19ST0NLQ0hJUCBoYXMgYSBDT01QSUxFX1RFU1QgZmFsbGJhY2sgaW4gaXRz
IGRlcGVuZHMgb24KPiBsaXN0LCBpdCBjYW4gYmUgZW5hYmxlZCBvbiBhcmNoaXRlY3R1cmVzIHdp
dGhvdXQgQ09ORklHX1BNLiBGb3JjZWZ1bGx5Cj4gc2VsZWN0aW5nIFBNX0dFTkVSSUNfRE9NQUlO
UyAod2hpY2ggZGVwZW5kcyBvbiBQTSkgd2l0aG91dCBpbmhlcml0aW5nCj4gdGhhdCBkZXBlbmRl
bmN5IGNvdWxkIGxlYWQgdG8gYSBjb25maWd1cmF0aW9uIG1pc21hdGNoLgo+Cj4gQ291bGQgdGhp
cyBLY29uZmlnIGVudHJ5IGFkZCBhIGRlcGVuZGVuY3kgb24gUE0sIG9yIG9ubHkgY29uZGl0aW9u
YWxseQo+IHNlbGVjdCBQTV9HRU5FUklDX0RPTUFJTlM/CgpUaGFua3MgZm9yIHRoZSByZXZpZXcu
IFlvdSdyZSByaWdodCwgSSB3YXMgb25seSBjb25zaWRlcmluZyB0aGUgcmVhbApSb2NrY2hpcCBi
dWlsZC4gQ09NUElMRV9URVNUIGFsbG93cyB0aGUgc3ltYm9sIHRvIGJlIGVuYWJsZWQgb24gYW55
CmFyY2hpdGVjdHVyZSwgaW5jbHVkaW5nIG9uZXMgd2l0aCBDT05GSUdfUE09biwgYW5kIGluIHRo
YXQgY2FzZQpzZWxlY3QgUE1fR0VORVJJQ19ET01BSU5TIHdvdWxkIGZvcmNlIGl0IG9uIGFnYWlu
c3QgaXRzIG93biBkZXBlbmRzIG9uClBNLgoKSSdsbCBjaGFuZ2UgdGhlIHNlbGVjdCB0byBiZSBj
b25kaXRpb25hbDoKCiAgICBzZWxlY3QgUE1fR0VORVJJQ19ET01BSU5TIGlmIFBNCgpXaXRoIFBN
PW4sIFBNX0dFTkVSSUNfRE9NQUlOUyBzdGF5cyBvZmYgYW5kIHRoZXJlIGlzIG5vIHVubWV0CmRl
cGVuZGVuY3kuIFRoZSBkcml2ZXIgc3RpbGwgY29tcGlsZXMgYmVjYXVzZSBkZXZfcG1fZ2VucGRf
cnBtX2Fsd2F5c19vbigpCmlzIGEgc3R1YiByZXR1cm5pbmcgLUVPUE5PVFNVUFAgaW4gdGhhdCBj
b25maWd1cmF0aW9uLCBhbmQgQ09NUElMRV9URVNUCmRvZXMgbm90IHJ1biBvbiBoYXJkd2FyZSBh
bnl3YXkuCgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jIGIv
ZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
PiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYwo+
IFsgLi4uIF0KPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBQaW4gdGhlIHN1cHBsaWVyIGJlZm9y
ZSByZWFkaW5nIGl0cyBkcnZkYXRhOiBkZXZpY2VfbGlua19hZGQoKQo+ID4gKyAgICAgICogcmVm
dXNlcyB0byBjcmVhdGUgYSBtYW5hZ2VkIGxpbmsgd2hpbGUgdGhlIHN1cHBsaWVyIGlzIGJlaW5n
Cj4gPiArICAgICAgKiB1bmJvdW5kLCBzbyBpZiBpdCBzdWNjZWVkcyB0aGUgZHJ2ZGF0YSBjYW5u
b3QgYmUgZnJlZWQgdW5kZXIgdXMuCj4gPiArICAgICAgKiBUaGUgbGluayBpcyByZWxlYXNlZCBh
dXRvbWF0aWNhbGx5IHdoZW4gdGhlIGNvbnN1bWVyIGRldmljZSBpcwo+ID4gKyAgICAgICogZGVz
dHJveWVkIChETF9GTEFHX0FVVE9SRU1PVkVfQ09OU1VNRVIpLCB3aGljaCBjb3ZlcnMgYWxsIHBy
b2JlCj4gPiArICAgICAgKiBmYWlsdXJlIHBhdGhzLCBzbyBubyBleHBsaWNpdCBkZXZpY2VfbGlu
a19yZW1vdmUoKSBpcyBuZWVkZWQuCj4gPiArICAgICAgKi8KPiA+ICsgICAgIGlmICghZGV2aWNl
X2xpbmtfYWRkKGRldiwgJnBkZXYtPmRldiwgRExfRkxBR19BVVRPUkVNT1ZFX0NPTlNVTUVSKSkg
ewo+ID4gKyAgICAgICAgICAgICBwdXRfZGV2aWNlKCZwZGV2LT5kZXYpOwo+ID4gKyAgICAgICAg
ICAgICByZXR1cm4gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKPiA+ICsgICAgIH0KPiA+ICsKPiA+
ICsgICAgIHB4cGNzID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gPiArICAgICBpZiAo
IXB4cGNzIHx8ICFweHBjcy0+YnVzKSB7Cj4KPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gSXMgdGhpcyBz
ZXF1ZW5jZSBpbiB4cGNzX3JrX2NyZWF0ZSgpIHNhZmUgYWdhaW5zdCBhIGNvbmN1cnJlbnQgc3Vw
cGxpZXIKPiB1bmJpbmQ/Cj4KPiBUaGUgY29tbWVudCBhc3N1bWVzIGRldmljZV9saW5rX2FkZCgp
IHJldHVybnMgTlVMTCBpZiB0aGUgc3VwcGxpZXIgaXMKPiB1bmJpbmRpbmcsIGJ1dCBpdCBhY3R1
YWxseSBzdWNjZWVkcyBhbmQgY3JlYXRlcyBhIGxpbmsgd2l0aCBhIHN0YXRlIGxpa2UKPiBETF9T
VEFURV9TVVBQTElFUl9VTkJJTkQgb3IgRExfU1RBVEVfRE9STUFOVC4KPgo+IElmIHVzZXJzcGFj
ZSBjb25jdXJyZW50bHkgdW5iaW5kcyB0aGUgWFBDUyBzdXBwbGllciBkZXZpY2Ugd2hpbGUgdGhp
cwo+IGNvbnN1bWVyIE1BQyBkcml2ZXIgaXMgcHJvYmluZywgcmVhZGluZyB0aGUgZHJ2ZGF0YSB2
aWEKPiBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KSBtaWdodCB5aWVsZCBhIHBvaW50ZXIgdG8g
ZGV2cmVzIG1lbW9yeSB0aGF0Cj4gaGFzIGFscmVhZHkgYmVlbiBmcmVlZCBieSB0aGUgc3VwcGxp
ZXIncyByZW1vdmUgcGF0aC4KPgo+IFNob3VsZCB0aGlzIGNvZGUgYWNxdWlyZSB0aGUgZGV2aWNl
IGxvY2sgb24gdGhlIHN1cHBsaWVyLCBvciBvdGhlcndpc2UKPiB2ZXJpZnkgdGhlIGRldmljZSBp
cyBmdWxseSBib3VuZCBiZWZvcmUgZGVyZWZlcmVuY2luZyBpdHMgZHJ2ZGF0YT8KClRoYW5rcyBm
b3IgdGhlIHJldmlldy4gVGhpcyBpcyBhIHZhbGlkIGNvbmNlcm4gYW5kIEkndmUgZml4ZWQgaXQg
aW4gdjguCgpZb3UncmUgcmlnaHQgdGhhdCBkZXZpY2VfbGlua19hZGQoKSBkb2VzIG5vdCBmYWls
IHdoZW4gdGhlIHN1cHBsaWVyIGlzCmJlaW5nIHVuYm91bmQuIExvb2tpbmcgYXQgZGV2aWNlX2xp
bmtfaW5pdF9zdGF0dXMoKSwgYSBzdXBwbGllciBpbgpETF9ERVZfVU5CSU5ESU5HIHN0YXRlIHBy
b2R1Y2VzIGEgbGluayB3aXRoIERMX1NUQVRFX1NVUFBMSUVSX1VOQklORCwKYW5kIHRoZSBmdW5j
dGlvbiByZXR1cm5zIG5vbi1OVUxMLiBUaGUgY2hlY2sgYXQgdGhlIHRvcCBvZgpkZXZpY2VfbGlu
a19hZGQoKSBpcyBkZXZpY2VfcG1faW5pdGlhbGl6ZWQoKSwgbm90IGRldmljZV9pc19ib3VuZCgp
LCBzbwphIHN1cHBsaWVyIHRoYXQgaXMgbWlkLXVuYmluZCBwYXNzZXMgaXQuCgpUaGUgZHJ2ZGF0
YSBpcyBub3cgcmVhZCB1bmRlciB0aGUgc3VwcGxpZXIncyBkZXZpY2VfbG9jaywgd2l0aCBhCmRl
dmljZV9pc19ib3VuZCgpIGNoZWNrOgoKICAgICAgICBkZXZpY2VfbG9jaygmcGRldi0+ZGV2KTsK
ICAgICAgICBpZiAoIWRldmljZV9pc19ib3VuZCgmcGRldi0+ZGV2KSkgewogICAgICAgICAgICAg
ICAgZGV2aWNlX3VubG9jaygmcGRldi0+ZGV2KTsKICAgICAgICAgICAgICAgIHB1dF9kZXZpY2Uo
JnBkZXYtPmRldik7CiAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRVBST0JFX0RFRkVS
KTsKICAgICAgICB9CiAgICAgICAgcHhwY3MgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsK
ICAgICAgICBkZXZpY2VfdW5sb2NrKCZwZGV2LT5kZXYpOwoKZGV2aWNlX2xvY2soKSBzZXJpYWxp
emVzIHdpdGggX19kZXZpY2VfcmVsZWFzZV9kcml2ZXIoKSwgd2hpY2ggYWxzbwp0YWtlcyB0aGUg
c3VwcGxpZXIncyBkZXZpY2UgbG9jayB3aGlsZSBydW5uaW5nIGl0cyByZW1vdmUgcGF0aCwgYW5k
CmRldmljZV9pc19ib3VuZCgpIGNvbmZpcm1zIHRoZSBkcml2ZXIgaXMgc3RpbGwgYXR0YWNoZWQg
YmVmb3JlIHdlIHJlYWQKaXRzIGRhdGEuIElmIHRoZSBzdXBwbGllciBpcyB1bmJpbmRpbmcsIHdl
IHJldHVybiAtRVBST0JFX0RFRkVSIGFuZApyZXRyeS4KClRoZSBkZXZpY2UgbGluayBpcyBzdGls
bCBlc3RhYmxpc2hlZCBmaXJzdCBzbyB0aGF0IHRoZSBQTSBvcmRlcmluZyBhbmQKdGhlIGF1dG9t
YXRpYyBjbGVhbnVwIG9uIGNvbnN1bWVyIHJlbW92YWwgYXJlIGluIHBsYWNlLCBidXQgaXQgaXMg
dGhlCmxvY2sgcGx1cyB0aGUgYm91bmQgY2hlY2sgdGhhdCBrZWVwcyB0aGUgZHJ2ZGF0YSB2YWxp
ZCwgbm90IHRoZSBsaW5rCml0c2VsZi4gSSd2ZSB1cGRhdGVkIHRoZSBjb21tZW50IHRvIHNheSB0
aGF0LgoKVGhhbmtzLApDb2lhCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK

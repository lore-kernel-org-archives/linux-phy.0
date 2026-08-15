Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AC1AC5CFC1
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 09:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQYIZusmPXYxVt4A2yfr2d2IW57gzB12UcFaAHlheQs=; b=o09Lom5r1Zyc3l
	DxeJzvTr8Fe76zs7qjsXH/5t6ecbcLwmT1vS359lmItoudiNPeGNISJ2115Wy0q4oDXWI81Rg67Uj
	RHsDQDfwFkFqCxMWjsM9mZj8ERIuekmeYc+s0/zghoPzHQ36LIbM9KSi/SE9Z2EwXXJGxv97WVppj
	Lkz0RAiUyFxThPsM+k7Hu4Oi8iYLKuH2E5VtaBBnKTU8oaE0chBwy3KHQXsWELouS2WiLh3NpYgsf
	hurc99Qi3g69PP3iqYcbsD7rErlNZKm5X/izE71IRUfFL1iY4NTTOZxKwk2+jxJVp+a1tHiedeF9e
	gMsNBppCWbtnuVKP7Kkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvAco-00000003hr8-2zVC;
	Sat, 15 Aug 2026 09:24:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvAcn-00000003hqj-03ht
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 09:24:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2F067600AD;
	Sat, 15 Aug 2026 09:24:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CF8B1F000E9;
	Sat, 15 Aug 2026 09:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786785859;
	bh=Oj4BVtvnY0rpsq70JerhyEfV+eRDVCA9Y14NIFGlWXs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hWos40M6eMYBHpUo7sBvzWkQqsXis7DpNJZjcuMmKv4BRCCUCaPLvn/vcN+SwnH2c
	 tz4jnCS06k6hqdGihiI3c5jcvSGUOCF5YG6LE7nTCjUnttd6zlXGvQ0VqYUa72hFFN
	 QUsCIIs8AjK3uEwasopVKRaKQ1kOskJhOhnLrjNYnbaHPoZONlK5rB7zBuH7p7Dejc
	 wNMp9Vc34tpumayUtN53wTCnXI2gn/+XXUvY4R0q/gLYANDMoK5p6ZSNhAxAgCveaK
	 xQQCay2hvtQGOnVZSb3170ejDn34gn/x12O5zzoYM6/sm+wmAFadDAg4Xrfvmd6R9B
	 uzssu5f7nB3Pg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 2/6] phy: realtek: usb2: introduce read and write
 functions to phy_reg_desc struct
To: "Rustam Adilov" <adilov@disroot.org>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260815091340.26910-3-adilov@disroot.org>
References: <20260815091340.26910-1-adilov@disroot.org>
 <20260815091340.26910-3-adilov@disroot.org>
Date: Sat, 15 Aug 2026 09:24:18 +0000
Message-Id: <20260815092419.6CF8B1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtMb3ddIFRo
ZSBgLnJlYWRgIGNhbGxiYWNrIGluIGBzdHJ1Y3QgcGh5X3JlZ19kZXNjYCBhbmQgaXRzIGRlZmF1
bHQgaW1wbGVtZW50YXRpb24gYHJ0a191c2IycGh5X3JlYWQoKWAgYXJlIGludHJvZHVjZWQgYnV0
IG5ldmVyIHVzZWQuCgpQcmUtZXhpc3RpbmcgaXNzdWVzOgotIFtIaWdoXSBVbmFsaWduZWQgTU1J
TyBhY2Nlc3MgZHVlIHRvIGluY29ycmVjdCBwb2ludGVyIGFyaXRobWV0aWMgb24gYHZvaWQgX19p
b21lbSAqYCB3aGVuIG1hcHBpbmcgbXVsdGlwbGUgUEhZcy4KLS0KCi0tLSBQYXRjaCBbMl06IFtQ
QVRDSCB2NyAyLzZdIHBoeTogcmVhbHRlazogdXNiMjogaW50cm9kdWNlIHJlYWQgYW5kIHdyaXRl
IGZ1bmN0aW9ucyB0byBwaHlfcmVnX2Rlc2Mgc3RydWN0IC0tLQpjb21taXQgOGRjMTAzMjExYjZh
MWFmOWFhZTI2NDhiNzEyZmVhZmYyZGYyZmQ3ZgpBdXRob3I6IFJ1c3RhbSBBZGlsb3YgPGFkaWxv
dkBkaXNyb290Lm9yZz4KCnBoeTogcmVhbHRlazogdXNiMjogaW50cm9kdWNlIHJlYWQgYW5kIHdy
aXRlIGZ1bmN0aW9ucyB0byBwaHlfcmVnX2Rlc2Mgc3RydWN0CgpUaGlzIGNvbW1pdCBpbnRyb2R1
Y2VzIHJlYWQgYW5kIHdyaXRlIGZ1bmN0aW9uIHBvaW50ZXJzIHRvIHRoZSBwaHlfcmVnX2Rlc2MK
c3RydWN0IHRvIHN1cHBvcnQgcGxhdGZvcm1zIHdoZXJlIHRoZSB2c3RhdHVzIHJlZ2lzdGVyIHJl
c2lkZXMgaW4gYSBiaWctZW5kaWFuCm1lbW9yeSByZWdpb24uIEl0IGFsc28gcHJvdmlkZXMgZGVm
YXVsdCBpbXBsZW1lbnRhdGlvbnMgZm9yIGV4aXN0aW5nIFBIWXMuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jIGIvZHJpdmVycy9waHkvcmVhbHRlay9w
aHktcnRrLXVzYjIuYwo+IGluZGV4IGU4ZDBmMDExOWVjMGEuLjVlNDgzYzg1M2YwMmYgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMKPiBAQCAtMTMwLDYgKzEzMiwxNiBAQCBzdHJ1
Y3QgcnRrX3BoeSB7Cj4gIAlzdHJ1Y3QgZGVudHJ5ICpkZWJ1Z19kaXI7Cj4gIH07Cj4gIAo+ICtz
dGF0aWMgdTMyIHJ0a191c2IycGh5X3JlYWQodm9pZCBfX2lvbWVtICpyZWcpCj4gK3sKPiArCXJl
dHVybiByZWFkbChyZWcpOwo+ICt9Cj4gKwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBkcml2
ZXIgYWN0dWFsbHkgdXNlIHRoZSBuZXcgcmVhZCBjYWxsYmFjaz8KClRoZSB2c3RhdHVzIHJlZ2lz
dGVyIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgaXMgd3JpdGUtb25seSBpbiB0aGlz
CmRyaXZlciwgYW5kIGFsbCBleGlzdGluZyByZWFkcyBhcHBlYXIgdG8gY29udGludWUgdXNpbmcg
cmVhZGwoKSBkaXJlY3RseS4gSXMKdGhpcyByZWFkIGZ1bmN0aW9uIG5lZWRlZCwgb3IgaXMgaXQg
ZGVhZCBjb2RlPwoKPiArc3RhdGljIHZvaWQgcnRrX3VzYjJwaHlfd3JpdGUodTMyIHZhbCwgdm9p
ZCBfX2lvbWVtICpyZWcpCj4gK3sKPiArCXdyaXRlbCh2YWwsIHJlZyk7Cj4gK30KPiArCgpbIC4u
LiBdCgo+IEBAIC05ODgsNyArMTAwMCw2IEBAIHN0YXRpYyBpbnQgcGFyc2VfcGh5X2RhdGEoc3Ry
dWN0IHJ0a19waHkgKnJ0a19waHkpCj4gIAkJcGh5X3BhcmFtZXRlci0+cGh5X3JlZy52c3RhdHVz
X2luZGV4ID0gaW5kZXg7Cj4gIAkJcGh5X3BhcmFtZXRlci0+cGh5X3JlZy5kZXNjID0gcGh5X2Nm
Zy0+cmVnX2Rlc2M7Cj4gIAoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5n
IGlzc3VlLCBidXQgZG9lcyB0aGlzIHBvaW50ZXIgYXJpdGhtZXRpYyBjYXVzZSB1bmFsaWduZWQK
TU1JTyBhY2Nlc3NlcyB3aGVuIGNvbmZpZ3VyaW5nIG11bHRpcGxlIFBIWXM/CgpJbiBwYXJzZV9w
aHlfZGF0YSgpOgoKICAgIHBoeV9wYXJhbWV0ZXItPnBoeV9yZWcucmVnX2d1c2IycGh5YWNjMCA9
IG9mX2lvbWFwKG5wLCAxKSArIGluZGV4OwoKV2hlbiBudW1fcGh5ID4gMSwgdGhlIGxvb3AgaW5j
cmVtZW50cyBpbmRleC4gU2luY2Ugb2ZfaW9tYXAoKSByZXR1cm5zIGEKdm9pZCBfX2lvbWVtICos
IGFkZGluZyBpbmRleCBkaXJlY3RseSBpbmNyZW1lbnRzIHRoZSBhZGRyZXNzIGJ5IGV4YWN0bHkK
aW5kZXggYnl0ZXMgcmF0aGVyIHRoYW4gdGhlIHJlZ2lzdGVyIHN0cmlkZS4gQ291bGQgdGhpcyBj
YXVzZSBhbiBhbGlnbm1lbnQKZmF1bHQgZHVyaW5nIGRldmljZSBwcm9iZSBvbiBzeXN0ZW1zIHdp
dGggbXVsdGktcG9ydCBQSFkgY29uZmlndXJhdGlvbnM/Cgo+IC0KPiAgCQlpZiAob2ZfcHJvcGVy
dHlfcmVhZF9ib29sKG5wLCAicmVhbHRlayxpbnZlcnNlLWhzdHgtc3luYy1jbG9jayIpKQo+ICAJ
CQlwaHlfcGFyYW1ldGVyLT5pbnZlcnNlX2hzdHhfc3luY19jbG9jayA9IHRydWU7Cj4gIAkJZWxz
ZQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDgxNTA5MTM0MC4yNjkxMC0xLWFkaWxvdkBkaXNyb290Lm9yZz9wYXJ0PTIKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

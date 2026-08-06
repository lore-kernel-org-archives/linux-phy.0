Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0E57C55ABF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 09:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNhNi0iu0+GBbxwq9xn10IGNJn1pot9uC8xJdl9AkiA=; b=vfPIJssaiwYpaS
	LAjtA7pgbfdhONYGZk4OvMH46y4JKA4eJACTklkebKhLIq7Ri2ZOZJhSkm3iDyYNFUuiTk6BePwdO
	HxE/3NZE/BJzpUv0tGViVaKb3moSxgRHHHdvfEbvS88ued2covUGzsvCZjzMYCOyfU3U3PwoFubZo
	g5g49KnUmkV4oH0nOsAlHMT3EmWvp/X0pCeFKSarl3+SxQmUCxCzY0lkwkatqk8oMrP7V4QGehrNd
	H8xFosR507OdqZ4jyk/43nKkATKp/IwvolNP26ATz9QWbbI+NcfiILT2ni4Km2mDIXWTT2cS2N7hm
	eLVPyE4VWIeWXliHyrhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wruKb-00000005NHi-0eZN;
	Thu, 06 Aug 2026 09:24:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wruKZ-00000005NHE-3Q9H
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 09:24:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4BE2643BA0;
	Thu,  6 Aug 2026 09:24:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C99EA1F000E9;
	Thu,  6 Aug 2026 09:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786008243;
	bh=up11rVXLx75AiQsr8W6lfkI9GdtNtLi1dz7x1W6CiqY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Km7Y9cBfw6LK11k1QtQ5z3s8eO4mm1NiVmr+Xfx+/hf/RXcVzIiiBSwpXYd8hZ8YV
	 sRbEMzvrlcvxG8OkL6CRGtubR0ImpTFY6u4wXHPnTH805a34AkD6Xvdj05UrIgtcHZ
	 BlNRHEkiOgl7XHpnAge8LRQcJgOaSeNrMOShTfMGyUF6IWhQ/5nyuW5dImKry9vkH1
	 SLDh/TCW2UfENXFTRzBH0wMioIIiqKT1YMGm496FQG5lq9ef1SyAI0VJD0tAQJ0Y3A
	 KctMu1TvFPOBLohu9YVs04VPsb/TpJwHDYEkZFWD2ARalxPVsVOlN48HQFdgl/wRyd
	 IPo0/bbytgHsQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: ti: ti-pipe3: allow configuring ACSPCIe
 TX/RX mode
To: "David Oberhollenzer" <david.oberhollenzer@sigma-star.at>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260806091112.164695-3-david.oberhollenzer@sigma-star.at>
References: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
 <20260806091112.164695-3-david.oberhollenzer@sigma-star.at>
Date: Thu, 06 Aug 2026 09:24:02 +0000
Message-Id: <20260806092402.C99EA1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgbWlz
aGFuZGxlcyBlcnJvcnMgZnJvbSB0aGUgYHRpLHN5c2Nvbi1hY3NwY2llLXR4LXJ4YCBwcm9wZXJ0
eSBsb29rdXAsIGJyZWFraW5nIHByb2JlIGRlZmVycmFsIGFuZCBzaWxlbnRseSBzd2FsbG93aW5n
IGNvbmZpZ3VyYXRpb24gZmFpbHVyZXMuCi0tCgotLS0gUGF0Y2ggWzJdOiBbUEFUQ0ggdjIgMi8y
XSBwaHk6IHRpOiB0aS1waXBlMzogYWxsb3cgY29uZmlndXJpbmcgQUNTUENJZSBUWC9SWCBtb2Rl
IC0tLQpjb21taXQgMWNiZjQzNDk5MzI3MDhjMmMwOTdkZTEwNWE1YzEzZDdiYWVhZWI2MQpBdXRo
b3I6IERhdmlkIE9iZXJob2xsZW56ZXIgPGRhdmlkLm9iZXJob2xsZW56ZXJAc2lnbWEtc3Rhci5h
dD4KCnBoeTogdGk6IHRpLXBpcGUzOiBhbGxvdyBjb25maWd1cmluZyBBQ1NQQ0llIFRYL1JYIG1v
ZGUKClRoaXMgY29tbWl0IGFsbG93cyBjb25maWd1cmluZyB0aGUgQUNTUENJZSBUWC9SWCBtb2Rl
IGZvciBQQ0llIFBIWXMuCkl0IHJlYWRzIHRoZSBzeXNjb24gcHJvcGVydHkgZnJvbSB0aGUgZGV2
aWNlIHRyZWUgYW5kIHVwZGF0ZXMgdGhlIG1vZGUKc2VsZWN0aW9uIGJpdHMgaW4gdGhlIHNwZWNp
ZmllZCByZWdpc3Rlci4KCj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiAr
KysgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwoKWyAuLi4gXQoKPiBAQCAtNzg1LDYg
Kzc4OCwyNCBAQCBzdGF0aWMgaW50IHRpX3BpcGUzX2dldF9wbGxfYmFzZShzdHJ1Y3QgdGlfcGlw
ZTMgKnBoeSkKPiAgCXJldHVybiBQVFJfRVJSX09SX1pFUk8ocGh5LT5wbGxfY3RybF9iYXNlKTsK
PiAgfQo+ICAKPiArc3RhdGljIGludCB0aV9waXBlM19hY3NwY2llX3R4X3J4X21vZGUoc3RydWN0
IHRpX3BpcGUzICpwaHkpCj4gK3sKPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBwaHktPmRl
di0+b2Zfbm9kZTsKPiArCXN0cnVjdCByZWdtYXAgKnJlZ21hcDsKPiArCXVuc2lnbmVkIGludCBh
cmdzWzJdOwo+ICsKPiArCXJlZ21hcCA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGVf
YXJncyhucCwKPiArCQkJCQkJICAgICAgInRpLHN5c2Nvbi1hY3NwY2llLXR4LXJ4IiwKPiArCQkJ
CQkJICAgICAgMiwgYXJncyk7Cj4gKwlpZiAoSVNfRVJSKHJlZ21hcCkpIHsKPiArCQlkZXZfd2Fy
bihwaHktPmRldiwgImNhbid0IGdldCB0aSxzeXNjb24tYWNzcGNpZS10eC1yeFxuIik7Cj4gKwkJ
cmV0dXJuIC1FSU5WQUw7Cj4gKwl9CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgY29udmVydGluZyBh
bGwgc3lzY29uIGxvb2t1cCBlcnJvcnMgdG8gLUVJTlZBTCBicmVhayBwcm9iZSBkZWZlcnJhbD8K
CklmIHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGVfYXJncygpIHJldHVybnMgLUVQUk9C
RV9ERUZFUiBiZWNhdXNlIHRoZQpzeXNjb24gZHJpdmVyIHByb2JlcyBsYXRlciwgdGhpcyBjb252
ZXJ0cyB0aGUgZXJyb3IgdG8gLUVJTlZBTCBhbmQgcHJldmVudHMKdGhlIGRyaXZlciBmcm9tIGRl
ZmVycmluZyBwcm9wZXJseS4KCkFkZGl0aW9uYWxseSwgaWYgdGhpcyBwcm9wZXJ0eSBpcyBvcHRp
b25hbCBvbiBvbGRlciBkZXZpY2UgdHJlZXMsIHdvdWxkIGFuCi1FTk9FTlQgcmV0dXJuIGNhdXNl
IHNwdXJpb3VzIHdhcm5pbmdzIGluIHRoZSBrZXJuZWwgbG9nPwoKPiArCj4gKwlyZXR1cm4gcmVn
bWFwX3VwZGF0ZV9iaXRzKHJlZ21hcCwgYXJnc1swXSwgUENJRV9UWF9SWF9DVFJMX01BU0ssCj4g
KwkJCQkgIGFyZ3NbMV0gPDwgUENJRV9UWF9SWF9DVFJMX1NISUZUKTsKPiArfQo+ICsKPiAgc3Rh
dGljIGludCB0aV9waXBlM19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7
Cj4gIAlzdHJ1Y3QgdGlfcGlwZTMgKnBoeTsKClsgLi4uIF0KCj4gQEAgLTgwNyw2ICs4MjgsMTIg
QEAgc3RhdGljIGludCB0aV9waXBlM19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAJcGh5LT5kcGxsX21hcCA9IGRhdGEtPmRwbGxfbWFwOwo+ICAJcGh5LT5zZXR0aW5ncyA9
IGRhdGEtPnNldHRpbmdzOwo+ICAKPiArCWlmIChwaHktPm1vZGUgPT0gUElQRTNfTU9ERV9QQ0lF
KSB7Cj4gKwkJcmV0ID0gdGlfcGlwZTNfYWNzcGNpZV90eF9yeF9tb2RlKHBoeSk7Cj4gKwkJaWYg
KHJldCkKPiArCQkJZGV2X3dhcm4oZGV2LCAiZmFpbGVkIHRvIHNldCBBQ1NQQ0llIFRYL1JYIG1v
ZGVcbiIpOwo+ICsJfQo+ICsKPiAgCXJldCA9IHRpX3BpcGUzX2dldF9wbGxfYmFzZShwaHkpOwo+
ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0OwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMg
c2VxdWVuY2Ugc2lsZW50bHkgc3dhbGxvdyB0aGUgY29uZmlndXJhdGlvbiBmYWlsdXJlPwoKVGhl
IGVycm9yIGNvZGUgZnJvbSB0aV9waXBlM19hY3NwY2llX3R4X3J4X21vZGUoKSBpcyBjYXB0dXJl
ZCBpbiByZXQgYW5kCmxvZ2dlZCwgYnV0IHByb2JlIGV4ZWN1dGlvbiBjb250aW51ZXMuCgpCZWNh
dXNlIHRpX3BpcGUzX2dldF9wbGxfYmFzZSgpIHVuY29uZGl0aW9uYWxseSByZXR1cm5zIDAgZm9y
IFBDSWUgbW9kZQpyaWdodCBhZnRlciB0aGlzIGNoZWNrLCB0aGUgdmFsdWUgaW4gcmV0IGlzIGlt
bWVkaWF0ZWx5IG92ZXJ3cml0dGVuLCBhbmQgdGhlCnByb2JlIHdpbGwgbm90IGFib3J0LgoKQ291
bGQgdGhpcyBsZWF2ZSB0aGUgUENJZSBidXMgaW4gYSBub24tZnVuY3Rpb25hbCBzdGF0ZSB3aXRo
b3V0IGV4cGxpY2l0bHkKZmFpbGluZyB0aGUgZHJpdmVyIHByb2JlPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgwNjA5MTExMi4x
NjQ2OTUtMS1kYXZpZC5vYmVyaG9sbGVuemVyQHNpZ21hLXN0YXIuYXQ/cGFydD0yCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

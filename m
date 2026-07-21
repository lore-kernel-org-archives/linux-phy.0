Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3253BC44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 10:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgYHvczivXfiHkcFCwFop0TUDSttWbX0zP89IM8IL1A=; b=r6dY+OvGQ9OABM
	HnNvZ+9QCZfEb3/dA6IBkbQ9OkBAKT3JWpTcD/DammajMjIEIBohAPnzwyNtSXGs49RSmxSZcihrM
	obEZLSsj14+9egZZWByxkXIS++Zx+HJKx2pWrsQsY24QYf3Rqn/D9lK6qAVRusvsUf1cF0VhjoXPN
	TTIbUDTHQ2Qnl4qpjhKQthHRLsEtaBqPpE1Vjvn6Jecc0T2LjStbe/2DiMmG9fm3K0laKcaUQju2e
	0JhwY8ix9WjTW7nXWWy/RYTkdQn5dcgq2zxaTbizrBNrTnryXc4BicrI9M5s1Am/AWNM/HMB7p9yq
	ez0SYmUn6tZ3iivVvMWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm7y6-00000009EvU-3kMS;
	Tue, 21 Jul 2026 10:44:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm7y5-00000009Ev3-1zu0
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 10:44:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BE946600AE;
	Tue, 21 Jul 2026 10:44:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0695D1F01560;
	Tue, 21 Jul 2026 10:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784630696;
	bh=tJX4kj2jitKMiWS+Uh9p1DsaUgPNpmcPv2ceUiltH1g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vs6SiBL/KFPnpCoM5pqp4FJeZNCbkhOcPI0rbHwFRqGplKTucjaebXk/sTSSdTgyU
	 uJCZ8KoxYXMvmsKsnEmgFRusZCjPd2AUFQxmDmmQX16TaFRiXffHmKUcEf8mJoAroq
	 mV0uFqZWcEsywoycdkPQS+6MhzzwUAqD3QzSRU137DMapoC+qz5tf7RagYJy4sQ481
	 5yfQpPqyTwT0jgMdPrddS0/2cajE5IrwVZkTo8Rv2DimgixrIG+4Ck4xRSwNl6zKvE
	 VAwJtYE9h4WGsH++Wa5mnEquRrXVyC1BT6r2y2stJbZxhluo//D8SSA9JKWT1QTTgb
	 Gpb0+ycUlTVng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] phy: rockchip-samsung-dcphy: model TX and RX as
 separate PHYs
To: "Jason Yang" <jason98166@gmail.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260721-dcphy-rx-v1-v1-3-4fc83c0ccac9@gmail.com>
References: <20260721-dcphy-rx-v1-v1-0-4fc83c0ccac9@gmail.com>
 <20260721-dcphy-rx-v1-v1-3-4fc83c0ccac9@gmail.com>
Date: Tue, 21 Jul 2026 10:44:55 +0000
Message-Id: <20260721104456.0695D1F01560@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIENvbmN1cnJlbnQgb3Ig
dW5zdXBwb3J0ZWQgUEhZIGNvbmZpZ3VyYXRpb24gY2xvYmJlcnMgdGhlIHNoYXJlZCBgc2Ftc3Vu
Zy0+bGFuZXNgIGRyaXZlciBzdGF0ZSBiZWZvcmUgdmVyaWZ5aW5nIHRoZSBkaXJlY3Rpb24gaXMg
c3VwcG9ydGVkLgotLQoKLS0tIFBhdGNoIFszXTogW1BBVENIIDMvNF0gcGh5OiByb2NrY2hpcC1z
YW1zdW5nLWRjcGh5OiBtb2RlbCBUWCBhbmQgUlggYXMgc2VwYXJhdGUgUEhZcyAtLS0KY29tbWl0
IDI0MmI5NDM1ZDA5ZTAxMzNkZTQ2NTgxNTZmM2NjMjI0YWEyZjg0YzkKQXV0aG9yOiBKYXNvbiBZ
YW5nIDxqYXNvbjk4MTY2QGdtYWlsLmNvbT4KCnBoeTogcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeTog
bW9kZWwgVFggYW5kIFJYIGFzIHNlcGFyYXRlIFBIWXMKClRoaXMgY29tbWl0IG1vZGVscyB0aGUg
TUlQSSBEU0kgdHJhbnNtaXR0ZXIgYW5kIE1JUEkgQ1NJIHJlY2VpdmVyIGFzIHNlcGFyYXRlClBI
WXMgdGhhdCBzaGFyZSB0aGUgc2FtZSBoYXJkd2FyZSBibG9jay4gSXQgcmVnaXN0ZXJzIG9uZSBz
dHJ1Y3QgcGh5IHBlcgpkaXJlY3Rpb24gYW5kIGFkZHMgYSBwZXItcHJvdmlkZXIgbXV0ZXggdG8g
c2VyaWFsaXplIGFjY2VzcyB0byB0aGUgc2hhcmVkCnN0YXRlLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYyBiL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKPiAtLS0gYS9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwoKWyAuLi4gXQoKPiBA
QCAtMTQ4OCwxMSArMTUyMSwxNSBAQCBzYW1zdW5nX21pcGlfZGNwaHlfcGxsX2NhbGNfcmF0ZShz
dHJ1Y3Qgc2Ftc3VuZ19taXBpX2RjcGh5ICpzYW1zdW5nLAo+ICBzdGF0aWMgaW50IHNhbXN1bmdf
bWlwaV9kY3BoeV9jb25maWd1cmUoc3RydWN0IHBoeSAqcGh5LAo+ICAJCQkJCXVuaW9uIHBoeV9j
b25maWd1cmVfb3B0cyAqb3B0cykKPiAgewo+IC0Jc3RydWN0IHNhbXN1bmdfbWlwaV9kY3BoeSAq
c2Ftc3VuZyA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICsJc3RydWN0IHNhbXN1bmdfbWlwaV9k
Y3BoeV9kaXIgKnBkID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gKwlzdHJ1Y3Qgc2Ftc3VuZ19t
aXBpX2RjcGh5ICpzYW1zdW5nID0gcGQtPnBhcmVudDsKPiAgCXVuc2lnbmVkIGxvbmcgbG9uZyB0
YXJnZXRfcmF0ZSA9IG9wdHMtPm1pcGlfZHBoeS5oc19jbGtfcmF0ZTsKPiAgCj4gIAlzYW1zdW5n
LT5sYW5lcyA9IG9wdHMtPm1pcGlfZHBoeS5sYW5lcyA+IDQgPyA0IDogb3B0cy0+bWlwaV9kcGh5
LmxhbmVzOwo+ICAKPiArCWlmIChwZC0+ZGlyID09IFJLX0RDUEhZX0RJUl9SWCkKPiArCQlyZXR1
cm4gLUVPUE5PVFNVUFA7Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29kZSBtb2Rp
ZnkgdGhlIHNoYXJlZCBzYW1zdW5nLT5sYW5lcyBzdGF0ZSBiZWZvcmUgY2hlY2tpbmcgaWYKdGhl
IGRpcmVjdGlvbiBpcyBzdXBwb3J0ZWQ/CgpTaW5jZSB0aGlzIGlzIGRvbmUgd2l0aG91dCBob2xk
aW5nIHNhbXN1bmctPmxvY2ssIGNhbiBhIGNvbnN1bWVyCmNvbmZpZ3VyaW5nIHRoZSBSWCBQSFkg
Y2xvYmJlciB0aGUgYWN0aXZlIFRYIFBIWSdzIGxhbmUgY291bnQ/CgpJZiB0aGUgbGFuZSBjb3Vu
dCBpcyBjb3JydXB0ZWQsIGl0IGxvb2tzIGxpa2UgaXQgY291bGQgbGVhZCB0byBpbmNvcnJlY3Qg
bGFuZQpwb3dlci1kb3duIHNlcXVlbmNlcyB3aGVuIHRoZSBUWCBQSFkgaXMgZGlzYWJsZWQgbGF0
ZXIsIHBvdGVudGlhbGx5IGxlYXZpbmcKTUlQSSBsYW5lcyBhY3RpdmVseSBkcml2ZW4uCgpTaG91
bGQgdGhlIHBkLT5kaXIgY2hlY2sgYW5kIHRoZSBsb2NrIGFjcXVpc2l0aW9uIGhhcHBlbiBiZWZv
cmUgdXBkYXRpbmcKc2Ftc3VuZy0+bGFuZXM/CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIxLWRjcGh5LXJ4LXYx
LXYxLTAtNGZjODNjMGNjYWM5QGdtYWlsLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

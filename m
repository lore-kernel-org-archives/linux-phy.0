Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC26CD37AC
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 02:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1GnH/AVQgzm5Tz+rsrC16VZ5aKtppaCxlZ8B5cVYvA=; b=4C2mYWBiKg+ijs
	4qoMEGx91NfeNh8wPf3v8HXCV3u6kMg7gpgNnoJmLJpjNiZv5R12YHbS1Z3IoJykgBLVOjOJxPAV7
	TwTDzHiQVzIruvenDgDon5aFLbqDjpfdMuLwtK+NoIz2OKPu/kI9cIZbRhk21YFaeZJmz+JYeBmJb
	A9wj3cCy6ZbT2PxAT46KeB3aA4vTOpg+ckEOcMV+9+S2bvi678ONY1dHFgg8Lfi/XdQfVkjSNkrzU
	0nAoGD/HFJSh0Wn+XghOXvXHzF4jDDv+XOnrsPCB/y18WCClfuzvyyP99aBooPqjWbXJ5l5mAtCAf
	HJiwLf1a7PPkcL2n3QJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNiMC-000000077vI-0kdt;
	Fri, 15 May 2026 02:32:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNiM9-000000077u2-1qeL
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 02:32:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BD03F440D1;
	Fri, 15 May 2026 02:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6396CC2BCB3;
	Fri, 15 May 2026 02:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778812372;
	bh=IVbqBJZkm+6Yz0190B/rZsJXTpyzoRqaATPY7yE3TkM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=c6E/b1FQegjHFOdNfwY+dvSvKxvEAvaJEEwO92WgXe9YI0pROi2lFPJJG9tA+wQcG
	 4FzGVNmvL7uwo9PJCETQq/a1XuwLHkuYUq5l3JaV7fx6+DTZBa+ZmJi8KZ7jEMmEHB
	 G0itOylHaeTvlqTmjR0BHeqgftja3ghhZEI7SBlA38ODgeObvuv7rp083dkdQ3p9kP
	 2gtAda9xMHB9tEq/DZVY5/74o533G1t9e+Atea54q7jC+jK3ZpQnXiZykhDYBLH953
	 47klwiXZDzM8qBQH4oj9eafRmeO/vuxlzyKzHAqdFmtzxV3sZXi2irXy259bWsvtD7
	 STa8zI8U7ksNg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] phy: ti: pipe3: Fix clock resource leak on probe
 errors
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260515021635.13444-1-zenghongling@kylinos.cn>
References: <20260515021635.13444-1-zenghongling@kylinos.cn>
Date: Fri, 15 May 2026 02:32:51 +0000
Message-Id: <20260515023252.6396CC2BCB3@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_193253_519835_6D2B7376 
X-CRM114-Status: GOOD (  10.65  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1hc2tpbmcgb2YgLUVQ
Uk9CRV9ERUZFUiB0byAtRUlOVkFMIHdoZW4gZmV0Y2hpbmcgc3lzY2xrLgotIFtIaWdoXSBJZ25v
cmluZyAtRVBST0JFX0RFRkVSIGZvciB0aGUgU0FUQSByZWZjbGsuCi0tCgpjb21taXQgNGYyZmJk
NjI3ZWU4MDQ1NWNhYzE5NGE0YWUxYjU1OWQ0ODE4MDA3NQpBdXRob3I6IEhvbmdsaW5nIFplbmcg
PHplbmdob25nbGluZ0BreWxpbm9zLmNuPgoKcGh5OiB0aTogcGlwZTM6IEZpeCBjbG9jayByZXNv
dXJjZSBsZWFrIG9uIHByb2JlIGVycm9ycwoKV2hlbiBkZXZtX3BoeV9jcmVhdGUoKSBvciBkZXZt
X29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcigpIGZhaWxzLAp0aGUgcmVmY2xrIHRoYXQgd2FzIGVu
YWJsZWQgZWFybGllciBpcyBub3QgZGlzYWJsZWQsIGNhdXNpbmcgYQpyZXNvdXJjZSBsZWFrLgoK
Rml4IHRoaXMgYnkgYWRkaW5nIGFuIGVycm9yIGhhbmRsaW5nIHBhdGggdG8gZGlzYWJsZSB0aGUg
Y2xvY2sKd2hlbiB0aGVzZSBmdW5jdGlvbnMgZmFpbC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3RpL3BoeS10aS1waXBlMy5jIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiBp
bmRleCBiNTU0M2I1YzY3NGM4Li41OGZiYzNiMjc4MTMwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
cGh5L3RpL3BoeS10aS1waXBlMy5jCj4gKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUz
LmMKClsgLi4uIF0KClRoaXMgaXNuJ3QgYSByZWdyZXNzaW9uIGludHJvZHVjZWQgYnkgdGhpcyBw
YXRjaCwgYnV0IGxvb2tpbmcgYXQKdGlfcGlwZTNfZ2V0X2NsaygpIGNhbGxlZCBlYXJsaWVyIGlu
IHRoZSBwcm9iZSBzZXF1ZW5jZToKCmRyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jOnRpX3Bp
cGUzX2dldF9jbGsoKSB7CgkuLi4KCWlmIChwaHktPm1vZGUgIT0gUElQRTNfTU9ERV9QQ0lFIHx8
IHBoeS0+cGh5X3Bvd2VyX3N5c2NvbikgewoJCXBoeS0+c3lzX2NsayA9IGRldm1fY2xrX2dldChk
ZXYsICJzeXNjbGsiKTsKCQlpZiAoSVNfRVJSKHBoeS0+c3lzX2NsaykpIHsKCQkJZGV2X2Vycihk
ZXYsICJ1bmFibGUgdG8gZ2V0IHN5c2Nsa1xuIik7CgkJCXJldHVybiAtRUlOVkFMOwoJCX0KCX0K
CS4uLgp9CgpEb2VzIHRoaXMgY29kZSBtYXNrIC1FUFJPQkVfREVGRVIgdG8gLUVJTlZBTCB3aGVu
IGZldGNoaW5nIHN5c2Nsaz8KCklmIGRldm1fY2xrX2dldCgpIGZvciB0aGUgc3lzY2xrIHJldHVy
bnMgLUVQUk9CRV9ERUZFUiwgdGhlIGZ1bmN0aW9uCmV4cGxpY2l0bHkgY29udmVydHMgdGhlIGVy
cm9yIGFuZCByZXR1cm5zIC1FSU5WQUwuIFRoaXMgY29tcGxldGVseSBicmVha3MKdGhlIGxpZmVj
eWNsZSBvZiBwcm9iZSBkZWZlcnJhbCBmb3IgdGhlIHN5c2NsayByZXNvdXJjZS4KCkluc3RlYWQg
b2YgcmV0cnlpbmcgd2hlbiB0aGUgY2xvY2sgcHJvdmlkZXIgYmVjb21lcyBhdmFpbGFibGUgbGF0
ZXIgaW4gdGhlCmJvb3QgcHJvY2VzcywgdGhlIGRyaXZlciBpbml0aWFsaXphdGlvbiBmYWlscyBw
ZXJtYW5lbnRseSwgcmVuZGVyaW5nIHRoZSBQSFkKZGV2aWNlIHVudXNhYmxlIG9uIHN5c3RlbXMg
d2l0aCBub24tZGV0ZXJtaW5pc3RpYyBwcm9iZSBvcmRlcnMuCgpTaW1pbGFybHksIGxvb2tpbmcg
YXQgdGhlIFNBVEEgcmVmY2xrIGhhbmRsaW5nIGluIHRoZSBzYW1lIGZ1bmN0aW9uOgoKZHJpdmVy
cy9waHkvdGkvcGh5LXRpLXBpcGUzLmM6dGlfcGlwZTNfZ2V0X2NsaygpIHsKCS4uLgoJcGh5LT5y
ZWZjbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicmVmY2xrIik7CglpZiAoSVNfRVJSKHBoeS0+cmVm
Y2xrKSkgewoJCWRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGdldCByZWZjbGtcbiIpOwoJCS8qIG9s
ZGVyIERUQnMgaGF2ZSBtaXNzaW5nIHJlZmNsayBpbiBTQVRBIFBIWQoJCSAqIHNvIGRvbid0IGJh
aWwgb3V0IGluIGNhc2Ugb2YgU0FUQSBQSFkuCgkJICovCgkJaWYgKHBoeS0+bW9kZSAhPSBQSVBF
M19NT0RFX1NBVEEpCgkJCXJldHVybiBQVFJfRVJSKHBoeS0+cmVmY2xrKTsKCX0KCS4uLgp9CgpB
cmUgZXJyb3JzIHJldHVybmVkIGJ5IGRldm1fY2xrX2dldCgpIGZvciB0aGUgcmVmY2xrIGlnbm9y
ZWQgd2hlbiB0aGUgbW9kZQppcyBQSVBFM19NT0RFX1NBVEE/CgpXaGlsZSBpZ25vcmluZyAtRU5P
RU5UIGlzIGludGVudGlvbmFsbHkgZG9uZSB0byBzdXBwb3J0IG9sZGVyIERUQnMgbWlzc2luZwp0
aGUgY2xvY2ssIGluZGlzY3JpbWluYXRlbHkgaWdub3JpbmcgLUVQUk9CRV9ERUZFUiBicmVha3Mg
dGhlIHByb2JlIGRlZmVycmFsCm1lY2hhbmlzbS4gVGhlIGRyaXZlciB3aWxsIHByb2NlZWQgaW1t
ZWRpYXRlbHkgd2l0aG91dCB3YWl0aW5nIGZvciB0aGUgY2xvY2sKcHJvdmlkZXIgdG8gcHJvYmUs
IHJlc3VsdGluZyBpbiB0aGUgU0FUQSBQSFkgYmVpbmcgaW5pdGlhbGl6ZWQgd2l0aG91dCBpdHMK
cmVxdWlyZWQgcmVmZXJlbmNlIGNsb2NrIGFuZCBzdWJzZXF1ZW50bHkgZmFpbGluZyB0byBmdW5j
dGlvbiBwcm9wZXJseS4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MTUwMjE2MzUuMTM0NDQtMS16ZW5naG9uZ2xpbmdAa3lsaW5v
cy5jbj9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=

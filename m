Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E55DCC43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xvi1YLIK4FgJV5Ntx+rfP396u18xps1uzU4EdhvKPeg=; b=dN8SI28IWy1zEz
	2dghhIa9ODlLVBRaYqqG4QoS65DYDBhU2ZcZe2AT9eKqDzhRXI3Q+4QH/fWYYFRKRds4zZpdNIGIg
	Pb3YayNNfkOqiU3E+148wkeezVNi6mPzqOUGEBJW6L4a54MTHtyIiZyyZj74V7RXBenq1zIaZlzGt
	/rSLt5B2SOeGC4xfGJP+eohySk1ulRbchJti2evW0TCmdj1OLVivoZZOvvjEqAG4/82OLnmK9sK3k
	8ImTkx98zoyTRE5e2O1/pdfNBWj9sn6/EkG73YwwXX4gvssdRNL0DjRFpkYx9IVu+Zdz0KUlBVmI2
	wLXfWDl8sdUXEGAiaRJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDst-0000000Btfc-2wVD;
	Fri, 26 Jun 2026 21:14:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDss-0000000BtfT-3TZM
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:14:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E4849600AB;
	Fri, 26 Jun 2026 21:14:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D1151F000E9;
	Fri, 26 Jun 2026 21:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508485;
	bh=4+e1r8jT3JogeYU9rX54CBUZqrxvMgDlNyHi9c2oDvQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VKrmGjthw1uLeVaz1HPGCR+WPOxvJAsNxPC+YScDKfvSwxu248W3kP+IXTOjpk30Y
	 0hwC+SvRYKaG49pRzzgQPsrreIhBCNXve+0lgjCb1ecobp2CCgkxw1TtRLW2yKAv3Z
	 pREdaU3MCvn5/HFfu2LgAZrZbIgIXnO5X3DtN/22prH7fJFUDKEFUErlt1Ds3mODDW
	 O+wJhG8L4IPSilF2z9v8mp3XnYi+SXQlzdSTnYfSoUFYNCtB8HPapYK02GGTnDd19/
	 7jqE4zbyHkVqAXX55TGD1UBLtBooPWgpag9RoOG8BDdd2ixVpKfUeeVZkiFxG+RRg3
	 aAEU0IwoI0H1g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 17/29] phy: rockchip: usbdp: Register DP aux bridge
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-17-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-17-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:14:44 +0000
Message-Id: <20260626211445.1D1151F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGRybV9hdXhfYnJpZGdl
X3JlZ2lzdGVyKCkgaXMgaW5jb21wYXRpYmxlIHdpdGggdGhlIHJvY2tjaGlwLXVzYmRwIFBIWSB0
b3BvbG9neSwgYnJlYWtpbmcgdGhlIERQIGJyaWRnZSBjaGFpbiB3aGVuIFVTQiBhbmQgRFAgcG9y
dHMgYXJlIHNwbGl0LgotLQoKY29tbWl0IDcwZDJiYTk0YzVkYTY4MGJkNDIwZWI3NGI1Y2ZmYjI2
ZDZmYWQxNWQKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29s
bGFib3JhLmNvbT4KcGh5OiByb2NrY2hpcDogdXNiZHA6IFJlZ2lzdGVyIERQIGF1eCBicmlkZ2UK
ClRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IHRvIHJlZ2lzdGVyIGEgRFJNIGF1eGlsaWFyeSBicmlk
Z2UgaWYgdGhlIERQCmF1eCBjaGFubmVsIGlzIGNvbm5lY3RlZC4gVGhpcyBlbmFibGVzIERQIGFs
dG1vZGUgaGVscGVyIGNvZGUgb24KZGV2aWNldHJlZSBiYXNlZCBwbGF0Zm9ybXMuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggZTI0M2Q5MjQ4M2Uw
OS4uYTIwNDY5OTYxOWI4MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC11c2JkcC5jClsgLi4uIF0KPiBAQCAtMTUwNSw2ICsxNTA3LDE4IEBAIHN0YXRpYyBpbnQgcmtf
dWRwaHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCQkJcmV0dXJuIHJl
dDsKPiAgCX0KPiAgCj4gKwkvKgo+ICsJICogT25seSByZWdpc3RlciB0aGUgRFJNIGJyaWRnZSwg
aWYgdGhlIERQIGF1eCBjaGFubmVsIGlzIGNvbm5lY3RlZC4KPiArCSAqIFNvbWUgYm9hcmRzIHVz
ZSB0aGUgVVNCRFAgUEhZIG9ubHkgZm9yIGl0cyBVU0IzIGNhcGFiaWxpdGllcy4KPiArCSAqLwo+
ICsJZHBfYXV4X2VwID0gZndub2RlX2dyYXBoX2dldF9lbmRwb2ludF9ieV9pZChkZXZfZndub2Rl
KGRldiksIDMsIDAsIDApOwo+ICsJaWYgKGRwX2F1eF9lcCkgewo+ICsJCXJldCA9IGRybV9hdXhf
YnJpZGdlX3JlZ2lzdGVyKGRldik7CgpbU2V2ZXJpdHk6IEhpZ2hdClNpbmNlIHRoZSBQSFkgZGV0
ZWN0cyB0aGUgRFAgY29ubmVjdG9yIG9uIHBvcnQgMywgaXMgdGhlIGNhbGwgdG8KZHJtX2F1eF9i
cmlkZ2VfcmVnaXN0ZXIoKSBjb21wYXRpYmxlIHdpdGggdGhpcyB0b3BvbG9neT8KCkxvb2tpbmcg
YXQgaG93IHRoZSBhdXhpbGlhcnkgYnJpZGdlIGRyaXZlciBwcm9iZXMgaW4KZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmMsIGl0IGhhcmRjb2RlcyB0aGUgZG93bnN0cmVhbSBicmlk
Z2UKbG9va3VwIHRvIHBvcnQgMDoKCmRybV9hdXhfYnJpZGdlX3Byb2JlKCkKICBkYXRhLT5uZXh0
X2JyaWRnZSA9IGRldm1fZHJtX29mX2dldF9icmlkZ2UoLi4uLCAwLCAwKTsKCklmIHBvcnQgMCAo
dGhlIFVTQiBvdXRwdXQpIGlzIHVuY29ubmVjdGVkIG9yIGNvbm5lY3RlZCB0byBhIG5vbi1EUk0K
Y29tcG9uZW50LCB3aWxsIGRldm1fZHJtX29mX2dldF9icmlkZ2UoKSByZXR1cm4gYW4gZXJyb3Ig
bGlrZSAtRU5PREVWPwpUaGlzIGxvb2tzIGxpa2UgaXQgd291bGQgY2F1c2UgdGhlIGF1eCBicmlk
Z2UgcHJvYmUgdG8gZmFpbCwgYnJlYWtpbmcgdGhlCkRQIGNoYWluIGFuZCBsZWF2aW5nIHRoZSBE
UCBjb250cm9sbGVyIHdhaXRpbmcgaW5kZWZpbml0ZWx5IHdpdGgKLUVQUk9CRV9ERUZFUiwgdW5s
ZXNzIGJvdGggcG9ydCAwIGFuZCBwb3J0IDMgaGFwcGVuIHRvIHBvaW50IHRvIHRoZSBleGFjdApz
YW1lIGNvbm5lY3RvciBub2RlLgoKPiArCQlmd25vZGVfaGFuZGxlX3B1dChkcF9hdXhfZXApOwo+
ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICAJdWRwaHktPnBoeV91
MyA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIGRldi0+b2Zfbm9kZSwgJnJrX3VkcGh5X3VzYjNfcGh5
X29wcyk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwNjI2LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjgtMC00N2Y2ODI5ODc4OTVA
Y29sbGFib3JhLmNvbT9wYXJ0PTE3CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK

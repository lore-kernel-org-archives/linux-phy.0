Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4867CD343F
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 05:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJuQ0JjNSI8YYmrfZHOU0djaLkcVxXIewSopKvl8kII=; b=cZ6R55kwOAVF6F
	f2j7FPSimEO4GPUBPyLFYy0isBEDHic0nf0HJbr17oajvhgQ1vrkXyqxnAsbsf9ievjFpCC/BFVKu
	UrlHzQXrxREU3uTGg8fDTKwTebp2R/gl14tcaTj8u//skuQJtz+KqXkgbSBMSxZJKG8Mu5Tag/xlD
	K9uoxccCPnCYpq91ZCW+EFO3MpfaG22puViCDxvBYjpW8HcqUIAq4cMA0/49cXShGahOJ+6uhTbzD
	Y5yUgao7+B5/OXL8TIXAzb8cjyI5W/wq33/xjt4oa2Y66V9vHXfc0kaZXEzKn2lP5gSm8xooRqJ4j
	M5amkBl3XuTvM7PFTofQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPvyr-00000006jnJ-1NZy;
	Thu, 21 May 2026 05:30:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPvyp-00000006jmS-1Rlb
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 05:30:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 948A443EEC;
	Thu, 21 May 2026 05:29:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4010F1F000E9;
	Thu, 21 May 2026 05:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779341398;
	bh=xzg0ivJ/zoZDuiKYMSwn6YkMN52Sfy8vOEIzDGX90ME=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LfHlyOsm//w3kPxdWxCPVpacLxSHnxeC/Ko1NyGUK1yXr1MTtEBBm+E10U2nmKMp+
	 MazZbyWE6TUeYxJ6wHzmvmb2piP9fKyT0pLiEZLzTWfgwKyLkeoHM5SroOsYVdfmrV
	 ETKgvULvhRTISQNVr/7tySybBD7HxAUPw1enp7tmprsgK0DpIlEKNCizlofCIxM0tn
	 KoXHVb2ycS86tZHcvrP6mwNoJsdFtci0tES9ub2tfJ1022umDBhT801jDjyqbhTjnu
	 gF0Y3OEaFdud8pdpxWAiOvWkYqlPmpX9++VH6oD6H1DTfdbCtLlDDFvpZl3GUYg5Pt
	 frfYmwaZCVJFg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260521032854.103-4-kernel@airkyi.com>
References: <20260521032854.103-4-kernel@airkyi.com>
Date: Thu, 21 May 2026 05:29:57 +0000
Message-Id: <20260521052958.4010F1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_222959_424272_CD51E3D7 
X-CRM114-Status: GOOD (  14.63  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERvdWJsZS1mcmVlIG9m
IHRoZSBgY2hpbGRfbnBgIGRldmljZSBub2RlIHJlZmVyZW5jZSBsZWFkaW5nIHRvIGEgVXNlLUFm
dGVyLUZyZWUuCi0gW01lZGl1bV0gSW5jb3JyZWN0IGVycm9yIGNoZWNrIG9yZGVyaW5nIG1hc2tz
IGBkZXZtX3BoeV9jcmVhdGVgIGZhaWx1cmVzIGFuZCBhdHRlbXB0cyBicmlkZ2UgcmVnaXN0cmF0
aW9uIG9uIGludmFsaWQgUEhZIHBvaW50ZXJzLgotLQoKY29tbWl0IDgzNDMwZDBiODgzZTZhYjMy
MzhkMTlmZDlkMzk4ZmVmMjZhYTZhYjcKQXV0aG9yOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5A
cm9jay1jaGlwcy5jb20+CgpwaHk6IHJvY2tjaGlwOiBwaHktcm9ja2NoaXAtdHlwZWM6IEFkZCBE
Uk0gQVVYIGJyaWRnZQoKVXNpbmcgdGhlIERSTV9BVVhfQlJJREdFIGhlbHBlciB0byBjcmVhdGUg
dGhlIHRyYW5zcGFyZW50IERSTSBicmlkZ2UKZGV2aWNlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXR5cGVjLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtdHlwZWMuYwo+IGluZGV4IGQ5NzAxYjYxMDZkNTUuLjQ4MDcwYjUwNDE2
ZTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXR5cGVj
LmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYwpbIC4u
LiBdCj4gQEAgLTExNjIsMTYgKzExNjMsMjQgQEAgc3RhdGljIGludCByb2NrY2hpcF90eXBlY19w
aHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCj4gIAlmb3JfZWFjaF9h
dmFpbGFibGVfY2hpbGRfb2Zfbm9kZShucCwgY2hpbGRfbnApIHsKPiAgCQlzdHJ1Y3QgcGh5ICpw
aHk7Cj4gKwkJcmV0ID0gMDsKPiAgCj4gLQkJaWYgKG9mX25vZGVfbmFtZV9lcShjaGlsZF9ucCwg
ImRwLXBvcnQiKSkKPiArCQlpZiAob2Zfbm9kZV9uYW1lX2VxKGNoaWxkX25wLCAiZHAtcG9ydCIp
KSB7Cj4gIAkJCXBoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIGNoaWxkX25wLAo+ICAJCQkJCSAg
ICAgICZyb2NrY2hpcF9kcF9waHlfb3BzKTsKPiAtCQllbHNlIGlmIChvZl9ub2RlX25hbWVfZXEo
Y2hpbGRfbnAsICJ1c2IzLXBvcnQiKSkKPiArCQkJcmV0ID0gZHJtX2F1eF9icmlkZ2VfcmVnaXN0
ZXJfZnJvbV9ub2RlKGRldiwgY2hpbGRfbnApOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMg
Y29kZSByZXN1bHQgaW4gYSBkb3VibGUtZnJlZSBvZiB0aGUgY2hpbGRfbnAgZGV2aWNlIG5vZGUK
cmVmZXJlbmNlPwoKVGhlIG1hY3JvIGZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKCkg
YXV0b21hdGljYWxseSBtYW5hZ2VzIHRoZQpyZWZlcmVuY2UgY291bnQgZm9yIGNoaWxkX25wLCBh
Y3F1aXJpbmcgaXQgZm9yIHRoZSBjdXJyZW50IGl0ZXJhdGlvbiBhbmQKZHJvcHBpbmcgaXQgd2hl
biBhZHZhbmNpbmcuCgpkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKSBhc3NpZ25z
IHRoZSBub2RlIHRvIHRoZSBhdXhpbGlhcnkgYnJpZGdlCmRldmljZSwgYW5kIHRoZSBhdXhpbGlh
cnkgYnJpZGdlIGFzc3VtZXMgb3duZXJzaGlwIG9mIGEgcmVmZXJlbmNlIChjYWxsaW5nCm9mX25v
ZGVfcHV0KCkgaW4gaXRzIGVycm9yIHBhdGhzIGFuZCByZWxlYXNlIGNhbGxiYWNrKS4KCkJlY2F1
c2UgYW4gYWRkaXRpb25hbCByZWZlcmVuY2UgaXMgbm90IGFjcXVpcmVkIHZpYSBvZl9ub2RlX2dl
dCgpCmJlZm9yZSBwYXNzaW5nIGl0LCB0aGUgcmVmZXJlbmNlIGlzIGRlY3JlbWVudGVkIHR3aWNl
LCB3aGljaCBjYW4gbGVhZCB0byBhCnVzZS1hZnRlci1mcmVlLgoKPiArCQl9IGVsc2UgaWYgKG9m
X25vZGVfbmFtZV9lcShjaGlsZF9ucCwgInVzYjMtcG9ydCIpKQo+ICAJCQlwaHkgPSBkZXZtX3Bo
eV9jcmVhdGUoZGV2LCBjaGlsZF9ucCwKPiAgCQkJCQkgICAgICAmcm9ja2NoaXBfdXNiM19waHlf
b3BzKTsKPiAgCQllbHNlCj4gIAkJCWNvbnRpbnVlOwo+ICAKPiArCQlpZiAocmV0KSB7Cj4gKwkJ
CXBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+ICsJCQlvZl9ub2RlX3B1dChjaGlsZF9ucCk7Cj4g
KwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsKPiAgCQlpZiAoSVNfRVJSKHBoeSkpIHsKCltTZXZl
cml0eTogTWVkaXVtXQpXaWxsIHRoaXMgZXJyb3IgY2hlY2sgb3JkZXJpbmcgbWFzayBkZXZtX3Bo
eV9jcmVhdGUoKSBmYWlsdXJlcz8KClRoZSBjaGVjayBmb3IgYnJpZGdlIHJlZ2lzdHJhdGlvbiBm
YWlsdXJlIChpZiAocmV0KSkgaGFwcGVucyBiZWZvcmUgdGhlCmNoZWNrIGZvciBQSFkgY3JlYXRp
b24gZmFpbHVyZSAoaWYgKElTX0VSUihwaHkpKSkuIElmIGRldm1fcGh5X2NyZWF0ZSgpCmZhaWxz
IChlLmcuLCByZXR1cm5pbmcgLUVQUk9CRV9ERUZFUikgYW5kIHRoZSBzdWJzZXF1ZW50IGJyaWRn
ZSByZWdpc3RyYXRpb24KYWxzbyBmYWlscywgdGhlIGZ1bmN0aW9uIHdpbGwgcmV0dXJuIHRoZSBi
cmlkZ2UgZXJyb3IgYW5kIG1hc2sgdGhlIFBIWSBlcnJvci4KCkFkZGl0aW9uYWxseSwgdGhpcyBh
dHRlbXB0cyB0byByZWdpc3RlciB0aGUgYXV4aWxpYXJ5IGJyaWRnZSBldmVuIGFmdGVyIHRoZQp1
bmRlcmx5aW5nIFBIWSBjcmVhdGlvbiBoYXMgYWxyZWFkeSBmYWlsZWQuIFNob3VsZCBJU19FUlIo
cGh5KSBiZSBjaGVja2VkCmJlZm9yZSBjYWxsaW5nIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zy
b21fbm9kZSgpLCBvciBhdCBsZWFzdCBiZWZvcmUKY2hlY2tpbmcgcmV0PwoKPiAgCQkJZGV2X2Vy
cihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIHBoeTogJXBPRm5cbiIsCj4gIAkJCQljaGlsZF9ucCk7
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwNTIxMDMyODU0LjEwMy0xLWtlcm5lbEBhaXJreWkuY29tP3BhcnQ9MwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

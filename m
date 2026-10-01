Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D217CA5FC4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 01:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4rAyopCkAjn9zbPZcRA6zLEFrIgC/TWFrF0LcS9W8o=; b=i1bQbHlRyggSFu
	ueznm0j+rum6+vdMqh/Fm0N3sH5L5h8sbABqCLNlGeknntaL0qAqqUeF5M1xlkmIShYw1uw8DCOv6
	Va2swPRxEffUqu6WALoGWhAax5ttGDG7DCRe6Cbd3KyzZxwYBmw6FvpOyjcjGotHNbg8tgTg9WFiO
	nXrA6fqOO6IkrqiiWl50Ks/yRjUP/wctx9/Kuth/IC7BeuEdnTQrVx3V/BiOsxujWYdSmIGl4igqP
	wbLKJ/rpbJTPh/+1bl1hBT7A/86xOjeAU2eGdHt76hUX7rcdG8dYztfJpDBC31wI+hLyajvLzWj0x
	MTRbu85CgB0poZfQeaxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC5aL-00000007ZM8-0grj;
	Thu, 01 Oct 2026 01:27:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC5aK-00000007ZLu-13P8
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 01:27:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5688C60238;
	Thu,  1 Oct 2026 01:27:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B561B1F000FF;
	Thu,  1 Oct 2026 01:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790818063;
	bh=ljwoxYGF6uCS0Z/GaMsyT/WDtsOxYLVerKzbXXVeXvk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YhiNHIEIxjg+mmGTl9JH8QwYTwP5WqOYmWaLZTlixJu/WViNQYJ4fl4zV06ASEK2g
	 wHoWs/vX9lJDLW3vB9XnpUlmDR5p8oDbYEfgZ8UCUQtawoQV22du14B0UBA7smK4vW
	 eH+dhI2arx6rDiMjEEO4s8ybHjoqUyugyIGKzVw3b3tIeJwtORItVjfa+ajgKOBy3L
	 ZHN2tPu5v8sItcrxG/Teahrj86TB1KBiTeWhN1vLIMDxYfHjzhzRkLkdCWJKik8q2U
	 PAIAW3XCYy6QecHVqCdzn7SXNZBNnHAUFQy30/wo3BsFCvgtZEdGnKJyCv/kdM6ytN
	 HqyLOeNqbcKyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: Differentiate clocks related
 to the USB block
To: "Wesley Cheng" <wesley.cheng@oss.qualcomm.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com>
References: <20260930-qmp_phy_usb_clks_v1-v1-1-d4dccc9eb263@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 01:27:42 +0000
Message-Id: <20261001012742.B561B1F000FF@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcWNvbS1xbXAt
Y29tYm86IGNsb2NrIHN0YXRlIGltYmFsYW5jZSBmb3IgdXNiX2Nsa3Mgd2l0aCBVU0I0Ci0gW0hp
Z2hdIHBoeTogcWNvbS1xbXAtY29tYm86IHVuY2xvY2tlZCByZWdpc3RlciBhY2Nlc3MgaW4gVVNC
NCBpbml0IHBhdGgKLSBbTWVkaXVtXSBwaHk6IHFjb20tcW1wLWNvbWJvOiBtaXNzaW5nIGNsb2Nr
IHJvbGxiYWNrIG9uIHJ1bnRpbWUgcmVzdW1lIGVycm9yCi0tCgpjb21taXQgZTgxYTQ2MjE1M2Ex
YWUzNzEyNzU0Mzc4YTA2Yzg4YmQ5NjNkMThlZQpBdXRob3I6IFdlc2xleSBDaGVuZyA8d2VzbGV5
LmNoZW5nQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHF1YWxjb21tOiBxbXAtY29tYm86IERpZmZl
cmVudGlhdGUgY2xvY2tzIHJlbGF0ZWQgdG8gdGhlIFVTQiBibG9jawoKVGhpcyBwYXRjaCBzcGxp
dHMgdGhlIFVTQiBhbmQgRGlzcGxheVBvcnQgY2xvY2tzIGludG8gYSBzZXBhcmF0ZSBsaXN0IHRo
YXQKaXMgZW5hYmxlZCBvbmx5IHdoZW4gdGhlIFVTQiBpbml0aWFsaXphdGlvbiByb3V0aW5lIGlz
IGV4ZWN1dGVkLiBJdCBhbHNvCm1vdmVzIGF1dG9ub21vdXMgbW9kZSBjb250cm9sIHRvIHdoZW4g
VVNCIGlzIGFjdGl2ZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1jb21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJv
LmMKPiBpbmRleCBhNGYxMzBmYzMzZTM5Li5mMTRmYjhlZjkwMjg5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gKysrIGIvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKWyAuLi4gXQo+IEBAIC0yNjc4LDcgKzI2
ODAsMTEgQEAgc3RhdGljIGlubGluZSB2b2lkIHFwaHlfY2xyYml0cyh2b2lkIF9faW9tZW0gKmJh
c2UsIHUzMiBvZmZzZXQsIHUzMiB2YWwpCj4gIAo+ICAvKiBsaXN0IG9mIGNsb2NrcyByZXF1aXJl
ZCBieSBwaHkgKi8KPiAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBxbXBfY29tYm9fcGh5X2Ns
a19sW10gPSB7Cj4gLQkiYXV4IiwgImNmZ19haGIiLCAicmVmIiwgImNvbV9hdXgiLAo+ICsJImNm
Z19haGIiLCAicmVmIiwKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBjaGFyICogY29uc3QgcW1w
X2NvbWJvX3VzYl9waHlfY2xrX2xbXSA9IHsKPiArCSJhdXgiLCAiY29tX2F1eCIsCj4gIH07Cgpb
U2V2ZXJpdHk6IEhpZ2hdCldoZW4gdGhlc2UgY2xvY2tzIGFyZSBzZXBhcmF0ZWQgaW50byB1c2Jf
Y2xrcywgdGhleSBhcmUgbm8gbG9uZ2VyIGVuYWJsZWQKZHVyaW5nIHFtcF9jb21ib191c2I0X2lu
aXQoKS4KClNpbmNlIHFtcF9jb21ib191c2I0X2luaXQoKSBjYWxscyBxbXBfY29tYm9fcmVjb25m
aWd1cmVfcGh5KCkgYW5kCnFtcF9jb21ib191c2JfcG93ZXJfb24oKSB0byBhY2Nlc3MgUENTIGFu
ZCBTZXJEZXMgcmVnaXN0ZXJzLCB3aWxsIHRoaXMKY2F1c2UgdW5jbG9ja2VkIHJlZ2lzdGVyIGFj
Y2VzcyBmYXVsdHMgKHN1Y2ggYXMgYSBzeW5jaHJvbm91cyBleHRlcm5hbAphYm9ydCkgYmVjYXVz
ZSB1c2JfY2xrcyBhcmUgbm90IGVuYWJsZWQgaW4gdGhlIFVTQjQgcGF0aD8KClsgLi4uIF0KPiBA
QCAtNDQwMywxMyArNDQwOSwyMCBAQCBzdGF0aWMgaW50IHFtcF9jb21ib191c2JfaW5pdChzdHJ1
Y3QgcGh5ICpwaHkpCj4gIAkJcmV0dXJuIDA7Cj4gIAl9Cj4gIAo+IC0JcmV0ID0gcW1wX2NvbWJv
X2NvbV9pbml0KHFtcCwgZmFsc2UpOwo+ICsJcmV0ID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUo
cW1wLT5udW1fdXNiX2Nsa3MsIHFtcC0+dXNiX2Nsa3MpOwo+ICAJaWYgKHJldCkKPiAgCQlyZXR1
cm4gcmV0OwoKW1NldmVyaXR5OiBIaWdoXQpKdXN0IGFib3ZlIHRoaXMgaW4gcW1wX2NvbWJvX3Vz
Yl9pbml0KCksIHRoZXJlIGlzIGEgY2hlY2sgZm9yIFVTQjQ6CgoJaWYgKHFtcC0+dXNiNF9pbml0
X2NvdW50KSB7CgkJcW1wLT5pbml0X2NvdW50Kys7CgkJcW1wLT51c2JfaW5pdF9jb3VudCsrOwoJ
CXJldHVybiAwOwoJfQoKSWYgVVNCNCBpcyBhY3RpdmUsIHFtcC0+dXNiX2luaXRfY291bnQgaXMg
aW5jcmVtZW50ZWQgYnV0IHVzYl9jbGtzIGFyZQpuZXZlciBlbmFibGVkLgoKTGF0ZXIsIHFtcF9j
b21ib19ydW50aW1lX3N1c3BlbmQoKSB1bmNvbmRpdGlvbmFsbHkgZGlzYWJsZXMgdXNiX2Nsa3Mg
YmFzZWQKb24gdXNiX2luaXRfY291bnQ6CgoJaWYgKHFtcC0+dXNiX2luaXRfY291bnQpIHsKCQlx
bXBfY29tYm9fZW5hYmxlX2F1dG9ub21vdXNfbW9kZShxbXApOwoJCWNsa19idWxrX2Rpc2FibGVf
dW5wcmVwYXJlKHFtcC0+bnVtX3VzYl9jbGtzLCBxbXAtPnVzYl9jbGtzKTsKCX0KCkNvdWxkIHRo
aXMgY2F1c2UgYSBjbG9jayBkaXNhYmxlIHVuZGVyZmxvdyBzaW5jZSB0aGUgY2xvY2tzIHdlcmUg
c2tpcHBlZApkdXJpbmcgaW5pdGlhbGl6YXRpb24/IFNpbWlsYXJseSwgd291bGQgcW1wX2NvbWJv
X3VzYl9leGl0KCkgbGVhayB0aGUKY2xvY2tzIGlmIFVTQiBpcyBpbml0aWFsaXplZCBmaXJzdCBh
bmQgZXhpdGVkIGJlZm9yZSBVU0I0PwoKWyAuLi4gXQo+IEBAIC00NzAxLDcgKzQ3MTksMTIgQEAg
c3RhdGljIGludCBfX21heWJlX3VudXNlZCBxbXBfY29tYm9fcnVudGltZV9yZXN1bWUoc3RydWN0
IGRldmljZSAqZGV2KQo+ICAJCXJldHVybiByZXQ7Cj4gIAl9Cj4gIAo+IC0JcW1wX2NvbWJvX2Rp
c2FibGVfYXV0b25vbW91c19tb2RlKHFtcCk7Cj4gKwlpZiAocW1wLT51c2JfaW5pdF9jb3VudCkg
ewo+ICsJCXJldCA9IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHFtcC0+bnVtX3VzYl9jbGtzLCBx
bXAtPnVzYl9jbGtzKTsKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0OwoKW1NldmVyaXR5
OiBNZWRpdW1dCklmIGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKCkgZmFpbHMgaGVyZSwgdGhlIGZ1
bmN0aW9uIHJldHVybnMgZWFybHkuIERvZXMKdGhpcyBlcnJvciBwYXRoIG5lZWQgdG8gY2xlYW4g
dXAgcW1wLT5waXBlX2NsayBhbmQgcW1wLT5jbGtzIHRoYXQgd2VyZQplbmFibGVkIGVhcmxpZXIg
aW4gcW1wX2NvbWJvX3J1bnRpbWVfcmVzdW1lKCk/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTMwLXFtcF9waHlfdXNiX2Nsa3Nf
djEtdjEtMS1kNGRjY2M5ZWIyNjNAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

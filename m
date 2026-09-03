Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5726AC624DB
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 20:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sBve3oHvl2z+rF4GSUZZRGumPzPdiGfKcrRQNlVmQk=; b=U0WwctyTq38mqJ
	RYtZWH0O+VXJfY66hHhHTO24h46RXHBM4Qd0PmN4h9zXDgnZp91XSljn95F317BcjIYY5CjOaHWM7
	uFmfyrlgXX+9jD5NGCZbGgRFh7+zIStH+gk+KYhYvy+KgO/SUERCXYtdTHIJ2hKz8EnqX+Dyis3+C
	QF124nfY1OXkBsAYWDoA0Zxlj9W2VZDPnGlDacdxGLNS+7x8/jHCkziZc6wOkyzDioRFVnXp9fazu
	QooAk6yGwF5xi+Lop7KSXcEKR3+H2bIGWAzNR5mxQat1yvQj+RyFRW40sUcfs4xjmmTzpm5v02xpH
	ZOAi9tYfp9GQ9MOtxv+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2ESE-00000000au5-2jgE;
	Thu, 03 Sep 2026 20:54:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2ESD-00000000atx-3BWS
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 20:54:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 848E341AAC;
	Thu,  3 Sep 2026 20:54:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA4E1F000E9;
	Thu,  3 Sep 2026 20:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788468877;
	bh=aE9v9B5eRnSI6xpicfymScibzPae9lIzGDw+sAemqpg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TryPiCaPrsWHDjSCEm5lBmFNFCzdD1HeunMKNdbljIo+xe7JRwuDnLBHb40wYpulO
	 zb9bHJQuHmt5LLv9jBApe4hRTMOaAvyLNrmcEJKc8eKDmXhU1QrSAAZQcfYDZoc6Ug
	 WvT2IYNkSYS4NGBl8/Xemia+cFvda+zgXj2MzLbF2o5B7GMyHZUF351rVxDRRkJ+lV
	 1buVae6tXyMoSm/7RxQYTZaIduiCoe4WYGxqvJ7GGnXGwO+dlx6ejUT4zw3ThtwBct
	 BJvTJ24QgIqp7hKYBYnKVbtsz0lw3h4Zt3elI7FqDW8wos/vRqKzSeDNkbiySyZyfL
	 xzOXRLGEnB+iQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY
 driver
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, media-ci@linuxtv.org, devicetree@vger.kernel.org
In-Reply-To: <20260903-x1e-csi2-phy-v17-2-26606fa9a039@linaro.org>
References: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org>
 <20260903-x1e-csi2-phy-v17-2-26606fa9a039@linaro.org>
Date: Thu, 03 Sep 2026 20:54:36 +0000
Message-Id: <20260903205436.DEA4E1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIE1JUEkgRC1Q
SFkgY29uZmlndXJhdGlvbiBpZ25vcmVzIHRoZSByZXF1ZXN0ZWQgbnVtYmVyIG9mIGFjdGl2ZSBs
YW5lcywgZW5hYmxpbmcgYWxsIHBoeXNpY2FsbHkgbWFwcGVkIGxhbmVzIGluc3RlYWQuCi0tCgpj
b21taXQgODAxODQxOTRkNDM2YjRlYTY0YzllYmM3OTkwNzA3MGI1OWM5ZGU1MwpBdXRob3I6IEJy
eWFuIE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKcGh5OiBxY29tLW1p
cGktY3NpMjogQWRkIGEgQ1NJMiBNSVBJIERQSFkgZHJpdmVyCgpBZGRzIGEgbmV3IE1JUEkgQ1NJ
MiBkcml2ZXIgaW4gRFBIWSBtb2RlIGJ5IGltcG9ydGluZyBleGlzdGluZyBDQU1TUyBDU0kKUEhZ
IGluaXQgc2VxdWVuY2VzLiBTdXBwb3J0cyB0aGUgcWNvbSx4MWU4MDEwMC1jc2kyLXBoeSBkZXZp
Y2UgYW5kIGluY2x1ZGVzCmRhdGEvY2xvY2sgbGFuZSBwb3NpdGlvbmluZyBhbmQgcG9sYXJpdHkg
c2VsZWN0aW9uLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
bWlwaS1jc2kyLWNvcmUuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3Np
Mi1jb3JlLmMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tbWlwaS1jc2kyLWNvcmUuYwpbIC4uLiBdCj4gK3N0YXRpYyBpbnQgcGh5X3Fjb21fbWlw
aV9jc2kyX2NvbmZpZ3VyZShzdHJ1Y3QgcGh5ICpwaHksCj4gKwkJCQkJdW5pb24gcGh5X2NvbmZp
Z3VyZV9vcHRzICpvcHRzKQo+ICt7Cj4gKwlzdHJ1Y3QgbWlwaV9jc2kycGh5X2RldmljZSAqY3Np
MnBoeSA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICsJc3RydWN0IHBoeV9jb25maWd1cmVfb3B0
c19taXBpX2RwaHkgKmRwaHlfY2ZnID0gJm9wdHMtPm1pcGlfZHBoeTsKPiArCXN0cnVjdCBtaXBp
X2NzaTJwaHlfc3RyZWFtX2NmZyAqc3RyZWFtX2NmZyA9ICZjc2kycGh5LT5zdHJlYW1fY2ZnOwo+
ICsJaW50IHJldDsKPiArCj4gKwlyZXQgPSBwaHlfbWlwaV9kcGh5X2NvbmZpZ192YWxpZGF0ZShk
cGh5X2NmZyk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJaWYgKGRwaHlf
Y2ZnLT5sYW5lcyA8IDEgfHwgZHBoeV9jZmctPmxhbmVzID4gQ1NJMl9NQVhfREFUQV9MQU5FUykK
PiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwlzdHJlYW1fY2ZnLT5saW5rX2ZyZXEgPSBkcGh5
X2NmZy0+aHNfY2xrX3JhdGU7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KU2hvdWxkIHRoZSByZXF1ZXN0
ZWQgYWN0aXZlIGxhbmUgY291bnQgZnJvbSBvcHRzLT5taXBpX2RwaHkubGFuZXMgYmUgc3RvcmVk
CmluIHN0cmVhbV9jZmcgaGVyZT8gQ3VycmVudGx5LCBkcGh5X2NmZy0+bGFuZXMgaXMgdmFsaWRh
dGVkIGJ1dCB0aGUgdmFsdWUKZG9lcyBub3QgYXBwZWFyIHRvIGJlIHNhdmVkIGZvciBsYXRlciB1
c2UgYnkgdGhlIFBIWSBlbmFibGUgcm91dGluZXMuCgo+ICsKPiArCXJldHVybiAwOwo+ICt9Clsg
Li4uIF0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1j
c2kyLTNwaC1kcGh5LmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTIt
M3BoLWRwaHkuYwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYwpbIC4uLiBdCj4gK3N0YXRpYyBpbnQgcGh5X3Fj
b21fbWlwaV9jc2kyX2xhbmVzX2VuYWJsZShzdHJ1Y3QgbWlwaV9jc2kycGh5X2RldmljZSAqY3Np
MnBoeSwKPiArCQkJCQkgICBzdHJ1Y3QgbWlwaV9jc2kycGh5X3N0cmVhbV9jZmcgKmNmZykKPiAr
ewo+ICsJY29uc3Qgc3RydWN0IG1pcGlfY3NpMnBoeV9kZXZpY2VfcmVncyAqcmVncyA9IGNzaTJw
aHlfZGV2X3RvX3JlZ3MoY3NpMnBoeSk7Cj4gKwlzdHJ1Y3QgbWlwaV9jc2kycGh5X2xhbmVzX2Nm
ZyAqbGFuZV9jZmcgPSAmY2ZnLT5sYW5lX2NmZzsKPiArCXU4IHNldHRsZV9jbnQ7Cj4gKwl1OCB2
YWw7Cj4gKwlpbnQgaTsKWyAuLi4gXQo+ICsJLyoKPiArCSAqIENTSV9DT01NT05fQ1RSTDUgaXMg
YSBwaHlzaWNhbCBsYW5lIHBvd2VyLXVwIGJpdG1hcDoKPiArCSAqIC0gQml0cyBbMCwyLDQsNl0g
4oaSIEQtUEhZIGRhdGEgbGFuZXMoTE4wLCBMTjIsIExONCwgTE42KQo+ICsJICogLSBCaXRzIFsx
LDMsNV0g4oaSIEMtUEhZIHRyaW8gbGFuZXMoTE4xLCBMTjMsIExONSkKPiArCSAqIC0gQml0IFs3
XSDihpIgRC1QSFkgY2xvY2sgbGFuZShMTkNLKSBkZWRpY2F0ZWQgY2xvY2sgZW5hYmxlCj4gKwkg
Ki8KPiArCXZhbCA9IEJJVChsYW5lX2NmZy0+Y2xrLnBvcyk7Cj4gKwlmb3IgKGkgPSAwOyBpIDwg
Y2ZnLT5udW1fZGF0YV9sYW5lczsgaSsrKQo+ICsJCXZhbCB8PSBCSVQobGFuZV9jZmctPmRhdGFb
aV0ucG9zICogMik7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGlzIGxvb3AgdW5jb25kaXRp
b25hbGx5IGVuYWJsZSBhbGwgcGh5c2ljYWxseSBtYXBwZWQgbGFuZXMgaW5zdGVhZApvZiB0aGUg
ZHluYW1pY2FsbHkgcmVxdWVzdGVkIGxhbmUgY291bnQ/CgpJZiBhIE1JUEkgQ1NJLTIgY29uc3Vt
ZXIgY2FsbHMgcGh5X2NvbmZpZ3VyZSgpIHJlcXVlc3RpbmcgZmV3ZXIgYWN0aXZlIGxhbmVzCnRo
YW4gdGhlIGhhcmR3YXJlIG1heGltdW0gbWFwcGVkIGluIHRoZSBkZXZpY2UgdHJlZSwgdGhlIFBI
WSB3aWxsIHN0aWxsCnBvd2VyIHVwIGFsbCBvZiB0aGVtIGhlcmUgc2luY2UgY2ZnLT5udW1fZGF0
YV9sYW5lcyBpcyBkZXJpdmVkIGZyb20gdGhlCmRldmljZSB0cmVlIHBhcnNpbmcuIFNob3VsZCB0
aGlzIHVzZSBhIGR5bmFtaWNhbGx5IGNvbmZpZ3VyZWQgbGFuZSBjb3VudCwKb3IgYXQgbGVhc3Qg
cmVqZWN0IHRoZSBjb25maWd1cmF0aW9uIGluIHBoeV9xY29tX21pcGlfY3NpMl9jb25maWd1cmUg
aWYgaXQKZG9lc24ndCBtYXRjaCB0aGUgaGFyZHdhcmU/Cgo+ICsKPiArCXdyaXRlbCh2YWwsIGNz
aTJwaHktPmJhc2UgKwo+ICsJICAgICAgIENTSVBIWV8zUEhfQ01OX0NTSV9DT01NT05fQ1RSTG4o
cmVncy0+Y29tbW9uX3JlZ3Nfb2Zmc2V0LCA1KSk7ClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDMteDFlLWNzaTIt
cGh5LXYxNy0wLTI2NjA2ZmE5YTAzOUBsaW5hcm8ub3JnP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C764CA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1VeAU0/eRXifKa6AoLxZEypjsNHnbKxAXK8axyHjTw=; b=Qu84/xW8RfGzNj
	S9gQ1dLzL5OERXKds1dmXNenOTwUAoHQlxJ7Cj+Rm0sRZubPHCYGgXpg8wpYBIiqDjGfublsQ9JKw
	I6xS9XvUoMi4MPW2GunKvy7g06/UfFDqpn7l7lUf5FObpikhZyqkIqp9LBixSba8JU9OdPRjcD7ae
	EAI73M9yDd4s/E4iNEma71Nrln0JzPmJwSj3rOmcJjGC6KDu8afvYMRfsIfhyW4o3FmMyhhSjbIEa
	9zCCllYPAXnfFjA8eoqP2YXEiCOSUemWI+s6LvjajCBCy3CiJWgak2fMdxdzqz67gr/x4PDm7/YfF
	eqo43kP6SautXi1waJUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvt5-0000000DFcv-3Zek;
	Sat, 03 Oct 2026 09:18:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvt4-0000000DFcp-0IPA
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:18:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 68346602C2;
	Sat,  3 Oct 2026 09:18:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92E9B1F0089B;
	Sat,  3 Oct 2026 09:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791019113;
	bh=0gHzKlr+JRtSfZ6olTbs5i+9Rkgo/wToShRtzGa2Crk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ISvnw3YDt5O3Ghb91cx5TpmXKxLfmWTHCQP5hlXoH575w5A0pMFn+zAvbKsYyBNj+
	 En9iRY5qGntLRyRmTpHDj1DHURBU5NdvccIkPxP3E+AwfLC6tXJ1gN9NEkCRkIih1Q
	 /CVSMJUiNtvQQ/AQ8z45vm8QaiZqrZ4CxSGoF1qqMR3StzIrhQaESUJ0fWo+aPzBOq
	 qylNtzsU8la/mY3sbPLPuudlcL1YZiGzyFrQQHrBvaS6P3H1jLoVgz1x9uGZIhyWbJ
	 TsZzdB3m83YNX9cgJosGaCH0mkjA+EY3Fdr2kOz5xKxa7zOiuyP0sljR7RW+SVgPsf
	 6/AJlS/AKYQ8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 06/11] media: qcom: camss: csid: Add support for
 CSID 1080
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, media-ci@linuxtv.org, vkoul@kernel.org
In-Reply-To: <20261003-kaanapali-camss-v18-6-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-6-87ba4ebe0db1@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 09:18:32 +0000
Message-Id: <20261003091832.92E9B1F0089B@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRGF0YSBSYWNlIC8gVW5w
cm90ZWN0ZWQgU3RhdGUgTW9kaWZpY2F0aW9uCi0tCgpjb21taXQgZTE0NzUxNTFiMmI3ODA2MDkx
ZDhmYmFkZjc2MDNiYTExMzIwZDAyZQpBdXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1h
QG9zcy5xdWFsY29tbS5jb20+CgptZWRpYTogcWNvbTogY2Ftc3M6IGNzaWQ6IEFkZCBzdXBwb3J0
IGZvciBDU0lEIDEwODAKCkFkZCBzdXBwb3J0IGZvciB0aGUgQ1NJRCAxMDgwIGhhcmR3YXJlIGZv
dW5kIG9uIEthYW5hcGFsaSBTb0MuCkludHJvZHVjZSBDU0lEIDEwODAgaGFyZHdhcmUgcmVzb3Vy
Y2UgZGVzY3JpcHRpb25zIGFuZCBpbXBsZW1lbnQgdGhlCmhhcmR3YXJlLXNwZWNpZmljIHJlZ2lz
dGVyIHByb2dyYW1taW5nLCByZXNldCBzZXF1ZW5jZSwgYW5kIEJVRl9ET05FCmludGVycnVwdCBo
YW5kbGluZy4gQ1NJRCAxMDgwIHNwbGl0cyBSVVAgYW5kIEFVUCB1cGRhdGVzIGludG8gc2VwYXJh
dGUKcmVnaXN0ZXJzIGFuZCB1c2VzIGEgU0VUIHJlZ2lzdGVyIHRvIGNvbW1pdCB0aGUgdXBkYXRl
cy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1z
cy1jc2lkLTEwODAuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1j
c2lkLTEwODAuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4u
NDZlNDQzZTA1MTk1YQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC0xMDgwLmMKClsgLi4uIF0KCj4gK3N0YXRpYyB2b2lk
IF9fY3NpZF9hdXBfcnVwX2NsZWFyKHN0cnVjdCBjc2lkX2RldmljZSAqY3NpZCwgaW50IHBvcnRf
aWQpCj4gK3sKPiArCS8qIEhhcmR3YXJlIGNsZWFycyB0aGUgcmVnaXN0ZXJzIHVwb24gY29uc3Vt
aW5nIHRoZSBzZXR0aW5ncyAqLwo+ICsJY3NpZC0+YXVwX3VwZGF0ZSAmPSB+Q1NJRF9SVVBfQVVQ
X1JESShwb3J0X2lkKTsKPiArCWNzaWQtPnJ1cF91cGRhdGUgJj0gfkNTSURfUlVQX0FVUF9SREko
cG9ydF9pZCk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIF9fY3NpZF9hdXBfdXBkYXRlKHN0cnVj
dCBjc2lkX2RldmljZSAqY3NpZCwgaW50IHBvcnRfaWQpCj4gK3sKPiArCWNzaWQtPmF1cF91cGRh
dGUgfD0gQ1NJRF9SVVBfQVVQX1JESShwb3J0X2lkKTsKPiArCXdyaXRlbChjc2lkLT5hdXBfdXBk
YXRlLCBjc2lkLT5iYXNlICsgQ1NJRF9BVVBfQ01EKTsKPiArCj4gKwlfX2NzaWRfYXVwX3J1cF90
cmlnZ2VyKGNzaWQpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBfX2NzaWRfcmVnX3VwZGF0ZShz
dHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQsIGludCBwb3J0X2lkKQo+ICt7Cj4gKwljc2lkLT5ydXBf
dXBkYXRlIHw9IENTSURfUlVQX0FVUF9SREkocG9ydF9pZCk7Cj4gKwl3cml0ZWwoY3NpZC0+cnVw
X3VwZGF0ZSwgY3NpZC0+YmFzZSArIENTSURfUlVQX0NNRCk7Cj4gKwo+ICsJX19jc2lkX2F1cF9y
dXBfdHJpZ2dlcihjc2lkKTsKPiArfQoKW1NldmVyaXR5OiBMb3ddCkNhbiB0aGVzZSB1bi1zeW5j
aHJvbml6ZWQgcmVhZC1tb2RpZnktd3JpdGUgb3BlcmF0aW9ucyByYWNlIGJldHdlZW4gaGFyZGly
cQphbmQgcHJvY2VzcyBjb250ZXh0cz8KCldoZW4gc3RhcnRpbmcgbXVsdGlwbGUgc3RyZWFtcyBp
biBjc2lkX2NvbmZpZ3VyZV9zdHJlYW0oKSwgUkRJIDAgY291bGQKY29tcGxldGUgYSBmcmFtZSBh
bmQgdHJpZ2dlciB0aGUgQlVGX0RPTkUgaW50ZXJydXB0IHdoaWxlIFJESSAxIGlzIHN0aWxsIGJl
aW5nCmNvbmZpZ3VyZWQuIFRoaXMgd291bGQgY2F1c2UgY3NpZF9pc3IoKSB0byBjYWxsIF9fY3Np
ZF9hdXBfcnVwX2NsZWFyKCkKY29uY3VycmVudGx5IHdpdGggX19jc2lkX2F1cF91cGRhdGUoKSBv
ciBfX2NzaWRfcmVnX3VwZGF0ZSgpIGV4ZWN1dGluZyBpbgpwcm9jZXNzIGNvbnRleHQuCgpTaW5j
ZSB0aGVzZSB1cGRhdGVzIHRvIGNzaWQtPmF1cF91cGRhdGUgYW5kIGNzaWQtPnJ1cF91cGRhdGUg
YXJlIHVucHJvdGVjdGVkLAphIGNvbmN1cnJlbnQgbW9kaWZpY2F0aW9uIG1pZ2h0IGNhdXNlIGJp
dCB1cGRhdGVzIHRvIGJlIGxvc3QuIFdoaWxlIHRoaXMgbWlnaHQKb25seSBsZWFkIHRvIGEgaGFy
bWxlc3MgcmVkdW5kYW50IHRyaWdnZXIgb3IgcHJldmVudCBhIHJlZHVuZGFudCB3cml0ZSwgaXQg
aXMKdW5kZWZpbmVkIGJlaGF2aW9yIGluIEMgYW5kIGNhbiB0cmlnZ2VyIEtDU0FOIHdhcm5pbmdz
LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MTAwMy1rYWFuYXBhbGktY2Ftc3MtdjE4LTAtODdiYTRlYmUwZGIxQG9zcy5xdWFsY29t
bS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52E5EC9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 21:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXoEMtXbZ6VBQxgiRsbGN5+ymKzR9uzSNXl4o/IUAS0=; b=iH0l1BoKNSTDKM
	8CsCiUta0ZyCx7iXsmwx78gyP8zCUQEIky+HvAaWm/XOew7+mmApO/KgYBGfk4grOhWF/SNbTwJ2t
	RXj1lBvpdnoM0QPbIFd1vFQp83abghr3kPQU/NqLfTPbDfaTHJMp005atYOOumWIoD8UZ3981uFMU
	WleQM9VZwmsQ1P2XE3j7PMzVu5gZh2lH8u7lZgmN2KV00MRgDOJspPrqh/84kjRiB71QHMSmgaXSN
	/Cllufo4lkZHwzaGm31NqX/CZgEK9Hz0rCwoJDa6r7J60p/RIc7/nGAQ3fuNJCSk6xAlGHxYPyp6w
	DVGPo5OuZxFFdxX2ZiVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvzH-0000000GrMq-0Ls6;
	Sun, 27 Sep 2026 21:00:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvzF-0000000GrMh-3oY8
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 21:00:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 37BDA60052;
	Sun, 27 Sep 2026 21:00:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F36A1F000FF;
	Sun, 27 Sep 2026 21:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542840;
	bh=B2mLz/gUdjC0fGdcdDan15QQl2zdciRUNW0AaKpUx1k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fcqN94Mz46SwALZrQdhS8hI2opGqbqM2XIURVoGaiZdgkZN63qtL4Q5K5pWzmeCHs
	 84tsOHgGGFaXVYTM6uSBIl7Og6oLrBCpyHcNGgWmqJUiPyvDXUccRiqug4t3ZxBYeV
	 NQWa02wIm1swkp0nLJe1kNZabW6Hkp0bMho1edYprZLNkM+wMtE8IoK8PoP0ftpk6q
	 yiXPkWBJ/Oz1dgJG4drMa0gj1wvJbE6Ltu+dXubNB5yujhE0AyeOykL3C2db3hQYsu
	 n1y1gcjNHIQHgtlz31To9sNKjBf8njcpkCIfdThtZTo4miYC5YigSQksYCqCMP+fVh
	 j9+wyeVYOMhUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 08/13] clk: zte: Add zx PLL support infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, olteanv@gmail.com, mfd@lists.linux.dev, lee@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260927-zx29clk-v13-8-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-8-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 21:00:39 +0000
Message-Id: <20260927210040.4F36A1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gY2xrOiB6dGU6IHVu
c2FmZSBpbnN0YW50IFBMTCByYXRlIGNoYW5nZXMgcGVybWl0dGVkIGR1ZSB0byBtaXNzaW5nIENM
S19TRVRfUkFURV9HQVRFCi0tCgpjb21taXQgODFiOGNlY2E2NDViYjFhYTFhOGM4ZmQ3M2I5ZmRm
Y2Y5MzYwMGMwZApBdXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFp
bC5jb20+CgpjbGs6IHp0ZTogQWRkIHp4IFBMTCBzdXBwb3J0IGluZnJhc3RydWN0dXJlCgpUaGlz
IHBhdGNoIGFkZHMgY29kZSB0byBkZWNvZGUgYW5kIHByb2dyYW0gUExMIHNldHRpbmdzIG9uIFpU
RSdzIHp4Mjk3NTIwdjMKU29DLCBwYXJzaW5nIGJvb3Rsb2FkZXItcHJvZ3JhbW1lZCB2YWx1ZXMg
dG8gZmlsbCB0aGUgY2xvY2sgdHJlZSB3aXRoCmFwcHJvcHJpYXRlbHkgY2xvY2tlZCBwYXJlbnQg
Y2xvY2tzIGluc3RlYWQgb2YgaGFyZGNvZGVkIGZpeGVkIHJhdGVzLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jbGsvenRlL3BsbC16eC5jIGIvZHJpdmVycy9jbGsvenRlL3BsbC16eC5jCj4gaW5k
ZXggZmM3NmM2NTI0YTE2My4uZDM2ODc0OTVkMDZjZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Ns
ay96dGUvcGxsLXp4LmMKPiArKysgYi9kcml2ZXJzL2Nsay96dGUvcGxsLXp4LmMKWyAuLi4gXQo+
ICtzdGF0aWMgaW50IHp4MjlfcGxsX3NldF9yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LCB1bnNpZ25l
ZCBsb25nIHJhdGUsCj4gKwkJCSAgICAgdW5zaWduZWQgbG9uZyBwYXJlbnRfcmF0ZSkKPiArewo+
ICsJc3RydWN0IHp4MjlfY2xrX3BsbCAqcGxsID0gdG9fengyOV9jbGtfcGxsKGh3KTsKPiArCXUz
MiBzZXR0aW5nOwo+ICsKPiArCS8qCj4gKwkgKiBUT0RPOiBJbXBsZW1lbnQgZ3JhZHVhbCBQTEwg
cmF0ZSBjaGFuZ2UuIFBMTHMgY2FuIGJlIGNoYW5nZWQgd2hpbGUgdGhleSBhcmUgcnVubmluZyBh
bmQKPiArCSAqIGRvd25zdHJlYW0gaGFyZHdhcmUgaXMgZ2VuZXJhbGx5IGZpbmUgd2l0aCB0aGF0
LiBUaGUgZXhjZXB0aW9uIGlzIERSQU0sIHdoaWNoIHJlYWRzCj4gKwkgKiBpbmNvcnJlY3QgdmFs
dWVzIGlmIGNoYW5nZWQgdG9vIGZhc3QuCj4gKwkgKgo+ICsJICogQ2hhbmdpbmcgdGhlIG1wbGwg
cmF0ZSBpcyBwb3RlbnRpYWxseSB1c2VmdWwgZm9yIG92ZXIvdW5kZXJjbG9ja2luZy4gR2F0aW5n
IG1wbGwgaXMKPiArCSAqIHVucmVhbGlzdGljIGJlY2F1c2UgdG9vIG1hbnkgZGV2aWNlcyBkZXBl
bmQgb24gaXQuCj4gKwkgKi8KPiArCXNldHRpbmcgPSB6eDI5X3BsbF9jYWxjX3ZhbHVlcyhwbGws
IHBhcmVudF9yYXRlLCByYXRlLCByYXRlLCByYXRlKTsKPiArCWlmICghc2V0dGluZykKPiArCQly
ZXR1cm4gLUVJTlZBTDsKPiArCj4gKwlkZXZfZGJnKHBsbC0+ZGV2LCAiJXM6IFNldHRpbmcgbmV3
IGNvbmZpZ3VyYXRpb246IDB4JTA4eFxuIiwgY2xrX2h3X2dldF9uYW1lKGh3KSwgc2V0dGluZyk7
Cj4gKwo+ICsJcmV0dXJuIHJlZ21hcF91cGRhdGVfYml0cyhwbGwtPm1hcCwgcGxsLT5yZWcsIDB4
MDBmZmZmZmYsIHNldHRpbmcpOwoKW1NldmVyaXR5OiBNZWRpdW1dCldpbGwgd3JpdGluZyB0aGUg
bmV3IGRpdmlkZXIgdmFsdWVzIGluc3RhbnRhbmVvdXNseSBoZXJlIGNhdXNlIGEgY2xvY2sgZ2xp
dGNoCmZvciBsYXJnZSByYXRlIGNoYW5nZXM/CgpUaGUgVE9ETyBub3RlcyB0aGF0IGdyYWR1YWwg
cmF0ZSBjaGFuZ2VzIGFyZSBub3QgeWV0IGltcGxlbWVudGVkLCB3aGljaCBjb3VsZApsZWFkIHRv
IHRlbXBvcmFyeSBpbmNvcnJlY3QgY2xvY2sgb3V0cHV0IG9yIERSQU0gY29ycnVwdGlvbiBpZiBh
IHJhdGUgY2hhbmdlCmlzIHJlcXVlc3RlZC4KClsgLi4uIF0KPiArc3RydWN0IGNsa19odyAqenhf
Y2xrX3JlZ2lzdGVyX3BsbChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCByZWdtYXAgKnJlZ21h
cCwKPiArCQkJCSAgIGNvbnN0IHN0cnVjdCB6eF9wbGxfZGVzYyAqZGVzYywgc3RydWN0IGNsa19o
dyAqIGNvbnN0ICpjbG9ja3MpCj4gK3sKWyAuLi4gXQo+ICsJaW5pdC5uYW1lID0gZGVzYy0+bmFt
ZTsKPiArCWluaXQucGFyZW50X2RhdGEgPSBwYXJlbnRzOwo+ICsJaW5pdC5udW1fcGFyZW50cyA9
IGRlc2MtPm51bV9wYXJlbnRzOwo+ICsKPiArCS8qCj4gKwkgKiBEaXNhbGxvdyBsaXZlIHJlcGFy
ZW50LCBidXQgYWxsb3cgcmF0ZSBjaGFuZ2VzLiBQTExzIGNhbiBoYW5kbGUgZ3JhZHVhbCBjaGFu
Z2VzIGZpbmUsIGJ1dAo+ICsJICogbGFyZ2Ugb25lcyBjYXVzZSBhIHRlbXBvcmFyeSBpbmNvcnJl
Y3Qgb3V0cHV0LCB3aGljaCBjYW4gYnJlYWsgZG93bnN0cmVhbSBkZXZpY2VzLgo+ICsJICogU2Vl
IHp4MjlfcGxsX3NldF9yYXRlIGZvciBjb25zaWRlcmF0aW9ucyBvbiB0aGF0Lgo+ICsJICovCj4g
Kwlpbml0LmZsYWdzID0gQ0xLX1NFVF9QQVJFTlRfR0FURTsKCltTZXZlcml0eTogTWVkaXVtXQpT
aW5jZSBncmFkdWFsIHJhdGUgY2hhbmdlcyBhcmUgbm90IGFjdHVhbGx5IGltcGxlbWVudGVkIHll
dCwgZG9lcyBvbWl0dGluZyB0aGUKQ0xLX1NFVF9SQVRFX0dBVEUgZmxhZyBtaXNpbmZvcm0gdGhl
IGNsb2NrIGZyYW1ld29yayB0aGF0IGl0IGlzIHNhZmUgdG8gYXBwbHkKbGl2ZSByYXRlIGNoYW5n
ZXMgdG8gdGhpcyBQTEw/CgpXaGlsZSBnYXRpbmcgbXBsbCBtaWdodCBiZSB1bnJlYWxpc3RpYyBh
cyBub3RlZCBlYXJsaWVyLCBsZWF2aW5nIG91dApDTEtfU0VUX1JBVEVfR0FURSBiZWZvcmUgZ3Jh
ZHVhbCBzdGVwcGluZyBpcyBpbXBsZW1lbnRlZCBtaWdodCBwZXJtaXQgdW5zYWZlCmxpdmUganVt
cHMgaWYgYSByYXRlIGNoYW5nZSBpcyBldmVyIHJlcXVlc3RlZCBvbiBhbiBhY3RpdmUgUExMLgoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDkyNy16eDI5Y2xrLXYxMy0wLTcwZDhmNjczMzg2Y0BnbWFpbC5jb20/cGFydD04CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

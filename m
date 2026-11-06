Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C1C606A329
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 14:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uh/V/RkR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bzH26ZJR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0bf93N6Fg2MzXW/X+jY5zSYkCQPoPVZ7an8u6R1KDpI=; b=uh/V/RkRKSjC454bHi2TPtsmkH
	ssmuBfdBspRZIx3M/EuYzFhT7r0rhQlz/DvDTfVCaCE3W2dFwIumIrkuCpMYLL+CasAj2Nk8jfNuC
	NolPe3UuBI4MhK3HhtH09Qpjvfo6MH4UnrINE1cn8Qf6lF8ac7oijK7omssHhiu61+VuSsFiB4zIm
	TdGppjBUVIagO/SY7ppfM24NHain2W/etdY8M+7wLWuA1KLKqazFG8QGTX2GHv9Dg9GL8YSkKZ0wT
	rxQZgNS4rtBiTtBKMiTYkfs9NRiOM2VsMWt21z7nUlYCz4Mg2ajcTy4CKcIK2jli2pStbgNBjAuK4
	JWp0spvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPKZ3-0000000Cb8j-1NWH;
	Fri, 06 Nov 2026 14:05:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPKZ1-0000000Cb7m-1cwz
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 14:05:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 92A1F6020F;
	Fri,  6 Nov 2026 14:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF1081F008A1;
	Fri,  6 Nov 2026 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793973906;
	bh=JLfwMbD8ieMoKHUumYpmrrpv16KRq8OjWRwIwoqLIhM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bzH26ZJRh9EE+PUgkvxHRxbHNZH9JxHwpCx9HLF/J4A7WRGUHCjHyAYOa5SVGTy8b
	 /oiohiqQwXTVHR70Pw26NFtVtdos/V97tLgIyVgms64HJT3EScRY7eB1NRPvg+u0k4
	 1MUcfFOadvU3nvv8d7d6FdJWu1UmvHAb8+uQPZyPtVWf2LL6BGjwGktBrprfIiCwlp
	 l2AP1wf1WD4VfeX1tqLNrOGO2BQjY+lwlK9KRoHIg5wbO5fleHNCYC4HfNTKzh+Mdf
	 Madtg/qTYqV+ITNUadM7j9xYwrdkd+iw3cRJlnaqxQXSWQkI/iNJtJToMYszkufGQJ
	 rgwRAE68/yN+g==
Message-ID: <sashiko-outbox-201536@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 2/5] phy: Add common Innosilicon HDMI PHY helpers
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-jh7110-inno-hdmi-phy-v7-2-d49368303800@samsung.com>
References: <20261106-jh7110-inno-hdmi-phy-v7-0-d49368303800@samsung.com>
 <CGME20261106135506eucas1p228bf1f8e1cacdc716e6bf22b847f49d9@eucas1p2.samsung.com>
 <20261106-jh7110-inno-hdmi-phy-v7-2-d49368303800@samsung.com>
Date: Fri, 06 Nov 2026 14:05:05 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIHBoeTogaW5uby1oZG1p
OiAzMi1iaXQgb3ZlcmZsb3cgaW4KICBpbm5vX2hkbWlfcGh5X3ByZV9wbGxfcmVjYWxjX3JhdGUo
KQotIFtMb3ddIHBoeTogaW5uby1oZG1pOiB1bnNjYWxlZCB2Y29fcmF0ZSBsb2dnZWQgaW4KICBp
bm5vX2hkbWlfcGh5X3ByZV9wbGxfcmVjYWxjX3JhdGUoKQotLQoKY29tbWl0IDI0YzQzMTc5ODE0
NzZmYzU5NjE2NzA5MTM3NmVkZWM5OTg4OTVhMDgKQXV0aG9yOiBNaWNoYWwgV2lsY3p5bnNraSA8
bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKcGh5OiBBZGQgY29tbW9uIElubm9zaWxpY29uIEhE
TUkgUEhZIGhlbHBlcnMKClRoaXMgY29tbWl0IGFkZHMgYSBoZWxwZXIgbGlicmFyeSBmb3IgdGhl
IElubm9zaWxpY29uIEhETUkgUEhZIHByZS1QTEwsCnByb3ZpZGluZyBwaXhlbCBjbG9jayBsb29r
dXAsIGNsb2NrIHJhdGUgY2FsY3VsYXRpb24sIGFuZCByZWdpc3Rlcgpwcm9ncmFtbWluZyBmdW5j
dGlvbnMgdG8gYmUgc2hhcmVkIGFjcm9zcyBTb0MgZHJpdmVycy4KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3BoeS1pbm5vLWhkbWkuYyBiL2RyaXZlcnMvcGh5L3BoeS1pbm5vLWhkbWkuYwo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uNjkwMGQ0ZDgzZTQ2
NAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3BoeS9waHktaW5uby1oZG1pLmMKClsg
Li4uIF0KCj4gK3Vuc2lnbmVkIGxvbmcKPiAraW5ub19oZG1pX3BoeV9wcmVfcGxsX3JlY2FsY19y
YXRlKGNvbnN0IHN0cnVjdCBpbm5vX2hkbWlfcGh5X3ByZV9wbGwgKnBsbCwKPiArCQkJCSAgdW5z
aWduZWQgbG9uZyBwYXJlbnRfcmF0ZSkKPiArewo+ICsJdW5zaWduZWQgaW50IGNvbnRyb2wsIGRp
dl8xLCBkaXZfMiwgZGl2XzMsIHBjbGtfZGl2X2FiLCBwY2xrX2Rpdl9jZDsKPiArCXVuc2lnbmVk
IGludCBmcmFjX2Rpdl83XzAsIGZyYWNfZGl2XzE1XzgsIGZyYWNfZGl2XzIzXzE2LCBkaXY7Cj4g
Kwl1OCBuZCwgbm9fYSwgbm9fYiwgbm9fZDsKPiArCXVuc2lnbmVkIGxvbmcgZnJhYywgcmF0ZTsK
PiArCXU2NCB2Y28sIHZjb19yYXRlOwo+ICsJdTE2IG5mOwo+ICsJaW50IHJldDsKClsgLi4uIF0K
Cj4gKwluZCA9IGRpdl8xICYgSU5OT19QUkVfUExMX1BSRV9ESVZfTUFTSzsKPiArCW5mID0gKGRp
dl8yICYgSU5OT19QUkVfUExMX0ZCX0RJVl8xMV84X01BU0spIDw8IDg7Cj4gKwluZiB8PSBkaXZf
MzsKPiArCXZjbyA9IHBhcmVudF9yYXRlICogbmY7Cj4gKwo+ICsJaWYgKCEoZGl2XzIgJiBJTk5P
X1BSRV9QTExfRlJBQ19ESVZfRElTQUJMRSkpIHsKPiArCQlyZXQgPSBpbm5vX3JlYWQocGxsLCBJ
Tk5PX1BSRV9QTExfRlJBQ19ESVZfN18wLCAmZnJhY19kaXZfN18wKTsKPiArCQlpZiAocmV0KQo+
ICsJCQlnb3RvIGVycjsKPiArCQlyZXQgPSBpbm5vX3JlYWQocGxsLCBJTk5PX1BSRV9QTExfRlJB
Q19ESVZfMTVfOCwgJmZyYWNfZGl2XzE1XzgpOwo+ICsJCWlmIChyZXQpCj4gKwkJCWdvdG8gZXJy
Owo+ICsJCXJldCA9IGlubm9fcmVhZChwbGwsIElOTk9fUFJFX1BMTF9GUkFDX0RJVl8yM18xNiwK
PiArCQkJCSZmcmFjX2Rpdl8yM18xNik7Cj4gKwkJaWYgKHJldCkKPiArCQkJZ290byBlcnI7Cj4g
Kwo+ICsJCWZyYWMgPSBmcmFjX2Rpdl83XzAgfCAoZnJhY19kaXZfMTVfOCA8PCA4KSB8Cj4gKwkJ
ICAgICAgIChmcmFjX2Rpdl8yM18xNiA8PCAxNik7Cj4gKwkJdmNvICs9IERJVl9ST1VORF9DTE9T
RVNUKHBhcmVudF9yYXRlICogZnJhYywKPiArCQkJCQkgQklUKElOTk9fRlJBQ19ESVZfV0lEVEgp
KTsKPiArCX0KCltTZXZlcml0eTogTWVkaXVtXQpDYW4gcGFyZW50X3JhdGUgKiBuZiBhbmQgcGFy
ZW50X3JhdGUgKiBmcmFjIG92ZXJmbG93IG9uIDMyLWJpdAphcmNoaXRlY3R1cmVzPwoKQm90aCBw
YXJlbnRfcmF0ZSBhbmQgZnJhYyBhcmUgdW5zaWduZWQgbG9uZywgYW5kIG5mIGlzIHUxNiwgc28g
Ym90aAptdWx0aXBsaWNhdGlvbnMgYXJlIGV2YWx1YXRlZCBpbiAzMi1iaXQgYXJpdGhtZXRpYyBv
biAzMi1iaXQgc3lzdGVtcwpiZWZvcmUgd2lkZW5pbmcgdG8gdTY0IHZjby4gIFdpdGggYSAyNCBN
SHogcmVmZXJlbmNlIGNsb2NrLCBwYXJlbnRfcmF0ZSAqCm5mIG92ZXJmbG93cyAzMiBiaXRzIHdo
ZW4gbmYgPj0gMTc5LCBhbmQgcGFyZW50X3JhdGUgKiBmcmFjIG92ZXJmbG93cyBmb3IKYW55IDI0
LWJpdCBmcmFjdGlvbmFsIGRpdmlkZXIgZW50cnksIGNhdXNpbmcKaW5ub19oZG1pX3BoeV9wcmVf
cGxsX3JlY2FsY19yYXRlKCkgdG8gcmV0dXJuIGEgY29ycnVwdGVkIHBpeGVsIGNsb2NrCnJhdGUu
ICBDYXN0aW5nIHBhcmVudF9yYXRlIHRvIHU2NCBhbmQgdXNpbmcgRElWX1JPVU5EX0NMT1NFU1Rf
VUxMKCkgd291bGQKYXZvaWQgdGhlIHRydW5jYXRpb24uCgo+ICsKPiArCXZjb19yYXRlID0gdmNv
Owo+ICsKPiArCWlmIChjb250cm9sICYgSU5OT19QQ0xLX1ZDT19ESVZfNV9NQVNLKSB7Cj4gKwkJ
ZGl2ID0gbmQgKiA1Owo+ICsJfSBlbHNlIHsKPiArCQlub19hID0gcGNsa19kaXZfYWIgJiBJTk5P
X1BDTEtfRElWX0FfTUFTSzsKPiArCQlub19iID0gRklFTERfR0VUKElOTk9fUENMS19ESVZfQl9N
QVNLLCBwY2xrX2Rpdl9hYikgKyAyOwo+ICsJCW5vX2QgPSBwY2xrX2Rpdl9jZCAmIElOTk9fUENM
S19ESVZfRF9NQVNLOwo+ICsKPiArCQlkaXYgPSBuZCAqIChub19hID09IDEgPyBub19iIDogbm9f
YSkgKiBub19kICogMjsKPiArCX0KPiArCj4gKwkvKgo+ICsJICogQW4gdW5wcm9ncmFtbWVkIHBy
ZS1QTEwgcmVhZHMgaXRzIGRpdmlkZXJzIGJhY2sgYXMgemVybywgd2hpY2ggd291bGQKPiArCSAq
IGxlYXZlIGRvX2RpdigpIGRpdmlkaW5nIGJ5IGl0Lgo+ICsJICovCj4gKwlpZiAoIWRpdikgewo+
ICsJCWRldl9kYmcocGxsLT5kZXYsICJwcmUtUExMIGRpdmlkZXJzIHJlYWQgYmFjayBhcyB6ZXJv
XG4iKTsKPiArCQlyZXR1cm4gMDsKPiArCX0KPiArCj4gKwlkb19kaXYodmNvLCBkaXYpOwo+ICsK
PiArCXJhdGUgPSBESVZfUk9VTkRfQ0xPU0VTVCgodW5zaWduZWQgbG9uZyl2Y28sIDEwMDApICog
MTAwMDsKPiArCj4gKwkvKiBUaGUgVkNPIGlzIG9ubHkgaW4gc3BlYyBiZXR3ZWVuIDEuNCBhbmQg
My4yIEdIeiwgc28gbG9nIGl0LiAqLwo+ICsJZGV2X2RiZyhwbGwtPmRldiwgIiVzIHJhdGUgJWx1
IHZjbyAlbGx1XG4iLCBfX2Z1bmNfXywgcmF0ZSwgdmNvX3JhdGUpOwoKW1NldmVyaXR5OiBMb3dd
CkRvZXMgdmNvX3JhdGUgbWlzcyB0aGUgZGl2aXNpb24gYnkgdGhlIHJlZmVyZW5jZSBwcmUtZGl2
aWRlciBuZD8KCkJlY2F1c2UgbmQgaXMgZm9sZGVkIGludG8gZGl2IHJhdGhlciB0aGFuIGFwcGxp
ZWQgdG8gdmNvIGJlZm9yZSB2Y29fcmF0ZSA9CnZjbywgZGV2X2RiZygpIGxvZ3MgbmQgdGltZXMg
dGhlIGFjdHVhbCBWQ08gZnJlcXVlbmN5IHdoZW5ldmVyIHByZWRpdiA+IDEuCgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTA2LWpo
NzExMC1pbm5vLWhkbWktcGh5LXY3LTAtZDQ5MzY4MzAzODAwQHNhbXN1bmcuY29tP3BhcnQ9MgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

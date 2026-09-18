Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16ADC982DA
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 14:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYgazxECFR3NQJNqmC18KooEApBC4fW/ZYlEHh7VFPU=; b=XknrPiUT57ogFy
	r1l+Qix7esMATf4zDtP29wxCGff0ua5CSPIyZiol0xR+FQs6FnGJ3vk+YUKgYvuYuN5/cxX2cwWkx
	8BsE0RCQM5hl0VXtpry4WbP5oDpq7tcPBhJHGViBle5ez+dn6MqtbQYJ7iwdp+x1SGM44GHyvsy2t
	NZvBfHIjWUL8CPO/aCkdzGpk0R4TYYRE5pXtMyyHjxpCQI0hUzrlNWdpGGcUuak/icLCpVqgDhH5r
	/NCIJBEHKDc1IDnAGh6zUeMjfUeXmxZ+R1ZV9MuvXqVPipbqKds9gdllWZgmyipEOThtsrSFRpqye
	xtturLQQRIpY8BAOO/TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZRL-0000000Eh7D-1LFB;
	Fri, 18 Sep 2026 14:19:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZRD-0000000Eh5I-3qaS
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 14:19:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 14C3D60A57;
	Fri, 18 Sep 2026 14:19:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 227071F00898;
	Fri, 18 Sep 2026 14:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789741178;
	bh=oBUlQpynhDAHb3Svjo0JkzyxPK6EYJ+2dxCIisYZPQg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jFWLfmkXO6EySpquV6kUrbXtDS7BYGtSrKeXlnLaSfLJgJJwvIlTE4VTjrvE+vAPo
	 tvXCXPNzHX2Wne5YO7whkSvu/So05pWe3SMMYqJePsZUkvpO/P7ZitqidxTOsPPZHs
	 x9hs59cyXIRVRsqEbX6tEi3vImtK96+I06UsWXnQMD4gyP+N7FT6F/H2/hsL9h8w4h
	 kPCopeVIkllVSH1nWTlvYfuezMONXqOzuLWzgMdW7eGSVkPIdct8kiqtAR7Q9zPR5z
	 P+wKjR4Hfb+JjCaCbOJuFFG9whwkROZbkxWvzBcaZmAdL0eu6JNhExRlL0gPhwuzGL
	 EUEr4H5YxJWoA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v20 5/6] media: qcom: camss: Add support for PHY API
 devices
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, media-ci@linuxtv.org, neil.armstrong@linaro.org
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-5-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-5-dc244e124e71@linaro.org>
Date: Fri, 18 Sep 2026 14:19:37 +0000
Message-Id: <20260918141938.227071F00898@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBjYW1zczog
aW5jb3JyZWN0IGRhdGEgcmF0ZSBwYXNzZWQgdG8gUEhZIGNvbmZpZwotIFtNZWRpdW1dIGtjb25m
aWc6IHNlbGVjdCBvZiBub24tZXhpc3RlbnQgc3ltYm9sIFBIWV9RQ09NX01JUElfQ1NJMgotLQoK
Y29tbWl0IDUzYzkxMjQ3ZTgxNzliYTUyMjQ3OGU1NGJiOTg4MzZjMTA2Y2QwZWUKQXV0aG9yOiBC
cnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJvLm9yZz4KCm1lZGlhOiBxY29t
OiBjYW1zczogQWRkIHN1cHBvcnQgZm9yIFBIWSBBUEkgZGV2aWNlcwoKQWRkIHRoZSBhYmlsaXR5
IHRvIHVzZSBhIFBIWSBwb2ludGVyIHdoaWNoIGludGVyYWN0cyB3aXRoIHRoZSBzdGFuZGFyZCBQ
SFkKQVBJLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNz
L0tjb25maWcgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvS2NvbmZpZwo+IGlu
ZGV4IDRlZGE0OGNiMWFkZjAuLjFlZGM1ZTVhMTgyOWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL0tjb25maWcKPiArKysgYi9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3Fjb20vY2Ftc3MvS2NvbmZpZwo+IEBAIC03LDMgKzcsNCBAQCBjb25maWcgVklERU9f
UUNPTV9DQU1TUwo+ICAJc2VsZWN0IFZJREVPX1Y0TDJfU1VCREVWX0FQSQo+ICAJc2VsZWN0IFZJ
REVPQlVGMl9ETUFfU0cKPiAgCXNlbGVjdCBWNEwyX0ZXTk9ERQo+ICsJc2VsZWN0IFBIWV9RQ09N
X01JUElfQ1NJMgoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBLY29uZmlnIHN5bWJvbCBl
eGlzdD8gSSBhbSB1bmFibGUgdG8gZmluZCBQSFlfUUNPTV9NSVBJX0NTSTIgYW55d2hlcmUKaW4g
dGhlIGtlcm5lbCB0cmVlLiAKClNlbGVjdGluZyBhIG5vbi1leGlzdGVudCBzeW1ib2wgaGFzIG5v
IGVmZmVjdC4gVGhpcyBjb3VsZCBsZWFkIHRvIGEgc2lsZW50CmZhaWx1cmUgd2hlcmUgdGhlIHJl
cXVpcmVkIFBIWSBkcml2ZXIgaXMgbm90IGJ1aWx0LCBwb3RlbnRpYWxseSBsZWF2aW5nIHRoZQpo
YXJkd2FyZSBub24tZnVuY3Rpb25hbCB3aGVuIHJlbHlpbmcgb24gdGhpcyBkcml2ZXIuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpcGh5
LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpcGh5LmMKPiBp
bmRleCA1MzlhYzQ4ODhiNjA4Li5hYWVkN2QwMzA5ZGQ2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuYwo+ICsrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lwaHkuYwpbIC4uLiBdCj4gK3N0YXRp
YyBpbnQgY3NpcGh5X3N0cmVhbV9vbihzdHJ1Y3QgY3NpcGh5X2RldmljZSAqY3NpcGh5KQo+ICt7
Cj4gKwl1OCBicHAgPSBjc2lwaHlfZ2V0X2JwcChjc2lwaHktPnJlcy0+Zm9ybWF0cy0+Zm9ybWF0
cywgY3NpcGh5LT5yZXMtPmZvcm1hdHMtPm5mb3JtYXRzLAo+ICsJCQkJY3NpcGh5LT5mbXRbTVNN
X0NTSVBIWV9QQURfU0lOS10uY29kZSk7Cj4gKwlzdHJ1Y3QgY3NpcGh5X2xhbmVzX2NmZyAqbG5j
ZmcgPSAmY3NpcGh5LT5jZmcuY3NpMi0+bGFuZV9jZmc7Cj4gKwlzdHJ1Y3QgcGh5X2NvbmZpZ3Vy
ZV9vcHRzX21pcGlfZHBoeSAqZHBoeV9jZmc7Cj4gKwl1bmlvbiBwaHlfY29uZmlndXJlX29wdHMg
ZHBoeV9vcHRzID0geyAwIH07Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBjc2lwaHktPmNhbXNz
LT5kZXY7Cj4gKwl1OCBudW1fbGFuZXMgPSBsbmNmZy0+bnVtX2RhdGE7Cj4gKwlzNjQgbGlua19m
cmVxOwo+ICsJaW50IHJldDsKPiArCj4gKwlkcGh5X2NmZyA9ICZkcGh5X29wdHMubWlwaV9kcGh5
Owo+ICsKPiArCWxpbmtfZnJlcSA9IGNhbXNzX2dldF9saW5rX2ZyZXEoJmNzaXBoeS0+c3ViZGV2
LmVudGl0eSwgYnBwLCBudW1fbGFuZXMpOwo+ICsKPiArCWlmIChsaW5rX2ZyZXEgPD0gMCkgewo+
ICsJCWRldl9lcnIoZGV2LAo+ICsJCQkiQ2Fubm90IGdldCBDU0kyIHRyYW5zbWl0dGVyJ3MgbGlu
ayBmcmVxdWVuY3lcbiIpOwo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsJfQo+ICsKPiArCXJldCA9
IHBoeV9taXBpX2RwaHlfZ2V0X2RlZmF1bHRfY29uZmlnX2Zvcl9oc2NsayhsaW5rX2ZyZXEsIG51
bV9sYW5lcywKPiArCQkJCQkJCSBkcGh5X2NmZyk7CgpbU2V2ZXJpdHk6IEhpZ2hdCkFyZSB3ZSBw
YXNzaW5nIHRoZSBjb3JyZWN0IGRhdGEgcmF0ZSBoZXJlPyBUaGUgVjRMMiBjYW1zc19nZXRfbGlu
a19mcmVxKCkKaGVscGVyIHJldHVybnMgdGhlIE1JUEkgRC1QSFkgbGluayBmcmVxdWVuY3kgKHRo
ZSBjbG9jayBsYW5lIGZyZXF1ZW5jeSBpbiBIeikuCgpIb3dldmVyLCB0aGUgZ2VuZXJpYyBQSFkg
ZnJhbWV3b3JrJ3MgcGh5X21pcGlfZHBoeV9nZXRfZGVmYXVsdF9jb25maWdfZm9yX2hzY2xrKCkK
ZnVuY3Rpb24gZXhwZWN0cyBpdHMgaHNfY2xrX3JhdGUgYXJndW1lbnQgdG8gYmUgdGhlIGRhdGEg
cmF0ZSBwZXIgbGFuZSBpbiBiaXRzCnBlciBzZWNvbmQuCgpTaW5jZSBNSVBJIEQtUEhZIHVzZXMg
RG91YmxlIERhdGEgUmF0ZSwgdGhlIGRhdGEgcmF0ZSBpcyBleGFjdGx5IHR3aWNlIHRoZQpjbG9j
ayBmcmVxdWVuY3kuIFBhc3NpbmcgdGhlIGNsb2NrIGZyZXF1ZW5jeSBkaXJlY3RseSBkdXJpbmcg
Y3NpcGh5X3N0cmVhbV9vbigpCmNhdXNlcyB0aGUgY2FsY3VsYXRlZCBVbml0IEludGVydmFsIChV
SSkgdG8gYmUgdHdpY2UgaXRzIGNvcnJlY3QgdmFsdWUuIFRoaXMKd2lsbCByZXN1bHQgaW4gY29t
cGxldGVseSBpbmNvcnJlY3QgTUlQSSBELVBIWSB0aW1pbmcgcGFyYW1ldGVycyAoaHNfcHJlcGFy
ZSwKaHNfc2V0dGxlKSBhbmQgY291bGQgY2F1c2UgcGh5c2ljYWwgbGF5ZXIgc3luY2hyb25pemF0
aW9uIGZhaWx1cmVzIHdpdGggdGhlCnNlbnNvci4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTgtYjQtbGludXgtbmV4dC0yNS0w
My0xMy1kdHNpLXgxZTgwMTAwLWNhbXNzLXYyMC0wLWRjMjQ0ZTEyNGU3MUBsaW5hcm8ub3JnP3Bh
cnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==

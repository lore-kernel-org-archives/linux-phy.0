Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB7DC624D3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 20:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVvdD/YezJPBlaSiyGthWLgp3bv57QNdlAycM52I7II=; b=of9SHMNM1MepDw
	dbQh8r7UtJukb+COqRNYDCmlGLWXnSwqF2lgsce/n//G2ny6+Ywl4t59d5kXtTEhRmHUfoCpW4oCf
	3iIgOTrZxmLNoio6JJA7COeY67p5dFJUottjNF7OXGH8UfjrSYmPC0thSukYiM7c7eBUVKP+1hqeq
	me1Y1JtnSFSlk9OJ4xBuw1wff4Ck5foHY+9tddK3+yezaPQmykm7rPLqZFQdOlFVMCal4hb6XrC7K
	OP1XUQZ23i4e3uyHJ8bWQc9u7AFspayETcp2MZZL/QbCEsWy06GeIG4IFomLj0vTHRkkLHZ6SjnxX
	rMUbL4fpUnAKWDwUCRxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1V2T-0000000DJur-1ZCR;
	Tue, 01 Sep 2026 20:25:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1V2Q-0000000DJsn-2BGN
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 20:24:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0415A43871;
	Tue,  1 Sep 2026 20:24:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60AD01F00A3A;
	Tue,  1 Sep 2026 20:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788294297;
	bh=lMpnbppsBTrh/fgnz1BIZ4HEP60QWFMvATXC9tMJFLE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bd3JPZAdDq9ry0LbzABEAj44CPgUesjx1OnA20Um1XyEquAEnvA+tIgG+kf4jOj4G
	 A/JEwwwYFZk6o6BsKOiXONy3x7COhFHiTSp6WECF7SslRm5MZY0pvAg7DBbUHu6lHl
	 A2IEnwOnpPAHpx+LIYQ4SVcR9BEkzqMEgLYcqGH/CueIWsBxglowQSiA4CXRKVwpdD
	 zB4BhUsVaLDZcLFG5fxRq8f/MViE7a7YYKMdKwLVIqFci6UbR3su1S/OCyOrTTWwsy
	 MzKbIlNEcVKQ1jgPUEGPBnqI3PPoae0ke3e4D05Y9SVh/szol02Jqi4C3YWF8fZicE
	 3+oj1ep6SG4PA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v16 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY
 driver
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, media-ci@linuxtv.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260901-x1e-csi2-phy-v16-2-dd863b929080@linaro.org>
References: <20260901-x1e-csi2-phy-v16-0-dd863b929080@linaro.org>
 <20260901-x1e-csi2-phy-v16-2-dd863b929080@linaro.org>
Date: Tue, 01 Sep 2026 20:24:57 +0000
Message-Id: <20260901202457.60AD01F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIE1JUEkgQ1NJ
LTIgUEhZIGRyaXZlciB2YWxpZGF0ZXMgdGhlIGR5bmFtaWNhbGx5IHJlcXVlc3RlZCBsYW5lIGNv
dW50IGluIGBwaHlfY29uZmlndXJlYCBidXQgdGhlbiBkcm9wcyBpdCwgYWx3YXlzIHBvd2VyaW5n
IHVwIGFsbCBzdGF0aWNhbGx5IGNvbm5lY3RlZCBsYW5lcy4KLS0KCmNvbW1pdCAxOTVhNDdmYTJm
ZjYyYmRhMGUxZTI0ZDQ5MTE3OTRkMThmY2I4NmM4CkF1dGhvcjogQnJ5YW4gTydEb25vZ2h1ZSA8
YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+CgpwaHk6IHFjb20tbWlwaS1jc2kyOiBBZGQgYSBD
U0kyIE1JUEkgRFBIWSBkcml2ZXIKCkFkZCBhIG5ldyBNSVBJIENTSTIgZHJpdmVyIGluIERQSFkg
bW9kZSBpbml0aWFsbHkuIFRoZSBlbnRpcmUgc2V0IG9mCmV4aXN0aW5nIENBTVNTIENTSSBQSFkg
aW5pdCBzZXF1ZW5jZXMgYXJlIGltcG9ydGVkIGluIG9yZGVyIHRvIHNhdmUgdGltZQphbmQgZWZm
b3J0IGluIGxhdGVyIHBhdGNoZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1taXBpLWNzaTItY29yZS5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tbWlwaS1jc2kyLWNvcmUuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAw
MDAwMDAwMC4uMjRjY2QzMjY0Njg2Zgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItY29yZS5jClsgLi4uIF0KPiArc3RhdGljIGlu
dCBwaHlfcWNvbV9taXBpX2NzaTJfY29uZmlndXJlKHN0cnVjdCBwaHkgKnBoeSwKPiArCQkJCQl1
bmlvbiBwaHlfY29uZmlndXJlX29wdHMgKm9wdHMpCj4gK3sKPiArCXN0cnVjdCBtaXBpX2NzaTJw
aHlfZGV2aWNlICpjc2kycGh5ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gKwlzdHJ1Y3QgcGh5
X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeSAqZHBoeV9jZmcgPSAmb3B0cy0+bWlwaV9kcGh5Owo+
ICsJc3RydWN0IG1pcGlfY3NpMnBoeV9zdHJlYW1fY2ZnICpzdHJlYW1fY2ZnID0gJmNzaTJwaHkt
PnN0cmVhbV9jZmc7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXJldCA9IHBoeV9taXBpX2RwaHlfY29u
ZmlnX3ZhbGlkYXRlKGRwaHlfY2ZnKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiAr
Cj4gKwlpZiAoZHBoeV9jZmctPmxhbmVzIDwgMSB8fCBkcGh5X2NmZy0+bGFuZXMgPiBDU0kyX01B
WF9EQVRBX0xBTkVTKQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCXN0cmVhbV9jZmctPmxp
bmtfZnJlcSA9IGRwaHlfY2ZnLT5oc19jbGtfcmF0ZTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQoK
W1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBjb2RlIGluYWR2ZXJ0ZW50bHkgZHJvcCB0aGUg
cmVxdWVzdGVkIGxhbmUgY291bnQgZnJvbQpvcHRzLT5taXBpX2RwaHkubGFuZXM/CgpJbiBwaHlf
cWNvbV9taXBpX2NzaTJfY29uZmlndXJlKCksIGRwaHlfY2ZnLT5sYW5lcyBpcyBib3VuZHMtY2hl
Y2tlZCBidXQKbmV2ZXIgYXNzaWduZWQgdG8gc3RyZWFtX2NmZy0+bnVtX2RhdGFfbGFuZXMuIFRo
aXMgY2F1c2VzIHRoZSBkeW5hbWljIGxhbmUKY291bnQgdG8gYmUgZHJvcHBlZC4KCkJlY2F1c2Ug
aXQgaXMgZHJvcHBlZCwgdGhlIGRyaXZlciBsYXRlciByZWxpZXMgb24gdGhlIHN0YXRpY2FsbHkg
cHJvYmVkIGNvdW50CndoZW4gZW5hYmxpbmcgdGhlIGxhbmVzOgoKZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmM6cGh5X3Fjb21fbWlwaV9jc2kyX2xhbmVz
X2VuYWJsZSgpIHsKICAgIC4uLgogICAgdmFsID0gQklUKGxhbmVfY2ZnLT5jbGsucG9zKTsKICAg
IGZvciAoaSA9IDA7IGkgPCBjZmctPm51bV9kYXRhX2xhbmVzOyBpKyspCiAgICAgICAgdmFsIHw9
IEJJVChsYW5lX2NmZy0+ZGF0YVtpXS5wb3MgKiAyKTsKICAgIC4uLgp9CgpTaG91bGQgc3RyZWFt
X2NmZy0+bnVtX2RhdGFfbGFuZXMgYmUgdXBkYXRlZCBoZXJlIHNvIHRoYXQgdGhlIFBIWSBvbmx5
CnBvd2VycyB1cCB0aGUgcmVxdWVzdGVkIHN1YnNldCBvZiBwaHlzaWNhbGx5IGNvbm5lY3RlZCBs
YW5lcz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA5MDEteDFlLWNzaTItcGh5LXYxNi0wLWRkODYzYjkyOTA4MEBsaW5hcm8ub3Jn
P3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABFD1C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 08:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgeXyT+NIsD5lvNmYd/axvo3behj6JR+CJ6AR0QRka8=; b=h68cGaET5o+Ebd
	+LMXpb9UyY6vCOcov19mq/EFZEWSUuMLSp/sLAOVJ1k3mfHrZn5nAi1yPDwZEd+gx8I/B+bZ2yYyy
	uYXuoq5O5oL6uAY68RPxnUnrZDCwamNv2ZSWQ/LMCBzzSJUAodhvaGkRS8skcRnOvtKmw/zx7IOD7
	jpldS+qKHsyjsUtZYzrMuHtJ7BAGm0bi5sxgxsTw9y/bUv3a3pjBqmhWHsVuBlkHbWfAPZCM1PNDX
	jt4PUwMKkPXd5AqjrUkWDzMY5hWcrxFDiPpbU1kXUyYzvw1ofA533MWWVtGi+LT5i1nXBQDIeBY53
	C/MV/bQ1kmtIvDrLz7NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weTOZ-0000000GELg-1NAO;
	Tue, 30 Jun 2026 08:00:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weTOY-0000000GELZ-2FpF
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 08:00:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4DBA4403F1;
	Tue, 30 Jun 2026 08:00:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5CE21F000E9;
	Tue, 30 Jun 2026 08:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782806438;
	bh=aklCtIdwAuaV/IkYc3oYr7mTqO/RWDS/WnA9iYfqABI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=n+jtMy76AtRUPWNey7Uh6bCpahTZ15+A+d5vimKhXap0eKxXdW+zpGiUzwliEf3Vm
	 /CDYW/kLw2E8/y8UWTfGcI2DZadOm/ejXe1eqqq+oOdlgMfU+QGtuXiGjARIVAFII9
	 15sMxCzyLbxSFRDkWRVssYHA64gZmOLdmc5zItyorHySHMUKXOnX/PzY0XCDAuqMyU
	 wJXPEew2/xCHf2+tabUGwuX6OqbQKP9JDjQg+L3yW1UJHFVzfgU8+1Qe1C5jddTiCY
	 9MgBIpJcBb2wbsXLiVo0cNVIuMDmDWufXalyoBjQiWft+4s3XoEhIHwTKWFTyRj6lp
	 ZKxT1nXgRx54w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/3] phy: rockchip: phy-rockchip-inno-csidphy: fix
 rk1808 hsfreq table
To: "Gerald Loacker" <gerald.loacker@wolfvision.net>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260630-feature-mipi-csi-dphy-4k60-v3-1-176792ab71fa@wolfvision.net>
References: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
 <20260630-feature-mipi-csi-dphy-4k60-v3-1-176792ab71fa@wolfvision.net>
Date: Tue, 30 Jun 2026 08:00:37 +0000
Message-Id: <20260630080037.B5CE21F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBWYWxpZCBsb3ctZnJlcXVlbmN5IGNvbmZpZ3VyYXRpb25zIGFyZSBpbmNvcnJlY3Rs
eSByZWplY3RlZCBiZWNhdXNlIGEgYGNmZ19iaXRgIHZhbHVlIG9mIGAweDAwYCBjb25mbGljdHMg
d2l0aCB0aGUgZGVmYXVsdCAnbm90IGZvdW5kJyBzZW50aW5lbC4KLSBbSGlnaF0gVGhlIGByazMz
NjhfZ3JmX2RwaHlfcmVnc2AgYXJyYXkgaXMgbWlzc2luZyBhbiBleHBsaWNpdCBzaXplIGFuZCBv
bmx5IGluaXRpYWxpemVzIGluZGV4IDAsIG1lYW5pbmcgaXQgaXMgY29tcGlsZWQgYXMgYW4gYXJy
YXkgb2Ygc2l6ZSAxLiBgcm9ja2NoaXBfaW5ub19jc2lkcGh5X3Bvd2VyX29uKClgIHVuY29uZGl0
aW9uYWxseSBpbmRleGVzIGludG8gdGhpcyBhcnJheSBhdCBpbmRpY2VzIDEgYW5kIDIsIGNhdXNp
bmcgYW4gb3V0LW9mLWJvdW5kcyByZWFkIGFuZCBhbiBlcnJvbmVvdXMgd3JpdGUgdG8gYW4gdW5k
ZWZpbmVkIEdSRiByZWdpc3RlciBvZmZzZXQuCi0tCgpjb21taXQgNGNjMzUwZmYzYTNiZmRjYjYy
MDRkZGMyMzU3MTcyMzg1ZmJlNGQyYQpBdXRob3I6IEdlcmFsZCBMb2Fja2VyIDxnZXJhbGQubG9h
Y2tlckB3b2xmdmlzaW9uLm5ldD4KCnBoeTogcm9ja2NoaXA6IHBoeS1yb2NrY2hpcC1pbm5vLWNz
aWRwaHk6IGZpeCByazE4MDggaHNmcmVxIHRhYmxlCgpUaGUgcmsxODA4IGhzZnJlcSB0YWJsZSBw
cmV2aW91c2x5IGNhcHBlZCBhdCAyNDk5IE1icHMuIFRoaXMgY29tbWl0CmV4dGVuZHMgdGhlIGZp
bmFsIGVudHJ5IHRvIDI1MDAgTWJwcyB0byBzdXBwb3J0IHRoaXMgZXhhY3QgZGF0YSByYXRlLAp3
aGljaCBpcyBlc3NlbnRpYWwgZm9yIHRoZSBSSzM1ODggcGxhdGZvcm0gcmV1c2luZyB0aGlzIGFy
cmF5LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlu
bm8tY3NpZHBoeS5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tY3Np
ZHBoeS5jCj4gaW5kZXggYzc5ZmI1M2Q4ZWU1Yy4uNTI4MWY4ZGVhMGFkMyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKPiBAQCAt
MTcwLDcgKzE3MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaHNmcmVxX3JhbmdlIHJrMTgwOF9t
aXBpZHBoeV9oc2ZyZXFfcmFuZ2VzW10gPSB7Cj4gIAl7IDI5OSwgMHgwNn0sIHsgMzk5LCAweDA4
fSwgeyA0OTksIDB4MGJ9LCB7IDU5OSwgMHgwZX0sCj4gIAl7IDY5OSwgMHgxMH0sIHsgNzk5LCAw
eDEyfSwgeyA5OTksIDB4MTZ9LCB7MTE5OSwgMHgxZX0sCj4gIAl7MTM5OSwgMHgyM30sIHsxNTk5
LCAweDJkfSwgezE3OTksIDB4MzJ9LCB7MTk5OSwgMHgzN30sCj4gLQl7MjE5OSwgMHgzY30sIHsy
Mzk5LCAweDQxfSwgezI0OTksIDB4NDZ9Cj4gKwl7MjE5OSwgMHgzY30sIHsyMzk5LCAweDQxfSwg
ezI1MDAsIDB4NDZ9Cj4gIH07CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50
cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgd2hpbGUgcmV2aWV3aW5nIHRoZSBmcmVxdWVuY3kK
dGFibGVzIEkgbm90aWNlZCBhIHBvdGVudGlhbCBwcm9ibGVtIGluIGhvdyB0aGUgc2VsZWN0ZWQg
Y29uZmlndXJhdGlvbiBpcwpldmFsdWF0ZWQgbGF0ZXIgaW4gdGhlIGRyaXZlci4KCklmIGEgZGF0
YSByYXRlIG1hcHMgdG8gYSBjb25maWd1cmF0aW9uIHdoZXJlIHRoZSBjZmdfYml0IGlzIDB4MDAs
IHdpbGwKcm9ja2NoaXBfaW5ub19jc2lkcGh5X2NvbmZpZ3VyZSgpIGluY29ycmVjdGx5IHJlamVj
dCBpdD8KCkluIHJvY2tjaGlwX2lubm9fY3NpZHBoeV9jb25maWd1cmUoKToKICAgIGlmICghaHNm
cmVxKQogICAgICAgIHJldHVybiAtRUlOVkFMOwoKSXQgc2VlbXMgdGhpcyBjaGVjayB1c2VzIDB4
MDAgYXMgYSBub3QgZm91bmQgc2VudGluZWwsIGJ1dCB2YWxpZCBsb3cKZnJlcXVlbmN5IHJhbmdl
cyBtaWdodCBsZWdpdGltYXRlbHkgdXNlIDB4MDAgYXMgdGhlaXIgY29uZmlndXJhdGlvbiB2YWx1
ZS4KVGhpcyBzYW1lIGxvZ2ljIGlzIGFsc28gcHJlc2VudCBpbiBya19kcGh5X2NvbmZpZ3VyZSgp
IGluCnBoeS1yb2NrY2hpcC1kcGh5LXJ4MC5jLiBEb2VzIHRoaXMgcHJldmVudCB0aGUgaGFyZHdh
cmUgZnJvbSBvcGVyYXRpbmcgYXQKdGhvc2UgbG93IGZyZXF1ZW5jaWVzPwoKW1NldmVyaXR5OiBI
aWdoXQpUaGlzIGlzIGFsc28gYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBJIG5vdGljZWQgYW4g
b3V0LW9mLWJvdW5kcyBhcnJheQphY2Nlc3MgaW4gdGhpcyBkcml2ZXIgZm9yIHRoZSBSSzMzNjgg
cGxhdGZvcm0uCgpUaGUgcmszMzY4X2dyZl9kcGh5X3JlZ3MgYXJyYXkgaXMgaW5pdGlhbGl6ZWQg
d2l0aCBvbmx5IGEgc2luZ2xlIGVsZW1lbnQ6CgpzdGF0aWMgY29uc3Qgc3RydWN0IGRwaHlfcmVn
IHJrMzM2OF9ncmZfZHBoeV9yZWdzW10gPSB7CiAgICBbR1JGX0RQSFlfQ1NJUEhZX0ZPUkNFUlhN
T0RFXSA9IFBIWV9SRUcoUkszMzY4X0dSRl9TT0NfQ09ONl9PRkZTRVQsIDQsIDgpLAp9OwoKSG93
ZXZlciwgcm9ja2NoaXBfaW5ub19jc2lkcGh5X3Bvd2VyX29uKCkgdW5jb25kaXRpb25hbGx5IGFj
Y2Vzc2VzCmluZGljZXMgYmV5b25kIHRoaXM6CgogICAgd3JpdGVfZ3JmX3JlZyhwcml2LCBHUkZf
RFBIWV9DU0lQSFlfQ0xLTEFORV9FTiwgMHgxKTsKICAgIHdyaXRlX2dyZl9yZWcocHJpdiwgR1JG
X0RQSFlfQ1NJUEhZX0RBVEFMQU5FX0VOLAogICAgICAgICAgICAgICAgICBHRU5NQVNLKHByaXYt
PmNvbmZpZy5sYW5lcyAtIDEsIDApKTsKCkNvdWxkIHRoaXMgcmVhZCBwYXN0IHRoZSBlbmQgb2Yg
dGhlIDEtZWxlbWVudCBhcnJheSBhbmQgY2F1c2UgYW4gZXJyb25lb3VzCndyaXRlIHRvIGFuIHVu
ZGVmaW5lZCByZWdpc3RlciBvZmZzZXQgaWYgdGhlIGFkamFjZW50IG1lbW9yeSBldmFsdWF0ZXMg
YXMKdmFsaWQ/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNjMwLWZlYXR1cmUtbWlwaS1jc2ktZHBoeS00azYwLXYzLTAtMTc2Nzky
YWI3MWZhQHdvbGZ2aXNpb24ubmV0P3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

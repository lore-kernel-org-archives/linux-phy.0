Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5451C55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD2qc1L5NhFabzhuoF1/+XvmXR3BF/wjCAoBsd4gDiA=; b=Cbyrp7rwQp1s3U
	Gi6cRgsJ7UIdFGUzOgjEma4hoO0qMjoNwGwrhyj3UwpH6ZQHp0BdWaCVElKKWdIRvKuQRO+fJ1Fn2
	uSwY6pG/2/g1g1G0+fEiEiwlhpaXEZaBZDm83vQbZnYZwAYPYvHtdY8BjH0E+sFl6aGRGBJNjZmmm
	y4aDZUwtZ8dK5auLwsdOZaIkHrkVUa+D0W0iy4PnWaKlxo9vUwLxR8lVtQEjLY8Jggs44KDMaw9nw
	dQv17mYm0djZywDpGm7ueSPC5WhKv8VJxFexbviHDbtYYA54fRkGiknFlxxAdhLKNS2UyOKrhiu0q
	/sn9OP9FES2cSY3N62PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqySd-00000000Rhq-46N9;
	Mon, 03 Aug 2026 19:36:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqySc-00000000RhZ-24Kq
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:36:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BF6184174E;
	Mon,  3 Aug 2026 19:36:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6F681F000E9;
	Mon,  3 Aug 2026 19:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785785789;
	bh=//2gnWkBS2KEUjzKBY9tviOyhT6TbWVnXvuVKADN6RU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GRZKxx5JaaNy2cAW+c0CPBZR+jqRQ0YtQIBQ4x6VwquOBShRRmwzYtNcIGKm2oyij
	 otp0DnSbDSzvMisckbioHzt1dphDLO+8h+fkbdnncUoswIVdP0etRCQtqETcrDXuLT
	 cf+G5113A20qhiY/oOiiV5WXg9T9LvMQ2jK5tWOw0Zb2tWGP4WTQbulooBHPqqfiD2
	 QvQd1UH47YA7oi9OTjZNZ9fjKw9TnqyRGHCT5KDhPaAq87bVaJLKk93sjzGPVFldCe
	 9GOb5sX5ZxDFjUnnIq/Dr+ECVrFNG3FKblgw6lpqAOFP80FGLRP7n5dCDY7MJkEHSF
	 T/pu2I5gGsdRQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: qcs8300-ride: fix SerDes PHY
 regulator supplies
To: "Mohd Ayaan Anwar" <mohd.anwar@oss.qualcomm.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-6-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-6-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 03 Aug 2026 19:36:28 +0000
Message-Id: <20260803193628.E6F681F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJbmNvbXBsZXRlIGRldmljZSB0cmVlIG1pZ3JhdGlvbiBmb3IgU2VyRGVzIFBIWSBy
ZWd1bGF0b3Igc3VwcGxpZXMgYnJlYWtzIEV0aGVybmV0IG9uIE1vbmFjbyBNb256YSBTT00uCi0t
CgotLS0gUGF0Y2ggWzZdOiBbUEFUQ0ggdjIgNi82XSBhcm02NDogZHRzOiBxY29tOiBxY3M4MzAw
LXJpZGU6IGZpeCBTZXJEZXMgUEhZIHJlZ3VsYXRvciBzdXBwbGllcyAtLS0KY29tbWl0IDhlMzg5
NzhlYThjMDU4MDA0NDg3YTE5YTlhNjY0Zjk5NDZiODMwNmMKQXV0aG9yOiBNb2hkIEF5YWFuIEFu
d2FyIDxtb2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBxY29tOiBxY3M4
MzAwLXJpZGU6IGZpeCBTZXJEZXMgUEhZIHJlZ3VsYXRvciBzdXBwbGllcwoKVGhpcyBjb21taXQg
Zml4ZXMgdGhlIFNlckRlcyBQSFkgbm9kZSBpbiBxY3M4MzAwLXJpZGUuZHRzIGJ5IHJlcGxhY2lu
ZyB0aGUKc2luZ2xlIHBoeS1zdXBwbHkgcHJvcGVydHkgd2l0aCB0aGUgcmVxdWlyZWQgdmRkYS0w
cDktc3VwcGx5IGFuZAp2ZGRhLTFwMi1zdXBwbHkgcHJvcGVydGllcy4gVGhpcyBlbnN1cmVzIGJv
dGggdGhlIDEuMlYgYW5kIDAuOVYgcmFpbHMgYXJlCnByb3Blcmx5IHByb3ZpZGVkIHRvIHRoZSBQ
SFkuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzODMwMC1yaWRl
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M4MzAwLXJpZGUuZHRzCj4gaW5kZXgg
MWZmMzk1MzBlYTNkZS4uNzZjMzQyMTVkYmRmMCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vcWNzODMwMC1yaWRlLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9xY3M4MzAwLXJpZGUuZHRzCj4gQEAgLTcwMiw3ICs3MDIsOSBAQCAmcmVtb3RlcHJvY19n
cGRzcCB7Cj4gIH07Cj4gIAo+ICAmc2VyZGVzMCB7Cj4gLQlwaHktc3VwcGx5ID0gPCZ2cmVnX2w1
YT47Cj4gKwl2ZGRhLTBwOS1zdXBwbHkgPSA8JnZyZWdfbDRhPjsKPiArCXZkZGEtMXAyLXN1cHBs
eSA9IDwmdnJlZ19sNWE+Owo+ICsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKCltTZXZlcml0
eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBJ
IG5vdGljZWQgdGhhdCBhbm90aGVyIGZpbGUgaW4KdGhlIHRyZWUsIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9tb25hY28tbW9uemEtc29tLmR0c2ksIHN0aWxsIGhhcyB0aGUgZXhhY3QKc2FtZSBj
b25maWd1cmF0aW9uIHlvdSBhcmUgZml4aW5nIGhlcmUuIEl0IHJldGFpbnMgdGhlIGRlcHJlY2F0
ZWQgcGh5LXN1cHBseQpwcm9wZXJ0eSBhbmQgbGFja3MgdGhlIHJlcXVpcmVkIDAuOVYgcmFpbDoK
CiZzZXJkZXMwIHsKCXBoeS1zdXBwbHkgPSA8JnZyZWdfbDVhPjsKCglzdGF0dXMgPSAib2theSI7
Cn07CgpTaW5jZSB0aGUgUEhZIGRyaXZlciBzdHJpY3RseSBleHBlY3RzIHRoZSB0d28gbmFtZWQg
cmVndWxhdG9yIHN1cHBsaWVzIHZpYQpkZXZtX3JlZ3VsYXRvcl9idWxrX2dldF9jb25zdCwgd29u
J3QgbGVhdmluZyB0aGlzIG9sZCBjb25maWd1cmF0aW9uIGJyZWFrCkV0aGVybmV0IG9uIHRoZSBN
b25hY28gTW9uemEgU09NIGR1cmluZyBib290IGJ5IGVpdGhlciBmYWlsaW5nIHRvIHByb2JlCm9y
IHRpbWluZyBvdXQgb24gY2FsaWJyYXRpb24/IAoKU2hvdWxkIG1vbmFjby1tb256YS1zb20uZHRz
aSBiZSB1cGRhdGVkIHNpbWlsYXJseSBpbiB0aGlzIHBhdGNoIG9yIGFzIGEKZm9sbG93LXVwIGlu
IHRoaXMgc2VyaWVzPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDgwNC1iNC1zZ21paWV0aF9zZXJkZXNfcmVndWxhdG9yLXYyLTAt
YzRiYzY4ODE3N2RkQG9zcy5xdWFsY29tbS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

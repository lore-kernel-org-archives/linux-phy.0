Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31B1AC55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hgf/OvPlVfzeSHI83LNyAzT0yAQExwCh5kIFl5mxrFg=; b=K5i9a6YuNRZYum
	xH6wbsIRvhaaOGjne7WV6O8BCyDObxDYDwQLo2qu9mN/dYaObn0ulOGegRXCeQ9kEEa9Scrv7HB99
	s/Q8IopNR3FQkDqZsvvy/wiMj7GrZW6Cc8hlBUUVLNmvK7IJLy6U5x+3yn6v+9BUYW9fNAJTow70y
	FIjms8Cb/DJYCF1BV5JeUZ7KrOAxLbZNy3s2vBdL9D0CairZ2ikxPPfm9Qd5kVt7H9YP3SU5l/x03
	eOXBQvEoKYHK+RxF3Wq9g939O2dOz1mw/9zYMMmYAGsGUkd6eyXVJvFQlHtzAu+/k4PDehq8DEoPe
	Hx1kBQnoeOIbmvgC0ucA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyZg-00000000S7x-3jQW;
	Mon, 03 Aug 2026 19:43:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyZe-00000000S7g-45pH
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:43:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1DB6960A86;
	Mon,  3 Aug 2026 19:43:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 579601F00A3A;
	Mon,  3 Aug 2026 19:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785786225;
	bh=3z8eu4Q8BindoEyhKb7TyUAPyX9I+TGPNg0eNRdGNGc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GnwZIGEhvxSKQmnDARh2imbSvdMDukTyutaB9ZYuMSd9U8Ln8qlcixDgHlVyHPWQ4
	 RpX6tcLUe/jSy2uakauOtfRRthJjwFVjB4AxoWH0+UBLD7JmAUSOuhb8f0IA1SRyyb
	 xdjafSKZCtpWMZ7/6hRgqR2s/Xem3aR9Jd+dTROx2gOOZT62co+ZY1FnR0UwG0rToo
	 CyR378kcRF1R8rN9X30J1T7T5jYjFl37QQk8x+dvao64tRW9iZPF+JihTkdjm7r5Ke
	 vqdK96IHQdZLt1IW56Mwma7AQE75TLa0pA/HvMpy9ErOyfSTR38sWKhvtZ8IH516vn
	 BigjU6hmkx+fw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: lemans-ride-common: fix SerDes
 PHY regulator supplies
To: "Mohd Ayaan Anwar" <mohd.anwar@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-4-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-4-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 03 Aug 2026 19:43:44 +0000
Message-Id: <20260803194345.579601F00A3A@smtp.kernel.org>
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
IFtIaWdoXSBJbmNvbXBsZXRlIHJlZmFjdG9yaW5nOiBtaXNzaW5nIERUIHVwZGF0ZXMgZm9yIG5l
dyBQSFkgcmVndWxhdG9yIHJlcXVpcmVtZW50cyBvbiBNb25hY28gYW5kIFFDUzgzMDAgYm9hcmRz
Ci0tCgotLS0gUGF0Y2ggWzRdOiBbUEFUQ0ggdjIgNC82XSBhcm02NDogZHRzOiBxY29tOiBsZW1h
bnMtcmlkZS1jb21tb246IGZpeCBTZXJEZXMgUEhZIHJlZ3VsYXRvciBzdXBwbGllcyAtLS0KY29t
bWl0IGRlZmQ0MzQ0OWNhNDUyYjQ4OTE2NGY4Nzc4Nzg5OTUxNzE1NDg1MTcKQXV0aG9yOiBNb2hk
IEF5YWFuIEFud2FyIDxtb2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBx
Y29tOiBsZW1hbnMtcmlkZS1jb21tb246IGZpeCBTZXJEZXMgUEhZIHJlZ3VsYXRvciBzdXBwbGll
cwoKVGhpcyBjb21taXQgcmVwbGFjZXMgdGhlIGluY29ycmVjdCBwaHktc3VwcGx5IHByb3BlcnR5
IHdpdGggdGhlIHJlcXVpcmVkCnZkZGEtMHA5LXN1cHBseSBhbmQgdmRkYS0xcDItc3VwcGx5IHBy
b3BlcnRpZXMgZm9yIGJvdGggU2VyRGVzIFBIWSBub2RlcyBpbgp0aGUgbGVtYW5zLXJpZGUtY29t
bW9uIGRldmljZSB0cmVlLgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L2xlbWFucy1yaWRlLWNvbW1vbi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2xlbWFu
cy1yaWRlLWNvbW1vbi5kdHNpCj4gaW5kZXggY2VmYjhmZjAwODA2My4uOTIzZmQ4NzM2ZjMxZCAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vbGVtYW5zLXJpZGUtY29tbW9u
LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vbGVtYW5zLXJpZGUtY29tbW9u
LmR0c2kKPiBAQCAtODU2LDEyICs4NTYsMTYgQEAgJnF1cF91YXJ0MTdfcnggewo+ICB9Owo+ICAK
PiAgJnNlcmRlczAgewo+IC0JcGh5LXN1cHBseSA9IDwmdnJlZ19sNWE+Owo+ICsJdmRkYS0wcDkt
c3VwcGx5ID0gPCZ2cmVnX2w0YT47Cj4gKwl2ZGRhLTFwMi1zdXBwbHkgPSA8JnZyZWdfbDFjPjsK
PiArCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBz
aG91bGRuJ3Qgb3RoZXIgYm9hcmRzIGluIHRoZSB0cmVlIHRoYXQKdXNlIHRoZSBkZXByZWNhdGVk
IHBoeS1zdXBwbHkgZm9yIHNlcmRlczAgYWxzbyBiZSB1cGRhdGVkPwoKRm9yIGV4YW1wbGUsIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tb25hY28tZXZrLmR0cyBzdGlsbCB1c2VzOgoKJnNlcmRl
czAgewoJcGh5LXN1cHBseSA9IDwmdnJlZ19sNGE+OwoKCXN0YXR1cyA9ICJva2F5IjsKfTsKCmFy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9tb25hY28tbW9uemEtc29tLmR0c2kgc3RpbGwgdXNlczoK
CiZzZXJkZXMwIHsKCXBoeS1zdXBwbHkgPSA8JnZyZWdfbDVhPjsKCglzdGF0dXMgPSAib2theSI7
Cn07CgpBbmQgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczgzMDAtcmlkZS5kdHMgc3RpbGwg
dXNlczoKCiZzZXJkZXMwIHsKCXBoeS1zdXBwbHkgPSA8JnZyZWdfbDVhPjsKCXN0YXR1cyA9ICJv
a2F5IjsKfTsKCldpdGhvdXQgdGhlc2UgdXBkYXRlcywgd2lsbCB0aGUgZHJpdmVyIGZhbGwgYmFj
ayB0byBkdW1teSByZWd1bGF0b3JzIGFuZCBmYWlsCnRvIHBsYWNlIHRoZSByZXF1aXJlZCB2b2x0
YWdlIGFuZCBsb2FkIHZvdGVzIGZvciB0aGVzZSBib2FyZHM/IFRoaXMgbWlnaHQKcmVzdWx0IGlu
IFBIWSBjYWxpYnJhdGlvbiB0aW1pbmcgb3V0IG9yIEV0aGVybmV0IGZhaWxpbmcgd2hlbiBzaGFy
ZWQgcmFpbHMKZW50ZXIgcnVudGltZSBQTSBzdXNwZW5kLgoKPiAgCXN0YXR1cyA9ICJva2F5IjsK
PiAgfTsKPiAgCj4gICZzZXJkZXMxIHsKPiAtCXBoeS1zdXBwbHkgPSA8JnZyZWdfbDVhPjsKPiAr
CXZkZGEtMHA5LXN1cHBseSA9IDwmdnJlZ19sNGE+Owo+ICsJdmRkYS0xcDItc3VwcGx5ID0gPCZ2
cmVnX2wxYz47Cj4gKwo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9OwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgwNC1iNC1zZ21p
aWV0aF9zZXJkZXNfcmVndWxhdG9yLXYyLTAtYzRiYzY4ODE3N2RkQG9zcy5xdWFsY29tbS5jb20/
cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK

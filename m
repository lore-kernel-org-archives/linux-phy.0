Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22827CA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eeK9hjuQFq9pym4LDOxD5f8A1STYppdu8eN3/bAqQ3o=; b=ClalpiTru0kDAI
	eJLyoOcYbeSnXU8cjXU2s9t7r9n/LkZTzkARaIOEx1a6Jk7l+8QxzJsv/283HRe+Hw5MFybG/R6Gq
	MXI6U14fde61zEcQWaIPVumpOdZxxw3S7rw7jpzLgj+eihI1Il95Kt6GMui5nIQJBe9XOYst/Kgul
	QKgTptBlix29wJimg7EP7L4Q+W7RDCkeMeRIGM+g9UAssKp+aaDDZURSriwPXZ8f0JFYegkierLve
	LBMi2vjaTdxYgHsLX+ce3L0KeAPMbwnMqUCyWnSuYsQu9GjfNpqaWvByaTlJdkcuZ/cbkKOkrN0+B
	3kJT/zdC8D32amjICubg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvqm-0000000DFT2-2VtZ;
	Sat, 03 Oct 2026 09:16:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvql-0000000DFSP-3SDD
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:16:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6014D41578;
	Sat,  3 Oct 2026 09:16:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC9351F0089B;
	Sat,  3 Oct 2026 09:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791018971;
	bh=LjdzR+JUGch7p+yVtKFpJqSe1Fq30t86V+flAs36tgc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hh1KJ6sJIpplVfebVb4iceV4iWybHSNFJgOzBNZHyPXbwX4gu0mFCWAqaeQ1EXYAC
	 XEAez8snJINNPORHJ0MH5NcmTT7AfIGaz+ppDNOcysv3hLeLR9qXEpCr3V/FEavBXh
	 4z5uCTLX+SUQNU5CI0pSqLprDE0ZyY9l9FD3BVfOU3crjoIOp4nB3qOltfWuMX7Xzj
	 bz4m4vMonGyinejMr1tc5nmjKABBNaiM55e0dYw86EDrb08pr4lwL3GXSHhLe24R2O
	 wBwMy1N0jcgGiUTRHewbmV+/N3fmGSGFAPlL/S2Pu8Np7tR33gOMqCMppZITNOI6G5
	 NcTtuIatNNU7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 08/11] media: qcom: camss: tpg: Add support for
 v2.4.0 TPG
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: media-ci@linuxtv.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20261003-kaanapali-camss-v18-8-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-8-87ba4ebe0db1@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 09:16:10 +0000
Message-Id: <20261003091610.BC9351F0089B@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gbWVkaWE6IGNhbXNz
OiB1bmluaXRpYWxpemVkIGh3X3ZlcnNpb24gdXNlZCBpbiB0cGdfcmVzZXQoKQotLQoKY29tbWl0
IGRmODhlN2Q3YWZkODJkNGQyODJlMjU0OTk4MzI0MDFiODBjYzdlZTYKQXV0aG9yOiBIYW5neGlh
bmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgoKbWVkaWE6IHFjb206IGNhbXNz
OiB0cGc6IEFkZCBzdXBwb3J0IGZvciB2Mi40LjAgVFBHCgpBZGQgc3VwcG9ydCBmb3IgdGhlIFRQ
RyBmb3VuZCBvbiBLYWFuYXBhbGkuIFRoaXMgVFBHIHVzZXMgaGFyZHdhcmUKdmVyc2lvbiAyLjQu
MCwgd2hpY2ggZHJpdmVzIHRlc3QtZW5hYmxlIGFuZCByZXNldCB0aHJvdWdoIGEgc2VwYXJhdGUK
VFBHX0NUUkxfQ01EIHJlZ2lzdGVyIGluc3RlYWQgb2YgVFBHX0NUUkwsIGFuZCByb3V0ZXMgaXRz
IG91dHB1dCBpbnRvCnRoZSBDU0lEIDEwODAgUlggdmlhIHRoZSBDU0kyIFRQRyBtdXguCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdl
bjEuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2VuMS5j
Cj4gaW5kZXggZDI5ZGU1ZjkzYzE4ZS4uNzcwYTllNWQ1YmE1ZiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdlbjEuYwo+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2VuMS5jCgpbIC4uLiBd
Cgo+IEBAIC0xNjQsMTggKzE2NywzMCBAQCBzdGF0aWMgaW50IHRwZ19zdHJlYW1fb24oc3RydWN0
IHRwZ19kZXZpY2UgKnRwZykKClsgLi4uIF0KCj4gIHN0YXRpYyBpbnQgdHBnX3Jlc2V0KHN0cnVj
dCB0cGdfZGV2aWNlICp0cGcpCj4gIHsKPiAtCXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdfQ1RS
TCk7Cj4gLQl3cml0ZWwoMSwgdHBnLT5iYXNlICsgVFBHX0NMRUFSKTsKPiArCS8qCj4gKwkgKiBP
biBUUEcgb2xkZXIgdGhhbiB2Mi40LjAgdGVzdC1lbmFibGUgbGl2ZXMgaW4gVFBHX0NUUkwsIHNv
IGNsZWFyIGl0Cj4gKwkgKiBmaXJzdDsgdjIuNC4wKyBkcml2ZXMgYm90aCB0ZXN0LWVuYWJsZSBh
bmQgcmVzZXQgdGhyb3VnaCBUUEdfQ1RSTF9DTUQuCj4gKwkgKi8KPiArCWlmICh0cGctPmh3X3Zl
cnNpb24gPCBUUEdfSFdfVkVSXzJfNF8wKQoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBu
ZXdseSBhZGRlZCBjaGVjayBpbmNvcnJlY3RseSBldmFsdWF0ZSB0byB0cnVlIG9uIHRoZSBmaXJz
dCBwb3dlcgpjeWNsZSBkdWUgdG8gdHBnLT5od192ZXJzaW9uIGJlaW5nIHVuaW5pdGlhbGl6ZWQ/
CgpMb29raW5nIGF0IHRwZ19zZXRfcG93ZXIoKSBpbiBjYW1zcy10cGcuYywgdGhlIHJlc2V0IGNh
bGxiYWNrIGlzIGludm9rZWQKYmVmb3JlIGh3X3ZlcnNpb24gaXMgcG9wdWxhdGVkOgoKdHBnX3Nl
dF9wb3dlcigpIHsKICAgIC4uLgogICAgdHBnLT5yZXMtPmh3X29wcy0+cmVzZXQodHBnKTsKICAg
IHRwZy0+cmVzLT5od19vcHMtPmh3X3ZlcnNpb24odHBnKTsKICAgIC4uLgp9CgpTaW5jZSB0cGct
Pmh3X3ZlcnNpb24gaXMgMCBkdXJpbmcgdGhlIGZpcnN0IHBvd2VyIGN5Y2xlLCB0aGlzIGNvbmRp
dGlvbgp3aWxsIGV2YWx1YXRlIHRvIHRydWUgZXZlbiBmb3IgdjIuNC4wKyBoYXJkd2FyZS4gVGhp
cyBleGVjdXRlcyB0aGUgbGVnYWN5CmZhbGxiYWNrIHJlc2V0IHdyaXRlbCgwLCB0cGctPmJhc2Ug
KyBUUEdfQ1RSTCksIHdoaWNoIHRoaXMgcGF0Y2ggZXhwbGljaXRseQppbnRlbmRlZCB0byBhdm9p
ZCBmb3IgbmV3ZXIgaGFyZHdhcmUuCgpDYW4gdGhpcyB1bmludGVuZGVkIHdyaXRlIHByaW9yIHRv
IFRQR19DVFJMX0NNRF9IV19SRVNFVCBjYXVzZSBpc3N1ZXMgb24KdjIuNC4wIGhhcmR3YXJlPwoK
PiArCQl3cml0ZWwoMCwgdHBnLT5iYXNlICsgVFBHX0NUUkwpOwo+ICsKPiArCXdyaXRlbChUUEdf
Q1RSTF9DTURfSFdfUkVTRVQsIHRwZy0+YmFzZSArIFRQR19DVFJMX0NNRCk7Cj4gIAo+ICAJcmV0
dXJuIDA7Cj4gIH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjEwMDMta2FhbmFwYWxpLWNhbXNzLXYxOC0wLTg3YmE0ZWJlMGRiMUBv
c3MucXVhbGNvbW0uY29tP3BhcnQ9OAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==

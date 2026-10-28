Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED593606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aacnvrpH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HTM4YCYk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TwZUKmYMk8yvVVlq923CKN41wH/dT+zp63dgiPkdqnQ=; b=aacnvrpHhu36+AggGK8vYddLPj
	QdgRUh4RkkQgE6KpCjV7N1p5UfdZeq539KM4ZT5xQtHe3xHcRHCM14hKZVeeAWhHc4KXw5g/THAoq
	zr80eoy7AzvzR4TCpPGJTIdEB718VjoFJqCmHz19qcwNz/Jn07zMlkcm177XN9QF3XVXUKIceLcgp
	RMU9DgwSYqH/g1OjdlE7CyEoAsZhoPyNk0Y72zBb1A9K71wiV5HwXh9MN6DXvvMkwHbDIPEqiWvl0
	51pV31mLOAAtEgNEJw7InVRWZw+MM/9uNJzL11ln6DcVvf8Yk3w0u03s6hZvyGI79dd17dnsyl+r0
	vgSiU1Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5aj-00000007O7i-2ogB;
	Wed, 28 Oct 2026 15:29:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5ai-00000007O5p-07ec
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:29:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 45484433E7;
	Wed, 28 Oct 2026 15:29:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2E8D1F01825;
	Wed, 28 Oct 2026 15:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793201367;
	bh=hgvCM9V7TaLd2jb0CYmQlKZURS/+sTIaKdo5XUJ8X48=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HTM4YCYk4X24n86MrFtav6/bhaqv9qZMikQmZcrIxNVWsUnGf1j3KEcsDAFOiDRUj
	 oU2+6LU3zC8aUGgXcm+A8LIAxr3FUBXQnS4CYeygLf3CfqRieI33RCPGGeojNw3SWM
	 08d0SjqXYo2nk/W9mOsW8qmR0bzgf/9OgGOPCtVcTLazGIFAYUZfoKaFD7+VTvoe68
	 RPEAhIyHkFc3NIKBU8uruyLJzky//LSODAZ3uDbLqJdmsvZvj6Okw2xBODcWBkaiwn
	 Wuu2Y5e5fROjJlMGSkhsh+sh+avXFSJOWLW1YNorw+oxVGN+lwX3OSnotbWIjjTrCX
	 eg3j6c5vdVhMg==
Message-ID: <sashiko-outbox-188053@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 11/15] media: qcom: camss: tpg: Add support for
 v2.4.0 TPG
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261028-kaanapali-camss-v23-11-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-11-95f250b18612@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 15:29:26 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gbWVkaWE6IHFjb206
IGNhbXNzOiB1bmluaXRpYWxpemVkIGh3X3ZlcnNpb24gY2hlY2sgaW4gdHBnX3Jlc2V0KCkKLS0K
CmNvbW1pdCBmNTBhZTZjZTg0NTVmNjE4Y2VjMDIyOGY0YjU2NWFkNjRhNTY3NjlhCkF1dGhvcjog
SGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4KCm1lZGlhOiBxY29t
OiBjYW1zczogdHBnOiBBZGQgc3VwcG9ydCBmb3IgdjIuNC4wIFRQRwoKVGhpcyBjb21taXQgYWRk
cyBzdXBwb3J0IGZvciB0aGUgdjIuNC4wIFRQRyBoYXJkd2FyZSBmb3VuZCBvbiBLYWFuYXBhbGks
CnJvdXRpbmcgVFBHIG91dHB1dCB0aHJvdWdoIHRoZSBDU0kyIFRQRyBtdXggaW4gQ1NJRCAxMDgw
IFJYIGFuZCBoYW5kbGluZwp0ZXN0LWVuYWJsZSBhbmQgcmVzZXQgdmlhIFRQR19DVFJMX0NNRC4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10
cGctZ2VuMS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXRwZy1n
ZW4xLmMKPiBpbmRleCBkMjlkZTVmOTNjMThlLi5jYWJiYjI2MzhjZjM4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2VuMS5jCj4gKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXRwZy1nZW4xLmMKClsg
Li4uIF0KCj4gQEAgLTE2NCwxOCArMTY3LDI2IEBAIHN0YXRpYyBpbnQgdHBnX3N0cmVhbV9vbihz
dHJ1Y3QgdHBnX2RldmljZSAqdHBnKQoKWyAuLi4gXQoKPiAgc3RhdGljIGludCB0cGdfcmVzZXQo
c3RydWN0IHRwZ19kZXZpY2UgKnRwZykKPiAgewo+IC0Jd3JpdGVsKDAsIHRwZy0+YmFzZSArIFRQ
R19DVFJMKTsKPiAtCXdyaXRlbCgxLCB0cGctPmJhc2UgKyBUUEdfQ0xFQVIpOwo+ICsJaWYgKHRw
Zy0+aHdfdmVyc2lvbiA8IFRQR19IV19WRVJfMl80XzApCj4gKwkJd3JpdGVsKDAsIHRwZy0+YmFz
ZSArIFRQR19DVFJMKTsKPiArCj4gKwl3cml0ZWwoVFBHX0NUUkxfQ01EX0hXX1JFU0VULCB0cGct
PmJhc2UgKyBUUEdfQ1RSTF9DTUQpOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9CgpbU2V2ZXJpdHk6
IE1lZGl1bV0KSXMgdHBnLT5od192ZXJzaW9uIGluaXRpYWxpemVkIHdoZW4gdHBnX3Jlc2V0KCkg
cnVucyBmb3IgdGhlIGZpcnN0IHRpbWU/CgpJbiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20v
Y2Ftc3MvY2Ftc3MtdHBnLmMsIHRwZ19zZXRfcG93ZXIoKSBjYWxscwpyZXNldCgpIGJlZm9yZSBo
d192ZXJzaW9uKCk6Cgpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBn
LmM6dHBnX3NldF9wb3dlcigpIHsKCWlmIChvbikgewoJCS4uLgoJCXRwZy0+cmVzLT5od19vcHMt
PnJlc2V0KHRwZyk7CgoJCXRwZy0+cmVzLT5od19vcHMtPmh3X3ZlcnNpb24odHBnKTsKCX0KfQoK
U2luY2UgdHBnX2h3X3ZlcnNpb24oKSBpbiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ft
c3MvY2Ftc3MtdHBnLWdlbjEuYwppcyB3aGVyZSB0cGctPmh3X3ZlcnNpb24gaXMgcG9wdWxhdGVk
IGZyb20gdGhlIFRQR19IV19WRVJTSU9OIHJlZ2lzdGVyLAp0cGctPmh3X3ZlcnNpb24gaXMgc3Rp
bGwgMCBvbiB0aGUgaW5pdGlhbCBwb3dlci1vbi4gV29uJ3QgdGhpcyBjYXVzZQp0cGdfcmVzZXQo
KSB0byBldmFsdWF0ZSAwIDwgVFBHX0hXX1ZFUl8yXzRfMCBhcyB0cnVlIGFuZCB3cml0ZSAwIHRv
IFRQR19DVFJMCmV2ZW4gb24gdjIuNC4wIGhhcmR3YXJlPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAyOC1rYWFuYXBhbGktY2Ft
c3MtdjIzLTAtOTVmMjUwYjE4NjEyQG9zcy5xdWFsY29tbS5jb20/cGFydD0xMQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

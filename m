Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3EBCC5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWz0N+5e/42Co6V7W6OsaaSozr5Nz1LSuYIg4CUkMGg=; b=L6Sc4Yderq1vOA
	mc/j6MaSsDbUxcUk9d367OhTpER7gkG3ZCgTUWXY19k7V82wv3zybsv1UxG/4B2KqVcSZ8bhImARC
	jX4tU4WoYM2+oeBuLHFzE1QLcHtYIftrcF7FEVeT7SKwDpJsuP4vW39zx9v6V25xyX/nGsXaT5HTu
	ZZeoKsCtAj8rktm1kuicxOIYU5n2EGCh5QcI372WkHAH5xi/M2sFt1JlLqeqASxcCRlm+rY0BSwAC
	QaZm1EljV657PjOznPbEGc6UL5ppQUZYYFpFZMmJ0ZOYIYG5B3su6ViA/P7UFgslKq7mmp2wAXDI5
	a0+1Z6oVr88P1+DJqxbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5HT-00000006skz-2Kiw;
	Mon, 17 Aug 2026 21:54:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5HS-00000006sks-1WDF
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:54:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 056B443C3D;
	Mon, 17 Aug 2026 21:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BC3F1F000E9;
	Mon, 17 Aug 2026 21:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787003645;
	bh=CWt4jK6RvOuPsdEwJA2WUw/FmL3gYdLpe/qBfCgPbvU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JFN6++1XwQ9cYVyfYKRBdaFvWItN+iGE+mXrA6y5D9XpColOFzN890iRZTa1ngmFv
	 XwCSCraD7TOKp7afWLdAeRCibyKKORuc0QbYDY2n9+5lDvcVNt6uzYTKFjd4iCSkam
	 +ckzi5uEptvXT/M6/lQ8WTiR9FCJk1+nnOMf34Tpgjj5g6aO14wpoUMoNmKv2c1cpU
	 mJSPKajLWzoCRQSEXAAFbPnVzHh6L93KLi6i2eQOwn9tke/rKDt9bcNgU0J8fzBcXx
	 PQVWXKentxYfiCqwXJOULssHtl/U95MkHoIlIE/ybC2bXEfzHhoBOC4/tBu1X9BHnt
	 1+ZCpaigY4Cvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/7] dt-bindings: usb: ti,am33xx-usb: Convert to DT
 schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: dmaengine@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, Frank.Li@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260818-ti-am33-usb-v1-6-69ac5f92df45@gmail.com>
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
 <20260818-ti-am33-usb-v1-6-69ac5f92df45@gmail.com>
Date: Mon, 17 Aug 2026 21:54:04 +0000
Message-Id: <20260817215405.5BC3F1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHNjaGVtYSBl
eHBsaWNpdGx5IG1hcmtzIGB0aSxod21vZHNgIGFzIGRlcHJlY2F0ZWQgYnV0IHNpbXVsdGFuZW91
c2x5IG1hbmRhdGVzIGl0IGluIHRoZSBgcmVxdWlyZWRgIGFycmF5LCBjcmVhdGluZyBhbiBpbmVz
Y2FwYWJsZSB2YWxpZGF0aW9uIGNvbmZsaWN0LgotIFtNZWRpdW1dIFVucmVzb2x2ZWQgcGhhbmRs
ZSByZWZlcmVuY2VzIChgJmN0cmxfbW9kYCBhbmQgYCZ1c2IwX3BoeWApIGluIHRoZSBiaW5kaW5n
IGV4YW1wbGUgd2lsbCBjYXVzZSBhIGZhdGFsIGR0YyBjb21waWxhdGlvbiBlcnJvci4KLS0KCi0t
LSBQYXRjaCBbNl06IFtQQVRDSCA2LzddIGR0LWJpbmRpbmdzOiB1c2I6IHRpLGFtMzN4eC11c2I6
IENvbnZlcnQgdG8gRFQgc2NoZW1hIC0tLQpjb21taXQgZThlNThjMmQ0OGJjOWM3NTJjYTYyZDNj
N2UwZWE2ZmQ1Y2ZmMGIxMgpBdXRob3I6IEJoYXJnYXYgSm9zaGkgPGouYmhhcmdhdi51QGdtYWls
LmNvbT4KCmR0LWJpbmRpbmdzOiB1c2I6IHRpLGFtMzN4eC11c2I6IENvbnZlcnQgdG8gRFQgc2No
ZW1hCiAgICAKQ29udmVydCB0aGUgVEkgQU0zM3h4IFVTQiBXcmFwcGVyIHRleHQgYmluZGluZyB0
byBEVCBzY2hlbWEuCkNoYW5nZXMgZHVyaW5nIGNvbnZlcnNpb246Ci0gRHJvcCB0aGUgVVNCIGNv
bnRyb2wgbW9kdWxlIGZyb20gY2hpbGQgbm9kZXMsIGFzIGl0IHBoeXNpY2FsbHkgcmVzaWRlcwog
IHdpdGhpbiB0aGUgU3lzdGVtIENvbnRyb2wgTW9kdWxlIGFkZHJlc3Mgc3BhY2UsIG5vdCB0aGUg
VVNCIHdyYXBwZXIuCi0gQWxsb3cgc3RhbmRhcmQgcGh5QFswLTlhLWZdKyQgY2hpbGQgbm9kZSBu
YW1lcyBhbG9uZ3NpZGUgdGhlIGxlZ2FjeQogIHVzYi1waHlAWzAtOWEtZl0rJC4KLSBNYXJrIHRo
ZSBsZWdhY3kgdGksaHdtb2RzIHByb3BlcnR5IGFzIGRlcHJlY2F0ZWQuCi0gRG9jdW1lbnQgcmVx
dWlyZWQgI2FkZHJlc3MtY2VsbHMsICNzaXplLWNlbGxzLCBhbmQgcmFuZ2VzIHByb3BlcnR5CiAg
bWlzc2luZyBmcm9tIHRleHQgYmluZGluZy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvdGksYW0zM3h4LXVzYi55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxhbTMzeHgtdXNiLnlhbWwKPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjg4OTE5MDQzMWM5YTAKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi90aSxh
bTMzeHgtdXNiLnlhbWwKPiBAQCAtMCwwICsxLDEwNCBAQAoKWyAuLi4gXQoKPiArICB0aSxod21v
ZHM6Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9zdHJpbmcK
PiArICAgIGRlc2NyaXB0aW9uOiBOYW1lIG9mIHRoZSBod21vZCBhc3NvY2lhdGVkIHdpdGggdGhl
IFVTQiBtb2R1bGUuCj4gKyAgICBjb25zdDogdXNiX290Z19ocwo+ICsgICAgZGVwcmVjYXRlZDog
dHJ1ZQoKWyAuLi4gXQoKPiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcK
PiArICAtIHJhbmdlcwo+ICsgIC0gIiNhZGRyZXNzLWNlbGxzIgo+ICsgIC0gIiNzaXplLWNlbGxz
Igo+ICsgIC0gdGksaHdtb2RzCgpbU2V2ZXJpdHk6IE1lZGl1bV0KV2lsbCB0aGlzIGNhdXNlIGEg
dmFsaWRhdGlvbiBjb25mbGljdD8gVGhlIHNjaGVtYSBleHBsaWNpdGx5IG1hcmtzIHRpLGh3bW9k
cwphcyBkZXByZWNhdGVkIGJ1dCBzaW11bHRhbmVvdXNseSBtYW5kYXRlcyBpdCBpbiB0aGUgcmVx
dWlyZWQgYXJyYXkuCgpBbnkgZGV2aWNlIHRyZWUgdmFsaWRhdGluZyBhZ2FpbnN0IHRoaXMgc2No
ZW1hIHdpbGwgZW1pdCB3YXJuaW5ncyBvciBlcnJvcnM6Cm9taXR0aW5nIHRoZSBwcm9wZXJ0eSB2
aW9sYXRlcyB0aGUgcmVxdWlyZWQgbGlzdCwgd2hpbGUgaW5jbHVkaW5nIGl0IHRyaWdnZXJzCnRo
ZSBkZXByZWNhdGVkIHdhcm5pbmcuIFRoaXMgcHJldmVudHMgdGhlIGNyZWF0aW9uIG9mIGNsZWFu
bHkgdmFsaWRhdGluZwpkZXZpY2UgdHJlZXMuCgpbIC4uLiBdCgo+ICtleGFtcGxlczoKPiArICAt
IHwKPiArICAgIHVzYkA0NzQwMDAwMCB7Cj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJ0aSxhbTMz
eHgtdXNiIjsKClsgLi4uIF0KCj4gKyAgICAgICAgdXNiLXBoeUA0NzQwMTMwMCB7Cj4gKyAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAidGksYW0zMzV4LXVzYi1waHkiOwo+ICsgICAgICAgICAgICBy
ZWcgPSA8MHg0NzQwMTMwMCAweDEwMD47Cj4gKyAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJwaHki
Owo+ICsgICAgICAgICAgICB0aSxjdHJsX21vZCA9IDwmY3RybF9tb2Q+OwoKW1NldmVyaXR5OiBN
ZWRpdW1dCkRvZXMgdGhpcyByZWZlcmVuY2UgYW4gdW5kZWZpbmVkIGxhYmVsPyBUaGUgY3RybF9t
b2QgbGFiZWwgd2FzIGRyb3BwZWQgZHVyaW5nCnRoZSBjb252ZXJzaW9uLiBSZWZlcmVuY2luZyBp
dCBoZXJlIHdpbGwgY2F1c2UgZHRjIHRvIGZhaWwgd2l0aCBhIFJlZmVyZW5jZQp0byBub24tZXhp
c3RlbnQgbm9kZSBvciBsYWJlbCBlcnJvciBkdXJpbmcgbWFrZSBkdF9iaW5kaW5nX2NoZWNrLgoK
PiArICAgICAgICAgICAgI3BoeS1jZWxscyA9IDwwPjsKPiArICAgICAgICB9Owo+ICsKPiArICAg
ICAgICB1c2JANDc0MDEwMDAgewo+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gInRpLG11c2It
YW0zM3h4IjsKPiArICAgICAgICAgICAgcmVnID0gPDB4NDc0MDE0MDAgMHg0MDA+LAo+ICsgICAg
ICAgICAgICAgICAgICA8MHg0NzQwMTAwMCAweDIwMD47Cj4gKyAgICAgICAgICAgIHJlZy1uYW1l
cyA9ICJtYyIsICJjb250cm9sIjsKPiArICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwxOD47Cj4g
KyAgICAgICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJtYyI7Cj4gKyAgICAgICAgICAgIGRyX21v
ZGUgPSAib3RnIjsKPiArICAgICAgICAgICAgbWVudG9yLG11bHRpcG9pbnQgPSA8MT47Cj4gKyAg
ICAgICAgICAgIG1lbnRvcixudW0tZXBzID0gPDE2PjsKPiArICAgICAgICAgICAgbWVudG9yLHJh
bS1iaXRzID0gPDEyPjsKPiArICAgICAgICAgICAgbWVudG9yLHBvd2VyID0gPDUwMD47Cj4gKyAg
ICAgICAgICAgIHBoeXMgPSA8JnVzYjBfcGh5PjsKCltTZXZlcml0eTogTWVkaXVtXQpTaW1pbGFy
bHksIGRvZXMgdGhpcyByZWZlcmVuY2UgdGhlIHVuZGVmaW5lZCBsYWJlbCB1c2IwX3BoeT8gVGhl
IGxhYmVsIHdhcwpyZW1vdmVkIGZyb20gdGhlIGV4YW1wbGUsIHdoaWNoIHdpbGwgYWxzbyByZXN1
bHQgaW4gYSBkdGMgY29tcGlsYXRpb24gZXJyb3IKd2hlbiBidWlsZGluZyB0aGUgZXhhbXBsZS4K
Cj4gKyAgICAgICAgfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTgtdGktYW0zMy11c2ItdjEtMC02OWFjNWY5MmRmNDVAZ21h
aWwuY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==

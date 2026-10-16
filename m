Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B324CCF2C3
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq7evmm2BcHl4DqFzubNgFVeNPlebsSe216GadKbFJE=; b=ppxfWM7ica5dQJ
	s2dokCzYisdUaG4dCsS29v8rpa6wwPuUTCxh94f3kFvrw0+R9rsWxxSVmNNb2oDgp7mGGzIpWZ86i
	4SaVYylGcaNUtiCPDNiLetIuZHmYvIbF6adDuWJ+XRQVAc54pdrorvm9EmTOda2Kag9gsUL2QyvK5
	GvCUzYS4ooF4xRVFCZqvi3nvu81R7j1XkPXKV9ohB0RD9E8MmYTmVIq3upeJ6/8zfan24361MWeKj
	QN2lfrAkomRfkfE1iLgl+3XObTojVNKEya1wSJMHB1NX3a0jFdv2qTbjAj+hENjgFkqJNcKeBjyGF
	X2DJhTmrTDl+fAMxwROQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHn0J-00000003jC5-0wXJ;
	Fri, 16 Oct 2026 18:50:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHn0H-00000003jBn-0i6U
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:50:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8957742A5B;
	Fri, 16 Oct 2026 18:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 139751F000C4;
	Fri, 16 Oct 2026 18:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792176604;
	bh=+q0qV9ULc6y0ecSGZLpCEu4TNbzlZEBwvJkejh92dOo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lI5b7d2qiszfxyvtoCmf20KaXSPzvt1pPl6lxfZRTHp7l5t9JVip/hJGWyxSaaGTU
	 HUb67w4/pQe/rj+Smj7pqZAwtQ6CNq98KpYJejOF6fORMNdU2X7weusO1fEnf4pfkD
	 k2Pfsu5o9biA22enRPhb+HwwYYCmfbvKn6oUho95CHtcSXurpanZ5dIGhWO85ozu6K
	 ExXeSUULxWNj0uglcVij8pPf7cBwV2F8ZGcA7c6KCYoSFkAIgCrEmquf1EMrVbDAy2
	 ccq4JbXj/x9ihllSovXjjm+mT54kjG8y+Q5G4tnHYs4s07RKOONqgVm9gZfawjCiDA
	 7TDSsOpBfpuqA==
Message-ID: <sashiko-outbox-174782@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 1/7] phy: rockchip: usbdp: Track PHY power state
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-b4-rockchip-dwc3-rockchip-glue-v17-1-876f96893e2f@collabora.com>
References: <20261016-b4-rockchip-dwc3-rockchip-glue-v17-0-876f96893e2f@collabora.com>
 <20261016-b4-rockchip-dwc3-rockchip-glue-v17-1-876f96893e2f@collabora.com>
Date: Fri, 16 Oct 2026 18:50:03 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBzdGF0ZSB0
cmFja2luZyBsZWFrIGluIHJrX3VkcGh5X3VzYjNfcGh5X2V4aXQoKQotLQoKY29tbWl0IDcxZjc3
OWM3YTRhOGNlZGJkNzI1YjEyZTY2ZmNiZjNkOTJmODg0YmYKQXV0aG9yOiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVz
YmRwOiBUcmFjayBQSFkgcG93ZXIgc3RhdGUKClRyYWNrIFBIWSBzdGF0ZSByZXF1ZXN0ZWQgYnkg
c29mdHdhcmUgZm9yIERQIGFuZCBVU0IzIGluZGl2aWR1YWxseQppbiBwcmVwYXJhdGlvbiB0byBy
ZXdvcmsgYW5kIGZpeCB1cCBwb3dlciBzdGF0ZSBoYW5kbGluZy4KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCBlNzQ4YWNkZDJkMzEzLi5kYjY5ZGQy
NGY3M2IzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMK
ClsgLi4uIF0KCj4gQEAgLTEyODYsMTYgKzEyOTMsMjUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBw
aHlfb3BzIHJrX3VkcGh5X2RwX3BoeV9vcHMgPSB7Cj4gIHN0YXRpYyBpbnQgcmtfdWRwaHlfdXNi
M19waHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIHsKPiAgCXN0cnVjdCBya191ZHBoeSAqdWRw
aHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiArCWludCByZXQ7Cj4gIAo+ICAJZ3VhcmQobXV0
ZXgpKCZ1ZHBoeS0+bXV0ZXgpOwo+ICAKPiArCXVkcGh5LT5zd19tb2RlIHw9IFVEUEhZX01PREVf
VVNCOwo+ICsKPiAgCS8qIERQIG9ubHkgb3IgaGlnaC1zcGVlZCwgZGlzYWJsZSBVMyBwb3J0ICov
Cj4gIAlpZiAoISh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKSB8fCB1ZHBoeS0+aHMpIHsK
PiAgCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHksIHRydWUpOwo+ICAJCXJldHVybiAw
Owo+ICAJfQo+ICAKPiAtCXJldHVybiBya191ZHBoeV9wb3dlcl9vbih1ZHBoeSwgVURQSFlfTU9E
RV9VU0IpOwo+ICsJcmV0ID0gcmtfdWRwaHlfcG93ZXJfb24odWRwaHksIFVEUEhZX01PREVfVVNC
KTsKPiArCWlmIChyZXQpIHsKPiArCQl1ZHBoeS0+c3dfbW9kZSAmPSB+VURQSFlfTU9ERV9VU0I7
Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiAgfQo+ICAKPiAgc3Rh
dGljIGludCBya191ZHBoeV91c2IzX3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPiBAQCAtMTMw
OCw2ICsxMzI0LDggQEAgc3RhdGljIGludCBya191ZHBoeV91c2IzX3BoeV9leGl0KHN0cnVjdCBw
aHkgKnBoeSkKPiAgCWlmICghKHVkcGh5LT5tb2RlICYgVURQSFlfTU9ERV9VU0IpIHx8IHVkcGh5
LT5ocykKPiAgCQlyZXR1cm4gMDsKPiAgCj4gKwl1ZHBoeS0+c3dfbW9kZSAmPSB+VURQSFlfTU9E
RV9VU0I7Cj4gKwoKW1NldmVyaXR5OiBNZWRpdW1dCkluIHJrX3VkcGh5X3VzYjNfcGh5X2luaXQo
KSwgVURQSFlfTU9ERV9VU0IgaXMgdW5jb25kaXRpb25hbGx5IGFkZGVkIHRvCnN3X21vZGUgYmVm
b3JlIHRoZSBlYXJseSByZXR1cm4gZm9yIERQLW9ubHkgb3IgaGlnaC1zcGVlZCBjYXNlcy4KCkhv
d2V2ZXIsIGluIHJrX3VkcGh5X3VzYjNfcGh5X2V4aXQoKSwgdGhlIGNvcnJlc3BvbmRpbmcgZWFy
bHkgcmV0dXJuIGhhcHBlbnMKYmVmb3JlIGNsZWFyaW5nIFVEUEhZX01PREVfVVNCIGZyb20gc3df
bW9kZS4KCldpbGwgdGhpcyBjYXVzZSB0aGUgc3dfbW9kZSBzdGF0ZSB0byBsZWFrPyBJZiBzbywg
Y291bGQgc3Vic2VxdWVudCBvcGVyYXRpb25zCmxpa2UgcmtfdWRwaHlfcG93ZXJfb24oKSBjYWxs
ZWQgZHVyaW5nIERQIFBIWSBpbml0aWFsaXphdGlvbiBpbmNvcnJlY3RseSBzZWUKVURQSFlfTU9E
RV9VU0IgYXMgcmVxdWVzdGVkLCBwb3RlbnRpYWxseSBleGVjdXRpbmcgdGhlIERXQzMgcmVzZXQg
aGFuZGxlcgp1bm5lY2Vzc2FyaWx5PwoKPiAgCXJrX3VkcGh5X3Bvd2VyX29mZih1ZHBoeSwgVURQ
SFlfTU9ERV9VU0IpOwo+ICAKPiAgCXJldHVybiAwOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAxNi1iNC1yb2NrY2hpcC1kd2Mz
LXJvY2tjaGlwLWdsdWUtdjE3LTAtODc2Zjk2ODkzZTJmQGNvbGxhYm9yYS5jb20/cGFydD0xCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

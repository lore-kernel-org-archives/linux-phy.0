Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D285C9830E
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 02:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj9KsIXDBjXpp3Fc6l6KfFSHVLLIyxlAvMuCklXU9pw=; b=yZyCH9hlM5zqyj
	GeKOCzEpuaZ/NMQoSxmEeZPd9VSXHxiOj23tjCLzVxOX/I24+mofRRdnRfpiYRrfkt/+A5RWnKh6D
	OpY/uOBEZ5qeQiBQMcDJ0jh9Q6/xbpisHqqg0zNrIT18OgSPYkmo4pbZT4Lv94Iv7DpuMvDqa7YD/
	1o8nnOEXWz+h05jT/xqcyuKJw4Skzq374z/xdiNdBJ/9m6lUEjp6/cRfU2nutM26AH2yLLDK/AMkT
	/60Fc1yauj2WZZ6mEj4Qxn7vNNzhjYTbg3IobGgwySJfuYEmoPahkOSCIGvzp3rVinuIapOobgZTU
	hBkgb7ieMoEyVKLOwtDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAIUe-0000000Es1t-1oma;
	Sat, 26 Sep 2026 02:50:28 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAIUc-0000000Es1c-3dzx;
	Sat, 26 Sep 2026 02:50:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CBBDD60136;
	Sat, 26 Sep 2026 02:50:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57B651F000FF;
	Sat, 26 Sep 2026 02:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790391025;
	bh=q1D/hTfHpEkj4ENhT/+CFwGkVCSkmz0nULHdaqKDKiw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iSMIW41maQwL2ehdH0TNscsz5QmADA5AcVjc15u5+KuWioJR0ySjmMolmOtmqcqtd
	 euVIrdW1itg1oKyM81AVGjjga1yCF1A+UkhHwXhfBCz+/lUhPG3IFMKmDQybddT+qD
	 u1YAOjRBpaff2pUjvcnftQXSGCCX8A7U29UXB6BmCmspa97quzeHpjVdhREDTNiiUQ
	 zyi+BXrlvm4K8QWWcaur7u586K3UIibc0L1IYpyj6jhAqRpadzemGRIBaC168MYY5q
	 MPnz7difEO9IITvT/Y8WX6aky3IP2Wn7N0KYuta7GaJ77RmltWKYjbmUyNk7qtAErn
	 NJqPxZYV8+CQw==
Date: Sat, 26 Sep 2026 04:50:07 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Igor Paunovic <royalnet026@gmail.com>, kernel@collabora.com
Subject: Re: [PATCH] phy: rockchip: inno-usb2: ensure PHY is running when
 clock is requested
Message-ID: <xnvakstneih6njyxfe27kdx54vy3zpnth24o4mjlzuoykb2pfh@np7dx62waujo>
References: <20260908-phy-rockchip-inno-usb2-clock-fix-v1-1-f7d59c31b908@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-phy-rockchip-inno-usb2-clock-fix-v1-1-f7d59c31b908@collabora.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDY6MDc6NDJQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gT24gUkszNTg4IHRoZSBPSENJIGNvbnRyb2xsZXIgcmVnaXN0ZXJzIGNhbiBv
bmx5IGJlIGFjY2Vzc2VkIHdoZW4gdGhlCj4gUEhZJ3MgNDgwTUh6IGNsb2NrIGlzIHJ1bm5pbmcu
IEFmdGVyIHN5c3RlbSBzdXNwZW5kIHRoZSBjb250cm9sbGVyIGlzCj4gcmVzdW1lZCBiZWZvcmUg
dGhlIFBIWS4KClRoaXMgc3RhdGVtZW50IGlzIHNsaWdodGx5IGNvbmZ1c2luZy4gVGhlcmUgaXMg
bm8gUE0gb3BzIGluIHRoaXMgUEhZIGRyaXZlci4KCj4gVGhlIGNvbnRyb2xsZXIgcmVxdWVzdHMg
dGhlIGNsb2NrLCB3aGljaCBvcGVucwo+IHRoZSBnYXRlIGluIHRoZSBQSFkncyBjbG9jayBwcmVw
YXJlIGZ1bmN0aW9uLiBCdXQgd2l0aCB0aGUgUEhZIHN1c3BlbmRlZAo+IHRoaXMganVzdCByZXN1
bHRzIGluIGEgZGVhZCBjbG9jayBiZWluZyByb3V0ZWQuIFRoZSBPSENJIGRyaXZlciB3aWxsCj4g
dGhlbiBjb250aW51ZSB0byBhY2Nlc3MgaXRzIHJlZ2lzdGVycyByZXN1bHRpbmcgaW4gYSBib2Fy
ZCBoYW5nLgo+IAo+IEZpeCB0aGlzIGJ5IHJlc3VtaW5nIHRoZSBzdXNwZW5kZWQgUEhZIGluIHRo
ZSBjbG9jaydzIHByZXBhcmUgZnVuY3Rpb24sCj4gc28gdGhhdCB0aGUgY2xvY2sgaXMgcmVhbGx5
IHByZXBhcmVkIG9uY2UgdGhlIGZ1bmN0aW9uIHJldHVybnMuCj4gCj4gU2lnbmVkLW9mZi1ieTog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gLS0t
Cj4gVGhpcyB3YXMgbm90aWNlZCBvbiBSSzM1ODggRVZCMSB3aGVuIHJlc3VtaW5nIGZyb20gc3lz
dGVtIHN1c3BlbmQuIFRoaXMKPiBpcyB0ZWNobmljYWxseSBhIGZpeCwgYnV0IGl0cyB1bmNsZWFy
IHdoZW4gdGhlIGJ1ZyB3YXMgaW50cm9kdWNlZCBhbmQKPiBzeXN0ZW0gc3VzcGVuZCBpcyBicm9r
ZW4gb24gUkszNTg4IGZvciBxdWl0ZSBhIHdoaWxlIGFuZCBub3QganVzdCBkdWUKPiB0byB0aGlz
IHByb2JsZW0uIFNvIEkgdGhpbmsgdGhpcyBmaXggY2FuIGJlIG1lcmdlZCB0aGUgbm9ybWFsIHdh
eSB2aWEKPiBsaW51eC1uZXh0Lgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtaW5uby11c2IyLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGIvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4gaW5kZXggN2Q4YTUzM2YyNGFlLi4wN2Q0MDA5
NjdkZWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlu
bm8tdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8t
dXNiMi5jCj4gQEAgLTMzMiw2ICszMzIsMzkgQEAgcm9ja2NoaXBfdXNiMnBoeV9jbGs0ODBtX2Ns
a291dF9jdGwoc3RydWN0IGNsa19odyAqaHcsIHN0cnVjdCByZWdtYXAgKipiYXNlLAo+ICAJfQo+
ICB9Cj4gIAo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3VzYjJwaHlfY2xrNDgwbV9sZWF2ZV9zdXNw
ZW5kKHN0cnVjdCBjbGtfaHcgKmh3KQo+ICt7Cj4gKwlzdHJ1Y3Qgcm9ja2NoaXBfdXNiMnBoeSAq
cnBoeSA9IGNvbnRhaW5lcl9vZihodywgc3RydWN0IHJvY2tjaGlwX3VzYjJwaHksIGNsazQ4MG1f
aHcpOwo+ICsJYm9vbCByZWxvY2sgPSBmYWxzZTsKPiArCWludCByZXQsIGk7Cj4gKwo+ICsJLyog
TGltaXQgdG8gc2luZ2xlIHBvcnQ7IGl0J3MgdW5jbGVhciBob3cgbXVsdGktcG9ydCBzaG91bGQg
YmUgaGFuZGxlZCAqLwo+ICsJaWYgKHJwaHktPnBoeV9jZmctPm51bV9wb3J0cyA+IDEpCj4gKwkJ
cmV0dXJuIDA7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IHJwaHktPnBoeV9jZmctPm51bV9wb3J0
czsgaSsrKSB7Cj4gKwkJc3RydWN0IHJvY2tjaGlwX3VzYjJwaHlfcG9ydCAqcnBvcnQgPSAmcnBo
eS0+cG9ydHNbaV07Cj4gKwkJY29uc3Qgc3RydWN0IHJvY2tjaGlwX3VzYjJwaHlfcG9ydF9jZmcg
KnBvcnRfY2ZnID0gcnBvcnQtPnBvcnRfY2ZnOwo+ICsKPiArCQlpZiAoIXJwb3J0LT5waHkgfHwg
IXBvcnRfY2ZnIHx8ICFwb3J0X2NmZy0+cGh5X3N1cy5lbmFibGUpCj4gKwkJCWNvbnRpbnVlOwo+
ICsJCWlmIChwcm9wZXJ0eV9lbmFibGVkKHJwaHktPmdyZiwgJnBvcnRfY2ZnLT5waHlfc3VzKSkg
ewo+ICsJCQlwcm9wZXJ0eV9lbmFibGUocnBoeS0+Z3JmLCAmcG9ydF9jZmctPnBoeV9zdXMsCj4g
KwkJCQkJZmFsc2UpOwo+ICsJCQlyZWxvY2sgPSB0cnVlOwo+ICsJCX0KPiArCX0KPiArCj4gKwlp
ZiAocmVsb2NrKSB7Cj4gKwkJcmV0ID0gcm9ja2NoaXBfdXNiMnBoeV9yZXNldChycGh5KTsKPiAr
CQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCXVzbGVlcF9yYW5nZSgxNTAwLCAyMDAw
KTsKPiArCX0KPiArCgpUaGlzIGxvb2tzIGxpa2UgYSBkdXBsaWNhdGlvbiBvZiByb2NrY2hpcF91
c2IycGh5X3Bvd2VyX29uKCkuIFNvIEknbSBhc3N1bWluZwp0aGF0IHBoeV9wb3dlcl9vbigpIGlz
IG5vdCBjYWxsZWQgYnkgdGhlIE9IQ0kgZHJpdmVyIGJlZm9yZSBhY2Nlc3NpbmcgdGhlCnJlZ2lz
dGVycy4gU28gd2h5IGRvbid0IHlvdSBmaXggdGhhdCBpbnN0ZWFkPwoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

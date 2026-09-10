Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36AD5C79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 07:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWiK2AXtmTFcZW+VecErfVT10yVZ91GQ/xYj/U9PAAM=; b=nCk9Lm/zw4fVkx
	gqhWoSPmQLc1KexMPZ9AdD7xeKM31vSXS2Gz2yI4Vuv0toR1/KyDsMkqUd+tJyFwucM/v82LAfV92
	G5Zk+UyRw4oX1gbDEjJf4SB+NUm3zTF2mA1DllsCXUY1jt3Unf+bZvesm3n4Wa3PFn7voVqfg79c6
	HrzBctYFQETgcjeAfQZ/TMwAiKQUQEiiPe1N6ya/aZAxI7GJUEH7+GxA+eRA3U+2Qvhi7dwgkIjkU
	VvV0OVVWziH07yhf8MnDmmH8Yz1qlLCCMjk64k4zirjzVYOVsI725/ttgMzNw0m3CXxNG128Aofew
	eZ8dPQ9/4S4Ql2bKXrvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Z5q-0000000DcGu-3THo;
	Thu, 10 Sep 2026 07:21:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Z5p-0000000DcGn-4BBC
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 07:21:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1FF69600CB;
	Thu, 10 Sep 2026 07:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 282A51F000FF;
	Thu, 10 Sep 2026 07:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789024868;
	bh=fs2GO2ucfvQef/WDQaTt63tsX174+5+4LFAzvYnckFI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gKcSsOZTJUbET1+Lf+1r4mnFr7Udi36wc/aS4qJHWG6aRDYzmeXtWGX1+5Em1ryHy
	 73tHbBAzUjbjXoZN62Bty+lGl46Xa3IG7AqrNoi9IX0C4s1WVYcoAYPuiFh1prt3N8
	 xMrUFojnqUehLsb54NSlOElTAgqXC73wFisC6nMFTyMxUkbX4Etbqat0kSKZa7sRf3
	 7JVGZo9SXlKnL/rotWcDtfceLir80hZirovQ8Sz0mpn3OUWumQeEHEzF30BIxJDsuu
	 ifeBWGjqM9auzbIK8QtkCf+2Uv3Bbx0LNSwb40g0HQOl0oalks5gWKGn1fe9XpUM8+
	 C3i4w6MWTuWOw==
Date: Thu, 10 Sep 2026 09:20:58 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, shengchao.guo@oss.qualcomm.com, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/5] PCI: qcom: Add CGC disable workaround for Nord
 PCIe
Message-ID: <smgyk5ray7laj2ltwnmx3r7cfiouj4hyn7tyfmx7rpsrhu7kin@p5pr7wdoprjn>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
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

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMDU6MTg6MThQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBOb3JkIHJlcXVpcmVzIGEgd29ya2Fyb3VuZCB0byBhZGRyZXNz
IGEgdGltaW5nIGNvbnZlcmdlbmNlIGlzc3VlIGluIHRoZQo+IFBDSWUgcG93ZXIgZG9tYWluLiBU
byBhdm9pZCB0aGUgaXNzdWUsIHNldCB0aGUgQ09SRV9DTEtfQ0dDX0RJUyBhbmQKPiBBVVhfUFdS
X0RFVCBiaXRzIGluIFBBUkZfU1lTX0NUUkwgYWZ0ZXIgY29udHJvbGxlciBpbml0aWFsaXphdGlv
bi4KPiAKCkJvdGggdGhlIHN1YmplY3QgYW5kIGNvbW1pdCBtZXNzYWdlIHNvdW5kcyBsaWtlIHRo
aXMgcGF0Y2ggaXMgb25seSBhZGRpbmcgdGhlCkNHQyB3b3JrYXJvdW5kICh5b3UgbmVlZCB0byBl
eHBhbmQgQ0dDIGJ0dyksIGJ1dCB0aGlzIHBhdGNoIGlzIGFkZGluZyBOb3JkIFBDSWUKY29udHJv
bGxlciBzdXBwb3J0LiBTbyB0aGF0IHNob3VsZCBiZSB0aGUgc3ViamVjdCBhbmQgQ0dDLCBsMHMs
IG5vX3Nub29wIHNob3VsZApiZSBkb2N1bWVudGVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4KCj4g
VGhlIFNMVl9BQ0xLX0NHQ19ESVMgYml0IGlzIGFscmVhZHkgY29uZmlndXJlZCBieSBoYXJkd2Fy
ZSByZXNldC4gVGhpcwo+IGNoYW5nZSBhZGRzIHRoZSByZW1haW5pbmcgcmVxdWlyZWQgc2V0dGlu
Z3MgYXMgZG9jdW1lbnRlZCBpbgo+IFFDVEREMTE5NzI0NDYuCgpNZW50aW9uIHRoYXQgdGhpcyBl
cnJhdHVtIGlzIHByaXZhdGUgYW5kIG5vdCBhdmFpbGFibGUgcHVibGljbHkuCgo+IAo+IFJldmll
d2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1
QG9zcy5xdWFsY29tbS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtcWNvbS5jIHwgMTYgKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gaW5k
ZXggYjU4YTYwN2I3MTNmLi5iOTdlNDBmYjdlYzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXFjb20uYwo+IEBAIC0yODEsNiArMjgxLDcgQEAgc3RydWN0IHFjb21fcGNpZV9j
Zmcgewo+ICAJYm9vbCBvdmVycmlkZV9ub19zbm9vcDsKPiAgCWJvb2wgZmlybXdhcmVfbWFuYWdl
ZDsKPiAgCWJvb2wgbm9fbDBzOwo+ICsJYm9vbCBjZ2NfZGlzX3dvcmthcm91bmQ7CgonZGlzYWJs
ZV9jZ2MnCgo+ICB9Owo+ICAKPiAgc3RydWN0IHFjb21fcGNpZV9wZXJzdCB7Cj4gQEAgLTEwOTcs
MTEgKzEwOTgsMTggQEAgc3RhdGljIGludCBxY29tX3BjaWVfaW5pdF8yXzdfMChzdHJ1Y3QgcWNv
bV9wY2llICpwY2llKQo+ICBzdGF0aWMgaW50IHFjb21fcGNpZV9wb3N0X2luaXRfMl83XzAoc3Ry
dWN0IHFjb21fcGNpZSAqcGNpZSkKPiAgewo+ICAJY29uc3Qgc3RydWN0IHFjb21fcGNpZV9jZmcg
KnBjaWVfY2ZnID0gcGNpZS0+Y2ZnOwo+ICsJdTMyIHZhbDsKPiAgCj4gIAlpZiAocGNpZV9jZmct
Pm92ZXJyaWRlX25vX3Nub29wKQo+ICAJCXdyaXRlbChXUl9OT19TTk9PUF9PVkVSUklERV9FTiB8
IFJEX05PX1NOT09QX09WRVJSSURFX0VOLAo+ICAJCQkJcGNpZS0+cGFyZiArIFBBUkZfTk9fU05P
T1BfT1ZFUlJJREUpOwo+ICAKPiArCWlmIChwY2llX2NmZy0+Y2djX2Rpc193b3JrYXJvdW5kKSB7
Cj4gKwkJdmFsID0gcmVhZGwocGNpZS0+cGFyZiArIFBBUkZfU1lTX0NUUkwpOwo+ICsJCXZhbCB8
PSBDT1JFX0NMS19DR0NfRElTIHwgQVVYX1BXUl9ERVQ7Cj4gKwkJd3JpdGVsKHZhbCwgcGNpZS0+
cGFyZiArIFBBUkZfU1lTX0NUUkwpOwo+ICsJfQo+ICsKPiAgCXFjb21fcGNpZV9zZXRfc2xvdF9j
YXAocGNpZS0+cGNpKTsKPiAgCj4gIAlyZXR1cm4gMDsKPiBAQCAtMTYzMCw2ICsxNjM4LDEzIEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyBjZmdfMl85XzAgPSB7Cj4gIAkub3Bz
ID0gJm9wc18yXzlfMCwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2ll
X2NmZyBjZmdfbm9yZCA9IHsKCkNhbiB5b3UgdXNlIERXQyBJUCB2ZXJzaW9uIGluc3RlYWQgb2Yg
U29DIG5hbWU/CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK

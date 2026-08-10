Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8B16C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=164NgoE5ymvvluVU+HTUWN2z1uqUXPL0zMHjUjfUkZ0=; b=0r3q+hPs9kqold
	/TBgL/hkvjerW4UA7L6v/TeMQ5pF/cK57cC8tNQqbLlraSSv4XYyKC2gHaja71WZC/e6s3MA6mGPI
	SmmAB0A1W+zM6iDhkA4fj9qwZ7iXSZaRUAi3QRExWGnLiZ7ieg2BzpVSaeZo7EukieBt53XHHz0Gj
	CIUNfVZnQxIEHzfnxQKHmXURg14GgLgz9iZAMsVF5duMj0h28Xg4HstX+7sCLHlcySIQOg2JjifMK
	pq42lrTnJcVb5bAD+p36iPv9zLy2UGUp64AHOvHPQQuo0FoquHAXuZcKwhaUzGw1CepZ6UngOi1nT
	GQDuxko4buTS71tXNCqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOaY-0000000BgE2-2CBU;
	Mon, 10 Aug 2026 11:54:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOaX-0000000BgDw-2KAI
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:54:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 03F7E60052;
	Mon, 10 Aug 2026 11:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4171F1F000E9;
	Mon, 10 Aug 2026 11:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786362880;
	bh=cHbZvRTjryn/fP7GhyJVcTH2NL3cBlPasG6rVMDicgM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HM1px1RJ4HICGPFyJtGDzJ/oBixBgNxe3LVuFw9HH+gFhPCPJRvFMEvkQyJIbrJI3
	 CCbtdME8ORGJZxAhn4Wqh3mOmnHJhBEAIHbIIxy1CvRQGM9BBNH5i+zBGP4Q/h0PzI
	 alDxW7jYaI2PE6SmrdVI57olApXrzL6KRT76IhrhpTpkhXVdIaNkCFZGI+wEEnR/em
	 iLtQm+0l6YmQPU8LQvYLJyBhchv1oLFYnYKX8R+sC8+Qr5ZQ16hOUpWRbuKr1iM6Rz
	 6fmsUhChWCKSjJLXSMBGFvZZyBj83aOfDFT/1R9v1zDFIcOOvKFnEww/rEFyg8Kw5H
	 5+jQOfJlreuZw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 03/10] dt-bindings: phy: qcom,ipq806x-usb-phy-ss: add
 MSM8974 SS PHY
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260810-msm8974-usb3-v1-3-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-3-1a47e1185524@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 11:54:39 +0000
Message-Id: <20260810115440.4171F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHNjaGVtYSB1bmNv
bmRpdGlvbmFsbHkgYXBwbGllcyBJUFE4MDZ4IGhhcmR3YXJlIGRlZmF1bHRzIHRvIHRoZSBuZXds
eSBpbnRyb2R1Y2VkIE1TTTg5NzQgdmFyaWFudCwgY29udHJhZGljdGluZyB0aGUgY29tbWl0IG1l
c3NhZ2UgY2xhaW0gdGhhdCB0aGUgcGFyYW1ldGVycyBkaWZmZXIuCi0tCgotLS0gUGF0Y2ggWzNd
OiBbUEFUQ0ggMDMvMTBdIGR0LWJpbmRpbmdzOiBwaHk6IHFjb20saXBxODA2eC11c2ItcGh5LXNz
OiBhZGQgTVNNODk3NCBTUyBQSFkgLS0tCmNvbW1pdCBjM2E4ZmI2YjY3NDU1MTQ0NGMxNzg4NTc2
OGU4ZGE1N2ViNWJkZjg0CkF1dGhvcjogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtv
dkBvc3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGluZ3M6IHBoeTogcWNvbSxpcHE4MDZ4LXVzYi1w
aHktc3M6IGFkZCBNU004OTc0IFNTIFBIWQoKVGhpcyBjb21taXQgYWRkcyB0aGUgbXNtODk3NCBj
b21wYXRpYmxlIHN0cmluZyB0byB0aGUgaXBxODA2eCBkd2MzCnN1cGVyc3BlZWQgcGh5IGRldmlj
ZSB0cmVlIGJpbmRpbmcuIEl0IG5vdGVzIHRoYXQgd2hpbGUgdGhlIGhhcmR3YXJlIGxheW91dApp
cyBpZGVudGljYWwsIHRoZSBwYXJhbWV0ZXJzIGRpZmZlciBmcm9tIHRob3NlIHNwZWNpZmllZCBm
b3IgaXBxODA2eC4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvcWNvbSxpcHE4MDZ4LXVzYi1waHktc3MueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxpcHE4MDZ4LXVzYi1waHktc3MueWFtbAo+IGluZGV4
IDZjZjVjNmMwNjA3MmMuLjI5Y2I0M2NmNzM0ODEgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLGlwcTgwNngtdXNiLXBoeS1zcy55YW1sCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLGlwcTgwNngt
dXNiLXBoeS1zcy55YW1sCj4gQEAgLTE2LDcgKzE2LDkgQEAgZGVzY3JpcHRpb246Cj4gIAo+ICBw
cm9wZXJ0aWVzOgo+ICAgIGNvbXBhdGlibGU6Cj4gLSAgICBjb25zdDogcWNvbSxpcHE4MDZ4LXVz
Yi1waHktc3MKPiArICAgIG9uZU9mOgo+ICsgICAgICAtIGNvbnN0OiBxY29tLGlwcTgwNngtdXNi
LXBoeS1zcwo+ICsgICAgICAtIGNvbnN0OiBxY29tLG1zbTg5NzQtdXNiLXBoeS1zcwoKW1NldmVy
aXR5OiBMb3ddClRoZSBjb21taXQgbWVzc2FnZSBzdGF0ZXMgdGhhdCB0aGUgaGFyZHdhcmUtc3Bl
Y2lmaWMgcGFyYW1ldGVycyBkaWZmZXIgZnJvbQp0aG9zZSBzcGVjaWZpZWQgZm9yIGlwcTgwNngu
IEhvd2V2ZXIsIHdpbGwgZHQtc2NoZW1hIHZhbGlkYXRpb24gbm93CmluY29ycmVjdGx5IGludGVy
cHJldCBvbWl0dGVkIG9wdGlvbmFsIHByb3BlcnRpZXMgb24gbXNtODk3NCBub2RlcyBhcyBoYXZp
bmcKdGhlIGlwcTgwNnggZGVmYXVsdHM/CgpGb3IgZXhhbXBsZSwgdGhlIHNjaGVtYSBjdXJyZW50
bHkgZGVmaW5lcyBnbG9iYWwgZGVmYXVsdHM6CgogIHFjb20scngtZXE6CiAgICAkcmVmOiAvc2No
ZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKICAgIGRlc2NyaXB0aW9uOiBPdmVy
cmlkZSB2YWx1ZSBmb3IgcnhfZXEuCiAgICBkZWZhdWx0OiA0CgpTaG91bGQgdGhlcmUgYmUgYSBj
b25kaXRpb25hbCBibG9jayB0byBlbnN1cmUgdGhlc2UgZGVmYXVsdHMgYXJlIHNjb3BlZApzdHJp
Y3RseSB0byB0aGUgcWNvbSxpcHE4MDZ4LXVzYi1waHktc3MgY29tcGF0aWJsZSwgb3Igc2hvdWxk
IHRoZSBkaWZmZXJpbmcKbXNtODk3NCBkZWZhdWx0cyBiZSBleHBsaWNpdGx5IHNwZWNpZmllZD8K
Cj4gIAo+ICAgICIjcGh5LWNlbGxzIjoKPiAgICAgIGNvbnN0OiAwCgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEwLW1zbTg5NzQt
dXNiMy12MS0wLTFhNDdlMTE4NTUyNEBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

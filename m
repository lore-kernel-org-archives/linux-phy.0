Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 657C3C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 23:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bl9vJ762PS3tOGzev8EYglrLouITcPOsVIwfYKH+KAM=; b=tFHdVwh940r+k/
	1/B7rFyFj9uhAxPXuC16vJf4PLB7aAFni184rO3ueuq9U/YX6oNbqDXyigMdXWumbhKnio+qdD8p2
	LPU4Gr3fHH2JlQMASXhqZyn1DMk8htBWlD8FjjEhxZJcTB9CQr6r2D4oYr4jYjG1L7WL1JdmrHzaC
	CJMD4uS5JVlFHZW8yLvrhAIgdtT864c1JwoHGNmPoXuc+oVb6NmYBNMYErZTPwEizJa/0CUISd9tp
	uM8ZQKS/Knvwcjno6gkBFrDAcZ1lkClT37W51/qSjWNsjOWfZGEX9qoboTUj0trodAXTDaqsuAIvs
	2gzitphUuDnNoidB7B1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfndk-000000081mI-00uR;
	Fri, 03 Jul 2026 23:49:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfndi-000000081mA-0Mt4
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 23:49:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 16E3D4323F;
	Fri,  3 Jul 2026 23:49:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96D701F000E9;
	Fri,  3 Jul 2026 23:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122584;
	bh=/x3PSLlONBl/BZ7lR2rqsLDqhhtW/0J64dFPP+tzcPc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ahnGbnQixx0Eck3NjfsJPbWf10bFXFGR2xaFJ2dtVv3qvIFhdaaipMaH8UQ00ViMB
	 ljfcCzUYBNX2k3f8u9Jbj+63oCqA45Aj/XxUxLmoPHi0GYv/fANvQVbY7X5c9MgbjG
	 9m67RY7Bkt11oho79SbHMDPb4yWN+gKCtLl37i7MuM88LvgB1S//WdIs1IYZAyJPVf
	 VnqFgDcPT6ex5YCOgBLT3MmcHST/XsNqt4Du04J0sMEZnNnRHJWiqCNR0rqsSDWWVi
	 O5Ev+isXUa7H5Jb1/A2LaGhwVFleZx0FqtccIrE8vSeI9eB1uOlJgfCSsmJAe8Wdv/
	 tYL2+4DlYmP8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 23/36] phy: rockchip: usbdp: Clear USB status on PHY
 exit
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-23-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-23-a392711ca8a9@collabora.com>
Date: Fri, 03 Jul 2026 23:49:43 +0000
Message-Id: <20260703234943.96D701F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIENsZWFyaW5nIGB1ZHBo
eS0+c3RhdHVzYCBkaXJlY3RseSB3aXRob3V0IGNoZWNraW5nIGlmIHRoZSBQSFkgaGFyZHdhcmUg
c2hvdWxkIGJlIGRpc2FibGVkIGNhdXNlcyBhbiB1bmJvdW5kZWQgY2xvY2sgcmVmZXJlbmNlIGNv
dW50IGxlYWsuCi0tCgpjb21taXQgZTgzNmMzZDliOTI5OTYxMTNjYjg1OTNmOTNiZjQ4MTUyZWQ1
ZGU2YwpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJv
cmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IENsZWFyIFVTQiBzdGF0dXMgb24gUEhZIGV4
aXQKClRoaXMgY29tbWl0IGVuc3VyZXMgdGhlIFVTQiBzdGF0dXMgZmxhZyBpcyBjbGVhcmVkIHdo
ZW4gdGhlIFVTQjMgUEhZIGlzCmV4aXRlZCB3aGlsZSB0aGUgc3lzdGVtIGlzIGluIERQLW9ubHkg
bW9kZS4gVGhpcyBoYXBwZW5zIGlmIHRoZSBVU0IzCmNvbnRyb2xsZXIgZGV2aWNlIGlzIHVuYm91
bmQgd2hpbGUgYSBEUC1vbmx5IGFkYXB0ZXIgaXMgcGx1Z2dlZCBpbi4KCkNsb3NlczogaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL21lc3NhZ2UvMjAyNjA2MjUtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12
Ny0yNC0zOGViM2NmNjU0ZmQlNDBjb2xsYWJvcmEuY29tCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+IEBAIC0xMjczLDggKzEyNzMsMTAgQEAgc3RhdGljIGludCBya191ZHBoeV91c2Iz
X3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPiAgCWd1YXJkKG11dGV4KSgmdWRwaHktPm11dGV4
KTsKPiAgCj4gIAkvKiBEUCBvbmx5IG9yIGhpZ2gtc3BlZWQgKi8KPiAtCWlmICghKHVkcGh5LT5t
b2RlICYgVURQSFlfTU9ERV9VU0IpIHx8IHVkcGh5LT5ocykKPiArCWlmICghKHVkcGh5LT5tb2Rl
ICYgVURQSFlfTU9ERV9VU0IpIHx8IHVkcGh5LT5ocykgewo+ICsJCXVkcGh5LT5zdGF0dXMgJj0g
flVEUEhZX01PREVfVVNCOwo+ICAJCXJldHVybiAwOwo+ICsJfQo+ICAKPiAgCXJrX3VkcGh5X3Bv
d2VyX29mZih1ZHBoeSwgVURQSFlfTU9ERV9VU0IpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIGNs
ZWFyaW5nIHVkcGh5LT5zdGF0dXMgd2l0aG91dCBhY3R1YWxseSBkaXNhYmxpbmcgdGhlIGhhcmR3
YXJlIGNhdXNlIGFuCnVuYm91bmRlZCBjbG9jayByZWZlcmVuY2UgY291bnQgbGVhaz8KCldoZW4g
dGhlIHN5c3RlbSBzd2l0Y2hlcyB0byBEUC1vbmx5IG1vZGUsIHVkcGh5LT5tb2RlIGxvc2VzIHRo
ZQpVRFBIWV9NT0RFX1VTQiBiaXQuIElmIHRoZSBVU0IgY29udHJvbGxlciBpcyB0aGVuIHVuYm91
bmQsIHdlIGhpdCB0aGlzIHBhdGgKYW5kIGNsZWFyIFVEUEhZX01PREVfVVNCIGZyb20gdWRwaHkt
PnN0YXR1cywgYnV0IHJldHVybiBlYXJseS4gVGhlIGhhcmR3YXJlCmNsb2NrcyByZW1haW4gZW5h
YmxlZCBzaW5jZSB3ZSBieXBhc3MgdGhlIGhhcmR3YXJlIGRpc2FibGUgY2FsbC4KCklmIHRoZSBz
eXN0ZW0gdGhlbiBzd2l0Y2hlcyBiYWNrIHRvIFVTQiBtb2RlLCBya191ZHBoeV91c2IzX3BoeV9p
bml0KCkgd2lsbApzZWUgdWRwaHktPnN0YXR1cyBhcyBVRFBIWV9NT0RFX05PTkUgYW5kIGNhbGwg
cmtfdWRwaHlfc2V0dXAoKS4gVGhpcyBjYWxscwpjbGtfYnVsa19wcmVwYXJlX2VuYWJsZSgpIGFn
YWluLCBpbmNyZW1lbnRpbmcgdGhlIGNsb2NrIHJlZmNvdW50IGluZGVmaW5pdGVseQpvbiBldmVy
eSBjeWNsZS4KCkkgc2VlIHRoaXMgaXNzdWUgaXMgYWRkcmVzc2VkIGxhdGVyIGluIHRoZSBzZXJp
ZXMgYnkgY29tbWl0CmUwMjE5ZmQ1ZjRkNzg0ZTc4ZmY5NjlhZjI2NmUxMDE5NjM2N2JlNjkgKCJw
aHk6IHJvY2tjaGlwOiB1c2JkcDogU2ltcGxpZnkKcG93ZXIgc3RhdGUgaGFuZGxpbmciKSwgYnV0
IGRvZXNuJ3QgdGhpcyBwYXRjaCBpbnRyb2R1Y2UgYSByZWdyZXNzaW9uIGhlcmUKdGhhdCBicmVh
a3MgYmlzZWN0YWJpbGl0eT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDMtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12MTAtMC1h
MzkyNzExY2E4YTlAY29sbGFib3JhLmNvbT9wYXJ0PTIzCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

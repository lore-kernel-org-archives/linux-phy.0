Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7DFCCD98F2
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 15:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tD+6VGl7nnH7+PnEeh1n4P8BgSCk/XafVHUevoM41as=; b=BDIzhJdGnQBlQl
	Z+nWow1br4lNvkDDt3SVAolZFuHGS2DztKtRtqokwOXwGP2y324BjOUvydMn9dAtk8uMYGsVlItss
	rViAaEmEODvI1yCZgJVAiMg9I9lhx0t/6Q3kS5NqxG6Mz6Wg1XSquJpZL/oQrcMaUiJic714lKArc
	2VqiNQAYAGatpWCCDa/I00pBZyAG98A2K8JMKD5mHqAsE+oVPfX0+3rw9OunbKUEzgt/shXzx2ttH
	3wSZyl6R2FCV0NSo93lY6ttnvNzxJ7XT2cfC+K6IFk7JCGVPTEQ8pDM2zzWVUn02gSu2Qhv3OR8/j
	tWr7p4kQyy28KhLUxR0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabXT-00000002jHk-1zUh;
	Fri, 19 Jun 2026 15:53:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabXR-00000002jHV-41tO
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 15:53:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A13A441A2;
	Fri, 19 Jun 2026 15:53:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D26E1F000E9;
	Fri, 19 Jun 2026 15:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884429;
	bh=Ch1IXfBaGeNuff+ir6cUHYNM0gw+J62FEjZ7EvLU8Bo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cnCHxp0vX3EpvpigQP5yGNuY7p/P+1kG4Pl7poBoi0NV64vhyr3EBMWJknzRmNO7r
	 YaLC8Jz+icEftibxBEL21dE7ynWMrlt9jUTUMQ+nbNEAQy1LCWbHSYx4PYnnnkfU91
	 88xu1fGw5IdkTxA0D690mhRKI9eYSuqJpeiyO8RIqtIRo5WGi3NvjC1Q0Gv8ygnBcC
	 iM3lZ29DmK23EJw5dO3SJxCcCkr10ARmajXYus0+zqh4HKuxCuF3Rb6IzJfyykma4P
	 6iVPoHUDcY0RPJYN2dN92QGr8vP/Z2oNWGc3SrmYeTA3LrYMoOEVskIsW0zL/hG68w
	 ETgJm/bPcpuyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 18/23] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-18-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-18-3bb1f54b3f35@collabora.com>
Date: Fri, 19 Jun 2026 15:53:48 +0000
Message-Id: <20260619155349.0D26E1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIEhhcmR3YXJlIEluaXRpYWxpemF0aW9uCi0tCgpjb21taXQgMmE1MGIz
NDZmY2Y3ZDE2Njc3OWUwY2IxOThkMzU3MmY1YmRkMzAwYwpBdXRob3I6IFNlYmFzdGlhbiBSZWlj
aGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNi
ZHA6IFJlLWluaXQgdGhlIFBIWSBvbiBvcmllbnRhdGlvbiBjaGFuZ2UKClRoaXMgY29tbWl0IHVw
ZGF0ZXMgdGhlIGNhYmxlIG9yaWVudGF0aW9uIGNvbmZpZ3VyYXRpb24gdG8gcmUtaW5pdGlhbGl6
ZQp0aGUgUEhZIHdoZW4gdGhlIG9yaWVudGF0aW9uIGNoYW5nZXMuIEl0IHNldHMgYSBmbGFnIHRv
IHRyaWdnZXIgdGhlCnJlLWluaXRpYWxpemF0aW9uIHRvIHByZXZlbnQgRGlzcGxheVBvcnQgZnVu
Y3Rpb25hbGl0eSBmcm9tIGJyZWFraW5nIG9uCnJldmVyc2UgY2FibGUgcGx1Z3MuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggYzIxMGFhZWIyODNh
NS4uNDAyZjNjYWZjZjBhZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC11c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC02MjIsNiArNjIyLDcgQEAgc3RhdGljIGludCBya191
ZHBoeV9vcmllbl9zd19zZXQoc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAo+ICAJCQkJIGVu
dW0gdHlwZWNfb3JpZW50YXRpb24gb3JpZW4pCj4gIHsKPiAgCXN0cnVjdCBya191ZHBoeSAqdWRw
aHkgPSB0eXBlY19zd2l0Y2hfZ2V0X2RydmRhdGEoc3cpOwo+ICsJYm9vbCBmbGlwcGVkID0gb3Jp
ZW4gPT0gVFlQRUNfT1JJRU5UQVRJT05fUkVWRVJTRTsKPiAgCj4gIAltdXRleF9sb2NrKCZ1ZHBo
eS0+bXV0ZXgpOwo+ICAKPiBAQCAtNjMzLDcgKzYzNCwxMCBAQCBzdGF0aWMgaW50IHJrX3VkcGh5
X29yaWVuX3N3X3NldChzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCj4gIAkJZ290byB1bmxv
Y2tfcmV0Owo+ICAJfQo+ICAKPiAtCXVkcGh5LT5mbGlwID0gb3JpZW4gPT0gVFlQRUNfT1JJRU5U
QVRJT05fUkVWRVJTRTsKPiArCWlmICh1ZHBoeS0+ZmxpcCAhPSBmbGlwcGVkKQo+ICsJCXVkcGh5
LT5waHlfbmVlZHNfcmVpbml0ID0gdHJ1ZTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHBy
ZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgc2V0dGluZyB1ZHBoeS0+cGh5X25lZWRzX3JlaW5p
dCA9IHRydWUKaGVyZSBhY3R1YWxseSB0cmlnZ2VyIGEgaGFyZHdhcmUgdXBkYXRlIGZvciBwdXJl
IFVTQjMgY29ubmVjdGlvbnM/CgpXaGVuIGEgZGV2aWNlIGlzIHBsdWdnZWQgaW4sIHRoZSBoYXJk
d2FyZSBsYW5lIG11eGluZyBpcyB0eXBpY2FsbHkgdXBkYXRlZAppbnNpZGUgcmtfdWRwaHlfaW5p
dCgpLCB3aGljaCBpcyBjYWxsZWQgY29uZGl0aW9uYWxseSBieSBya191ZHBoeV9wb3dlcl9vbigp
LgoKSG93ZXZlciwgbG9va2luZyBhdCB0aGUgcGh5X29wcyBzdHJ1Y3QgZm9yIFVTQjM6CgpzdGF0
aWMgY29uc3Qgc3RydWN0IHBoeV9vcHMgcmtfdWRwaHlfdXNiM19waHlfb3BzID0gewoJLmluaXQJ
CT0gcmtfdWRwaHlfdXNiM19waHlfaW5pdCwKCS5leGl0CQk9IHJrX3VkcGh5X3VzYjNfcGh5X2V4
aXQsCgkub3duZXIJCT0gVEhJU19NT0RVTEUsCn07CgpCZWNhdXNlIHJrX3VkcGh5X3VzYjNfcGh5
X29wcyBvbWl0cyB0aGUgLnBvd2VyX29uIGNhbGxiYWNrLCBhbmQgdGhlIERXQzMKY29udHJvbGxl
ciBvbmx5IGNhbGxzIC5pbml0IG9uY2UgZHVyaW5nIHByb2JlLCB0aGUgVVNCIHN1YnN5c3RlbSB3
b24ndAp0cmlnZ2VyIHRoZSBQSFkgcmUtaW5pdGlhbGl6YXRpb24gcmVxdWlyZWQgdG8gYXBwbHkg
dGhlIG9yaWVudGF0aW9uIGNoYW5nZXMuCgpXaWxsIHRoZSBwaHlfbmVlZHNfcmVpbml0IGZsYWcg
cmVtYWluIHNldCBpbmRlZmluaXRlbHksIGNhdXNpbmcgcHVyZSBVU0IzCmRldmljZXMgdG8gZmFp
bCB0byBsaW5rIGF0IFN1cGVyU3BlZWQgaWYgcGx1Z2dlZCBpbiB0aGUgcmV2ZXJzZSBvcmllbnRh
dGlvbj8KCj4gKwo+ICsJdWRwaHktPmZsaXAgPSBmbGlwcGVkOwo+ICAJcmtfdWRwaHlfc2V0X3R5
cGVjX2RlZmF1bHRfbWFwcGluZyh1ZHBoeSk7Cj4gIAlya191ZHBoeV91c2JfYnZhbGlkX2VuYWJs
ZSh1ZHBoeSwgdHJ1ZSk7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNjE5LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjYtMC0zYmIx
ZjU0YjNmMzVAY29sbGFib3JhLmNvbT9wYXJ0PTE4CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

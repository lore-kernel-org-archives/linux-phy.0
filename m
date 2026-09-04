Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E087C624D3
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3pl4wtt0KFa9wuoy17l2rWclAU6lL5UG1YAHW8B9xQ=; b=swuUouz8ynB14D
	s75oILJMCwnRHX8f32zdGlBJfupdTdTNUNOlzLxFqFk/T71VB6Idag8VVU2d7oW/OWxx/UfuZFwNC
	4b7DgM5oUlteaNX2o2DKb50YcK1K9YVm6rswvExy4yRKh0QmHaR5NVIilutw8uTurBbEjT6FaP830
	zbWVnQoWvMSKuZkbVx19VPFu+IkMC7p8d37jymItx+GGmbTd6VqLLCAIgXggmXAdesDbI9w9QcOZS
	XZ/uvg9bpweJ6Lz2q9EWFQ3yhqS2tYm+RKG5heMXQuBXdzjL0rzqVLPs2tzHJyHKBdEdUNJFK4g5j
	4jBI7gG6R4JCgaXoduFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2UCi-00000002Gi1-3T20;
	Fri, 04 Sep 2026 13:43:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2UCh-00000002Ghi-2ZGd
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:43:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3BFC742EA5;
	Fri,  4 Sep 2026 13:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7109A1F00A3E;
	Fri,  4 Sep 2026 13:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788529419;
	bh=xy9J5SyzSLbBaq2i0MqF7v9oLGW7UxvK0+0fcU9bazk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZSlKAbu3/+w2XtzlSVGDS1AZlAhLZ46LLab5B4vYpp749PrXLR+AMo/kew8EqpAVs
	 3xzs1cY1UYjYkqSBF6tU61Qtr9ipiOAv6hKLF3i6QN6eY8NCK2C3Y3IV6O/7vUNraY
	 tmnnMwlCEp3OvPyT9gowBhC2JhmnpE1xErIuoKIMQM0kBKcgfKNlsEaPRiq03NQPUX
	 s/4W5pmmy5OuYrtTB1kuJRxWSsi1sLMUDwt+VLymqfOdduHeb/5kFT+htRUkhNsRbW
	 aaO9QLJnW02xfb3tO8DFjz6h5ymTcyDrQPCyRvknGn/KRLXprmQV0KVM+7OahP41OR
	 w3kjnO2dPOX/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/19] drm/bridge: inno-hdmi: Allow the register map
 to come from a parent
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, lee@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, mfd@lists.linux.dev, linux-clk@vger.kernel.org
In-Reply-To: <20260904-jh7110-clean-send-v3-8-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132723eucas1p14cdff81f7ccdc02ec811179c5d401d69@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-8-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:43:37 +0000
Message-Id: <20260904134338.7109A1F00A3E@smtp.kernel.org>
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
IFtIaWdoXSBFYXJseSBIUEQgaW50ZXJydXB0IGNhbiBjYXVzZSBhIE5VTEwgcG9pbnRlciBkZXJl
ZmVyZW5jZSBvZiBgaGRtaS0+YnJpZGdlLmRldmAgaWYgaXQgZmlyZXMgYmVmb3JlIGBkcm1fYnJp
ZGdlX2F0dGFjaGAgY29tcGxldGVzLgotLQoKY29tbWl0IDFhMTIyOTY0M2I5ODlkZjY3NjI2ZjY0
ZjU4MGFkZDE4NmNlYmQ2ZWQKQXV0aG9yOiBNaWNoYWwgV2lsY3p5bnNraSA8bS53aWxjenluc2tp
QHNhbXN1bmcuY29tPgoKZHJtL2JyaWRnZTogaW5uby1oZG1pOiBBbGxvdyB0aGUgcmVnaXN0ZXIg
bWFwIHRvIGNvbWUgZnJvbSBhIHBhcmVudAogICAgCk9uIHNvbWUgU29DcyB0aGUgSERNSSBjb250
cm9sbGVyIGRvZXMgbm90IG93biBpdHMgcmVnaXN0ZXIgd2luZG93LiBUaGUKU3RhckZpdmUgSkg3
MTEwIGRvY3VtZW50cyBvbmUgNjQgS0IgYmxvY2ssIHUwX2hkbWl0eCwgdGhhdCBob2xkcyBib3Ro
CnRoZSBjb250cm9sbGVyIGFuZCB0aGUgUEhZLCBzbyB0aGUgcGFyZW50IGRldmljZSBtYXBzIGl0
IGFuZCBvd25zIHRoZQpyZWdtYXAgd2hpbGUgdGhlIHR3byBjaGlsZHJlbiBzaGFyZSBpdC4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW5uby1oZG1pLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL2lubm8taGRtaS5jCj4gaW5kZXggYWFiNDc0NzQwZjdmNS4uOGJkNzcx
NzYxMTgwNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lubm8taGRtaS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbm5vLWhkbWkuYwpbIC4uLiBdCj4gQEAg
LTEwOTUsOSArMTExMCwxOSBAQCBzdHJ1Y3QgaW5ub19oZG1pICppbm5vX2hkbWlfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgCWhkbWktPmRldiA9IGRldjsKPiAgCWhkbWkt
PnBsYXRfZGF0YSA9IHBsYXRfZGF0YTsKPiAgCj4gLQloZG1pLT5yZWdzID0gZGV2bV9wbGF0Zm9y
bV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwo+IC0JaWYgKElTX0VSUihoZG1pLT5yZWdzKSkK
PiAtCQlyZXR1cm4gRVJSX0NBU1QoaGRtaS0+cmVncyk7Cj4gKwkvKgo+ICsJICogT24gcGxhdGZv
cm1zIHdoZXJlIHRoZSBjb250cm9sbGVyIHNoYXJlcyBhIHJlZ2lzdGVyIHNwYWNlIHdpdGgKPiAr
CSAqIG90aGVyIGJsb2NrcywgdGhlIHBhcmVudCBvd25zIHRoZSByZWdtYXAuIEZhbGwgYmFjayB0
byBtYXBwaW5nCj4gKwkgKiBvdXIgb3duIHJlc291cmNlIHdoZXJlIGl0IGRvZXMgbm90Lgo+ICsJ
ICovCj4gKwlpZiAoZGV2LT5wYXJlbnQpCj4gKwkJaGRtaS0+cmVnbWFwID0gZGV2X2dldF9yZWdt
YXAoZGV2LT5wYXJlbnQsIE5VTEwpOwo+ICsKPiArCWlmICghaGRtaS0+cmVnbWFwKSB7Cj4gKwkJ
aGRtaS0+cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiAr
CQlpZiAoSVNfRVJSKGhkbWktPnJlZ3MpKQo+ICsJCQlyZXR1cm4gRVJSX0NBU1QoaGRtaS0+cmVn
cyk7Cj4gKwl9Cj4gIAo+ICAJaGRtaS0+cGNsayA9IGRldm1fY2xrX2dldF9lbmFibGVkKGhkbWkt
PmRldiwgInBjbGsiKTsKPiAgCWlmIChJU19FUlIoaGRtaS0+cGNsaykpIHsKCltTZXZlcml0eTog
SGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGNvdWxkIHRoaXMgY29kZSB0
cmlnZ2VyIGEgTlVMTCBwb2ludGVyCmRlcmVmZXJlbmNlIGlmIHRoZSBob3RwbHVnIGludGVycnVw
dCBmaXJlcyBlYXJseT8KCkxvb2tpbmcgYXQgdGhlIHJlc3Qgb2YgaW5ub19oZG1pX3Byb2JlKCks
IHRoZSBoYXJkd2FyZSBpbnRlcnJ1cHQgaXMgdW5tdXRlZAppbiBpbm5vX2hkbWlfaW5pdF9odygp
LCBhbmQgdGhlbiB0aGUgaGFuZGxlciBpcyByZWdpc3RlcmVkOgoKICAgIGlubm9faGRtaV9pbml0
X2h3KGhkbWkpOwogICAgLi4uCiAgICByZXQgPSBkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxKGRl
diwgaXJxLCBpbm5vX2hkbWlfaGFyZGlycSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW5ub19oZG1pX2lycSwgSVJRRl9TSEFSRUQsCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGRldl9uYW1lKGRldiksIGhkbWkpOwoKSWYgYSBjYWJsZSBpcyBhbHJlYWR5
IGNvbm5lY3RlZCBvciBwbHVnZ2VkIGluIGF0IHRoaXMgZXhhY3QgbW9tZW50LCB0aGUKaW50ZXJy
dXB0IGNhbiBmaXJlIGltbWVkaWF0ZWx5LiBUaGUgdGhyZWFkZWQgaGFuZGxlciBpbm5vX2hkbWlf
aXJxKCkgd2lsbAp0aGVuIGV4ZWN1dGU6CgogICAgZHJtX2hlbHBlcl9ocGRfaXJxX2V2ZW50KGhk
bWktPmJyaWRnZS5kZXYpOwoKSG93ZXZlciwgaGRtaS0+YnJpZGdlLmRldiBhcHBlYXJzIHRvIGJl
IE5VTEwgYXQgdGhpcyBwb2ludCwgYXMgaXQgaXMgb25seQpwb3B1bGF0ZWQgbGF0ZXIgd2hlbiB0
aGUgdXBzdHJlYW0gZGlzcGxheSBjb250cm9sbGVyIGNhbGxzCmRybV9icmlkZ2VfYXR0YWNoKCku
CgpJcyB0aGVyZSBzb21ldGhpbmcgcHJldmVudGluZyB0aGlzIHJhY2UgY29uZGl0aW9uLCBvciBz
aG91bGQgdGhlIElSUSBoYW5kbGVyCnJlZ2lzdHJhdGlvbiBiZSBkZWZlcnJlZD8KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDQt
amg3MTEwLWNsZWFuLXNlbmQtdjMtMC00ODRmOWFlNzI3MTVAc2Ftc3VuZy5jb20/cGFydD04Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

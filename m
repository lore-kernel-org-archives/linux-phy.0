Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A12C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDPf2ErAAPLP2tjwjrzROhiNmBRLbdszpO18GwU0xl8=; b=x3QXnjJCNJkpVB
	GlRsJdL3FZ0N2mm0e7zEfoqnkudPNuWu08YDVty+BCqIfGI3sr8EShvJnyhikZYPshvNg53RINKKl
	ph07Lcnto/Svd7sQtnitYVDTIphqjpuoMoAcN0kzsegd/55W3aAjv90K5VKJaHiHlBGRgi9iZoFFN
	epaKYSHfFeP5sALMH4FSWii1YPPNE7Cj6Sr65dgpk8J36nEQpia3eZsALjF3Gur5uXXFUs239w7s3
	hYdQvErcTNJ8Ty3cFbZjLK+Q3iM+Q8D1Oqjn+9A+KwTfvYseXMxxv2KL1Suny6kCLz/SglOATz6/B
	xUoZvmJfaDPyISfg45tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIlU-00000005qC5-0NOY;
	Fri, 10 Jul 2026 21:28:08 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIlS-00000005qBK-1GuG
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:28:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BD955600C3;
	Fri, 10 Jul 2026 21:28:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F40C11F000E9;
	Fri, 10 Jul 2026 21:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718885;
	bh=oCn8tsmUndVASYmqSorJAdC9hc49PfBmBl/j9ynNRnw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a7GxQVFpsy9hyA5HVwaAHrzMO1H1pGLeHEmv/VY7JU2216hTPnsUIeh+TK4RMYHdJ
	 9EhnS9h50GSITibPDEQ5HV/HI2TNj5NFvkBi457wVe0P2dm/F4FcIvPSyPDviwwgSo
	 gU+iWQ/AP7q5swE6RPQENmu1EIebh2pg/YaLDTDisBcfCjv9ZQoKsyvu+Q3dvJRLXp
	 xNqmOEFppIjUvcRfqcfkz5fLa4AUSGvMBPJNJ6FdjJMCxwvWiPgAqOCrZ84K8PpICH
	 zGyOtMI3WzSyXbqzqo0GIpwTG2POJaqMTjce0tayAkjH3myeVFMt97mbu7emA1gDxj
	 rrU9ad2G+bi5A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 32/36] phy: rockchip: usbdp: Drop -EPROBE_DEFER hack
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-32-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-32-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:28:04 +0000
Message-Id: <20260710212804.F40C11F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFJlbW92YWwgb2YgLUVQ
Uk9CRV9ERUZFUiBmYWxsYmFjayBjYXVzZXMgcGVybWFuZW50IGluaXRpYWxpemF0aW9uIGZhaWx1
cmVzIGR1ZSB0byBtaXNzaW5nIHByb2JlLXRpbWUgcmVzZXQKLS0KCi0tLSBQYXRjaCBbMzJdOiBb
UEFUQ0ggdjEyIDMyLzM2XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogRHJvcCAtRVBST0JFX0RFRkVS
IGhhY2sgLS0tCmNvbW1pdCA5OGVkMDVjZjQzNmM0NjY5N2QwN2QxNmZjYzA2MGVkYTYzNDM5YmY3
CkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5j
b20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogRHJvcCAtRVBST0JFX0RFRkVSIGhhY2sKClRoaXMg
Y29tbWl0IHJlbW92ZXMgdGhlIC1FUFJPQkVfREVGRVIgZmFsbGJhY2sgZm9yIExDUExMIGxvY2sg
dGltZW91dHMgaW4KcmtfdWRwaHlfc3RhdHVzX2NoZWNrKCkuIEl0IHN0YXRlcyB0aGF0IGEgcmVz
ZXQgZHVyaW5nIHRoZSBwcm9iZSByb3V0aW5lCm5vdyBhdm9pZHMgdGhlIHByb2JsZW0uCgo+ICAg
ICBUaGUgaGFjayB0byByZXR1cm4gLUVQUk9CRV9ERUZFUiB3aGVuIHRoZSBsY3BsbCBsb2NrIHRp
bWVvdXRzIGlzIG5vCj4gICAgIGxvbmdlciBuZWVkZWQuIFRoZSBkcml2ZXIgbm93IGRvZXMgYSBy
ZXNldCBkdXJpbmcgaXRzIHByb2JlIHJvdXRpbmUKPiAgICAgbWFya2luZyBldmVyeXRoaW5nIGFz
IG9mZiBhbmQgbGF0ZXIgb24gZG9lcyBhIHJlLWluaXQsIHdoaWNoIGF2b2lkcwo+ICAgICB0aGUg
cHJvYmxlbS4KCltTZXZlcml0eTogSGlnaF0KSXMgdGhpcyBkZXNjcmlwdGlvbiBhY2N1cmF0ZT8g
TG9va2luZyBhdCBya191ZHBoeV9wcm9iZSgpLCBpdCBhcHBlYXJzIHRoZQpwcm9iZS10aW1lIHJl
c2V0IHdhcyByZW1vdmVkIGluIGEgcHJpb3IgcGF0Y2gsIG1lYW5pbmcgdGhlIGRyaXZlciBkb2Vz
IG5vdAphY3R1YWxseSBwZXJmb3JtIGEgcmVzZXQgZHVyaW5nIHByb2JlOgoKZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfcHJvYmUoKSB7CiAgICAuLi4K
CXVkcGh5LT5kZXYgPSBkZXY7CglyZXQgPSBya191ZHBoeV9wYXJzZV9kdCh1ZHBoeSk7CglpZiAo
cmV0KQoJCXJldHVybiByZXQ7CgoJbXV0ZXhfaW5pdCgmdWRwaHktPm11dGV4KTsKCXBsYXRmb3Jt
X3NldF9kcnZkYXRhKHBkZXYsIHVkcGh5KTsKICAgIC4uLgp9Cgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggMDMzM2U4NDZjZTM0My4uY2YxNzMyNzZi
ZmMwMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4g
QEAgLTc1MCwxNyArNzUwLDcgQEAgc3RhdGljIGludCBya191ZHBoeV9zdGF0dXNfY2hlY2soc3Ry
dWN0IHJrX3VkcGh5ICp1ZHBoeSkKPiAgCQkJCQkgICAgICAgKHZhbCAmIENNTl9BTkFfTENQTExf
TE9DS19ET05FKSwgMjAwLCAxMDAwMDApOwo+ICAJCWlmIChyZXQpIHsKPiAgCQkJZGV2X2Vycih1
ZHBoeS0+ZGV2LCAiY21uIGFuYSBsY3BsbCBsb2NrIHRpbWVvdXRcbiIpOwo+IC0JCQkvKgo+IC0J
CQkgKiBJZiBlYXJsaWVyIHNvZnR3YXJlIChVLUJvb3QpIGVuYWJsZWQgVVNCIG9uY2UgYWxyZWFk
eQo+IC0JCQkgKiB0aGUgUExMIG1heSBoYXZlIHByb2JsZW1zIGxvY2tpbmcgb24gdGhlIGZpcnN0
IHRyeS4KPiAtCQkJICogSXQgd2lsbCBiZSBzdWNjZXNzZnVsIG9uIHRoZSBzZWNvbmQgdHJ5LCBz
byBmb3IgdGhlCj4gLQkJCSAqIHRpbWUgYmVpbmcgYSAtRVBST0JFX0RFRkVSIHdpbGwgc29sdmUg
dGhlIGlzc3VlLgo+IC0JCQkgKgo+IC0JCQkgKiBUaGlzIHJlcXVpcmVzIGZ1cnRoZXIgaW52ZXN0
aWdhdGlvbiB0byB1bmRlcnN0YW5kIHRoZQo+IC0JCQkgKiByb290IGNhdXNlLCBlc3BlY2lhbGx5
IGNvbnNpZGVyaW5nIHRoYXQgdGhlIGRyaXZlciBpcwo+IC0JCQkgKiBhc3NlcnRpbmcgYWxsIHJl
c2V0IGxpbmVzIGF0IHByb2JlIHRpbWUuCj4gLQkJCSAqLwo+IC0JCQlyZXR1cm4gLUVQUk9CRV9E
RUZFUjsKPiArCQkJcmV0dXJuIHJldDsKPiAgCQl9CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgcmV0
dXJuaW5nIHRoZSBhY3R1YWwgZXJyb3IgY29kZSBpbnN0ZWFkIG9mIC1FUFJPQkVfREVGRVIgY2F1
c2UgYSBwZXJtYW5lbnQKaW5pdGlhbGl6YXRpb24gZmFpbHVyZSBoZXJlPwoKU2luY2UgdGhlIHBy
b2JlIHJvdXRpbmUgbGFja3MgdGhlIGhhcmR3YXJlIHJlc2V0IGFzc2VydGlvbiwgaWYgdGhlIGJv
b3Rsb2FkZXIKbGVhdmVzIHRoZSBEV0MzIGNvbnRyb2xsZXIgcnVubmluZywgaXQgY2FuIGNvcnJ1
cHQgdGhlIFBIWSBzdGF0ZSB3aGVuIHRoZSBQSFkKaXMgbGF0ZXIgcmVzZXQuCgpJZiBhbm90aGVy
IGNvbnN1bWVyIGxpa2UgRGlzcGxheVBvcnQgcHJvYmVzIGZpcnN0LCBvciBEV0MzIGlzIG5vdCBs
b2FkZWQsCnBoeV9wb3dlcl9vbigpIHdpbGwgYXNzZXJ0IHRoZSBQSFkgcmVzZXQuCgpCZWNhdXNl
IERXQzMgd291bGRuJ3QgaGF2ZSByZWdpc3RlcmVkIGl0cyBwcmUtcmVzZXQgbm90aWZpZXIgdG8g
aXNvbGF0ZSB0aGUKUElQRSBpbnRlcmZhY2UsIHRoZSBQSFkgTENQTEwgd2lsbCBmYWlsIHRvIGxv
Y2suIFdpdGhvdXQgdGhlIC1FUFJPQkVfREVGRVIKZmFsbGJhY2ssIHRoaXMgbG9jayB0aW1lb3V0
IGJlY29tZXMgYSBmYXRhbCAtRVRJTUVET1VUIGVycm9yIGFuZCBwZXJtYW5lbnRseQpicmVha3Mg
dGhlIGRyaXZlci4KCj4gIAo+ICAJCWlmICghdWRwaHktPmZsaXApIHsKCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTAtcm9ja2No
aXAtdXNiZHAtY2xlYW51cC12MTItMC04YjQxYTlhOWJlZjBAY29sbGFib3JhLmNvbT9wYXJ0PTMy
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

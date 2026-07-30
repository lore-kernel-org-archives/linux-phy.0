Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11D43C55160
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 12:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j72OpZ6CpDdDAnoPXsozOQXLusvwdJqlJYN1PiC7Y2w=; b=mHshpp2svP+Zcv
	8dXZvP09WSfnsmI/K6iJjfdcWcwCo4VeRsEtVsVdIrvCneWOKjOJCmBJr3HVEDt5Eo5QTUR7o5jMy
	lO2+wAWxp/CMeZhYXKhrIG/fytC4IQZd1zwzQyQFVkBRJp2+z5dl9GJVYl8uQmRsMz50w2c4e/Cg2
	PmlHuxf1ed7CFhcPzehqOjm4souIfV//Ux0RTJM4CKGpxW/wVfphHx1jxbD0mHt3idVCdA9GCGQCV
	lI1yP3VcvBwB4FXI/3g0aQO8tsQuM3lxqk7aN4i7sromCA0hCZemd2ZfVn/HV6JaCaDaoR/Ztg3gc
	gmcW920UjfLGd2J0C3EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpPca-0000000ARDY-22VF;
	Thu, 30 Jul 2026 12:12:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpPcZ-0000000ARDD-0g3c
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 12:12:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B2C4240950;
	Thu, 30 Jul 2026 12:12:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 399761F000E9;
	Thu, 30 Jul 2026 12:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785413538;
	bh=wTUjmaE2w/SKECfbH4HneFELyDhu6TtTVC7H7s/hvzs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jx2DIk+lPD7Ad+NRl8ZQ/qad2awNajx4yILNmGwDUerN+aL7lfkbzeXktwIYH/OVp
	 aRZePM8nxh3HRphwwHDS1OuMVnnxKg/AXLdkIFTouWz9W9Xiwi04/mZCFXquDHogNE
	 9OaI4+ib8zmUeiIx+/D8d0bI4nFEGIAvZXj0GW3+S4dkDK/fzd8MSt31d9dKUA/w6C
	 hzawq0N68EkusJyjuVRm4b/OA5ty3V/szmXeGywtjOslIo9jyv/NqfXTW99rAPVczx
	 iqByXhZfDpORJGoN+wSNbOyp0MLFL2hnIta22EUsxmpDFbG03qlFDweUwAB7hvA0Hj
	 WRPHxNuKSbJOA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, media-ci@linuxtv.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260730-x1e-csi2-phy-v15-1-f284131de1fa@linaro.org>
References: <20260730-x1e-csi2-phy-v15-0-f284131de1fa@linaro.org>
 <20260730-x1e-csi2-phy-v15-1-f284131de1fa@linaro.org>
Date: Thu, 30 Jul 2026 12:12:17 +0000
Message-Id: <20260730121218.399761F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHNjaGVtYSBl
eHBsaWNpdGx5IHBlcm1pdHMgdGhlIENQSFkgYnVzLXR5cGUsIGNvbnRyYWRpY3RpbmcgdGhlIGNv
bW1pdCBtZXNzYWdlLgotIFtNZWRpdW1dIFRoZSBgZGF0YS1sYW5lc2AgcHJvcGVydHkgbGFja3Mg
YW4gYGl0ZW1zOiBtYXhpbXVtOiAzYCBjb25zdHJhaW50IHRvIHJlc3RyaWN0IHBoeXNpY2FsIGxh
bmUgaW5kZXhlcy4KLSBbTWVkaXVtXSBUaGUgYGNsb2NrLWxhbmVzYCBwcm9wZXJ0eSBpcyBpbXBs
aWNpdGx5IGFsbG93ZWQgaW4gdGhlIHNjaGVtYSBkZXNwaXRlIGJlaW5nIHVuc3VwcG9ydGVkIGJ5
IGhhcmR3YXJlLgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIHYxNSAxLzJdIGR0LWJpbmRpbmdz
OiBwaHk6IHFjb206IEFkZCBDU0kyIEMtUEhZL0RQSFkgc2NoZW1hIC0tLQpjb21taXQgMmZmNmYw
OTJjZDA0OWI3MjNkN2ExNzVkODAxM2U1MDg5N2I2MmI3OQpBdXRob3I6IEJyeWFuIE8nRG9ub2do
dWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKZHQtYmluZGluZ3M6IHBoeTogcWNvbTog
QWRkIENTSTIgQy1QSFkvRFBIWSBzY2hlbWEKCkFkZCBhIGJhc2Ugc2NoZW1hIGZvciB0aGUgTUlQ
SSBDU0kyIFBIWXMgb24gUXVhbGNvbW0gU29Dcy4gVGhpcyBQSFkKc3VwcG9ydHMgYm90aCBEUEhZ
IGFuZCBDUEhZIG9wZXJhdGlvbi4gQSBzcGVjaWFsIG1vZGUgb2YgRFBIWSBvcGVyYXRpb24gLQpj
YWxsZWQgdmFyaW91c2x5IHNwbGl0LW1vZGUgb3IgY29tYm8tbW9kZSBhbHNvIGFsbG93cyBmb3Ig
dHdvIHNlbnNvcnMgdG8gYmUKY29ubmVjdGVkIHRvIG9uZSBQSFkuCgo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtY3NpMi1w
aHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4
MDEwMC1jc2kyLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAw
MDAwMDAwLi44YWE2YWQyNzIzOTg4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55YW1sCj4g
QEAgLTAsMCArMSwyMDIgQEAKWyAuLi4gXQo+ICsgICAgICAgIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+
ICsgICAgICAgICAgIl5lbmRwb2ludChAWzAxXSk/JCI6Cj4gKyAgICAgICAgICAgICRyZWY6IC9z
Y2hlbWFzL21lZGlhL3ZpZGVvLWludGVyZmFjZXMueWFtbCMKPiArICAgICAgICAgICAgdW5ldmFs
dWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ICsgICAgICAgICAgICBwcm9wZXJ0aWVzOgoKW1NldmVy
aXR5OiBNZWRpdW1dClNpbmNlIHRoaXMgZW5kcG9pbnQgaW5jbHVkZXMgYSByZWZlcmVuY2UgdG8g
dmlkZW8taW50ZXJmYWNlcy55YW1sLCB0aGUKY2xvY2stbGFuZXMgcHJvcGVydHkgaXMgaW1wbGlj
aXRseSBldmFsdWF0ZWQgYW5kIHBlcm1pdHRlZC4gVGhlIGRlc2NyaXB0aW9uCmJlbG93IG5vdGVz
ICJUaGUgZGVkaWNhdGVkIGNsb2NrIGxhbmUgaXMgbm90IGRlc2NyaWJlZCIsIHNvIHNob3VsZApj
bG9jay1sYW5lczogZmFsc2UgYmUgYWRkZWQgaGVyZSB0byBleHBsaWNpdGx5IGZvcmJpZCBpdD8K
Cj4gKyAgICAgICAgICAgICAgYnVzLXR5cGU6Cj4gKyAgICAgICAgICAgICAgICBlbnVtOgo+ICsg
ICAgICAgICAgICAgICAgICAtIDEgIyBNRURJQV9CVVNfVFlQRV9DU0kyX0NQSFkKPiArICAgICAg
ICAgICAgICAgICAgLSA0ICMgTUVESUFfQlVTX1RZUEVfQ1NJMl9EUEhZCgpbU2V2ZXJpdHk6IE1l
ZGl1bV0KVGhlIGNvbW1pdCBtZXNzYWdlIGV4cGxpY2l0bHkgc3RhdGVzICJDUEhZIGlzIGxlZnQg
dG8gZnV0dXJlIHdvcmsiLCBidXQgdGhlCnNjaGVtYSBwZXJtaXRzIHRoZSBDUEhZIGJ1cy10eXBl
IGhlcmUuIAoKRG9lcyB0aGlzIGFsbG93IGRldmljZSB0cmVlcyB3aXRoIGluY29tcGxldGUgb3Ig
aW52YWxpZCBDUEhZIGNvbmZpZ3VyYXRpb25zCnRvIHNpbGVudGx5IHBhc3Mgc2NoZW1hIHZhbGlk
YXRpb24/Cgo+ICsKPiArICAgICAgICAgICAgICBkYXRhLWxhbmVzOgo+ICsgICAgICAgICAgICAg
ICAgbWluSXRlbXM6IDEKPiArICAgICAgICAgICAgICAgIG1heEl0ZW1zOiA0Cj4gKyAgICAgICAg
ICAgICAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgICAgICAgICAgICAgQW4gYXJyYXkgb2YgcGh5
c2ljYWwgZGF0YSBsYW5lIGluZGV4ZXMsIDAtMywgZm9sbG93aW5nIHRoZQoKW1NldmVyaXR5OiBN
ZWRpdW1dClNob3VsZCB0aGVyZSBiZSBhbiBleHBsaWNpdCBpdGVtcyBjb25zdHJhaW50IChlLmcu
LCBpdGVtczogeyBtYXhpbXVtOiAzIH0pCmFkZGVkIHRvIGVuZm9yY2UgdGhlIDAtMyByYW5nZSBm
b3IgcGh5c2ljYWwgbGFuZSBpbmRleGVzPwoKV2l0aG91dCBpdCwgdGhlIGFycmF5IHZhbHVlcyBm
YWxsIGJhY2sgdG8gdGhlIC9zY2hlbWFzL21lZGlhL3ZpZGVvLWludGVyZmFjZXMueWFtbCMKZGVm
YXVsdCBjb25zdHJhaW50LCB3aGljaCBhbGxvd3MgcGh5c2ljYWwgbGFuZSB2YWx1ZXMgdXAgdG8g
OC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA3MzAteDFlLWNzaTItcGh5LXYxNS0wLWYyODQxMzFkZTFmYUBsaW5hcm8ub3JnP3Bh
cnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==

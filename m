Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45718CD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 18:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAUgX9NoEcawQXILBLgvvSNdAkatWFiGioOp18l+Q94=; b=In6+ZHbhsSr/n+
	8HZWaGnFrmkkmszMcZ3GPjg0QErL9pYcNIooHOw+dAEcIBH026rqmke/INqzD9JYdY5J/zUAD2VeY
	IdRwTdzNybVph2F1zDLQRSdjxM/TOjAyElSbH7RUH94AvHBoDeWPx/1z3PVcTdY24j7yiqWYBBcyY
	RWvqfg3iTWaxefIJPfaw02eBXkqRlo9PfhorkqjxwuGBWB/RKdsTE+5c7saV9bDtq8qrq01qScO4G
	LdbQPhDIp98V1TzGjPMEuwhbr/+eHJtxVPz5dq4IL2qDHJVsc3ZIOYtRDA5rk/xGs0zJxspFn0orJ
	W/r0i75OV6pw9VL63YQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlqV-00000005VvX-025Z;
	Wed, 20 May 2026 18:40:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlqQ-00000005VsS-06n9
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 18:40:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7DCCF43A6D;
	Wed, 20 May 2026 18:40:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E4341F00893;
	Wed, 20 May 2026 18:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779302437;
	bh=MNEfECMSOoRp1f+W4XmoT0z+dbCq3xbrDLEuA9Ju9bA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l0FGiKTJSJKrj1ig2bPUeJpLc1NAKg90yX20bCTWY2i9LECOxJ/g1IpOacU2ec3MZ
	 rDWTsDXh2K22w0PD/xn4sgTHY4No+sr3cloRCMUEYl2/JaR8gkbrybYpDlraNvZ1q9
	 ZBNmvyiWE27ax+6mRFHaCWImhdJZGdONyNyt14OlNvrOUsZJzplOwS2QJJvkvMbVRI
	 HspVzaUN9fLPkkHY7PQve0Tld/N6GiOnuZkcG7cEHoavTqF4kyxQ1+uyLVpBgVL64b
	 Dad201JaqBrqQTKiNZFx9BYuMxNN1kXICqooTo3VLYaEug/Ieu99bO/YwK3MCcyXxZ
	 pf1jNDlOz6/0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/6] phy: realtek: usb2: introduce read and write
 functions to driver data
To: "Rustam Adilov" <adilov@disroot.org>
Cc: vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260520175728.720877-3-adilov@disroot.org>
References: <20260520175728.720877-3-adilov@disroot.org>
Date: Wed, 20 May 2026 18:40:35 +0000
Message-Id: <20260520184036.4E4341F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_114040_014125_E351675E 
X-CRM114-Status: GOOD (  13.78  )
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgcmV0dXJuIHZhbHVlcyBvZiBgb2ZfaW9tYXAoKWAgYXJlIG5vdCBjaGVja2Vk
LCB3aGljaCBjYW4gbGVhZCB0byBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4KLSBbSGlnaF0g
TU1JTyByZWdpb25zIG1hcHBlZCB3aXRoIGBvZl9pb21hcCgpYCBhcmUgbmV2ZXIgdW5tYXBwZWQs
IGFuZCBhcmUgcmVkdW5kYW50bHkgbWFwcGVkIGluIGEgbG9vcC4KLSBbSGlnaF0gSW5jb3JyZWN0
IHBvaW50ZXIgYXJpdGhtZXRpYyBvbiBhIGB2b2lkIF9faW9tZW0gKmAgbGVhZHMgdG8gdW5hbGln
bmVkIG1lbW9yeSBhY2Nlc3NlcyBmb3IgbXVsdGktUEhZIGNvbmZpZ3VyYXRpb25zLgotLQoKY29t
bWl0IGNjMGIxM2YzNmU0NGM3ZmI3ZjQ1YWU5MGNkZmEyZjFjMTBhNTA5OTMKQXV0aG9yOiBSdXN0
YW0gQWRpbG92IDxhZGlsb3ZAZGlzcm9vdC5vcmc+CgpwaHk6IHJlYWx0ZWs6IHVzYjI6IGludHJv
ZHVjZSByZWFkIGFuZCB3cml0ZSBmdW5jdGlvbnMgdG8gZHJpdmVyIGRhdGEKClRoaXMgY29tbWl0
IGludHJvZHVjZXMgcmVhZCBhbmQgd3JpdGUgZnVuY3Rpb24gcG9pbnRlcnMgdG8gdGhlIGRyaXZl
ciBkYXRhCnRvIGhhbmRsZSBSVEw5NjA3Qywgd2hpY2ggaGFzIGEgbGl0dGxlIGVuZGlhbiBVU0Ig
aG9zdCBjb250cm9sbGVyIGJ1dCBhIGJpZwplbmRpYW4gdnN0YXR1cyByZWdpc3Rlci4gSXQgYWxz
byBwcm92aWRlcyBkZWZhdWx0IGFjY2Vzc29ycyBmb3IgZXhpc3RpbmcgU29Dcy4KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMgYi9kcml2ZXJzL3BoeS9y
ZWFsdGVrL3BoeS1ydGstdXNiMi5jCj4gaW5kZXggYmQ5ZWU4OTViOWY5MC4uYTllMjlkMmY3ZTZm
ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jCj4gKysr
IGIvZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYwoKWyAuLi4gXQoKPiBAQCAtOTg1
LDYgKzEwMDEsOCBAQCBzdGF0aWMgaW50IHBhcnNlX3BoeV9kYXRhKHN0cnVjdCBydGtfcGh5ICpy
dGtfcGh5KQo+ICAJCXBoeV9wYXJhbWV0ZXItPnBoeV9yZWcudnN0YXR1c19vZmZzZXQgPSBwaHlf
Y2ZnLT52c3RhdHVzX29mZnNldDsKPiAgCQlwaHlfcGFyYW1ldGVyLT5waHlfcmVnLnZzdGF0dXNf
YnVzeSA9IHBoeV9jZmctPnZzdGF0dXNfYnVzeTsKPiAgCQlwaHlfcGFyYW1ldGVyLT5waHlfcmVn
Lm5ld19yZWdfcmVxID0gcGh5X2NmZy0+bmV3X3JlZ19yZXE7CgpbU2V2ZXJpdHk6IEhpZ2hdClRo
aXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgbG9va2luZyBhdCB0
aGUgZWFybGllciBsaW5lcyBpbgp0aGlzIGxvb3A6CgogICAgcGh5X3BhcmFtZXRlci0+cGh5X3Jl
Zy5yZWdfd3JhcF92c3RhdHVzID0gb2ZfaW9tYXAobnAsIDApOwogICAgcGh5X3BhcmFtZXRlci0+
cGh5X3JlZy5yZWdfZ3VzYjJwaHlhY2MwID0gb2ZfaW9tYXAobnAsIDEpICsgaW5kZXg7CgpDb3Vs
ZCB3ZSBhZGQgYSBjaGVjayB0byB2ZXJpZnkgaWYgb2ZfaW9tYXAoKSByZXR1cm5zIE5VTEw/IERl
cmVmZXJlbmNpbmcgYQpOVUxMIHBvaW50ZXIgZHVyaW5nIHN1YnNlcXVlbnQgSS9PIG9wZXJhdGlv
bnMgd2lsbCBjYXVzZSBhIGtlcm5lbCBwYW5pYwpkdXJpbmcgZGV2aWNlIHByb2JlLgoKW1NldmVy
aXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlzIGNv
ZGUgY2F1c2UgYSByZXNvdXJjZSBsZWFrPwoKVGhlIG9mX2lvbWFwKCkgZnVuY3Rpb24gaXMgY2Fs
bGVkIGluc2lkZSBhIGZvciBsb29wIHRoYXQgaXRlcmF0ZXMKcnRrX3BoeS0+bnVtX3BoeSB0aW1l
cy4gRm9yIGNvbmZpZ3VyYXRpb25zIHdpdGggbXVsdGlwbGUgUEhZcyAobGlrZQpydGQxMzk1X3Bo
eV9jZmdfMnBvcnQpLCB0aGlzIG1hcHMgdGhlIGV4YWN0IHNhbWUgZGV2aWNlIHRyZWUgcmVzb3Vy
Y2VzCm11bHRpcGxlIHRpbWVzLgoKVGhlcmUgYXBwZWFyIHRvIGJlIG5vIGNvcnJlc3BvbmRpbmcg
aW91bm1hcCgpIGNhbGxzIGluIHRoZSBkcml2ZXIncyBlcnJvcgpoYW5kbGluZyBwYXRocyBvciB0
aGUgcmVtb3ZlIGZ1bmN0aW9uLCB3aGljaCBjb3VsZCBsZWFkIHRvIGEgcGVybWFuZW50CnZtYWxs
b2Mgc3BhY2UgcmVzb3VyY2UgbGVhayB1cG9uIGRyaXZlciB1bmJpbmQgb3IgcHJvYmUgZmFpbHVy
ZS4KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGNv
dWxkIHRoaXMgcG9pbnRlciBhcml0aG1ldGljIGxlYWQgdG8KdW5hbGlnbmVkIG1lbW9yeSBhY2Nl
c3Nlcz8KCiAgICBwaHlfcGFyYW1ldGVyLT5waHlfcmVnLnJlZ19ndXNiMnBoeWFjYzAgPSBvZl9p
b21hcChucCwgMSkgKyBpbmRleDsKClNpbmNlIG9mX2lvbWFwKCkgcmV0dXJucyBhIHZvaWQgX19p
b21lbSAqLCBwb2ludGVyIGFyaXRobWV0aWMgaXMgcGVyZm9ybWVkCmluIHNpbmdsZSBieXRlcy4g
Rm9yIG11bHRpLVBIWSBjb25maWd1cmF0aW9ucyB3aGVyZSBpbmRleCBpcyAxLCB0aGlzCmluY3Jl
bWVudHMgdGhlIGJhc2UgYWRkcmVzcyBieSBleGFjdGx5IDEgYnl0ZSwgcmVzdWx0aW5nIGluIGFu
IHVuYWxpZ25lZAozMi1iaXQgb2Zmc2V0IHRoYXQgY291bGQgY2F1c2UgYW4gYWxpZ25tZW50IGZh
dWx0IGR1cmluZyB3cml0ZWwoKS4KCj4gKwkJcGh5X3BhcmFtZXRlci0+cGh5X3JlZy5yZWFkID0g
cGh5X2NmZy0+cmVhZDsKPiArCQlwaHlfcGFyYW1ldGVyLT5waHlfcmVnLndyaXRlID0gcGh5X2Nm
Zy0+d3JpdGU7Cj4gIAo+ICAJCWlmIChvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAsICJyZWFsdGVr
LGludmVyc2UtaHN0eC1zeW5jLWNsb2NrIikpCj4gIAkJCXBoeV9wYXJhbWV0ZXItPmludmVyc2Vf
aHN0eF9zeW5jX2Nsb2NrID0gdHJ1ZTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MjAxNzU3MjguNzIwODc3LTEtYWRpbG92QGRp
c3Jvb3Qub3JnP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==

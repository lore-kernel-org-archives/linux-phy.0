Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCE4EC5CFCF
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 01:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmQHuZsbU7HKrkz8t9RK4ie27oY+2G5O5EiRHIm9Ebc=; b=EYoP/9OtaXvGNH
	tjgWwQjPcaWIBkw56GXXqUtPFYHRF8b5G5/KcdTiRL6PotoQAnFk4Zlj8tDIGkyF0VJO/QVPuE/KX
	yGRm6kVmmwLTbYrDYe1i460OVh8rrohg6k7EctdxvT1t8/5UTjrbHoXqn2VZ9+Ei5a16/uehc4c/r
	t3pN6/FJoq/aaUeGCYdJgwfWQszXAEnfvQxceWgsV/iq29RukqWPfDRToD5NA5EfiepbaQdoma5A9
	6/qPx3LkfXZc0ai9xetjEH6i5Dz65EeChsGjJkytBu/kRfeUOnIkHHMhFXRc7KuOW59KbdNuUphMu
	H3SQl4s71ADitaGp6f2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxVA-0000000FBmW-1ZXy;
	Wed, 12 Aug 2026 01:11:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxV8-0000000FBm2-1v3s
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 01:11:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 588F160A7E;
	Wed, 12 Aug 2026 01:11:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A000E1F000E9;
	Wed, 12 Aug 2026 01:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786497085;
	bh=7sUWgLc6nw7NtKzSkB4pLeGDpjmBan9ynk/ha9Oy5Pk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NXchdTYfHt+srmRpC8esMdKgDfKNnJCEK3hXY0VyP9Tzp/bWeUuOfSB/6xJrGCaj/
	 Xu1ncE2M2qlisgQCTPP3ewNrCRdoGxjwDCMGwsaFh8ulxg2S2GTL1KGuQoQJ+umyMG
	 +g6sV+G6XVTVZSLtFULfRn5WKpt0bTQsjoDgo9o5Xf9qn4eRTtGBdK8+GwQzDNKLJh
	 cZt8veDkm9KGOLkf+54+xKk/1GiptHRlan/v2Cq98BGntlzR1ryJ3cs6Kl2qmHrOR4
	 kpvrh8e+xL2Yzsb8M08PzzVLnTVBJsdGpQlq9QccDCiAiJZLx807fnrf/UuERO7E12
	 aeKIfBQEdNKuQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/8] usb: dwc3: dwc3-generic-plat: Add ST STM32MP2 DWC3
 xHCI USB controller glue
To: "Marek Vasut" <marex@nabladev.com>
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260812010157.1772849-7-marex@nabladev.com>
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-7-marex@nabladev.com>
Date: Wed, 12 Aug 2026 01:11:24 +0000
Message-Id: <20260812011124.A000E1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBgI2luY2x1
ZGUgPGxpbnV4L2JpdGZpZWxkLmg+YCBmb3IgdGhlIGBGSUVMRF9QUkVQYCBtYWNyby4KLS0KCi0t
LSBQYXRjaCBbNl06IFtQQVRDSCA2LzhdIHVzYjogZHdjMzogZHdjMy1nZW5lcmljLXBsYXQ6IEFk
ZCBTVCBTVE0zMk1QMiBEV0MzIHhIQ0kgVVNCIGNvbnRyb2xsZXIgZ2x1ZSAtLS0KY29tbWl0IGI3
YjAxOGUwN2UwM2U5ZWNhMDQ5MjU0NzQ3YzkxMjM1MjQ2ZmZlZjgKQXV0aG9yOiBNYXJlayBWYXN1
dCA8bWFyZXhAbmFibGFkZXYuY29tPgoKdXNiOiBkd2MzOiBkd2MzLWdlbmVyaWMtcGxhdDogQWRk
IFNUIFNUTTMyTVAyIERXQzMgeEhDSSBVU0IgY29udHJvbGxlciBnbHVlCgpUaGlzIGNvbW1pdCBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBTVCBTVE0zMk1QMiBEV0MzIFVTQiBjb250cm9sbGVyIGdsdWUg
bG9naWMKdG8gdGhlIGdlbmVyaWMgRFdDMyBwbGF0Zm9ybSBkcml2ZXIuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtZ2VuZXJpYy1wbGF0LmMgYi9kcml2ZXJzL3VzYi9kd2Mz
L2R3YzMtZ2VuZXJpYy1wbGF0LmMKPiBpbmRleCBjYTY5YWMwZWIwN2NlLi4wOTQ2ZWQ2MTY0N2I2
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1nZW5lcmljLXBsYXQuYwo+ICsr
KyBiL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1nZW5lcmljLXBsYXQuYwpbIC4uLiBdCj4gQEAgLTg1
LDYgKzkxLDM4IEBAIHN0YXRpYyBpbnQgZHdjM19zcGFjZW1pdF9rMV9pbml0KHN0cnVjdCBkd2Mz
X2dlbmVyaWMgKmR3YzNnKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgZHdj
M19zdG0zMm1wMjVfaW5pdChzdHJ1Y3QgZHdjM19nZW5lcmljICpkd2MzZykKPiArewpbIC4uLiBd
Cj4gKwlyZXR1cm4gcmVnbWFwX3VwZGF0ZV9iaXRzKHJlZ21hcCwgZHJjciwKPiArCQkJCSAgU1RN
MzJNUDJfVVNCM0RSQ1JfSE9TVF9QT1JUX1BPV0VSX0NPTlRST0xfUFJFU0VOVCB8Cj4gKwkJCQkg
IFNUTTMyTVAyX1VTQjNEUkNSX09WUkNVUl9QT0xBUklUWSB8Cj4gKwkJCQkgIFNUTTMyTVAyX1VT
QjNEUkNSX1ZCVVNFTl9QT0xBUklUWSB8Cj4gKwkJCQkgIFNUTTMyTVAyX1VTQjNEUkNSX1VTQjJP
TkxZRCB8Cj4gKwkJCQkgIFNUTTMyTVAyX1VTQjNEUkNSX1VTQjJPTkxZSCwKPiArCQkJCSAgRklF
TERfUFJFUChTVE0zMk1QMl9VU0IzRFJDUl9IT1NUX1BPUlRfUE9XRVJfQ09OVFJPTF9QUkVTRU5U
LAo+ICsJCQkJCSAgICAgcHJ0X3B3cl9jdHJsKSB8CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlz
IGZpbGUgbmVlZCB0byBpbmNsdWRlIGxpbnV4L2JpdGZpZWxkLmg/CgpUaGUgRklFTERfUFJFUCBt
YWNybyBpcyB1c2VkIGhlcmUgdG8gcHJlcGFyZSB0aGUgYml0ZmllbGRzLCBidXQgdGhlIGhlYWRl
cgpkZWZpbmluZyBpdCBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgaW5jbHVkZWQuIElmIHRoZSBoZWFk
ZXIgaXNuJ3QgcHVsbGVkIGluCnRyYW5zaXRpdmVseSwgd2lsbCB0aGlzIHJlc3VsdCBpbiBhIGJ1
aWxkIGZhaWx1cmU/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYwODEyMDEwMTU3LjE3NzI4NDktMS1tYXJleEBuYWJsYWRldi5jb20/
cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK

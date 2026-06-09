Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A7BCD6E79
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 09:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/c8av3NKm5oH9WdjvCwKtJJYoJ0gseDerOtGURoHv38=; b=xxunfMUII0d6tO
	KkxsHnWEqDjcPDGiqTGtscHNUu+1vHeg1kAuBxApXSXWArM9pvAm2YebMtr7/PetDamzEn0I6+mXX
	GM4w+z5AQk3NKh8Kz+eH/Bwi0bNOgebSDb2si7pkO2Oowaf/P+ymqirGhSDOEswcydL/M6jTFcFxu
	d6tSfMXspbCnUgY9TewBlQ3zPITbP8+/MwhOqXEuAbMxg7Rbc0hMVG7F6gK8fqDCQubgHFrapw5OL
	qeR37HCSFrxfrjoUt3EFATt8iw8MSEB/ia29kO/IclDtQ6Fv8FvW6z4JsPjUZZ3YfWoe07X8lNtzd
	7XchAuwrJwK9HiI7I7fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsqs-00000005Ddp-1qTr;
	Tue, 09 Jun 2026 09:34:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsqq-00000005Ddc-3Fyn
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 09:34:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 02E6860172;
	Tue,  9 Jun 2026 09:34:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB1631F00893;
	Tue,  9 Jun 2026 09:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780997667;
	bh=3Ux/oTgrEFu1qjTXUi9kJ7p+kzifhu0Q/0KVpHhR22I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BYXJjpX+zF9+ULk0UeIe4tckVou+uOd1iv/rZQRTBweD6GUs40rAaOtyzMR4ln9eo
	 0J97vl0kfrnsxY8wxNq5xet1O8tq2BP78KTo8DTBtz7GlxgofGc+2W1o1/RTtuckvk
	 Ga+Lijy3cISR15ulJulpHV4faM6fvgZJpEU9EYFYWfYPkVuI8UTDozHR/PwyuZt+IV
	 OX5N7KT9ohBp+Y/GYPQhrTBK5av5+kDE1+gnoP/nfWxsCRDkJRgP5foIIH8Kwz09ds
	 naK30fdmEzMWK2aLF635sY4zl89ieB3HR5RYIqfdoaGUdbaAh0Vrc4WrfP/bjq3wyV
	 m22rYMy3OyiVw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom-qmp-pcie: Add support for ipq5210 PCIe
 phys
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260609-pcie-phy-v2-2-83bc80e79fa6@oss.qualcomm.com>
References: <20260609-pcie-phy-v2-2-83bc80e79fa6@oss.qualcomm.com>
Date: Tue, 09 Jun 2026 09:34:25 +0000
Message-Id: <20260609093426.CB1631F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBuZXdseSBkZWZp
bmVkIFBIWSBpbml0aWFsaXphdGlvbiB0YWJsZXMgYGlwcTUyMTBfZ2VuM3gxX3BjaWVfZXBfdHhf
dGJsYCBhbmQgYGlwcTUyMTBfZ2VuM3gxX3BjaWVfZXBfcGNzX3RibGAgYXJlIG5ldmVyIHVzZWQs
IGFzIHRoZSBlbmRwb2ludCBjb25maWd1cmF0aW9uIG1pc3Rha2VubHkgcmVmZXJlbmNlcyB0YWJs
ZXMgZnJvbSB0aGUgaXBxNjAxOCBTb0MuCi0tCgpjb21taXQgYmY1ZTI2ODYzMWY4MTIxOWUxMDA4
OTJjNDM5Y2JmMDEwZjVjZDVmMQpBdXRob3I6IFZhcmFkYXJhamFuIE5hcmF5YW5hbiA8dmFyYWRh
cmFqYW4ubmFyYXlhbmFuQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFjb20tcW1wLXBjaWU6IEFk
ZCBzdXBwb3J0IGZvciBpcHE1MjEwIFBDSWUgcGh5cwoKVGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQg
Zm9yIGEgUENJZSBwaHlzIGZvdW5kIG9uIHRoZSBRdWFsY29tbSBpcHE1MjEwCnBsYXRmb3JtLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyBi
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiAtLS0gYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwpbIC4uLiBdCj4gQEAgLTM2MTMsNiArMzcxMiw0OSBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIGlwcTYwMThfcGNpZXBoeV9jZmcgPSB7
ClsgLi4uIF0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBpcHE1MjEwX2dlbjN4
MV9wY2llcGh5X2NmZyA9IHsKWyAuLi4gXQo+ICsJLnRibHNfZXAgPSAmKGNvbnN0IHN0cnVjdCBx
bXBfcGh5X2NmZ190YmxzKSB7Cj4gKwkJLnNlcmRlcwkJPSBpcHE1MjEwX2dlbjN4MV9wY2llX2Vw
X3NlcmRlc190YmwsCj4gKwkJLnNlcmRlc19udW0JPSBBUlJBWV9TSVpFKGlwcTUyMTBfZ2VuM3gx
X3BjaWVfZXBfc2VyZGVzX3RibCksCj4gKwkJLnR4CQk9IGlwcTYwMThfcGNpZV90eF90YmwsCj4g
KwkJLnR4X251bQkJPSBBUlJBWV9TSVpFKGlwcTYwMThfcGNpZV90eF90YmwpLAo+ICsJCS5yeAkJ
PSBpcHE1MjEwX2dlbjN4MV9wY2llX2VwX3J4X3RibCwKPiArCQkucnhfbnVtCQk9IEFSUkFZX1NJ
WkUoaXBxNTIxMF9nZW4zeDFfcGNpZV9lcF9yeF90YmwpLAo+ICsJCS5wY3MJCT0gaXBxNjAxOF9w
Y2llX3Bjc190YmwsCj4gKwkJLnBjc19udW0JPSBBUlJBWV9TSVpFKGlwcTYwMThfcGNpZV9wY3Nf
dGJsKSwKCltTZXZlcml0eTogSGlnaF0KQXJlIHRoZSBuZXdseSBhZGRlZCBpcHE1MjEwX2dlbjN4
MV9wY2llX2VwX3R4X3RibCBhbmQgCmlwcTUyMTBfZ2VuM3gxX3BjaWVfZXBfcGNzX3RibCBhcnJh
eXMgaW50ZW5kZWQgdG8gYmUgdXNlZCBoZXJlPwoKVGhpcyBjb25maWd1cmF0aW9uIGFzc2lnbnMg
dGhlIHR4IGFuZCBwY3MgZmllbGRzIHRvIHRoZSBpcHE2MDE4IGFycmF5cywgd2hpY2gKYXBwZWFy
cyB0byBsZWF2ZSB0aGUgbmV3IGlwcTUyMTAgdHggYW5kIHBjcyB0YWJsZXMgZW50aXJlbHkgdW51
c2VkLiBDb3VsZCB0aGlzCnJlc3VsdCBpbiBpbmNvcnJlY3QgUEhZIGhhcmR3YXJlIHByb2dyYW1t
aW5nIGZvciB0aGUgZW5kcG9pbnQ/Cgo+ICsJCS5wY3NfbWlzYwk9IGlwcTUyMTBfZ2VuM3gxX3Bj
aWVfZXBfcGNzX21pc2NfdGJsLAo+ICsJCS5wY3NfbWlzY19udW0JPSBBUlJBWV9TSVpFKGlwcTUy
MTBfZ2VuM3gxX3BjaWVfZXBfcGNzX21pc2NfdGJsKSwKPiArCX0sClsgLi4uIF0KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MDkt
cGNpZS1waHktdjItMC04M2JjODBlNzlmYTZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTIKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

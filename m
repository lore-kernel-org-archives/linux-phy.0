Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45FCFC43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s937OdXMQeiPp3WkecEFEEcVfmU5nkR21ElJGAYPafk=; b=OZoTzeAKFenYab
	wQI5WBfr8cogejLnVO2itwxMY/w1QVghfU0fRhDZFm2lNhEAROaXfOTGwuLd1wzSbA9RO6Mao4LDi
	0OOw96yYlHtYwjgQvYvZOTe9Ai2k1fC687MOocnhEbFji9w08B2WIYYkuS5cZVK6LvrfzMb9FJFev
	ENgU629vagEnK5i97/IOti6OpBSQ+Vn3j7PPbAnJ9xZHrZTR0aTwfLnaGcA85oA5pEMYdXih3lNhV
	kKs6G769GWbJ9EO7e8a86+ohFRQDUJw/1fkwBpqzOFVm3yTmx4exFrX1G8gZ1DunINwYdNj5BRJxn
	hMmUy+KZwV15Lwbf3k3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDvB-0000000Btjn-07bL;
	Fri, 26 Jun 2026 21:17:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDv9-0000000Btjg-1t9V
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:17:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E1083600AA;
	Fri, 26 Jun 2026 21:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A9C01F000E9;
	Fri, 26 Jun 2026 21:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508626;
	bh=d+xkjnRAjprgqmzLZvbsx+txg+5SKpCU78Bm0o2+m/U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dbJWSaLVsTksfu0T9kXAeQsd6eq6j3M7YRSXNfuFv975xMxpbScWGVZG266jALoxr
	 hEKMF/QJE6htsPxdMsD77jfU//x3OEbCRs6N1yw7Wtx4jsLiVEvad34RRYW87k+gGO
	 mHy/jLz9wNn7Fauv2ZRP7s/zTVFSHMaQNBoBXIy2vMvpVcDHgyTzE3AFoweJ2Xdtqa
	 JHFSKxw6HBgI35m0wp23dxVJiImixhNlsGV3lgy0auz9npcBSc261pTJrpvYyhfcs5
	 jh6qnv9AFdso7R+z3drAJFQz9PIYD+xxxeD+Zsy8zKt/idzoxzz9xPYfiT8QPDK4GU
	 IvoOACeGbm0dg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 25/29] phy: rockchip: usbdp: Clear USB status on PHY
 exit
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-25-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-25-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:17:05 +0000
Message-Id: <20260626211706.1A9C01F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gQ2xlYXJpbmcgYHVk
cGh5LT5zdGF0dXNgIGFuZCByZXR1cm5pbmcgZWFybHkgaW4gYHJrX3VkcGh5X3VzYjNfcGh5X2V4
aXRgIGJ5cGFzc2VzIGhhcmR3YXJlIGRpc2FibGVtZW50IHdoZW4gdGhlIHN0YXR1cyBkcm9wcyB0
byAwLCBsZWFkaW5nIHRvIGEgcGVybWFuZW50IGNsb2NrIGVuYWJsZSBjb3VudCBsZWFrIGFuZCBr
ZWVwaW5nIHRoZSBQSFkgaGFyZHdhcmUgaW5jb3JyZWN0bHkgcG93ZXJlZCBvbi4KLS0KCmNvbW1p
dCAwNTIyZWM2NmU2NmY3MjI4ODE3YjZiZjZmY2QyZmY0NjM5ZjZhZjAxCkF1dGhvcjogU2ViYXN0
aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CnBoeTogcm9ja2No
aXA6IHVzYmRwOiBDbGVhciBVU0Igc3RhdHVzIG9uIFBIWSBleGl0CgpUaGlzIGNvbW1pdCBtb2Rp
ZmllcyB0aGUgVVNCMyBQSFkgZXhpdCByb3V0aW5lIHRvIGVuc3VyZSB0aGUgVVNCIHN0YXR1cwpm
bGFnIGlzIGNsZWFyZWQgd2hlbiB0aGUgc3lzdGVtIGlzIGluIERQLW9ubHkgbW9kZS4gVGhpcyBh
ZGRyZXNzZXMgYQpjYXNlIHdoZXJlIHRoZSBVU0IzIGNvbnRyb2xsZXIgaXMgdW5ib3VuZCB3aGls
ZSBhIERQLW9ubHkgYWRhcHRlciBpcwpwbHVnZ2VkIGluLgoKQ2xvc2VzOiBodHRwczovL3Nhc2hp
a28uZGV2LyMvbWVzc2FnZS8yMDI2MDYyNS1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY3LTI0LTM4
ZWIzY2Y2NTRmZCU0MGNvbGxhYm9yYS5jb20KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMKPiBpbmRleCA0NTY2ODIyZDcwYzRhLi4xNWMxOGM2ZTMwOTM1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysr
IGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtMTMyMiw4
ICsxMzIyLDEwIEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfdXNiM19waHlfZXhpdChzdHJ1Y3QgcGh5
ICpwaHkpCj4gIAl1ZHBoeS0+dXNiX2luX3VzZSA9IGZhbHNlOwo+ICAKPiAgCS8qIERQIG9ubHkg
b3IgaGlnaC1zcGVlZCAqLwo+IC0JaWYgKCEodWRwaHktPm1vZGUgJiBVRFBIWV9NT0RFX1VTQikg
fHwgdWRwaHktPmhzKQo+ICsJaWYgKCEodWRwaHktPm1vZGUgJiBVRFBIWV9NT0RFX1VTQikgfHwg
dWRwaHktPmhzKSB7Cj4gKwkJdWRwaHktPnN0YXR1cyAmPSB+VURQSFlfTU9ERV9VU0I7Cj4gIAkJ
cmV0dXJuIDA7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KSWYgdWRwaHktPnN0YXR1cyBkcm9wcyB0byAw
IGFmdGVyIHRoaXMgYml0d2lzZSBjbGVhciwgZG9lcyByZXR1cm5pbmcgZWFybHkKYnlwYXNzIGhh
cmR3YXJlIGRpc2FibGVtZW50PwoKSXQgYXBwZWFycyB0aGlzIG1pZ2h0IGxlYWQgdG8gYSBwZXJt
YW5lbnQgY2xvY2sgZW5hYmxlIGNvdW50IGxlYWsgYW5kIGtlZXAKdGhlIFBIWSBoYXJkd2FyZSBp
bmNvcnJlY3RseSBwb3dlcmVkIG9uIHdoZW4gYSBVU0IzIGNvbm5lY3Rpb24gaXMgdW5ib3VuZApv
ciBleGl0ZWQgd2hpbGUgdGhlIFBIWSBpcyBpbiBhIERQLW9ubHkgbW9kZS4KCj4gKwl9Cj4gIAo+
ICAJcmtfdWRwaHlfcG93ZXJfb2ZmKHVkcGh5LCBVRFBIWV9NT0RFX1VTQik7Cj4KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjYt
cm9ja2NoaXAtdXNiZHAtY2xlYW51cC12OC0wLTQ3ZjY4Mjk4Nzg5NUBjb2xsYWJvcmEuY29tP3Bh
cnQ9MjUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=

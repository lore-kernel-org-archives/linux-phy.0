Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AB80CD4F26
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0joSMpHRIdHjwHjXiRDaW3aMoIZULovZE3f2rGufYH8=; b=B08rDd1xZXu1KF
	Nkohr8VHf+e9uuDFW+pYJZ9eZuk0hUn/vOaM/8h+ZVOmlXH3WiFO5VTmie3FpI8jDnEAIYN1bfEC/
	jZUCjvtTzNGUimaPJE5d3UM+cCt/gCCq4sW6HNqzhaRgzbRsMtonpIpt3q7Jnq4pEVLOP0F/h4dvQ
	/+1kmb5xWopN6ySST6ZqSyWLeddp+vYXSBuRYvt74dePcmrrnvouP9n8CIH4fUCAaq1xFmcYXZFAa
	NiNv4tO4TXggrdSO2BBIEOfP8Rc/nu7n/HvDGF+jXtE5UYtul/bBCRofxtlvZmKf0TnkRzD8uZIdV
	G/ll57wHe8f9qjmYw+0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabS9-00000002iot-2WBt;
	Fri, 19 Jun 2026 15:48:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabS8-00000002iom-42tR
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 15:48:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B68014012A;
	Fri, 19 Jun 2026 15:48:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 516721F000E9;
	Fri, 19 Jun 2026 15:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884100;
	bh=f04Pja++ZsjBRc7Zo73U54TtGChTprb8MYuL8CIOIkc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SNk9s79jZHYuab0498HgvQ2oqragvve7iHasVH2JeW6QmIkfkS7aX4TAAb8lAOS2F
	 NvlMdGmXnjv0EL2MenXuLRk8uC/1OCTSOQL9WR+wcDz/ro60RpHnTFAPeWL2ktLfti
	 Ds3bZY7zPSEWe/0o1zxnWVVgSocwxEo5nJ9Ghi3QrY8Pc7idlGzhJhfktnwTEH8vJX
	 n/SxmMXUE8BatD2hVZPthX/2Z3I1MO3vyYEpP8XQ2asqU9vHhvIXa0woMLEDpdXAHd
	 TEPEVYbRjFtOQNKqLGYo1nLY8fbOz/BWg17z2ZZZaKFqXBhEBgR1wk+PPnocHqy1sF
	 KP4vvFUrqkuBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 11/23] phy: rockchip: usbdp: Support single-lane DP
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-11-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-11-3bb1f54b3f35@collabora.com>
Date: Fri, 19 Jun 2026 15:48:19 +0000
Message-Id: <20260619154820.516721F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGRldmljZXRyZWUg
YmluZGluZ3Mgc2NoZW1hIGZvciAncm9ja2NoaXAsZHAtbGFuZS1tdXgnIHdhcyBub3QgdXBkYXRl
ZCB0byBhbGxvdyBzaW5nbGUtaXRlbSBhcnJheXMsIHdoaWNoIHdpbGwgY2F1c2UgZHRic19jaGVj
ayB2YWxpZGF0aW9uIGVycm9ycyB3aGVuIHVzaW5nIHRoZSBuZXdseSBhZGRlZCBzaW5nbGUtbGFu
ZSBEUCBmZWF0dXJlLgotLQoKY29tbWl0IDFmMDJiY2NmMzVhZWZjYmUwNTNmNzg0YTUyMzMwZjYz
YmJkNDk5ODgKQXV0aG9yOiBaaGFuZyBZdWJpbmcgPHl1YmluZy56aGFuZ0Byb2NrLWNoaXBzLmNv
bT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBTdXBwb3J0IHNpbmdsZS1sYW5lIERQCgpUaGlzIGNv
bW1pdCBpbXBsZW1lbnRzIHN1cHBvcnQgZm9yIHVzaW5nIGEgc2luZ2xlIERpc3BsYXlQb3J0IGxh
bmUgaW4gdGhlClJvY2tjaGlwIFVTQi9EUCBQSFkgZHJpdmVyLiBJdCB1cGRhdGVzIHRoZSBsYW5l
IGNvbmZpZ3VyYXRpb24gYW5kIGRldmljZXRyZWUKcGFyc2luZyBsb2dpYyB0byBoYW5kbGUgc2lu
Z2xlLWxhbmUgc2V0dXBzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYwo+IGluZGV4IDJmZjA1ZWY2ZWVhY2QuLmE4N2NiNWMwNTk2ZTcgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwpbIC4uLiBdCj4gQEAgLTg5Nyw3ICs4
ODQsNyBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X3BhcnNlX2xhbmVfbXV4X2RhdGEoc3RydWN0IHJr
X3VkcGh5ICp1ZHBoeSkKPiAgCQlyZXR1cm4gMDsKPiAgCX0KPiAgCj4gLQlpZiAobnVtX2xhbmVz
ICE9IDIgJiYgbnVtX2xhbmVzICE9IDQpCj4gKwlpZiAobnVtX2xhbmVzICE9IDEgJiYgbnVtX2xh
bmVzICE9IDIgJiYgbnVtX2xhbmVzICE9IDQpCj4gIAkJcmV0dXJuIGRldl9lcnJfcHJvYmUodWRw
aHktPmRldiwgLUVJTlZBTCwKPiAgCQkJCSAgICAgImludmFsaWQgbnVtYmVyIG9mIGxhbmUgbXV4
XG4iKTsKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgY2hhbmdlIGFsc28gcmVxdWlyZSBhbiB1
cGRhdGUgdG8gdGhlIGRldmljZXRyZWUgYmluZGluZ3Mgc2NoZW1hPwoKSXQgbG9va3MgbGlrZSBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC11c2JkcC55
YW1sCnN0aWxsIHJlc3RyaWN0cyByb2NrY2hpcCxkcC1sYW5lLW11eCB0byBhIG1pbmltdW0gb2Yg
MiBpdGVtczoKCiAgcm9ja2NoaXAsZHAtbGFuZS1tdXg6CiAgICAkcmVmOiAvc2NoZW1hcy90eXBl
cy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkKICAgIG1pbkl0ZW1zOiAyCiAgICBtYXhJ
dGVtczogNAoKQ291bGQgdGhpcyBjYXVzZSBkdGJzX2NoZWNrIHZhbGlkYXRpb24gZXJyb3JzIHdo
ZW4gdmFsaWQgZGV2aWNlIHRyZWVzIHN0YXJ0CnVzaW5nIHRoZSBuZXcgMS1sYW5lIGNvbmZpZ3Vy
YXRpb24/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwNjE5LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjYtMC0zYmIxZjU0YjNmMzVA
Y29sbGFib3JhLmNvbT9wYXJ0PTExCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK

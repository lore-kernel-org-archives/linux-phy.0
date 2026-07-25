Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18A79C531D0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 05:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85TtlrUXCL00yh8+5xN1eXfQkzQeoBiz+LXWWuYkeoY=; b=FNK9QdqM3Ga9y6
	NguYdOG6JRvCT8M9UWXa4XzGpMv7tAFral2BpCAWnzhJtKn34w3KwoZPMBx45rsLv5IHKeIvPte5f
	W4uNq4IofZsnUeczw+gz8EyXWF8SciHCm0cljA4GKhG+LQLCBudAJM8P7U+tShouTimq+6bv9RhE9
	Lce56jkoat1ATMoHaeIoq01p7lus1WFqF6x8DIyal1Pa19rUXpoeDSegwUqXrjnZQXcDM1K6+at/l
	T5+LjzQpqkWLGg1QnZlJrP/15miCYj+rNeDPxl9ZuLkzT5+iisEqGtpmIK/sf07Vp4bEsXg/x20qI
	Mio6+XL12dEdVkR+8vjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUjy-000000003re-2iPB;
	Sat, 25 Jul 2026 05:16:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUjy-000000003rV-0F3v
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 05:16:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 613A360A77;
	Sat, 25 Jul 2026 05:16:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE261F000E9;
	Sat, 25 Jul 2026 05:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784956561;
	bh=dsfFN8cXH04hkcTIIjALsxWjAmkmjQJ/dE3pMlPJGfg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D+xcydSLIKwTQzWrgvqQphh541C3wQ6TZRrOp5efvvyLoXWchYzCBg/bnxtpEM+nb
	 0L9YOQE5x3JZm0C71s+gk8MYCgn+ryxyeTnuC4p09J8xEmBM1w5Y4x1M5Uj715fH9w
	 OHVtEIdh1ZmjjYpb7x5zVGhvjxY6VgebRJLpmA9Wk001ED688CBZ35UEJAgMqFoofH
	 fEsWKhfmDv2AJBIv/5DLheAbz+7R83MlcrxQkMUwnoaId64PtGTFXihQy5oWaj6xva
	 pHwlbwuhd9tgyij0tFPwzQX2TwRQUsRFtUhKSwcI7ddyORErLuV+naKB9cMUAP9tMg
	 E9JZOfmDweEDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 04/17] dt-bindings: soc: spacemit: allow eDP/DP PHY PLL
 pixel clocks on K3 APMU
To: "Cody Kang" <codykang.hk@gmail.com>
Cc: dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260724-k3-display-v1-4-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
 <20260724-k3-display-v1-4-f22a10a52867@gmail.com>
Date: Sat, 25 Jul 2026 05:16:00 +0000
Message-Id: <20260725051600.8EE261F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBuZXdseSBhZGRl
ZCBjbG9jayBuYW1lcyBpbiB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBkbyBub3QgbWF0Y2ggdGhl
IGBmd19uYW1lYCBleHBlY3RlZCBieSB0aGUgY2xvY2sgZHJpdmVyLCBicmVha2luZyBwYXJlbnQg
Y2xvY2sgcmVzb2x1dGlvbi4KLS0KCi0tLSBQYXRjaCBbNF06IFtQQVRDSCAwNC8xN10gZHQtYmlu
ZGluZ3M6IHNvYzogc3BhY2VtaXQ6IGFsbG93IGVEUC9EUCBQSFkgUExMIHBpeGVsIGNsb2NrcyBv
biBLMyBBUE1VIC0tLQpjb21taXQgNDAyN2I0YWRiNmQ1ZTdhMjYwODljYTdmNzBhMjUxNTBmYWYx
MDk4YQpBdXRob3I6IENvZHkgS2FuZyA8Y29keWthbmcuaGtAZ21haWwuY29tPgoKZHQtYmluZGlu
Z3M6IHNvYzogc3BhY2VtaXQ6IGFsbG93IGVEUC9EUCBQSFkgUExMIHBpeGVsIGNsb2NrcyBvbiBL
MyBBUE1VCgpUaGUgQVBNVSdzIGVEUCBwaXhlbC1jbG9jayBtdXhlcyBzZWxlY3QgdGhlIERQIFBI
WSBQTExzIGFzIHBhcmVudHMsIHNvIHRoZQpLMyBzeXNjb24gdGFrZXMgdHdvIGNsb2NrIGlucHV0
cyB0aGUgb3RoZXIgdmFyaWFudHMgZG8gbm90IGhhdmUuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3NwYWNlbWl0L3NwYWNlbWl0LGsxLXN5c2Nv
bi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9zcGFjZW1pdC9z
cGFjZW1pdCxrMS1zeXNjb24ueWFtbAo+IGluZGV4IGQzYTdjOTNjM2M1NGYuLmI4ZmM2NjMyYTM5
MjggMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9z
cGFjZW1pdC9zcGFjZW1pdCxrMS1zeXNjb24ueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb2Mvc3BhY2VtaXQvc3BhY2VtaXQsazEtc3lzY29uLnlhbWwKClsg
Li4uIF0KCj4gQEAgLTMxLDE0ICszMSwxOCBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgbWF4SXRlbXM6
IDEKPiAgCj4gICAgY2xvY2tzOgo+IC0gICAgbWF4SXRlbXM6IDQKPiArICAgIG1pbkl0ZW1zOiA0
Cj4gKyAgICBtYXhJdGVtczogNgo+ICAKPiAgICBjbG9jay1uYW1lczoKPiArICAgIG1pbkl0ZW1z
OiA0Cj4gICAgICBpdGVtczoKPiAgICAgICAgLSBjb25zdDogb3NjCj4gICAgICAgIC0gY29uc3Q6
IHZjdGN4b18xbQo+ICAgICAgICAtIGNvbnN0OiB2Y3RjeG9fM20KPiAgICAgICAgLSBjb25zdDog
dmN0Y3hvXzI0bQo+ICsgICAgICAtIGNvbnN0OiBlZHAwX3BsbF9weGNsawo+ICsgICAgICAtIGNv
bnN0OiBlZHAxX3BsbF9weGNsawoKW1NldmVyaXR5OiBIaWdoXQpXaWxsIHRoaXMgbWlzbWF0Y2gg
d2l0aCB0aGUgY2xvY2sgZHJpdmVyJ3MgZXhwZWN0ZWQgZmlybXdhcmUgbmFtZXM/CgpMb29raW5n
IGF0IGVkcDBfcGNsa19wYXJlbnRzIGluIGRyaXZlcnMvY2xrL3NwYWNlbWl0L2NjdS1rMy5jLCB0
aGUgZHJpdmVyCmhhcmRjb2RlcyB0aGUgZXhwZWN0ZWQgZGV2aWNlIHRyZWUgc3RyaW5nIGFzICJl
eHRlcm5hbF9jbGsiOgoKZHJpdmVycy9jbGsvc3BhY2VtaXQvY2N1LWszLmM6ZWRwMF9wY2xrX3Bh
cmVudHNbXSA9IHsKICAgIC4uLgogICAgQ0NVX1BBUkVOVF9OQU1FKGV4dGVybmFsX2NsayksCiAg
ICAuLi4KfTsKClNpbmNlIHRoaXMgYmluZGluZyBzdHJpY3RseSBtYW5kYXRlcyAiZWRwMF9wbGxf
cHhjbGsiIGFuZCAiZWRwMV9wbGxfcHhjbGsiIAppbnN0ZWFkIG9mICJleHRlcm5hbF9jbGsiLCB0
aGUgQ29tbW9uIENsb2NrIEZyYW1ld29yayB3aWxsIHNlYXJjaCB0aGUgCmNsb2NrLW5hbWVzIGFy
cmF5IGZvciAiZXh0ZXJuYWxfY2xrIiBhbmQgZmFpbCB0byByZXNvbHZlIHRoZSBwYXJlbnQgY2xv
Y2tzIApmb3IgdGhlIGVEUCBwaXhlbCBjbG9jayBtdXhlcy4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjQtazMtZGlzcGxheS12
MS0wLWYyMmExMGE1Mjg2N0BnbWFpbC5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 243D5C5CFC1
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 01:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/g5cmvhuLXfWpOsmuuDz0+qTMB6rKg/mHTjU3DaMxw=; b=RbWRq81LDzeOgN
	oVHIDuVJbri4YUZjZDmG+T2LlgxLFUn3w/3xabU3j+mJXAOiaKWlHXltUjtIRsKgwoGIuD6Z7Rv1b
	ptuc2hRKpKGEquQE4sB1qwxd4kjrycBKvIrHQpRcJchRJ9ozhYEmJtet7zy5GO45x4fc+2AKRyOF0
	4vd67XVIyZIdHJ9rB1cQHagxdbCWqfdDgC2+0ctvQN78a1qda2OZpSIcsOTzNWaB55LzsV9IcKJ1x
	aelJpCsY7SFs7lwwZ3uwdTEjo2GQzZUle8NtxBxsDrL1KQBHSyWei3Uk9ogTobIl1s87g6syLkYIF
	nICHOuSYDgP4fXVbB+Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxPt-0000000FBb5-33EW;
	Wed, 12 Aug 2026 01:06:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtxPs-0000000FBaz-3ELd
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 01:06:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 74AE643D05;
	Wed, 12 Aug 2026 01:06:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D56FA1F000E9;
	Wed, 12 Aug 2026 01:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786496760;
	bh=a9w3didf8FefJGjP6R1BDTCoZrWi/I5IkQ865A031Rk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ju6bl8YlAFMIsqpZtdzYS2xl7DG8tRISV1Yh5BC+5bh/rYawoVmVhbRWX69iIpZuG
	 GDRM3JEK5IfA/FhTPTfHtjvtSeO2ajHqnIl8wmHC7/upolLpUU4zkkk2XpyNR9XqKy
	 A3yUJeFmFGLxqj51SCumkxNWid6vqJuClR3oEEnAfNrhLWI7MqGLl9dzFVEC9aTdPN
	 nzPzZrgO6LI3TnCPvBLNvrFJfecycDOlNK5eYBGqs89RwwR46Ca8CY4Wgo++cxz90n
	 cX5AfRrypAYlYTEGeK6zKveIa6T9zTU64r7Qf0OmMz6E07pJksm8bfEsPq7FX9gzFZ
	 duHQESIoMipUg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO
 PHY
To: "Marek Vasut" <marex@nabladev.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260812010157.1772849-2-marex@nabladev.com>
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-2-marex@nabladev.com>
Date: Wed, 12 Aug 2026 01:05:59 +0000
Message-Id: <20260812010559.D56FA1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGNvbXBhdGlibGUg
c3RyaW5nIHVzZWQgaW4gdGhlIGV4YW1wbGUgZG9lcyBub3QgbWF0Y2ggYW55IG9mIHRoZSBhbGxv
d2VkIGNvbXBhdGlibGUgc3RyaW5ncyBkZWZpbmVkIGluIHRoZSBzY2hlbWEgZW51bS4KLS0KCi0t
LSBQYXRjaCBbMV06IFtQQVRDSCAxLzhdIGR0LWJpbmRpbmdzOiBwaHk6IERvY3VtZW50IFNUIFNU
TTMyTVAyNSBVU0IyLUZFTVRPIFBIWSAtLS0KY29tbWl0IDMwMzc0ZjY1ZDk1NWY3MzdlODNjODFi
ZmQzZGFhNjEyM2UwNWJmNmIKQXV0aG9yOiBQYW5rYWogRGV2IDxwYW5rYWouZGV2QHN0LmNvbT4K
CmR0LWJpbmRpbmdzOiBwaHk6IERvY3VtZW50IFNUIFNUTTMyTVAyNSBVU0IyLUZFTVRPIFBIWQoK
VGhpcyBjb21taXQgZG9jdW1lbnRzIHRoZSBVU0IyIFBIWSBmb3IgU1RNMzJNUDI1IFVTQjIgY29u
dHJvbGxlcnMuIEl0CmludHJvZHVjZXMgYmluZGluZ3MgZm9yIHR3byBzbGlnaHRseSBkaWZmZXJl
bnQgUEhZcyBvbiB0aGUgU29DLCB1c2luZwpkaWZmZXJlbnQgY29tcGF0aWJsZSBzdHJpbmdzIHRv
IGRpc2Nlcm4gdGhlbS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9zdCxzdG0zMi11c2IycGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmNhOWZjM2I4NzM4M2MKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zdCxzdG0zMi11
c2IycGh5LnlhbWwKWyAuLi4gXQo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGlibGU6Cj4gKyAg
ICBlbnVtOgo+ICsgICAgICAtIHN0LHN0bTMybXAyNS11c2IycGh5MQo+ICsgICAgICAtIHN0LHN0
bTMybXAyNS11c2IycGh5Mgo+ICsKWyAuLi4gXQo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAg
ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9zdCxzdG0zMm1wMjUtcmNjLmg+Cj4gKyAgICAj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvc3Qsc3RtMzJtcDI1LXJjYy5oPgo+ICsKPiArICAg
IHVzYjJfcGh5MjogdXNiLXBoeSB7Cj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1w
MjUtdXNiMnBoeSI7CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIGNvbXBhdGlibGUgc3RyaW5n
IG1hdGNoIHRoZSBvbmVzIGRlZmluZWQgaW4gdGhlIHNjaGVtYSBwcm9wZXJ0aWVzPwoKTG9va2lu
ZyBhdCB0aGUgZW51bSBhYm92ZSwgdGhlIHNjaGVtYSBkZWZpbmVzIHN0LHN0bTMybXAyNS11c2Iy
cGh5MSBhbmQKc3Qsc3RtMzJtcDI1LXVzYjJwaHkyLCBidXQgdGhlIGV4YW1wbGUgdXNlcyBzdCxz
dG0zMm1wMjUtdXNiMnBoeS4gV2lsbAp0aGlzIGNhdXNlIGR0X2JpbmRpbmdfY2hlY2sgdG8gZmFp
bCB3aGVuIHZhbGlkYXRpbmcgdGhlIGV4YW1wbGUgYmxvY2sgYWdhaW5zdAp0aGUgc2NoZW1hIGRl
ZmluaXRpb25zPwoKPiArICAgICAgICAjY2xvY2stY2VsbHMgPSA8MD47Cj4gKyAgICAgICAgI3Bo
eS1jZWxscyA9IDwwPjsKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgxMjAxMDE1Ny4xNzcyODQ5LTEtbWFyZXhAbmFi
bGFkZXYuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==

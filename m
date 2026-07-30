Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A352C55165
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 14:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vs23LL4nK1tltgxD7MGwrIbGZpmgYC25zUAb0HBmnN4=; b=FrliTAuk1fNqM5
	RXSMW6SFqU2rwZboVSPzoLAwkQri9ZOqOAoPFtN9lA7f7g86QzUqkN5epr/ZlMynRRNfoK1SAVuZv
	aTgcBWVdwOtmvPdvLaA8csszDdMpfyRW9y4CNla6n/7tEEwfVN9P53mSHlPc/Q/pbJv7sW8NQ+WLV
	CmABtSLvWP9bdcpoOBfOC/pPwHkc7iF9IZ9ckv3IotmdwNclhWS78ipZnoi09dnKhUfucL0XBklGe
	trttJjOkqheWUmaEs9QQsbIpXJ8v+iod20UdGTrh1dH5WycE5Hs0lw5jqYCksMEI2ryHefEraHBJj
	ZLhuoqFslYc/FeaL3nIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpROm-0000000Ahhc-2Ur5;
	Thu, 30 Jul 2026 14:06:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpROh-0000000Ahgv-20EQ
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 14:06:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C0400600B0;
	Thu, 30 Jul 2026 14:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08BEC1F000E9;
	Thu, 30 Jul 2026 14:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785420366;
	bh=jT21XeOmz0/Atl0bSB3o2ybF1OhRzFJplktQI969MbI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gyMIb0lQ9Q5f006TbW7jOSabXP8Sz/T49vZAfJdDrOyhD34LjQYYyFJDjNWRGxY0r
	 UWJS2RhWAcloQNRiCs7ivi7SGkm16FyvEEK6hNo6kK3gpE0/Hdm/p3sXX59KtNRiNx
	 xosbKlGyFODwrDH8dZTYZaetC0Y8AHnIlKReJmhv+ifFpT00CVE1PBrhNNee/7aiAf
	 8eFq6SAtH82bx7qZztJpiYuuNQ46H9i6nCObuO9mdX93Zk0Z4DLRK1AUMQJOQ3V48s
	 RuS+1xFDsbutkOkPwtO5+ZmMhG7GBSUYf4BjF4URPkoJs0RC/IuiatZ0Yao/KEA4IR
	 Rm9wyy4/eJhwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
To: "Mattijs Korpershoek" <mkorpershoek@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260730-phy-qcom-snps-femto-v2-8255-v1-1-8b8bf5105a68@kernel.org>
References: <20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org>
 <20260730-phy-qcom-snps-femto-v2-8255-v1-1-8b8bf5105a68@kernel.org>
Date: Thu, 30 Jul 2026 14:06:05 +0000
Message-Id: <20260730140606.08BEC1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBoYXJk
d2FyZS1zcGVjaWZpYyBQSFkgdHVuaW5nIHBhcmFtZXRlcnMgZm9yIHRoZSBTeW5vcHN5cyBGZW10
byBIaWdoLVNwZWVkIFVTQiBQSFkgVjIuCi0tCgotLS0gUGF0Y2ggWzFdOiBbUEFUQ0ggMS8yXSBk
dC1iaW5kaW5nczogcGh5OiBBZGQgc2E4MjU1cCBoaWdoLXNwZWVkIFVTQiBQSFkgLS0tCmNvbW1p
dCAwNGJjOTFhNmZlMDYyNjFlMDk5YWU4ZmRhMWJiOTBlMzRkMGYyOGZjCkF1dGhvcjogTWF0dGlq
cyBLb3JwZXJzaG9layA8bWtvcnBlcnNob2VrQGtlcm5lbC5vcmc+CgpkdC1iaW5kaW5nczogcGh5
OiBBZGQgc2E4MjU1cCBoaWdoLXNwZWVkIFVTQiBQSFkKClRoaXMgY29tbWl0IGludHJvZHVjZXMg
YSBuZXcgZGV2aWNlIHRyZWUgYmluZGluZyBmb3IgdGhlIFF1YWxjb21tIFNBODI1NXAgClN5bm9w
c3lzIEZlbXRvIEhpZ2gtU3BlZWQgVVNCIFBIWSBWMi4gSXQgc3BlY2lmaWVzIHRoYXQgdGhlIGhh
cmR3YXJlIHVzZXMgClNDTUkgcG93ZXIgZG9tYWlucyB0byBtYW5hZ2UgcmVzb3VyY2VzIGxpa2Ug
Y2xvY2tzLCBpbnRlcmNvbm5lY3RzLCBhbmQgCnJlc2V0cywgcmF0aGVyIHRoYW4gZGVmaW5pbmcg
dGhlbSBpbmRpdmlkdWFsbHkuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3Fjb20sc2E4MjU1cC11c2ItaHMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2E4MjU1cC11c2ItaHMtcGh5LnlhbWwK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjA5ZjdjYTZlN2Y3
MjcKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9xY29tLHNhODI1NXAtdXNiLWhzLXBoeS55YW1sCgpbIC4uLiBdCgo+ICtyZXF1aXJl
ZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gIiNwaHktY2VsbHMiCj4gKyAg
LSBwb3dlci1kb21haW5zCj4gKyAgLSBwb3dlci1kb21haW4tbmFtZXMKPiArCj4gK2FkZGl0aW9u
YWxQcm9wZXJ0aWVzOiBmYWxzZQoKW1NldmVyaXR5OiBNZWRpdW1dClNpbmNlIHRoaXMgSVAgYmxv
Y2sgaXMgc3RpbGwgdGhlIFN5bm9wc3lzIEZlbXRvIEhpZ2gtU3BlZWQgVVNCIFBIWSBWMiwgCndv
dWxkIGJvYXJkIGNvbmZpZ3VyYXRpb25zIGZvciB0aGlzIHBsYXRmb3JtIHN0aWxsIG5lZWQgdG8g
YXBwbHkgc3RhbmRhcmQgCmhhcmR3YXJlIHR1bmluZyBwYXJhbWV0ZXJzIChzdWNoIGFzIHFjb20s
c3F1ZWxjaC1kZXRlY3Rvci1icCk/CgpXaGlsZSBjbG9ja3MgYW5kIHJlc2V0cyBhcmUgYWJzdHJh
Y3RlZCBpbnRvIFNDTUkgcG93ZXIgZG9tYWlucyBoZXJlLCB0aGUgCm1lbW9yeS1tYXBwZWQgcmVn
IHNwYWNlIGlzIHN0aWxsIHByb3ZpZGVkIGFuZCB0eXBpY2FsbHkgdXNlZCB0byBwcm9ncmFtIAp0
aGVzZSBzaWduYWwgY2hhcmFjdGVyaXN0aWNzLiBXaXRoIGFkZGl0aW9uYWxQcm9wZXJ0aWVzIHNl
dCB0byBmYWxzZSwgCnNjaGVtYSB2YWxpZGF0aW9uIHdpbGwgZmFpbCBmb3IgYW55IGJvYXJkIGRl
dmljZSB0cmVlIHRoYXQgYXR0ZW1wdHMgdG8gCm92ZXJyaWRlIHRoZXNlIHZhbGlkIFBIWSB0dW5p
bmcgcHJvcGVydGllcy4KCk1pZ2h0IGl0IGJlIG5lY2Vzc2FyeSB0byBpbmNsdWRlIHRoZXNlIHR1
bmluZyBwcm9wZXJ0aWVzLCBwZXJoYXBzIGJ5IApyZWZlcmVuY2luZyBhIGNvbW1vbiBzY2hlbWEs
IHNvIHRoYXQgYm9hcmRzIGNhbiBzYWZlbHkgdHVuZSBzcXVlbGNoIApkZXRlY3Rpb24gYW5kIHBy
ZS1lbXBoYXNpcyB3aXRob3V0IHRyaWdnZXJpbmcgdmFsaWRhdGlvbiBlcnJvcnM/Cgo+ICsKPiAr
ZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICBzb2MgewoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDczMC1waHktcWNv
bS1zbnBzLWZlbXRvLXYyLTgyNTUtdjEtMC04YjhiZjUxMDVhNjhAa2VybmVsLm9yZz9wYXJ0PTEK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

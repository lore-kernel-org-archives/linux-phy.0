Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A244C43602
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 10:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKYd04ZoJsGJsJJ2yFXHkqXywpMnyfuB7+OWK3A/ioM=; b=eGkfbcQQE4I6vu
	i1pGxsFk3tCh9CcedbmuQ70d2DxN37wyVKAFo51V7oSy1gWrN9TkxIsPcnoCHjjQWYgMCbZg9UI+7
	UViBXGtsaw318CsyLGTc0MbcX1diesoQJnaY22BlJmv8eTsboE2bqo3UGzPIvq519AtpKpRTSznSB
	381yzXdSYF1qOStbyNvM4xmmxGEbj+eECUotEeq7Buana7qCwC/59MgO2M0stzu2PjxEEtdsqJtHD
	iEuB4+kta9Gje3+Dqh5p1RMdT42441I8tp26iogXfrZ2OrB4gWqp6wzGnRjYZe/PPji8USmPNSETr
	1v9mfiDw+uStnfW/2tDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPpv-0000000Gwbg-0hBS;
	Wed, 08 Jul 2026 10:49:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPpu-0000000GwbY-16Ln
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 10:49:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B0968601D9;
	Wed,  8 Jul 2026 10:49:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D616E1F000E9;
	Wed,  8 Jul 2026 10:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783507741;
	bh=NjmxgfT50Pozt5M6c45G6mi5aTkKtqZO4ykzegNi2+A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DrKY8UAxwTpzhIk3f558wYx1DM2BWiMkyACdArzrh6nGPuezDj7FlM/O1Y+/CFVKy
	 8LqkZJ+kTQQhCeNzNwbx0StMQCllHmGgSauclAniz+jfWt7avENlbCUmfavjzVaBPz
	 ygNJ5fxXQdyu7P0UFOxDFnLDUVJEGT03sjOSWIuemtR3Biai8LD/1AdGRvk2Pz6otc
	 rfasjEpKU6hrbnlx3Pn+U0ktUspeFU+7yhVqf7lAsvxQlsVKbcWaSs1v/G+n/lVjGw
	 zer9dZtx1ErUZjg2iMcyBW3Bg4L1/TCaIX9FUp2eSOiCXELOJMSVo2R/py3dVMtE0G
	 CfvKzI90E08AA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy:
 extend for dual-port and OTG
To: "Joey Lu" <a0987203069@gmail.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708103606.1462960-2-a0987203069@gmail.com>
References: <20260708103606.1462960-1-a0987203069@gmail.com>
 <20260708103606.1462960-2-a0987203069@gmail.com>
Date: Wed, 08 Jul 2026 10:49:00 +0000
Message-Id: <20260708104900.D616E1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBEVCBiaW5kaW5n
IGludHJvZHVjZXMgbXVsdGktcG9ydCBzdXBwb3J0LCBidXQgdGhlIGNvcnJlc3BvbmRpbmcgZHJp
dmVyIGxhY2tzIGltcGxlbWVudGF0aW9uLCBsZWFkaW5nIHRvIHNpbGVudCBoYXJkd2FyZSBtYWxm
dW5jdGlvbi4KLSBbTWVkaXVtXSBUaGUgYCNwaHktY2VsbHNgIHByb3BlcnR5IHVzZXMgYW4gZW51
bSBjb25zdHJhaW50IGluc3RlYWQgb2YgYSBzdHJpY3QgY29uc3QgY29uc3RyYWludCwgdmlvbGF0
aW5nIHN1YnN5c3RlbSBndWlkZWxpbmVzLgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIHYzIDEv
M10gZHQtYmluZGluZ3M6IHBoeTogbnV2b3RvbixtYTM1ZDEtdXNiMi1waHk6IGV4dGVuZCBmb3Ig
ZHVhbC1wb3J0IGFuZCBPVEcgLS0tCmNvbW1pdCA3ZjcyYThjYzRiNjRlMWRmY2Y0ZWZiYTFjZDY3
YmY5ZWFmZDMxZDcyCkF1dGhvcjogSm9leSBMdSA8YTA5ODcyMDMwNjlAZ21haWwuY29tPgoKZHQt
YmluZGluZ3M6IHBoeTogbnV2b3RvbixtYTM1ZDEtdXNiMi1waHk6IGV4dGVuZCBmb3IgZHVhbC1w
b3J0IGFuZCBPVEcKClRoaXMgY29tbWl0IHVwZGF0ZXMgdGhlIG51dm90b24sbWEzNWQxLXVzYjIt
cGh5IGRldmljZSB0cmVlIGJpbmRpbmcgdG8Kc3VwcG9ydCBkdWFsIFVTQiBQSFkgcG9ydHMgKFBI
WTAgYW5kIFBIWTEpLiBJdCByZWxheGVzICNwaHktY2VsbHMgZnJvbSBjb25zdDogMAp0byBlbnVt
OiBbMCwgMV0gdG8gYWxsb3cgcG9ydCBzZWxlY3Rpb24gd2hpbGUgcHJlc2VydmluZyBiYWNrd2Fy
ZApjb21wYXRpYmlsaXR5LiBJdCBhbHNvIGFkZHMgbmV3IG9wdGlvbmFsIHByb3BlcnRpZXMgZm9y
IHJlc2lzdG9yIGNhbGlicmF0aW9uCmFuZCBvdmVyLWN1cnJlbnQgcG9sYXJpdHkuCgo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L251dm90b24sbWEz
NWQxLXVzYjItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L251dm90b24sbWEzNWQxLXVzYjItcGh5LnlhbWwKPiBpbmRleCBmZmY4NThjOTA5YTA2Li4xOTFk
MWIyMjcyZWM1IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvbnV2b3RvbixtYTM1ZDEtdXNiMi1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnV2b3RvbixtYTM1ZDEtdXNiMi1waHkueWFtbApbIC4u
LiBdCj4gQEAgLTE1LDcgKzI3LDEyIEBAIHByb3BlcnRpZXM6Cj4gICAgICAgIC0gbnV2b3Rvbixt
YTM1ZDEtdXNiMi1waHkKPiAgCj4gICAgIiNwaHktY2VsbHMiOgo+IC0gICAgY29uc3Q6IDAKPiAr
ICAgIGVudW06IFswLCAxXQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoZSBkcml2ZXIgY3VycmVu
dGx5IHN1cHBvcnQgdGhpcyBuZXcgI3BoeS1jZWxscyA9IDwxPiBjb25maWd1cmF0aW9uPwoKTG9v
a2luZyBhdCBtYTM1X3VzYl9waHlfcHJvYmUoKSBpbiBkcml2ZXJzL3BoeS9udXZvdG9uL3BoeS1t
YTM1ZDEtdXNiMi5jLCB0aGUgCnByb3ZpZGVyIHJlZ2lzdGVycyB1c2luZyBvZl9waHlfc2ltcGxl
X3hsYXRlOgoKICAgIHByb3ZpZGVyID0gZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIoJnBk
ZXYtPmRldiwgb2ZfcGh5X3NpbXBsZV94bGF0ZSk7CgpCZWNhdXNlIG9mX3BoeV9zaW1wbGVfeGxh
dGUgaWdub3JlcyBjZWxsIGFyZ3VtZW50cywgYW55IHZhbGlkIERUIHJlcXVlc3QgZm9yClBIWTEg
d2lsbCBzaWxlbnRseSBtYXAgdG8gdGhlIHNpbmdsZSBpbml0aWFsaXplZCBQSFkuCgpGdXJ0aGVy
bW9yZSwgbWEzNV91c2JfcGh5X3Bvd2VyX29uKCkgc3RyaWN0bHkgaGFyZGNvZGVzIHJlZ2lzdGVy
cyBmb3IgUEhZMDoKCiAgICByZWdtYXBfdXBkYXRlX2JpdHMocF9waHktPnN5c3JlZywgTUEzNV9T
WVNfUkVHX1VTQlBNSVNDUiwgMHg3LCAoUEhZMFBPUiB8IFBIWTBTVVNQRU5EKSk7CgpXaWxsIHRo
aXMgY2F1c2UgYSBjb25zdW1lciBhdHRlbXB0aW5nIHRvIGNvbnRyb2wgUEhZMSB0byBpbmFkdmVy
dGVudGx5IHJlc2V0IGFuZApwb3dlciBvbiBQSFkwIGluc3RlYWQ/CgpbU2V2ZXJpdHk6IE1lZGl1
bV0KSXMgaXQgYWNjZXB0YWJsZSB0byB1c2UgYW4gZW51bSBjb25zdHJhaW50IGZvciBhIGNlbGwt
Y291bnQgcHJvcGVydHk/CgpBY2NvcmRpbmcgdG8gdGhlIHN1YnN5c3RlbS9kdC1iaW5kaW5ncy5t
ZCBnbG9iYWwgcmV2aWV3IGd1aWRlbGluZXMsIGVhY2gKY2VsbC1jb3VudCBwcm9wZXJ0eSBtdXN0
IGhhdmUgYSBzdHJpY3QgY29uc3QgY29uc3RyYWludCBtYXRjaGluZyB0aGUgaGFyZHdhcmUuClNp
bmNlIHRoZSBoYXJkd2FyZSBwaHlzaWNhbGx5IGhhcyB0d28gcG9ydHMsIHNob3VsZG4ndCAjcGh5
LWNlbGxzIGJlIGRlZmluZWQKYXMgY29uc3Q6IDEgdG8gYWNjdXJhdGVseSBtb2RlbCB0aGUgaGFy
ZHdhcmUncyBjYXBhYmlsaXRpZXM/Cgo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIFdoZW4g
MCwgdGhlIG5vZGUgZXhwb3NlcyBQSFkwIG9ubHkgYW5kIGNvbnN1bWVycyByZWZlcmVuY2UgaXQK
PiArICAgICAgd2l0aCBubyBjZWxsIGFyZ3VtZW50LiBXaGVuIDEsIHRoZSBzaW5nbGUgY2VsbCBz
ZWxlY3RzIHRoZSBwb3J0LAo+ICsgICAgICB3aXRoIDAgZm9yIHRoZSBPVEcgcG9ydCAoVVNCMCwg
c2hhcmVkIHdpdGggRFdDMiBnYWRnZXQgY29udHJvbGxlcikKPiArICAgICAgYW5kIDEgZm9yIHRo
ZSBob3N0LW9ubHkgcG9ydCAoVVNCMSkuClsgLi4uIF0KPiBAQCAtMzksNyArNzgsNyBAQCBleGFt
cGxlczoKPiAgCj4gICAgICB1c2JfcGh5OiB1c2ItcGh5IHsKPiAgICAgICAgICBjb21wYXRpYmxl
ID0gIm51dm90b24sbWEzNWQxLXVzYjItcGh5IjsKPiAtICAgICAgICBjbG9ja3MgPSA8JmNsayBV
U0JEX0dBVEU+Owo+ICsgICAgICAgIGNsb2NrcyA9IDwmY2xrIEhVU0JIMF9HQVRFPjsKPiAgICAg
ICAgICBudXZvdG9uLHN5cyA9IDwmc3lzPjsKPiAgICAgICAgICAjcGh5LWNlbGxzID0gPDA+OwoK
W1NldmVyaXR5OiBNZWRpdW1dCldpdGggdGhlIGhhcmR3YXJlIHN1cHBvcnRpbmcgbXVsdGlwbGUg
cG9ydHMsIHNob3VsZCB0aGUgZXhhbXBsZSBiZSB1cGRhdGVkIHRvCmRlbW9uc3RyYXRlIHRoZSBj
b3JyZWN0IG11bHRpLXBvcnQgY29uZmlndXJhdGlvbiAoI3BoeS1jZWxscyA9IDwxPjspIGluc3Rl
YWQKb2YgcHJvcGFnYXRpbmcgdGhlIGxlZ2FjeSBjb25maWd1cmF0aW9uPwoKPiAgICAgIH07Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzA4MTAzNjA2LjE0NjI5NjAtMS1hMDk4NzIwMzA2OUBnbWFpbC5jb20/cGFydD0xCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

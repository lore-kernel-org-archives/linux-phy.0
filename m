Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF045C5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVvfqlDgI3OEY1hbwzpsq4piEQXfOeY44Kvly8KgY5E=; b=aU7kph5EjKFj7Z
	0el+XIWbqIRSfTyL/NqIfnVzUQNbuPI7htTCFP8jCfyNuRQ0cDJpHJQpg6bnyydN4Zlc8Ldpu78bk
	yCwR8D9DWAaKxrtR14clwlGgxpLtDirWcbHAp7qnF3irwlXmq00ZNNuBCVnF7uczU47KfiMWdUxUH
	OQwE2/kTwT0XhRhtpOvOEGcA/DQVxy5lkgvb+Yu1qnas43tgthr72SexEmFIJj7ImqRWlKdD1DBnd
	udvVmQKf19qtkO2/SwB76guON8VNw3OnLuLLu9mB+xN26Q0QmT++YiWw7g+F0xPPfQIsF+tFVgcEK
	XOmmQkZ78+YCF7XytB2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5Sa-0000000FmNt-2C6P;
	Wed, 12 Aug 2026 09:41:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5SZ-0000000FmNn-3YWu
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:41:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 313C14006A;
	Wed, 12 Aug 2026 09:41:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94AFB1F000E9;
	Wed, 12 Aug 2026 09:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786527679;
	bh=Zt+NpGI6iWHN39zktRg4D7AclVRL5Gv+ygNE0kQ8i4M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MtRR1Dj0zhgw+Ja0z7bv1LRk+0fQvYrUzeTrYKPMsjJPOG4SxA5quoAF560QMPehU
	 2hzwu80zkF7t3yoIddH8tEERUO96hyz2J/PSpdiqlPpXEcJdWvF8E8qtmWS9RVhLZZ
	 N7mRQWaML33u3XOE8X/RbemfT3opviI2i7BgHjmi7LfGkaseODh1mhkihjMNsuv5Q7
	 ragVcEHY2bH2IA4loiGnHl2SRoNKv6a4TAZOajJ7OF0ERblBz6yVEKCEvU8Zj40eRY
	 zlQeBmpj3yaOc2fHw5lFtm4KcNB24MvvbKfy+P9ycOnrFVS/Hwpsy/Enc0XEdjRkpn
	 v4mJYdutPaYiA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 01/14] dt-bindings: phy: Document the Qualcomm
 IPQ5332 UNIPHY USB Super-speed PHY
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-1-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:41:18 +0000
Message-Id: <20260812094118.94AFB1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBgbWluSXRl
bXM6IDNgIGNvbnN0cmFpbnQgZm9yIElQUTUzMzIgY2xvY2tzIGluIGNvbmRpdGlvbmFsIGJsb2Nr
IGFsbG93cyBpbmNvbXBsZXRlIGRldmljZSB0cmVlcyB0byBwYXNzIHZhbGlkYXRpb24uCi0tCgot
LS0gUGF0Y2ggWzFdOiBbUEFUQ0ggdjIgMDEvMTRdIGR0LWJpbmRpbmdzOiBwaHk6IERvY3VtZW50
IHRoZSBRdWFsY29tbSBJUFE1MzMyIFVOSVBIWSBVU0IgU3VwZXItc3BlZWQgUEhZIC0tLQpjb21t
aXQgMGU4OTIzMGFlMzBiMzI1YTg5ODIyOTFjOWU2MjlmNTdlNWZkZTE4MApBdXRob3I6IFByYXZl
ZW5rdW1hciBJIDxxdWljX2lwa3VtYXJAcXVpY2luYy5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBE
b2N1bWVudCB0aGUgUXVhbGNvbW0gSVBRNTMzMiBVTklQSFkgVVNCIFN1cGVyLXNwZWVkIFBIWQoK
RG9jdW1lbnQgdGhlIFF1YWxjb21tIFVTQjMgMjJ1bGwgVU5JUEhZIHByZXNlbnQgaW4gdGhlIElQ
UTUwMTggYW5kCklQUTUzMzIgU29Dcy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxpcHE1MzMyLXVuaXBoeS11c2Itc3MtcGh5LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20saXBxNTMzMi11bmlw
aHktdXNiLXNzLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAw
MDAwMDAwLi5jYzllY2NhYzUxZGRiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxpcHE1MzMyLXVuaXBoeS11c2Itc3MtcGh5
LnlhbWwKClsgLi4uIF0KCj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAg
ICBjb21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVudW06
Cj4gKyAgICAgICAgICAgICAgLSBxY29tLGlwcTUzMzItdW5pcGh5LXVzYi1zcy1waHkKPiArICAg
IHRoZW46Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY2xvY2tzOgo+ICsgICAgICAg
ICAgaXRlbXM6Cj4gKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IFNoYXJlZCBQQ0llL1VTQjMg
UEhZIEFIQiBjbG9jawo+ICsgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBVU0IzIFBIWSBDRkcg
QUhCIGNsb2NrCj4gKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IFVTQjMgcGlwZSBjbG9jawoK
W1NldmVyaXR5OiBMb3ddCklzIGEgbWluSXRlbXM6IDMgY29uc3RyYWludCBtaXNzaW5nIGZvciB0
aGUgY2xvY2tzIGluIHRoaXMgY29uZGl0aW9uYWwgYmxvY2s/CgpTaW5jZSB0aGUgZ2xvYmFsIGNs
b2NrcyBkZWZpbml0aW9uIHNldHMgbWluSXRlbXM6IDIsIGRldmljZSB0cmVlcyBmb3IgSVBRNTMz
Mgp0aGF0IGluY29ycmVjdGx5IHNwZWNpZnkgb25seSAyIGNsb2NrcyB3aWxsIHNpbGVudGx5IHBh
c3MgZHRfYmluZGluZ19jaGVjawp2YWxpZGF0aW9uLiBUaGUganNvbi1zY2hlbWEgaXRlbXMgbGlz
dCBrZXl3b3JkIG9ubHkgdmFsaWRhdGVzIHRoZSBlbGVtZW50cwpwcmVzZW50IHVwIHRvIHRoZSBz
aXplIG9mIHRoZSBpbnN0YW5jZSBhcnJheTsgaXQgZG9lcyBub3QgZW5mb3JjZSBhcnJheSBsZW5n
dGgKYnkgaXRzZWxmLgoKV291bGQgaXQgYmUgYmV0dGVyIHRvIGFkZCBtaW5JdGVtczogMyBhbG9u
Z3NpZGUgdGhlIGl0ZW1zIGxpc3QgdG8gZW5zdXJlIGFsbAp0aHJlZSBjbG9ja3MgYXJlIHJlcXVp
cmVkIHdoZW4gdGhlIHFjb20saXBxNTMzMi11bmlwaHktdXNiLXNzLXBoeSBjb21wYXRpYmxlCnN0
cmluZyBpcyB1c2VkPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDgxMi1pcHE1MDE4LXVzYjMtdjItMC04ZjM1NWQ3ZmYwZWZAb3V0
bG9vay5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK

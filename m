Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F067CD6E4A
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 10:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+oOC5dxMtSh78TDhvzMjeD12hvGywEVr8QQTXqNnbE=; b=a7R4Pq8WQMqYDU
	p4gDqymiq0DgJo2wP/mvr3krKGR9cZEiJrXtadz1tDOiuz+oQgYS6mPdPhDojle7wlTNmvVOT6sS2
	tCaMeRjr63V2XBRW3YT5XgRLjkjZTraFU7EvGXya1QsPalTrZTHP8lbYfYxoe/W0SlFJtYMdnhjhO
	zlBiZeUxgt+renM98qNFnBzSNyx2eyAH2Tpjc+r4o4SMrusewgb7VZLArOUyns60FH3YHIdkFGjX+
	WVj6LsI6oa0WsVi9m0t6ppTd9JrabVqI7Pthja6cz03s2Ex3UTWnhUk9LKazf0jxCPZ5oVYfe/AGq
	/q+ZifQ6Rhh6/qzNAJNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5Ag-0000000GZ3A-08yz;
	Thu, 04 Jun 2026 10:19:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5Ae-0000000GZ2Y-0Ahy
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 10:19:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7B12844421;
	Thu,  4 Jun 2026 10:19:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B62B51F00893;
	Thu,  4 Jun 2026 10:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780568367;
	bh=gZn445ylNQSu1u037HBoIaLihwmjD+2QAe+Bc01uSko=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fV3KodgDtDXeoGdP6R+urDFfiSnwb6sI0ycabgzAUUocRM+IaCVZOyEfS/iv0MBeN
	 3jmXLqy0vTzybY0R5Q/QEQ0SeXPOt1GuzudIZZpFCepEwQ/Qx1/nafqc8nNcmTDaeV
	 TszLj/EdWTDzKcK8+Q/iS2KdhF1wvZ22psZahc9IZhaJgGE94/FJlhpb1LVSi9o/WV
	 eBDKjOeqAQr7uuaRzgqGVqYF6lih6SZ2y9kbbU9aaGT8KFegnJOUtDcVn8gpVf2Lia
	 A8r3bxUJjDUvYWlha8Z7qtsWFC44riIy1hfcBz6n7A9kWEA6/Y6rWoR+G+bteFMf9o
	 EnCWlM4h8r/Hg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: nuvoton: Add MA35D1 USB2 OTG PHY
  binding
To: "Joey Lu" <a0987203069@gmail.com>
Cc: vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260604101220.1092822-2-a0987203069@gmail.com>
References: <20260604101220.1092822-2-a0987203069@gmail.com>
Date: Thu, 04 Jun 2026 10:19:25 +0000
Message-Id: <20260604101926.B62B51F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGJpbmRpbmcg
aW5jb3JyZWN0bHkgcmVwcmVzZW50cyBhIG11bHRpLXBvcnQgUEhZIGNvbnRyb2xsZXIgYXMgbXVs
dGlwbGUgaW5kZXBlbmRlbnQgbm9kZXMgaW5zdGVhZCBvZiBhIHNpbmdsZSBwcm92aWRlciB3aXRo
IGAjcGh5LWNlbGxzID0gPDE+YC4KLS0KCmNvbW1pdCBlZGZkMjA3NjVkNDE2ZTg5NWJjMTUyZGE1
ZWVmZDNiZjU5ZjQzMWJkCkF1dGhvcjogSm9leSBMdSA8YTA5ODcyMDMwNjlAZ21haWwuY29tPgoK
ZHQtYmluZGluZ3M6IHBoeTogbnV2b3RvbjogQWRkIE1BMzVEMSBVU0IyIE9URyBQSFkgYmluZGlu
ZwoKQWRkcyB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgTnV2
b3RvbiBNQTM1RDEgVVNCIDIuMApPVEcgUEhZIGRyaXZlci4gVGhlIFBIWSBzdXBwb3J0cyB0d28g
cG9ydHMgKE9URyBhbmQgaG9zdC1vbmx5KSBhbmQgYWxsb3dzCmJvYXJkLXNwZWNpZmljIHJlc2lz
dG9yIGNhbGlicmF0aW9uIGFuZCBvdmVyLWN1cnJlbnQgZGV0ZWN0IHBvbGFyaXR5LgoKPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udXZvdG9uLG1h
MzVkMS11c2IyLXBoeS1vdGcueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvbnV2b3RvbixtYTM1ZDEtdXNiMi1waHktb3RnLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L251dm90b24sbWEzNWQxLXVzYjItcGh5LW90Zy55YW1sCgpbIC4uLiBdCgo+ICsg
IG51dm90b24sc3lzOgo+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlv
bnMvcGhhbmRsZS1hcnJheQo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gaXRlbXM6Cj4gKyAgICAg
ICAgICAtIGRlc2NyaXB0aW9uOiBwaGFuZGxlIHRvIHRoZSBzeXN0ZW0gbWFuYWdlbWVudCBzeXNj
b24uCj4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBQSFkgaW5zdGFuY2UgaW5kZXguCj4gKyAg
ICAgICAgICAgIGVudW06Cj4gKyAgICAgICAgICAgICAgLSAwICAgIyBVU0IwLCBPVEcgcG9ydCAo
c2hhcmVkIHdpdGggRFdDMiBnYWRnZXQgY29udHJvbGxlcikKPiArICAgICAgICAgICAgICAtIDEg
ICAjIFVTQjEsIGhvc3Qtb25seSBwb3J0Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgQSBw
aGFuZGxlIHRvIHRoZSBzeXNjb24gbm9kZSBjb3ZlcmluZyB0aGUgU1lTIHJlZ2lzdGVyIGJsb2Nr
LCB3aXRoCj4gKyAgICAgIG9uZSBhcmd1bWVudCBzZWxlY3RpbmcgdGhlIFBIWSBpbnN0YW5jZS4g
SW5kZXggMCBzZWxlY3RzIHRoZSBPVEcKPiArICAgICAgcG9ydCBQSFkgKFVTQjApIGFuZCBpbmRl
eCAxIHNlbGVjdHMgdGhlIGhvc3Qtb25seSBQSFkgKFVTQjEpLgo+ICsKPiArICAiI3BoeS1jZWxs
cyI6Cj4gKyAgICBjb25zdDogMAoKW1NldmVyaXR5OiBNZWRpdW1dClNob3VsZCB0aGlzIG11bHRp
LXBvcnQgUEhZIGNvbnRyb2xsZXIgYmUgcmVwcmVzZW50ZWQgYXMgYSBzaW5nbGUgcHJvdmlkZXIK
bm9kZSB3aXRoICNwaHktY2VsbHMgPSA8MT4gaW5zdGVhZCBvZiBlbWJlZGRpbmcgdGhlIGluZGV4
IGluIG51dm90b24sc3lzPwoKVXNpbmcgaW5kZXBlbmRlbnQgbm9kZXMgZm9yIGVhY2ggcG9ydCB3
aXRoICNwaHktY2VsbHMgPSA8MD4gc2lkZXN0ZXBzIHRoZQpzdGFuZGFyZCBjb25zdW1lciBhcmd1
bWVudCBwYXR0ZXJuIGFuZCBmb3JjZXMgbm9uLXN0YW5kYXJkIG5vZGUgbmFtZXMgdG8KYXZvaWQg
Y29sbGlzaW9ucyBhdCB0aGUgc2FtZSB0cmVlIGxldmVsLgoKWyAuLi4gXQoKPiArICBudXZvdG9u
LG9jLWFjdGl2ZS1oaWdoOgo+ICsgICAgdHlwZTogYm9vbGVhbgo+ICsgICAgZGVzY3JpcHRpb246
Cj4gKyAgICAgIFdoZW4gcHJlc2VudCwgdGhlIG92ZXItY3VycmVudCBkZXRlY3QgaW5wdXQgZnJv
bSB0aGUgVkJVUyBwb3dlcgo+ICsgICAgICBzd2l0Y2ggaXMgdHJlYXRlZCBhcyBhY3RpdmUtaGln
aC4gVGhlIGRlZmF1bHQgKHByb3BlcnR5IGFic2VudCkgaXMKPiArICAgICAgYWN0aXZlLWxvdy4g
VGhpcyBzZXR0aW5nIGlzIHNoYXJlZCBieSBib3RoIFVTQiBob3N0IHBvcnRzLgoKU2luY2UgdGhp
cyBwcm9wZXJ0eSBpcyBleHBsaWNpdGx5IGRlc2NyaWJlZCBhcyBzaGFyZWQgYnkgYm90aCBwb3J0
cywgZG9lcwppbnN0YW50aWF0aW5nIHNlcGFyYXRlIG5vZGVzIHBlciBwb3J0IHJpc2sgY29uZmxp
Y3Rpbmcgc3RhdGVzIGlmIHRoZSBub2Rlcwpjb25maWd1cmUgdGhpcyBwcm9wZXJ0eSBkaWZmZXJl
bnRseT8KCkEgc2luZ2xlIFBIWSBwcm92aWRlciBub2RlIHdvdWxkIGFsbG93IHNoYXJlZCBwcm9w
ZXJ0aWVzIHRvIGJlIGRlZmluZWQgb25jZSwKd2hpbGUgY29uc3VtZXJzIGNvdWxkIHNwZWNpZnkg
dGhlaXIgcG9ydCBpbmRleCB2aWEgc3RhbmRhcmQgcGh5cyBhcmd1bWVudHMuCgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA0MTAx
MjIwLjEwOTI4MjItMS1hMDk4NzIwMzA2OUBnbWFpbC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

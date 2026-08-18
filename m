Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58EB8C5DF7D
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaE/9euo5CXx8pD14oHFmLF8xN1esmKe9tppL4Hqpsc=; b=qIsI+l0nVf0k9X
	Hz4rqYU3+jK5Fj1n7oMRxqA/O5FETMFWmjxHBKRnfYB43pBg0QYcETSEuavnj51mYosTZ3eUSYo1Z
	vHyVBYgQPqi2I3MZlp8cgMk47jZYo/QF54oao9JTORqfwi2NwAgfELVK9wv3ytJL4xxD2yYVAEqWM
	7mAg4VcIDwqCG2wGWOXTqAyvHlxoNjggeVut2ijWsr/EEmqOJOyElvWbOUHYmR4pBXPga9fMS3aSB
	7kbGrTaLmJRH98KedD2cIHG4a5VfVIF02QVudFTULHxXETVQxp1ga0f8m6t4kbh1Tcgt1FH6sjJBs
	7/TXvag4HxHR4jYqIJHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGAg-00000007dJG-0J9Q;
	Tue, 18 Aug 2026 09:31:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGAf-00000007dIx-02j1
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:31:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C16C74072A;
	Tue, 18 Aug 2026 09:31:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E556C1F000E9;
	Tue, 18 Aug 2026 09:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787045508;
	bh=/osMCfdFU5SEjl+FL2UCRvm7Kij1P5u1jx3B9DLMi9M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bVP9IDgWirqxwIpjvPxGaqIdVHx+zWYeYaX/54Aaw9rGmnbGsgPmA6p6QssZqbgNA
	 NyrrW7uwFrBO9Sa5Xf92E3PNVjrs+YFlea7n9fkknA9iZT0f+KKLvMfQa7oQazoYCW
	 I6pGmzo4sg26bRziwQtYXAecVJN+ht5Eygv9Y3/JKPE9Q7oLm0NAOS8pCWSOV04pyA
	 uG/G1dncygvLt74/toMGIpgtfWYJsv3LGs684uCsftjT6iXueaw8ljnAKCiVqZydZp
	 50m9Gnb7ymVVL+bblgv7qSyIJpcK0YulM0pgEotPZXKB88zNlzNVJb4QNFwywj5DL/
	 q8DRdyQk3n5Tw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 4/4] arm64: dts: freescale: Add chargebyte Charge
 Control Y
To: "Stefan Wahren" <wahrenst@gmx.net>
Cc: imx@lists.linux.dev, "Oliver Hartkopp" <socketcan@hartkopp.net>, "Oleksij
 Rempel" <o.rempel@pengutronix.de>, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, "Marc
 Kleine-Budde" <mkl@pengutronix.de>, linux-can@vger.kernel.org, neil.armstrong@linaro.org, "Vincent
 Mailhol" <mailhol@kernel.org>, robh@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260818091701.6441-5-wahrenst@gmx.net>
References: <20260818091701.6441-1-wahrenst@gmx.net>
 <20260818091701.6441-5-wahrenst@gmx.net>
Date: Tue, 18 Aug 2026 09:31:47 +0000
Message-Id: <20260818093147.E556C1F000E9@smtp.kernel.org>
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
NCBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIExBTjg2NTEg
ZXRoZXJuZXQgZGV2aWNlIGlzIG1pc3NpbmcgaXRzIGhhcmR3YXJlIHJlc2V0IGNvbmZpZ3VyYXRp
b24sIGxlYXZpbmcgdGhlIGBYX25SU1RfTEFOYCBwaW4gdW5tYW5hZ2VkLgotIFtNZWRpdW1dIFRo
ZSBTRCBjYXJkIHNsb3QgcG93ZXIvcmVzZXQgcGluIChgU0QyX25SRVNFVGApIGlzIG5hbWVkIGlu
IGBncGlvLWxpbmUtbmFtZXNgIGJ1dCBpcyBub3QgYXNzb2NpYXRlZCB3aXRoIGFueSByZWd1bGF0
b3Igb3IgcmVzZXQgY29udHJvbC4KLSBbTG93XSBUaGUgR1BJTyBsYWJlbCBgWF9MQU5fbkNTYCBp
cyBpbmNvcnJlY3RseSBwbGFjZWQgYXQgaW5kZXggMCBvZiBgJmdwaW8yYCdzIGBncGlvLWxpbmUt
bmFtZXNgIGFycmF5LCBidXQgdGhlIGBsYW44NjUxYCBjaGlwIHNlbGVjdCBpcyBhY3R1YWxseSB3
aXJlZCB0byBpbmRleCA4LgotIFtMb3ddIFRoZSBgdGksbGVkcy1wb2xhcml0eWAgcHJvcGVydHkg
dXNlZCBpbiBib3RoIEV0aGVybmV0IFBIWSBub2RlcyBpcyB1bmRvY3VtZW50ZWQsIGludmFsaWQs
IGFuZCB3aWxsIGNhdXNlIGBkdGJzX2NoZWNrYCB2YWxpZGF0aW9uIGVycm9ycy4KLS0KCi0tLSBQ
YXRjaCBbNF06IFtQQVRDSCBSRkMgNC80XSBhcm02NDogZHRzOiBmcmVlc2NhbGU6IEFkZCBjaGFy
Z2VieXRlIENoYXJnZSBDb250cm9sIFkgLS0tCmNvbW1pdCBhMTc3YTVlMGFjYmE2MjE1Njg3NmVh
NmRjODQ0NTc3ODk3ODZiZmI4CkF1dGhvcjogU3RlZmFuIFdhaHJlbiA8d2FocmVuc3RAZ214Lm5l
dD4KCmFybTY0OiBkdHM6IGZyZWVzY2FsZTogQWRkIGNoYXJnZWJ5dGUgQ2hhcmdlIENvbnRyb2wg
WQoKVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciB0aGUgY2hhcmdlYnl0ZSBDaGFyZ2UgQ29u
dHJvbCBZLCBhbiBFVlNFCmZvciBNQ1MgY2hhcmdpbmcgc3RhdGlvbnMgYmFzZWQgb24gdGhlIHBo
eUNPUkUtaS5NWCA5MyBBUk0gU29NLiBJdAphZGRzIHRoZSBkZXZpY2V0cmVlIGZvciB0aGUgYm9h
cmQsIGluY2x1ZGluZyBldGhlcm5ldCBpbnRlcmZhY2VzLCBDQU4sClNQSSwgYW5kIFNEIGNhcmQg
Y29uZmlndXJhdGlvbnMuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg5My1jaGFyZ2UtY29udHJvbC15LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDkzLWNoYXJnZS1jb250cm9sLXkuZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OTMtY2hhcmdlLWNvbnRyb2wteS5kdHMKPiBAQCAtMCwwICsxLDM4NyBAQApbIC4uLiBdCj4gKy8q
IEV0aGVybmV0IDEgUEhZICovCj4gKyZldGhwaHkxIHsKPiArCXRpLGxlZHMtcG9sYXJpdHkgPSA8
MT47IC8vIGFjdGl2ZS1oaWdoCj4gK307CgpbU2V2ZXJpdHk6IExvd10KSXMgdGksbGVkcy1wb2xh
cml0eSBzdXBwb3J0ZWQgYnkgdGhlIGRldmljZXRyZWUgYmluZGluZ3M/IEl0IGRvZXMgbm90CmFw
cGVhciB0byBiZSBkb2N1bWVudGVkIGluIHRoZSBzY2hlbWEgYW5kIG1pZ2h0IGNhdXNlIGR0YnNf
Y2hlY2sgdmFsaWRhdGlvbgplcnJvcnMuCgpbIC4uLiBdCj4gKyZncGlvMiB7Cj4gKwlncGlvLWxp
bmUtbmFtZXMgPSAiWF9MQU5fbkNTIiwgIiIsICIiLCAiIiwgIiIsCj4gKwkJCSAgIiIsICIiLCAi
WF9MQU5fbklSUSIsICIiLCAiIiwKCltTZXZlcml0eTogTG93XQpTaG91bGQgdGhlIFhfTEFOX25D
UyBsYWJlbCBiZSBwbGFjZWQgYXQgaW5kZXggOCBpbnN0ZWFkIG9mIGluZGV4IDA/IFRoZQpscHNw
aTMgbm9kZSBiZWxvdyBjb25maWd1cmVzIHRoZSBjcy1ncGlvcyB1c2luZyBpbmRleCA4IG9uIHRo
aXMgYmFuay4KClsgLi4uIF0KPiArLyogTUNTIEV0aGVybmV0IFNQSSAqLwo+ICsmbHBzcGkzIHsK
PiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JnBpbmN0cmxf
bHBzcGkzPjsKPiArCW51bS1jcyA9IDwxPjsKPiArCWNzLWdwaW9zID0gPCZncGlvMiA4IEdQSU9f
QUNUSVZFX0xPVz47Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gKwo+ICsJbGFuODY1MTogZXRoZXJu
ZXRAMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAsbGFuODY1MSIsICJtaWNyb2NoaXAs
bGFuODY1MCI7Cj4gKwkJcmVnID0gPDA+Owo+ICsJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8y
PjsKPiArCQlpbnRlcnJ1cHRzID0gPDcgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPiArCQlzcGktbWF4
LWZyZXF1ZW5jeSA9IDwyNTAwMDAwMD47Cj4gKwo+ICsJCW52bWVtLWNlbGxzID0gPCZldGgyX21h
Y19hZGRyZXNzIDA+Owo+ICsJCW52bWVtLWNlbGwtbmFtZXMgPSAibWFjLWFkZHJlc3MiOwo+ICsJ
fTsKPiArfTsKCltTZXZlcml0eTogTWVkaXVtXQpUaGUgcGluIFhfblJTVF9MQU4gaXMgbGFiZWxl
ZCBpbiB0aGUgZ3BpbzEgbm9kZSwgYnV0IHRoaXMgZXRoZXJuZXQgbm9kZQpkb2Vzbid0IHNlZW0g
dG8gY29uZmlndXJlIGEgcmVzZXQgbWVjaGFuaXNtLiBEb2VzIHRoZSBMQU44NjUxIG5lZWQgYSBy
ZXNldApjb250cm9sIG9yIGdwaW8taG9nIHRvIGVuc3VyZSB0aGUgcGluIGlzIGRyaXZlbiBhbmQg
bm90IGxlZnQgZmxvYXRpbmc/CgpbIC4uLiBdCj4gKy8qIEV0aGVybmV0IDIgUEhZICovCj4gKyZt
ZGlvIHsKPiArCWV0aHBoeTI6IGV0aGVybmV0LXBoeUAyIHsKPiArCQlyZWcgPSA8Mj47Cj4gKwkJ
Y29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWQyMDAwLmExNDAiOwo+ICsJCWNsb2NrcyA9IDwm
Y2xrIElNWDkzX0NMS19FTkVUX1JFRl9QSFk+Owo+ICsJCXJlc2V0LWdwaW9zID0gPCZncGlvNCAx
MyBHUElPX0FDVElWRV9ISUdIPjsKPiArCQlyZXNldC1hc3NlcnQtdXMgPSA8MzA+Owo+ICsJCXJl
c2V0LWRlYXNzZXJ0LXVzID0gPDUwMDAwPjsKPiArCQl0aSxsZWRzLXBvbGFyaXR5ID0gPDE+OyAv
LyBhY3RpdmUtaGlnaAo+ICsJfTsKPiArfTsKCltTZXZlcml0eTogTG93XQpTaW1pbGFyIHRvIHRo
ZSBldGhlcm5ldCAxIFBIWSBhYm92ZSwgaXMgdGhpcyB0aSxsZWRzLXBvbGFyaXR5IHByb3BlcnR5
CnN1cHBvcnRlZCBieSB0aGUgZGV2aWNldHJlZSBiaW5kaW5ncz8KCj4gKwo+ICsvKiBTRCAqLwo+
ICsmdXNkaGMyIHsKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAg
PSA8JnBpbmN0cmxfdXNkaGMyX2RlZmF1bHQ+LCA8JnBpbmN0cmxfdXNkaGMyX2NkPjsKPiArCWNk
LWdwaW9zID0gPCZncGlvMyAwMCBHUElPX0FDVElWRV9MT1c+Owo+ICsJYnVzLXdpZHRoID0gPDQ+
Owo+ICsJZGlzYWJsZS13cDsKPiArCW5vLXNkaW87Cj4gKwluby1tbWM7Cj4gKwluby0xLTgtdjsK
PiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKCltTZXZlcml0eTogTWVkaXVtXQpUaGUgU0QyX25S
RVNFVCBwaW4gaXMgbGFiZWxlZCBpbiB0aGUgZ3BpbzMgbm9kZSwgYnV0IGRvZXMgdGhpcyB1c2Ro
YzIgbm9kZQpuZWVkIGEgdm1tYy1zdXBwbHkgdXNpbmcgdGhhdCBwaW4gYXMgYSBmaXhlZCByZWd1
bGF0b3IgdG8gZW5zdXJlIHRoZSBTRApjYXJkIHNsb3QgaXMgcmVsaWFibHkgcG93ZXJlZD8KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA4MTgwOTE3MDEuNjQ0MS0xLXdhaHJlbnN0QGdteC5uZXQ/cGFydD00CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

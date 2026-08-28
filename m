Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4470C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 19:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErSZ/5NjQwBtiEMMtBfAW80KBWJ5rnQXS2zNlgLzC0k=; b=0rFAdiQI2poOEb
	Y6WNo2ZT4y+yz18tbh66RS4iFgpnUrSDiBF+2tfmui3/BzDRtc91LUqU6ztg3IHVhEegut6zLEBO8
	Eln7EIsZIQ5+dezs/pIGsBqeLUIe3vAF0uMfuOQ5+97KoETXqsAoRvupZU/jzKWpn/0xJrQS6OtLR
	/VMaBbKl2wiBb9XWB4GoAKfM7plHRs+lIDXWx0TZeCRIbSdDN53GxxaLd9Dax1Q8QauA8b/ObkTfz
	4Eb0+u5YaUzv+HlLYHE/Ympa0wjmkIm+O717hJsdnD7+pj/jBgCTTOHNB/fA7+OPacIPAH2I+1HlK
	5UITaqTVMt4rAPT3tAWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x02Ft-00000006MNE-1dec;
	Fri, 28 Aug 2026 19:28:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x02Fs-00000006MN4-1Jwa
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 19:28:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C27DC429D1;
	Fri, 28 Aug 2026 19:28:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3610C1F000E9;
	Fri, 28 Aug 2026 19:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787945327;
	bh=HtLBP5lu0u/xa76enarUZIKVSgbStz0fuzGAp2YOXsA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kteZJqHHN2NlJxtytEumk6kkyMtQPbVMI8AyNz8hb3xNSsv+4i0av6R0zjakWcV2Y
	 Bu4aGpog6aC+ongJjAs5TkUK/krciTNERSZSD1/3i0FqrjG3w4YblGRnjH/BtRwMQ/
	 27MPOyulWHoi0EDquUrKwuBEwcHVDbIMnuJ1mawSRbpRwRssCUOtyyX4xa7gtnbWhI
	 CNk9nDRCqbnEaPzK4KNKbEtd5I2iZUI/trKkcWf0FxSQg85AfNwIEl8xkjReHSSQUS
	 CdOIf7chEpbJD0ybItSTyklTlPZSdYMujgqgIiCz6Q5xICE4ungPecQvrqNJPwg6T2
	 xwPgHmpGb15/Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Document Renesas Multi-Protocol
 PHY driver for R-Car X5H
To: "Marek Vasut" <marek.vasut+renesas@mailbox.org>
Cc: robh@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260828192223.402422-1-marek.vasut+renesas@mailbox.org>
References: <20260828192223.402422-1-marek.vasut+renesas@mailbox.org>
Date: Fri, 28 Aug 2026 19:28:46 +0000
Message-Id: <20260828192847.3610C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGRlc2NyaXB0aW9u
IGZvciBgcmVuZXNhcyxudW0tbGFuZXNgIGluY29ycmVjdGx5IHN0YXRlcyBpdCBhcHBsaWVzIHRv
ICJlYWNoIFBIWSBpbnB1dCIsIHdoaWNoIGNvbnRyYWRpY3RzIHRoZSBoYXJkd2FyZSB0b3BvbG9n
eSBhbmQgdGhlIHNjaGVtYSBjb25zdHJhaW50cy4KLS0KCmNvbW1pdCBhZTU4MjI0MTU2ZjBhMTE3
NGFhZmU5NzY5MmU2YmY3MTIzZmRiMjBiCkF1dGhvcjogTWFyZWsgVmFzdXQgPG1hcmVrLnZhc3V0
K3JlbmVzYXNAbWFpbGJveC5vcmc+CgpkdC1iaW5kaW5nczogcGh5OiBEb2N1bWVudCBSZW5lc2Fz
IE11bHRpLVByb3RvY29sIFBIWSBkcml2ZXIgZm9yIFItQ2FyIFg1SAoKVGhpcyBjb21taXQgaW50
cm9kdWNlcyBkZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBSZW5lc2Fz
Ck11bHRpLVByb3RvY29sIFBIWSBmb3VuZCBpbiB0aGUgUi1DYXIgWDVIIFNvQy4gSXQgZGVzY3Jp
YmVzIGEgbXVsdGlwbGV4aW5nIFBIWQpibG9jayB0aGF0IHJvdXRlcyBmaXZlIGlucHV0cyB0byBm
b3VyIHNlcGFyYXRlIElPIGJsb2Nrcy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcmVuZXNhcyxyY2FyLWdlbjUtbXBwaHkueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcmVuZXNhcyxyY2FyLWdlbjUtbXBwaHku
eWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMmRhOGJl
MmQzZGU4Mgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3JlbmVzYXMscmNhci1nZW41LW1wcGh5LnlhbWwKClsgLi4uIF0KCj4gKyAg
JyNwaHktY2VsbHMnOgo+ICsgICAgY29uc3Q6IDEKPiArCj4gKyAgcmVuZXNhcyxudW0tbGFuZXM6
Cj4gKyAgICBkZXNjcmlwdGlvbjogUENJZSBsYW5lIGNvdW50IGZvciBlYWNoIFBIWSBpbnB1dC4K
CltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgZGVzY3JpcHRpb24gYWNjdXJhdGVseSByZWZsZWN0
IHRoZSBzY2hlbWEgYW5kIGhhcmR3YXJlIHRvcG9sb2d5PwoKTG9va2luZyBhdCBwcm9wZXJ0aWVz
LnJlbmVzYXMsbnVtLWxhbmVzLmRlc2NyaXB0aW9uLCB0aGUgdGV4dCBzdGF0ZXMgdGhlCnByb3Bl
cnR5IGFwcGxpZXMgdG8gZWFjaCBQSFkgaW5wdXQsIGJ1dCB0aGUgY29tbWl0IG1lc3NhZ2Ugbm90
ZXMgdGhlcmUgYXJlCmZpdmUgaW5wdXRzIGFuZCBmb3VyIG91dHB1dHMuIFRoaXMgYXBwZWFycyB0
byBjb250cmFkaWN0IHRoZSBhcnJheQpjb25zdHJhaW50cyBpbW1lZGlhdGVseSBiZWxvdyBpdCB3
aGljaCBlbmZvcmNlIGEgbWF4aW11bSBvZiA0IGl0ZW1zLiAKClNob3VsZCB0aGlzIGRlc2NyaXB0
aW9uIHBlcmhhcHMgc2F5ICJlYWNoIFBIWSBvdXRwdXQiIGluc3RlYWQsIG9yIHNob3VsZCB0aGUK
YXJyYXkgbGltaXRzIGJlIHVwZGF0ZWQgdG8gYWxsb3cgNSBpdGVtcyBmb3IgdGhlIGlucHV0cz8K
Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJy
YXkKPiArICAgIG1pbkl0ZW1zOiA0Cj4gKyAgICBtYXhJdGVtczogNAo+ICsKPiArICByZW5lc2Fz
LHBoeS10eXBlOgoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyODE5MjIyMy40MDI0MjItMS1tYXJlay52YXN1dCty
ZW5lc2FzQG1haWxib3gub3JnP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

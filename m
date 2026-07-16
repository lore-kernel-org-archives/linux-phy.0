Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3157C44512
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 22:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YauJDaQz6+WQjLnWa6zln6cM5lwV41l+DnmaLAxX0f8=; b=jqLFHg1MIAk0Wm
	vnzDXd5LXCq8DvdKIfeoPOrTWC+U4MRPJFy3Kk19hj1R3iKIyMqHCR83PA5HqjGOA5dUt0D7KWw5w
	D0+GFLcCxqaRYD4MZu5nIQlz17yQvCtHMrzPUah/UHwQs39fZrR7xiCddYzBuxU1Ql1VNbf0w8go8
	Cz5u03MPRGgjubIQrAoPJ3eIoUlOBpsQjqBMUvFKuZef8+FKjBcqcxpWc2xnYTYhoGguQx0xybKKH
	wO99mMup6snCohCAYdehaAUfuZkmUsoc3L1WsdxWH1YkjzIzAuXRc+oWI2VY/sxJ7l7Ixpct12v+m
	CpnqIeXr0aU8U5sVCI/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUWE-00000000j5M-2lIt;
	Thu, 16 Jul 2026 22:25:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUWC-00000000j4u-2Up6
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 22:25:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5383E414B8;
	Thu, 16 Jul 2026 22:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC76A1F000E9;
	Thu, 16 Jul 2026 22:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784240724;
	bh=gU0iP13+RfouvfHVkaahFQ1zO465Kj6qHfc4QGCebPs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QBrepYGTBYqJBAFbekJ3nGuMapJiHV2q5V1BR9Rd5RXKOw/NKfkN/o7hRK2/OZRSQ
	 SiO6/who72wfeiKREfwEPKaSOLqD07+CkcHuW7C383nJXhDf8waH2x66PKm/TTpHzs
	 4eKMv3w+CBtD+L+Lb6Hrg5X0ORmwvxygYPkIusZWXMdjJHoV6T/iF+hwgnrG15D3Cb
	 L8+NHrLOoiNn2DH3e8Vc0Gy3POmPlo1ycAdY0hX84zumSayHZVA/KPGWpKvkl3ccI1
	 K/HIny/tRntioUXPQpyT68HdMmQXjFk06hadCvkA2KoUg/LMRwjOUAyltP2uqADOji
	 c6k4nBPvtxFJQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 03/13] dt-bindings: clk: zte: Add zx297520v3 matrix
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260717-zx29clk-v7-3-408411cfcf36@gmail.com>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-3-408411cfcf36@gmail.com>
Date: Thu, 16 Jul 2026 22:25:23 +0000
Message-Id: <20260716222523.BC76A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG5ld2x5IGFkZGVk
IGNsb2NrIGFuZCByZXNldCBtYWNybyBkZWZpbml0aW9ucyBvdmVybGFwIHdpdGggZXhpc3Rpbmcg
ZGVmaW5pdGlvbnMgZm9yIGEgZGlmZmVyZW50IGNvbnRyb2xsZXIgKHRvcGNybSkgaW4gdGhlIHNh
bWUgaGVhZGVyIGZpbGVzLCB1c2luZyB0aGUgc2FtZSBgWlgyOTc1MjBWM19gIHByZWZpeCB3aXRo
b3V0IGRpc2FtYmlndWF0aW9uLgotLQoKLS0tIFBhdGNoIFszXTogW1BBVENIIHY3IDAzLzEzXSBk
dC1iaW5kaW5nczogY2xrOiB6dGU6IEFkZCB6eDI5NzUyMHYzIG1hdHJpeCBjbG9jayBhbmQgcmVz
ZXQgY29udHJvbGxlciAtLS0KY29tbWl0IDVlYzBkZTYzNzNmZDAzNGExNDZhN2JhZTg0MDA5ZDM4
MTQ1NTJlZDYKQXV0aG9yOiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwu
Y29tPgoKZHQtYmluZGluZ3M6IGNsazogenRlOiBBZGQgengyOTc1MjB2MyBtYXRyaXggY2xvY2sg
YW5kIHJlc2V0IGNvbnRyb2xsZXIKClRoaXMgY29udHJvbGxlciBjb250YWlucyBjbG9ja3MgYW5k
IHJlc2V0cyBmb3IgaGlnaCBzcGVlZCBkZXZpY2VzIG9uIHRoZQp6eDI5NzUyMHYzIGJvYXJkIGFu
ZCBoYXJkd2FyZSBzcGlubG9ja3MgdGhhdCBJIGV4cGVjdCB3aWxsIGJlIG5lY2Vzc2FyeQp0byBj
b21tdW5pY2F0ZSBjb3JyZWN0bHkgd2l0aCB0aGUgTFRFIERTUCBmaXJtd2FyZSBibG9iLiBBIHNp
bXBsZSBNRkQgZHJpdmVyCndpbGwgaW5zdGFudGlhdGUgaW5kZXBlbmRlbnQgY2xvY2ssIHJlc2V0
IGFuZCBod2xvY2sgZHJpdmVycy4KCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3Mv
Y2xvY2svenRlLHp4Mjk3NTIwdjMtY2xrLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3p0
ZSx6eDI5NzUyMHYzLWNsay5oCj4gaW5kZXggMWYwMTBmZjRlNmNhNi4uMDllZTNkZTY3OWQ5NiAx
MDA2NDQKPiAtLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLWNs
ay5oCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My1jbGsu
aAo+IEBAIC02Myw0ICs2Myw0NSBAQAo+ICAjZGVmaW5lIFpYMjk3NTIwVjNfSFNJQ19XQ0xLCQkJ
NTUKPiAgI2RlZmluZSBaWDI5NzUyMFYzX0hTSUNfUENMSwkJCTU2Cj4gIAo+ICsjZGVmaW5lIFpY
Mjk3NTIwVjNfU1lTX1RJTUVSX1dDTEsJCTEKPiArI2RlZmluZSBaWDI5NzUyMFYzX0NQVV9XQ0xL
CQkJMgoKW1NldmVyaXR5OiBMb3ddCkNvdWxkIHRoZXNlIG5ldyBjbG9jayBtYWNyb3Mgb3Zlcmxh
cCB3aXRoIHRoZSBleGlzdGluZyBvbmVzIGluIHRoaXMgaGVhZGVyCmFuZCBjYXVzZSBjb25mdXNp
b24/CgpUaGUgZXhpc3RpbmcgdG9wY3JtIGNsb2NrcyBpbiB0aGlzIGhlYWRlciBhbHNvIHN0YXJ0
IGF0IDEgYW5kIHVzZSB0aGUgc2FtZQpaWDI5NzUyMFYzXyBwcmVmaXgsIGZvciBleGFtcGxlIFpY
Mjk3NTIwVjNfTTBfV0NMSy4gSXMgdGhlcmUgYSByaXNrIHRoYXQgYQpkZXZlbG9wZXIgbWlnaHQg
YWNjaWRlbnRhbGx5IHVzZSBhIG1hdHJpeGNybSBjbG9jayBtYWNybyBmb3IgYSB0b3Bjcm0gbm9k
ZQpvciB2aWNlIHZlcnNhPyBJZiB0aGV5IGRvLCB0aGUgQyBwcmVwcm9jZXNzb3Igd2lsbCBzdWJz
dGl0dXRlIHRoZQpvdmVybGFwcGluZyBpbnRlZ2VyIHdpdGhvdXQgZXJyb3IuCgpXb3VsZCBpdCBi
ZSBzYWZlciB0byBhZGQgYSBkaXN0aW5jdCBwcmVmaXggZm9yIHRoZSBtYXRyaXhjcm0gY2xvY2tz
LCBzdWNoCmFzIFpYMjk3NTIwVjNfTUFUUklYXz8KClsgLi4uIF0KCj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvenRlLHp4Mjk3NTIwdjMtcmVzZXQuaCBiL2luY2x1ZGUv
ZHQtYmluZGluZ3MvcmVzZXQvenRlLHp4Mjk3NTIwdjMtcmVzZXQuaAo+IGluZGV4IDQzZGI3MmJi
NTlkZTAuLjQ2ODJkNGE1OTljNmEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9y
ZXNldC96dGUsengyOTc1MjB2My1yZXNldC5oCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9y
ZXNldC96dGUsengyOTc1MjB2My1yZXNldC5oCj4gQEAgLTI5LDQgKzI5LDE2IEBACj4gICNkZWZp
bmUgWlgyOTc1MjBWM19IU0lDX1BIWV9SRVNFVAkJMjAKPiAgI2RlZmluZSBaWDI5NzUyMFYzX0hT
SUNfUkVTRVQJCQkyMQo+ICAKPiArI2RlZmluZSBaWDI5NzUyMFYzX0NQVV9SRVNFVAkJCTAKPiAr
I2RlZmluZSBaWDI5NzUyMFYzX0REUl9DVFJMX1JFU0VUCQkxCgpbU2V2ZXJpdHk6IExvd10KRG9l
cyB0aGlzIGlkZW50aWNhbCBwcmVmaXggYWxzbyBjYXVzZSBhbiBvdmVybGFwIHJpc2sgZm9yIHJl
c2V0IGRlZmluaXRpb25zPwoKVGhlIG5ldyBtYXRyaXhjcm0gcmVzZXRzIHN0YXJ0IGF0IDAgYW5k
IHVzZSB0aGUgWlgyOTc1MjBWM18gcHJlZml4LCB3aGljaApvdmVybGFwcyB3aXRoIHRoZSBleGlz
dGluZyB0b3Bjcm0gcmVzZXRzIGxpa2UgWlgyOTc1MjBWM19aU1BfUkVTRVQuCgpDb3VsZCBhZGRp
bmcgYSBtYXRyaXhjcm0tc3BlY2lmaWMgcHJlZml4IGhlcmUgYWxzbyBoZWxwIHByZXZlbnQgcG90
ZW50aWFsCmRldmljZSB0cmVlIGNvbmZpZ3VyYXRpb24gZXJyb3JzPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNy16eDI5Y2xr
LXY3LTAtNDA4NDExY2ZjZjM2QGdtYWlsLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

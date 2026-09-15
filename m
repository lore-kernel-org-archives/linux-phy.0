Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3B0DC982C1
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qij4YbhqGrWEBbK7jYMYdG+4JdfJ6DF/DtBAAW0bgPc=; b=Dr8tJp4WrGlbrH
	9UcM1/jhVZGFCmH6Sjzq/59Y++0njBT4rP/O6VKfMHE+iCs4yvi39NUN7ga6HvlG3B0EigS2lAbcV
	HmrmICeGfMdMGORt8ffaPF+gC0HXBtqcqR1acUcnts1wOR2G1IYzvWQXSswUbZ/+hJz4xxcsCaeDA
	VI7pEbzlmeBfWPMshS6zSrqQgWfNeVFQrxRP8HuCe1p9E8RWeV8NjNK+VV+IyGTsdY2hv5HuBIuVf
	2bPO20cdaywpt2e89m+QnWCig+1ou5n4eP3Dim2J0Nra7fpHaZbIlD+drvgB0W+I+8RMtS24P7Tau
	3/r9BAHsYmgtUApiv2DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VJ2-00000007GLZ-2fvb;
	Tue, 15 Sep 2026 15:42:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VJ1-00000007GKw-1lSm
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:42:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D84E4600C8;
	Tue, 15 Sep 2026 15:42:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F6931F00893;
	Tue, 15 Sep 2026 15:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486966;
	bh=e8CA6A8+NEtvZVDKgf3JyCaOYgWoKmHI1CSRlYOsO9U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m4AcCZ4eN0PJYC+6Kr7kdugxed4FtiCo+2MZR2ao2+V/K3jD/uQOz2YbShVwzBtnG
	 kb8ceIGGiJrLDSgWcSrBDx+i+XOBtes+rTK56qKzLUcfOY/N4Yk2q1CdV+/mF2x+DR
	 9cx3gStlE8ZGuZBtt+730Upg4dV2aaSrmZoOwJ/0odxds0hvjgPkRpT1wtha8+/jc3
	 dMjwlEF5RIrzsO/kj7UIPQpySbf1l9c86TzYQO9zo1GeTOLRN5bCkc2TBjZ0y8uvnP
	 vacuhVgtLIs+z+NVPFOa8i1c73FjjWzUbnp+loePtkTW1CJ4jvtBErEVtyp+WYj0XC
	 UHkScHcGqvppg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 13/20] soc: starfive: Add jh7110-vout-subsystem
 driver
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, mfd@lists.linux.dev, lee@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, linux-clk@vger.kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-13-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153236eucas1p1712930425e569f894c870299f245e99f@eucas1p1.samsung.com>
 <20260915-jh7110-clean-send-v4-13-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:42:45 +0000
Message-Id: <20260915154246.1F6931F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gc29jOiBzdGFyZml2
ZTogTm9DIGJ1cyBjbG9jayBsZWFrcyBwb3dlciBkdXJpbmcgc3lzdGVtIHNsZWVwCi0tCgpjb21t
aXQgZjRiODhkMzgzMWRmOGRjMzBmYjQ0MmVkYjI0NDk5NjQzYzkyNGE1OApBdXRob3I6IE1pY2hh
bCBXaWxjenluc2tpIDxtLndpbGN6eW5za2lAc2Ftc3VuZy5jb20+CnNvYzogc3RhcmZpdmU6IEFk
ZCBqaDcxMTAtdm91dC1zdWJzeXN0ZW0gZHJpdmVyCgpUaGlzIGNvbW1pdCBhZGRzIGEgcGFyZW50
IGRyaXZlciBmb3IgdGhlIFN0YXJGaXZlIEpINzExMCB2aWRlbyBvdXRwdXQKc3Vic3lzdGVtLiBJ
dCBjbGFpbXMgdGhlIE5vQyBkaXNwbGF5IGJ1cyBjbG9jayBhbmQgcmVzZXQsIGFuZCBob2xkcyBh
IHJ1bnRpbWUKUE0gcmVmZXJlbmNlIHRvIGtlZXAgdGhlIFBEX1ZPVVQgcG93ZXIgZG9tYWluIGFj
dGl2ZSBmb3IgYXMgbG9uZyBhcyBhbnkgY2hpbGQKZGV2aWNlIGV4aXN0cy4KCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc29jL3N0YXJmaXZlL2poNzExMC12b3V0LXN1YnN5c3RlbS5jIGIvZHJpdmVy
cy9zb2Mvc3RhcmZpdmUvamg3MTEwLXZvdXQtc3Vic3lzdGVtLmMKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmFmNjMyNjkyZTIxMzkKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvZHJpdmVycy9zb2Mvc3RhcmZpdmUvamg3MTEwLXZvdXQtc3Vic3lzdGVtLmMKClsg
Li4uIF0KCj4gKwlidXNfY2xrID0gZGV2bV9jbGtfZ2V0X2VuYWJsZWQoZGV2LCBOVUxMKTsKPiAr
CWlmIChJU19FUlIoYnVzX2NsaykpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJf
RVJSKGJ1c19jbGspLAo+ICsJCQkJICAgICAiRmFpbGVkIHRvIGVuYWJsZSBOb0MgYnVzIGNsb2Nr
XG4iKTsKPiArCj4gKwlidXNfcnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmVf
ZGVhc3NlcnRlZChkZXYsIE5VTEwpOwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBjYXVz
ZSBhIHBvd2VyIGxlYWsgZHVyaW5nIHN5c3RlbSBzdXNwZW5kPyBUaGUgTm9DIGJ1cyBjbG9jayBp
cwplbmFibGVkIGhlcmUsIGJ1dCB0aGUgcG9pbnRlciB0byBidXNfY2xrIGlzIGRpc2NhcmRlZC4g
VGhpcyBtZWFucyBpdCBjYW5ub3QKYmUgZGlzYWJsZWQgbGF0ZXIgZHVyaW5nIHN5c3RlbSBzbGVl
cCB0cmFuc2l0aW9ucy4gCgpXaGlsZSB0aGUgZ2VucGQgZnJhbWV3b3JrIG1hbmFnZXMgdGhlIFBE
X1ZPVVQgZG9tYWluIGR1cmluZyBzeXN0ZW0gc2xlZXAsIHRoZQpjbG9jayBmcmFtZXdvcmsgZG9l
c24ndCBhdXRvbWF0aWNhbGx5IGRpc2FibGUgY2xvY2tzLiBUaGUgc29mdHdhcmUgZW5hYmxlCmNv
dW50IHdpbGwgcmVtYWluIGdyZWF0ZXIgdGhhbiB6ZXJvLCB3aGljaCBjb3VsZCBrZWVwIHRoZSBO
b0MgYnVzIGNsb2NrIGFuZAppdHMgcGFyZW50IFBMTHMgYWN0aXZlIGFuZCBsZWFrIHBvd2VyIGR1
cmluZyBzdXNwZW5kIChlLmcuLCBzdXNwZW5kLXRvLVJBTSkuCgpbIC4uLiBdCgo+ICtzdGF0aWMg
c3RydWN0IHBsYXRmb3JtX2RyaXZlciBqaDcxMTBfdm91dF9zdWJzeXNfZHJpdmVyID0gewo+ICsJ
LnByb2JlID0gamg3MTEwX3ZvdXRfc3Vic3lzX3Byb2JlLAo+ICsJLmRyaXZlciA9IHsKPiArCQku
bmFtZSA9ICJqaDcxMTAtdm91dC1zdWJzeXN0ZW0iLAo+ICsJCS5vZl9tYXRjaF90YWJsZSA9IGpo
NzExMF92b3V0X3N1YnN5c19vZl9tYXRjaCwKPiArCX0sCj4gK307Cj4gK21vZHVsZV9wbGF0Zm9y
bV9kcml2ZXIoamg3MTEwX3ZvdXRfc3Vic3lzX2RyaXZlcik7CgpbU2V2ZXJpdHk6IE1lZGl1bV0K
QmVjYXVzZSB0aGUgZHJpdmVyIHN0cnVjdCBsYWNrcyBhIC5wbSBmaWVsZCB3aXRoIHN5c3RlbSBz
dXNwZW5kIGFuZCByZXN1bWUKY2FsbGJhY2tzLCBpdCBzZWVtcyB0aGVyZSBpcyBubyBtZWNoYW5p
c20gdG8gZGlzYWJsZSB0aGUgTm9DIGJ1cyBjbG9jayB3aGVuCnRoZSBzeXN0ZW0gZ29lcyB0byBz
bGVlcC4gU2hvdWxkIHRoZSBkcml2ZXIgc3RvcmUgdGhlIGNsb2NrIHBvaW50ZXIgaW4gYQpwcml2
YXRlIHN0cnVjdHVyZSBhbmQgaW1wbGVtZW50IGRldl9wbV9vcHMgY2FsbGJhY2tzIHRvIGhhbmRs
ZSBkaXNhYmxpbmcKYW5kIHJlLWVuYWJsaW5nIHRoZSBjbG9jaz8KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTUtamg3MTEwLWNs
ZWFuLXNlbmQtdjQtMC1mMGU0ZmQ2ZjJjYzhAc2Ftc3VuZy5jb20/cGFydD0xMwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68A18C43458
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jul 2026 23:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjIeL0kNcNIah+Q7cuVcQ+Wg3JeyDYQbvhiDs/n8s1A=; b=PwhlUgAPhkSMMD
	oeLFaIcTsXG7USQCq54baoAP1NoNjkaVMJLWLozxNXNEnXfw32k7+RTCzjNxdx599jj6aweRlZgP0
	cgqFjoRS7tXHI1Py47N24tV0y46YSpy6bFPdaDp5j9PYYPGgkAUpwA+WQf80s42krMBllKtjU9Im3
	yNovxRt4vqpyzt+7LYqItO20vy+95g/2V0iHMPyo0QD9K9h1RPonUDXCzh2rFF6aA08k9TMwo+8V8
	6HSVp/HzodrjUhHXa01NCTIkSSx0893iTgFaICEKNzC6M+w4a+6fANkY6nu5UCSJUm1z8tcgIquCj
	VfMCc6IBA+9wwbv/Jh/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnfM-000000081pl-0gap;
	Fri, 03 Jul 2026 23:51:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnfL-000000081pf-0KiN
	for linux-phy@lists.infradead.org;
	Fri, 03 Jul 2026 23:51:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D417E414EA;
	Fri,  3 Jul 2026 23:51:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AAD61F000E9;
	Fri,  3 Jul 2026 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122686;
	bh=1NUHqpKeItz1ST6Da95aUGP0/syDLD2WjmyABM6M9mU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GTaRHMDMJdFVzT5Ouyo7ND2uolDTlcNyxUKO8lEzAtPHlA111GrWC9VuG04AfoRpi
	 OCxaaMrX1Mh8nqzFOzy7fdiWwdjLbbbTx1tHJ0ojF0i2cfixEQF27jAARXJadvc5Lx
	 vhkZtWDD/giDYhBfDxx8W5rkzWSTDWE3wdL9D3XDxtTUnT4w23Gdg28vTbvdTKjtkp
	 HV0WkXsyRfgKWHMXAyK/9Zzu65q4mD0sOjsZl8eBk978U86xg8qn2ZKSLyzwsSYk3k
	 INg9Cj3g5MGih8qlBWQ8p/o28V/kDbqY3Ablz0aPFERNRLG2dhqH+y9CvW9WfpDV2v
	 yMDBGGaBCmSIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 20/36] phy: rockchip: usbdp: Factor out lane_mux_sel
 setup
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-20-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-20-a392711ca8a9@collabora.com>
Date: Fri, 03 Jul 2026 23:51:25 +0000
Message-Id: <20260703235126.0AAD61F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBPdmVyd3JpdGluZyB1ZHBoeS0+ZHBfbGFuZXMgaW4gcmtfdWRwaHlfc2V0X3R5cGVj
X3N0YXRlIGRlc3Ryb3lzIHRoZSBoYXJkd2FyZSBsYW5lIGxpbWl0LCBsZWFkaW5nIHRvIHVuaW5p
dGlhbGl6ZWQgYXJyYXkgYWNjZXNzLgotLQoKY29tbWl0IGI1YTBhZTg0NTU2YjM5MmI2OTJmMTdh
NGU3OTIyNDNjYjM0NmY1NzkKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBGYWN0b3Igb3V0IGxh
bmVfbXV4X3NlbCBzZXR1cAoKVGhpcyBjb21taXQgZmFjdG9ycyBvdXQgdGhlIFR5cGUtQyBzdGF0
ZSBsb2dpYyBpbnRvIGEgbmV3IGhlbHBlciBmdW5jdGlvbgpya191ZHBoeV9zZXRfdHlwZWNfc3Rh
dGUoKSB0byByZWR1Y2UgY29kZSBkdXBsaWNhdGlvbiB3aGVuIGNvbmZpZ3VyaW5nIHRoZQpVU0Ir
RFAgbGFuZV9tdXhfc2VsLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYwo+IGluZGV4IDRiNDU0Nzk4YzRlZDQuLjRlNTQwMjBkMTc1NTEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC01ODIsNiArNTgyLDQyIEBA
IHN0YXRpYyB2b2lkIHJrX3VkcGh5X21vZGVfc2V0KHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHU4
IG1vZGUpCj4gIAl1ZHBoeS0+bW9kZSA9IG1vZGU7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHJr
X3VkcGh5X3NldF90eXBlY19zdGF0ZShzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCB1bnNpZ25lZCBs
b25nIHN0YXRlKQo+ICt7Cj4gKwl1OCBtb2RlOwo+ICsKPiArCXN3aXRjaCAoc3RhdGUpIHsKPiAr
CWNhc2UgVFlQRUNfRFBfU1RBVEVfQzoKPiArCWNhc2UgVFlQRUNfRFBfU1RBVEVfRToKPiArCQl1
ZHBoeS0+bGFuZV9tdXhfc2VsWzBdID0gUEhZX0xBTkVfTVVYX0RQOwo+ICsJCXVkcGh5LT5sYW5l
X211eF9zZWxbMV0gPSBQSFlfTEFORV9NVVhfRFA7Cj4gKwkJdWRwaHktPmxhbmVfbXV4X3NlbFsy
XSA9IFBIWV9MQU5FX01VWF9EUDsKPiArCQl1ZHBoeS0+bGFuZV9tdXhfc2VsWzNdID0gUEhZX0xB
TkVfTVVYX0RQOwo+ICsJCW1vZGUgPSBVRFBIWV9NT0RFX0RQOwo+ICsJCXVkcGh5LT5kcF9sYW5l
cyA9IDQ7CiAgICAgICAgICAgICAgICBeXl5eXl5eXl5eXl5eXl5eXl5eCltTZXZlcml0eTogSGln
aF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgb3ZlcndyaXRpbmcgdWRw
aHktPmRwX2xhbmVzIGhlcmUKZGVzdHJveSB0aGUgaGFyZHdhcmUgbGFuZSBsaW1pdD8KClRoZSB2
YXJpYWJsZSB1ZHBoeS0+ZHBfbGFuZXMgc2VlbXMgdG8gYmUgb3ZlcmxvYWRlZC4gSXQgaXMgaW5p
dGlhbGx5CnBvcHVsYXRlZCBmcm9tIHRoZSBkZXZpY2UgdHJlZSB0byByZXByZXNlbnQgdGhlIHBo
eXNpY2FsIGhhcmR3YXJlIGxhbmUKbGltaXQgKGUuZy4sIDIgbGFuZXMpLiBIb3dldmVyLCBpdCBp
cyB1bmNvbmRpdGlvbmFsbHkgb3ZlcndyaXR0ZW4gaGVyZQp0byByZXByZXNlbnQgdGhlIHJlcXVl
c3RlZCBUeXBlLUMgc3RhdGUuCgpJZiBhIDItbGFuZSBQSFkgcmVjZWl2ZXMgYSA0LWxhbmUgVHlw
ZS1DIHJlcXVlc3QsIHVkcGh5LT5kcF9sYW5lcyBiZWNvbWVzIDQuCkRvZXMgdGhpcyBkZWZlYXQg
dGhlIGhhcmR3YXJlIGxpbWl0IGNoZWNrIGlmIChkcC0+bGFuZXMgPiB1ZHBoeS0+ZHBfbGFuZXMp
CmluIHJrX3VkcGh5X2RwX3BoeV92ZXJpZnlfbGFuZXMoKSAoYWRkZWQgaW4gYSBzdWJzZXF1ZW50
IHBhdGNoIGluIHRoaXMKc2VyaWVzKT8KCklmIHRoZSBoYXJkd2FyZSBsaW1pdCBjaGVjayBpcyBk
ZWZlYXRlZCwgdGhlIERQIGNvbnRyb2xsZXIgbWlnaHQgY29uZmlndXJlCjQgbGFuZXMsIGNhdXNp
bmcgcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHRvIGl0ZXJhdGUgNCB0aW1lcyBhbmQgYWNj
ZXNzCnVuaW5pdGlhbGl6ZWQgZWxlbWVudHMgaW4gdGhlIGRwX2xhbmVfc2VsIGFycmF5OgoKZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X2Nv
bmZpZ3VyZSgpCiAgICAgICAgLi4uCglpZiAoZHAtPnNldF92b2x0YWdlcykgewoJCWZvciAoaSA9
IDA7IGkgPCB1ZHBoeS0+bGFuZXM7IGkrKykgewoJCQlsYW5lID0gdWRwaHktPmRwX2xhbmVfc2Vs
W2ldOwogICAgICAgIC4uLgoKU2luY2UgZHBfbGFuZV9zZWxbMl0gYW5kIGRwX2xhbmVfc2VsWzNd
IHdvdWxkIGJlIDAgKGR1ZSB0byBkZXZtX2t6YWxsb2MpLApjb3VsZCB0aGlzIHJlc3VsdCBpbiBs
YW5lIDAgYmVpbmcgbWlzY29uZmlndXJlZCBtdWx0aXBsZSB0aW1lcywgb3ZlcnJpZGluZwppdHMg
aW50ZW5kZWQgc2V0dGluZ3MgYW5kIGNvcnJ1cHRpbmcgdGhlIFVTQjMgc3RhdGU/CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzAz
LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjEwLTAtYTM5MjcxMWNhOGE5QGNvbGxhYm9yYS5jb20/
cGFydD0yMAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==

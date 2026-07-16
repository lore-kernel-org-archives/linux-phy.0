Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8803C4450A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 22:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQqVdhS7AJw/0WPC1jqFbbFhhmyJuTa7VK5KyyVZWu4=; b=k1kMo55pS714q8
	es4k0qH2SEhTPlXVX3Qo69x3M6FQ/MT0GJXTTto7QIuerNyxUbc4ae7TReqtSMEAOL8idPoC4QCvX
	O3OYzCSn+RBegYPNUAvb+KasW9R5wyItYzqhPuuFjMQJB93IWrfCzH4FemwrCzzakOkbjLNxev63w
	Ar4/cTwlOTzNUPU8gZlsb1oYEHlZljvG1kqsLY3kLaxkPvTjNiNhVKoE6IPsvwxHL10SGoCBO/m1n
	5dwgLrzuxelokeSZMwEwN1AotWzazCGILtDycIXHFuzCoIgmAzIGlolvS4Fg6qPcqEbErzSP8YEzE
	yDiHRWPXj2403xAWo5eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUUy-00000000irs-1cIh;
	Thu, 16 Jul 2026 22:24:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkUUw-00000000irb-27IG
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 22:24:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E69AA43406;
	Thu, 16 Jul 2026 22:24:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 585931F000E9;
	Thu, 16 Jul 2026 22:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784240645;
	bh=JXY7lxiDGoWfZKZC0zMpII1Kxrjnph5++CDvXGZo4Sw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZAeJmuuf5ZI99S04ZDPP9WwL/BU8WFEtJ79WhXwl6hCgQyqiig3KrA2+5605vvYjG
	 W99pesyPrzgs2i6NLcK5Ck8L8bdmu7qgBlcptUcJ+93k9gmLe1homXlygjdXY4wfNu
	 C3s/+p3t5R8nBA2vD6hqPQuponVh8hJvxoDjP1LktnPoJAaWkRpSTRtpphFS0v05ZI
	 MqUg5CCTU7u/Kto9J4Ez/GnVL7JslOXqwdCrV0WS/dD0i1TJJfQr4y3Spekce0S7TT
	 7BMHyT04HjfxENPeQ9vsZw4OVk/3o11wUZ0Jx2Bigh+qtaxKALv6+N/zC2geOor7co
	 E0E4wZG9nPtsg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 01/13] dt-bindings: phy: Add zx297520v3 USB phy
 documentation
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260717-zx29clk-v7-1-408411cfcf36@gmail.com>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-1-408411cfcf36@gmail.com>
Date: Thu, 16 Jul 2026 22:24:04 +0000
Message-Id: <20260716222405.585931F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGV4YW1wbGUgdXNl
cyBhbiB1bmRvY3VtZW50ZWQgY29tcGF0aWJsZSBzdHJpbmcgJ3p0ZSx6eDI5NzUyMHYzLXRvcGNy
bScsIHdoaWNoIHdpbGwgYnJlYWsgYG1ha2UgZHRfYmluZGluZ19jaGVja2AgZm9yIHRoaXMgY29t
bWl0LgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIHY3IDAxLzEzXSBkdC1iaW5kaW5nczogcGh5
OiBBZGQgengyOTc1MjB2MyBVU0IgcGh5IGRvY3VtZW50YXRpb24gLS0tCmNvbW1pdCA0YzY5YjI3
MTdlYmY5NjkxZDI5OWI0NzQ0NjMzZTc3ODhkMzkyOTEzCkF1dGhvcjogU3RlZmFuIETDtnNpbmdl
ciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6IEFkZCB6eDI5
NzUyMHYzIFVTQiBwaHkgZG9jdW1lbnRhdGlvbgoKVGhpcyBjb21taXQgYWRkcyBkZXZpY2UgdHJl
ZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBaVEUgengyOTc1MjB2MyBVU0IKYW5kIEhT
SUMgUEhZLiBJdCBkZWZpbmVzIHRoZSByZXF1aXJlZCBwcm9wZXJ0aWVzIGZvciB0aGUgUEhZLCB3
aGljaCBhY3RzIGFzCmEgY2hpbGQgbm9kZSB0byB0aGUgdG9wY3JtIGNvbnRyb2xsZXIuCgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3p0ZSx6eDI5
NzUyMHYzLXVzYi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvenRlLHp4Mjk3NTIwdjMtdXNiLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwMDAwLi44YmFkOTM2NWQ1Y2MwCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvenRlLHp4Mjk3NTIwdjMtdXNi
LXBoeS55YW1sClsgLi4uIF0KPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ICsgICAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHktenRlLXp4Mjk3NTIwdjMtdXNiLmg+Cj4gKwo+ICsgICAg
dG9wY3JtOiBjbG9jay1jb250cm9sbGVyIHsKPiArICAgICAgICBjb21wYXRpYmxlID0gInp0ZSx6
eDI5NzUyMHYzLXRvcGNybSIsICJzeXNjb24iOwoKW1NldmVyaXR5OiBMb3ddCldpbGwgdGhpcyB1
bmRvY3VtZW50ZWQgY29tcGF0aWJsZSBzdHJpbmcgY2F1c2UgYSByZWdyZXNzaW9uIGluCmBtYWtl
IGR0X2JpbmRpbmdfY2hlY2tgIGR1cmluZyBiaXNlY3Rpb24/CgpTaW5jZSB0aGUgInp0ZSx6eDI5
NzUyMHYzLXRvcGNybSIgYmluZGluZyBpcyBhZGRlZCBpbiB0aGUgbmV4dCBwYXRjaCwgZXZhbHVh
dGluZwp0aGlzIGNvbW1pdCBvbiBpdHMgb3duIHdpbGwgcmVzdWx0IGluIHZhbGlkYXRpb24gZmFp
bHVyZXMgYmVjYXVzZSB0aGUgc3RyaW5nIGlzCm5vdCBkb2N1bWVudGVkIGluIGFueSBzY2hlbWEg
YW5kIGlzIG5vdCBhbiBhbGxvd2VkIGZhbGxiYWNrIGluIHN5c2Nvbi55YW1sLgoKQWRkaXRpb25h
bGx5LCBkb2VzIHRoZSBleGFtcGxlIG5vZGUgbmVlZCBhICJyZWciIHByb3BlcnR5IHNpbmNlIGl0
IGluY2x1ZGVzCiJzeXNjb24iIGluIHRoZSBjb21wYXRpYmxlIHN0cmluZz8gc3lzY29uLnlhbWwg
cmVxdWlyZXMgaXQsIHdoaWNoIG1heSBsZWFkIHRvCmZ1cnRoZXIgdmFsaWRhdGlvbiBlcnJvcnMu
Cgo+ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsgICAgICAgICNzaXplLWNlbGxz
ID0gPDA+Owo+ICsgICAgICAgICNyZXNldC1jZWxscyA9IDwxPjsKCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTctengyOWNsay12
Ny0wLTQwODQxMWNmY2YzNkBnbWFpbC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

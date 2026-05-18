Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94956CD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 11:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nflLFb38sB3+o0cQJpMx26xrLJVZkBx6ufU2IrUX7wo=; b=LCxrL6JsRfMfR6
	6Hr/R0XbTueLZsklDzyYzWtHsIn8GXHyea1qhyWd4P+Bcpq82DgzidK5SG64DU1lrzTRopYn5BX4Q
	/xtjpOkrGmonz7N49LMTb+nQxpmiSIOniSlL4U4XBFNk1US7p+0EPN6dF3ON3RGoy96Tp/hVcob/U
	+1tU/hvk/21UcRfr1BnyccbZmNG8z9Rz2mgnVEiloWhh0nAc4pFMtbmBlGR4nllrNwLbVMdll3YzC
	WpCc+7griL0Q12/blxZVichFXR8f0DGqE3wqnO+nCbe0Jzp0nzO1Fidamo5BgvRCjNcqYrIk2w4bc
	lgg4TBd377s4wVfx/7lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwTY-0000000FV18-0dHw;
	Mon, 18 May 2026 11:49:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwTW-0000000FV0Q-0gPu
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 11:49:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5ECF760141;
	Mon, 18 May 2026 11:49:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A0DC2BCB7;
	Mon, 18 May 2026 11:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779104972;
	bh=cNlP5bfLoARIVy4MMsIn8cjA7BGxZtEfDS9gueb1MFQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Rs/hRu1qd3MCaspgLiBSjcA/qG4kUU2J/m7lnjr/SRbCzFfdSvBd6BenDY4aMH7La
	 xGlD6dkffEZMUqvRRWJNqPHqeRTe+5XfuHcXTAKgCL1DY6kMtqIGAQa2pNmKCjdbD/
	 LJWIWXxTk0nhYLhSBETkEys+9ozsnI1M6hDSEnimIiVw1PB3v1uHk59BVbf/0zCC7M
	 WRKd1wFDoeThIH1lExSgs7ss/snbopBtetIfz3PesUsW2DuhEKJHVim4QwZRb7CtDG
	 lnn8gNZQrpl5eolIFOmj3lDPfUm/kscuHs6PupRDwfFFIqh2fzkQ3bNPuP7bF0ZvD8
	 JNw5THfcfublQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/5] phy: qualcomm: qmp-combo: Add USB4/TBT3
 configuration data for Hamoa
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260518-topic-usb4phy-v1-4-71d827c49dca@oss.qualcomm.com>
References: <20260518-topic-usb4phy-v1-4-71d827c49dca@oss.qualcomm.com>
Date: Mon, 18 May 2026 11:49:29 +0000
Message-Id: <20260518114931.B7A0DC2BCB7@smtp.kernel.org>
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
NCBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW5jb3JyZWN0IGBUWF9g
IHByZWZpeCBmb3IgUlggVUNEUiBmYXN0bG9jayByZWdpc3RlcnMuCi0gW0xvd10gVHlwbyBpbiBy
ZWdpc3RlciBtYWNybyBuYW1lOiBgTFBGU2AgaW5zdGVhZCBvZiBgTEZQU2AuCi0gW0xvd10gUmVk
dW5kYW50IGBQQ1NfUENTYCBwcmVmaXggaW4gcmVnaXN0ZXIgbWFjcm8gbmFtZS4KLSBbTG93XSBN
aXNzaW5nIGBfTjRfYCBpbmZpeCBpbiB0aGUgYFFTRVJERVNfVjZfVFhfTERPX1RJTUVSX0NUUkxg
IG1hY3JvLgotLQoKY29tbWl0IDEzYTM3MzFmM2I3YzEyYzI5OGQyZjQ5ODAxMWE3ZWY4NTJmZDRh
NDIKQXV0aG9yOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+
CgpwaHk6IHF1YWxjb21tOiBxbXAtY29tYm86IEFkZCBVU0I0L1RCVDMgY29uZmlndXJhdGlvbiBk
YXRhIGZvciBIYW1vYQoKVGhpcyBjb21taXQgYWRkcyB0aGUgb2Zmc2V0cyBhbmQgY29uZmlndXJh
dGlvbiB0YWJsZXMgdG8gc3VwcG9ydCBVU0I0CmFuZCBUaHVuZGVyYm9sdCAzIG9wZXJhdGlvbiBv
biB0aGUgVVNCNC1jYXBhYmxlIFBIWXMgZm91bmQgb24gSGFtb2EgY2hpcHMuCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCj4gaW5kZXggODk4ZjQyZGU0YTA4Ni4u
MDkxNmQ5YTQ1OTllZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtY29tYm8uYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1j
b21iby5jCgpbIC4uLiBdCgo+IEBAIC0xODczLDYgKzE5NTIsNjggQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBxbXBfcGh5X2luaXRfdGJsIHgxZTgwMTAwX3VzYjQzZHBfdHhfdGJsW10gPSB7Cj4gWyAu
Li4gXQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgeDFlODAxMDBfdXNi
NF9yeF90YmxbXSA9IHsKPiBbIC4uLiBdCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjZf
TjRfVFhfVUNEUl9GQVNUTE9DS19DT1VOVEVSX0xPV19SQVRFMiwgMHgzMCksCj4gKwlRTVBfUEhZ
X0lOSVRfQ0ZHKFFTRVJERVNfVjZfTjRfVFhfVUNEUl9GQVNUTE9DS19DT1VOVEVSX0hJR0hfUkFU
RTIsIDB4MTQpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y2X040X1RYX1VDRFJfRkFT
VExPQ0tfQ09VTlRFUl9MT1dfUkFURTMsIDB4ZmYpLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRU0VS
REVTX1Y2X040X1RYX1VDRFJfRkFTVExPQ0tfQ09VTlRFUl9ISUdIX1JBVEUzLCAweDNmKSwKClRo
aXMgaXNuJ3QgYSBidWcsIGJ1dCBzaG91bGQgdGhlc2UgdXNlIHRoZSBSWF8gcHJlZml4IGluc3Rl
YWQgb2YgVFhfPyAKVGhlc2UgcmVnaXN0ZXJzIGFwcGVhciB0byBtYXAgdG8gdGhlIFJYIGJsb2Nr
IGFkZHJlc3Mgc3BhY2UgYW5kIGFyZSB1c2VkCmhlcmUgdG8gY29uZmlndXJlIHRoZSBSWCBoYXJk
d2FyZS4KClsgLi4uIF0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1wY3MtdXNiLXY2LmggYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
cGNzLXVzYi12Ni5oCj4gaW5kZXggZGY2NzAxNDNmZWIxZS4uMzBmZGI0MzcxNDZjNCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNzLXVzYi12Ni5oCj4g
KysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy11c2ItdjYuaAo+IEBA
IC0xNCw0ICsxNCwxOSBAQAo+ICAjZGVmaW5lIFFQSFlfVjZfUENTX1VTQjNfUkNWUl9EVENUX0RM
WV9VM19MCQkweDQwCj4gICNkZWZpbmUgUVBIWV9WNl9QQ1NfVVNCM19SQ1ZSX0RUQ1RfRExZX1Uz
X0gJCTB4NDQKPiAgCj4gKyNkZWZpbmUgUVBIWV9WNl9QQ1NfVVNCNF9QT1dFUl9TVEFURV9DT05G
SUczCQkweDk4Cj4gWyAuLi4gXQo+ICsjZGVmaW5lIFFQSFlfVjZfUENTX1VTQjRfUENTX1BDU19U
WF9SWF9DT05GSUcxCQkweDFhOAoKVGhpcyBpc24ndCBhIGJ1ZywgYnV0IGlzIHRoZXJlIGEgZHVw
bGljYXRlIFBDU18gcHJlZml4IGluIHRoaXMgbWFjcm8gbmFtZT8KCj4gKyNkZWZpbmUgUVBIWV9W
Nl9QQ1NfVVNCNF9FUV9DT05GSUcxCQkJMHgxYjgKPiBbIC4uLiBdCj4gKyNkZWZpbmUgUVBIWV9W
Nl9QQ1NfVVNCNF9MUEZTX1RYX0VDU1RBUlQJCTB4MjIwCgpUaGlzIGlzbid0IGEgYnVnLCBidXQg
aXMgdGhpcyBhIHR5cG8gZm9yIExGUFMgKExvdyBGcmVxdWVuY3kgUGVyaW9kaWMKU2lnbmFsaW5n
KT8KClsgLi4uIF0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1xc2VyZGVzLXR4cngtdjZfbjQuaCBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1xc2VyZGVzLXR4cngtdjZfbjQuaAo+IGluZGV4IGQzN2NjMGQ0ZmQzNjUuLmU3MmFlMmNi
NDYwYWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFz
ZXJkZXMtdHhyeC12Nl9uNC5oCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXFzZXJkZXMtdHhyeC12Nl9uNC5oCj4gQEAgLTIzLDI3ICsyMyw2MyBAQAo+IFsgLi4uIF0K
PiAgI2RlZmluZSBRU0VSREVTX1Y2X040X1RYX1ZNT0RFX0NUUkwxCQkJMHhiMAo+ICsjZGVmaW5l
IFFTRVJERVNfVjZfVFhfTERPX1RJTUVSX0NUUkwJCQkweDEyMAoKVGhpcyBpc24ndCBhIGJ1Zywg
YnV0IHNob3VsZCB0aGlzIG1hY3JvIGluY2x1ZGUgdGhlIF9ONF8gaW5maXggZm9yCmNvbnNpc3Rl
bmN5IHdpdGggdGhlIHJlc3Qgb2YgdGhlIFY2IE40IGJsb2NrIGRlZmluaXRpb25zPwoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUx
OC10b3BpYy11c2I0cGh5LXYxLTAtNzFkODI3YzQ5ZGNhQG9zcy5xdWFsY29tbS5jb20/cGFydD00
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

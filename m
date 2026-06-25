Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A139CDB47C
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 02:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwX/c838tfeMtQ/ch8a9A+B1wu56fKyiM0ceNLr7KWc=; b=lWbuNw+0pddK+V
	MOR2BYA49DwsVIBCVSPSY7sDen2DREGwSwIS7cE2/ajHGxRDzUEjyqfiWDOSw2Uewnv+AaKFSnROp
	0RmjHcCK4u4Co8xMQsCaQSZWmO7CCOHbeijLi7vS/+3Aw5sNunohWc/OFVZ+2fzm3+kZnoUslqQZn
	ZQh8jxifXPbcP6NhX0tV9kwZUde+9vhOeoOurRdV3eAYCnyaOfZFpvCwJmFQSLJD8Ug5lVAIcGSvi
	g043lnAs5eAnbE0J5eeslL6+G+iRWrOpMnY38U7WG5GyGuXM8jLn4Ss/ODGn/FwtJS688Q4K70Pok
	8wK8AgzfHxbTINgWu6Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcaFS-00000008ayl-3AJU;
	Thu, 25 Jun 2026 02:55:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcaFQ-00000008ayT-3kh9
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 02:55:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A0EF40764;
	Thu, 25 Jun 2026 02:55:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0FF21F00A3E;
	Thu, 25 Jun 2026 02:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782356124;
	bh=aQq9VR65/epH02J8BfCOw5J09bG5DEG5dWWp3ygl79g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kMzR4ccT3ahuNBqjHn0JxGG5Z/xZDC0wyrLhBVdHtPpVjFI9C+SzteJuWynRu5LSe
	 UGDxAHd0k9NYCQJBl3wgv0MB0y3nMzJHtghHcfENUx4Wd4VpkQov0/b+vgB46BoD6M
	 mI8wr/DkezIRMKm+1Q7tyx832rO5/5VCX6VY6ZLoLg62nDNHENI4FqOx3lmgNYz+iA
	 gErO4ly7Lvc+5H+sH/oQQ1NXmJzV9lJbOdnxsL3TtqJFmiIXiMyGpE/ndCOK+WU8Hs
	 oESB7sCvl74LKXMQfer0extmaTU4vmDN1ckk1n5eI7Syl2S7xtS5cKweJKalEE4zLQ
	 jxNCfETFuOKMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: reset: nuvoton,ma35d1-reset: add
 simple-mfd and child node support
To: "Joey Lu" <a0987203069@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260625023958.569299-2-a0987203069@gmail.com>
References: <20260625023958.569299-1-a0987203069@gmail.com>
 <20260625023958.569299-2-a0987203069@gmail.com>
Date: Thu, 25 Jun 2026 02:55:23 +0000
Message-Id: <20260625025523.B0FF21F00A3E@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNoaWxkIG5v
ZGUgcGF0dGVybiBmb3JjZXMgYSB1bml0IGFkZHJlc3MgYW5kIGByZWdgIHByb3BlcnR5LCBidXQg
dGhlIGludGVuZGVkIGNoaWxkIGRldmljZSdzIGJpbmRpbmcgc3RyaWN0bHkgcHJvaGliaXRzIGBy
ZWdgLCBjcmVhdGluZyBhIHZhbGlkYXRpb24gQ2F0Y2gtMjIuCi0tCgpjb21taXQgNjQ0ODdiM2Ew
ODhhM2NiOGIyNWRjNThkZjQyNjZiZmIyODQ5NDViMwpBdXRob3I6IEpvZXkgTHUgPGEwOTg3MjAz
MDY5QGdtYWlsLmNvbT4KCmR0LWJpbmRpbmdzOiByZXNldDogbnV2b3RvbixtYTM1ZDEtcmVzZXQ6
IGFkZCBzaW1wbGUtbWZkIGFuZCBjaGlsZCBub2RlIHN1cHBvcnQKClRoaXMgY29tbWl0IHVwZGF0
ZXMgdGhlIE1BMzVEMSByZXNldCBiaW5kaW5nIHRvIGFsbG93IHNpbXBsZS1tZmQgYW5kIGNoaWxk
Cm5vZGVzLiBJdCBhZGRzICNhZGRyZXNzLWNlbGxzLCAjc2l6ZS1jZWxscywgYW5kIGEgcGF0dGVy
biBwcm9wZXJ0eSB0byBzdXBwb3J0Cmluc3RhbnRpYXRpbmcgY2hpbGRyZW4gbGlrZSB0aGUgVVNC
IFBIWS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9y
ZXNldC9udXZvdG9uLG1hMzVkMS1yZXNldC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3Jlc2V0L251dm90b24sbWEzNWQxLXJlc2V0LnlhbWwKPiBpbmRleCAzY2U3ZGNl
Y2Q4N2FlLi4xZmRhN2U4ZjRiNWQxIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9yZXNldC9udXZvdG9uLG1hMzVkMS1yZXNldC55YW1sCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L251dm90b24sbWEzNWQxLXJlc2V0
LnlhbWwKWyAuLi4gXQo+IEBAIC0yNiw2ICsyOCwxNiBAQCBwcm9wZXJ0aWVzOgo+ICAgICcjcmVz
ZXQtY2VsbHMnOgo+ICAgICAgY29uc3Q6IDEKPiAgCj4gKyAgJyNhZGRyZXNzLWNlbGxzJzoKPiAr
ICAgIGNvbnN0OiAxCj4gKwo+ICsgICcjc2l6ZS1jZWxscyc6Cj4gKyAgICBjb25zdDogMQo+ICsK
PiArcGF0dGVyblByb3BlcnRpZXM6Cj4gKyAgIl4uKkBbMC05YS1mXSskIjoKPiArICAgIHR5cGU6
IG9iamVjdAoKW1NldmVyaXR5OiBNZWRpdW1dClRoaXMgcGF0dGVybiBwcm9wZXJ0eSBmb3JjZXMg
Y2hpbGQgbm9kZXMgdG8gaGF2ZSBhIHVuaXQgYWRkcmVzcywgd2hpY2gKaW5oZXJlbnRseSByZXF1
aXJlcyBhIHJlZyBwcm9wZXJ0eSB0byBhdm9pZCBhIGR0YyB3YXJuaW5nICgibm9kZSBoYXMgYSB1
bml0IApuYW1lLCBidXQgbm8gcmVnIG9yIHJhbmdlcyBwcm9wZXJ0eSIpLgoKSG93ZXZlciwgbG9v
a2luZyBhdCB0aGUgY2hpbGQgUEhZIGJpbmRpbmcgCihEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L251dm90b24sbWEzNWQxLXVzYjItcGh5LnlhbWwpLCBpdCAKc3RyaWN0bHkg
cHJvaGliaXRzIHJlZyB2aWEgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlLgoKSWYgd2UgcHJv
dmlkZSB0aGUgcmVnIHByb3BlcnR5IHJlcXVpcmVkIGJ5IHRoZSBwYXJlbnQncyB1bml0IGFkZHJl
c3MsIGl0IHdpbGwKZmFpbCB0aGUgUEhZIHNjaGVtYSB2YWxpZGF0aW9uLgoKQWRkaXRpb25hbGx5
LCB0aGUgUEhZIGRyaXZlciBkb2Vzbid0IHNlZW0gdG8gYWN0IGFzIGEgdHJ1ZSBNRkQgY2hpbGQu
IExvb2tpbmcKYXQgZHJpdmVycy9waHkvbnV2b3Rvbi9waHktbWEzNWQxLXVzYjIuYzptYTM1X3Vz
Yl9waHlfcHJvYmUoKToKCiAgICBwX3BoeS0+c3lzcmVnID0gc3lzY29uX3JlZ21hcF9sb29rdXBf
YnlfcGhhbmRsZShwZGV2LT5kZXYub2Zfbm9kZSwgIm51dm90b24sc3lzIik7CgpUaGUgZHJpdmVy
IGhhcmRjb2RlcyBpdHMgb2Zmc2V0IGFuZCB1c2VzIGEgcGhhbmRsZSBpbnN0ZWFkIG9mIGV4cGVj
dGluZyBhIHJlZyAKcHJvcGVydHkuCgpDb3VsZCB0aGlzIGNyZWF0ZSBhIHZhbGlkYXRpb24gZmFp
bHVyZSBmb3IgdGhlIGNoaWxkIFBIWSBub2RlLCBhbmQgYXJlIHRoZQpiaW5kaW5ncyBhbmQgdGhl
IGRyaXZlciBzdHJ1Y3R1cmFsbHkgb3V0IG9mIHN5bmMgaGVyZT8KCj4gKwo+ICByZXF1aXJlZDoK
PiAgICAtIGNvbXBhdGlibGUKPiAgICAtIHJlZwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyNTAyMzk1OC41NjkyOTktMS1hMDk4
NzIwMzA2OUBnbWFpbC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK

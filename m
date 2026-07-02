Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5174CC43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 10:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/09yuI5Naskf9JvlBtrHeC/pvCP1kFeWGK5X2fQ/b68=; b=qRm1h2aP1hjXcu
	PDMk4pDB6xnQuDPtUWofsGI2QAa+smYGydO8A9BDthPFZM8uNLTZ/wxzoKg7Ixaps4idZaAb8Hhok
	S6mPSyvcra/XU7me3vjlIJsmfDi5f3irE8KftuUNCTrT6t7leXDhWxKRpE9JuE0Jxi0soJnZOe7hQ
	+BKX/mwA/2QZKSEDGLkLJeIK19lGf6XDJeKSYJjdzV1L7INtgT0SM5TXyHTuiU9sD1VgLbE5dCMhk
	dJWfS4+rIWUn8WBEpPWYdOvBo30P1noFSIqPldwGA/Qs4vPboOiW3HnhRK5vOj0q4ImOPF/6UNg2Z
	9QWTRBS3fm9QaVL/69ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfEco-00000004AOc-3TEc;
	Thu, 02 Jul 2026 10:26:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfEcm-00000004AOJ-3PGZ
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 10:26:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F95642451;
	Thu,  2 Jul 2026 10:26:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B2231F000E9;
	Thu,  2 Jul 2026 10:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782987988;
	bh=bWmo7L95P3yw0GeDMotuS62BBzmVyTJ3RfvUk/8fIjg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oxEvWzG8fFxVI66RKoZ5i6mffyjprAGGfnfxfaqqPso7HDRo4g92riBySRwEbP6W1
	 nqwfysiFRInIQrwf+g8ihkd+9ZPdifcf0L8oLFnqz/NOUsOCVNvtWsvyTJd8Z6PwrW
	 AxWx+QYkSj7ChoWUYZIU/OgaD7yyUdBE0QlQoqDIzbi3gKHIBF1+ZpEIk4aAX6vPB0
	 EctR6TQ2jvK7P4C8kSiD8Gl+rt9K49uFopRlm36hdeudBUgfTCCe5luChGGnUYBxR1
	 VPB0ZsORr2nLsLtGHbCCDTBny3UVQyIvyPfCYguce8c4w24Zt+G3DOfVT/88/lsGb1
	 o8pxQw29g40Bg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 5/5] phy: airoha: Add support for Airoha AN7581 USB
 PHY
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260702093812.15918-6-ansuelsmth@gmail.com>
References: <20260702093812.15918-1-ansuelsmth@gmail.com>
 <20260702093812.15918-6-ansuelsmth@gmail.com>
Date: Thu, 02 Jul 2026 10:26:26 +0000
Message-Id: <20260702102627.0B2231F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCB1c2Fn
ZSBvZiBgcmVnbWFwX3NldF9iaXRzYCB3aXRoIGBGSUVMRF9QUkVQYCBjb3JydXB0cyBtdWx0aS1i
aXQgcmVnaXN0ZXIgZmllbGQKLSBbTWVkaXVtXSBNaXNzaW5nIFBIWSBMaWZlY3ljbGUgTWFuYWdl
bWVudCBmb3IgU2VyRGVzIFBIWQotIFtNZWRpdW1dIENvbXB1dGVkIHNsZXcgcmF0ZSBjYWxpYnJh
dGlvbiB2YWx1ZSBpcyBub3QgY2xhbXBlZCwgcmlza2luZyBzaWxlbnQgd3JhcGFyb3VuZAotLQoK
Tm90ZTogVGhlIGZvcm1hdCBvZiB0aGlzIHJldmlldyBoYXMgYmVlbiBhbHRlcmVkIHRvIHVzZSBm
cmVlLWZvcm0gc3VtbWFyaWVzCmluc3RlYWQgb2YgaW5saW5lIGRpZmYgcXVvdGluZyBkdWUgdG8g
c3RyaWN0IHJlY2l0YXRpb24gcmVzdHJpY3Rpb25zLgoKY29tbWl0IDRkMWUyZDA1MzU0ZTdjMWFh
ZDk0NjNhZmEzYzljN2ZmZDg1M2Y3MjYKQXV0aG9yOiBDaHJpc3RpYW4gTWFyYW5naSA8YW5zdWVs
c210aEBnbWFpbC5jb20+CnBoeTogYWlyb2hhOiBBZGQgc3VwcG9ydCBmb3IgQWlyb2hhIEFONzU4
MSBVU0IgUEhZCgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBBaXJvaGEgQU43NTgx
IFVTQiBQSFkgZHJpdmVyLCB3aGljaCBzdXBwb3J0cwp1cCB0byB0d28gVVNCIHBvcnRzLiBVU0Ig
Mi4wIGlzIGFsd2F5cyBzdXBwb3J0ZWQsIHdoaWxlIFVTQiAzLjAgcmVxdWlyZXMgdGhlClNlckRl
cyBwb3J0IHRvIGJlIGNvbmZpZ3VyZWQuIEl0IGFsc28gaW50cm9kdWNlcyBVU0IgMi4wIHNsZXcg
cmF0ZSBjYWxpYnJhdGlvbgp1c2luZyBhIG1hbmRhdG9yeSBtb25pdG9yIGNsb2NrLgoKW1NldmVy
aXR5OiBNZWRpdW1dCkluIGFuNzU4MV91c2JfcGh5X2luaXQoKSBhbmQgYW43NTgxX3VzYl9waHlf
cG93ZXJfb24oKSwgdGhlIGRyaXZlciBzZXRzIHRoZQptb2RlIG9mIHRoZSBTZXJEZXMgUEhZIGJ1
dCBkb2VzIG5vdCBjYWxsIHBoeV9pbml0KCksIHBoeV9wb3dlcl9vbigpLApwaHlfcG93ZXJfb2Zm
KCksIG9yIHBoeV9leGl0KCkgZm9yIHRoZSBwcml2LT5zZXJkZXNfcGh5LiBJcyBpdCBzYWZlIHRv
IG9taXQKdGhlc2UgZ2VuZXJpYyBQSFkgbGlmZWN5Y2xlIGNhbGxzPwoKRXZlbiBpZiB0aGUgY3Vy
cmVudCBTZXJEZXMgUEhZIGRyaXZlciBmb3IgdGhpcyBTb0Mgb25seSBpbXBsZW1lbnRzIHRoZQpz
ZXRfbW9kZSBjYWxsYmFjaywgb21pdHRpbmcgdGhlc2UgbGlmZWN5Y2xlIG1hbmFnZW1lbnQgZnVu
Y3Rpb25zIG1pZ2h0IGNhdXNlCmZhaWx1cmVzIGlmIHRoZSBTZXJEZXMgUEhZIGRyaXZlciBpcyB1
cGRhdGVkIHRvIHJlcXVpcmUgaGFyZHdhcmUKaW5pdGlhbGl6YXRpb24sIG9yIGlmIHRoaXMgZHJp
dmVyIGlzIHVzZWQgb24gYSBTb0MgdmFyaWFudCB3aGVyZSB0aGUKdW5kZXJseWluZyBTZXJEZXMg
UEhZIHJlcXVpcmVzIHBvd2VyIG1hbmFnZW1lbnQgdG8gZnVuY3Rpb24uCgpbU2V2ZXJpdHk6IEhp
Z2hdCkluIGFuNzU4MV91c2JfcGh5X3UzX2luaXQoKSwgcmVnbWFwX3NldF9iaXRzKCkgaXMgdXNl
ZCBhbG9uZ3NpZGUgRklFTERfUFJFUCgpCnRvIHdyaXRlIGEgMTYtYml0IHZhbHVlIGludG8gdGhl
IEFJUk9IQV9VU0JfUEhZX1NTVVNCX1hUQUxfVE9QX1JFU0VSVkUKcmVnaXN0ZXIuIERvZXMgdGhp
cyB1bmludGVudGlvbmFsbHkgbGVhdmUgb2xkIGJpdHMgc2V0IGluIHRoZSBtdWx0aS1iaXQgZmll
bGQ/CgpTaW5jZSByZWdtYXBfc2V0X2JpdHMoKSBwZXJmb3JtcyBhIGJpdHdpc2UgT1IgYW5kIGRv
ZXMgbm90IGNsZWFyIHByZXZpb3VzbHkKc2V0IGJpdHMgbGlrZSByZWdtYXBfdXBkYXRlX2JpdHMo
KSBkb2VzLCBhbnkgcHJlLWV4aXN0aW5nIG92ZXJsYXBwaW5nIGJpdHMKZnJvbSBoYXJkd2FyZSBk
ZWZhdWx0cyBvciBib290bG9hZGVyIGluaXRpYWxpemF0aW9uIHdpbGwgcmVtYWluIHNldC4gVGhp
cwpjb3VsZCByZXN1bHQgaW4gYSBjb3JydXB0ZWQgWFRBTC9QTEwgY29uZmlndXJhdGlvbiBhbmQg
Y2F1c2UgYW4gdW5zdGFibGUKVVNCIDMuMCBjbG9jayBvciBwcm9iZSBmYWlsdXJlcy4KCltTZXZl
cml0eTogTWVkaXVtXQpJbiBhbjc1ODFfdXNiX3BoeV91Ml9zbGV3X3JhdGVfY2FsaWJyYXRpb24o
KSwgdGhlIGR5bmFtaWNhbGx5IGNvbXB1dGVkIHNyY3RybAp2YWx1ZSBpcyBwYXNzZWQgZGlyZWN0
bHkgdG8gRklFTERfUFJFUCgpIGZvciB0aGUgMy1iaXQKQUlST0hBX1VTQl9QSFlfVVNCMjBfSFNU
WF9TUkNUUkwgZmllbGQuIENvdWxkIHRoaXMgc2lsZW50bHkgd3JhcCBhcm91bmQgaWYKZm1fb3V0
IGlzIHVuZXhwZWN0ZWRseSBzbWFsbD8KCklmIGEgdHJhbnNpZW50IGNsb2NrIGlzc3VlIGNhdXNl
cyBmbV9vdXQgdG8gZHJvcCBiZWxvdyBleHBlY3RlZCB2YWx1ZXMsIHRoZQpjb21wdXRlZCBzcmN0
cmwgY2FuIGV4Y2VlZCB0aGUgbWF4aW11bSB2YWx1ZSBvZiA3LiBCZWNhdXNlIEZJRUxEX1BSRVAo
KQptYXNrcyB0aGUgdmFsdWUsIGFuIHNyY3RybCBvZiA4IHdvdWxkIHNpbGVudGx5IHdyYXAgYXJv
dW5kIHRvIDAuIFRoaXMgd291bGQKY29udmVydCB3aGF0IHNob3VsZCBiZSBhIG1heGltdW0gc2xl
dyByYXRlIGNhbGlicmF0aW9uIGludG8gdGhlIG1pbmltdW0KY2FsaWJyYXRpb24sIHJpc2tpbmcg
c2V2ZXJlIFVTQiAyLjAgc2lnbmFsIGRlZ3JhZGF0aW9uLiBTaG91bGQgdGhlIHNyY3RybAp2YWx1
ZSBiZSBjbGFtcGVkIGJlZm9yZSBpbnNlcnRpb24/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzAyMDkzODEyLjE1OTE4LTEtYW5z
dWVsc210aEBnbWFpbC5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B002C44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 05:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzdRNFpgekfL82fDVEJ4toDufX4dzEAyuYVpHxQ1Fe4=; b=2i14euw+7AJ9c1
	USskXsAYDTzBBaui5yqdzF7nV52O/jQpJUEY06KqwJZt+4xWnzIKrUeMa7s9X7hDpxwSlp4xW2F3Q
	phFpvlSmaD3QldAIOQ52PXS6w8L0Xev5OkxBTOvx3u3DtvO+1CcNi4lwVfuELtHHVnf/UwFOOUukn
	3PervGv3IpaJHM5sELY59j9pR5sW6bD8uLcGRqRDU/H40jBy40EJfhGWQr9otwAl70Iu9vad255TV
	rURaAt++5/cQcuA/lXTMVO5aOw9OskfaCc/ErtBIUUrIXbRPYDnCHnQj4kqQfajCP77HUp0gYtB6E
	Pl3LFcFX15TktIyRQeLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm3BC-00000008SwB-3Uux;
	Tue, 21 Jul 2026 05:38:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm3BB-00000008Sw1-2S8Z
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 05:38:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 58CA560A61;
	Tue, 21 Jul 2026 05:38:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3D811F000E9;
	Tue, 21 Jul 2026 05:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784612288;
	bh=SXRlrYgko8kXzntTCrEO11V/G8TBvjSrMJkGs73GDGw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XB3CjX9sHX6K9NnT+213aj3/SpmYKxgyUiHLtwAPuICBsZp0WdmTyLRPdP++Lpz8U
	 vDq/pAs1nhkz7NRTYHNvnNF2tnxsDQKBhdw7pSHS+ei8BiwXCOWvbUHimcKJmssG0B
	 jp3uaZZEe77CsSMXaQc8jS37JYMsULJXhgY9CmAP8cDTWRqYj0A+HPrr8hE6wA0PHa
	 A6S5qy+9jbk0JSBjTBgVu/kUC8KzBSrKbMb7udFUazn3OI+wEp8Mw4Vh9ydzXpDGI0
	 8+cyPAmLUrEjVpQ38Q3cvI4BDapaK6tOkxH3eU84DL0JRplWUGKBs4HH1U7A9bmqhk
	 vY6v1+G37WFEg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming
 on Glymur
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com>
References: <20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com>
Date: Tue, 21 Jul 2026 05:38:07 +0000
Message-Id: <20260721053807.B3D811F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgRFAgUEhZ
IHJlYWR5IGNoZWNrIGR1ZSB0byBjb3B5LXBhc3RlIGVycm9yIGluIHN0YXR1cyByZWdpc3RlciBw
b2xsaW5nLgotIFtIaWdoXSBVbmNvbmRpdGlvbmFsIG92ZXJ3cml0ZSBvZiBRU0VSREVTX0RQX1BI
WV9BVVhfQ0ZHMiBjbG9iYmVycyB0aGUgaW50ZW5kZWQgcGF0Y2ggZml4LgotLQoKLS0tIFBhdGNo
IFsxXTogW1BBVENIXSBwaHk6IHF1YWxjb21tOiBxbXAtY29tYm86IHVwZGF0ZSBEUCBQSFkgUExM
IHByb2dyYW1taW5nIG9uIEdseW11ciAtLS0KKE5vdGU6IER1ZSB0byBzeXN0ZW0gcmVjaXRhdGlv
biByZXN0cmljdGlvbnMsIHRoaXMgcmV2aWV3IHVzZXMgYSBmcmVlLWZvcm0Kc3VtbWFyeSBmb3Jt
YXQgaW5zdGVhZCBvZiBpbmxpbmUgcXVvdGluZyBvZiB0aGUgcGF0Y2ggZGlmZi4pCgpjb21taXQg
ZjBjNzgxOWEyOWQxYWVmMzM4NGMxYWNiNDM0OTU5ZjMyMmJhZjhiZApBdXRob3I6IFJpdGVzaCBL
dW1hciA8cml0ZXNoLmt1bWFyQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHF1YWxjb21tOiBxbXAt
Y29tYm86IHVwZGF0ZSBEUCBQSFkgUExMIHByb2dyYW1taW5nIG9uIEdseW11cgoKVGhlIGV4aXN0
aW5nIERQIFBIWSBQTEwgYW5kIEFVWCBjb25maWd1cmF0aW9uIGZvciB0aGUgR2x5bXVyIHBsYXRm
b3JtCmRvZXMgbm90IGZ1bGx5IGZvbGxvdyB0aGUgSGFyZHdhcmUgUHJvZ3JhbW1pbmcgR3VpZGUg
cmVxdWlyZW1lbnRzIGZvcgpEUCBvdmVyIFR5cGUtQywgd2hpY2ggcmVzdWx0cyBpbiBEUCBsaW5r
IGJyaW5nLXVwIGZhaWx1cmVzLgpVcGRhdGUgdGhlIERQIFBIWSBwcm9ncmFtbWluZyBzZXF1ZW5j
ZSBhbmQgUExMLXJlbGF0ZWQgcmVnaXN0ZXIKc2V0dGluZ3MgdG8gYWxpZ24gd2l0aCB0aGUgbGF0
ZXN0IHJlY29tbWVuZGF0aW9ucy4KCkxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI2MDQxOS1nbHltdXJfZHAtdjEtMS1hZDEwNjdhOGU4YWVAb3NzLnF1YWxjb21tLmNvbS8KCltT
ZXZlcml0eTogSGlnaF0KTG9va2luZyBhdCB0aGUgdXBkYXRlZCBzdGF0dXMgcG9sbGluZyBpbiBx
bXBfdjhfY29uZmlndXJlX2RwX3BoeSgpIGluCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC1jb21iby5jLCB0aGUgY29kZSBub3cgcG9sbHMKUVBIWV9EUF9QSFlfU1RBVFVTIGZvciBC
SVQoMCksIGFuZCB0aGVuIHBvbGxzIFFQSFlfQ09NX0NNTl9TVEFUVVMgdHdpY2UKKGZpcnN0IGZv
ciBCSVQoMCksIHRoZW4gZm9yIEJJVCgxKSkuCgpQcmV2aW91c2x5LCB0aGlzIHNlY3Rpb24gd2Fp
dGVkIGZvciB0aGUgRFAgUEhZIHRvIGJlY29tZSByZWFkeSBieSBwb2xsaW5nClFQSFlfRFBfUEhZ
X1NUQVRVUyBmb3IgQklUKDEpIGFmdGVyIHdyaXRpbmcgdG8gUVNFUkRFU19EUF9QSFlfQ0ZHLiBT
aW5jZQpRUEhZX0NPTV9DTU5fU1RBVFVTIHdhcyBhbHJlYWR5IHBvbGxlZCBlYXJsaWVyIGluIHRo
ZSBzZXF1ZW5jZSwgd2lsbCB0aGVzZQpuZXcgY2hlY2tzIHN1Y2NlZWQgaW1tZWRpYXRlbHkgYW5k
IGJ5cGFzcyB0aGUgcmVxdWlyZWQgc3luY2hyb25pemF0aW9uIGZvcgp0aGUgRFAgUEhZIHN0YXRl
IG1hY2hpbmU/IENvdWxkIHRoaXMgcmVzdWx0IGluIHJhY2UgY29uZGl0aW9ucyBhbmQKRGlzcGxh
eVBvcnQgbGluayB0cmFpbmluZyBmYWlsdXJlcz8KCltTZXZlcml0eTogSGlnaF0KSW4gdGhlIG5l
d2x5IGludHJvZHVjZWQgcW1wX3Y4X2hlbHBlcl9jb25maWd1cmVfZHBfcGh5KCkgZnVuY3Rpb24g
aW4gdGhlCnNhbWUgZmlsZSwgdGhlcmUgaXMgYW4gdW5jb25kaXRpb25hbCB3cml0ZSBvZiAweGE0
IHRvClFTRVJERVNfRFBfUEhZX0FVWF9DRkcyLgoKSG93ZXZlciwgcW1wX3Y4X2RwX2F1eF9pbml0
KCkgaXMgZGVzaWduZWQgdG8gd3JpdGUgdGhlIG5ld2x5IHJlY29tbWVuZGVkCjB4MDYgdmFsdWUg
dG8gUVNFUkRFU19EUF9QSFlfQVVYX0NGRzIuIEJlY2F1c2UgdGhlIGhlbHBlciBmdW5jdGlvbgpx
bXBfdjhfaGVscGVyX2NvbmZpZ3VyZV9kcF9waHkoKSBpcyBjYWxsZWQgbGF0ZXIgZHVyaW5nIGxp
bmsgdHJhaW5pbmcgdmlhCmNvbmZpZ3VyZV9kcF9waHkoKSwgd2lsbCB0aGlzIGhhcmRjb2RlZCB3
cml0ZSBvZiAweGE0IGNsb2JiZXIgdGhlIDB4MDYgdmFsdWUKcHJvZ3JhbW1lZCBlYXJsaWVyPyBE
b2VzIHRoaXMgaW5hZHZlcnRlbnRseSB1bmRvIHRoZSBpbnRlbmRlZCBBVVgKY29uZmlndXJhdGlv
biBmaXggZm9yIHRoZSBHbHltdXIgcGxhdGZvcm0/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIxLWdseW11ci1waHktY29uZi12
MS0xLTdjODkwOTU1MmM1ZUBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

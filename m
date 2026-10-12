Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A278BCA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yP45+ryD0j90bL4Mqmf2HgsnHnzZKnL3VzT12O6S1mE=; b=B1plw47PJFwlZK
	V4suKzq31L9Jp4X5FRpC3lCRgewMsrqHFoqamRojFHFelVymCMPhrAFPPaSXb4TSlBK8oN40PNZ2M
	MaWWQUlR6w5uPDXA9lrANuN622aWaYGUDnPza2hM9bhIJM8YE1p4xOpAfFcf95tY3xQQz1hwwxrSK
	bYetfGoqQOKUMMIUXGil/7HGRYZT3BuEG9IOGmJbsF54hl9Y7atzaqoFZBP9uxLvfoCjs3lWZvIj0
	pPW3yHsYXfasoVXGJJRMLOtdTgDX5JWLkCQs7JTRtJuO6bYKKJtdfltMeuW0SBDHBRM8jtu2KgI7/
	hulM4jrORSsT6qsQzFFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIUW-0000000AuiY-1QcR;
	Mon, 12 Oct 2026 16:03:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIUV-0000000AuiS-2BvD
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 16:03:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 230BD43910;
	Mon, 12 Oct 2026 16:03:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 629CD1F0089C;
	Mon, 12 Oct 2026 16:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791820987;
	bh=HmTB8TMkREzovBL97ThcNv5qR/kUGxn6VCu8bZGRhe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CvPL/VjqX1u95JcrKme/8j+/yWrPu8VV1CMOo2tVEu7XKPpfN5PbPJjcr3DuZojw+
	 eEANxikdntlfTSuyeiWtt0IGr6crOGcxyAhP549dk/uqbcqdevtKrXK3DgOVLm8TwK
	 RhKkR+x44yPxhSiw7N21PjxOTokWe+dYE8SRSjjPuCQGC8GG0pE/Ji5B6lpN4VxUfo
	 A7+v0Uoauj8854yUfJZ4nrRYka86+V6N7xks/tKdxqf/7gXE3GvKFAzQKi0iDX91Vg
	 eLmKKw01ASLoOWcoQjlgluohLW25/l6JjKG0KrwcaQmgXqGXer4W/o1+yQISVsnklB
	 OWZi/CbLdMafw==
Date: Mon, 12 Oct 2026 21:32:59 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com, 
	justin.chen@broadcom.com, kishon@kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, 
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: usb: Fix USB 2.0 clock reference leak in
 brcm_usb_phy_dvr_init()
Message-ID: <as0EawoNAbEarKAT@debian>
References: <20260917133510.2153560-1-vulab@iscas.ac.cn>
 <as0DR2jcw2mqnxKA@debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <as0DR2jcw2mqnxKA@debian>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBPY3QgMTIsIDIwMjYgYXQgMDk6Mjc6MDdQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFRodSwgU2VwIDE3LCAyMDI2IGF0IDAxOjM1OjEwUE0gKzAwMDAs
IFdlbnRhbyBMaWFuZyB3cm90ZToKPiA+IGJyY21fdXNiX3BoeV9kdnJfaW5pdCgpIG9idGFpbnMg
dXNiXzIwX2NsayB3aXRoIG9mX2Nsa19nZXRfYnlfbmFtZSgpLAo+ID4gd2hpY2ggdGFrZXMgYSBy
ZWZlcmVuY2Ugb24gdGhlIGNsb2NrLCBidXQgc2V2ZXJhbCBsYXRlciBlcnJvciByZXR1cm5zCj4g
PiAtLSBhIGZhaWxlZCBjbGtfcHJlcGFyZV9lbmFibGUoKSwgYSBmYWlsZWQgZGV2bV9waHlfY3Jl
YXRlKCksIHRoZQo+ID4gLUVQUk9CRV9ERUZFUiBwYXRocyBvZiB1c2JfMzBfY2xrIGFuZCBzdXNw
ZW5kX2NsaywgYW5kIGEgZmFpbGVkCj4gPiBkZXZtX3JlcXVlc3RfaXJxKCkgLS0gcmV0dXJuIHdp
dGhvdXQgY2FsbGluZyBjbGtfcHV0KCkuICBObyBvdGhlciBjb2RlCj4gPiBpbiB0aGUgZHJpdmVy
IHJlbGVhc2VzIGl0IGVpdGhlci4KPiA+IAo+ID4gQWRkIGFuIGVycl9wdXRfY2xrcyBsYWJlbCB0
aGF0IGRyb3BzIHRoZSByZWZlcmVuY2UgYmVmb3JlIHJldHVybmluZy4KPiA+IAo+ID4gRml4ZXM6
IDQ5ODU5ZTU1ZTM2NCAoInBoeTogdXNiOiBwaHktYnJjbS11c2I6IEFkZCBCcm9hZGNvbSBTVEIg
VVNCIHBoeSBkcml2ZXIiKQo+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IFNpZ25l
ZC1vZmYtYnk6IFdlbnRhbyBMaWFuZyA8dnVsYWJAaXNjYXMuYWMuY24+Cj4gCj4gRHVwbGljYXRl
IG9mIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI2MDkxMzAxMjk1Ni4xNjQ0
My0xLW1odW41MTJAZ21haWwuY29tCj4gCgpTb3JyeSBteSBiYWQuIFRoYXQgcGF0Y2ggd2FzIGhh
bmRsaW5nIGNsa19wcmVwYXJlX2VuYWJsZSgpIGxlYWsuIEJ1dCB0aGVyZSBpcyBubwpwb2ludCBp
biBkaWZmZXJlbnQgcGF0Y2hlcyBkb2luZyB0aGVzZSB0aGluZ3MuIEp1c3QgaGFuZGxlIGFsbCBj
bGsgbGVha3MgaW4KcHJvYmUgaW4gYSBzaW5nbGUgcGF0Y2guCgotIE1hbmkKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

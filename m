Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C64DDCA9EDE
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 15:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eamUW1UuhU9g4w0frb1zWBXR+Kb2g0xzTwirxgPVdVI=; b=ESO014MiP0PlCd
	diAKpsMjalZH4NzSMLG61qOsjpnhR2JL8+EbVg4vgji+ZrWSMDKh3WsIy4MJejvylYF39403gfR5y
	04EtTVsaepSwboKuW/iEtGIRRMdXmMnawjgUByU+0c322KVtgP5kSQICamCdA2hLobRETMbdTuaaU
	wnEbEaMRlL851An0qTg7mGlbh38WSuAh/u+gaBm9gsT8klglsY6noEwHJVhdT0F71fBjbd5Uoy0TA
	FPi8YIyGO+bv6/M5foCSkAQreyGRhX3vodz8Qijn1F5FCrtxWth7XiVWUyevurkdjzFQ8/61RfdXz
	Te9wShcg8eofy92THzlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIOr-0000000Atxg-1QyZ;
	Mon, 12 Oct 2026 15:57:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIOq-0000000Atwl-0o3n
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 15:57:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B6C82404DC;
	Mon, 12 Oct 2026 15:57:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D93BA1F0089B;
	Mon, 12 Oct 2026 15:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791820635;
	bh=Jj0B9E3ttjI3QI+ktrkzj6pBasZ09kGnLpoK90d81cY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=loAOGi353EL3cfAXFKDjejwAiJ4RERlW1DLlR881bijUjRYzTfLTq14IrgufhtECa
	 1MVHreTEl1xyFmNXyuf8niZmzCzZxhSb7gwi43rFsYZxB+4sKO/1JVCzpUKNRZb8Wo
	 Xxm0zyMwyVdX9LNFetu0b2u7L+uG15KRfpwdydwPcnxLDI6ta3pXQUAvPEOmdBl1cj
	 +CLzg6D6RGOeppvzLEiG65Al/oJdq6rfhKLqrQ2r1DoImQbuIa1JGBpwYTu8DZl2gv
	 lwvzEguPWTuO7IrZ7hNg4/q5zUt/oCNPzndOit/8y3IJod6P9bg3RHZ4LHI82kzMLB
	 kKfdiAq3IMcfA==
Date: Mon, 12 Oct 2026 21:27:07 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com, 
	justin.chen@broadcom.com, kishon@kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, 
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: usb: Fix USB 2.0 clock reference leak in
 brcm_usb_phy_dvr_init()
Message-ID: <as0DR2jcw2mqnxKA@debian>
References: <20260917133510.2153560-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917133510.2153560-1-vulab@iscas.ac.cn>
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMDE6MzU6MTBQTSArMDAwMCwgV2VudGFvIExpYW5nIHdy
b3RlOgo+IGJyY21fdXNiX3BoeV9kdnJfaW5pdCgpIG9idGFpbnMgdXNiXzIwX2NsayB3aXRoIG9m
X2Nsa19nZXRfYnlfbmFtZSgpLAo+IHdoaWNoIHRha2VzIGEgcmVmZXJlbmNlIG9uIHRoZSBjbG9j
aywgYnV0IHNldmVyYWwgbGF0ZXIgZXJyb3IgcmV0dXJucwo+IC0tIGEgZmFpbGVkIGNsa19wcmVw
YXJlX2VuYWJsZSgpLCBhIGZhaWxlZCBkZXZtX3BoeV9jcmVhdGUoKSwgdGhlCj4gLUVQUk9CRV9E
RUZFUiBwYXRocyBvZiB1c2JfMzBfY2xrIGFuZCBzdXNwZW5kX2NsaywgYW5kIGEgZmFpbGVkCj4g
ZGV2bV9yZXF1ZXN0X2lycSgpIC0tIHJldHVybiB3aXRob3V0IGNhbGxpbmcgY2xrX3B1dCgpLiAg
Tm8gb3RoZXIgY29kZQo+IGluIHRoZSBkcml2ZXIgcmVsZWFzZXMgaXQgZWl0aGVyLgo+IAo+IEFk
ZCBhbiBlcnJfcHV0X2Nsa3MgbGFiZWwgdGhhdCBkcm9wcyB0aGUgcmVmZXJlbmNlIGJlZm9yZSBy
ZXR1cm5pbmcuCj4gCj4gRml4ZXM6IDQ5ODU5ZTU1ZTM2NCAoInBoeTogdXNiOiBwaHktYnJjbS11
c2I6IEFkZCBCcm9hZGNvbSBTVEIgVVNCIHBoeSBkcml2ZXIiKQo+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogV2VudGFvIExpYW5nIDx2dWxhYkBpc2Nhcy5hYy5j
bj4KCkR1cGxpY2F0ZSBvZiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA5
MTMwMTI5NTYuMTY0NDMtMS1taHVuNTEyQGdtYWlsLmNvbQoKLSBNYW5pCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5F59CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 16:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgRVSxFQw8VtVomFWlcBtVRhSec8YbygZvguNTmPLuM=; b=m8k6aqiowUH1QD
	tEL7hXftCGvjbNOBV6bmGl9U3qFNZQRMdE2Oi39hZ5nSbDuQt8lba96OEfctNbBR4I0mTjSfSk3gH
	k6FtuKzk3/wLvVeOA1ywhxw8RoM9g4QexmHh2Pl9eiP5UG2cl3R1Zfp+OClL9m/9yJ6320i9qlSn9
	uQc6gAKtaGVI+gwyKPI8IaOMJfi+pY+SV44q89b+CpBkKdoAGI6hNwg4kDYr/ilfK7hqmnGB5DIp4
	a3pmuYvxeAoNP1HKDOqiUkVuiTIqcqMdKot9/LQGrzyPj+cHi/VGCKwkfOJXHRpaPx/05dR0u2OkI
	7qodpo4mkpl4Ay5ukZwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIWN-0000000AunQ-24zM;
	Mon, 12 Oct 2026 16:05:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIWM-0000000AunG-01qT
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 16:05:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3A967601FB;
	Mon, 12 Oct 2026 16:05:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 496271F0089B;
	Mon, 12 Oct 2026 16:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791821100;
	bh=eldCxvoo+3xT1QHt7oQPOhAPJhe6yOVGMkPFOshsdCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nmLe7OIv+/OeWH/yLrSmuNvcPg0FTZCvwfp/+frflRvbuGrNNX/ErJ0pgZsiWL9Im
	 GoM+tQleb9A/WwGg7AuZUfA38z1M1bC1eFjlxXsQ31vLW56fzgPSrAkMFM50LyRK7t
	 caY6W1kyTyD09Z/pzglEV8lMXIo8Bimt9zmtvXvxFq66Xefgs/dQ+BDFMmJJAxjLWS
	 TUq7t8gN4hfPGhndf26DgnvFU9ASOKIYgPvx01UaX5i/eZx+SkTeB7rqTLGvUi1w85
	 3O/wBWrzKzmmeqXMtkYscImJPPGUNLfcWL5nBOyjlzx5qjcjXvdqoVozNpX6Z4z7w0
	 iM6lal9TXN26A==
Date: Mon, 12 Oct 2026 21:34:52 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com, 
	justin.chen@broadcom.com, kishon@kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, 
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: usb: Fix USB 3.0 clock reference leak in
 brcm_usb_phy_dvr_init()
Message-ID: <as0FEDefpSlqtipP@debian>
References: <20260917133651.2153617-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917133651.2153617-1-vulab@iscas.ac.cn>
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMDE6MzY6NTFQTSArMDAwMCwgV2VudGFvIExpYW5nIHdy
b3RlOgo+IGJyY21fdXNiX3BoeV9kdnJfaW5pdCgpIG9idGFpbnMgdXNiXzMwX2NsayB3aXRoIG9m
X2Nsa19nZXRfYnlfbmFtZSgpLAo+IHdoaWNoIHRha2VzIGEgcmVmZXJlbmNlIG9uIHRoZSBjbG9j
aywgYnV0IHJldHVybnMgd2l0aG91dCBjYWxsaW5nCj4gY2xrX3B1dCgpIHdoZW4gY2xrX3ByZXBh
cmVfZW5hYmxlKCkgZmFpbHMsIHdoZW4gdGhlIHN1c3BlbmQgY2xvY2sKPiByZXF1ZXN0IGlzIGRl
ZmVycmVkLCBvciB3aGVuIGRldm1fcmVxdWVzdF9pcnEoKSBmYWlscy4gIFRoZSBjbG9jayBpcwo+
IG9ubHkgaGFuZGVkIHRvIHRoZSBkcml2ZXIgb24gdGhlIHN1Y2Nlc3MgcGF0aCwgc28gbm90aGlu
ZyByZWxlYXNlcyB0aGUKPiByZWZlcmVuY2Ugb24gdGhlc2UgcGF0aHMuCj4gCj4gRHJvcCBpdCBm
cm9tIHRoZSBlcnJfcHV0X2Nsa3MgbGFiZWwsIGFuZCBjbGVhciB1c2JfMzBfY2xrIG9uIHRoZQo+
IC1FUFJPQkVfREVGRVIgcGF0aCB3aGVyZSBpdCBob2xkcyBhbiBlcnJvciBwb2ludGVyIHJhdGhl
ciB0aGFuIGEKPiByZWZlcmVuY2UuCj4gCj4gRml4ZXM6IDQ5ODU5ZTU1ZTM2NCAoInBoeTogdXNi
OiBwaHktYnJjbS11c2I6IEFkZCBCcm9hZGNvbSBTVEIgVVNCIHBoeSBkcml2ZXIiKQo+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogV2VudGFvIExpYW5nIDx2dWxh
YkBpc2Nhcy5hYy5jbj4KClNhbWUgY29tbWVudCBhcyBwcmV2aW91cyBwYXRjaC4gSGFuZGxlIGFs
bCBsZWFrcyBpbiBvbmUgcGF0Y2guCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

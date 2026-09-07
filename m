Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F5CC79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2S965e2Sdvbn7A4AFZpLpxTxaYmphoebwFqIscv07s=; b=eH2Zrs7aFiAM3g
	cff5jwZF0eVJqFMOK7h0Q9X/LrZTBo1uXrcczBRPN1CcRnkhNrlcmUEpJOLSLcV8DQEEiHj6D5uXG
	pPDwsXzxloNrhSfzrRVW7BUcMiaDZe5rKfPAZJ6nAVUQuqNuihaJjST2PNE5EtxyzhWz/GT5flaGf
	I9X+Ln+WnIOKKvr1sci07Qvqq/rQOLnnkV/igG3RqS8KRD7TCf9NDqjOxYCA5e+sj2A3+kp67BPMz
	Ng29NFGvALfBrgR2ZnmFZMUVbXSe/dyFcD9BTO1XI3PdEltzbGhofuqt0AB+tXlu7W94cgbt2AbDQ
	YbcvlVOExqvnUj2KKdKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3TuN-00000006AgO-2x48;
	Mon, 07 Sep 2026 07:36:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3TuL-00000006AgF-2ajW
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 07:36:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B925D601F9;
	Mon,  7 Sep 2026 07:36:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 327501F00A3A;
	Mon,  7 Sep 2026 07:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788766608;
	bh=S7HSpF7aGp/FOekX/pqWW1JEQZaqfktH5lFRWunbB2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bb72CyuQ8VvjOYQ/ZS3dD+OT9UE54q/VJ26tdp1foHrFASt2yJCTJk5ygFgir+XP8
	 I9RAfn2ttfb6C9vRy+pysbV71bfa8fQWg0/5d9y9EOpZYG6Ji1FEpe1kB0IYBsn8dC
	 ITlDXDtvwS+3Z+HebupwQ2FMGKbmzU3xMgfIQzWYJ6/wBmcVDXTr/CgHX7MDHyJB//
	 WuijP8w+PhmFxPbkUsuxoO84l9JqXOZLsriFR1Zn6Baz9VVQ+IDPWC0WlxlCxGz50D
	 I1NY1b0AIBzCqFqNNdoDVk4RGIGUDC4j1ppuSmhiBUTGA8F4rKckbBrz4MhRKLn6KF
	 GruW0AoXmgw/Q==
Date: Mon, 7 Sep 2026 09:36:38 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH V2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP
 UFS PHY compatible for Maili
Message-ID: <dgnhn7ucgbgzpcxpn7eemimso3muzjenog46imica67potnxf3@trntdld7iw2u>
References: <20260814070112.1676300-1-nitin.rawat@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260814070112.1676300-1-nitin.rawat@oss.qualcomm.com>
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

T24gRnJpLCBBdWcgMTQsIDIwMjYgYXQgMTI6MzE6MTJQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gRG9jdW1lbnQgdGhlIFFNUCBVRlMgUEhZIGNvbXBhdGlibGUgZm9yIFF1YWxjb21tIE1h
aWxpIHRvIHN1cHBvcnQKPiBwaHlzaWNhbCBsYXllciBmdW5jdGlvbmFsaXR5IGZvciBVRlMgZm91
bmQgb24gdGhlIFNvQy4gVXNlIGZhbGxiYWNrIHRvCj4gaW5kaWNhdGUgdGhlIGNvbXBhdGliaWxp
dHkgb2YgdGhlIFFNUCBVRlMgUEhZIG9uIHRoZSBNYWlsaSB3aXRoIHRoYXQgb24KPiB0aGUgSGF3
aS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKaW5neWkgV2FuZyA8amluZ3lpLndhbmdAb3NzLnF1YWxj
b21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8bml0aW4ucmF3YXRAb3NzLnF1
YWxjb21tLmNvbT4KCkF1dGhvcnNoaXAgaXMgc3RpbGwgd3JvbmcuIElmIEppbmd5aSB3cm90ZSB0
aGUgcGF0Y2gsIHRoZW4gJ0F1dGhvcnNoaXAnIHNob3VsZApiZWxvbmcgdG8gSmluZ3lpLiBPdGhl
cndpc2UsIGlmIE5pdGluIGlzIHRoZSBhdXRob3IsIHRoZW4gdGhlcmUgc2hvdWxkIGJlIGEKQ28t
ZGV2ZWxvcGVkLWJ5IHRhZyBmb3IgSmluZ3lpIGZvciBjby1kZXZlbG9wbWVudCBvZiB0aGUgcGF0
Y2guCgpGb3IgdGhlIHBhdGNoIGNvbnRlbnQgdGhvdWdoLAoKQWNrZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1h
bmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK

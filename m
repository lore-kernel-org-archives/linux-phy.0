Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C826CD5BBF
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 05:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmc/rvJ7MYmASbjXS+CaS8g7wOHdHWRT4fgZEtxpUcg=; b=Cw5ptiPNv6IYlO
	4uyqggnjw78wU+81wJTytKjrRc9I6ZTGhFyOMa8i+UZLAsBFy+wI2XRKx3sIcEbBtYA+DsxP70Mh5
	Io7ExU/bLAWW8Ec9krSCf4HVELJHg7acsETwywsde0BFZONroJ9Sp3vRW5CKe8P6eV8KMT+ApSuQL
	E5ct2qLBppGV6hvo33NRPhhK24Bq2Ik/hzosSYF8BCKV4nxByL9GwjJEbHepJ7hpnwcJJ2W0V270m
	cimCeQjgC5LhORXqF9nZSpghzvNnWm8eVo/8kwQqCAEsiZh5h2K/OoOc54mq+vtlAFai+c2rk/TJq
	Lr/HWakSpbgFyNy4fjqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRO9b-0000000GM9k-1M5x;
	Mon, 25 May 2026 05:47:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRO9a-0000000GM9c-2W7v
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 05:47:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DF4D9601E3;
	Mon, 25 May 2026 05:47:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A4891F000E9;
	Mon, 25 May 2026 05:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779688025;
	bh=xqK7fgXWi45nvz9VHQgpE+zTyFdNw8eXTSX1sXRWDqw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fFi05KANGvHZG+ZXRYaTwP8xnSV/QaeUuftp9d+x1q9O0pDEueKxFX7y06aPP67VJ
	 ySf/ygotzeQPE3NJDCnnqEjLafP1KXgGJ1EHCbXO8l0jUVKtk/iMAG78CTuXeLgrpT
	 Zif1rZjwZhx22qhuWSXnRkEtyEp+7I5iMpzuk81heaKm2THWFk/bUPqwiavgHyINl6
	 T9t5XoqDaf2S6swT1/tN+8nAy5BscvKJRjgrIzrKk1z7pj2p9dP01OAKKQd92vd/ok
	 Fkv0HuBC0qPWTagRnxtIyDycwEIBLE9MOUIxDqkLT36LDnYpPXd9iXlZKd3JssBri6
	 TeMiEE8JLFTGA==
Date: Mon, 25 May 2026 11:16:56 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, bvanassche@acm.org, 
	andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, 
	luca.weiss@fairphone.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V2 2/3] scsi: ufs: qcom :dt-bindings: Document the Hawi
 UFS controller
Message-ID: <ynxf6e2wiatgi2ogxywgwqlrtot2cfnkzg2l4n6tvj274uscm6@rz6fydc4gxfi>
References: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
 <20260522172716.820490-3-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260522172716.820490-3-palash.kambar@oss.qualcomm.com>
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgMTA6NTc6MTVQTSArMDUzMCwgcGFsYXNoLmthbWJhckBv
c3MucXVhbGNvbW0uY29tIHdyb3RlOgo+IEZyb206IFBhbGFzaCBLYW1iYXIgPHBhbGFzaC5rYW1i
YXJAb3NzLnF1YWxjb21tLmNvbT4KPiAKPiBEb2N1bWVudCB0aGUgVUZTIENvbnRyb2xsZXIgb24g
dGhlIEhhd2kgUGxhdGZvcm0uCj4gCj4gU2lnbmVkLW9mZi1ieTogUGFsYXNoIEthbWJhciA8cGFs
YXNoLmthbWJhckBvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sc204NjUwLXVmc2hjLnlhbWwgfCAyICsrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11ZnNoYy55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11ZnNoYy55
YW1sCj4gaW5kZXggZjI4NjQxYzZlNjhmLi4zZGUwMGFmZmE0YzYgMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1MC11ZnNoYy55YW1s
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9xY29tLHNtODY1
MC11ZnNoYy55YW1sCj4gQEAgLTE2LDYgKzE2LDcgQEAgc2VsZWN0Ogo+ICAgICAgICBjb250YWlu
czoKPiAgICAgICAgICBlbnVtOgo+ICAgICAgICAgICAgLSBxY29tLGVsaXphLXVmc2hjCj4gKyAg
ICAgICAgICAtIHFjb20saGF3aS11ZnNoYwo+ICAgICAgICAgICAgLSBxY29tLGthYW5hcGFsaS11
ZnNoYwo+ICAgICAgICAgICAgLSBxY29tLHNtODY1MC11ZnNoYwo+ICAgICAgICAgICAgLSBxY29t
LHNtODc1MC11ZnNoYwo+IEBAIC0yNyw2ICsyOCw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICBpdGVt
czoKPiAgICAgICAgLSBlbnVtOgo+ICAgICAgICAgICAgLSBxY29tLGVsaXphLXVmc2hjCj4gKyAg
ICAgICAgICAtIHFjb20saGF3aS11ZnNoYwo+ICAgICAgICAgICAgLSBxY29tLGthYW5hcGFsaS11
ZnNoYwo+ICAgICAgICAgICAgLSBxY29tLHNtODY1MC11ZnNoYwo+ICAgICAgICAgICAgLSBxY29t
LHNtODc1MC11ZnNoYwo+IC0tIAo+IDIuMzQuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

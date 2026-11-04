Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC45606A333
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 16:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CsjjJ+5I;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=b0VM/7bw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/PXwXtAAzNUSsZqJ02kgnCaHkgWkDoyxJlr5nZGpXPc=; b=CsjjJ+5IfGBhcui5FhUyoBb6kJ
	df5tXB47pM+2/GKg8P89Nlps9XC/FgTb3T16kLOgdeFjhUyeX0AbLIt8paDPAzmj5tEv5Po7/mgt8
	zPK6LXucdnzvcO10JrSjZF577W7dxdW75cgyfs4ZNXEGgTQQzbVBItGF7HIAbRVy/+t6/URQ2rk/7
	nBCZ4aJcR/xCQmZ68dJDjhN/hXcDl9yjG4lK5xFzk9VAAar7yRLBYFaAa4z+3+LgoDf0xdnFZxddY
	H0WuvyR/OFbigqoqhxiwRBfwGFU1bm7PTiAsXSQjxHhT/byEqoH5EW+UPtz8H1UkuBPeODG0sinna
	8Z80jU4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOdxS-00000005zsV-3Yjk;
	Wed, 04 Nov 2026 16:35:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOdxN-00000005zr7-3JKX;
	Wed, 04 Nov 2026 16:35:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DF0026022B;
	Wed,  4 Nov 2026 16:35:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 658F31F00A02;
	Wed,  4 Nov 2026 16:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793810124;
	bh=SbfzzROp8o1VQd8NPKRivV3cyRBL/18CLJBEtzHhX6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b0VM/7bwi9w7myAwUB/DAoWpEWAE1VI1YPwOtYC2nt7NkXe+D2PLSiNgZpkcy7Tyx
	 YkfJCRRSynjPkpUZyrO/YvIcHa1wAzUdY0Q9VTyzwLGZbyGffr+riBR8DeEAonU7cf
	 giiQf9UYosjzx9JYNGJcgUyuxTJ7cjkY/oJXu+I5FVtvrkuPPHUCSwEtjs4e4OauPO
	 bIV8CKchpprr8cZ5zcMfNLti15ISNryEsdCpekYNUP855Dgnc15Wnx39c3LkQvZB2A
	 hLwPbSysbg1Hfr8lOdlE6LhLnRPEybSQ63xWYaBHFYWRHQlTyPjD1Pla8kAT6Ck2Ft
	 Yaee+ybNSdm+A==
Date: Wed, 4 Nov 2026 10:35:22 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: airoha: Document support for
 AN7583 Gen3 PCIe PHY
Message-ID: <179381008124.1965616.15041265527185423969.robh@kernel.org>
References: <20261103195007.9721-1-ansuelsmth@gmail.com>
 <20261103195007.9721-2-ansuelsmth@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261103195007.9721-2-ansuelsmth@gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 03 Nov 2026 20:49:59 +0100, Christian Marangi wrote:
> Document support for AN7583 PCIe PHY used to make the Gen3 PCIe port
> work. Add the required register to configure the PCIe PHY and provide an
> example for it.
> 
> The PHY link to another PHY (the QPHY as described in the YAML) to
> correctly handle Gen2 speed and mode. It's mandatory to have this PHY
> configured for correct functionality of PCIe. The QPHY is a unified PHY
> that both handle USB and PCIe PHY.
> 
> It's also mondatory that the QPHY setup is done in the PCIe PHY setup and
> calibration phase or calibration might fail.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  .../phy/airoha,an7583-pcie-gen3-phy.yaml      | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-pcie-gen3-phy.yaml
> 

You forgot my tag...

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

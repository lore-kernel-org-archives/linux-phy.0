Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 668FBC3ABA3
	for <linux-phy@archiver.kernel.org>; Thu,  1 May 2025 12:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EYamoPitRDdmAv4rvsfAUmWHVTCS8IGFb9o/2LnVMM=; b=c+qMF8+nhCFMW2
	Ef5Rq1C3CQRLpBbuNV0vBhBLmEIbOsaZXFDASJRyUH6HuTOMBr7e4dwn2PjEndJSkogVuoDY7SAQz
	DrdDvc/bCXgOcQt4gCtL5fxQkoh6o0I7QSv/JXrl5P20eyvN+IdD3QxOn7BrlEmlGqsMyglo6inS4
	GfdKyqstqHVsF0aZdj6mAuZo+4SHJEgJFsMBz3cFSaYNbpqDjzRsXpBkoqQjA6IfV/1TEiYx18E3x
	AfCFaUxK5tdXHN4+iim+7UYRfcAVrBua8LftXAGp6F6yBzMMexzGhZIVJc1BzPZMFnGgKZ43DRLYK
	6GUS5bveOiUntZwdmGeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAT4P-0000000Fg4o-081j;
	Thu, 01 May 2025 12:31:17 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uASXi-0000000FKWp-2yVN;
	Thu, 01 May 2025 11:57:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A6270A4B4CB;
	Thu,  1 May 2025 11:52:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8558AC4CEE3;
	Thu,  1 May 2025 11:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746100649;
	bh=AaFZYNZaVoJdnT4CJkDiw+CwenfpvYlqV7aZGMXp690=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HfPs0BOFLsZdNpTmh1FdTynzp23DXKkkIxax057Ff51k1w8vZZ+RKuJA7/JDu7Hph
	 X4wHVGmBW2/sHPBNUDziYUc5m6jD17F2E/67GCMoqiDJJGF6L1vA6V1j/tTyt8sCi3
	 gJjVE4wRNIMN35yYpLJF0Q0NehqftjQQ1GK8wBHSJ+RJqEaibETUTsrVE374flGRIe
	 Ficrw/H4B/TOonZxIpIfTlGiLFpBEGh3ZbLt51fzEtCvA9hrTd73cJgAsPdh8+jZp9
	 ZrU/YVHxyh7LRJJl0rb11iLes/8EgOHITgVbuvE7vTqzcA0BGCxU38v0S0VhJ91TfP
	 T4C/pghSNIY/A==
Date: Thu, 1 May 2025 13:57:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com, 
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: imx8mq-usb: fix
 fsl,phy-tx-vboost-level-microvolt property
Message-ID: <20250501-jovial-sassy-rottweiler-9e416a@kuoka>
References: <20250430094502.2723983-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250430094502.2723983-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_045730_810654_79895CC9 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Apr 30, 2025 at 05:44:59PM GMT, Xu Yang wrote:
> The ticket TKT0676370 shows the description of TX_VBOOST_LVL is wrong in
> register PHY_CTRL3 bit[31:29].
> 
>   011: Corresponds to a launch amplitude of 1.12 V.
>   010: Corresponds to a launch amplitude of 1.04 V.
>   000: Corresponds to a launch amplitude of 0.88 V.
> 
> After updated:
> 
>   011: Corresponds to a launch amplitude of 0.844 V.
>   100: Corresponds to a launch amplitude of 1.008 V.
>   101: Corresponds to a launch amplitude of 1.156 V.
> 
> This will correct it accordingly.
> 
> Fixes: b2e75563dc39 ("dt-bindings: phy: imx8mq-usb: add phy tuning properties")
> Cc: stable@vger.kernel.org
> Reviewed-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

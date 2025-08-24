Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60FBCCA0EEB
	for <linux-phy@archiver.kernel.org>; Sun, 24 Aug 2025 08:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2EcRHdh6pKW9aUQzXCx8eRn2Q14koWnoQ3HUZKLrlI=; b=4ZdN4HwZdO+ek3
	1zMsIpxFlOGWikCIJwi5wqBvv56jb/vS5urgtWRKC7RQhgBRBdNxIlrv6J9DS54KT6lZADLquo/2Z
	D/8At8EX/oc7JnehXUqlAt6yLubKpI3emtknJdhVlJc0gN6+YwEpsX+8gxz2elQQObd+PEE6cFdye
	C3Lo2rOYqjozBMZHNin6yH85J3Bq/2/AjpqfDUm1P+bZ77GQO6ReqKuEMCdBbrnTtVRCqEQ91r1WD
	uU9zD5WamLcR3t+xbJvoQK5G+FV0gDkukVX7/QC4QbAfBudOr+HkyjcuozL54mldJa13dIY7+Vx+U
	GdaenlZf1WdIL0sR/Irg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq6Rz-00000005uMJ-0Zvn;
	Sun, 24 Aug 2025 08:51:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq6Nh-00000005tqA-1Mje;
	Sun, 24 Aug 2025 08:47:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DE0FA44440;
	Sun, 24 Aug 2025 08:47:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32A63C4CEEB;
	Sun, 24 Aug 2025 08:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756025236;
	bh=8SpFJtgIL6w/2FAMyvt1dybDDF3Ptssrpv3lA6j0/pM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XVbVRWmYjffMzkM2Tn8yjdKVNjoYQwoT+ItD9JzikzGjlTmRrxVICMOi+/qhD5Cba
	 TLVo/ma3qleuaH5wdQ/xdjD8b5CEW5hf7+kwXlSjPVMiIB/4sGHuCZMaD45FZ+sCYZ
	 GSC8cJXlPPd5b9ExYZskzJ4Ws6QylCvAM+3XA5LY5BLSiNFbW2FEpxzPzqTDrqba/8
	 UldSRRq7Ow0RQtAEDIFlVfhw/G+dERmSRbP/Fqm+ov1PhVFnpHbu4Kbc7z6Bq6Nszi
	 yXW71S/OPbi1xjmLcKUw3DrU1JacEbKCWs7SFChjcNh01qVNaT10Y14Tx3mNsasiR8
	 PMxvu3Yk5PCpg==
Date: Sun, 24 Aug 2025 10:47:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org, 
	ivo.ivanov.ivanov1@gmail.com, igor.belwon@mentallysanemainliners.org, johan@kernel.org, 
	m.szyprowski@samsung.com, s.nawrocki@samsung.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com, 
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com, 
	selvarasu.g@samsung.com
Subject: Re: [PATCH v7 3/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo hsphy
Message-ID: <20250824-hopping-asp-of-painting-fbbfc2@kuoka>
References: <20250822093845.1179395-1-pritam.sutar@samsung.com>
 <CGME20250822093015epcas5p1f479af38c65a6decc900c37fe37537e5@epcas5p1.samsung.com>
 <20250822093845.1179395-4-pritam.sutar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250822093845.1179395-4-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_014717_382092_98AAD214 
X-CRM114-Status: UNSURE (   8.10  )
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

On Fri, Aug 22, 2025 at 03:08:42PM +0530, Pritam Manohar Sutar wrote:
> This phy only supports USB2.0 HS(480Mbps), FS(12Mbps) and
> LS(1.5Mbps) data rates. It requires two clocks, named as "phy" and "ref".
> The required supplies for this phy, named as vdd075_usb20(0.75v),
> vdd18_usb20(1.8v), vdd33_usb20(3.3v).
> 
> Add schema for combo hsphy found on this SoC.
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
>  .../devicetree/bindings/phy/samsung,usb3-drd-phy.yaml          | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

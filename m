Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97148E64015
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 21:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcYUHhYBwUVmFXQZ6++ZbYFMKSQ+m3uFqye+FXTrVnQ=; b=NWqTwaqSApzV1i
	g+wrIQ7Ox+lvzekIgsM9LM29CNi7X8UQdnY0NtKZu6FqyTbkzH794vkdnphXuInPrh57iNkhANFtF
	QUCRQEOsRlucXuX3hRYhaZ38LH1AF6r+pDikV952rvDIFIph8+yB15KbuNaW+WjQiKe7plUOiuGZJ
	IaS0q3Dbzhe6+03QSm8NtEY6UjX7en7CunfGD18/qWo8hhSUQ/afYo+kYkC0+c65JPpejs/qSQ/+X
	EqnVxQAuVdX0W83YmFvkqBxCPmVq57hD9p5aDMCAtSmsAGlBVgotg06ZYZCefUzJaypMGusJ4GpHo
	hSiXtdEet/D1hAxYzKQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEEus-00000000zwF-1DxS;
	Thu, 21 Nov 2024 21:40:46 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEEtr-00000000zhv-1pUH;
	Thu, 21 Nov 2024 21:39:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 62C95A4105D;
	Thu, 21 Nov 2024 21:37:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D63F1C4CECC;
	Thu, 21 Nov 2024 21:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732225182;
	bh=t5evj8QlSvXour9hJpuwutaiF1DHjXLc0vuzkj1EIqA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SEKboTw4h1cJSjf7cu+qGesjrWqjo2bPnLXrZjYgmVbWMvGgqDmBK8EctnAN/DG0d
	 4cpUCWt2Ci1ILuRX89ELTgrIQRjTS62J1jPHEVmOQZIz93C07K7F7ePUEzF+JwhHH9
	 4oeytD1SobEjTBn9/WiNJJdL048vKj6Ah2L5HOG3l8urelYhBvVuO9EAdOnBsks2DB
	 8D+pSvjHHYqKOHUOKApp/BOzDRkCaGTGkwlt94h6ag+GU0HAOERfa144b5hWrrdMiM
	 G8Bg5qKcxvUmZdTjDwQABky5G6TVwFQ4CkyVB0VHgWM2rbgTwNm8mvte6BgwIm64A5
	 GXNwayBWWUEvg==
Date: Thu, 21 Nov 2024 15:39:40 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org, festevam@gmail.com,
	vkoul@kernel.org, alexander.stein@ew.tq-group.com,
	linux-usb@vger.kernel.org, jun.li@nxp.com, conor+dt@kernel.org,
	krzk+dt@kernel.org, kishon@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-phy@lists.infradead.org,
	gregkh@linuxfoundation.org, shawnguo@kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: imx8mq-usb: correct reference to
 usb-switch.yaml
Message-ID: <173222518009.3833281.16277279997685475186.robh@kernel.org>
References: <20241119105017.917833-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241119105017.917833-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_133943_540689_B2BA51F0 
X-CRM114-Status: GOOD (  11.61  )
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


On Tue, 19 Nov 2024 18:50:17 +0800, Xu Yang wrote:
> The i.MX95 usb-phy can work with or without orientation-switch. With
> current setting, if usb-phy works without orientation-switch, the
> dt-schema check will show below error:
> 
> phy@4c1f0040: 'oneOf' conditional failed, one must be fixed:
>         'port' is a required property
>         'ports' is a required property
>         from schema $id: http://devicetree.org/schemas/phy/fsl,imx8mq-usb-phy.yaml#
> 
> This will correct the behavior of referring to usb-switch.yaml.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> v2: remake patch and subject
> ---
>  .../devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml        | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

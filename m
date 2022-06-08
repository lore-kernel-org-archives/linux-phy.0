Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E165C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 16:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwDUY5yVir6AbdxQ1NRkEe4qsM/N5+MWHcPOWrgHLwk=; b=D7JHfuXaiXLYOb
	bxxRb9aiclT/vjVg7triz6OrmympvPC/5jRWniFU87FYiqu7BVMARNhXd5cVbVSMHRLDYgqX5v8lu
	4hGu7GAqhNFU7ROKrpbOKIoM5u3QavIpdTbXxmCrUVtyvYvJP9wXZQ/I3slY/TsSrv96FFQ3aYG32
	Bq85WckQPGRgNHhX2+GzLgvMuha0+GBWEoftu6wKaZjXDH8GoT4IFZ+z39o3R7iT++JYMNqhno54y
	6LIJ+rJZQSLsuXAQsWAfTS2gHY9V4Kdk7Nwoi5zQcdX0Dw+qtkY2kd/X1UQ2pM5uteNr4lkcts8EX
	bh2ATxfz6TC5WjtwlcNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyySR-00EHb2-Kc; Wed, 08 Jun 2022 16:22:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyySG-00EHXp-01; Wed, 08 Jun 2022 16:22:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7CE19618EC;
	Wed,  8 Jun 2022 16:22:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4CB9C34116;
	Wed,  8 Jun 2022 16:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654705366;
	bh=lxj/6uywiPHC43d319e3CMItAQ0cOOseusiSDYoDAGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HWFRpGi/0zBl83QGyedjRwODOD8Ia6nfGWD7GZajDwn4hmOOLi7DS+2ECNWazk4ex
	 633plU+Tut67obElQeWBwnBiV9i+2cemc92qcqwf+Ka7ULehcKoXiIq4qzqHLGtSuy
	 5Eom2KxteyhxFETv76+6Vm1IHWWfXW4E0amHvAzCvKNrmfgIX1rrQL4PFjQNocIa9L
	 otgq3vI09DZeSK0M0DT0uAAe9ClQEZddCEz0acwwe8E+3egTDZ7pYNUAeRDopufPZD
	 8ELwO2M53AM6DhxJ1AiQcAKG+mtO4RTP5dO9PXNxj0HtW+ohl8xBy2GHzYcF1nlF6r
	 oeNwWK8uKUgUw==
Date: Wed, 8 Jun 2022 21:52:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Joakim Zhang <qiangqing.zhang@nxp.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH v9 08/12] dt-bindings: phy: mxs-usb-phy: Add i.MX8DXL
 compatible string
Message-ID: <YqDM0umwk6QizT/b@matsya>
References: <20220607111625.1845393-1-abel.vesa@nxp.com>
 <20220607111625.1845393-9-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220607111625.1845393-9-abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_092248_112217_088B17D8 
X-CRM114-Status: GOOD (  15.38  )
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

On 07-06-22, 14:16, Abel Vesa wrote:
> Add compatible for i.MX8DXL USB PHY.

Applied, thanks

> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/mxs-usb-phy.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt b/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> index c9f5c0caf8a9..c9e392c64a7c 100644
> --- a/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> @@ -8,6 +8,7 @@ Required properties:
>  	* "fsl,vf610-usbphy" for Vybrid vf610
>  	* "fsl,imx6sx-usbphy" for imx6sx
>  	* "fsl,imx7ulp-usbphy" for imx7ulp
> +	* "fsl,imx8dxl-usbphy" for imx8dxl
>    "fsl,imx23-usbphy" is still a fallback for other strings
>  - reg: Should contain registers location and length
>  - interrupts: Should contain phy interrupt
> -- 
> 2.34.3
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

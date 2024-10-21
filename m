Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBEB6D17122
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 18:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VC+XZ9xh8RbqxuR75+kFgcI93vW91zCKWOotULNBMLI=; b=Ms9V2armpI67aA
	7Gu3mR2BKyxUB6Rs5g6aNoj07JxELHEcGKKztyPOgKEHLuIQBsHMAV1pb1oeuExo3K5vK90V0ljqL
	bxRowK0rhLFRUkhta/CCkWozRJ9wI76gDkNZZd8m3JTnZZ6/BNlTzFzIb+troGa6+1RDp4fsgzff+
	bKzpN1ijBgeXfsT67mpfbJ6aro2Cf6oilt3xFNDVetG6HeTf5c6UERCFDI2PoK1sPfSnMcRa5jnls
	4SQ/L9rZSyU+7duZH+O46sy1zSKpPCKMjrHeqXL0PSD+mECsoD1nRbINNa521cRj2PpylpnAKdy7N
	EmGPsPhxkCfPjq9aQSDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2x0c-00000008HmU-2hmR;
	Mon, 21 Oct 2024 18:20:02 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2wyo-00000008Ham-14Nd;
	Mon, 21 Oct 2024 18:18:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 17ED8A43801;
	Mon, 21 Oct 2024 18:17:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED970C4CEC3;
	Mon, 21 Oct 2024 18:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729534687;
	bh=DelKPsg/gdkXW4pmPXHI8KyZww5jWxkQrb7liNX5VaY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ATnty0cMqXzG8VmkgP03ttLsT0VQ7xKbNohxlm+O4COifeiMK/EoqA6oWvOdYUXfS
	 zzy9D8mOAsp3gdazaSIFQSpP8gF6zDpdUL14KicK57erA2ivZu7wq7jtHAxojAKTSe
	 ly7r5PntMEHxEx+ZBcfWHlYJ2B/8DtkQWs7h0/99gXIC7A7Z9OGWSbkuPpe0rXTviV
	 jjm7NgycY0hsDeQwWICJyzuAqUY+CWuxoA/Pi5HBfADlqA6p8+UP2kYsZqXL34wi/x
	 xEW7DrYVe3Ki2rRfsFracgnBq/3ivV5R8YPQUhfBbTCIUoP04AnwOPR5IqXRwbteWV
	 BzLcRH4cE/0/A==
Date: Mon, 21 Oct 2024 23:48:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, peter.chen@kernel.org,
	herve.codina@bootlin.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: Re: [PATCH v8 1/3] phy: fsl-imx8mq-usb: add tca function driver for
 imx95
Message-ID: <Zxaa25TTIgDwOItL@vaman>
References: <20241015111018.2388913-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241015111018.2388913-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_111810_374763_B86CB8D8 
X-CRM114-Status: UNSURE (   6.21  )
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

On 15-10-24, 19:10, Xu Yang wrote:

> @@ -359,6 +587,8 @@ static const struct of_device_id imx8mq_usb_phy_of_match[] = {
>  	 .data = &imx8mq_usb_phy_ops,},
>  	{.compatible = "fsl,imx8mp-usb-phy",
>  	 .data = &imx8mp_usb_phy_ops,},
> +	{.compatible = "fsl,imx95-usb-phy",
> +	 .data = &imx8mp_usb_phy_ops,},

Where is fsl,imx95-usb-phy documented?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A72C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 06:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCA8pNa23NGJF6i5eTH+ob2CAF3BaeAcTYl7v6hEHec=; b=v1k6Nkn6ibD+kf
	zN8DKg0V9H9u4cd9QhgUgnOv4BltJn8G/jjQKh4cs/glH5TIxQ0eFxwRLHGm6ccVeXdpOa1bLhIp7
	jXz7drN/tAy60uzPYZefsOG36yOhfuzvIxQFIBGlU7hBnN4oRttyuxvNdzFopNImzyJGBYFVDD9x/
	fdvYmVJ/Ek9UpiNP7XlncFMD46bmyYrvk4suvYXBtCYA/HC0ibLRTkvN9gDhuxnYM6YYBYQp2TRVa
	4MYM6B6dSGSw+AfUfOm5mQad+pU7QnryVH08NxSpVe0qcc0Pi+UOd48q3IPUOnDJ8lO++D32LuOF2
	MzJOapQarAqWGm3/nOdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1gU-0000000Bhpu-4437;
	Thu, 22 Aug 2024 06:52:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1gS-0000000Bhom-1aD9
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 06:52:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 84A636122A;
	Thu, 22 Aug 2024 06:52:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A838C4AF0B;
	Thu, 22 Aug 2024 06:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724309555;
	bh=jPUvdvkGKFGooNnKnoXnqLj1ZDfeQBnfC0I5fLQ9kBs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tWkts7xkPfhmOH6jQABhroZB1EQKq8un0Um8qz+BBiMVKwUZmuhxgHJXMyDed+3ju
	 1Sk6K/7w+WcDWaOUQ8oXlcyVERkQnRjWM/dfQyGDQysQxg51MP+LxUvJYg4XxBsOTJ
	 kdKNgRDYF+LepLTVOIF8LS2IdWs8B0xrCJPfTvVmnQL+llQJEWXj081ej3HpHrFTVq
	 Ojq1FzVJt5zNuqtiwcSc4y9qG1YkcKytPKkqGcr73v2cHcPj8kwf5vYRdwGDdw9uxg
	 8PS8pjQ8UULSerHqOodH8lV5TE187lXBlCAlZuXT9loOFvHp3y8VBHQggsNSsFLpr/
	 /2HPfqKP7f/YA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sh1gU-000000004sN-3zO1;
	Thu, 22 Aug 2024 08:52:39 +0200
Date: Thu, 22 Aug 2024 08:52:38 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for
 X1E80100
Message-ID: <ZsbgNmHYj3jE9CpO@hovoldconsulting.com>
References: <20240821-x1e80100-phy-add-gen4x4-v2-0-c34db42230e9@linaro.org>
 <20240821-x1e80100-phy-add-gen4x4-v2-2-c34db42230e9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240821-x1e80100-phy-add-gen4x4-v2-2-c34db42230e9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_235236_505501_5A3085FC 
X-CRM114-Status: GOOD (  14.73  )
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

On Wed, Aug 21, 2024 at 11:39:01AM +0300, Abel Vesa wrote:
> The sixth PCIe controller on X1E80100 can be used in either
> 4-lanes mode or 2-lanes mode. Add the configuration and compatible
> for the 4-lane mode.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index a7e2ce0c500d..df1ebc19c117 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1266,6 +1266,10 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_SUMMER_CAL_SPD_MODE, 0x5b),
>  };
>  
> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN, 0x1c),
> +};

Nit: This is a serdes subtable (override) so should go under the serdes
table above (not ln_shrd).

Looks good otherwise:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

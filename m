Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CB64C3DA49
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jul 2024 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PGvpkMZHrOw8kwupux9PYpkPwXBMbeFu3GKDgoIsFQ=; b=YVxiOfZhEjjXdF
	6VFgAk6y+Zm73oqyGoxi0L/1jKzy0j8EntjUgkjSHHpc5HbceeIpcxpKviJiXzMHiXQjlY+nMwmL4
	dlfK5y3QFJC51ksxOI92y63gvjWnHug5d/WknQKF5Adc7N4YuKCHx2hZRORw45agVp8AK0JevGVZ5
	wFyNixTbXcFSvVG1iiF+M4YSoltCCRxwQKwdZAWEXRUQQsYCeGauKN8pRwmsNq5PtxQ8JnHiOItzt
	ioh62/QZnRYYfr6lDGigNDNB6VKjvDxlQiVr7E+Cms5GLcR0wxvSrHIYOcTvP+rs2OfhV7sIz8bPN
	4nqjvY6051TRwCZILUPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXM5s-00000004ASy-3AEa;
	Fri, 26 Jul 2024 14:38:52 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXM5q-00000004AS5-1Tyb
	for linux-phy@lists.infradead.org;
	Fri, 26 Jul 2024 14:38:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A34DBCE1766;
	Fri, 26 Jul 2024 14:38:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEFEAC32782;
	Fri, 26 Jul 2024 14:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722004727;
	bh=dcbxhpAsjmvB2T/aiYNawl3wYu/ZKvggNrrBJFqTcRQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V8/+n+5ldkmpeZRfp9Je6DgvqWmDQzO33ZCoi3FVVzYDTH0Y1NVEgTQCW8vIfOhX0
	 ajPhKKyLYllk9iY5p0K33TcUlHyJhHSFXlgBvESJlcHYqP5L17sf1CqDgVQX3fIokI
	 Gpok6SxrlTdTNiLST52qLrxigSgh9i+nYFcNnCMe0G7YFXCTOY9cGdGgPEt8HzsJYl
	 VDEH5PuW9TKv3aNoIuJw30OhSIBSYMS8PrQ2J++9WesRFtsOIp2dP42R1/GA4QyjDr
	 ie+ABPoXAzj0SnnZv5MpkKHYFd0Y1g7zB3xj3t18ROH9xJXj+eQg0V79wUJjuKcSvy
	 jYayeml7lRe8A==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sXM5s-000000007Tn-19Er;
	Fri, 26 Jul 2024 16:38:53 +0200
Date: Fri, 26 Jul 2024 16:38:52 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: Configure all tables on port B PHY
Message-ID: <ZqO0_HyMl77yIGK-@hovoldconsulting.com>
References: <20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_073850_766322_715B2A70 
X-CRM114-Status: GOOD (  16.18  )
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

On Fri, Jul 26, 2024 at 11:09:14AM +0300, Abel Vesa wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Currently, only the RX and TX tables are written to the second PHY
> (port B) when the 4-lanes mode is configured, but according to Qualcomm
> internal documentation, the pcs, pcs_misc, serdes and ln_shrd tables need
> to be written as well.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 5b36cc7ac78b..fd59ebd32f5f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -3660,18 +3660,30 @@ static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	const struct qmp_pcie_offsets *offs = cfg->offsets;
> -	void __iomem *tx3, *rx3, *tx4, *rx4;
> +	void __iomem *tx3, *rx3, *tx4, *rx4, *pcs, *pcs_misc, *ln_shrd, *serdes;

Please order these as serdes, tx/rx, pcs, pcs_misc, ln_shrd so that it
matches the order port_a is programmed (even if the hardware doesn't
care about this).

>  
>  	tx3 = qmp->port_b + offs->tx;
>  	rx3 = qmp->port_b + offs->rx;
>  	tx4 = qmp->port_b + offs->tx2;
>  	rx4 = qmp->port_b + offs->rx2;
> +	serdes = qmp->port_b + offs->serdes;

And use the same order here (move serdes above tx3).

> +	pcs = qmp->port_b + offs->pcs;
> +	pcs_misc = qmp->port_b + offs->pcs_misc;
> +	ln_shrd = qmp->port_b + offs->ln_shrd;

>  	qmp_configure_lane(tx3, tbls->tx, tbls->tx_num, 1);
>  	qmp_configure_lane(rx3, tbls->rx, tbls->rx_num, 1);
>  
>  	qmp_configure_lane(tx4, tbls->tx, tbls->tx_num, 2);
>  	qmp_configure_lane(rx4, tbls->rx, tbls->rx_num, 2);
> +
> +	qmp_configure(serdes, tbls->serdes, tbls->serdes_num);
> +	qmp_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);

And here (e.g. move serdes above tx3).

> +
> +	qmp_configure(pcs, tbls->pcs, tbls->pcs_num);
> +	qmp_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
> +
> +	qmp_configure(ln_shrd, tbls->ln_shrd, tbls->ln_shrd_num);
>  }

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

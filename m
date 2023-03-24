Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CBCCC6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 07:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cm9KfI+ORAR+X4tRdArLN3oE+TUonqZFK2Rc+T0E/X0=; b=QwhFkaFgrzoZq+
	6GrlbkzJ+BaGL4Qif8HLADBkQLxtZy0dNyor/PCc57cgVgOosQc8R9Uu0vVHlkmxK+0/XIMOwx2nY
	jH9rONdp3guBqu2C1/Bf/fM6nPF5WPXTkcmykuzcSxTpz+7In9qMul0p/YcuBJFII4P6SYv8VpFxL
	d7YDkRiiRBqveZtKlNB3719HGDY7PP7+2npvsCqIpn/Vc+AgOoQD8dlCHc83T9L5WwkZlI8zWVzK6
	lETw7aluw//TsoY9aV4PVf7Bm0hoAHbepiKB+M7VTDHgkUJV3aFnxGM1l63o086fEwiIA4bLKAXok
	Li44Ul6jSy9b9i9r2JTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfblq-003lEl-2w;
	Fri, 24 Mar 2023 07:23:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfblo-003lEJ-15
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 07:23:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 953A76295D;
	Fri, 24 Mar 2023 07:23:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECBF2C433D2;
	Fri, 24 Mar 2023 07:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679642607;
	bh=WavNANkGDDPowAZA0VJgVb0Xx0O3W/PtMhFB6+iYCIw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=toczLOjIDvEFuvNl0CAk+3LGAQDSaBq/GTrn6u95XgD4XwFyNzFKxd53do7/QCace
	 4RwFSDmRQn8UUKVhPfvaGtBpBHW4ifGz2V3xUC75tI1wQ2hWEpVzPluSnUzVwpUyqa
	 FL29SJeMGVIbSETthlRjpT4MJZnhChU2cDrdQhPyPUFMNgiqnVrNsBbUaPvJ9hPWIT
	 qEUsWkueQFY7crYbXZmrg1EB+eSMCQXB2i4CRMRckjBkP09n7UG4wfZqqGwNhbosNt
	 5+ftzTNm4GtAIisBjuQhsU3GI4iYZ243a5rd3dTdapkSXKjeXXTdzCK5Jl7TMyGJmE
	 yAb5mW2gZhNLw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pfblm-00031H-3v; Fri, 24 Mar 2023 08:23:26 +0100
Date: Fri, 24 Mar 2023 08:23:26 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie: sc8180x PCIe PHY has 2 lanes
Message-ID: <ZB1P7h0FdT66k/LG@hovoldconsulting.com>
References: <20230324001752.1768505-1-dmitry.baryshkov@linaro.org>
 <20230324001752.1768505-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324001752.1768505-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_002328_411345_D78A38D3 
X-CRM114-Status: GOOD (  17.63  )
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

On Fri, Mar 24, 2023 at 03:17:52AM +0300, Dmitry Baryshkov wrote:
> All PCIe PHYs on sc8180x platform have 2 lanes, so change the number of
> lanes to 2.
> 
> Fixes: 94a407cc17a4 ("phy: qcom-qmp: create copies of QMP PHY driver")

This is not the right fixes tag either. This should have been 

Fixes: f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support")

Should this also be backported (i.e. should you add a stable tag)?

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index d580f3d3e221..c95bf7ec2abe 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2193,7 +2193,7 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
>  };
>  
>  static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
> -	.lanes			= 1,
> +	.lanes			= 2,
>  
>  	.tbls = {
>  		.serdes		= sc8180x_qmp_pcie_serdes_tbl,

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

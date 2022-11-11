Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 308DDC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 07:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3o749hxnrTq7dZhXVeqiYJit51A0KWhW+j6rxEWEQo=; b=T8Stotao248SaL
	PVncCjZBkPziIo8IOHcpHYUqiqGxMUBRoxA4tfBx4AbmDrrt3v6/CLdYFmPOKv37SQJ0GzsPGph3J
	98J0d9eZ2tL1Wp0UuBtpinc1V0vABnJaE7XeShP5g7axaeS9PaSrKerGI+RzaU+xLr9vfIE3LDsqr
	MBzgZrsxypQI9ex8sHoz9GN3vtlQBTGfiWZO5T5kbPggaWhXJg1hi3I8hy81RpzdGgW5tNKNi3F6u
	qfBwHxAWWuaK0twibl1GkKsx9vl/2EC8ezC6t4NHRjc3TUzREI0tFrRHKxLcW5D6JhWpuLWjduXfS
	twi6vSUnlYwmAKsxSH7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otO2X-00DhUb-CB; Fri, 11 Nov 2022 07:01:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otO2U-00DhRc-Ff
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 07:01:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BA72F61EAC;
	Fri, 11 Nov 2022 07:01:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE88FC433D6;
	Fri, 11 Nov 2022 07:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668150081;
	bh=F1W/88cKIisGvkI5jZLR7EExVe0GMTcmUxSVV6b6Azo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pnmguo4Za0NkdmYj+MvBrVGYFCN65RoinGoYH12UUjDL7vuZ5AnRny11Z1P+qNBrO
	 zvag2Z6KGFL1tHe/qO/behNdsyDOHuTkXhs6nhjcCgGsIzEQJctx0Mu3vw7HQRQvS9
	 QUO5I0XWKOP1u1NfeEgT7mqitw7kOnXoB8jRxFikV4tDrTdC1+SEtUksP4K9YF62W3
	 Ss7trMIYKoFGr8DUOyN+EqZosZzfrjH1Vv2am4TDy+3EjVrhfzaofv3j5b6tox9ZuY
	 FxCXF7fUjWQJqQzZFt1TbjkuFbE+OiMkhxXtHHzvT+zFGs3K92cL/u+IfYRNo/xmgX
	 vLHqQzuY3jrRQ==
Date: Fri, 11 Nov 2022 12:31:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@somainline.org,
	robh+dt@kernel.org, quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org, dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com
Subject: Re: [PATCH v2 02/15] phy: qcom-qmp-ufs: Add support for configuring
 PHY in HS Series B mode
Message-ID: <Y23zO68Bb5R0xLq/@matsya>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
 <20221031180217.32512-3-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221031180217.32512-3-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_230122_615369_0763C8BA 
X-CRM114-Status: GOOD (  23.18  )
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

On 31-10-22, 23:32, Manivannan Sadhasivam wrote:
> Add separate tables_hs_b instance to allow the PHY driver to configure the
> PHY in HS Series B mode. The individual SoC configs need to supply the
> serdes register setting in tables_hs_b and the UFS driver can request the
> Series B mode by calling phy_set_mode() with mode set to PHY_MODE_UFS_HS_B.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index cdfda4e6d575..4c6a2b5afc9a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -20,6 +20,8 @@
>  #include <linux/reset.h>
>  #include <linux/slab.h>
>  
> +#include <ufs/unipro.h>
> +
>  #include <dt-bindings/phy/phy.h>
>  
>  #include "phy-qcom-qmp.h"
> @@ -549,6 +551,8 @@ struct qmp_phy_cfg {
>  
>  	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
>  	const struct qmp_phy_cfg_tables tables;
> +	/* Additional sequence for HS Series B */
> +	const struct qmp_phy_cfg_tables tables_hs_b;

what am i missing, where was tables_hs_b added?

>  
>  	/* clock ids to be requested */
>  	const char * const *clk_list;
> @@ -582,6 +586,7 @@ struct qmp_phy_cfg {
>   * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
>   * @pcs_misc: iomapped memory space for lane's pcs_misc
>   * @qmp: QMP phy to which this lane belongs
> + * @mode: PHY mode configured by the UFS driver
>   */
>  struct qmp_phy {
>  	struct phy *phy;
> @@ -594,6 +599,7 @@ struct qmp_phy {
>  	void __iomem *rx2;
>  	void __iomem *pcs_misc;
>  	struct qcom_qmp *qmp;
> +	u32 mode;
>  };
>  
>  /**
> @@ -983,6 +989,8 @@ static int qmp_ufs_power_on(struct phy *phy)
>  	int ret;
>  
>  	qmp_ufs_serdes_init(qphy, &cfg->tables);
> +	if (qphy->mode == PHY_MODE_UFS_HS_B)
> +		qmp_ufs_serdes_init(qphy, &cfg->tables_hs_b);
>  
>  	qmp_ufs_lanes_init(qphy, &cfg->tables);
>  
> @@ -1070,6 +1078,15 @@ static int qmp_ufs_disable(struct phy *phy)
>  	return qmp_ufs_exit(phy);
>  }
>  
> +static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +	struct qmp_phy *qphy = phy_get_drvdata(phy);
> +
> +	qphy->mode = mode;
> +
> +	return 0;
> +}
> +
>  static int qmp_ufs_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
>  {
>  	struct qcom_qmp *qmp = dev_get_drvdata(dev);
> @@ -1105,6 +1122,7 @@ static int qmp_ufs_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
>  static const struct phy_ops qcom_qmp_ufs_ops = {
>  	.power_on	= qmp_ufs_enable,
>  	.power_off	= qmp_ufs_disable,
> +	.set_mode	= qmp_ufs_set_mode,
>  	.owner		= THIS_MODULE,
>  };
>  
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

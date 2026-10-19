Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE9ACCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 07:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rt7s6ifGB6VJ2w+34TPm+pOnU8Ehh/jGYdMp0Oxk02k=; b=XiYHZgBuVieXgN
	gkJ0IkzXWRYxXucSpv3xv1fkF9g6cXNku6BwKpAOVU+dJrzNG23Vn+Ba7/MIJ/n6kRDfCv6FhhVWA
	PzdxREzaUICYltS29NjEJ9/YYEaQn0RakVTHZvMAyCjEBiFAXOH4+Z7qgm8SPBejmgRI/Y/yAXDkl
	8+vkMfD4NjKsMlqdDErRjh2+ZOd5x1J34/Fsbn8gpHiI4s7+NICqaTScaDhH2d4W51F2ALSwVXqFj
	iXAWS0Bh7RADDB0Lb88WK0zVZIHR59ckein5KidWZIYVEQSWikIbQfkFGSRcCgF4MOtjFDldp9Gy0
	30gZJJUjiXSw+f+uRtnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhe4-00000006l08-38bC;
	Mon, 19 Oct 2026 07:18:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhe3-00000006l02-236N
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 07:18:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2625C601DB;
	Mon, 19 Oct 2026 07:18:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14A1A1F000C4;
	Mon, 19 Oct 2026 07:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792394333;
	bh=FpFYLEuv/mXXrF5wldjDzhbtiP+OUzmvIGx5zxg1Lso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WF2B815eYiTU3xMQGG9PDH559aNypUoocZ2ZAaP3MobHB2mB/bXlw+9K2zDYE7Evx
	 XuktHBjjmmTnJj6M9Cxh3urD2HhZLOh9ELNH86549nfSCCXMlrXAt5EKgDKa9C0vSn
	 60jTkI6qemu5yH8zBkCUfp71zA6lhSfpcXgaHVTga5PqTfuOJZMLwtiy+VAVD9G0dG
	 tjB4YaYREtEywALLNas5MAaZSKnndpeTtKzpZadMhqBGwC/rzKLCTyRykXIzbiBqzm
	 BGudqJpT22+IarMlCEAqyT2X6pOlZKzialt5k+4sS6PHHSx/meWlsiILr4Wtj2Yu/P
	 pFAYg51ii+Yfw==
Date: Mon, 19 Oct 2026 09:18:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
Cc: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
	gjorgji.rosikopulos@oss.qualcomm.com, hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com, 
	jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com, vladimir.zapolskiy@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/7] phy: qcom-mipi-csi2: Add qcs8300 CSI2 PHY support
Message-ID: <20261019-elastic-psychedelic-chamois-e8bbae@quoll>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-6-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261016235502.2274268-6-anusha.nandi@oss.qualcomm.com>
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

On Fri, Oct 16, 2026 at 04:55:00PM -0700, Anusha Arun Nandi wrote:
> Bind the new "qcom,qcs8300-csi2-phy" compatible to the existing
> sa8775p SoC configuration (mipi_csi2_dphy_sa8775p). QCS8300
> and SA8775P share the same CSIPHY: in the legacy in-tree
> CAMSS driver (camss-csiphy-3ph-1-0.c) the CAMSS_8300 and CAMSS_8775P
> cases fall through to the same D-PHY lane_regs_sa8775p[] init sequence
> and common_regs_offset (0x800), and camss.c gives both SoCs the same
> pd_name = "top" Titan Top GDSC. No new register data or power-domain
> wiring is therefore needed; only the compatible string is added.
> 
> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> index 821c6a0a916c..cef4a90ca539 100644
> --- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> @@ -453,6 +453,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
> +	{ .compatible	= "qcom,qcs8300-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },

So devices are fully compatible? Then express it and drop this.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

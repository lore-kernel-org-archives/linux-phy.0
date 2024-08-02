Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D83BC52D70
	for <linux-phy@archiver.kernel.org>; Fri,  2 Aug 2024 14:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJiQjc3ZdYpcwunwWT9ovSUUnIqi+VPLhr292I1MQ/Q=; b=ZLvofdMCZk3XwX
	HQL0BsjaJEkghYFQoha/xoucliqQj/K5QdZ8iaXtoyJRrpO1kTItL3L8ph7CMC30oxSaSGJt4ty9v
	JPBMD24H9nsuc1AhFH2ZhWX9vIQ9b1tlrOY5LuhKNjgFRGcAz/Polei1nXPe52GeAnXAsBzB0GI8r
	mZSx9E5N4suJ+vMXH3icjBsrCBCOB7EuLm37I8cHLIt1Fo8K43JtNFSG+cvlTwvNKe2hZ9NrYgqea
	H1/QTxlG06qnywIIKNumRMbqQ4+tePYMNDnVnUnomyh8n7c1ZAhLXpYgOYq5JzVsHk8dbTprrLPE/
	ExGVNM9zRIqTosKyDR9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZszO-000000092ZE-05SV;
	Fri, 02 Aug 2024 14:10:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZszK-000000092YW-46tH
	for linux-phy@lists.infradead.org;
	Fri, 02 Aug 2024 14:10:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 78A12629AD;
	Fri,  2 Aug 2024 14:10:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CA39C32782;
	Fri,  2 Aug 2024 14:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722607833;
	bh=t5TXMfkAFtrA0zYUGHYsxBjB6x511pWd/0k0tqIstK4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=broSif41v8x6AAdGNq6ymOWqaVU5xZqQoqe70jksXTqk+gsFYAOjFCI4z0oFRjZqK
	 3FKDJHH9cTiMNafacD0R6DxaDUjY+h9M7X6sSK3CWB0VdOzaOz3BwuzRedSwG/FQRu
	 wiUB7yx1zwTDhRw6oFWpdR2uWZLRN+mj/NiRKd6gzpcLpY5PrvNCpeokVXnWxxl38k
	 LhVU1ZLtc9tGxx/eqbBR+Itba7gwsN2O5syfBoxqzWBAsjJYSODAT7FugBqvf38lsu
	 gSIJdVFdZaob0EYDsfh6K3Ah0RPqZSZLnNMUEdGDPwdy9HfYY1D3qHTbIW77inB3bZ
	 XIc+Zxd7Wd2AQ==
Date: Fri, 2 Aug 2024 19:40:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: freedreno@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: com-qmp-combo: fix swing and pre-emphasis
 table for sm8350
Message-ID: <Zqzo08Siy5liaPAd@matsya>
References: <20240725220608.131426-1-quic_abhinavk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240725220608.131426-1-quic_abhinavk@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_071035_106137_A1FD02DF 
X-CRM114-Status: GOOD (  13.73  )
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

On 25-07-24, 15:06, Abhinav Kumar wrote:
> Fix the voltage swing and pre-emphasis tables for sm8350 as the current
> one do not match the hardware docs.
> 
> Fixes: ef14aff107bd ("phy: qcom: com-qmp-combo: add SM8350 & SM8450 support")
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 31e43638a649..c15b01aa5a48 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1946,8 +1946,8 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
>  
>  	.swing_hbr_rbr		= &qmp_dp_v4_voltage_swing_hbr_rbr,
>  	.pre_emphasis_hbr_rbr	= &qmp_dp_v4_pre_emphasis_hbr_rbr,
> -	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
> -	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v4_pre_emphasis_hbr3_hbr2,
> +	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
> +	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,

This is fine but you need to drop the unused qmp_dp_v4_pre_emphasis_hbr3_hbr2 table...

It adds a warning, defined but unused!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

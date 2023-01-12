Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7018C61DB3
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 15:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4HFsrxnE+XfA27fZcARfUItbj2/6qZN8hyt4oP4+fw=; b=3O+g7FZjCpfybY
	lwEHRUlUVK63ZTESSd03zFmG/n+PtuS66j1VLV5BLNU23iePr73DDfWFuM0CxLr3dg7L4+F0zCOqh
	IF4+Lk0Vh28KDHnzBcf8HJX/5dMOSfL8WYL4c19ncfdhg/0s71DGriRd6wQvix7mebZotDXPp4+uK
	GFbQFdNSkzgM1zreuXZvRmf0X/p7HnqAasM48xmu+n/n05JqZinX1Ks50QJxJg5OR+mZWVZUwswsY
	eM/0ravyvxgSEd8lo5jXwhCmbpTj6xyELcru8qiv6ps7jpWljPiebvMoBbEnbdkpxXeJ3mJ4uT1nF
	1Q+RdgI9R29T1Blj9QtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzWg-00Feci-9x; Thu, 12 Jan 2023 15:29:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzWc-00Fea7-Jj
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 15:29:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 26D5B6207C;
	Thu, 12 Jan 2023 15:29:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68ABFC4331E;
	Thu, 12 Jan 2023 15:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673537392;
	bh=Cq23KtcmQz9xHoe58xQGkU8aQBrNL1EzV+wnxOxWaWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uMg74hnEejDy5JFcZyqwD6aDOWWmya1Ryl/solxI+yRQEwQe7Tex1LFAgtiybFHHa
	 Q4cIqEX66Myx8uBLZkd6p4rYQpOcbyz0eiP1p6bbj+7Zd8+yNXvCxvcHiOFGXh9u4k
	 8rmsYhyLIz+8z2MpAUAVRAmSPEOpqYqnM51O1Cj3Evk3MjoEO2UMivWr+m9JmaCxEn
	 wZI1tiOjfUOks8mravauRYEntZuV2bvqh9AN66F/LAcilPWhpCS0uPUaGq3Q6dKWa/
	 9uguyNqEAADCuHKONTFzo1JnoXzr62AAo/kp0O94n7iT8sDP94gXuOzn24OY1tUEig
	 KnQukf0ae8BKg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pFzWh-0000Yv-PM; Thu, 12 Jan 2023 16:29:59 +0100
Date: Thu, 12 Jan 2023 16:29:59 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 6/6] phy: qcom-qmp-ufs: Add SM8550 support
Message-ID: <Y8And9VVvpnSInlj@hovoldconsulting.com>
References: <20230112130542.1399921-1-abel.vesa@linaro.org>
 <20230112130542.1399921-7-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230112130542.1399921-7-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_072954_714769_613AEEC3 
X-CRM114-Status: GOOD (  17.52  )
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

On Thu, Jan 12, 2023 at 03:05:42PM +0200, Abel Vesa wrote:
> Add SM8550 specific register layout and table configs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 100 ++++++++++++++++++++++++
>  1 file changed, 100 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 5936a3a05002..a9b666f32f59 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -95,6 +95,13 @@ static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL,
>  };
>  
 
> +static const char * const sm8550_ufs_phy_clk_l[] = {
> +	"qref", "ref",
> +};

These clocks would to be added to the binding too, but based on:

	https://lore.kernel.org/r/20230112135926.1572191-1-abel.vesa@linaro.org

you really don't need these at all and what you call 'qref'
(GCC_UFS_PHY_PHY_AUX_CLK) is just 'ref_aux' below.

> +
>  static const char * const sdm845_ufs_phy_clk_l[] = {
>  	"ref", "ref_aux",
>  };

> @@ -721,6 +787,15 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
>  	.rx2		= 0xa00,
>  };
>  
> +static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
> +	.serdes		= 0,
> +	.pcs		= 0x400,

Zero pad .pcs to 4 digits?

> +	.tx		= 0x1000,
> +	.rx		= 0x1200,
> +	.tx2		= 0x1800,
> +	.rx2		= 0x1a00,
> +};

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

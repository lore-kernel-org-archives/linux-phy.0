Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC383C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 10:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYyKTpZMgEEZTapzCBO5QMA40pWL/D96u7QKF9jpPPg=; b=QR0tU4oFtlE3Zv
	3mp1R7ED7/FwnyHmzyQchIcQoJ4ORynZMDfQG605pjBptFkcJIMRsRIK3h8FUV0SVxw8Ms8Mi0r43
	7F6jc4f4bxLzC7pMGznHWJLmtAhoHFcorC3W8Js3yYHIbFLqpDMtRvK9kFRYhA68gxZOB9nm4mSu+
	C+IPMKgExGS7wd5HbhTI2WDA/Z9orpo0sSHSHgpXo/M9CA3s0vTE5cYTG0QCzqYr/w/XivY++xqYT
	YMve0zmWKCcTvmnqdRWoIEeBnQT0cursO02dbv0R3UEeJBrOBtpqgFgGgF1d23QfQTtYeYtamv2xs
	CUVd2rWF1EQ9Z0mDphNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVsP-00FNy0-FI; Fri, 25 Nov 2022 10:24:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVWX-00FCHR-M7
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 10:01:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CED98B82A00;
	Fri, 25 Nov 2022 10:01:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90AB3C433C1;
	Fri, 25 Nov 2022 10:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669370490;
	bh=1BTs+/wgO83xZVv9nOmE5ndF0fwtJT85UEdx9USU+hM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HD5EzQPSOXQnpT0nFCX/1rwJh0PiS6JvvRRNbnBbv8M+kLQfrvSrMufPeeYN92n4Q
	 AQOpTdvwlWRmjL3f0gdSsEBqKbgsOD+99zKW3xomHIqQfVFsrZ0eIasEMOx6GDJ600
	 UHZjNBhA95DTzQpno99Pnhk+eEcgBOJkhF+Ar81qqu8noz6MGy+gIBn9q24/Q/1UTQ
	 cX/vVcgTuqA933uAez39gRdPmzFsoyPKXhgvk2tADnues7RbLecoNm1yPCL5pxWwlv
	 sm2SosDy+BvcDcUIKMU/frwpbMUGBb6BmSYABuaTloK9heIK8cUKgW6zefW3l599OW
	 nqrxRKbHGPzZg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oyVW5-0002IL-6C; Fri, 25 Nov 2022 11:01:05 +0100
Date: Fri, 25 Nov 2022 11:01:05 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 2/3] phy: qcom-qmp-combo: Add config for SM6350
Message-ID: <Y4CSYZE+3fZCV4Z3@hovoldconsulting.com>
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
 <20221125092749.46073-2-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221125092749.46073-2-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_020134_116849_726FC94D 
X-CRM114-Status: GOOD (  19.91  )
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

On Fri, Nov 25, 2022 at 10:27:48AM +0100, Luca Weiss wrote:
> Add the tables and config for the combo phy found on SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> @Johan Hovold, here I've added dp_txa & dp_txb, I believe otherwise
> qmp->dp_tx would be wrong. Is this different on sc8280xp or was this a
> mistake on your side? I think this should probably be split out to
> another patch to not mix things up too much.

Yeah, that's a difference in sc8280xp which does not have dedicated TX
registers for DP.

This is probably best handled explicitly when parsing the DT by using
dp_txa/b if they are set and otherwise fallback to txa/txb (e.g.
instead of hiding it in the v5 table by using the same offset in two
places).

It can be done as part of this patch as long as you mention it in the
commit message.

> I think other than that this patch is good.

Indeed, looks good! Nice to see this working out as intended also for
the older platforms.

>  static const struct qmp_phy_init_tbl sm8150_usb3_serdes_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_EN_CENTER, 0x01),
>  	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER1, 0x31),
> @@ -809,6 +873,8 @@ struct qmp_combo_offsets {
>  	u16 usb3_pcs;
>  	u16 usb3_pcs_usb;
>  	u16 dp_serdes;
> +	u16 dp_txa;
> +	u16 dp_txb;
>  	u16 dp_dp_phy;
>  };
>  
> @@ -975,6 +1041,21 @@ static const char * const sc7180_usb3phy_reset_l[] = {
>  	"phy",
>  };
>  
> +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
> +	.com		= 0x0000,
> +	.txa		= 0x1200,
> +	.rxa		= 0x1400,
> +	.txb		= 0x1600,
> +	.rxb		= 0x1800,
> +	.usb3_serdes	= 0x1000,
> +	.usb3_pcs_misc	= 0x1a00,
> +	.usb3_pcs	= 0x1c00,
> +	.dp_serdes	= 0x2000,
> +	.dp_txa		= 0x2200,
> +	.dp_txb		= 0x2600,
> +	.dp_dp_phy	= 0x2c00,
> +};
> +
>  static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
>  	.com		= 0x0000,
>  	.txa		= 0x0400,

> @@ -2641,8 +2767,8 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
>  	qmp->pcs_usb = base + offs->usb3_pcs_usb;
>  
>  	qmp->dp_serdes = base + offs->dp_serdes;
> -	qmp->dp_tx = base + offs->txa;
> -	qmp->dp_tx2 = base + offs->txb;
> +	qmp->dp_tx = base + offs->dp_txa;
> +	qmp->dp_tx2 = base + offs->dp_txb;
>  	qmp->dp_dp_phy = base + offs->dp_dp_phy;
>  
>  	qmp->pipe_clk = devm_clk_get(dev, "usb3_pipe");

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE21C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 31 Dec 2022 23:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DTwqU+2oYIfcfjjcQgM/h6zUWB5gW9z/Gg53PlQneaQ=; b=1s1hnF03UwOAQYoO1BRe7lN1XQ
	mZMicO5KYZ1SQSqyWdf1Uj07HePpDGM2F5US/HWA3ealSM/DFUPdLq8AS6Y3BG74HPsuin6J37K+y
	oE3trvJNCX54Bw4N0dxxlCCQFzo/NmgrGhJJoz/hts0/5UDO7i3fzdLnexlfbb5ZzOzLdArlTOj4H
	K2Q5QIyyvU9b2HrGX3EFo/XRtf3k1ZtqJuKdRspquJcWAQerh753uz67g8iSGmfiRU7nf55FXmD7f
	Z5Zo8uqsWaVvqqAaTUuY93X39qOM0cJp48LlHy05U8TembdQzcuHSzyneHDr+IotShS2kHejLGMxI
	4k6SF4bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBlBE-00BQRh-B8; Sat, 31 Dec 2022 23:22:20 +0000
Received: from m-r2.th.seeweb.it ([5.144.164.171])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBl7m-00BOre-Vj
	for linux-phy@lists.infradead.org; Sat, 31 Dec 2022 23:18:48 +0000
Received: from [192.168.2.144] (adsl-d248.84-47-10.t-com.sk [84.47.10.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 28F703ED5A;
	Sun,  1 Jan 2023 00:18:41 +0100 (CET)
Date: Sun, 01 Jan 2023 00:18:35 +0100
From: Martin Botka <martin.botka@somainline.org>
Subject: Re: [PATCH v5 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
To: Lux Aliaga <they@mint.lgbt>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, marijn.suijten@somainline.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Message-Id: <ZE3SNR.M14JYXQJQTSC1@somainline.org>
In-Reply-To: <20221231222420.75233-4-they@mint.lgbt>
References: <20221231222420.75233-1-they@mint.lgbt>
	<20221231222420.75233-4-they@mint.lgbt>
X-Mailer: geary/40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221231_151847_332470_7C35B5BB 
X-CRM114-Status: GOOD (  13.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On Sat, Dec 31 2022 at 07:24:17 PM -03:00:00, Lux Aliaga 
<they@mint.lgbt> wrote:
> The SM6125 UFS PHY is compatible with the one from SM6115. Add a
> compatible for it and modify the config from SM6115 to make them
> compatible with the SC8280XP binding
> 
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c 
> b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 318eea35b972..f33c84578940 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -693,6 +693,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg 
> = {
>  static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>  	.lanes			= 1,
> 
> +	.offsets		= &qmp_ufs_offsets_v5,
> +
>  	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
>  	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
>  	.tx_tbl			= sm6115_ufsphy_tx_tbl,
> @@ -1172,6 +1174,9 @@ static const struct of_device_id 
> qmp_ufs_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,sm6115-qmp-ufs-phy",
>  		.data = &sm6115_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sm6125-qmp-ufs-phy",
> +		.data = &sm6115_ufsphy_cfg,
>  	}, {
>  		.compatible = "qcom,sm6350-qmp-ufs-phy",
>  		.data = &sdm845_ufsphy_cfg,
> --
> 2.38.1
> 
Reviewed-by: Martin Botka <martin.botka@somainline.org>

Happy new year as well :)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

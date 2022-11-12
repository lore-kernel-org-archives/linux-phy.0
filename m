Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10ED1C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCLDQFMdfYLDvYWDzPf+TlOudr6fwTHLPIl/nAiP8iY=; b=vRSWrOo0mlqjQM
	uCXzZxaQ1FJwn9iZ5Bg2MA2FhT4LzS04Ub0Yf1VFKfrWZAfvjHQ6YjDSpqpYzCqRqovq7iIP4JeEt
	sVK//9oyJ/4HFS0h7g99hgeMYygtbhyXDanLh70GSNbNPOBJDkn1GoTE/debb/CPvApfC4anxl3pG
	gLjU4kEoyTADwAaGsETEd2JsO/7Sb/WCCxmcjym08/8cawozngFg2yr93svOi/axkwbwpGlfidm2o
	M99mhzx0NFRyoM/irMiWz1IZjS9e8Q5HFuDb25C8wwLtX+OOmcJXjbcy7pfLAmgE6Y/HLWVJgi0Se
	VzBvUuBdgneezFGtkxgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlEI-00436g-9f; Sat, 12 Nov 2022 07:47:06 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlEE-0042z7-6q
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:47:03 +0000
Received: by mail-lf1-x12b.google.com with SMTP id bp15so11397422lfb.13
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=323tIz9F9zb6aDUeHVzDKa3RqU+nVRbu8xUpUZdI13U=;
        b=z5zQzcMmv0j+BrRraqnnAo1Vr/QSZy0vhBrtCaTDcUKfMMTwWokziNEjnFgAx1ozwJ
         IyZ+r/G9QedIsi5NWH836KkdAYXuryfXEu4MOVXrPPJmWw8q3lJgrLp6zoJqLlXJGw3l
         01a+ubpp40BawZwIQieQzpxsiBRqLLPsxfYPhU3GF8GFJLh3U90ULVxiu487Mz5C6wua
         pIAzSDj9ABcs60dcmSruO2oUcgWmIdhXyqhYqxaD3SsSTDrehOuKtwzNGy9r9VpD+wZ4
         FIBNf0PxRurxuRMzz9qjbnLR/IugWUTC9sh7zCnITkEeXVfIks4jXqkqIhcf6nmfoxpp
         ggdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=323tIz9F9zb6aDUeHVzDKa3RqU+nVRbu8xUpUZdI13U=;
        b=SMy2TMUkFLpRBPZWn1TIG31+3biU5D7H5rVttldgp35V9J9Z+r+LHyAn80nlAR7hb5
         zSbwGjjfQY75MYPzgUOsIPzoGz4oqMAkEJI0dg5A5VD0VzaKg9JOy93JEIXeSwtqGuTk
         m4FZoC2GEcnk1WG/PB0Wg+uUTgfEAQTuAxytFaj6TG8ddDpNnKGYTgfeIwHSWhH2t4IK
         uaU2BsgBCuW3kAhQTDvf88/gTlSEQw3zEsyK1QIj9IREyapKT6Z38GA/kKHrzrWaM0FQ
         29Rii5ATBOFnKacS4Dyu9+rDS3mvKYPN6SUAcpa5TbFMlqsUBR25DHVkGsIvuhUfOXxm
         56aA==
X-Gm-Message-State: ANoB5pmGCMkn1CKRUEcAx2C+Vf7xW6ITWwl4QmlCdWjiuWCJqNRfC6LJ
	tXGlY44xkeDsQBKMlnu0IhFYLw==
X-Google-Smtp-Source: AA0mqf7tgxYtu5OF/w73PYA1lkRsXeXw4iLa253GKRn3SMekVmDyTCaubkSQC+AfGiRaIsmv2cZT7g==
X-Received: by 2002:a05:6512:130d:b0:4b4:c0c:8995 with SMTP id x13-20020a056512130d00b004b40c0c8995mr2032857lfu.326.1668239213891;
        Fri, 11 Nov 2022 23:46:53 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i19-20020a2ea233000000b002775d0ae776sm651635ljm.14.2022.11.11.23.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:46:53 -0800 (PST)
Message-ID: <54d3d1b4-29de-4d18-a39e-bf74a5c61509@linaro.org>
Date: Sat, 12 Nov 2022 10:46:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 18/22] phy: qcom-qmp-combo: merge driver data
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-19-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-19-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_234702_284957_84DA9C11 
X-CRM114-Status: GOOD (  19.18  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> The QMP combo driver manages a single PHY (even if it provides two
> interfaces for USB and DP, respectively) so merge the old qcom_qmp and
> qmp_phy structures and drop the PHY array.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 690 ++++++++++------------
>   1 file changed, 313 insertions(+), 377 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 249912b75964..43b7ea5d2edc 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -796,7 +796,7 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
>   	{ 0x3f, 0xff, 0xff, 0xff }
>   };
>   
> -struct qmp_phy;
> +struct qmp_combo;
>   
>   struct qmp_phy_cfg {
>   	int lanes;
> @@ -835,10 +835,10 @@ struct qmp_phy_cfg {
>   	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
>   
>   	/* DP PHY callbacks */
> -	int (*configure_dp_phy)(struct qmp_phy *qphy);
> -	void (*configure_dp_tx)(struct qmp_phy *qphy);
> -	int (*calibrate_dp_phy)(struct qmp_phy *qphy);
> -	void (*dp_aux_init)(struct qmp_phy *qphy);
> +	int (*configure_dp_phy)(struct qmp_combo *qmp);
> +	void (*configure_dp_tx)(struct qmp_combo *qmp);
> +	int (*calibrate_dp_phy)(struct qmp_combo *qmp);
> +	void (*dp_aux_init)(struct qmp_combo *qmp);
>   
>   	/* clock ids to be requested */
>   	const char * const *clk_list;
> @@ -861,29 +861,19 @@ struct qmp_phy_cfg {
>   
>   };
>   
> -/**
> - * struct qmp_phy - per-lane phy descriptor
> - *
> - * @phy: generic phy
> - * @cfg: phy specific configuration
> - * @serdes: iomapped memory space for phy's serdes (i.e. PLL)
> - * @tx: iomapped memory space for lane's tx
> - * @rx: iomapped memory space for lane's rx
> - * @pcs: iomapped memory space for lane's pcs
> - * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
> - * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
> - * @pcs_misc: iomapped memory space for lane's pcs_misc
> - * @pcs_usb: iomapped memory space for lane's pcs_usb
> - * @pipe_clk: pipe clock
> - * @qmp: QMP phy to which this lane belongs
> - * @mode: current PHY mode
> - * @dp_aux_cfg: Display port aux config
> - * @dp_opts: Display port optional config
> - * @dp_clks: Display port clocks
> - */
> -struct qmp_phy {
> -	struct phy *phy;
> +struct qmp_phy_dp_clks {
> +	struct qmp_combo *qmp;
> +	struct clk_hw dp_link_hw;
> +	struct clk_hw dp_pixel_hw;
> +};
> +

It would make sense to keep the kerneldoc here.

> +struct qmp_combo {
> +	struct device *dev;
> +
>   	const struct qmp_phy_cfg *cfg;
> +
> +	void __iomem *dp_com;
> +
>   	void __iomem *serdes;
>   	void __iomem *tx;
>   	void __iomem *rx;
> @@ -899,59 +889,33 @@ struct qmp_phy {
>   	void __iomem *dp_pcs;
>   
>   	struct clk *pipe_clk;
> -	struct qcom_qmp *qmp;
> -	enum phy_mode mode;
> -	unsigned int dp_aux_cfg;
> -	struct phy_configure_opts_dp dp_opts;
> -	struct qmp_phy_dp_clks *dp_clks;
> -};
> -
> -struct qmp_phy_dp_clks {
> -	struct qmp_phy *qphy;
> -	struct clk_hw dp_link_hw;
> -	struct clk_hw dp_pixel_hw;
> -};
> -
> -/**
> - * struct qcom_qmp - structure holding QMP phy block attributes
> - *
> - * @dev: device
> - * @dp_com: iomapped memory space for phy's dp_com control block
> - *
> - * @clks: array of clocks required by phy
> - * @resets: array of resets required by phy
> - * @vregs: regulator supplies bulk data
> - *
> - * @phys: array of per-lane phy descriptors
> - * @phy_mutex: mutex lock for PHY common block initialization
> - * @init_count: phy common block initialization count
> - */
> -struct qcom_qmp {
> -	struct device *dev;
> -	void __iomem *dp_com;
> -
>   	struct clk_bulk_data *clks;
>   	struct reset_control_bulk_data *resets;
>   	struct regulator_bulk_data *vregs;
>   
> -	struct qmp_phy **phys;
> -	struct qmp_phy *usb_phy;
> -
>   	struct mutex phy_mutex;
>   	int init_count;
> +
> +	struct phy *usb_phy;
> +	enum phy_mode mode;
> +
> +	struct phy *dp_phy;
> +	unsigned int dp_aux_cfg;
> +	struct phy_configure_opts_dp dp_opts;
> +	struct qmp_phy_dp_clks *dp_clks;
>   };
>   
> -static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_phy *qphy);
> -static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_phy *qphy);
> -static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_phy *qphy);
> -static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_phy *qphy);
> +static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_combo *qmp);
> +static void qcom_qmp_v3_phy_configure_dp_tx(struct qmp_combo *qmp);
> +static int qcom_qmp_v3_phy_configure_dp_phy(struct qmp_combo *qmp);
> +static int qcom_qmp_v3_dp_phy_calibrate(struct qmp_combo *qmp);
>   
> -static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_phy *qphy);
> -static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_phy *qphy);
> -static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_phy *qphy);
> -static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_phy *qphy);
> +static void qcom_qmp_v4_phy_dp_aux_init(struct qmp_combo *qmp);
> +static void qcom_qmp_v4_phy_configure_dp_tx(struct qmp_combo *qmp);
> +static int qcom_qmp_v4_phy_configure_dp_phy(struct qmp_combo *qmp);
> +static int qcom_qmp_v4_dp_phy_calibrate(struct qmp_combo *qmp);
>   
> -static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_phy *qphy);
> +static int qcom_qmp_v5_phy_configure_dp_phy(struct qmp_combo *qmp);


As you are doing the cleanup anyway, would it make sense to move these 
functions up to be able to drop these prototypes?

>   
>   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
>   {
> @@ -1265,11 +1229,11 @@ static void qmp_combo_configure(void __iomem *base,


The rest LGTM

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

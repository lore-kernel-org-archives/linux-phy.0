Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7AB4C32771
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 11:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDeCKnzhBv1jeQB7JRK1bIi+eMySaTlkOofbKlsOJRc=; b=zIEoYuMlad30Gt
	sepi6owDzgJLO3wWEfrbw907TC4jG3bJUfiMiTzLhTcyWLrjnR+e0dLZHwWAOuvUn0yRAi4aEEjYn
	5lWj74fsyp8lJsQmD/oIDxvKUvNcbuWTSooh1RKQV7e5HFeUC4L9rvHPZmXN76DIwXIgJK9zX0be7
	rB+LoofjotzdxILQAnaXdfBBw96gaigFHMU2hClKwugiZbylXyNDwxy9mfF3tRibaIvScjsMXoORi
	/fMpbouFyNOQVHYpx6Bst9SBTICFXHsCWVrcYM5m43Q5cbOLDAG1KBQgBve2m3cgFhT0e27D6voHW
	KdqfisWNkRWKFoBP8ekQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocmOJ-004Ydq-0f; Mon, 26 Sep 2022 11:35:15 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocmOF-004Yc0-8i
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 11:35:12 +0000
Received: by mail-lj1-x22b.google.com with SMTP id t16so3065551ljh.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 04:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=2ZDbwsohrDOt1C3mx7JqUO/6C3uPA8KxvxzeCT35giQ=;
        b=W6fvKJb3OqaNYsuGy/e0/ehyYEjI9glZaybx2pT6JCqqWJd8RP0ZNnBvE9yEtFNcHM
         +Q5dvLdk50XtwKxWUEI5QZWkfouIHCV7W9iKIkRTJwYdtFKYyaqKwmQRng8b+tf+odEE
         /zBcL/tXPvMN5fNVpvBn1bSnknRbPm380GF6PDj1evcH/z/ytDc75h/NJwmsOFrPlxS3
         AhfMgN2gS/V5slk5HHvUl+VBj7zfTmrE1NTwidMaolxY29GPjZIVkzTdu5FKFf83yqo8
         gxEajxeTWalzmUVSBKV4HerzunkzOeAjfuFRYp1sgfB17agsy9X6KWTP3IC8yqschQnB
         g22A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=2ZDbwsohrDOt1C3mx7JqUO/6C3uPA8KxvxzeCT35giQ=;
        b=v1+v7QfIWSYnsffGFboSIMijKgDV4Uleu53VhX1NUngxxHyy0ciV7Y93EOQiw5jLqf
         fJgXKx8pyI+BTDyY5/DKKeW81YwVpY0R3eey34+ugYoNqE9Xq68v7RlZFw8Yo91DHhLw
         Niq24yQ7bXdq3UD+cwpScTjFafeZCuBigq2mP1ANsd4Mjd5C1I2oMI+RV43rGqMYPJCV
         xwPNM1gr0zV3QOMfHzxLOOP9RDe0uJ3w9rTjJaDCcJkGeXDLNffwFwMKQ0SwqC1JuCuZ
         Nh1SQnLYB3BVQkQ5FDkjRyb9lRQA3ia3kGcMy100oaS3jkd8uZF7tDs5KbI5S9QbYTFt
         sgiA==
X-Gm-Message-State: ACrzQf0qmZUzg4IHjNF6qFmNbnlWD8sPRh6ZxVSrZ4Q9C/tUjtnWBSsR
	n0FltXHeo7NCe+o9yRD3HD76xA==
X-Google-Smtp-Source: AMsMyM4MrUgZUXAyzh1ehVVxmrLzTja7PVNTLftG5Mn2EDpfSxA4Xs9Vjwv/dZHlRggIAPqnVPobEA==
X-Received: by 2002:a2e:8190:0:b0:26b:d94b:75e9 with SMTP id e16-20020a2e8190000000b0026bd94b75e9mr7815046ljg.379.1664192108640;
        Mon, 26 Sep 2022 04:35:08 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v21-20020a05651203b500b00494747ba5f7sm2502835lfp.272.2022.09.26.04.35.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 04:35:08 -0700 (PDT)
Message-ID: <5a93a4fc-b6a9-6371-84c1-ff39c60dbb5a@linaro.org>
Date: Mon, 26 Sep 2022 14:35:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v4 1/6] phy: qcom-qmp-pcie: split register tables into
 common and extra parts
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
 <20220924160302.285875-2-dmitry.baryshkov@linaro.org>
 <YzFUcWSHkdSlIbHU@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <YzFUcWSHkdSlIbHU@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_043511_339760_99ABD48F 
X-CRM114-Status: GOOD (  25.25  )
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

On 26/09/2022 10:27, Johan Hovold wrote:
> On Sat, Sep 24, 2022 at 07:02:57PM +0300, Dmitry Baryshkov wrote:
>> SM8250 configuration tables are split into two parts: the common one and
>> the PHY-specific tables. Make this split more formal. Rather than having
>> a blind renamed copy of all QMP table fields, add separate struct
>> qmp_phy_cfg_tables and add two instances of this structure to the struct
>> qmp_phy_cfg. Later on this will be used to support different PHY modes
>> (RC vs EP).
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 129 ++++++++++++++---------
>>   1 file changed, 77 insertions(+), 52 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index 7aff3f9940a5..30806816c8b0 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -1300,31 +1300,30 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
>>   	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
>>   };
>>   
>> -/* struct qmp_phy_cfg - per-PHY initialization config */
>> -struct qmp_phy_cfg {
>> -	int lanes;
>> -
>> -	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
>> +struct qmp_phy_cfg_tables {
>>   	const struct qmp_phy_init_tbl *serdes_tbl;
>>   	int serdes_tbl_num;
> 
> So I still think you should drop the now redundant "tbl" suffix and
> infix.
> 
>> -	const struct qmp_phy_init_tbl *serdes_tbl_sec;
>> -	int serdes_tbl_num_sec;
>>   	const struct qmp_phy_init_tbl *tx_tbl;
>>   	int tx_tbl_num;
>> -	const struct qmp_phy_init_tbl *tx_tbl_sec;
>> -	int tx_tbl_num_sec;
>>   	const struct qmp_phy_init_tbl *rx_tbl;
>>   	int rx_tbl_num;
>> -	const struct qmp_phy_init_tbl *rx_tbl_sec;
>> -	int rx_tbl_num_sec;
>>   	const struct qmp_phy_init_tbl *pcs_tbl;
>>   	int pcs_tbl_num;
>> -	const struct qmp_phy_init_tbl *pcs_tbl_sec;
>> -	int pcs_tbl_num_sec;
>>   	const struct qmp_phy_init_tbl *pcs_misc_tbl;
>>   	int pcs_misc_tbl_num;
>> -	const struct qmp_phy_init_tbl *pcs_misc_tbl_sec;
>> -	int pcs_misc_tbl_num_sec;
>> +};
>> +
>> +/* struct qmp_phy_cfg - per-PHY initialization config */
>> +struct qmp_phy_cfg {
>> +	int lanes;
>> +
>> +	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
>> +	struct qmp_phy_cfg_tables common;
> 
> And this could be "tbls_common".

I'd go for common_tables, if you don't mind.

> 
>> +	/*
>> +	 * Additional init sequence for PHY blocks, providing additional
>> +	 * register programming. Unless required it can be left omitted.
>> +	 */
>> +	struct qmp_phy_cfg_tables *extra;
> 
> And "tbls_extra".
> 
> I guess this table should be const as well.

Ack

> 
>>   
>>   	/* clock ids to be requested */
>>   	const char * const *clk_list;
>> @@ -1459,6 +1458,7 @@ static const char * const sdm845_pciephy_reset_l[] = {
>>   static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>>   	.lanes			= 1,
>>   
>> +	.common = {
>>   	.serdes_tbl		= ipq8074_pcie_serdes_tbl,
>>   	.serdes_tbl_num		= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
>>   	.tx_tbl			= ipq8074_pcie_tx_tbl,
>> @@ -1467,6 +1467,7 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>>   	.rx_tbl_num		= ARRAY_SIZE(ipq8074_pcie_rx_tbl),
>>   	.pcs_tbl		= ipq8074_pcie_pcs_tbl,
>>   	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
>> +	},
> 
> Shouldn't you indent the members now? The above looks unnecessarily hard
> to read.

I wanted to keep the indentation to make the patch small enough, but 
let's indent these lines (while dropping the _tbl from names as you 
insisted).

> 
>>   	.clk_list		= ipq8074_pciephy_clk_l,
>>   	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
>>   	.reset_list		= ipq8074_pciephy_reset_l,
> 
>   @@ -1603,24 +1612,28 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
>>   static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>>   	.lanes			= 1,
>>   
>> +	.common = {
>>   	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
>>   	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
>> -	.serdes_tbl_sec		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
>> -	.serdes_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
>>   	.tx_tbl			= sm8250_qmp_pcie_tx_tbl,
>>   	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
>>   	.rx_tbl			= sm8250_qmp_pcie_rx_tbl,
>>   	.rx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
>> -	.rx_tbl_sec		= sm8250_qmp_gen3x1_pcie_rx_tbl,
>> -	.rx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_rx_tbl),
>>   	.pcs_tbl		= sm8250_qmp_pcie_pcs_tbl,
>>   	.pcs_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
>> -	.pcs_tbl_sec		= sm8250_qmp_gen3x1_pcie_pcs_tbl,
>> -	.pcs_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_tbl),
>>   	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
>>   	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
>> -	.pcs_misc_tbl_sec		= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
>> -	.pcs_misc_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
>> +	},
>> +	.extra = &(struct qmp_phy_cfg_tables) {
> 
> const structure?

Ack

> 
>> +	.serdes_tbl		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
>> +	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
>> +	.rx_tbl			= sm8250_qmp_gen3x1_pcie_rx_tbl,
>> +	.rx_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_rx_tbl),
>> +	.pcs_tbl		= sm8250_qmp_gen3x1_pcie_pcs_tbl,
>> +	.pcs_tbl_num		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_tbl),
>> +	.pcs_misc_tbl		= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
>> +	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
> 
> Indentation.
> 
>> +	},
>>   	.clk_list		= sdm845_pciephy_clk_l,
>>   	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
>>   	.reset_list		= sdm845_pciephy_reset_l,
> 
>> @@ -1854,11 +1881,9 @@ static int qmp_pcie_serdes_init(struct qmp_phy *qphy)
>>   {
>>   	const struct qmp_phy_cfg *cfg = qphy->cfg;
>>   	void __iomem *serdes = qphy->serdes;
>> -	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
>> -	int serdes_tbl_num = cfg->serdes_tbl_num;
>>   
>> -	qmp_pcie_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
>> -	qmp_pcie_configure(serdes, cfg->regs, cfg->serdes_tbl_sec, cfg->serdes_tbl_num_sec);
>> +	qmp_pcie_configure(serdes, cfg->regs, cfg->common.serdes_tbl, cfg->common.serdes_tbl_num);
>> +	qmp_pcie_configure(serdes, cfg->regs, cfg->extra->serdes_tbl, cfg->extra->serdes_tbl_num);
> 
> I already mentioned the NULL-derefs as cfg->extra can be NULL.
> 
>>   
>>   	return 0;
>>   }
>   
>>   	if (IS_ERR(qphy->pcs_misc)) {
>> -		if (cfg->pcs_misc_tbl || cfg->pcs_misc_tbl_sec)
>> +		if (cfg->common.pcs_misc_tbl || cfg->extra->pcs_misc_tbl)
> 
> Here too.
> 
>>   			return PTR_ERR(qphy->pcs_misc);
>>   	}
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

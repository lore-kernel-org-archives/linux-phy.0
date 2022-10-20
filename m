Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 331A4C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 20 Oct 2022 09:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+j/XrLKok7Lxkt6korVc4p8S86kHTxhXjplQr3mnk2M=; b=lDd3HwojjY+No4
	neaWj3bmEB9wYNM73rw8xWV9/Ve1Hb8Gv/wbz0gEREzkEdcDxVdphCl3Hdywf+YASC22rImPXphwJ
	g2afmN63UpTzzyPPSC4ac9oVt+Ksb6gdFDkJhWhjPTVx8i/chjn5T7So/9vM7+Qo4VHhXQQra5Qh3
	5UuPaSHVtxAACgQo7vo+QETLz0EMGNdMDjQGU67bdiuiCEHazCw3NGS2wU06/Iq+VAoEIVFLGXoNg
	CEMOm/PK0YgXyOUq5DSiVg5Pn6revUuTNNdQAQ1tA6c5CuwhQddZQP6iDBQhhLdf/DrvjZDVOvUhD
	ltME69w7E3u6iVWnSmaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olS1p-00D516-Bd; Thu, 20 Oct 2022 09:39:53 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olRuU-00D0G9-Jd
	for linux-phy@lists.infradead.org; Thu, 20 Oct 2022 09:32:20 +0000
Received: by mail-lf1-x130.google.com with SMTP id g7so27439063lfv.5
        for <linux-phy@lists.infradead.org>; Thu, 20 Oct 2022 02:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vbo5+yxCw1Loi5uLkMP1tDK1U+EA1+GCOOOHXa4CGGI=;
        b=O6mDEx4dRLj/vAVzy2Aph7R6Z73vdf+VuLUUt1K+G+pPDM84CT5WF5NOwWOFOO+Gi6
         wTE108TymB66vlnG4km+fef77IPNX6HUCwaLqrQuBHteIiV8koVOEjSxIaUaPbtJ5qY8
         ahZCE1NLcVcgEi7IvRxFEGg6vv4VIxN8uSWLnQF5GkLmW1BRhkjEbeC3W76TUfDOcdVb
         PfTBXDkz0YprUQdhngVHRU8DP7CCbuGntY3HaeiwgZg0j/Fg2dJSUenit49QbMMHttdd
         mTzzxcmjdoeoNrto77RJHat+RBEFkI+z3K8V8aIAKyYOlXpQUSr1cJ804zY7c6IkVNX8
         NtHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vbo5+yxCw1Loi5uLkMP1tDK1U+EA1+GCOOOHXa4CGGI=;
        b=rSXUd6B577dODORWhqnZBPzga1t+Qit8MSBmwYoODP2qljQu0hhOhrLKOQcPyWWjdI
         K6NatsmB3P+podv/A+2UmO10ygBICfWM19Gah6tl9hE8o2NTJBz/Wcxsgu7NmCBOoFrd
         vrdDL7ZZUqq2oFxhA6MbL9R6qe7eec4CYLlTxpE9WiGToPf8yqWX9vznFSSshVUv8SF6
         drsb71KRXSEU7+ESyfuh+CBsgHcpvxfmdQFJ5sUN2L9Fe+8DvGmrrqTbxY6qPiUiFTsG
         TCR++mGw0kxebhXxYMmrp5M87jOOc2H1TiJGnuahfUXR9x+VhKTX3EPasmbaX+e6T+wM
         OIOA==
X-Gm-Message-State: ACrzQf2EEtsjPriGAMrSKyJYe36EAGMdTI0EN3j35ZCNkE6MeNScd2ih
	gmudsKYOOgdmnNUw4bUebLSL+g==
X-Google-Smtp-Source: AMsMyM4ZRdhINz5QnYRn8AeaGxUG4k9Nojc8u1utaKccujFaIuR4oyR3qkdibyWqq9n8hAsHW19m+A==
X-Received: by 2002:a05:6512:12c8:b0:4a2:cc28:cab8 with SMTP id p8-20020a05651212c800b004a2cc28cab8mr4123960lfg.205.1666258334516;
        Thu, 20 Oct 2022 02:32:14 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k12-20020ac257cc000000b00494a1b242dasm2665017lfo.14.2022.10.20.02.32.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 02:32:14 -0700 (PDT)
Message-ID: <004a6ab9-690b-db13-08a9-c42d09368814@linaro.org>
Date: Thu, 20 Oct 2022 12:32:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 15/15] phy: qcom-qmp-pcie: add support for sc8280xp
 4-lane PHYs
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-16-johan+linaro@kernel.org>
 <2902e7e8-eddf-149c-06fd-86b85d8af326@linaro.org>
 <Y1DuB6hzb3V5Lqdy@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y1DuB6hzb3V5Lqdy@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_023218_704971_3B7B5319 
X-CRM114-Status: GOOD (  39.06  )
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

On 20/10/2022 09:43, Johan Hovold wrote:
> On Thu, Oct 20, 2022 at 06:43:47AM +0300, Dmitry Baryshkov wrote:
>> On 19/10/2022 14:35, Johan Hovold wrote:
>>> The PCIe2 and PCIe3 controllers and PHYs on SC8280XP can be used in
>>> 4-lane mode or as separate controllers and PHYs in 2-lane mode (e.g. as
>>> PCIe2A and PCIe2B).
>>>
>>> Add support for fetching the 4-lane configuration from the TCSR and
>>> programming the lane registers of the second port when in 4-lane mode.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/Kconfig             |   1 +
>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 118 +++++++++++++++++++++++
>>>    2 files changed, 119 insertions(+)
>>>
>>> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
>>> index 5c98850f5a36..eb9ddc685b38 100644
>>> --- a/drivers/phy/qualcomm/Kconfig
>>> +++ b/drivers/phy/qualcomm/Kconfig
>>> @@ -54,6 +54,7 @@ config PHY_QCOM_QMP
>>>    	tristate "Qualcomm QMP PHY Driver"
>>>    	depends on OF && COMMON_CLK && (ARCH_QCOM || COMPILE_TEST)
>>>    	select GENERIC_PHY
>>> +	select MFD_SYSCON
>>>    	help
>>>    	  Enable this to support the QMP PHY transceiver that is used
>>>    	  with controllers such as PCIe, UFS, and USB on Qualcomm chips.
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> index ea5228bd9ecc..e5bce4810bb5 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> @@ -10,6 +10,7 @@
>>>    #include <linux/io.h>
>>>    #include <linux/iopoll.h>
>>>    #include <linux/kernel.h>
>>> +#include <linux/mfd/syscon.h>
>>>    #include <linux/module.h>
>>>    #include <linux/of.h>
>>>    #include <linux/of_device.h>
>>> @@ -17,6 +18,7 @@
>>>    #include <linux/phy/pcie.h>
>>>    #include <linux/phy/phy.h>
>>>    #include <linux/platform_device.h>
>>> +#include <linux/regmap.h>
>>>    #include <linux/regulator/consumer.h>
>>>    #include <linux/reset.h>
>>>    #include <linux/slab.h>
>>> @@ -886,6 +888,10 @@ static const struct qmp_phy_init_tbl sc8280xp_qmp_gen3x2_pcie_rc_serdes_tbl[] =
>>>    	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
>>>    };
>>>    
>>> +static const struct qmp_phy_init_tbl sc8280xp_qmp_gen3x4_pcie_serdes_4ln_tbl[] = {
>>> +	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x1c),
>>> +};
>>> +
>>>    static const struct qmp_phy_init_tbl sc8280xp_qmp_gen3x1_pcie_tx_tbl[] = {
>>>    	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PI_QEC_CTRL, 0x20),
>>>    	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0x75),
>>> @@ -1491,6 +1497,9 @@ struct qmp_phy_cfg {
>>>    	const struct qmp_phy_cfg_tables *tables_rc;
>>>    	const struct qmp_phy_cfg_tables *tables_ep;
>>>    
>>> +	const struct qmp_phy_init_tbl *serdes_4ln_tbl;
>>> +	int serdes_4ln_num;
>>
>> Would it make more sense to change this into the proper
>> qmp_phy_cfg_tables entry and then use the existing API for programming
>> the table?
> 
> No, there is just one serdes register update needed when in 4-lane mode,
> besides programming tx/rx for the second port. Adding a third struct
> qmp_phy_cfg_tables for this seems like overkill and would lead to a more
> convoluted implementation of the programming sequence.

Ack. Let's have it this way and change it later if the need arises.

> 
> And you can't add it two one of the existing ones, as your comment seems
> to suggest.

Please excuse me if I didn't write it clear enough. I suggested adding 
another cfg_tables, as you correctly commented above.

> 
> The gen3x4 PHYs can be in either 4-lane or 2-lane mode depending on the
> TCSR configuration. Port A is programmed identically in both cases
> except for this serdes register, and in 4-lane mode tx/rx also needs
> to be programmed for port B.
>   
>>> +
>>>    	/* clock ids to be requested */
>>>    	const char * const *clk_list;
>>>    	int num_clks;
>>> @@ -1518,6 +1527,7 @@ struct qmp_pcie {
>>>    	struct device *dev;
>>>    
>>>    	const struct qmp_phy_cfg *cfg;
>>> +	bool tcsr_4ln_config;
>>
>> As a matter of preference, this seems too specific. I'd rename it to
>> split_config or split_4ln_config.
> 
> I'm afraid those names do not make much sense. This TCSR register
> controls whether the PHY is in 4-lane mode (instead of 2-lane mode).

Well, we just need the info that it's 4-lane. It doesn't really matter 
if this information comes from TCSR, DT or e.g. fuses. I'd say that TCSR 
is a platform detail. Thus I'm suggesting a more generic name.

> 
>>>    
>>>    	void __iomem *serdes;
>>>    	void __iomem *pcs;
>>> @@ -1527,6 +1537,8 @@ struct qmp_pcie {
>>>    	void __iomem *tx2;
>>>    	void __iomem *rx2;
>>>    
>>> +	void __iomem *port_b;
>>> +
>>>    	struct clk *pipe_clk;
>>>    	struct clk *pipediv2_clk;
>>>    	struct clk_bulk_data *clks;
>>> @@ -1932,6 +1944,44 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x2_pciephy_cfg = {
>>>    	.phy_status		= PHYSTATUS,
>>>    };
>    
>>> +static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
>>> +{
>>> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>> +	const struct qmp_pcie_offsets *offs = cfg->offsets;
>>> +	void __iomem *tx3, *rx3, *tx4, *rx4;
>>> +
>>> +	tx3 = qmp->port_b + offs->tx;
>>> +	rx3 = qmp->port_b + offs->rx;
>>> +	tx4 = qmp->port_b + offs->tx2;
>>> +	rx4 = qmp->port_b + offs->rx2;
>>> +
>>> +	qmp_pcie_configure_lane(tx3, tbls->tx, tbls->tx_num, 1);
>>> +	qmp_pcie_configure_lane(rx3, tbls->rx, tbls->rx_num, 1);
>>> +
>>> +	qmp_pcie_configure_lane(tx4, tbls->tx, tbls->tx_num, 2);
>>> +	qmp_pcie_configure_lane(rx4, tbls->rx, tbls->rx_num, 2);
>>
>> I'd use BIT(2) and BIT(3) here. This would allow one to make a
>> difference between programming first pair of lanes and second pair of
>> lanes if necessary.
> 
> No, the tx and tx registers of the second port should be programmed
> identically to that of the first port.

As you would prefer. As a matter of fact, we do not have CFG_LANES in 
the PCIe PHY. Thus I'm surprised that you didn't drop this. I think 
CFG_LANES usage is limited to sm8250 USB and combo PHY configurations.

> 
>>> +}
>>> +
>>>    static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
>>>    {
>>>    	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>> @@ -2080,6 +2148,11 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>>>    
>>>    	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
>>>    	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
>>> +
>>> +	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
>>> +		qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
>>> +		qmp_pcie_init_port_b(qmp, tbls);
>>> +	}
>>
>> As you have been refactoring this piece of code, maybe it would make
>> more sense to change qmp->tx/tx2 into an array of two elements? Then we
>> can extend it to 4 in this patch, and just always write the whole array
>> in a loop?
> 
> No, I don't think that would be an improvement and would obscure the
> fact that we're programming two otherwise identical ports (e.g. tx1 and
> tx2 of port B is used for the third and fourth lanes).
> 
> Note that the above conditional encodes the difference in programming
> sequence between 4-lane and 2-lane mode I described above (one serdes
> register difference + tx/rx of port b).

Either way looks fine to me. So, let's leave this in a way you've 
implemented it.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E3CC0219E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 08:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Py9l5tHekVcYfYMdS4q4TFTwFYajjhQoz3JsCtEVZQ=; b=wwz6nHXlmjLVNB
	RYuhhtTmSNeBMUF7hLMh+C+Yr0Nqx6E5hi+LcRqgc7WoyInQvBTeDzDx2lYQhkKdZYhKXPgqSlxT/
	Jgbbbttessb7JR07XO5wp6IthNozK37/XpwdzNTX2NXAIKVvd18EBGTmplFKPYswl1Ti9yjLh8VCt
	WuNz1ZU/rD1f+mmHl1BdB0+mYOh0RtGP8DpGMxhnEhhH6ta+e6rJEYK8OZ61cUAPs773kKHnUTm+a
	YPWJ2L7lip7miNTDA8viS6H3v/ndOryvVfESYNc57sfT7FPMG4iNk+UZjfBrzzw+HbUVYQbW8mMZo
	E682htjkYW4l8JJQnVYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8EE-00000006eb6-0uqK;
	Wed, 12 Feb 2025 08:36:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti8B5-00000006dxL-1XTN
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 08:33:04 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51BM3TmD026076;
	Wed, 12 Feb 2025 08:32:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sp3ettQufyz8fmNnrUB/Q6sDRcYWIb4zuygNYHdX4zs=; b=F0IZKocMv9XQQNvF
	LIy5XE+eXIzzOmIHK9Yzaqb/qj3X6oKhy+QsAVu0Lj1HDhStzzvU/mX5/N00X5GC
	sngDxlEGzyElY1q7JGWHrBF3hKnHE+pHijFdQ0WOcmkgsaE7oeUZRdRW0Wc75cmp
	RAi3JwH1GC+rCweVMqqSQohpHhtuURBuZyndjniltChvEOw0ly0t0LKwfWHgyYqF
	lgy21qVvDFtLbQ/XN1TylPuqvb2BpCIpIDMcds1hddKmZ9OzRBGsMsE67PJhstcX
	L7LbNiTFWeDmjinAWkyjzes+W8Pgj7+PySPJo6BBlCunwjbnV1JPAapNFAdQ0/Xx
	vuE4Jg==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44r5j5b3k0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Feb 2025 08:32:58 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51C8WvCQ016286
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Feb 2025 08:32:57 GMT
Received: from [10.239.28.138] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 12 Feb
 2025 00:32:54 -0800
Message-ID: <791fa29e-a2b5-d5f6-3cbc-0f499b463262@quicinc.com>
Date: Wed, 12 Feb 2025 16:31:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <p.zabel@pengutronix.de>,
        <abel.vesa@linaro.org>, <quic_qianyu@quicinc.com>,
        <neil.armstrong@linaro.org>, <manivannan.sadhasivam@linaro.org>,
        <quic_devipriy@quicinc.com>, <konrad.dybcio@oss.qualcomm.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
 <20250211094231.1813558-3-quic_wenbyao@quicinc.com>
 <7deghiadmomrz7w7vq3v7nkzq2kabq4xbhkouswjrexif7pip3@tvjlpvuulxvp>
From: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
In-Reply-To: <7deghiadmomrz7w7vq3v7nkzq2kabq4xbhkouswjrexif7pip3@tvjlpvuulxvp>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Oz9zYtD84MGX6M3gK30-79RuA1LwV36M
X-Proofpoint-GUID: Oz9zYtD84MGX6M3gK30-79RuA1LwV36M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_02,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 phishscore=0 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502120065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_003303_550816_5BD7BFCD 
X-CRM114-Status: GOOD (  24.78  )
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

On 2/12/2025 8:13 AM, Dmitry Baryshkov wrote:
> On Tue, Feb 11, 2025 at 05:42:31PM +0800, Wenbin Yao wrote:
>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>
>> Some QCOM PCIe PHYs support no_csr reset. Unlike BCR reset which resets the
>> whole PHY (hardware and register), no_csr reset only resets PHY hardware
>> but retains register values, which means PHY setting can be skipped during
>> PHY init if PCIe link is enabled in booltloader and only no_csr is toggled
>> after that.
>>
>> Hence, determine whether the PHY has been enabled in bootloader by
>> verifying QPHY_START_CTRL register. If it's programmed and no_csr reset is
>> available, skip BCR reset and PHY register setting to establish the PCIe
>> link with bootloader - programmed PHY settings.
>>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
>>   1 file changed, 58 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index ac42e4b01065..7f0802d09812 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -2805,6 +2805,7 @@ struct qmp_pcie {
>>   
>>   	const struct qmp_phy_cfg *cfg;
>>   	bool tcsr_4ln_config;
>> +	bool phy_initialized;
>>   
>>   	void __iomem *serdes;
>>   	void __iomem *pcs;
>> @@ -3976,6 +3977,7 @@ static int qmp_pcie_init(struct phy *phy)
>>   {
>>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> +	void __iomem *pcs = qmp->pcs;
>>   	int ret;
>>   
>>   	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>> @@ -3984,10 +3986,17 @@ static int qmp_pcie_init(struct phy *phy)
>>   		return ret;
>>   	}
>>   
>> -	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> -	if (ret) {
>> -		dev_err(qmp->dev, "reset assert failed\n");
>> -		goto err_disable_regulators;
>> +	qmp->phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
>> +	/*
>> +	 * Toggle BCR reset for phy that doesn't support no_csr
>> +	 * reset or has not been initialized
>> +	 */
>> +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> Instead of having phy_initialized please add another boolean field,
> qmp->skip_init = !!qmp->nocsr_reset && !!phy_initialized;
> Use qmp->skip_init through the code.

In qmp_pcie_power_off and qmp_pcie_exit, we only check qmp->nocsr_reset. It

seems unnecessary to combine qmp->nocsr_reset with phy_initialized.

>
>> +		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> +		if (ret) {
>> +			dev_err(qmp->dev, "reset assert failed\n");
>> +			goto err_disable_regulators;
>> +		}
>>   	}
>>   
>>   	ret = reset_control_assert(qmp->nocsr_reset);
>> @@ -3998,10 +4007,12 @@ static int qmp_pcie_init(struct phy *phy)
>>   
>>   	usleep_range(200, 300);
>>   
>> -	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>> -	if (ret) {
>> -		dev_err(qmp->dev, "reset deassert failed\n");
>> -		goto err_assert_reset;
>> +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
>> +		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>> +		if (ret) {
>> +			dev_err(qmp->dev, "reset deassert failed\n");
>> +			goto err_assert_reset;
>> +		}
>>   	}
>>   
>>   	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
>> @@ -4011,7 +4022,8 @@ static int qmp_pcie_init(struct phy *phy)
>>   	return 0;
>>   
>>   err_assert_reset:
>> -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> +	if (!qmp->nocsr_reset || !qmp->phy_initialized)
>> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>>   err_disable_regulators:
>>   	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>>   
>> @@ -4023,7 +4035,10 @@ static int qmp_pcie_exit(struct phy *phy)
>>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>   
>> -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> +	if (!qmp->nocsr_reset)
>> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> +	else
>> +		reset_control_assert(qmp->nocsr_reset);
>>   
>>   	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
>>   
>> @@ -4042,16 +4057,22 @@ static int qmp_pcie_power_on(struct phy *phy)
>>   	unsigned int mask, val;
>>   	int ret;
>>   
>> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>> -			cfg->pwrdn_ctrl);
>> +	/*
>> +	 * Write CSR register for phy that doesn't support no_csr
> what is CSR register?
The registers of PHY.
>
>> +	 * reset or has not been initialized
>> +	 */
>> +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
>> +		qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>> +				cfg->pwrdn_ctrl);
>>   
>> -	if (qmp->mode == PHY_MODE_PCIE_RC)
>> -		mode_tbls = cfg->tbls_rc;
>> -	else
>> -		mode_tbls = cfg->tbls_ep;
>> +		if (qmp->mode == PHY_MODE_PCIE_RC)
>> +			mode_tbls = cfg->tbls_rc;
>> +		else
>> +			mode_tbls = cfg->tbls_ep;
>>   
>> -	qmp_pcie_init_registers(qmp, &cfg->tbls);
>> -	qmp_pcie_init_registers(qmp, mode_tbls);
>> +		qmp_pcie_init_registers(qmp, &cfg->tbls);
>> +		qmp_pcie_init_registers(qmp, mode_tbls);
>> +	}
>>   
>>   	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
>>   	if (ret)
>> @@ -4063,15 +4084,16 @@ static int qmp_pcie_power_on(struct phy *phy)
>>   		goto err_disable_pipe_clk;
>>   	}
>>   
>> -	/* Pull PHY out of reset state */
>> -	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>> +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
>> +		/* Pull PHY out of reset state */
>> +		qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>>   
>> -	/* start SerDes and Phy-Coding-Sublayer */
>> -	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
>> -
>> -	if (!cfg->skip_start_delay)
>> -		usleep_range(1000, 1200);
>> +		/* start SerDes and Phy-Coding-Sublayer */
>> +		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
>>   
>> +		if (!cfg->skip_start_delay)
>> +			usleep_range(1000, 1200);
>> +	}
>>   	status = pcs + cfg->regs[QPHY_PCS_STATUS];
>>   	mask = cfg->phy_status;
>>   	ret = readl_poll_timeout(status, val, !(val & mask), 200,
>> @@ -4096,16 +4118,19 @@ static int qmp_pcie_power_off(struct phy *phy)
>>   
>>   	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
>>   
>> -	/* PHY reset */
>> -	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>>   
>> -	/* stop SerDes and Phy-Coding-Sublayer */
>> -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
>> -			SERDES_START | PCS_START);
>> +	if (!qmp->nocsr_reset) {
> Why this one doesn't check for the qmp->phy_initialized?

If a PHY supports no_csr reset but isn't enabled in the bootloader, we

still need to program the phy settings only once so that we can reuse them

during the D3cold -> D0 cycle. Therefore, we don't check

qmp->phy_initialized here.

>
>> +		/* PHY reset */
>> +		qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>>   
>> -	/* Put PHY into POWER DOWN state: active low */
>> -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>> -			cfg->pwrdn_ctrl);
>> +		/* stop SerDes and Phy-Coding-Sublayer */
>> +		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
>> +				SERDES_START | PCS_START);
>> +
>> +		/* Put PHY into POWER DOWN state: active low */
>> +		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>> +				cfg->pwrdn_ctrl);
>> +	}
>>   
>>   	return 0;
>>   }
>> -- 
>> 2.34.1
>>
-- 
With best wishes
Wenbin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

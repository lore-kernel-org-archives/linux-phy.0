Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96572C021A7
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 10:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZDTwXSO3JHf1/uKZj5e4zuPWDlriEqcmp529sl7FNQ=; b=Cx5urmB2WJ6/if
	NFbpUvKHasu7/v/INedX2Bpa9bTJsif0LD9HynT9vVJlh45x2g5gtRy0pxYdIK1HEloWE6epzYQSy
	GRC0XSfECQKl9vok6LJKRAZpRmS6cJT4wnrLsXRVOkD2oSE/5gy3wp4610g7a3sFhcxCH1RcC2Kj2
	tXQ4zJiLAnhGeCgSsptXQvCFn0V2k0HCHC9/HrsiUpua/PITln8tfZFzWKv1JODc4HvXipTFlNtLB
	cw+Na17PpjgBAIOuW/x3uuxamT8/1ijsrdahh2A6wDR4kUvJTHqwbGL+MFvQFJiaXeluYd2HOYcWU
	az7Z3kVrZmAAfwdRukXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjykh-00000004Ao9-1EBt;
	Mon, 17 Feb 2025 10:53:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjy3U-000000043VQ-3Dxt
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 10:08:50 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51H03EEB032018;
	Mon, 17 Feb 2025 10:08:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kmBx0vh9UKMEbN00/TAgFMn8gz1XFk6ODAvDM+ARmlM=; b=fhBJu1rxLrWEddFN
	V34QJRgX5kryCAxPUBLwI87kgVgXBQBP3g6yhuMsk2xJ+ih6HO3vW4I94MkwouGz
	UJWQokjlvEITgvba5HyfwgIMo0Q7bG8K7ip61XbuCrxYjhTQ0QMnBoiU0BrZVQsH
	g+fBIl82BB3QKH7uhqm52DQIW6bD+/NlKgbkJQxSmt2i6WvMcsJI/l06hJRrz5yD
	fTjLOkdmq/Jd+ay9JdWXty1XoOEuh2S1+Vm3YXQvcqU1dyoV0bdBqcFo3T6LAhrh
	WZTUez5vo7/76Jiut4kK7rp3Dd7FOXPq8gASW0rCRNBI9v/+KXc3BiPebryZ858A
	EZ16YQ==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ut7ws90n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Feb 2025 10:08:43 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51HA8grZ002553
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Feb 2025 10:08:42 GMT
Received: from [10.233.19.224] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 17 Feb
 2025 02:08:38 -0800
Message-ID: <abd2244b-d222-35e8-9aec-5c72ca2ace01@quicinc.com>
Date: Mon, 17 Feb 2025 18:08:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v3 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Content-Language: en-US
To: Manivannan Sadhasivam <mani@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <p.zabel@pengutronix.de>,
        <dmitry.baryshkov@linaro.org>, <abel.vesa@linaro.org>,
        <quic_qianyu@quicinc.com>, <neil.armstrong@linaro.org>,
        <manivannan.sadhasivam@linaro.org>, <quic_devipriy@quicinc.com>,
        <konrad.dybcio@oss.qualcomm.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250214104539.281846-1-quic_wenbyao@quicinc.com>
 <20250214104539.281846-3-quic_wenbyao@quicinc.com>
 <20250214144623.fvjr2bytliqhektr@thinkpad>
From: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
In-Reply-To: <20250214144623.fvjr2bytliqhektr@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: sE-UBibzRpJ7ZkIp72AKVWUX3bhJeZWX
X-Proofpoint-ORIG-GUID: sE-UBibzRpJ7ZkIp72AKVWUX3bhJeZWX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-17_04,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1011 malwarescore=0
 bulkscore=0 mlxlogscore=999 spamscore=0 adultscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502170089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_020848_937458_04309731 
X-CRM114-Status: GOOD (  27.19  )
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

On 2/14/2025 10:46 PM, Manivannan Sadhasivam wrote:
> On Fri, Feb 14, 2025 at 06:45:39PM +0800, Wenbin Yao wrote:
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
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 96 ++++++++++++++++--------
>>   1 file changed, 63 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index 219266125cf2..b3912c1a6de8 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -2805,6 +2805,7 @@ struct qmp_pcie {
>>   
>>   	const struct qmp_phy_cfg *cfg;
>>   	bool tcsr_4ln_config;
>> +	bool skip_init;
>>   
>>   	void __iomem *serdes;
>>   	void __iomem *pcs;
>> @@ -3976,7 +3977,9 @@ static int qmp_pcie_init(struct phy *phy)
>>   {
>>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> +	void __iomem *pcs = qmp->pcs;
>>   	int ret;
>> +	bool phy_initialized;
>>   
>>   	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>>   	if (ret) {
>> @@ -3984,10 +3987,18 @@ static int qmp_pcie_init(struct phy *phy)
>>   		return ret;
>>   	}
>>   
>> -	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> -	if (ret) {
>> -		dev_err(qmp->dev, "reset assert failed\n");
>> -		goto err_disable_regulators;
>> +	phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
>> +	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
>> +	/*
>> +	 * Toggle BCR reset for phy that doesn't support no_csr
> s/phy/PHY. Here and below.

Will use PHY instead.

>
>> +	 * reset or has not been initialized
>> +	 */
>> +	if (!qmp->skip_init) {
>> +		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> +		if (ret) {
>> +			dev_err(qmp->dev, "reset assert failed\n");
>> +			goto err_disable_regulators;
>> +		}
>>   	}
>>   
>>   	ret = reset_control_assert(qmp->nocsr_reset);
>> @@ -3998,10 +4009,12 @@ static int qmp_pcie_init(struct phy *phy)
>>   
>>   	usleep_range(200, 300);
>>   
>> -	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>> -	if (ret) {
>> -		dev_err(qmp->dev, "reset deassert failed\n");
>> -		goto err_assert_reset;
>> +	if (!qmp->skip_init) {
>> +		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>> +		if (ret) {
>> +			dev_err(qmp->dev, "reset deassert failed\n");
>> +			goto err_assert_reset;
>> +		}
>>   	}
>>   
>>   	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
>> @@ -4011,7 +4024,8 @@ static int qmp_pcie_init(struct phy *phy)
>>   	return 0;
>>   
>>   err_assert_reset:
>> -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> +	if (!qmp->skip_init)
>> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>>   err_disable_regulators:
>>   	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>>   
>> @@ -4023,7 +4037,10 @@ static int qmp_pcie_exit(struct phy *phy)
>>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>   
>> -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> +	if (!qmp->nocsr_reset)
>> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>> +	else
>> +		reset_control_assert(qmp->nocsr_reset);
> I'd flip the if condition for readability:
>
> 	if (qmp->nocsr_reset)
> 		...
> 	else
> 		...

Will flip the if condition.

>>   
>>   	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
>>   
>> @@ -4042,16 +4059,22 @@ static int qmp_pcie_power_on(struct phy *phy)
>>   	unsigned int mask, val;
>>   	int ret;
>>   
>> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>> -			cfg->pwrdn_ctrl);
>> +	/*
>> +	 * Write CSR register for phy that doesn't support no_csr
>> +	 * reset or has not been initialized
>> +	 */
>> +	if (!qmp->skip_init) {
> How about:
> 	if (qmp->skip_init)
> 		goto skip_phy_init;
>
> This is my personal preference btw. If anyone feels the other way, feel free
> to drop this suggestion.

Will use goto statements.

>
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
>> @@ -4063,15 +4086,16 @@ static int qmp_pcie_power_on(struct phy *phy)
>>   		goto err_disable_pipe_clk;
>>   	}
>>   
>> -	/* Pull PHY out of reset state */
>> -	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>> +	if (!qmp->skip_init) {
> 	if (qmp->skip_init)
> 		goto skip_serdes_start;

Will use goto statements.

>
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
>> @@ -4096,16 +4120,22 @@ static int qmp_pcie_power_off(struct phy *phy)
>>   
>>   	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
>>   
>> -	/* PHY reset */
>> -	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>> +	/* If a PHY supports no_csr reset but isn't enabled in the bootloader,
>> +	 * phy settings can be reused during the D3cold -> D0 cycle. So it is
> I cannot parse this sentence. If PHY is not initialized, how can you reuse the
> settings? Also what is the D3cold->D0 reference?
>
>> +	 * unnecessary to check qmp->skip_init.
>> +	 */
>> +	if (!qmp->nocsr_reset) {
> 	if (qmp->nocsr_reset)
> 		goto skip_phy_reset;
>
> - Mani
>
-- 
With best wishes
Wenbin


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

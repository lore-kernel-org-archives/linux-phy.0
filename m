Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0D5EC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 09:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBFN4HuGXW2H1mftFvkLVg3tFDrcJrlBCC2H5oOXx7c=; b=IUOUYEMIEd4XfU
	wtb2EJBI9YPv5r4E1TwBfOGndeZfarQT5OzLuXUPV8sDDUgOkz0u0+eSm+aBKa2lTQfauAoHMHX8p
	cX6YiFSzh3yAaqfUhpBNrskULcnWHKgPlfDcJJQq7hIQeQYCM1uyJQniGPIV/viIZQWEln1YBFOI5
	xQaLCO/Y/t7mcpAuwy3JkQ+/ZYY+OueBD/3L9ReM/LZjtUEshPlyAUnR4RNwcKtjsiS71mUJ/6vtI
	0El6LMfWQuXhvgyJAwjauyXQOelJ1L4lJXSUbbM1oDvHjZYFtY5tFY66Zmyb+PUpqXFhq76ol6RC4
	IAU865R0GRjy8ustCW6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Ily-000xvK-0p;
	Tue, 07 Nov 2023 09:53:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Ilv-000xt3-00
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 09:53:25 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A75EGmk016905;
	Tue, 7 Nov 2023 09:53:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=JJyqOeDVKPnGpmsy8rK0MY4A/PgRThwklgkRF/cIzpY=;
 b=U72jG0bIl9KTpsPSfw7f1ugM34wJ2fwoaq+5/PAV+Zalu4hqa6Q2vBSCg419f+BE2QzE
 7gDh5c50tNZ5jWDAgCji2apzgc91vincZfjJCORI2MWfB9ItGFF7tEqs2qwYNMXXYk0q
 kfTPvSZTRe70hOjBpu2g6BQ1POEqZwYlAs2ASz/pNfqfqgOc70b77a2KtdWerQuXqPIW
 MFpbNReg6VlRuMbEMmNneC9nr/zPWOY4IH5cAK0AEiSIFKHf6+pBKLaMcEgqFedy6P9k
 Z0/Fq1gm85SzRzsJyYNEVLDbzjVzciuLw6bHgTbBY58zygd9zU3ocnFNtgEVT836KmEK JA== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u758n1qnq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Nov 2023 09:53:10 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A79rAbj012332
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 7 Nov 2023 09:53:10 GMT
Received: from [10.218.41.203] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Tue, 7 Nov
 2023 01:53:03 -0800
Message-ID: <996d4368-57d9-43cf-381b-4d4c5ded9fdc@quicinc.com>
Date: Tue, 7 Nov 2023 15:23:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie: Add support for keeping refclk
 always on
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>
CC: Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_vbadigan@quicinc.com>,
        <quic_ramkri@quicinc.com>, <quic_nitegupt@quicinc.com>,
        <quic_skananth@quicinc.com>, <quic_vpernami@quicinc.com>,
        <quic_parass@quicinc.com>
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
 <20231106-refclk_always_on-v1-2-17a7fd8b532b@quicinc.com>
 <p3ozkq2rjkl2qowkbb5oq2bk33s476ismuxhkxv3ttlvafjyis@ctmowtnwg4rp>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <p3ozkq2rjkl2qowkbb5oq2bk33s476ismuxhkxv3ttlvafjyis@ctmowtnwg4rp>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: JfbwFeJkvyn76N6Sx05YKPT4RNeSE8Dw
X-Proofpoint-ORIG-GUID: JfbwFeJkvyn76N6Sx05YKPT4RNeSE8Dw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-06_15,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2310240000 definitions=main-2311070081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_015323_062758_6992D1E5 
X-CRM114-Status: GOOD (  25.84  )
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


On 11/6/2023 9:47 PM, Bjorn Andersson wrote:
> On Mon, Nov 06, 2023 at 05:22:35PM +0530, Krishna chaitanya chundru wrote:
>> In PCIe low power states like L1.1 or L1.2 the phy will stop
>> supplying refclk to endpoint. If endpoint asserts clkreq to bring
>> back link L0, then RC needs to provide refclk to endpoint.
>>
>> If there is some issues in platform with clkreq signal propagation
>> to host and due to that host will not send refclk which results PCIe link
>> down. For those platforms  phy needs to provide refclk even in low power
> Double <space> ------------^^
ACK
>> states.
>>
>> Add a flag which indicates refclk is always supplied to endpoint.
>>
> The patch itself look good, the problem description looks good, but if
> you have an indication that the refclk "is always supplied to the
> endpoint", then you don't have a problem with refclk and I don't think
> you need this patch.
>
> Something to the tune of "keep refclk always supplied to endpoint" seems
> to more appropriately describe what this flag is doing.
Sure I will change it in my next patch.
>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++++++++++++----
>>   1 file changed, 17 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index a63ca7424974..d7e377a7d96e 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -43,6 +43,8 @@
>>   /* QPHY_PCS_STATUS bit */
>>   #define PHYSTATUS				BIT(6)
>>   #define PHYSTATUS_4_20				BIT(7)
>> +/* PCS_PCIE_ENDPOINT_REFCLK_CNTRL */
>> +#define EPCLK_ALWAYS_ON_EN			BIT(6)
>>   
>>   #define PHY_INIT_COMPLETE_TIMEOUT		10000
>>   
>> @@ -77,6 +79,7 @@ enum qphy_reg_layout {
>>   	QPHY_START_CTRL,
>>   	QPHY_PCS_STATUS,
>>   	QPHY_PCS_POWER_DOWN_CONTROL,
>> +	QPHY_PCS_ENDPOINT_REFCLK_CNTRL,
>>   	/* Keep last to ensure regs_layout arrays are properly initialized */
>>   	QPHY_LAYOUT_SIZE
>>   };
>> @@ -103,10 +106,11 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>>   };
>>   
>>   static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
>> -	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
>> -	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
>> -	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
>> -	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
>> +	[QPHY_SW_RESET]				= QPHY_V4_PCS_SW_RESET,
>> +	[QPHY_START_CTRL]			= QPHY_V4_PCS_START_CONTROL,
>> +	[QPHY_PCS_STATUS]			= QPHY_V4_PCS_PCS_STATUS1,
>> +	[QPHY_PCS_POWER_DOWN_CONTROL]		= QPHY_V4_PCS_POWER_DOWN_CONTROL,
>> +	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
>>   };
>>   
>>   static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
>> @@ -2244,6 +2248,8 @@ struct qmp_pcie {
>>   	struct phy *phy;
>>   	int mode;
>>   
>> +	bool refclk_always_on;
>> +
>>   	struct clk_fixed_rate pipe_clk_fixed;
>>   };
>>   
>> @@ -3159,6 +3165,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>>   	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
>>   	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
>>   
>> +	if (qmp->refclk_always_on && cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL])
>> +		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL],
>> +			     EPCLK_ALWAYS_ON_EN);
>> +
>>   	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
>>   		qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
>>   		qmp_pcie_init_port_b(qmp, tbls);
>> @@ -3681,6 +3691,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> +	qmp->refclk_always_on = of_property_read_bool(dev->of_node,
>> +						      "qcom,refclk-always-on");
> Leave this line unwrapped, for readability.
>
> Regards,
> Bjorn

sure I will update this in next patch.

- Krishna Chaitanya.

>> +
>>   	ret = phy_pipe_clk_register(qmp, np);
>>   	if (ret)
>>   		goto err_node_put;
>>
>> -- 
>> 2.42.0
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

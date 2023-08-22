Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 478FEEE4993
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 15:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMH0tmsuYbiRN9qYA4LX6Bfws5fna27XVrDhXBTkX9w=; b=aWExpz9szf2jrO
	Ylp5R429/sPpO7rVuwb6v/lR+9PNeclRaX3Fn5U41ma/SJA3T9EXUtzJtR/jhiJ5nVmKZVE209cLA
	HP5a/cGN9jiyjxmQRGbOgOyiCgDLTUiWJs1inXrSPzhwHqasa0vaRDkcR8E5UPKwUa7u5RoxE+qgl
	dRq74fMCJ5SmVeBZwSCXRJMIXsOC479fqpSAOxROcx+OEfpUPCxZRngBNqfRY7bdiRYo3tvcF3iWf
	hj/E5s80grCxx5VhkdV3vqJUvnmkI4d9hVVf2rNcRpuBkrtf1Eugl0zVBwZAKpFjSB4ixApCwWAHR
	vBIh+Wf6fiXGp0unqCTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYTTC-00GNh3-33;
	Tue, 22 Aug 2023 15:39:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYTTA-00GNgi-0d
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 15:39:02 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37MFU41Y019910;
	Tue, 22 Aug 2023 15:38:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=IEgKJINjJyGJvSUsCgbv8WztEQ6o/Brf2UySwoWfgoE=;
 b=MAx//zqVXqkjw7NUesXC05BdC1wPWsG3Lal3Y31Yx9Z8Qnv2ccDJoXCR1OZtARhyaz4R
 hrc1U6WrbD3OR+LA+lH3nehoBR+SrlZslyErlX+2uATjZREVK/ALj1TnKhvvCph9sSnw
 8jW1CAMUdHRrvrqBZ+MrjPrGvBjvwLfZFV37x+h+/iSOzKN6G1ZlECCEXxPOIQLCSbq6
 4Qnikv0/TgHAuGUHTqZoR373W5k9+3Kt0b0TCZCc34+09/C/+3WGvkxVbT7Zbr+k0nur
 zyhrtF78yMSTxMskWSbZfsvKJs8yChjKKQSOgx/MGll0+Y0lri/5pdabUlTdE03k6hyK rw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sm6f9uf1a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Aug 2023 15:38:52 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37MFcpkw023351
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Aug 2023 15:38:51 GMT
Received: from [10.218.45.181] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 22 Aug
 2023 08:38:47 -0700
Message-ID: <b970ccf1-e4e2-0d79-aeb2-a1b612cc1b10@quicinc.com>
Date: Tue, 22 Aug 2023 21:08:44 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH V2 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Manish Pandey
	<quic_mapa@quicinc.com>
References: <20230819115223.9479-1-quic_nitirawa@quicinc.com>
 <20230819115223.9479-3-quic_nitirawa@quicinc.com> <ZOTBYz34rVfYWouh@matsya>
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <ZOTBYz34rVfYWouh@matsya>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: eT8mr8NxXusYL48X2VhbXlad0l3vpZ2K
X-Proofpoint-ORIG-GUID: eT8mr8NxXusYL48X2VhbXlad0l3vpZ2K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-22_13,2023-08-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 priorityscore=1501 mlxlogscore=960 adultscore=0 bulkscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308220120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_083900_264781_D3279AA0 
X-CRM114-Status: GOOD (  15.18  )
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



On 8/22/2023 7:38 PM, Vinod Koul wrote:
> On 19-08-23, 17:22, Nitin Rawat wrote:
>> Add SC7280 specific register layout and table configs.
>>
>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 142 ++++++++++++++++++++++++
>>   1 file changed, 142 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index 3927eba8e468..b22198d09508 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -177,6 +177,111 @@ static const struct qmp_phy_init_tbl msm8996_ufsphy_rx[] = {
>>   	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0E),
>>   };
>>
>> +static const struct qmp_phy_init_tbl sc7280_ufsphy_tx[] = {
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_1_DIVIDER_BAND0_1, 0x06),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_2_DIVIDER_BAND0_1, 0x03),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_3_DIVIDER_BAND0_1, 0x01),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_4_DIVIDER_BAND0_1, 0x00),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0x35),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_TX_TRAN_DRVR_EMP_EN, 0x0c),
>> +};
>> +
>> +static const struct qmp_phy_init_tbl sc7280_ufsphy_rx[] = {
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_LVL, 0x24),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x0f),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_BAND, 0x18),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_FO_GAIN, 0x0a),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5a),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0xf1),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_LOW, 0x80),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CTRL2, 0x80),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0e),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x04),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_TERM_BW, 0x1b),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x06),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x04),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x1d),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_MEASURE_TIME, 0x10),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0x6d),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0x6d),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xed),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0x3b),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x3c),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0xe0),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0xc8),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xc8),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x3b),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0xb1),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_LOW, 0xe0),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH, 0xc8),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xc8),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x3b),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
>> +};
>> +
>> +static const struct qmp_phy_init_tbl sc7280_ufsphy_pcs[] = {
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_SIGDET_CTRL2, 0x6D),
> 
> Lower case please (here and few other places)
> 
Sure , I'll update this in my next patchset.

>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0A),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_DEBUG_BUS_CLKSEL, 0x1F),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_MIN_HIBERN8_TIME, 0xFF),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_PLL_CNTL, 0x03),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB, 0x16),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB, 0xD8),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_PWM_GEAR_BAND, 0xAA),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HS_GEAR_BAND, 0x06),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x03),
>> +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x03),
>> +};
>> +
>> +static const struct qmp_phy_init_tbl sc7280_ufsphy_hs_g4_rx[] = {
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_LVL, 0x24),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x0f),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_BAND, 0x18),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_FO_GAIN, 0x0a),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5a),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0xf1),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_LOW, 0x80),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CTRL2, 0x81),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0e),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x04),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_TERM_BW, 0x6f),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x09),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x07),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_MEASURE_TIME, 0x20),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0x80),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x01),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0x3f),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0xff),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xff),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0x7f),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x2c),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0x6d),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0x6d),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xed),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x3b),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0x3c),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_LOW, 0xe0),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH, 0xc8),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xc8),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x3b),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
>> +	QMP_PHY_INIT_CFG(QSERDES_V4_RX_GM_CAL, 0x0f),
>> +};
>> +
>>   static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes[] = {
>>   	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
>>   	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x14),
>> @@ -888,6 +993,40 @@ static const struct qmp_phy_cfg sa8775p_ufsphy_cfg = {
>>   	.regs			= ufsphy_v5_regs_layout,
>>   };
>>
>> +static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {
> 
> sorted alphabetically please

Sorry vinod. I didnt completely understood the comment.
I see sc7280_ufsphy_cfg is after sa8775p_ufsphy_cfg and before
sc8280xp_ufsphy_cfg , so it seems to be sorted.
Am i missing anything here?

Regards,
Nitin



> 
>> +	.lanes                  = 2,
>> +
>> +	.offsets                = &qmp_ufs_offsets,
>> +
>> +	.tbls = {
>> +		.serdes         = sm8150_ufsphy_serdes,
>> +		.serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
>> +		.tx             = sc7280_ufsphy_tx,
>> +		.tx_num         = ARRAY_SIZE(sc7280_ufsphy_tx),
>> +		.rx             = sc7280_ufsphy_rx,
>> +		.rx_num         = ARRAY_SIZE(sc7280_ufsphy_rx),
>> +		.pcs            = sc7280_ufsphy_pcs,
>> +		.pcs_num        = ARRAY_SIZE(sc7280_ufsphy_pcs),
>> +	},
>> +	.tbls_hs_b = {
>> +		.serdes         = sm8150_ufsphy_hs_b_serdes,
>> +		.serdes_num     = ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
>> +	},
>> +	.tbls_hs_g4 = {
>> +		.tx             = sm8250_ufsphy_hs_g4_tx,
>> +		.tx_num         = ARRAY_SIZE(sm8250_ufsphy_hs_g4_tx),
>> +		.rx             = sc7280_ufsphy_hs_g4_rx,
>> +		.rx_num         = ARRAY_SIZE(sc7280_ufsphy_hs_g4_rx),
>> +		.pcs            = sm8150_ufsphy_hs_g4_pcs,
>> +		.pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
>> +	},
>> +	.clk_list               = sm8450_ufs_phy_clk_l,
>> +	.num_clks               = ARRAY_SIZE(sm8450_ufs_phy_clk_l),
>> +	.vreg_list              = qmp_phy_vreg_l,
>> +	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
>> +	.regs                   = ufsphy_v4_regs_layout,
>> +};
>> +
>>   static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
>>   	.lanes			= 2,
>>
>> @@ -1648,6 +1787,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>>   	}, {
>>   		.compatible = "qcom,sa8775p-qmp-ufs-phy",
>>   		.data = &sa8775p_ufsphy_cfg,
>> +	}, {
>> +		.compatible = "qcom,sc7280-qmp-ufs-phy",
>> +		.data = &sc7280_ufsphy_cfg,
>>   	}, {
>>   		.compatible = "qcom,sc8180x-qmp-ufs-phy",
>>   		.data = &sm8150_ufsphy_cfg,
>> --
>> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

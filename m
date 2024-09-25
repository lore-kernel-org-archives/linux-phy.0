Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3F5CF9C6C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 03:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3RVfXE2Dj6cUwp9gSO70mKl3tMr20ThwVeET+PMPY0=; b=maVTc8VkW2wxjg
	GEmu7CWV1K5/4I67rpxkLjIYjSq+w1KoM1t2S2wUH4JkgL48z+PZG7B2xMUDjabc1mrPCNdHpADBH
	gHZyqqw5QazhkeUItgNJfef4WjEswzi3aK1xSlw7EAza3ojmybg3MLUL3HH17TLE9G+s1Wsok00U8
	HQcZb5BwAG3ifBzRffK1TUYSHv4fS13KWOJjdUSNEIkpoL3W6OUpVrGTyv+u+7C8EN5YWXtw33wyS
	YCHgHTXCn84tN9qTZXhoB1HbYWQHN2bBT6TzfH61fNmGzFbr/stUnSeOWpGtkK5KvZvqpTtdG8aM8
	l3PIfxFEZ+HO4oqWdv0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stIs7-00000003utE-0JQU;
	Wed, 25 Sep 2024 03:39:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stIs2-00000003usL-42om
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 03:39:20 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48OHjGat011775;
	Wed, 25 Sep 2024 03:39:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LHX4DU4UFKSYENtu4JVMJhTMm5T43DZOWocKrJtf/9c=; b=pL3T9XDwbV4yWZom
	BbJmtMmNLvZRAbJvFpkx/uIv3yx/vkxQAonAivfT6iOnE07a319kawqFtvHADMQf
	68N1nA5gQWt2tv2QZUXGFXLpsGrt/w9IYZlg6TbfjxIbMa5RVaMMDs3TAbxjTsrd
	ksYlru1bUenqWh0YjcVBqR7bV62XGBzm3OmW2QVzVoufOaDiqS12d1/EVG4eN1N0
	wBCMiLkKUJws9Nvqq/PObQZAEUBSK+F8hCr76hzrg/NwpzXbBYVBx7cDONInqnNl
	NeTZDnKVt3xCMQ+u9poOvxMSMf2J72/i6lv74XIz954QpHwgsfAdafpkGOkPybBC
	IDu1oQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sph6tvg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 03:39:06 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48P3d4ow019070
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 03:39:04 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 24 Sep
 2024 20:38:59 -0700
Message-ID: <3d4a8243-5c2f-41c4-85ce-6e072331f4f3@quicinc.com>
Date: Wed, 25 Sep 2024 11:38:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] phy: qcom: qmp: Add phy register and clk setting
 for x1e80100 PCIe3
To: Johan Hovold <johan@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-4-quic_qianyu@quicinc.com>
 <ZvLXjdpBpUS3lLn-@hovoldconsulting.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZvLXjdpBpUS3lLn-@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: jPKHxBa8Rhh04StTzc9btdnvM9jBXhAn
X-Proofpoint-ORIG-GUID: jPKHxBa8Rhh04StTzc9btdnvM9jBXhAn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxlogscore=999
 mlxscore=0 adultscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409250024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_203919_280035_D3E705EC 
X-CRM114-Status: GOOD (  24.11  )
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


On 9/24/2024 11:15 PM, Johan Hovold wrote:
> On Tue, Sep 24, 2024 at 03:14:41AM -0700, Qiang Yu wrote:
>> Currently driver supports only x4 lane based functionality using tx/rx and
>> tx2/rx2 pair of register sets. To support 8 lane functionality with PCIe3,
>> PCIe3 related QMP PHY provides additional programming which are available
>> as txz and rxz based register set. Hence adds txz and rxz based registers
>> usage and programming sequences.
>> Phy register setting for txz and rxz will
>> be applied to all 8 lanes. Some lanes may have different settings on
>> several registers than txz/rxz, these registers should be programmed after
>> txz/rxz programming sequences completing.
> Please expand and clarify what you mean by this.
PCIe3 supports 8 lanes, so in general, we have to program 8 pairs tx/rx
registers. However, most of tx/rx registers of different lanes have
same settings, so the configuration for all 8 lanes tx/rx registers is
a little repetitive.

Hence, txz/rxz registers are included. The values programmed into txz/rxz
registers by software will be "broadcasted" to all 8 lanes by hardware.
Some lanes may have different settings on several registers than txz/rxz.
In order to ensure the different values take effect, they need to be
programmed after txz/rxz programming sequences completing.
>   
>> Besides, x1e80100 SoC uses QMP phy with version v6.30 for PCIe Gen4 x8.
>> Add the new register offsets in a dedicated header file.
>>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 211 ++++++++++++++++++
>>   .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h    |  25 +++
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h |  19 ++
>>   3 files changed, 255 insertions(+)
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
>>   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index f71787fb4d7e..d7bbd9df11d7 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -1344,6 +1346,155 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
>>   	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_FOM_EQ_CONFIG5, 0x8a),
>>   };
>>   
>> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x8_pcie_txz_tbl[] = {
> Please try to follow the sort order used for the other platforms for
> these tables (e.g.  serdes, tx, rx, pcr, pcr_misc).
OK, will follow this order.
>
>> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x8_pcie_pcs_misc_tbl[] = {
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_OSC_DTCT_ACTIONS, 0x00),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_EQ_CONFIG1, 0x16),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_G4_EQ_CONFIG5, 0x02),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_G4_PRE_GAIN, 0x2e),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG1, 0x03),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG3, 0x28),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_RX_MARGINING_CONFIG5, 0x18),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_G3_FOM_EQ_CONFIG5, 0x7a),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_G4_FOM_EQ_CONFIG5, 0x8a),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_G3_RXEQEVAL_TIME, 0x27),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_G4_RXEQEVAL_TIME, 0x27),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_TX_RX_CONFIG, 0xc0),
>> +	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_30_PCS_POWER_STATE_CONFIG2, 0x1d),
>> +
> Stray newline.
>
>> +};
>> +
>> +static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
>> +	.lanes = 8,
>> +
>> +	.offsets		= &qmp_pcie_offsets_v6_30,
>> +	.tbls = {
>> +		.serdes			= x1e80100_qmp_gen4x8_pcie_serdes_tbl,
>> +		.serdes_num		= ARRAY_SIZE(x1e80100_qmp_gen4x8_pcie_serdes_tbl),
>> +		.rx			= x1e80100_qmp_gen4x8_pcie_rx_tbl,
>> +		.rx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x8_pcie_rx_tbl),
>> +		.pcs			= x1e80100_qmp_gen4x8_pcie_pcs_tbl,
>> +		.pcs_num		= ARRAY_SIZE(x1e80100_qmp_gen4x8_pcie_pcs_tbl),
>> +		.pcs_misc		= x1e80100_qmp_gen4x8_pcie_pcs_misc_tbl,
>> +		.pcs_misc_num		= ARRAY_SIZE(x1e80100_qmp_gen4x8_pcie_pcs_misc_tbl),
>> +		.ln_shrd		= x1e80100_qmp_gen4x8_pcie_ln_shrd_tbl,
>> +		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x8_pcie_ln_shrd_tbl),
>> +		.txz			= x1e80100_qmp_gen4x8_pcie_txz_tbl,
>> +		.txz_num		= ARRAY_SIZE(x1e80100_qmp_gen4x8_pcie_txz_tbl),
>> +		.rxz			= x1e80100_qmp_gen4x8_pcie_rxz_tbl,
>> +		.rxz_num		= ARRAY_SIZE(x1e80100_qmp_gen4x8_pcie_rxz_tbl),
> Try follow the order of the other SoCs here as well (e.g. use the order
> defined in struct qmp_phy_cfg_tbls).

Will follow the order defined in struct qmp_phy_cfg_tbls.

>
>> +	},
>>   static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
>>   {
>>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> @@ -3751,6 +3953,9 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>>   
>>   	qmp_configure(qmp->dev, serdes, tbls->serdes, tbls->serdes_num);
> If your comment in the commit message implies that txz/rxz must be
> programmed before tx/rx then you need to add a comment here as well.

Will add a comment here.

Thanks,
Qiang Yu
>
>> +	qmp_configure(qmp->dev, qmp->txz, tbls->txz, tbls->txz_num);
>> +	qmp_configure(qmp->dev, qmp->rxz, tbls->rxz, tbls->rxz_num);
>> +
>>   	qmp_configure_lane(qmp->dev, tx, tbls->tx, tbls->tx_num, 1);
>>   	qmp_configure_lane(qmp->dev, rx, tbls->rx, tbls->rx_num, 1);
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

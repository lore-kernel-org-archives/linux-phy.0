Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D4BCD6E60
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 11:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uk9Mzk3PfbdsMaRGl6+fmRMhPxQog7LF21JBilUbGl0=; b=PTmeULLtt38aiK
	mRHX2wk2Vuvgk98vrSKzSCvozCKMONZ/U2G7hZ/+H3+mTsOUydBucueIq0zrm/eRXcGHIqAFcG/kt
	CO7P5dstm1ih8E8cyPM4IIumxgKaAp9OnlyeMXlSOfm7HaS2FMYEuG8g9mzzAeJAhE2QdIk9UEbdW
	eC9u6MlKpnqqxYSvI6llCSVyzvIFDJeFPi413UYBoAv7n8FTaRCGKt1n+o6dJ7S+IKqJFPaq3KSDd
	Gwo9EV7hQbYtSduiprRnlElLOh3JSVw32Uc0TvJ3wpQjbbBA2VUWd5zm5ckj0dpU1a+ZKvrTBsMYz
	vnLuWdgqY1NDtFVBV1Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXpN-00FnH0-0A;
	Wed, 11 Oct 2023 11:56:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXpJ-00FnGM-2i
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 11:56:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B8XXaR025256;
	Wed, 11 Oct 2023 11:56:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=yWDYgFmR3DLE3mMSw9m4g0WmA/jghMlKyUvasAzQv5Y=;
 b=DlaG+xwpNJQFvmVHQvRcB642pvbeJtCyliiGr+V4JJuEHq5cEk6UaLM2j8OLCxw7l+yF
 cocAif6EIJKV2XVlfUchYUXYcGpSNR9ibtQo02MbR5Ap0vViFQryHD3uSfqJ0buQzEBq
 +hC0RApBnvfJzAYHvmYNxkaYl1l3dj2ajUWhaHFYonssAXmUhfozz6YXs/746Ve6Opi3
 V6oZlVSXsEhfJ6oOCIKdQ0VRdM//pv9fX1SUopFYkWBfn7dUGi02MpIekhCKKbJCUINS
 r+5O2gl4SAhf8CAnw2oNisQDqn4nkJMt9rPPpp40eB3bw+FM8neyZO+rYrFqkBd+wg7q qA== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tnnvw8rrb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:56:24 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39BBu4IR032535
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:56:04 GMT
Received: from [10.216.52.55] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Wed, 11 Oct
 2023 04:55:56 -0700
Message-ID: <6531b333-b978-6b97-5cb4-59562d775ac3@quicinc.com>
Date: Wed, 11 Oct 2023 17:25:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 2/4] phy: qcom-qmp-pcie: add endpoint support for
 sa8775p
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <konrad.dybcio@linaro.org>, <mani@kernel.org>,
        <quic_shazhuss@quicinc.com>, <quic_nitegupt@quicinc.com>,
        <quic_ramkri@quicinc.com>, <quic_nayiluri@quicinc.com>,
        <robh@kernel.org>, <quic_krichai@quicinc.com>,
        <quic_vbadigan@quicinc.com>, <quic_parass@quicinc.com>,
        Bjorn Helgaas
	<bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mhi@lists.linux.dev>,
        <linux-phy@lists.infradead.org>
References: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com>
 <1697023109-23671-3-git-send-email-quic_msarkar@quicinc.com>
 <CAA8EJpoLxeSvxjcyq1BMR9XuAffrxLmO-eaBYJ+Fhnb4zYmxUQ@mail.gmail.com>
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <CAA8EJpoLxeSvxjcyq1BMR9XuAffrxLmO-eaBYJ+Fhnb4zYmxUQ@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZEzDn50P4KEQEOAKHA4Ysiu6xzJT-5a3
X-Proofpoint-GUID: ZEzDn50P4KEQEOAKHA4Ysiu6xzJT-5a3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_09,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_045634_022275_4C0A7E4D 
X-CRM114-Status: GOOD (  20.63  )
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


On 10/11/2023 5:06 PM, Dmitry Baryshkov wrote:
> On Wed, 11 Oct 2023 at 14:19, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>> Add support for dual lane end point mode PHY found on sa8755p platform.
>>
>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 41 ++++++++++++++++++++++++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h |  2 ++
>>   2 files changed, 43 insertions(+)
> Two minor questions.
>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index a63ca74..962b4a1 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -2147,6 +2147,38 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl[]
>>          QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
>>   };
>>
>> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl[] = {
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_BG_TIMER, 0x02),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYS_CLK_CTRL, 0x07),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x27),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x0a),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x17),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE1, 0x19),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x00),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x03),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x00),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE0, 0xfb),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE0, 0x01),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE1, 0x01),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_MODE, 0x14),
> I should check whether we miss QSERDES_V5_COM_CMN_MODE in
> sm8450_qmp_gen4x2_pcie_ep_serdes_tbl, which is otherwise nearly
> identical.
> Also do you need to set QSERDES_V5_COM_CORE_CLK_EN here?
QSERDES_V5_COM_CORE_CLK_EN is common for both RC and EP
so we are using it in sa8775p_qmp_gen4x2_pcie_serdes_alt_tbl

-Mrinmay
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE0, 0xff),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x04),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE1, 0xff),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x09),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE0, 0x19),
>> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE1, 0x28),
>> +};
>> +
>> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl[] = {
>> +       QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
>> +};
> This is the same as sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl

so you want me to use sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl
instead of creating new one for sa8775?

-Mrinmay

>> +
>> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl[] = {
>> +       QMP_PHY_INIT_CFG(QPHY_V5_PCS_INSIG_MX_CTRL7, 0x00),
>> +       QMP_PHY_INIT_CFG(QPHY_V5_PCS_INSIG_SW_CTRL7, 0x00),
>> +};
> Could you please confirm that these registers belong to the V5
> namespace rather than V5_20 one?
may I know difference between V5 and V5_20 namespace
can't we use V5 namespace here?

-Mrinmay
>> +
>>   struct qmp_pcie_offsets {
>>          u16 serdes;
>>          u16 pcs;
>> @@ -3043,6 +3075,15 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
>>                  .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
>>          },
>>
>> +       .tbls_ep = &(const struct qmp_phy_cfg_tbls) {
>> +               .serdes         = sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
>> +               .serdes_num     = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
>> +               .pcs_misc       = sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl,
>> +               .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl),
>> +               .pcs            = sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl,
>> +               .pcs_num        = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl),
>> +       },
>> +
>>          .reset_list             = sdm845_pciephy_reset_l,
>>          .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
>>          .vreg_list              = qmp_phy_vreg_l,
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
>> index 36cc80b..6ee1c33 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
>> @@ -11,6 +11,8 @@
>>   #define QPHY_V5_PCS_PCS_STATUS1                                0x014
>>   #define QPHY_V5_PCS_POWER_DOWN_CONTROL                 0x040
>>   #define QPHY_V5_PCS_START_CONTROL                      0x044
>> +#define QPHY_V5_PCS_INSIG_SW_CTRL7                     0x060
>> +#define QPHY_V5_PCS_INSIG_MX_CTRL7                     0x07c
>>   #define QPHY_V5_PCS_LOCK_DETECT_CONFIG1                        0x0c4
>>   #define QPHY_V5_PCS_LOCK_DETECT_CONFIG2                        0x0c8
>>   #define QPHY_V5_PCS_LOCK_DETECT_CONFIG3                        0x0cc
>> --
>> 2.7.4
>>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

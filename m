Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABBEEEB8FAF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmaOUGp3iGRw4HjQxnI4qm0+IyRvR9M+VjLq46wdEAk=; b=nB/7Kk5XkTvZmY
	LtgjAxX+U4d/4uTlSUqgYlN6+pSx06X8Ibo1OsqwaAmR9vtq1N7iwSgfUCGMg0JVuMlpwyYalH+uD
	9yV6stApM1Q8a3ORPauOr/hPxRSHyOgjmEEm/7qgS/HipCheqxQruW5JlpfeKWBtDKOeK85a+vj5Z
	MSJdUNAXmVlFKaQncW2mFFHr5DH0zpCNopAVZHtrBJK/d+Cblqhmcltmn0XAPO8ZOM5N+wtWRc94n
	KbD25UcCFh9IR6YGBjfiToGAgy+N1bKBC4EMCim80xkQ1KkUqnikFBMMOTsO8qanuarwj9bcwPda8
	neMg3gxjXVbU/I0lwqkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlLC-007JJQ-18;
	Wed, 06 Sep 2023 05:44:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlL8-007JIn-1Q
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:44:36 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3864wwLS032668;
	Wed, 6 Sep 2023 05:44:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=H9E7IM82XvAupPtHAAhHg8Z0/A/VCbXUYmPP+QgdysM=;
 b=Ps/z6y4WTnwWfLreBp+mLPtHAddH9y7FHj5JGm+SiJpWk+Z13Fc1A6AoI+wU0TApesIj
 0eoF27QtBWd+SzF5i1Iu3d0bPOP4pr9aFUlm3ILWNEVRBaaO8bAL+ak2floeh3IkvWEH
 CvHmE2x6UoFcPWtfcdGvqiDAJJK478zNvah7dz3boKK6VjTHlzb4FY/W4cD3zfIQQC34
 mkXgK6nrxyKE8LkGS1ZH2q4OJmyyif/0xt+biDF2i+oFgfq77DL2EQFvw4OArV1zSGWV
 1EQXIgmmbWs9VgmrTtrnFj64Sg3B2HPGib2BDkIWyTZwt0Tc0faxu1p6okClTot4Gfuw Dg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sxhrag5ns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Sep 2023 05:44:29 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3865iSYW017191
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Sep 2023 05:44:28 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 5 Sep
 2023 22:44:20 -0700
Message-ID: <253b5fb5-9124-3d60-6405-fcb37e542211@quicinc.com>
Date: Wed, 6 Sep 2023 11:14:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2 5/5] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY
 support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <abel.vesa@linaro.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <kernel@quicinc.com>
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-6-git-send-email-quic_rohiagar@quicinc.com>
 <8aefd8f9-cfe9-4011-a24b-ebb13d28faa0@linaro.org>
 <0d76f851-ef7a-2d09-a344-9ec31ba581a5@quicinc.com>
 <CAA8EJprS3vxQbOGZnsipRGi4MiyZj3X5HpMan3Q6Z732aWfJ_g@mail.gmail.com>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <CAA8EJprS3vxQbOGZnsipRGi4MiyZj3X5HpMan3Q6Z732aWfJ_g@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GxlsZtewqPOb8pNfmLjZ5OGKt4XozY1K
X-Proofpoint-GUID: GxlsZtewqPOb8pNfmLjZ5OGKt4XozY1K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_13,2023-09-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 adultscore=0 impostorscore=0
 mlxscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309060051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_224434_601960_8E3D4B84 
X-CRM114-Status: GOOD (  17.24  )
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


On 9/6/2023 11:11 AM, Dmitry Baryshkov wrote:
> On Wed, 6 Sept 2023 at 08:35, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>>
>> On 9/6/2023 2:08 AM, Dmitry Baryshkov wrote:
>>> On 05/09/2023 13:30, Rohit Agarwal wrote:
>>>> Add support for USB3 QMP PHY found in SDX75 platform.
>>>>
>>>> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
>>>> ---
>>>>    drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 158
>>>> ++++++++++++++++++++++++++++++++
>>>>    1 file changed, 158 insertions(+)
>>>>
>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
>>>> b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
>>>> index 0130bb8..57b8b5b 100644
>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
>>>> @@ -23,6 +23,7 @@
>>>>    #include "phy-qcom-qmp-pcs-misc-v3.h"
>>>>    #include "phy-qcom-qmp-pcs-usb-v4.h"
>>>>    #include "phy-qcom-qmp-pcs-usb-v5.h"
>>>> +#include "phy-qcom-qmp-pcs-usb-v6.h"
>>>>      /* QPHY_SW_RESET bit */
>>>>    #define SW_RESET                BIT(0)
>>>> @@ -858,6 +859,134 @@ static const struct qmp_phy_init_tbl
>>>> sdx65_usb3_uniphy_rx_tbl[] = {
>>> [skipped the tables]
>>>
>>>> @@ -1556,6 +1685,32 @@ static const struct qmp_phy_cfg
>>>> sdx65_usb3_uniphy_cfg = {
>>>>        .has_pwrdn_delay    = true,
>>>>    };
>>>>    +static const struct qmp_phy_cfg sdx75_usb3_uniphy_cfg = {
>>>> +    .lanes            = 1,
>>>> +    .offsets        = &qmp_usb_offsets_v5,
>>> v6?
>> Since the offsets for v5 and v6 are same, I did not introduce a new
>> struct with the same values.
>> Please correct me if I have to introduce v6 offsets.
> If the offsets are the same, it's fine to leave at v5.
Ack.
>>>> +
>>>> +    .serdes_tbl        = sdx75_usb3_uniphy_serdes_tbl,
>>>> +    .serdes_tbl_num        = ARRAY_SIZE(sdx75_usb3_uniphy_serdes_tbl),
>>>> +    .tx_tbl            = sdx75_usb3_uniphy_tx_tbl,
>>>> +    .tx_tbl_num        = ARRAY_SIZE(sdx75_usb3_uniphy_tx_tbl),
>>>> +    .rx_tbl            = sdx75_usb3_uniphy_rx_tbl,
>>>> +    .rx_tbl_num        = ARRAY_SIZE(sdx75_usb3_uniphy_rx_tbl),
>>>> +    .pcs_tbl        = sdx75_usb3_uniphy_pcs_tbl,
>>>> +    .pcs_tbl_num        = ARRAY_SIZE(sdx75_usb3_uniphy_pcs_tbl),
>>>> +    .pcs_usb_tbl        = sdx75_usb3_uniphy_pcs_usb_tbl,
>>>> +    .pcs_usb_tbl_num    = ARRAY_SIZE(sdx75_usb3_uniphy_pcs_usb_tbl),
>>>> +    .clk_list        = qmp_v4_sdx55_usbphy_clk_l,
>>>> +    .num_clks        = ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
>>>> +    .reset_list        = msm8996_usb3phy_reset_l,
>>>> +    .num_resets        = ARRAY_SIZE(msm8996_usb3phy_reset_l),
>>> Clocks and resets are gone in
>>> https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/
>>>
>> Sure.
>>>> +    .vreg_list        = qmp_phy_vreg_l,
>>>> +    .num_vregs        = ARRAY_SIZE(qmp_phy_vreg_l),
>>>> +    .regs            = qmp_v5_usb3phy_regs_layout,
>>> This must be v6, if the rest of the PHY is using v6 register names.
>> Same, Shall I introduce v6 struct?
> Yes. Otherwise it becomes hard to add offsets for different versions.
> Generic rule: the name of the struct should match the Vn found in the
> register names inside.
Understood. Thanks for the info.
And will also wait for your patches that removes _USB_.

Thanks,
Rohit.
>> Thanks,
>> Rohit.
>>>> +    .pcs_usb_offset        = 0x1000,
>>>> +
>>>> +    .has_pwrdn_delay    = true,
>>>> +};
>>>> +
>>>>    static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
>>>>        .lanes            = 1,
>>>>    @@ -2256,6 +2411,9 @@ static const struct of_device_id
>>>> qmp_usb_of_match_table[] = {
>>>>            .compatible = "qcom,sdx65-qmp-usb3-uni-phy",
>>>>            .data = &sdx65_usb3_uniphy_cfg,
>>>>        }, {
>>>> +        .compatible = "qcom,sdx75-qmp-usb3-uni-phy",
>>>> +        .data = &sdx75_usb3_uniphy_cfg,
>>>> +    }, {
>>>>            .compatible = "qcom,sm6115-qmp-usb3-phy",
>>>>            .data = &qcm2290_usb3phy_cfg,
>>>>        }, {
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

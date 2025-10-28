Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C30B0CCF9EA
	for <linux-phy@archiver.kernel.org>; Tue, 28 Oct 2025 22:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fSnK9I1U4d0gIe/h6rKm1ytalBvfLbxhrQ2RxBR8AM=; b=PUnudtMLs4TvJp
	ERAMDMp6mf3XfYgjCPbtC6OcbtHkpPFrVvvOsWjGmvV6f9eID4UVe/9YxVS4Opj9HDKtve4Dfnlph
	RY6oQYcuFAr6lcJ2K4GUB65ICH3UckiF0oxIDtyL9cgd4ljNyUq5trhBcjezGCjAsauStwntBQ7nE
	/lbi6ahXM6Z3vHG7Wg2GZTWoi3jmp1AVIOmHz1RtBBuF/piq4pdLFhL7u9V2VxOxkdmdtMlvg2EZC
	Phf1NO5/0ItuEF5XHBt6fBte7IDmsuiBWmSmOagZv4jfapO3DZMJsRw7oLHBs42lqMxANbLU3Irn7
	s7JIh7zo2+ZozaMPLudg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDryh-0000000GjXQ-3BCJ;
	Tue, 28 Oct 2025 22:15:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDryf-0000000GjWp-0MEj
	for linux-phy@lists.infradead.org;
	Tue, 28 Oct 2025 22:15:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJqijk2511249
	for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 22:15:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PS6ekir5CeFEH7JucC+vlZ0WAP2bE+Fzy0K0FeebiUI=; b=PMyhG0olPjS96Jx/
	x2tXxTffEfyrPAnO0oNzytWtDYAx0v0+5tHJ0y7r6++HrJSO5Sod5KeXTf6ByR8S
	l2fNOaQszPaoMVZ3tGBhQ0kBfvPBr7JTmX9ThgL70FIIdFNYUCrSnUQ6NDeARUWm
	59P96FUCS6SFsZaKlpVzleUj2mqe1FqnXJ3DVJL2KUzQ1Nq2IIdNFxrXzP+mS2y7
	GTGcJho6RYvrcbiVshT2eEcpfJ+tIA04uNT4iQQRvn9cAsdyXglT18SLDvjy0jnF
	F9WmWX54vWbp/Fj+rp4QzQOWIb9wnVnrdEmjCH8qEme7h1CqijhiApqcpFOSdJ+u
	kUNrCw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34cd8a9u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 22:15:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-272b7bdf41fso78913995ad.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Oct 2025 15:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761689737; x=1762294537; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PS6ekir5CeFEH7JucC+vlZ0WAP2bE+Fzy0K0FeebiUI=;
        b=YESMmxEsP6I6xFg+g6BfgZZ+Hgo+PVilUOCeNjaKEcu7kcwuprP8iNqNk7N46+J6Q7
         xXe7oYdPQ4+nZA2cLXFG+SwlnVLf4jxRl6DROCT4ZXpVGbNcnqU8F1yJ2321ydOzL1ch
         pns//5TEDerwywN9tRLvDBhvzD+e1SMwNa/Na8UZ0HiIATlW862kMDztwPfQmGGqqvxU
         wKAfaRd2/MnFSzFZrolJrWMqHh7KOdt+kqx/m8Sr5b5ZGfvvlS8WsbFekL4rRMXmU2OL
         N/mFSqQ9X2fPfu2/TRRO5qp5ZCFhxkP7pqqs+4WuyUUOSCRIAghbnjMugejDwH+l0PJ4
         BUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761689737; x=1762294537;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PS6ekir5CeFEH7JucC+vlZ0WAP2bE+Fzy0K0FeebiUI=;
        b=g6ybAKpDc8pvTbDmgTx7drqNUfR4XCERYqruF9RO3P5P+HxpW6yBf6h+qxG/Uz3Zvm
         zzJLpS2G/HWKELDq+woNxek0NFuNiZrGZvpoqNv0NnFoa16czdvVAUx/GFZY4pOkeUO3
         NVvFjkggNvmID7bPVUlRXFZ+/gY4YebNB604lzIUm8PmDN8boreRyWNJ9M5bhy4PQzvX
         OVg8vLOhvWBPyOGJKXGmKgE00y6xDsFQDT+vldR8sdgayYKWBvbKUe97s42/W5elqHQs
         3dgeJdgrwFegbZkBCEFdN44bKxbDzrHgqD1IU2xS4OBqQkmqRh6boCKjvsEk0WjaXBa3
         +cEA==
X-Forwarded-Encrypted: i=1; AJvYcCUjcNplmu/nycV/xje6EDsYPhH9rgrSEbgaGuXhGybhk4zgMZ9sT1shS/81A4jN9wrAE4kadENn0qU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpIIV0uGPqOuE4/b/sWMdP9om2z/sFAZu7WxJzg/blUFbSeHw9
	eW2GRo3ECUx0VoA8hriOxxpXeXyiS10czmp91t7L71I4/3P0XVG3lYQrhQeFyFzRNKlVPv+5DRl
	jg5eeV8501YT+vVsFQAw+b4ryDsIU4roPzNNqHzdiaDN1YTCP4gP5KxEF6siBJQJxys60
X-Gm-Gg: ASbGnctFBV41L766A1DuPpIczUBx6kyWdKtlIdIqzJ3lzc1rhzfBBacOqXryV1+bQLK
	qhgMD2C3YckxlppW/UjEE7nFgrBmif7GhAbx3XOHjz0MjYuV6CwKMSl4noemZ9frTQ8h65VKT9K
	veeYh513DQ6hUOZV2U+UUdMHitjQm7hOiNBPSGTzsjWvsb10HWRNQxBxnQT1gizQAuB2Oz6bo9l
	kEFXLcjvA9vD/C1WdHygX6Q9o80EpWzrIb5RijBIMLfweT22rm2Hm+tS33ltA/4cAvbbS8o+2zs
	CktEAvzp+vyZoshvnfOdXnRGlxUI+Vl/VEWG/BfR1sL5u4b1TCB2uudfJ6XHdtPdjnSzer72qGV
	R2m4C2K3iTjA369eFAh3GjkZwGum2RP5EMovKiUOW
X-Received: by 2002:a17:903:1a4e:b0:246:80b1:8c87 with SMTP id d9443c01a7336-294deef8844mr8457075ad.43.1761689736885;
        Tue, 28 Oct 2025 15:15:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJLEA9v/Mv48Jjv867SnWr65AkZTGjkRGkYR1Ak8CozEzyX9IDMyOTK3TzmbNEefmRul/yqw==
X-Received: by 2002:a17:903:1a4e:b0:246:80b1:8c87 with SMTP id d9443c01a7336-294deef8844mr8456645ad.43.1761689736213;
        Tue, 28 Oct 2025 15:15:36 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7127afff91sm11487662a12.13.2025.10.28.15.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 15:15:35 -0700 (PDT)
Message-ID: <7ae01221-868e-d5dc-4297-8006a69e7a7c@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 15:15:33 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 6/8] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
 <20251024-glymur_usb-v6-6-471fa39ff857@oss.qualcomm.com>
 <ktjmbmfd37tm6ij3pqbrbhfounizz4znmqvearvh4spvuky6i6@pw5czztggbjm>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <ktjmbmfd37tm6ij3pqbrbhfounizz4znmqvearvh4spvuky6i6@pw5czztggbjm>
X-Proofpoint-ORIG-GUID: bffPCOfYgqQi6FohO5BHP0AY1xXRVCwN
X-Proofpoint-GUID: bffPCOfYgqQi6FohO5BHP0AY1xXRVCwN
X-Authority-Analysis: v=2.4 cv=avi/yCZV c=1 sm=1 tr=0 ts=69014089 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=wlTfea_xsf4MiaLh13MA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE4NyBTYWx0ZWRfXxkdxFoc/QOsu
 L792jTpAXV7O7coheqmuMgC00xcjCKi+hhX1Qty8D6+6D9hcl7nZWuzGM1RhaxC2ib8IiLI0SCM
 9IrRbXmEC9ulcVUXFhw8HD8Z5D0pL6TYJvIbKXQqCOvmKvt5vVZJSF1tDpIOD//qNLiDPjp8myX
 JjXB/BAF6ulOlioAxIse9dKhv6vcSGaQGRzkojVybGDS1LFeRF0fEySui8ee+efL36V2YNnAxej
 kpdp05vOe8RV4euoGVMRzU7q0T2PJHkrf+eFB/rV2ZJ1HS6z2BX0owv+1vWU7mhlAF48ttFuqnC
 pHYLVfd2bjZQF9Ni16B4Luf1k0p1CzEUwTHtPdzCXF7YdXplZRX6Cz8MciW7YJZOKZTXb3wVZNT
 GpZFwbv+nlUyVF4LcZKuOARcgz86HA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510280187
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_151541_273353_01FEF58C 
X-CRM114-Status: GOOD (  24.31  )
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



On 10/27/2025 7:21 AM, Dmitry Baryshkov wrote:
> On Fri, Oct 24, 2025 at 05:47:44PM -0700, Wesley Cheng wrote:
>> For SuperSpeed USB to work properly, there is a set of HW settings that
>> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
>> these settings follow the latest settings mentioned in the HW programming
>> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
>> new ways to define certain registers, such as the replacement of TXA/RXA
>> and TXB/RXB register sets.  This was replaced with the LALB register set.
>>
>> There are also some PHY init updates to modify the PCS MISC register space.
>> Without these, the QMP PHY PLL locking fails.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 288 ++++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
>>   .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
>>   .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
>>   drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
>>   7 files changed, 1215 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 1caa1fb6a8c7..d1534ed7200b 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -30,9 +30,11 @@
>>   
>>   #include "phy-qcom-qmp.h"
>>   #include "phy-qcom-qmp-pcs-aon-v6.h"
>> +#include "phy-qcom-qmp-pcs-aon-v8.h"
>>   #include "phy-qcom-qmp-pcs-misc-v3.h"
>>   #include "phy-qcom-qmp-pcs-misc-v4.h"
>>   #include "phy-qcom-qmp-pcs-misc-v5.h"
>> +#include "phy-qcom-qmp-pcs-misc-v8.h"
>>   #include "phy-qcom-qmp-pcs-usb-v4.h"
>>   #include "phy-qcom-qmp-pcs-usb-v5.h"
>>   #include "phy-qcom-qmp-pcs-usb-v6.h"
>> @@ -46,6 +48,8 @@
>>   #include "phy-qcom-qmp-dp-phy-v5.h"
>>   #include "phy-qcom-qmp-dp-phy-v6.h"
>>   
>> +#include "phy-qcom-qmp-usb43-pcs-v8.h"
>> +
>>   /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
>>   /* DP PHY soft reset */
>>   #define SW_DPPHY_RESET				BIT(0)
>> @@ -97,6 +101,7 @@ enum qphy_reg_layout {
>>   	QPHY_TX_HIGHZ_DRVR_EN,
>>   	QPHY_TX_TRANSCEIVER_BIAS_EN,
>>   
>> +	QPHY_AON_TOGGLE_ENABLE,
>>   	/* Keep last to ensure regs_layout arrays are properly initialized */
>>   	QPHY_LAYOUT_SIZE
>>   };
>> @@ -259,6 +264,236 @@ static const unsigned int qmp_v8_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>>   	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V8_TX_TRANSCEIVER_BIAS_EN,
>>   };
>>   
>> +static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
>> +	[QPHY_SW_RESET]			= QPHY_V6_N4_PCS_SW_RESET,
>> +	[QPHY_START_CTRL]			= QPHY_V6_N4_PCS_START_CONTROL,
>> +	[QPHY_PCS_STATUS]			= QPHY_V6_N4_PCS_PCS_STATUS1,
>> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_N4_PCS_POWER_DOWN_CONTROL,
> 
> V8 PHY should not be using V6 register offsets.
> 
>> +
>> +	/* In PCS_USB */
>> +	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
>> +	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]	= QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
>> +
>> +	[QPHY_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_USB3_AON_TOGGLE_ENABLE,
>> +
>> +	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V6_COM_RESETSM_CNTRL,
>> +	[QPHY_COM_C_READY_STATUS]		= QSERDES_V6_COM_C_READY_STATUS,
>> +	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
>> +	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN,
>> +
>> +	[QPHY_DP_PHY_STATUS]		= QSERDES_V6_DP_PHY_STATUS,
>> +	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V6_DP_PHY_VCO_DIV,
>> +
>> +	[QPHY_TX_TX_POL_INV]		= QSERDES_V6_N4_TX_TX_POL_INV,
>> +	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V6_N4_TX_TX_DRV_LVL,
>> +	[QPHY_TX_TX_EMP_POST1_LVL]		= QSERDES_V6_N4_TX_TX_EMP_POST1_LVL,
>> +	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V6_N4_TX_HIGHZ_DRVR_EN,
>> +	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V6_N4_TX_TRANSCEIVER_BIAS_EN,
>> +};
>> +
>> @@ -2528,6 +2784,27 @@ static const struct qmp_phy_cfg sm8750_usb3dpphy_cfg = {
>>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>>   };
>>   
>> +static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
>> +	.offsets		= &qmp_combo_usb43dp_offsets_v8,
>> +
>> +	.serdes_tbl		= glymur_usb43dp_serdes_tbl,
>> +	.serdes_tbl_num		= ARRAY_SIZE(glymur_usb43dp_serdes_tbl),
>> +	.tx_tbl			= glymur_usb43dp_lalb_tbl,
>> +	.tx_tbl_num		= ARRAY_SIZE(glymur_usb43dp_lalb_tbl),
>> +	.pcs_tbl		= glymur_usb43dp_pcs_tbl,
>> +	.pcs_tbl_num		= ARRAY_SIZE(glymur_usb43dp_pcs_tbl),
>> +	.pcs_usb_tbl		= glymur_usb43dp_pcs_usb_tbl,
>> +	.pcs_usb_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_usb_tbl),
>> +	.pcs_misc_tbl		= glymur_usb43dp_pcs_misc_tbl,
>> +	.pcs_misc_tbl_num	= ARRAY_SIZE(glymur_usb43dp_pcs_misc_tbl),
> 
> DP tables are missing.
> 

Hi Dmitry,

I think I discussed this with Abel on the previous patch revision.  At 
the moment I did not add support for DP, so we shouldn't add the tables, 
unless you think we should still have placeholder?

Thanks
Wesley Cheng

>> +
>> +	.regs			= qmp_v8_n3_usb43dpphy_regs_layout,
>> +	.reset_list		= msm8996_usb3phy_reset_l,
>> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
>> +	.vreg_list		= qmp_phy_vreg_refgen,
>> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_refgen),
>> +};
>> +
>>   static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
>>   {
>>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> @@ -3024,6 +3301,7 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>>   {
>>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>   	void __iomem *com = qmp->com;
>> +	void __iomem *pcs_aon = qmp->pcs_aon;
>>   	int ret;
>>   	u32 val;
>>   
>> @@ -3059,6 +3337,10 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>>   			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>>   			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>>   
>> +	/* override hardware control for reset of qmp phy */
>> +	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE])
>> +		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
>> +
>>   	/* Use software based port select and switch on typec orientation */
>>   	val = SW_PORTSELECT_MUX;
>>   	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
>> @@ -3236,6 +3518,8 @@ static int qmp_combo_usb_power_on(struct phy *phy)
>>   	qmp_configure_lane(qmp->dev, rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
>>   
>>   	qmp_configure(qmp->dev, pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
>> +	qmp_configure(qmp->dev, qmp->pcs_misc, cfg->pcs_misc_tbl, cfg->pcs_misc_tbl_num);
>> +
> 
> Extra empty line.
> 
>>   
>>   	if (pcs_usb)
>>   		qmp_configure(qmp->dev, pcs_usb, cfg->pcs_usb_tbl,
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

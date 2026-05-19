Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE96CCD4F3C
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 04:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTLLWEHAOghIw9ox6ausoBesRhowMJ01ij0yze4UiM4=; b=JjfrJBc7nsE2fn
	nMBF+2FnGsP8GIc/f6YNnfbpkGVigz1i6HZtS1UWyB9MEf2nOQPXE89OlU3xFo0s0XBsjKHnOWtWq
	Y6Dcuy5W11u+TpDa6QXnZhpaWUHv6mFqpRGqB3Vf7wh6HMFr/LLC5om6nhChaIAI5geycW0ioYJgJ
	bUkJOij1CBK205Xwhwx6PWpl/iodGE8ri0o9mDkHyIKnoFAar0SikjVQYd5bZsV+iLQ2tYS/5qeqz
	LXSpUvYFfNd3piCIdfIjF4eVAvbwc5iFB608jV7zcHU7Mq80j8zgZumvTpFkApav7bVzH5q8SyGpM
	xzgYCeRBiqRBGnN2y1HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPBvH-000000005hT-1x4b;
	Tue, 19 May 2026 04:19:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPBvG-000000005hK-1njV
	for linux-phy@bombadil.infradead.org;
	Tue, 19 May 2026 04:19:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lnM4NJyGEIyR+vmEiNA7vs8BcA5GFUvADg3Wqm9gRYI=; b=Bl5Cq3Tst38+eLBWSY68SwL+pi
	fNGO/QBlmgmvZjcZI6be/+Xcyt6vmAHYoi/8XShT0XEYoz1aMdTXCp5baa4VHBVRKhuv8Suw3c4+G
	OdeUTIMykqFWweZJnL5df/CRU/vldVHigoZam4Y+1keWfSa2KCYHYyGpAxLNtpHqveqevtRr1/gO8
	NhDEPXD8ornHNk/3WdO4kqP/FGv23T1774e5KZupic33JO9YzrCtaShqCblkZ4JOZ8HRh5g13Hl0y
	qw4qou6Q9K0q28M8ZRadlWNBL8rJS/pypok/MwjIZNWr4EnyWAOR61d7/JDNNa3b9hjylwGW7DAR3
	kW3MrYNg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPBvB-0000000D3sN-31fe
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 04:19:13 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64INTjNg352983
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 04:19:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lnM4NJyGEIyR+vmEiNA7vs8BcA5GFUvADg3Wqm9gRYI=; b=KCAyNbSBfZReNYVF
	vz7sxf76vtCmhc79euqJAitj8vWj9XRlzkl5jFBkpAY5zZhKlW5J0TA+BFzFVsFo
	25Heq5Zqrlt3qrLRfuccpthdG2zY5l/Okp9OZzgHF7sNXXCuKZKHxpTluKIsMUGT
	F/U7v+F3ZzcZVyxhUz1ZOQoeREF3+DmO9TZokfjFppiS+nb2BTH1jJv7ZQRWZL7W
	ZW7S0czYnBcAgYURq+h/nThQeCxjn+dcRyNmKR5Bkm6oWe5uNB8k0a1Px6ID/edw
	0ZhdGB52Ft0C/DM35ofvbCYXquopxhOD8bWFBWf1UMZqz1/yA4k3ad1p7U7K8038
	GlZn0A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e7xjam843-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 04:19:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2bc860066a6so22701215ad.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 21:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779164344; x=1779769144; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lnM4NJyGEIyR+vmEiNA7vs8BcA5GFUvADg3Wqm9gRYI=;
        b=M/lMBNmwrwpUNRNLR07aniyToQjyr79+hkL0DTwaxhmsMJbw5n//hA9aEy5C7Wj8oL
         D9wzNeWxiXN3gvdRQIgavYzecs1OCE+fnGTBZF3eEqLsvrZ7R8EEIaDhVpgjiNRY7Trz
         sga7Jktrms/6Wio/bTGeOL0n/VBHDN7I0CNdcPzfY1nqcXhv0CoV2WCuo29lOfJAfLq8
         faj04A/E68lkd+9sVi6Su+EoXl5hzQco1+Df8DsbLApv3Gw3N5k7LKtDN4Z9UX/h5lJY
         GF1Ip0UDpiTOWwda23dY29qMrh2EsLWlI0yL5e1jCgXwfjXXS+H16z8szxPnDwiuugOR
         l9xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779164344; x=1779769144;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lnM4NJyGEIyR+vmEiNA7vs8BcA5GFUvADg3Wqm9gRYI=;
        b=DipUsmgR50JZQWmg2fVnCzUWdlBEiIf4UdaQFZXMFPlSMA/N66I9KsiPdD4ncO+SBW
         N2+Z2XiWsaPE7BgWrJgMDjFa81hS30kwyxLj6wmTHLecoUjYFREyiJ6G0SZK6lvMxbU/
         Em8ddNH8teFdCxvZFM72LM3LqG2UJSe5G5UuuluY6h8uN+zNNJ67uTi4sObB/Q3abDQv
         VAAd8cgOGvayd22NwWG4M+cA4NFUFujlyxwrfF+dn6slGUU5sZM1Pth0uExWqlJLxw1M
         5m02Cnst/RKEDvwKIyRBtCYsBZ9njP386moZJiNRwM14JBqmjeHPJU8TCFERt4VPGsLn
         uTFA==
X-Forwarded-Encrypted: i=1; AFNElJ9/lgAX9+ww9reU7MLDXrin0hbYjSmbY6cNsZsKFSNiM4+Pl2RH2Vvl5T6Y9wjAjhEn5QXDJatzSGQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywx3QylODZwSMkLfw7SI0McVTcH/IoRaW1XLox4lbzdUDCgIOhk
	N3A0HjsDdQhOp9uEm8ox//N/Oe5cU2O6FHeOnq+vOcOtqT06PtqJHxH44ow8QgIc5WWp1nb+yge
	K5/QYlzgCCWszKnCrqNyia0llSj/ToUJl1mxLLnJT4mBAJ3aS3Bgbfn1o95pvZnn2m756
X-Gm-Gg: Acq92OHuw3QjvDCCnxtHonMFAQFHEyvrcVvTF0kznqTTMj+4aofJ5HmetfpA+mwwQXU
	KF+HPDjdhDLZNJIKutpip0MRSvN9ORVLfhoxGOGkHBM1fwpoDVHJiFNzkrKQCdBMXRvbGZHhlgn
	W/U+jgOV1H51wqoplA7vKN5uYLR2UssJv20DsUqnoCFCiJ0e0pJBEGqfmzk7VVanzJlW5wGjueA
	WG8BV1aczTOQhHGiNGL0X7TxQ3o6CCbVimVPAwSKuBpzHRRR1C9x3Ji7OXcjcBsEJVuRTuQHFk3
	i02ACUqwqMqdIjq2jeI/8oDgIMD6xFklMVCzFMGARP2ufEZk2dbB9HSKih12FeSKjQwrVXhqQx6
	zFWqN90sAPkE0+7DOUpDg2UPVAPzHps8vKwE3PAwibcQPLvyrSg==
X-Received: by 2002:a17:90b:5284:b0:367:bc89:546e with SMTP id 98e67ed59e1d1-369519e5346mr17091078a91.12.1779164344098;
        Mon, 18 May 2026 21:19:04 -0700 (PDT)
X-Received: by 2002:a17:90b:5284:b0:367:bc89:546e with SMTP id 98e67ed59e1d1-369519e5346mr17091050a91.12.1779164343568;
        Mon, 18 May 2026 21:19:03 -0700 (PDT)
Received: from [10.92.181.2] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36951437316sm12725222a91.11.2026.05.18.21.18.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 21:19:03 -0700 (PDT)
Message-ID: <f12b1bd8-4cc7-493b-b1d1-262212bc3e44@oss.qualcomm.com>
Date: Tue, 19 May 2026 09:48:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        andersson@kernel.org, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
 <20260518165346.1732548-4-palash.kambar@oss.qualcomm.com>
 <c6hlbz44belq5l3ko23ijny22hxzei5fexk47hwselgn7onsbz@o7uwxlkvgtwt>
Content-Language: en-US
From: Palash Kambar <palash.kambar@oss.qualcomm.com>
In-Reply-To: <c6hlbz44belq5l3ko23ijny22hxzei5fexk47hwselgn7onsbz@o7uwxlkvgtwt>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDAzOCBTYWx0ZWRfXzL2k/ZBpBJXY
 PswFPeyFbbLb/fjlWwDIQ60I0/mZD0xzwKjOZIuHJ0y6E8H+XLOZjgg48xjrMoqY9ivLnPQd2Ms
 oE15Xwzad1Z7Vn+j58cemZjyxjHbGEuRJQY9ux5mb3At2ecNvzd4vMKwg7TPUvjXXYDfBl2hph3
 OnxiA5a3+n5YNlSSRT+UVZpu2YpS6hHhIC5tpdqONKGt2bOJ8jktNafMhki8xqDGSKKbZjg8ubX
 thzk2ezhJmylXf2mNAMn9rXV5IzqGTLbJwgGjldgGJ70s+ASPXSC008hdkWS44lpYOg34FDNeU1
 YWXCw3y2V4X5EG/YRuIvATVUutVpQKq0T509logJvakQPutCkLfF6j1m7PqtxR5AI0oYtBkkjx5
 /YWVizfKjupDxbJdU3pQ4nymtANIrfCHW2UWOqSVlHtWy9W2/MYZKyiaSdBwlajTdogKw7hQJ8A
 HJYbcOCG557wVr0rWBA==
X-Authority-Analysis: v=2.4 cv=BYHoFLt2 c=1 sm=1 tr=0 ts=6a0be4b9 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=B5rOy3ph_a5vLh5NyVAA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 5HsmojzKIJW5eod0puqkd0gWoCVvGjeh
X-Proofpoint-GUID: 5HsmojzKIJW5eod0puqkd0gWoCVvGjeh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_01,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_051911_071857_40801261 
X-CRM114-Status: GOOD (  20.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 5/18/2026 10:39 PM, Dmitry Baryshkov wrote:
> On Mon, May 18, 2026 at 10:23:46PM +0530, palash.kambar@oss.qualcomm.com wrote:
>> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
>>
>> Add the init sequence tables and config for the UFS QMP phy found in
>> the Hawi SoC.
>>
>> Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
>> ---
>>  .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  22 +++
>>  .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 140 ++++++++++++++++++
>>  3 files changed, 199 insertions(+)
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
>>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
>> new file mode 100644
>> index 000000000000..bf914c752d22
>> --- /dev/null
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
>> @@ -0,0 +1,22 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (c) 2026, The Linux Foundation. All rights reserved.
>> + */
>> +
>> +#ifndef QCOM_PHY_QMP_PCS_UFS_V7_H_
>> +#define QCOM_PHY_QMP_PCS_UFS_V7_H_
>> +
>> +/* Only for QMP V7 PHY - UFS PCS registers */
>> +
>> +#define QPHY_V7_PCS_UFS_PCS_CTRL1			0x01C
>> +#define QPHY_V7_PCS_UFS_PLL_CNTL			0x028
>> +#define QPHY_V7_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x02C
>> +#define QPHY_V7_PCS_UFS_TX_HSGEAR_CAPABILITY		0x060
>> +#define QPHY_V7_PCS_UFS_RX_HSGEAR_CAPABILITY		0x094
>> +#define QPHY_V7_PCS_UFS_LINECFG_DISABLE			0x140
>> +#define QPHY_V7_PCS_UFS_RX_SIGDET_CTRL2			0x150
>> +#define QPHY_V7_PCS_UFS_READY_STATUS			0x16c
>> +#define QPHY_V7_PCS_UFS_TX_MID_TERM_CTRL1		0x1b8
>> +#define QPHY_V7_PCS_UFS_MULTI_LANE_CTRL1		0x1c0
>> +
>> +#endif
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h
>> new file mode 100644
>> index 000000000000..5f923c3e64ec
>> --- /dev/null
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h
>> @@ -0,0 +1,37 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (c) 2026, The Linux Foundation. All rights reserved.
>> + */
>> +
>> +#ifndef QCOM_PHY_QMP_QSERDES_TXRX_UFS_V8_H_
>> +#define QCOM_PHY_QMP_QSERDES_TXRX_UFS_V8_H_
>> +
>> +#define QSERDES_UFS_V8_TX_RES_CODE_LANE_OFFSET_TX		(0x34)
>> +#define QSERDES_UFS_V8_TX_RES_CODE_LANE_OFFSET_RX		(0x38)
>> +#define QSERDES_UFS_V8_TX_LANE_MODE_1				(0x80)
>> +#define QSERDES_UFS_V8_RX_UCDR_FO_GAIN_RATE2			(0x1BC)
>> +#define QSERDES_UFS_V8_RX_UCDR_FO_GAIN_RATE4			(0x1C4)
>> +#define QSERDES_UFS_V8_RX_UCDR_SO_GAIN_RATE4			(0x1DC)
>> +#define QSERDES_UFS_V8_RX_EQ_OFFSET_ADAPTOR_CNTRL1		(0x2C8)
>> +#define QSERDES_UFS_V8_RX_UCDR_PI_CONTROLS			(0x1E4)
>> +#define QSERDES_UFS_V8_RX_OFFSET_ADAPTOR_CNTRL3			(0x2D0)
>> +#define QSERDES_UFS_V8_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4	(0x120)
>> +#define QSERDES_UFS_V8_RX_UCDR_FASTLOCK_FO_GAIN_RATE4		(0xD4)
>> +#define QSERDES_UFS_V8_RX_UCDR_FASTLOCK_SO_GAIN_RATE4		(0xEC)
>> +#define QSERDES_UFS_V8_RX_VGA_CAL_MAN_VAL			(0x288)
>> +#define QSERDES_UFS_V8_RX_EQU_ADAPTOR_CNTRL4			(0x2B0)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE_0_1_B4			(0x324)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE4_SA_B7			(0x3B4)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE4_SA_B9			(0x3BC)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE4_SB_B7			(0x3E0)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE4_SB_B9			(0x3E8)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE5_SA_B7			(0x40C)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE5_SA_B9			(0x414)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE5_SB_B7			(0x438)
>> +#define QSERDES_UFS_V8_RX_MODE_RATE5_SB_B9			(0x440)
>> +#define QSERDES_UFS_V8_RX_UCDR_SO_SATURATION			(0xF4)
>> +#define QSERDES_UFS_V8_RX_TERM_BW_CTRL0				(0x1AC)
>> +#define QSERDES_UFS_V8_RX_DLL0_FTUNE_CTRL			(0x498)
>> +#define QSERDES_UFS_V8_RX_SIGDET_CAL_TRIM			(0x4d0)
>> +
>> +#endif
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index 771bc7c2ab50..a4801cf4b0fe 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -29,9 +29,11 @@
>>  #include "phy-qcom-qmp-pcs-ufs-v4.h"
>>  #include "phy-qcom-qmp-pcs-ufs-v5.h"
>>  #include "phy-qcom-qmp-pcs-ufs-v6.h"
>> +#include "phy-qcom-qmp-pcs-ufs-v7.h"
>>  
>>  #include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
>>  #include "phy-qcom-qmp-qserdes-txrx-ufs-v7.h"
>> +#include "phy-qcom-qmp-qserdes-txrx-ufs-v8.h"
>>  
>>  /* QPHY_PCS_READY_STATUS bit */
>>  #define PCS_READY				BIT(0)
>> @@ -84,6 +86,13 @@ static const unsigned int ufsphy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
>>  	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
>>  };
>>  
>> +static const unsigned int ufsphy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
>> +	[QPHY_START_CTRL]		= QPHY_V6_PCS_UFS_PHY_START,
>> +	[QPHY_PCS_READY_STATUS]		= QPHY_V7_PCS_UFS_READY_STATUS,
>> +	[QPHY_SW_RESET]			= QPHY_V6_PCS_UFS_SW_RESET,
>> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
> 
> Don't mix V6 and V7 registers. And why is it v7? The rest of the
> registers point out a v8 PHY.
> 
>> +};
>> +
>>  static const struct qmp_phy_init_tbl milos_ufsphy_serdes[] = {
>>  	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
>>  	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
>> @@ -1844,6 +1868,119 @@ static const struct qmp_phy_cfg sm8750_ufsphy_cfg = {
>>  
>>  };
>>  
>> +static const struct qmp_phy_init_tbl hawi_ufsphy_serdes[] = {
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x60),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x1f),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO_MODE1, 0x1f),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x07),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x20),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_CTRL, 0x40),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADAPTIVE_ANALOG_CONFIG, 0x06),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x06),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE0, 0x06),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE0, 0x18),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE0, 0x14),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x92),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1e),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4c),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x06),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE1, 0x06),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE1, 0x18),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE1, 0x14),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xbe),
>> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
> 
> Yep... If it is V8, use V8 registers. Even if they are they same.
> 
>> +};
>> +
>> +static const struct qmp_phy_init_tbl hawi_ufsphy_tx[] = {
>> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_TX_LANE_MODE_1, 0x0c),
>> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
>> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V8_TX_RES_CODE_LANE_OFFSET_RX, 0x17),
> 
> And it's V8.
> 

Sure Dmitry, will update. Thanks.


>> +};
>> +
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

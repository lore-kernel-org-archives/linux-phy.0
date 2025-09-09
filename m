Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47E66CAC59A
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 17:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdCkcJF0QEHUAnRdYNhEWsaiay5ifNYPkRFrbhu6QWM=; b=UC3fVfayhmIfk+
	JiUhKToi1Lyj9tk/ohMmuyABzpViFDTa87pRg76Az27Z++bF+QqxYsB6kdouyi4KTAHQQ1Ba9dS0c
	33SlUFW5eIB87qaMl3e9K471D501eBD2r+xv55o+c/DtLPZUvSoIjUct5hMuYckSIKEupm8Xl8Wfa
	hc7c8A9xT9RydYknxk2SALPF6JFgei8yMavdWdz7YgdaN4k1IzDJNOo/pMCH1Zwl60va06mBOZt//
	E888dbHBLQYApZ8PVRxTPzy4lUn8bkv0ulNDPf/V8RC7mCk5ztKVrhnjtbmbbewHgMv+HkfW4gtqO
	Evgh51DRueLqgACI8A1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1vD-00000008mm0-3Z7q;
	Tue, 09 Sep 2025 17:14:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwSF-00000006hub-0qQX
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 11:24:08 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LRAY029818
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 11:24:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eUg01/Afr4AMNQRrBFnV7GmqqBeNc1amI/Kdd18PPvM=; b=maynvZp7JMq7mPtf
	IpmJDExs+dNasB/q8wpITQp3+Py6G2WhCxEuReS1o5dcS0Rv6EAB6baBsRBbUG5/
	A/fMNmp2XIrOBVP3ApvX/sq0EQsWGmHSrZjsHdi9sTI2J255e8jHTUkQsNMTb5yz
	KMEcqrWnOF+xi85XZdNZ/fmQGu8aO/wSFLvo7EUo3GsjiGQvIBXkA50WZ2PxK4hB
	9i0L5XOlryOiiduJHp2vc09E0zrou3Win2Z/fsdW781j5skEPKqR65Gjx2JHmW3R
	I9i0tRs3MfKG+PhA/1gJWJLpcepekM+Ux9mNakcnN7U8NE3JeFsOPZireGbAXGTt
	xoCkiA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37vghe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 11:24:06 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3ca5e94d3so10239651cf.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 04:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757417045; x=1758021845;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eUg01/Afr4AMNQRrBFnV7GmqqBeNc1amI/Kdd18PPvM=;
        b=Rt6FdUU5y3jxU7sWz6jAQpz92eskn1NsVaZJ9T93NohByS6y/IIgY9QDN28+XvGZ7O
         FQoaCpKsma71LgO2RTDAoKfPFsbnWvLvR/K1g9JOF+ykVFI/4dbCWr5BXIFOseo+8HmF
         2bZOaT61nTXpT9Y3c3OlLLwncTiPHBzWp5hD/wU85AOEZNOaSbCukLDYnNFIy6Bahv35
         zq7xv/nY6Qc77FipYE7ZgWIXIZ0lKTSlf0g8iJ6aSgH56RQ4Qptuyr83TYt3zzXwhRV9
         aLGGUfwnLiAZq/ie0BsakEWzQoIildUO0O0uwPVmYM96N+Nqhb9mcMJQtnO9kgIogIHd
         X9VQ==
X-Forwarded-Encrypted: i=1; AJvYcCW37yYNnKecog3TZYNfN27QmPZE384xMwYmv8W9PMTFlnAKltPD/LyZgdYZYDSxvIxzRQxDvKtSN/8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2ujL+/EDJOmJnfLnvdY1KIXbTIKZjvb14s6yBEvLBLM0mEymf
	azdCgrckw3khhNq1WVG3vLv/hzpWvDiEJUbX5atGNnSbvEu/75E4f0j4gsCSyUQ++6yS9D96fBM
	tEMulj3DtnmgWTOb0I3L19AMRK/yt2kx747KZd9to98pmfK/yVD2qRbFXuZYKNVx3uj5x
X-Gm-Gg: ASbGncvS823exlavKRqEfcJSHnFdyk/jkC1wWZ8wYxIKjL/bNe6ArbFTKBRwCOBWZb6
	x82RRvjVfcAa8XAOLOgVZoWg8b4DmtCZ9dIQA/1UUGqQ7cETs0ZDObV3sdWglnMNLqRV1gJ0Sp/
	X1N6vqF9RkahvnXjPnaAdtM+Juj3p8dXtTwe8mQfjBYxvSBnZPI5VRU19wnREY04tqQb1oe9kbY
	MKZfGZk5O60qMNA2ulAumsZUjsPumdld43NKTDBi+xoNlRgUdun5Ydrnh688G3n5yzf8qqRciAY
	/d4bMDh/GusIXXgyEaGmuisNPd25eR5aQPDicjbq/fI03AJ5bC4d2LQYenZz1OyGTFkHfowtLjr
	ZtDBIce3l2JxcyD5/gEcL4A==
X-Received: by 2002:a05:622a:1355:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b5f85310efmr82329501cf.9.1757417044946;
        Tue, 09 Sep 2025 04:24:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOYBxYQlHjTy/WbyUCGub1yhV3/MlPIzezVg20ZIjr0sOh6+2yeuVD3SEZgmzVo3u8oI9Dqw==
X-Received: by 2002:a05:622a:1355:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b5f85310efmr82329251cf.9.1757417044226;
        Tue, 09 Sep 2025 04:24:04 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c018f663asm1086756a12.43.2025.09.09.04.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 04:24:03 -0700 (PDT)
Message-ID: <12ae186b-9816-4269-ab3a-7aacdc7cb954@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 13:24:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
 <3xw54kzk36u7zrfhgva4p577nzle3ctzi3lyhcxapczv2bhceo@23zcaylkqoff>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3xw54kzk36u7zrfhgva4p577nzle3ctzi3lyhcxapczv2bhceo@23zcaylkqoff>
X-Proofpoint-ORIG-GUID: cx8oKiTtFz_6EJpdX7ZFp-2QI48EWrA-
X-Proofpoint-GUID: cx8oKiTtFz_6EJpdX7ZFp-2QI48EWrA-
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c00e56 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=hW6Tvmzh9q5i_Tc9j78A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX9gkMQ0XNmRUG
 L4yHQFzvvbylBErBXSHIdx9MNDrf1GDhITE7hYghEo2atKCFWOnR3D3lWygYPL1uVaKAmnDUCK0
 9QHGjWvO6i7y+VskQ7eD2cQtzmCVI0iIDhdKTGFL3t0PKpzlb6OvN4O5zFUFDP/LoQ5/bssqH1O
 wl0xKLvLiANLbNaTyNlJEoIYCIY9fBX+Z2XCrulFk1HnjbuzGoV7+ZqnXmh385yzsdZa4dw8wK6
 FV61xo6lL9UVIoStwiqWT8gdAQd5eW472bmvTH6Tu+bbO6iw0Rv4JRptM7hAum4xfQZ3ErSR6/L
 BYcT3oKAXtjeydAL1vMG803h9FXxIBCPkiZUH0ldfyn8+cLx0hJm3SkQNZ9u2RKVXLsB9Go3pgn
 8XnYe9g2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_042407_251092_D66C75FE 
X-CRM114-Status: GOOD (  18.86  )
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

On 9/9/25 1:19 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 09, 2025 at 01:07:27PM +0300, Abel Vesa wrote:
>> Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
>> for the same version number. So in order to be able to differentiate
>> between them, add these ones with DP prefix.
>>
>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>> ---
>>  .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++
>>  1 file changed, 52 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
>> --- /dev/null
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
>> @@ -0,0 +1,52 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (C) 2025 Linaro Ltd.
>> + */
>> +
>> +#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
>> +#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
>> +
>> +/* Only for DP QMP V8 PHY - QSERDES COM registers */
>> +#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
>> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
>> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
>> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
>> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
>> +#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
>> +#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
>> +#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
>> +#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
>> +#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
>> +#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
>> +#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
>> +#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
>> +#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
>> +#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
>> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
>> +#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
>> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
>> +#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
>> +#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
>> +#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
>> +#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
>> +#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
>> +#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
>> +#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
>> +#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
>> +#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
>> +#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
>> +#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
>> +#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
>> +#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
>> +#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
>> +#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
>> +#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
>> +#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
>> +#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
>> +#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
> 
> The registers are the same at least up to this point. Would it make
> sense to keep common part in the same header and define only those bits
> that actually differ between DP and PCIe parts? (Is it really about PCIe
> or is it eDP vs everything else?)

No, there's a wild amount of variation between various "v8" PHYs and this
is impossible to catch by eye

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

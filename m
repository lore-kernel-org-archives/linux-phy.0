Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B19CA0EFC
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 11:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ys+a9XvMYruAgYfq5mDuibcKjb4cZW8vlWfwQAozCw=; b=4KCZM3nZBvYTwX
	nmO3pb/J+ECoqRmO6Oad+7m4ew4GwUKffb4uviM1KK1gj7CSIiv8cL8a55XyoIcRRUgbG3waFh03c
	9gc0tq2YWqlb8O9i5ma18JBf+l3cOwKPxKgno8ZmTwbL+bShMh5XIVoaFgVC2ZQoPCoy+VCvML9Iy
	89ML1G5cYsQhmUEwWjnfLogazh5o1l/t/LnK7xyGk2uTQ+VMGtQKixDQIZT2x3jvNQPej6YIPkM3E
	FBAKNtp/+cPOm8W0eOpogBNXNfBJJ8AxUSg0VOcU0/ozebaw4ul0i2y+PBc6CPwBx/Qwe/ajDxlTY
	mvz0aKCDhhnlXKUpVozA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQGK-00000002NXo-1pWl;
	Fri, 22 Aug 2025 11:48:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upLaW-00000001k0o-0OCJ
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 06:49:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6H4xp022816
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 06:49:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PAelQyATkPA6YSXiRQaF3kDsfrHXJ4J/shH4gx5CIb8=; b=XpypsNBcuyAp/E9l
	cMSqL9doPX/KQeFqCC5fdM4wqiI1J54UThwJttpQCwPqaSWuP3Exn3DdAtl6z7nH
	dxunfAwgv4QMLgEo2clVv8ZtS7Hl5FjHMy2ujAsTDUJYY0jt6qtfMKI1xgZMo7fr
	K3O//G/YQBO0uqeuP83fdJl+g5dwuMzWisOt+OYY8y37rekTc1VPy0j5gp0cuBBE
	G1Hse0gaaU4//wDwBnX7+uL17KX0/EKFzABR9OY79PS+8tKi+f++eLP3WmpwMSEv
	1Gcl+sbQ4IP9+x+gdEHHa8m3Fc31y/QIxHm42aNykv4nJRwADxGei5WViPKfh+J2
	5Aso1g==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ag5fg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 06:49:23 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b471739121bso466600a12.1
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 23:49:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755845363; x=1756450163;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PAelQyATkPA6YSXiRQaF3kDsfrHXJ4J/shH4gx5CIb8=;
        b=MXHDLVhEtd37zsA702Mwaww8nzyDA99OH+XVVtLlCEeTtig3A8fpYwAEjB90Rg53lD
         lS9wErCCQ5YX8NL23Y5K7ym5Z9RAhxzBqrEUj5YoYSbRNffzYvYVqMfn/mubpsOoqrjr
         p1hNu7jL3nJY/5rBx/V3mKXOF0/OMZIHht5PBPw/hFxsDmSdaRkkecIww3PAaoFV9orA
         CjGtorWkWSt5XTWXZ1518GlNKZFDQUETUmEv1Dv2xeYzgNYsIdprutHw6JG+iZFA7yUk
         MKudA2hfICiPWg656HweeoXXdCdCWWxQ1sOQYgAcbRPf4Nde29Jqo58ps25NqFAxYvL5
         O48Q==
X-Forwarded-Encrypted: i=1; AJvYcCVvzoi6570fXEp9SpSM/2626m42EGT2udjifdl9QQvJkOJG0w41oeZWfY8AHmc5GW3IRL5q+Iu7yFw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHA7tLWqjJn3JSaDzdFFkNqO7946YANsA5fGwIvUT6Bt3lUKZl
	OGu9S30wFdSw/ZMQknyg9Rk7CMraL7K3uNL3g6YXUyKLO+zNvHNL0fQZBjSCZU6spc14osIra5d
	kks/cME8n6VIu6VglbXiJI/NNE7VOFXdqF0wod9WMqcbfxmG28bPfejNFblI7OkqMAMxr
X-Gm-Gg: ASbGncsKZ0GvGNccNWeLyFurp4nXUv1MyhMvc4CS02UEVhPJxMtfQxFHNHb6pqjg/X9
	PpFUZru7Qsd1eXbzXKm7zqZkW9va4BYUcfgulVNgQp7QjTMOUjfLFJKApHywdkMdYVbIJ5HmX8B
	lYxnBACUXjDiVdP2EEWuqV7UVwAbtLSgnHDM7B9uvm9oUNKW8ergLDGj9wZz0AIq5wj8hhAyrC4
	U13Gw8NpqTfFoleVGPG4R5bRKZ6KeI7FBmqzjiAndjradVG0sho2hSjtJsso9CPd9q9YqPI6sXS
	3FGg9lxnv4995FsYPK7UtdbhCQkfw8usYJ3x3MKtUZwJcZ2OgTylB97ahT2Ywt/ZWalFpHHIpOw
	1vm3Gc1IL+8r81DY9ve9srdcLQdgwqw==
X-Received: by 2002:a05:6a00:4b16:b0:748:f854:b76b with SMTP id d2e1a72fcca58-7702fc0b4b9mr1451086b3a.3.1755845362717;
        Thu, 21 Aug 2025 23:49:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGw2XinJYhFdfeOr2DKaBI1LxvJNvXAx1nbOyA+a6mHNvNi1D2KrOEAJ42/+JTdElCmxHO/Qw==
X-Received: by 2002:a05:6a00:4b16:b0:748:f854:b76b with SMTP id d2e1a72fcca58-7702fc0b4b9mr1451069b3a.3.1755845362261;
        Thu, 21 Aug 2025 23:49:22 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d10fdd6sm10099827b3a.29.2025.08.21.23.49.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 23:49:21 -0700 (PDT)
Message-ID: <d21c4c74-a36b-4f01-9c22-44bcec3c20eb@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:49:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/14] phy: qcom: qmp-usbc: Add USBC PHY type enum
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-4-a43bd25ec39c@oss.qualcomm.com>
 <cueyo7huj2m2yt46sjk3atfktft6y5slhhtslwmi44r7h7lxbn@5zvwxtdmk34t>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <cueyo7huj2m2yt46sjk3atfktft6y5slhhtslwmi44r7h7lxbn@5zvwxtdmk34t>
X-Proofpoint-ORIG-GUID: LlnB0YgtFP88OpglyTZVfVazbF6lulT0
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a812f3 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=LJgbN-Jd--P93uwsTkIA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: LlnB0YgtFP88OpglyTZVfVazbF6lulT0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX/aXqy+gaLc7w
 krYX+Qu/rZ6tQDo9uqwDSJOa7ZGHnEf9zwztb1iUEjNwnSaAMFJ86XPJtxSpMpqime9ReL65t8N
 jIBvucbZU3pFw7FsAC+2UBW214C3BjR+Wxx0jI2krC+D3HlEDqVINKsuZ4tsA1RMo/dsbfKT+Eg
 R9dK9Z6koA6qOuX4aX8PAytaQc/b1dZWMVmomnl833fExWF8CdL2TkNA5gSgQthV1JzGGHwgVf9
 XCjq/Tq3Vt5e/LtIST0B/tv2PuYkEZQb8/GjPDNiF0wfSz2em8kkZIeaPJvqLaqOyJA0FtOpYC3
 yoYlIXxyHyTNE+wUggkPXHXFkQrmW5NnOQUKSWoAgaYGarRrg8yyTNur/jDRkj8RYfCZATQK/qa
 dz3NEnVWJdjO0zEtg1/gy/09nIAIJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_234924_147352_E074B90E 
X-CRM114-Status: GOOD (  13.96  )
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


On 8/20/2025 7:34 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:46PM +0800, Xiangxu Yin wrote:
>> Introduce qmp_phy_usbc_type enum and a 'type' field in qmp_phy_cfg to
>> differentiate between USB-only PHYs and USB/DP switchable PHYs.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index e484caec2be20121cfe287c507b17af28fb9f211..5afe090b546977a11265bbffa7c355feb8c72dfa 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -284,6 +284,11 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
>>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
>>  };
>>  
>> +enum qmp_phy_usbc_type {
>> +	QMP_PHY_USBC_USB3_ONLY,
>> +	QMP_PHY_USBC_USB3_DP,
> Drop, you can use presense of DP offsets in order to differentiate
> between USB3 and USB3+DP.


Ok, will drop.


>> +};
>> +
>>  struct qmp_usbc_offsets {
>>  	u16 serdes;
>>  	u16 pcs;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

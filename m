Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E371CA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 12:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0dDKynkxh5A8C4seOB4BbXFNLDQ4yoGjk7Pn7D0Ep0=; b=VHDAaOB5VZnrW+
	IVOc9NRdCiyLzAvl/k8j2ZRbHubCTCicSZ9qwcz/UuMX40tNGWntsYpaeN/wtFbpP30EEO+4i+eGa
	ANTzZbeZZB/5mWfd259PGOcmz5+nBSP6LFiZzXk+5dTt5T9UIaXZp8dqP2yyZIWykoAquBpB1mpGk
	Lo2iYqtc2yeHNuGxS4FyvzLR/QPVyhdTDg66xHfeayEV6lNSkExolHtc1cQEzJg1p6N9T8Ur572MG
	7E4esOCWlkHxqBgx5A4045SyWDnLKiiQqCdQ477BORJ00GPV5N0lxBwg3oXBlYpyGcwLLysIgjGKT
	6VNv3hdQlKPipFdSxcFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2TG-000000093d7-15ia;
	Fri, 12 Sep 2025 12:01:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2TE-000000093ci-1nEk
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 12:01:41 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fPPp017614
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:01:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tR4WV22vf2t/EPkoMZ6ryeD+FVZWeK5RDIR27BMiiCM=; b=LThO0WJbd+uPPfql
	1T9rEvTNfMVif9MJ3ij5xNWCkqiPRYhUWsu++34zYOfSEnJdUDTfwdZBGx5u8VfH
	xmpwjPI4+cVMRRDpIOXYXMLZa05jPm1I1MCntLGcOMP8FcTn5SY554s4VLfwP0Np
	2rtES9jCBlUL1CAihVaHgQ+7dLHSMx3u92rkbEcbqTmzyt0mn74Uv8y4yPw9GDn5
	vLa9znZ/rkzy+eokbXzq0LrydSNBvamx3xMhXAm5cX7MZqX0LaHMnc2GCXujp43K
	1HmLkdiWKvBp8YRYurXbcUTShfrnenWbAVcBVy/FYfaGG4JAhy4qnoyKeqrLEJJz
	UHa/1g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwskpgh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 12:01:39 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24ca626351aso2851545ad.3
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 05:01:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678499; x=1758283299;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tR4WV22vf2t/EPkoMZ6ryeD+FVZWeK5RDIR27BMiiCM=;
        b=JDrWbQrsmmVwucdn76+OgMBaJLkimXdzaP6JZkhxiqoKjwBsU79zdFwiesDn8gPn/z
         0CffdZuGDpwC7t0k9pSWs3ZUv5kK8As8ODf3sVMNRbr6W5tJo9cM+ocqaL5Qx4MFY1fC
         uXybCebmhOxL+q8wDRy7RyIJirSyY9Czbo4vF3zYVCOswADBphBEOaNsX6JnLi5HL8Na
         O3ah5WdklGEUMuCoCe8XmrtPBJI7BYQ0ILaDfKDJ0ViHTvJZzs/LXpcPTTwRb231tkM2
         ER4/CcolLSutKaBfxvVfHv2lU1Owj3sMgJ1nLVXI/YyI8uFsqLGKrtpfb7SumGmyIl2S
         e8UA==
X-Forwarded-Encrypted: i=1; AJvYcCXcJGuFIbjz51U3cgPhfWBgiJX1RVFxmmkRREUiseclwhSWqrHbmR00F7st+L5p8sz/KPObjpEZhik=@lists.infradead.org
X-Gm-Message-State: AOJu0YxVJ+CpHJsWpfNXQV6aU96GuV00YTDiG1W2d56cwT2m822KQYrS
	H/WHD8u/REmpHOiBdwJk9KhiQcwZ8Ggh3PwGFZpcPT7ifhpCmN0r+2jebRCNLcvhetrcK9UI+9/
	BEFoWMGcW/znANrykLSL1fZhmFrZyRHYd9faVsT6rXpOAHTMJLAneGSQkUtjkLmJbBzII
X-Gm-Gg: ASbGncvME84KIu1tIQR6D0A/SyCvsETGXHmzKjWBcrUVQTVw47pU1957cHojt+pYM1H
	YZzlYeXf1T0hdPYQ5qBwRZJY+oTS3XL/ymic4Xxymkjag+VVpppOinRIDToIUKt7R/dDYDhduAs
	nMXN3u7cXgVREHEq3o/Jrxnaqd5r2mTF2DJC01B2ajY2HRGd8/7e57nXzEBni/dAxRfUHr2hOmN
	e7LOUeFXaL+CvodRaoiOpTuVCtOIAChHd8kOjlVKJuE3GjGpQwTSU3IipFU7ClihmFMgsIBXhOC
	X6OWy/lt5glEFLCgMrSO8os57csYih+NB5Yxz3pnvGSjQkZz2C/HTkqEHrc99csQVLIecjbyvWn
	b+OgrWmMk5LBPLnOkEK0NlLd7ysmmVQ==
X-Received: by 2002:a17:903:1ce:b0:25e:8089:5070 with SMTP id d9443c01a7336-25e80895390mr5790265ad.1.1757678498762;
        Fri, 12 Sep 2025 05:01:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRWUteHVEdJSYAR1rniB1eDfwR2hwSrNL/NbjOkI3aWK1MO0R3uv5T0gv0XZ2mKId4uJql1Q==
X-Received: by 2002:a17:903:1ce:b0:25e:8089:5070 with SMTP id d9443c01a7336-25e80895390mr5789845ad.1.1757678498117;
        Fri, 12 Sep 2025 05:01:38 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c36cc6cc5sm47586865ad.27.2025.09.12.05.01.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:01:37 -0700 (PDT)
Message-ID: <9fa9f9e4-b7fa-42fd-b367-9d52e0f1f184@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 20:01:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/13] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-10-2702bdda14ed@oss.qualcomm.com>
 <buob3axokndjfuwvv5j5zee4e66tf7t4ficz6fend5yadw4j6e@czus6n6zfor7>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <buob3axokndjfuwvv5j5zee4e66tf7t4ficz6fend5yadw4j6e@czus6n6zfor7>
X-Proofpoint-ORIG-GUID: Vv9aCOKrv0Y0ckVgI55WnFYlY-nGdGOR
X-Proofpoint-GUID: Vv9aCOKrv0Y0ckVgI55WnFYlY-nGdGOR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX4EuRFNANWjo3
 0vGUVLnwFcOA0GCUw/invGLlRbb8pl8pkaha03kTjw1E0p1V7dTBHcUcE8l0L8qiIAkERdzF2IZ
 ULDCjTed6ssKbGwyKYbzyVJSBXVP4kPQ2kttYalkTxifr18EmqFd533QkHRNgJo3/p9rondcj3p
 xD4KauQsQCkqg0kZb7A9Km7v9A8znpoAxGVunTpyXr5qBTQlmpCt+BdDDOcMCdMQFRTUjpVs980
 MrtpumbdfgEX/9HPLvV1LygO+nRdlDh94xNRGLU+aoKpCDj1DGttCvHuXspDUICIxX9TwTTZ+k8
 /nwQVDYD7qOv1SmlcibhFRYtRZT8y0kLkXLGetrrrLKOQZP4RxkeIrStCRMufqre1VKwvcO+8St
 0vDmdYpH
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c40ba3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ctQwHQabY_GzZcauxAMA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_050140_478067_6E601DF2 
X-CRM114-Status: GOOD (  18.93  )
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


On 9/12/2025 6:31 PM, Dmitry Baryshkov wrote:
> On Thu, Sep 11, 2025 at 10:55:07PM +0800, Xiangxu Yin wrote:
>> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
>> switchable PHYs.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 192 ++++++++++++++++++++++++++++++-
>>  1 file changed, 191 insertions(+), 1 deletion(-)
>>
>> @@ -1669,6 +1832,23 @@ static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
>>  	return 0;
>>  }
>>  
>> +static struct phy *qmp_usbc_phy_xlate(struct device *dev, const struct of_phandle_args *args)
>> +{
>> +	struct qmp_usbc *qmp = dev_get_drvdata(dev);
>> +
>> +	if (args->args_count == 0)
>> +		return qmp->usb_phy;
>> +
>> +	switch (args->args[0]) {
>> +	case QMP_USB43DP_USB3_PHY:
>> +		return qmp->usb_phy;
>> +	case QMP_USB43DP_DP_PHY:
>> +		return qmp->dp_phy;
> return qmp->dp_phy ?: ERR_PTR(-ENODEV);
>
> We are not expected to return NULL here (and dp_phy can be NULL).


Ack. will update.


>> +	}
>> +
>> +	return ERR_PTR(-EINVAL);
>> +}
>> +
>>  static int qmp_usbc_probe(struct platform_device *pdev)
>>  {
>>  	struct device *dev = &pdev->dev;
>> @@ -1743,9 +1923,19 @@ static int qmp_usbc_probe(struct platform_device *pdev)
>>  
>>  	phy_set_drvdata(qmp->usb_phy, qmp);
>>  
>> +	if (qmp->dp_serdes != 0) {
>> +		qmp->dp_phy = devm_phy_create(dev, np, &qmp_usbc_dp_phy_ops);
>> +		if (IS_ERR(qmp->dp_phy)) {
>> +			ret = PTR_ERR(qmp->dp_phy);
>> +			dev_err(dev, "failed to create PHY: %d\n", ret);
>> +			goto err_node_put;
>> +		}
>> +		phy_set_drvdata(qmp->dp_phy, qmp);
>> +	}
>> +
>>  	of_node_put(np);
>>  
>> -	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>> +	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
>>  
>>  	return PTR_ERR_OR_ZERO(phy_provider);
>>  
>>
>> -- 
>> 2.34.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

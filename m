Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1346C7115B
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jun 2025 04:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNKJd+RZDrAhVs3iSgAj9dPV9PIegSeKPHDFgP8DjLY=; b=SW2UxeygulpN6o
	OVy/3fHtiNqBwr0An0AA00OSSFBz4omFGpyXpxreA4CGYr0aVxQJy3N4gwuc6XIjtv/q7MmYCGfQ5
	lOWgaBnHaxhE00XyfV9lZWZ4wIle+P574ffFnjBFIEY09sTSfIqypVi2bxCETQjrK3QKLLWYXOz+H
	3jccJhgpIindqyPnaKt6vQICo6a2Xg6v/VjVYkchs0vZt4udVpVxcFkGlgH3WCR0B8MgQtJPU0HZ3
	esvwjw/nHewpqUhS+Nyi1dPSaB3IsN/Y8I/Hg7sVmQ+BioFfDmALJs1cDkR/ssPGSxqRKEABUBT/a
	cv/G7s5Ly1A1AlhtJgyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUdzp-0000000AZwM-26ay;
	Thu, 26 Jun 2025 04:13:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUdzm-0000000AZvw-3vPZ
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 04:13:56 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q0ELHp015250
	for <linux-phy@lists.infradead.org>; Thu, 26 Jun 2025 04:13:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WKpaUH3ipuBOWo6fi6C40F5MzgfHqDpT6bHI2/67zCs=; b=mooySDSQemqTTQSX
	OHqw4k6q4ncS3vGS9VS+KyIvwPj5zPkoH2/eK6NZrZWUTqnE6UKqxC28lciQwMVI
	dJADaOJfhkvIRO8IDa1LLIR0iFqLG9Ds7NHH/zvma8D+9IeATUmnw5dIVV2oNeRF
	6wKOTTHkIB6+bPWWRxwfJKPfMc7ScfvO+KwPYnVcv+QxWKxRq0uW0yg7T1i0xenp
	StAg27dSCOpSdQHFOo/9RT5B6YzMA4WUrLt+CTKgyJU6mIl4CrN2f41qG8xeLJMA
	noVN2PiC7yi27fE1PR6n0aBhtLobes27hXV/9mcEsqB8PeWzSB7tqx0xDI+OqWbL
	ipRAuw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm20gff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Jun 2025 04:13:53 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b00e4358a34so350882a12.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 21:13:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750911232; x=1751516032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WKpaUH3ipuBOWo6fi6C40F5MzgfHqDpT6bHI2/67zCs=;
        b=o1usZcG3uZ6MH7MepQDmcDpm+Gjd/9CS9DTYH4y/Br7xwgDchCddhkaGAythu5kLpF
         AwwTXkZNh2UemS/zjmeSm/7pwXPOo+tgkDseUmpmRUUP5O+X9PzB7fqZvNrtoBHQ2y3X
         temPGXSM1dthZukcUxEe9pir3b/fCEnEF96PA6YliezHuY8zmJ7Yb3qMKUJ9M+k0xMTW
         2bW5yIYGkOFzhi/oBl+/jIqdUsgZr3IWOcCOqozxLJEPw7qGV19WphKEjGFBx2X6qy2A
         Y4zNPhHsPEvcbFIz3N56Y1izvKZqkdfAc8tXV8I4pmsi5tFR3kri+MSySUe+X4yq+dcO
         DTpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhlKKGPTtE6pb4AF6zDUdXULpUyNciN3tjgAa7Tpxfhd6MjeRvYWXnFqqI46rmu7EcTLGgA/x9GBc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1JyBqBpcH9dWmiPmoE8wQ5wPHQ6vfzjM3f3n7p9EIfgiGRZlL
	ndtGZmE8pd0KjV0N3BCkbPg1mNmcN6625RBy4GkprQ1aD143iNp99qYqcVd3jZoT6+ik6WznVHN
	7smwSTMxagW49qyDafaBWOt3mj0F0xuUZfqwLBjghieMafaw+I7mO8ykmKjq+OBpGvko3ILB36F
	To
X-Gm-Gg: ASbGncv3eIXEe//hNfSoW5RXDPbS5P8D7+Y8oA9/mddmcYDcExhVL82ymRv4fSalO+B
	VQznionhO1iFtxQ1R2dbt4oRI5VsljjRLCfhypzhq7+MvsYErVgcZM1RXf2OA7Eivi1Ry1PjaGU
	ddW9zNv16BeOa6yvX3Ranyba18ld2lueAyEfqCc20+vzs6QKE0gq0o58IEm78MgbJajFHZ/v9We
	ayXJDBCmfPdG0KhcKjz9VHCyVNooAgHUth0VSn4G6ak6nrf9VnfXVnY8hpjnXSrUYWeLXRfhIGM
	hQHtS9CNANRBZyLxouLDlNZ2OBcN/UO50ehdGCPZ6zCc2aOBgFkOAj/y9kVIwlU=
X-Received: by 2002:a17:902:e80c:b0:234:cc7c:d2e8 with SMTP id d9443c01a7336-23824062835mr82016875ad.37.1750911232003;
        Wed, 25 Jun 2025 21:13:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXPk6FeEEtqsAdoxjcE2zNg/rqvl84KjzqDPyy3NBWA71HBoKOuG1wxIQkEElpXh0w3mnQlQ==
X-Received: by 2002:a17:902:e80c:b0:234:cc7c:d2e8 with SMTP id d9443c01a7336-23824062835mr82016515ad.37.1750911231447;
        Wed, 25 Jun 2025 21:13:51 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d866b000sm146530625ad.162.2025.06.25.21.13.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 21:13:50 -0700 (PDT)
Message-ID: <eb1a43a4-bc10-410c-a747-e2efd1c46aa7@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 09:43:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: phy-qcom-m31: Update IPQ5332 M31 USB phy
 initialization sequence
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@kernel.org
References: <20250625-ipq5332_hsphy_complaince-v1-1-06b4b8e66bc6@oss.qualcomm.com>
 <dad809f1-9fed-47f5-9aea-34369a9b3608@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <dad809f1-9fed-47f5-9aea-34369a9b3608@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685cc901 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=G7AlkcFLQFj19gR95hsA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: e0apF5li_uR_WTC5LhEjdIR4_ZH3lSg3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDAzMCBTYWx0ZWRfXzkwcnu3Hc7Ta
 qCfFNES1tIMeDq0zXQqE/YMBtZAbZhV1FqUpIAcxPH9Uyuqk1VcfgjpWFkbomGPJWHsmHbZ05Ae
 6gga8JzkLLozcYaAnbFNE6t9v3fm8KISkEPfx7+ENrA3yEZZYa190aA9kcCkCcTLP9mzignQf9G
 cmFDuZindtZao1BSl4tRfGUpPUp7HmtTQPO8z53dC8bcdSMx/iYP6GPYdREmZBd5T8Tjed5PjaT
 pkZ5TEjPcuurEVElSzoBWkmhdXZdY11yJkMHkdhvObA48prYUPV9KGxwUYCwrC4FxDrdugFZa9j
 2BJk6RNXMSSxo6uRGP6EmVvc1+ym2kxTexqi+wAXv/4kZc+jrqnOdl7CUd5PHZcnOi0/a880Xof
 bZnnYD1XaEC3UZ3FET4+vI4HmW6MGRjRJoIQmxIKpfv5Mc/s99Pei1K+KYfapLjteLaMpRME
X-Proofpoint-ORIG-GUID: e0apF5li_uR_WTC5LhEjdIR4_ZH3lSg3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_02,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_211355_097497_66B9A198 
X-CRM114-Status: GOOD (  15.72  )
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


On 6/25/2025 7:28 PM, Konrad Dybcio wrote:
> On 6/25/25 9:00 AM, Kathiravan Thirumoorthy wrote:
>> The current configuration used for the IPQ5332 M31 USB PHY fails the
>> Near End High Speed Signal Quality compliance test. To resolve this,
>> update the initialization sequence as specified in the Hardware Design
>> Document.
>>
>> Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
>> Cc: stable@kernel.org
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-m31.c | 14 ++++++++++----
>>   1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
>> index 7caeea1b109e922c0cd12e985bc8868d5bce8b4f..1a8a0f1262cd95bc00dfbf7397a1c48d88d52327 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-m31.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
>> @@ -58,12 +58,14 @@
>>    #define USB2_0_TX_ENABLE		BIT(2)
>>   
>>   #define USB2PHY_USB_PHY_M31_XCFGI_4	0xc8
>> - #define HSTX_SLEW_RATE_565PS		GENMASK(1, 0)
>> + #define HSTX_SLEW_RATE_400PS		GENMASK(2, 0)
>>    #define PLL_CHARGING_PUMP_CURRENT_35UA	GENMASK(4, 3)
>>    #define ODT_VALUE_38_02_OHM		GENMASK(7, 6)
>>   
>> +#define USB2PHY_USB_PHY_M31_XCFGI_9	0xDC
> lowercase hex, please
>
> also, please add it below XCFGI_5, so that it's sorted
> both by name and by address

Ack. Will address this in V2.

>
> FWIW I can't find anything that would back up these changes, but
> I trust what you're saying is true

Thank You!. These changes are tested and confirmed by the relevant 
folks. I will try to find the doc and share it offline for reference.

>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

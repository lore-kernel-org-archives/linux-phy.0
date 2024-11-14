Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23D09D68B00
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 12:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7edXFOmUUM8XDEGk3M8HVMPyFXSDCAriy0h6GtAEeo=; b=QmeQgUy6A6u026
	77ZlNQqVBXjRJdmViQ15iLN2YNilG0ePOnUbeLDmIzXwWZBt6pzky4rHU86VotJwIovti5Z/D7WeK
	dJTeAsJK3tPhchFjr0+LtWKcD/DTVf8GkAkdKtlAuAxe66RgPlDzMaMltssoTiarryxbbMqmfGQ/2
	3qBaz9x6IlVQPzN4Nf9dqnqX/F2IfEsOm7I5+pf1D1pNUMzaJpZfq9op+N3lXt4ibGaEldSMBh1BQ
	xBieCHQgU/mSLlXrsew5I5m8fr7OjQUr2nmTQGhUum8o51tSO8RATZPVBK4Zpxu3uumiXRypUU2mA
	iGDEfIq7foDfX2uAQjLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZGJ-00000009x2K-0mGZ;
	Thu, 14 Nov 2024 12:47:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZGG-00000009x1H-1KRk
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 12:47:49 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AE6JAdL001025
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 12:47:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TirkE3p4MW042XA9VvghCJxqECC+Uiw5LWNZTmDaOsw=; b=geSCMfngvs5+4/9Z
	5nLUGeut9W9AmVnQA8ac3nFsFJdZVelclqF+2DLmuOjlfo8AF2ZcIQSZKwm5XDcw
	DiLoyz56XfsGzNCe30SDAYx/cnF24SzlN8FSy8QTcjWVi+D+90+SZCMs4kxrOQKJ
	gN/Mn5PkOSdXPSh3TbAJ/DYXF9RqvtMh1mgoTUrKAe6PzZPExTwCgArFm8rvSowd
	wSpXbMcJPcePuWQamp3hwzEhI9yafSbxRBxDnzREyWgslfVAOEQDPnkwHlGl+tCm
	WW6fpPBoijit6+GGssj8ua/ruJTpJIbiKUNUxz1NmoYiFl3uFx330xZbiUALkT6R
	2j+TWw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42vqbm5e10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 12:47:45 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbe6e6bcf2so1297306d6.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 04:47:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731588465; x=1732193265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TirkE3p4MW042XA9VvghCJxqECC+Uiw5LWNZTmDaOsw=;
        b=C9P0PbZqnfHNdEr9RnDoilpZqVuJl43C2E8VDT5zlaU+1zezJNPLyQ2kpwL/bRBLo2
         AnNrKptj2bHVlQnrYMizWQZr1tYzvHaCQA5pqyqx5IL1erA/9+QGLmOEFhCLeF3YMEtV
         h0bMk6WhmW9XX6wsyd5YpdcU/+uVjtvja/cA5U21sgjHxt9JYsAsckF0mRg398clInmg
         OuNxB53AeZYhvnc9bmW95RXI09RY8sgtIu6jLWKqyC1mhILphtd+oecLOUBhPOj+LuC9
         +qOl8LeF8yQsQR1zq9wbwZ0D1Q17kzRTCQVP5AiH+/o5XflwKjFNCzwyOwzVBciobWn6
         3EZw==
X-Forwarded-Encrypted: i=1; AJvYcCVGw2YNjet08t5EqH1T7N4rNf5r5/fPV3A7MWPgy92zW7sWrwLkmTa7L/K8N5B9YXuimQY/HNP1VFU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3LqCSG0skJjUv3mxFURQD/ZFZl6PTLIYH27u62afL07BtWPoO
	+H9XQYohDMMisT/AOvB2EOlzADVQmrha3QNk48XLQTPOpHS3MZXBUI+LtBMR7rB0q6wAI2/pRRO
	vv9rmlLvqtl0Ms36O5hdXXZDXEONXh0UbmyiWYYlUL1gTabJJTdR2oShHZgdECLWh
X-Received: by 2002:a05:622a:281:b0:461:5f08:e680 with SMTP id d75a77b69052e-463094018a8mr152959331cf.10.1731588464755;
        Thu, 14 Nov 2024 04:47:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsxDffnRImxMQgqIQ8TXOem5agf/yFgovxPS825RyYZPFwUerfkyI2ebwr6OsoRlLLmIc1hg==
X-Received: by 2002:a05:622a:281:b0:461:5f08:e680 with SMTP id d75a77b69052e-463094018a8mr152959011cf.10.1731588464407;
        Thu, 14 Nov 2024 04:47:44 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e046c68sm59057466b.167.2024.11.14.04.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 04:47:43 -0800 (PST)
Message-ID: <7e293d68-73c1-425d-ae52-e0893c8e0a61@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 13:47:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] phy: qcom: qmp: Enable IPQ5424 support
To: Varadarajan Narayanan <quic_varada@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, gregkh@linuxfoundation.org, andersson@kernel.org,
        konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
        mantas@8devices.com, quic_kbajaj@quicinc.com,
        quic_kriskura@quicinc.com, quic_rohiagar@quicinc.com,
        abel.vesa@linaro.org, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20241114074722.4085319-1-quic_varada@quicinc.com>
 <20241114074722.4085319-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241114074722.4085319-5-quic_varada@quicinc.com>
X-Proofpoint-ORIG-GUID: vl2iArSQXExCAT_5QZC-9YRBWsdBAzb_
X-Proofpoint-GUID: vl2iArSQXExCAT_5QZC-9YRBWsdBAzb_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=999
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411140100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_044748_516989_EEDB8254 
X-CRM114-Status: GOOD (  16.83  )
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

On 14.11.2024 8:47 AM, Varadarajan Narayanan wrote:
> Enable QMP USB3 phy support for IPQ5424 SoC.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Add 'Reviewed-by: Dmitry Baryshkov'
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index acd6075bf6d9..f43823539a3b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -2298,6 +2298,9 @@ static int qmp_usb_probe(struct platform_device *pdev)
>  
>  static const struct of_device_id qmp_usb_of_match_table[] = {
>  	{
> +		.compatible = "qcom,ipq5424-qmp-usb3-phy",
> +		.data = &ipq9574_usb3phy_cfg,
> +	}, {

If the software interface is the same, can this just use ipq9574 as a
fallback compatible?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

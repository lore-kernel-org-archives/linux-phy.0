Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D63DCAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7aEKTfmCCJfTn8E2uEh4seGSChIq5j/1a4wq0v/4iU=; b=Q4oE5UkiGe4qRE
	VKdJcixaERQ1e4BN5t1YV2yaFGA5p9KDbnknap2h7YIa7/KXkyl7cmvii03MrwWPH1cwi+o+0XlQ/
	SYOn8ddq/hAlyWb978/b+bcmWUVF6jgDPnSzhjyZ+5K6/DK1ZUBdPtnf6QHBxPATn+n6XQ8oVq5Aq
	L52pig0IccOYmhbHMd8UC1jGT4fkCLK+AhBWRXQWqonKKNoNALmsmvjEhjxksR82ClkVzxhf16Sa/
	tf5hTTP3daIz8v4hNBs/iFuuHmoP32og7llLpl/8adG5qjYq86HlBIG6hL6ROU+6fObzln0v/xTOS
	7ZvaETSFunhtWCeOf+UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bTP-00000005Gns-1i8A;
	Thu, 25 Sep 2025 02:12:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bTN-00000005GnL-1ObS
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:12:42 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1K3iF002255
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:12:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4dvJBurB7j+89LzioRchQekzW/gf61CfAG+LrJTxbWM=; b=A260furQ//RTeU/h
	v8SqIn1rVVavyCKExglW5kYv4mdf1as1Exv4GtJtLtIbIiAUapyT/zdVHcaxXeVo
	dE+5p5Xs+3IuLeXwGD4PQbr+87E1pTczeSnPkADQYMfsS2ECA+YueP7HBuZ+mPW0
	XzL815TgsHheIEagR5MCBZIQ9PqEIzK1zl+N53/WH8cedUpjhr8hvVdYwNFgrRbS
	OUSpJRDjLM93XbsHrM3mQ5AJF9uKHwibuTl+fssKmKe/Jii7jvxRbFYvfLD0fhsl
	5YcDPnyYF221zvpjUYPm5UTFd5SwiHA78jKyxlrwlekeJYJUsv2Otj7MrJKtbENf
	0ofbXg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98pdgk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:12:40 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33428befc08so867396a91.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:12:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758766359; x=1759371159;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4dvJBurB7j+89LzioRchQekzW/gf61CfAG+LrJTxbWM=;
        b=J6aVPcWBCmzFyhaBZkwoltpzbg+ZWE9FWARoIJt0OyX9B+5H+OhR3rXKdTY9xZ/T4Z
         1ciCP6uk1sAWVvCzCIl7C3Jh457+E873KSvDMziCDrSM+Tl0RJ1p+03X3R06SDfIExJo
         0wCwyam4g5Qr8khZScmprsXtssXamHtVNC2/KlGzWY14lz8WZTeoj6HY5qcqoid3jLAZ
         LIlGpu+SLifXVQx1Al147JbSTrXmfv25w0Oldwil3MXFEsunftYFzsOdgoqDuDV/OsVl
         iCwDhT1jtC1MjuRF4p357pHbzro6o0TmshPy/QoSA6WcuTH6lW9Kahi+mSHD+XRfWen/
         Alyg==
X-Forwarded-Encrypted: i=1; AJvYcCUUMB8InDtb3fgnpzuoymjKNspoF5ZZZqCdtG0BBDSROKP+IO0pWBQ7OtbWUu0IqoJLGxkW04UFO9M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEbrqy1OtqirSOhdvEm4jRi2fjbIX5hBSluWbYE1zcA0R+yKwB
	TLN8HlD3mhpsZ5KiQ9hMTB7rrcym1XnFceWlWpr5m+rkTwyg8Z58IA8GyZqimELm6biAVZ5UbVg
	U+1aiX/iGoiyMn55W7wWX4o9b/PYJXfVnA6o1IOG21NBl6gsYX54V4ugGyBTBC+/o0py1
X-Gm-Gg: ASbGncsxsSw7CZ0YedphSUOwrlBsP3HXCxAJF/8eHcwgONES+LxK2bWTp2GMnb2ijK1
	xob1O1uxMPKP+7+u55UiWOYt02xHhaDsK7KpyMRfyBnc9pXa7YBSF8TiFiLZqLSDPoW2d/OlckI
	FfngNacQRnr7Qm2SMqBHNk9wri+67eBvIoEOdF/Xf0bU4TCyluAgqpG9pvnye6YPWN10bfA1VRf
	fg6NKGVwNhXL6necRpWmcIpS66r4WQr6S9yP9hqnxUGj5kfkQVThi/n+zdSgXcJC7o3uDNeI7M7
	YoHISuiojpPwGu/0z2AlClGIakA/D+VXM2IVFmoU232LyXABrD/bRay4zdatUWO8aRULPsG1DYs
	XK2RBsQ==
X-Received: by 2002:a17:90a:e7cf:b0:32e:a5ae:d00 with SMTP id 98e67ed59e1d1-3342a233d5emr1613482a91.13.1758766359068;
        Wed, 24 Sep 2025 19:12:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiFq+Ax3tsuBm535fFypfYZDBvGHuhaPdv6ObItfXPUghRoREWtNMMZHvHofw+cdFQORJn6g==
X-Received: by 2002:a17:90a:e7cf:b0:32e:a5ae:d00 with SMTP id 98e67ed59e1d1-3342a233d5emr1613455a91.13.1758766358594;
        Wed, 24 Sep 2025 19:12:38 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c8f85f48sm252450a12.16.2025.09.24.19.12.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 19:12:38 -0700 (PDT)
Message-ID: <efa5ed28-674c-6a30-eff3-eadc650ed6ea@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 19:12:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-3-wesley.cheng@oss.qualcomm.com>
 <5mwqf4djs2jee4x6edplwmd5ugucoi4wazrzjoiw2p5ndiv6h2@6xqnnavp2a4i>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <5mwqf4djs2jee4x6edplwmd5ugucoi4wazrzjoiw2p5ndiv6h2@6xqnnavp2a4i>
X-Proofpoint-GUID: otigxrOU5-wkgSOghQSyic9Q04VoDtRO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX+T26dq3rfrLz
 LOLLxohCSZc1o3CYyFuXvVXv78dGA8Bfu1cVtwg8LepVltc/vmDc/tOeUXxAbPl861yUi7FZgLT
 nv3N13l1hcD6jQgh2hTxx1HiVrwt7+bhqzxGFWM/t+i/loMBhFIjYHwXqcYOixjIH5mv8vD+nYB
 wJA5RgQBMpZL0tAq1LR6B5P3CkEU1Py9+WjUgUg4UPYdexJ8SRj+FKssKppVz68sIWLknn6jy0U
 R0ZIW5ANlnJ/h4iXpEJAZOoXCnTTRyH8bWMJGWvzICijt5S9yaALigng/oepJdU3JHLp5b/9f/E
 /cu6clbrTPObWnRLG18Ckg92tyXApxrXhry2MAYQjG8bMDZ7kT9R6UCsI6Rj/3o0RT01ZN+jFkP
 CigOPlgu
X-Proofpoint-ORIG-GUID: otigxrOU5-wkgSOghQSyic9Q04VoDtRO
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d4a518 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=mLeorRv-Xii_F4RM4uAA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_191241_497438_1E176A56 
X-CRM114-Status: GOOD (  14.71  )
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



On 9/24/2025 6:12 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:52:20PM -0700, Wesley Cheng wrote:
>> The Glymur USB subsystem contains a multiport controller, which utilizes
>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
>>   1 file changed, 35 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> index a1b55168e050..b0ce803d2b49 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> @@ -16,6 +16,7 @@ description:
>>   properties:
>>     compatible:
>>       enum:
>> +      - qcom,glymur-qmp-usb3-uni-phy
>>         - qcom,ipq5424-qmp-usb3-phy
>>         - qcom,ipq6018-qmp-usb3-phy
>>         - qcom,ipq8074-qmp-usb3-phy
>> @@ -62,6 +63,8 @@ properties:
>>   
>>     vdda-pll-supply: true
>>   
>> +  refgen-supply: true
> 
> Which device is going to provide this supply?
> 

This is just a pmic regulator.

Thanks
Wesley Cheng

>> +
>>     "#clock-cells":
>>       const: 0
>>   
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

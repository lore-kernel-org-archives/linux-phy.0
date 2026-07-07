Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A12C43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCMJWHpQJs9jfTRvT6VcMtUeoVa/PwlLF68U5bpIk5A=; b=OPSccIlGBg2wQL
	tQLsMtgfoljlCCK7i4lcTKDwfj8cXaL5agTcvBip0MePQlSVXdxOPX7U3puOoyQNWjtSMKP4Sfyt2
	A4uHbGfk8f2+0CFcAWtWQ4evHfBLtoVYMViwS9J5EeOpLLZSWXrcLGT0fdydxKZkc3IT6+G4GKJpc
	gr7DModrjtvRbyFUCQFUPFvBzgabozYy0OzHxWZCO1rDPnlibmzb7Ao6u+USVh1+9DqZ1IHbjqZbu
	dV8PYTLaXuwIzCq2I/Vnn/zw/gM1oXZIFk+IcazsBkfeuH+2DuHkVYgQ2O3W9P48O8kT90jizMGMz
	LHTV9a6J5c7s3vAyz45Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyK2-0000000E7re-2Px1;
	Tue, 07 Jul 2026 05:26:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyK0-0000000E7rC-121M
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:26:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66749JV12658368
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:26:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bjSimyuCuoTARy8j7fWODIz6FAefwaPOvzjZM+C/y7w=; b=G7G/OMB3L1aCJ2Zc
	Vz0oJOUHdL6jBM4/RnhTo/xIh4i8cBshI+tCi8b3NOVuWAwiK+Fs8Ifhu4CYn2Ii
	vHAVg71HmTgx6QBuPvlj8W5zpHDx2JiV+S51cNMI0LRpoJPWn1+NF9ItNwj4+Uyl
	HT8mrsCB1xOvLD/jZ1ofSEiUU3ckMnz5lurARS11UDI4Sd1l1ASrRIoBPbp2eq9w
	5jQ1jLW0ep7xQDiREzXCoKrWV1RLt3d56D0OkyW+vE538tNHBvADjTmjW6efMopU
	o8Zrl0OC9p4KsQ4gsUbCuOBSKcTAnBGx+M3vI3v9orocYQezEdtzH/febBRj0ub9
	qyofzQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8a3r46ps-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:26:15 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-37e24235ce1so5730593a91.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783401974; x=1784006774; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bjSimyuCuoTARy8j7fWODIz6FAefwaPOvzjZM+C/y7w=;
        b=bV+h8crSmYQS+hDhK6fjq6O5n4RF2wwSdQXk8oI0Ab/lJfTxIs/VwPSxzTLN2oNRVE
         JAE7fj5c6t1tbA9/hcUF8osekdDSBboShZJyM/B6pqcG2jxDOrjLtrNoEWEG7suY113i
         nK09VeLh2IzzKvX/3GAKjfM4WWaI+1Oors08BNfYGVQ/rX2S/1Dz78NvUsE4Y0lNF+3C
         6ulJkbRkfxP4K9PB1WLOgKF1iU1XyBqF2ac1yiJcxZGb0x5F7Uf65xps7AubsaraHBmc
         Uw9hO+U76VQ/I21cY1UB7sxnrQbwJ8S3ykw5NYUjtc0AKA65IOSxZnvw8kDms0+mndOH
         6xvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783401974; x=1784006774;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bjSimyuCuoTARy8j7fWODIz6FAefwaPOvzjZM+C/y7w=;
        b=DLLyCRAltk0j33mz951wRoL+mAUA03SZSE/LhBdFuDwN9qdpWhRk7PPOHfn0gsps5t
         doppDjGjLbli3uxrgqpHNpWGq7MtEntnUXdwF4yo88pF9hFtyLQxW8r/ic8EB3IHkdgR
         TbrBp6gB1/bDV7weU6SrWE1GqZOCFlmij5BEHSDB0Muek+8M8qJC6lu5+GDhqhaprgs5
         ULvcecblrc1DseaVaFbjhpPTzBHSZYTuUXiL778l9gpXkxn6cWRH/pCKjBmMQPyPmSJw
         woNHADkI3wbg4oFtBqXX3gxgMImlrrF3z/FtXCBPd/olHcgNl3jY/RybW3gAc3czYaUR
         BFbg==
X-Forwarded-Encrypted: i=1; AHgh+RpL00xVKJ301pgz/ECL6EPXgMLTrm8vyzrAV1Rbq2/qLZ6X0JZmGDWfiiY5CyFw8Do5Jof77RXzivc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZYeBBVoI54dTew6TR+SNd5ZNw9e98TrApKRJihJ/y8M7G/+JT
	EFA+at1tn0oZ2gfVJSQcLCwv/oTzaL9+qYoU4q1bX4vdOP7h2GVkg3sxW9fXtoG+9TK+aEVsPnw
	/m85Qn8HlGnsKSbBVeRrFluiELXBfbDd7x+k6s6kBUynUwdDbwHF2Zw7lOKpadggZYrTPAyHFy9
	gb
X-Gm-Gg: AfdE7cmwS1clPUv/90uijbT8gJZEjWTY8VIjbbRddQcbfsqMdXqMovPIgMbgQumpyU6
	oFH2ATz7ttyGQTDQdtkvtK24aQs4lScbZnZYdJ4xFTqCgfzJNn4irpHc1ichYclYsd32l6QbCQC
	FesUxpVFrukWAHliQNc3IyKMih3ZT4vgKLmxFCCNiJDdHL7fXWmLC7qGYQY6kdeeJaQIf+fqOk5
	SlRv/KNLd2z1Al+cfJwOwPIzqiwzPZLTB4KFoyX3YXNZPJOkJpSwq3USH70tc9J05EVMh5dkpql
	VPiTS9ljXANFV3smYbzwNFGpwAcBZpMYRnvSS5/dGEWtaQJcjezGKt6inkfzsFY8Xik5/avINhT
	R5cuPw4lDvuUvRwcXPHz5iDY5HeviNBxB1n3PuAeE5JEYeQVdW9uGMoBCGhPh4NK+p01tzmM7U0
	mxzjee
X-Received: by 2002:a17:90b:5886:b0:36d:b9c5:e8f6 with SMTP id 98e67ed59e1d1-38758938d3bmr3634637a91.19.1783401974131;
        Mon, 06 Jul 2026 22:26:14 -0700 (PDT)
X-Received: by 2002:a17:90b:5886:b0:36d:b9c5:e8f6 with SMTP id 98e67ed59e1d1-38758938d3bmr3634604a91.19.1783401973687;
        Mon, 06 Jul 2026 22:26:13 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-387d15f13f1sm429574a91.6.2026.07.06.22.26.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:26:13 -0700 (PDT)
Message-ID: <f0221345-e741-49b8-af7f-e0d7f8c973a4@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 10:56:05 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] dt-bindings: PCI: Add bindings for endpoint gpios
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com>
 <59c96d6e-95f4-4b03-b1a7-21e7cf6ce43d@kernel.org>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <59c96d6e-95f4-4b03-b1a7-21e7cf6ce43d@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA0OCBTYWx0ZWRfX5ZEQabmU3NtN
 xXv2mr2Om2ug/H5W9xWpOhOcsFKxgbz1UBTEO3k7lqi/q2QJTJxvZCin1lLtDQVPlRjcA0lgGnE
 fk96OdQuIiO8IWII4jh3FMy6Dz+m7xeJ7UO94XumjmgukZZbb3DwhohwkGEvSi1rP5rwm7nEJNw
 GCWMFLshQ2BZ/hdYniP2A/uDLEhaoPcKOap+EsxkNuy26FA84m+O/YgrfPT3XawEJmpuBVeqBIw
 SqBpsfGz7pLQ+u+jg8jCDk3uJ3UfIJb4G+qL4znbOALFAdy/1hg1bJ6RvDC8dT2lEW8SzDIuMkB
 yGD5YmHJCUGkiedfROkoeAKNxBCVPUiPuj+q3s0ioidW11vwuvhhG051ilfXUH3rwZnWVZPLowu
 xEtzUX/+8InRDRUN/P7+89wMRa7Sj4A9i5WR/f93oeVsI7jJpow4YJtJLeH3/UbWSbrDWtirzFu
 N2cem2fOcCxqj67sGyA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA0OCBTYWx0ZWRfX9yACLUyjk2tP
 s8yS8BN5+f5o//QdYTSGf5Dz9tjDWwt4FFnefApYici9Z7kq4tFqsjZAJR5AR4aGo878Prn+gsD
 6t1BaQlJNkvo1FYuBMju1Rg5alQ13hM=
X-Proofpoint-GUID: KN-CnMbAXoUhXM69KaG3OTTASXbfNK0d
X-Proofpoint-ORIG-GUID: KN-CnMbAXoUhXM69KaG3OTTASXbfNK0d
X-Authority-Analysis: v=2.4 cv=OKcXGyaB c=1 sm=1 tr=0 ts=6a4c8df7 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=hW1Q8sUlsHAnT7hvDLMA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_222616_427608_C519C556 
X-CRM114-Status: GOOD (  11.08  )
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


On 7/1/2026 11:57 AM, Krzysztof Kozlowski wrote:
> On 30/06/2026 21:02, Sushrut Shree Trivedi wrote:
>>         toshiba,tx-amplitude-microvolt:
>>           description:
>>             Change Tx Margin setting for low power consumption.
>> @@ -104,7 +120,7 @@ examples:
>>           #address-cells = <3>;
>>           #size-cells = <2>;
>>   
>> -        pcie@0 {
>> +      tc9563: pcie@0 {
> And you change indentation because?
>
>
> Just like the other patch, this wasn't tested, right?
>
>
> Best regards,
> Krzysztof

That was a miss from my end, we only ran schema checks.
Will be fixed in v2.

Sushrut


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

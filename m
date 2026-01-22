Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BF78C44536
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 08:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qd9kf/FwL1p6brBzWBdzxgcjzxrKC5sKzKeq3gjf2/4=; b=K9iTqIX96BHSxv
	EuDU77LdAafrs6pAXOAovKQA3mlsLkJTyuIJsERG570DNHb/E+rmS5ZXNQCL3Vs/d5Z6/spgji+PI
	+3J1wSHdEVORy9xXmYEuXITPJq1EpBXke9wGAeaE8GktlSl8iMC722tr13f4XPIp+KmcxtC2Je7Qz
	PWOeaUQlwqxJJJOZoXv9a7GfFtoSBBmXxpeQ1ieNXZqGEc1EtDZJA2hPw9IN1VDVwSivpz/nTHlXo
	D79wqKnxAGr1GukqLzFFAJkILalHTMqmc8gVyYbymYZB9xpkHocAUBmd0OqH9VpEJ5GAD3o90cylg
	ll/hH3ZB6Ceey+LiuooQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqX8-00000006hAs-1UFI;
	Thu, 22 Jan 2026 08:59:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqX6-00000006hAX-38tR
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 08:59:17 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M82Chs2278771
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 08:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CqVbn3OLR8tmVrU+l6rvOR1TWMyoigyowuSm5THHMRg=; b=Pbz1iPxaTE4GI4Gs
	Zm+n0a7sozcGDQOj3vyYcd3jCFG4ly/VDl979dj4prFlQif7qapLfKPWqwiNAsbO
	mY3df+dGaNBZ4m7ExLvMiVwlHaalTiy7NkU6E7S1GNkXyVVKshlN3eduS/AQdmbt
	jgnXe5p3uzO/dzboV2dof/C5Bb+K7tmO7g6YoRqZEuOh5AnscSiHknZ6RxOILVpM
	dqxra9V1cnZcN+s9i54PlMNRE2HKWjQ3D1PtK7xSXi1lTP57VImSt6OHppJ4dUve
	BnyOmZLsQnMYsjyy4uNFtSd4XunIdvrziugDJ2K6SQjYsuJnhbzGk34Mpzbi7dUX
	L61spA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu7fasmn4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 08:59:16 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c613426e8dcso1004051a12.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 00:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769072355; x=1769677155; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CqVbn3OLR8tmVrU+l6rvOR1TWMyoigyowuSm5THHMRg=;
        b=PBEo/xYKDQKQg1+fOPW1d6+VJ4yC5XMl9smWx8Epmhbabni9XyzkV8hfzcv3k7wtxF
         zwbVrldRgdWuUq3cstXESUCUFVyxpoZ58U76TtocfpQ2HD8e6HvlBG/0RaoVgeSx63sU
         DmxKp02ihfkXbFNCLmyiqk1eZIO5i3R9a7dypyLvHWfdPdtnWqCpEZ6kALAy9NwNJumo
         NFPb2L81O6hbSgBr1KBYIlG0lkpbW/18mKIADD4SV/48HMhmMMRXtGo3utng49gEXiOv
         mfkiDoM2eHalHTdj/EPBQ28ezMEAz/dpHqYkm8cuA0/lBr/7nanRVFjKsfXKJAy4LU23
         NWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769072355; x=1769677155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CqVbn3OLR8tmVrU+l6rvOR1TWMyoigyowuSm5THHMRg=;
        b=g7X2hUBA04KlORuQ0FqrceOXEL1L1EgjfWcjaRiZMPmEYSq22xNQ8EpDsFCCpZZcPQ
         iwLUo5IttNrzkfojfv9CoedyrB/KEryB+W7j6+yaC9qWwfuGL8SlyqffqxaBnl8B+g7j
         fbRMIIqeFeuEDscZ8ByRwML0hiyOx+6PgT3KEyt6Cx10rzlF2JKGw1KrF9HTpUYlzGxE
         Bqp8X0IW84vGnUcEoSPh2WMl4BvH6KIM5JTy/UYUCrnn7j2sRMTHvYf5ZoAod5pNNzOZ
         fD6J960kMSsycnSk5oSs88qWctvHSBNrO4osikZ14iDqPpH6DAUzWl85hEK81enMTl87
         o4Bg==
X-Forwarded-Encrypted: i=1; AJvYcCWj7+M1f/28oi39IXNtA7dOmrcdacjm0zrs9DVI5D62I2gnv8e3jfaibQhtt6tnrI5M5NVDmK7ZA5w=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdsL6l22jlMh/hrp8JBdPayCPPYRbQP59oReiyovpH610dVPO4
	ideplTyb8k2629Rvyfidpce+zqkEVeIILag3r9D0DbH2rQDNdAHvd+fNFIpUHzMX/iQrX1ZgvAG
	bbUK22Vo90zaZWB2yNR6LS2CXtSek8iqLcvn5Kd/Ri7IxeMRnrmUg0LOTy0+r+0GAWJZL
X-Gm-Gg: AZuq6aJdcguTEJywUgp5ATrBZXdRgLuM4XVT8Xvxz4d7XTlJSEIe8HmYOAU14mfBJWU
	EnZFOjTH7zQ2K6G1tdTnNLfCpoF18Dk5i0HHuyrrX6rAVJ/lWrj2e0dOor0mXWpzu/4YTwpgf34
	YUGvWartkiEVxdG1IsS5VwPuy1iH2zch2xtp8awNewbn4JDXXmFzH8dp6CADHReGEbovxFzNHvb
	DGVYLXEEDqfpfnGiRPwO6hbgb9Hojse6VKz1yNIPNk/z4Hm3cjDyNsrB+yDmS88nCnGLGtNq3Vb
	Qniffx6UOWv/lDOGSqgPOgj2s2GB5VfJRXdgG/THin8OuMP5d2YkCpeDqg/sp4J8DXJlO6tPB84
	UD7Qm4ENNzOSMJ5VlUsAK7+yGZVSAfySvXdeuDNBAWQ==
X-Received: by 2002:a05:6a21:62c1:b0:37b:98c3:4250 with SMTP id adf61e73a8af0-38e00c2c914mr19744982637.19.1769072355162;
        Thu, 22 Jan 2026 00:59:15 -0800 (PST)
X-Received: by 2002:a05:6a21:62c1:b0:37b:98c3:4250 with SMTP id adf61e73a8af0-38e00c2c914mr19744955637.19.1769072354680;
        Thu, 22 Jan 2026 00:59:14 -0800 (PST)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf264b9csm16483068a12.15.2026.01.22.00.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 00:59:14 -0800 (PST)
Message-ID: <98e0f3a2-2191-47cb-8c7c-e80f012c83b7@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 14:29:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] PCI: qcom: enable Link retain logic for Hamoa
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-5-7e6782230f4b@oss.qualcomm.com>
 <woztsrvxwkgi34z3yop7nja6ojbxdboyzz5xpz4xlym75dtyja@iopi7hvw42v7>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <woztsrvxwkgi34z3yop7nja6ojbxdboyzz5xpz4xlym75dtyja@iopi7hvw42v7>
X-Authority-Analysis: v=2.4 cv=Hrx72kTS c=1 sm=1 tr=0 ts=6971e6e4 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=21QzX6uEHMqXofhgfOUA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA2MCBTYWx0ZWRfX3wP/H8KSjOu8
 NGtyG1/v8l+DbBxFOCyGkLk2TVeT13rvD4JQ+ys01RuksOH0q02CKkygHvLuPsu4E/MrA6iuj1R
 8BbphvMa4n/l039bC82q1JRF37TJa9g3/vH/BQFttP5xWXbol02ISP1Y7zJ3/NfXoniRPdL4ez/
 gvrgIpa/9+sutkb9gTuuG+nNi3BcMZXdDMOnAr2muKrwm+KEHVPH/XsX+oDZo+BsdUsV3artT/e
 0EntblWTo8Mw047oExEHDuUJUJp4QsOyjY5V9nVrnrm1oxgwCiYCPKbZswmgojaZH39Wd3CWwNp
 gYRE4TeYpkVeJ+HqHybcAavBtbMmT/F9V2nMpDXLrNt4HI7kV2RZ3TlJPhHaLI4gcciTrNmjwAQ
 ydYjrDuJCRaY64n463SvYjjDKSxFijHfb2YOftJ45+RKGByAZSjFaiVgti7ZbH+M0kYYFrVbTbE
 K4SscL+yNCXSh0M/65w==
X-Proofpoint-ORIG-GUID: X9VIxDeguFOxap1B7XcfYV0ipY1M95qc
X-Proofpoint-GUID: X9VIxDeguFOxap1B7XcfYV0ipY1M95qc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 suspectscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_005916_800180_F2B98B8E 
X-CRM114-Status: GOOD (  16.75  )
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



On 1/9/2026 6:39 PM, Dmitry Baryshkov wrote:
> On Fri, Jan 09, 2026 at 12:51:10PM +0530, Krishna Chaitanya Chundru wrote:
>> The Hamoa platform supports keeping the PCIe link active across
>> bootloader and kernel handoff. To take advantage of this, introduce a
>> specific configuration (cfg_x1e80100) with link_retain = true and
>> update the device match table to use it.
> Why are we enabling it only for this platform?
As mentioned in the cover letter we are not trusting every platform boot 
loaders,
which have initialized the controller to max speed. That is we are 
restricting them to
only for this platform.

- Krishna Chaitanya.
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index bdd5bdb462c5f6814c8311be96411173456b6b14..975671a0dd4757074600d5a0966e94220bb18d8c 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1531,6 +1531,12 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
>>   	.no_l0s = true,
>>   };
>>   
>> +static const struct qcom_pcie_cfg cfg_x1e80100 = {
>> +	.ops = &ops_1_21_0,
>> +	.no_l0s = true,
>> +	.link_retain = true,
>> +};
>> +
>>   static const struct qcom_pcie_cfg cfg_fw_managed = {
>>   	.firmware_managed = true,
>>   };
>> @@ -2168,7 +2174,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>>   	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>>   	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>>   	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
>> -	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
>> +	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_x1e80100 },
>>   	{ }
>>   };
>>   
>>
>> -- 
>> 2.34.1
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

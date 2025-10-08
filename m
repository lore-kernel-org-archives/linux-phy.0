Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8BECCAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 08:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ab4Z+k0jziXG8gLqAAzeXfL5g2FeTiNtsVYyhbrSDc=; b=MdBfryuLGL3xhg
	c/KIWlS3xmuDkjIaFT0WycVnqLQmmVFf62MVStqeeqkCEMm5Vg7/WnG/Dp1G0wltUE/18hvWMaeWA
	NIVkfoqP9ByuPLsU7JyvRpyMlZ4oTOWamyWHu1rUUT1WTN6ZKPhKxybtnK0sQfLT7hicMNFuiVNSZ
	Yk9ztkXcBsPoRkXsJbnFwmhXhEazrartfnjkOZJSiuwUHzG8X33K3Z053L0JU6G2pRFat3CDJ5MNE
	//HVWRjbChoINb70EQWypTTR+BUSzho8dp5xDmkx2iYt94BtVSj1I1HWkphkrABzQSC7n0u2mcRs6
	lO3mwG3iHVUVkLCLLcng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6P6A-00000003P6m-1qwQ;
	Wed, 08 Oct 2025 08:00:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6P68-00000003P6N-0nYA
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 08:00:33 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5987aXYr002367
	for <linux-phy@lists.infradead.org>; Wed, 8 Oct 2025 08:00:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OFBsMtCW5P8eEthAK5JuEKPN/rQgShEl32y8lMaMUYM=; b=RccIbxiO+wSUrXG7
	riqHQZmZIfzrflvAq8w10eOLfSbRctyQIO8oJIp77PiBK7lL5oh9R58DALB7pqPB
	L4TeCUX42QRRomR5XzSxnjtrIAiPpN7u6cQ07cftrynrZMR6olXl3BTPW4DYR+Ho
	4L5E5vY8rcnz4+vNi//Q88dh/lKKovR0AEHa2o2ftO0CoR7hlLSM4sqoKi81uA4/
	nhktj/GYKZcw/AuwfOoJIb0gRrUjTMQqKDmMpL7v0RHopgPx3MGWnpFdsMLV1Yi/
	mFz4Zh1qEg3OUJu96jaZgEK9emn0uok6n9Mu53c09fMBl/J1M37sAQAB0DadNPwC
	taV/zA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxna1s9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 08:00:31 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-795ac54d6f8so15614186d6.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Oct 2025 01:00:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759910430; x=1760515230;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OFBsMtCW5P8eEthAK5JuEKPN/rQgShEl32y8lMaMUYM=;
        b=FrKIOUjHQKQ4nE6KyDO4v1gvnMfblKt815jClHm92kkjnFShBCgmMBhYJcSBvxZWNU
         AMqB4Am565pLgf/nsmgRJYXxfbRlBUzWbkhqFA+JY9oikKsGvy4XP2FanPrxwI3r62aS
         j4nYM6niWOyiaA1+W93rDFSD2EImccARA6MyU8Lh3imgvnJ17LdNJCo+QVBvFEIHXoyJ
         mehDEcBIHiIJO2oo2ozGGZMj/mWbf1kMC8Pd5rAzRaZJqkEeRD+weYr1k5shWFowxMnO
         hQ8axsOF8IotAziMrdKmN6DZ64leK3HGF4YpJKGa/cosBdj8Kq+jSJYTRoNJ7Bx8SSCO
         JHTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUo0yrgYWbx5lu2chIZ0JTCUE/HKKn+HXPhBsQ8cMPQ9vhbC+WGpTT/reSfFhLZaiYISJdvwv/+TRI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPcacXJ5S8q5+B9aultDNHDl+3FFn6QO5G9yebpZLIUpVRE9zk
	mavz4U07GYa28OnsLUjQTvvpmPCL+KEwdY1iAZ210eUHyEzeJ1CyzfJbC0imLFVzoXepZZPp/W6
	oViaUGGyUFpPBJ+/3TDdSLYDRGd4P82RIyPAZZddi1mA2LrgM+3HvPqkDlSAaH4mn0xzo
X-Gm-Gg: ASbGncs8gHmaGV2YVPyCu8oCwpDhyIl1LKk7lApPnkAus/PKdwEUDh8JXEFbJgExlXY
	tdpUiAsDd7LPnrcQEn37XLVIavW9ZhmS9EdbNt6K08eIXCDIdSTblbZDxKN+jnfktxmx+Jg2GPW
	hfb85PKUvyKSf2FRavtFwRWG47P+cPSsvr/CAPPB3KE/2nIigXLYiusCq8WmN89vcLWMAq3gANM
	xW46FtQN9aVSywaIgo1DKvD47MdAw6jBWTEeTLI/rtCOyCYFDH3tpmwidIZ+IfqiXi1ax5HRI3+
	MIX6C+O8gSwN4yni7NGLIft3Eoj6eHYDoJllKrUqY3Un6GN0uJtUPjDX6s84711wrdehvr6teZ3
	B25usDDWmc8nfd1MuFecxIn9zICo=
X-Received: by 2002:a05:6214:240c:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-87b2ef94b05mr19467966d6.8.1759910430095;
        Wed, 08 Oct 2025 01:00:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFI7CFIzMjiswdfQ2gg99EIIpUQZ3va0hQlGmy6utcIOqmtXbh7OWljL6IiZ8lPAjtXu1zVkQ==
X-Received: by 2002:a05:6214:240c:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-87b2ef94b05mr19467286d6.8.1759910429070;
        Wed, 08 Oct 2025 01:00:29 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63788112bbdsm14092770a12.41.2025.10.08.01.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 01:00:28 -0700 (PDT)
Message-ID: <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 10:00:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
 <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfX96/hiYAcYw97
 oc9XWvjjnG7SMVKfNsUEVBVyXW6LiR8sX4kFUxQO0P99SkyajRCG37RJhEkHjJLnz9S8FBFaD+0
 oirDtQkBaLRu7EJsPkN/TEd3hX9C9EyoGpQdMA2vWk+wjAzejEOfwbZmQ8VCa9y4cU3jGgPYYaE
 xlMFCSIrXFIGLNQJ9It4cD6ZlXfmoO3hkcZ+7bglSmHVQFFg/yxt66pGIpxExkZ8wSwj7cGpe3a
 4NMCXTeVBdheXSfHOxnIMsMU0EYokjWBlVpZNHFV+0S+1JakvHLRDoaNjKWEWRe7eETvAJTJ/j4
 SOXN3gyTM922hc2K6bDl66o0fuwZtTip1cRLur+tXUAYwjH2Z5tAPqSH30Tg4pLlgOsxM4EEyOX
 5WZCVdl1L6cz/KEq+hppOckA53jc/Q==
X-Proofpoint-GUID: nBCWmMH42yR7aAKsZvmfTTPlzRF9Uz4w
X-Proofpoint-ORIG-GUID: nBCWmMH42yR7aAKsZvmfTTPlzRF9Uz4w
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e61a1f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=w91pQayDMOQRg3Yv5IMA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251008_010032_373713_CFABD40E 
X-CRM114-Status: GOOD (  16.15  )
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

On 10/8/25 6:41 AM, Krishna Chaitanya Chundru wrote:
> 
> 
> On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
>> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
>>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
>>> and x2 lane.
>>>
>>
>> I tried to boot the upstream kernel (next-20250925 defconfig) on my
>> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
>> is crashing during boot as PCIe is being probed.
>>
>> Is this a known problem? Is there any workaround/changes in flight that
>> I'm missing?
>>
> Hi Bjorn,
> 
> we need this fix for the PCIe to work properly. Please try it once.
> https://lore.kernel.org/all/20251008-sm8750-v1-1-daeadfcae980@oss.qualcomm.com/

This surely shouldn't cause/fix any issues, no?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

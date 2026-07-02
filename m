Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30599C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 06:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qasMvofR9YbazUmSmPMY32+6NkuYdqKkyTqqqHSSgxY=; b=YwUzgIQqxQDiCq
	x0Ew9MovLNYyaGIIVMcOdBUQnmxIRjAAtElf1cYWi4VLx8MPl4dtNXwzJ+XmfOWfMN+pQDSJ3Je7A
	V6aJmu9uwiL4qwGkr95zLtm6iaf75JrE2upKE80H8924nmj25pLXuzClsG6uimebKPXHoI+irm2W0
	X7tVfGUJLgcetbAMVncvFTRukdFaoiiKwYfM+mXFkVkH/tDE5Ixw7qfMj5ixmKRcR4Pdml3p8cpyS
	kZ5wwyjzg9H+wEFrABRSr0SvmRrDygvIfBIekGeOCBueEld7HD8ZUIEZpce3a+Y6psVYEaz/SGA60
	2MT56ADghhf17O4OpU+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBIq-00000003g5w-31yz;
	Thu, 02 Jul 2026 06:53:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBIn-00000003g5Z-4BoM
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 06:53:39 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6624iP3g3592225
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 06:53:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BHip0Kz7buAzWxIlIF8kUD1bXgXidWDoAhK1k+rP8l0=; b=Q1aSo5FjWCvGe4xm
	t/kmK2wpQ4rvcpgGyWYAh6HtsmUmb+YgJ/CrV4dsNOyzFTM0UGngY/ztD3R6lBfO
	tQ6IMttWxrdEi9/qGIB34BDYQyFVVT+obQguohRSyVLpVy1L1NkZ+H+89nRzGUdE
	r2ZQuFlgrK0xHIUoapaL27LxMX4F8KRytIYl7O0HDnMqc/P8IYY90It7eA+ZFS/l
	T86FauypaGcnnJEgKqA7EmDuD1BxBS6OBpDT/SQla2oSRg/I6TQ52enDvzcUQ/P5
	Ixh9Tk2irHT3BIneZ20/gjAr/2Ra/CKx0BuPFND+cJmp0iLJhMers92901A99gR9
	vZ2wNQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5h7n8dfn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 06:53:36 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-37e5ef8299fso1572829a91.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 23:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782975216; x=1783580016; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BHip0Kz7buAzWxIlIF8kUD1bXgXidWDoAhK1k+rP8l0=;
        b=a1KBJc3ABLy9Zv85Tt/WpZM8w8q+kiTzEJj2BAEvdfYLeT9XJ1Dxy6UPUk0Dn9o+m9
         qtSA4VK+bpyVWPwG+46fRru2uNkE6XWd3Ze8mHDf1ZUV7XOpXRLpr1oqrzYvC7gfxC9r
         pKdk58m1VTJ+3CBFAO2FGmUYqXrU7Jk41nfg2RWxadwMv+Eb7xk/KqRzfrxLktCmpbq9
         3duX4B253iRPRVFeG792Zg6/2cze33UoYAb0InVqUzoykRnOqrYv5xbC6dKMNnrt5Yxc
         04Ev/i0puywFLj9ogV1EzB+bjER3UMTPsUKG0x5IsB/xBWfdyB8n0hCXNP/f0x+0q8rk
         fe3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782975216; x=1783580016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BHip0Kz7buAzWxIlIF8kUD1bXgXidWDoAhK1k+rP8l0=;
        b=qks2PttAlJQygVWscRoICh9jUuivqD/O9axMjQItRcIhRDaXSSu5YrelYmKjrFaslM
         XQFF1epQ1QEVii+YQxZnjIwcOK956mZNkxb+aNrzKCYqr6cI8vWQB0nD/o5nIok8GAgO
         9EC5gqHV3A+oAtul7bM7UHoSYMXV9aKGO/I8UcKV6KdM9pPfFGPwgY+afL1Pmhxc3INg
         zOdMwVB/g8jiBKWgfutYtYIBXVynnDd+IGlLAJWmxWxMpaOgYN/LjFmHZZXs8cFZ+ssb
         4cwniuayGUnvWA0L2fTX7m2H3nDiVuW1VBA+NlALoBMVGsbEjR6sAWQS3eNx2oiHRiEE
         yCPw==
X-Forwarded-Encrypted: i=1; AHgh+RqKGkgtEyveL0uixvDJ6S2LHZ5rs7uSrLLuu2ZpSeUvEB9jY9etOreb532BBJEDpSsWAzl6mHH6FEc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzK5K2rLquKbIn1rP8F9SBtjl0UH24u95o34EiTQLKXB7oFo7pX
	o5shOPpAm4j/F3zlCqAKRV6iV2gRgaDl9g8zqf87IyGaEZ1y0mIFO1HxXDqddUNX4XFaO/wUWiV
	+XX+k81hXEP1ZZRhxBqMSmV9tAz+Mj5Ii0b13Zam64Zupd9Xqa4zq+galpGxJ1SeymdJ4
X-Gm-Gg: AfdE7cnRPKVzziJ9a/NDD1ujr8gPthJ6vkdF1MpGrUsiRHBBmJhyDX6qhAXwEGGukGt
	UEw+H5CTL4iNFznSakS/y/Pd8fpeaXfQVP9yXF0WwGdaUmgKL9ph0gSHuFiTlj6uhiZ/VgNc7wD
	Gxj4FITWPpyvUg2fO9LU+qkmr8SdIzBM8MmL+Hcdyq1mMiorAKXeVt7H+NSx7ALHD8AypStXFaH
	HDSWMHciY6meBwPmmmw/PEllphSJRPmNQ6JkD/BH0U+6r1XZT8zRvf9kScBnY0LAf05cII8zHtS
	E4Ld4cV3sVHvr4W83CAGpA/irkaKL9QtJBzF35pDYHwGnKGEaNhe6ZyRFuskkU8aLMe5bVmX5VC
	mrJOk5Q7ScWh3K7GJn+YHMJcXk82bxmZfVolPDWNn
X-Received: by 2002:a17:90b:1844:b0:37f:c2a9:468 with SMTP id 98e67ed59e1d1-380baa6b497mr3981919a91.18.1782975216277;
        Wed, 01 Jul 2026 23:53:36 -0700 (PDT)
X-Received: by 2002:a17:90b:1844:b0:37f:c2a9:468 with SMTP id 98e67ed59e1d1-380baa6b497mr3981881a91.18.1782975215737;
        Wed, 01 Jul 2026 23:53:35 -0700 (PDT)
Received: from [192.168.1.6] ([182.77.29.27])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-380e1608b23sm551730a91.9.2026.07.01.23.53.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 23:53:35 -0700 (PDT)
Message-ID: <08ed6b4d-5549-4aae-9967-1365db0e3aa2@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 12:22:57 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/2] arm64: dts: qcom: Add SD Card support for Shikra
 SoC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
References: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
 <20260630165700.1886608-2-monish.chunara@oss.qualcomm.com>
 <b43691aa-6d1e-4df0-9d1a-cd5c4b3e3dff@oss.qualcomm.com>
Content-Language: en-US
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
In-Reply-To: <b43691aa-6d1e-4df0-9d1a-cd5c4b3e3dff@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDA2OSBTYWx0ZWRfXw6uNHQ20b8RC
 bCEBz+GmSLt/o3FNI9M1LXND9tARAf0C2tSxezMUZ0GppbUu8ThX+ZutnSkXxH+DYj9I0Iydf1C
 rXDNrTLwvO3VcK0RlT+bl09mqurzDwJuqTBoNk1If7XA0IysxLQPhv8a60xLxkp4F1Fs09+kPc4
 G6+AMKP+5xGLwHPZ+7c+AEoU1bW01okZhfhFLS4jirRhoVsHyvHqT9bUwsgMJd79JNLWXJb3/aV
 TZHnYcJiGW1lWlJqtRZ1KgstnUHOP05E6RaZU9Y5hsr17nWPAA51d/nmyohm5HNIEqFSI0xJDEV
 QDX3TZyVLkLDkHgPccaO2FNaet3oadQGEQi7qSIdNHk7Wcg9SwBNqWMcPRAyuCIjgmlGHWHGCfQ
 1zUHRKOMAiU7EIOZQzsi7+CZI68pJ1SPky15qrav3s9lrvLj5UMKk9ONPrIDh5cKovRnhrMMVi3
 U+iRk2yxHb9SFtZrvGw==
X-Proofpoint-ORIG-GUID: Zppnrm9LLLZY6QUDAfoC4IBiw36c5-Ke
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDA2OSBTYWx0ZWRfXw8bBz+Lmzi2c
 MpWxfbuK5DrATE8pii2gtBre1LT1P/jq8sZka9XSuJWYxshuP8LlZjWHzNSx0PBOVVgPE0QHEfZ
 QJ/9bkIuMMqZwwEufnuSWyf36vCckAY=
X-Proofpoint-GUID: Zppnrm9LLLZY6QUDAfoC4IBiw36c5-Ke
X-Authority-Analysis: v=2.4 cv=WMBPmHsR c=1 sm=1 tr=0 ts=6a460af1 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=1qKOYMtCOh3zOq8T1Y2cZw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=nutul9sAWFEbEiaF5vMA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_235338_090710_B587C25A 
X-CRM114-Status: GOOD (  13.40  )
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



On 7/1/2026 5:07 PM, Konrad Dybcio wrote:
> On 6/30/26 6:56 PM, Monish Chunara wrote:
>> Add support for SD card on Shikra SoC and enable the required pinctrl
>> configurations.
>>
>> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		sdhc_2: mmc@4784000 {
>> +			compatible = "qcom,shikra-sdhci", "qcom,sdhci-msm-v5";
>> +			reg = <0x0 0x4784000 0x0 0x1000>;
> 
> Please pad the address part of reg to 8 hex digits with leading
> zeroes, like all the other nodes
> 
> otherwise
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad
> 

ACK, Thanks. Will rectify in v3.

Regards,
Monish

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

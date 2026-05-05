Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C84FF885A
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 04:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsXsWwvTqgDxDK31yhcnkwOsnIqs66giRfxhWRzw8JQ=; b=FwwvRPO8fg4kTS
	MKyJP0W4zxfcZ1VLMkCJrlZW6Hg6T7VWmFjqDf0+nj2a9oOz5xtzxKqwgf4/kHGrJAzbRILhRGEN9
	AcUYNCMwzc0XMhxMP19Pih8R74Nwco03UJIy5IzI+7rR2GWbeoqeS01f6T4nlTnIDl50bbghJ3THd
	Iv4+Qm+KSjtZnOcuXjY7t3TcCcxCeLSwJn/MaXaKfGwChL8pLpjLf7Qse4t3Qs5WdBiKIdprs5YdU
	AglV/OH73r4esUHFirJi0EfFE6owAMEEdSXrthK5/9wA6V5cdBhwhDOAmDFX0J3SymFDkFDYpliD0
	LUvll3qeNYiwUPxIrD7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wK73W-0000000F4iW-3oMr;
	Tue, 05 May 2026 04:06:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wK73U-0000000F4hy-2Epe
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 04:06:45 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644KP1jI331129
	for <linux-phy@lists.infradead.org>; Tue, 5 May 2026 04:06:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4pZbHtSbvA1uDcyWdB+000WDtZcm6g9KXWfPaacKoe0=; b=Fb8xnIsqLu60Bpip
	zEGtH2p7Va8tSUKwiWZ84cmfvEHmIV2GU3n0dGUpjHvdp7Z4OhyNT5C1CL/99N6p
	mWIrX/QoXQ6u0tQ+4/8gSw1fxYy8xYTaFkDDhDP76aMSsdZiKkl5D5OHPhZ6DBl2
	ommfTN++g3GsFqiVQp4KItTXc2hTnrlguVbRw/vAZ4GHx8KD9J2re2Fe4ePN4RD5
	d4sXfC+ZN+MUkYzZQaUDSwc6E2k1+QWuztakCCbLhJmjWRIc0Ba1RLxtOhf9moBr
	Ot1RrJvhE+eb1Fxbm1ummTFZz4Nmr5aVkeDTfWE4j9xptNHeBHn+alk48w+Ybq/o
	3xWrUw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxvr1amx5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 04:06:43 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2eebb099efbso8685616eec.0
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 21:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777954003; x=1778558803; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4pZbHtSbvA1uDcyWdB+000WDtZcm6g9KXWfPaacKoe0=;
        b=bt3VRCtC5Zb5N3F98DaKsegKijh1ZvWR6a/Oj1aTF5UlFG7ZBnpSdfNpdmWiS9YGqY
         t2odmku94MVILpyS49E03ROnQuu6v/Uw3PQNeLAANT21mLnD01HbOjf1jO9AnRXyxclT
         hByXA/EtNu/khwkVgQYvse2PwJ4jSFf/shy1LtQWkOp54f1KT/wxNsgkBZl1gK2xRfBD
         T5hj8XyiLavhVPx/A34SchDNmPQ8YpcyrCfrgFp0nMbHPr4qEfN/T3dvxm1ZGfbzP26y
         EVkjVYJGrSNskbFq4lTAuJFNRaDxngwwkFPFdpvHVm8Yk/MeGpEoqf3airaCYd+byCqm
         NhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777954003; x=1778558803;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4pZbHtSbvA1uDcyWdB+000WDtZcm6g9KXWfPaacKoe0=;
        b=iH7CyjmPxhj3QlLuIpOu+glpOGS6Rzz0qdtCYfAkp+RYMBMdbAUmpWC8CSHcBbgK7D
         nZ8GXMH6o8/ru5aS46NaqOXpme1GvM8efoQT/UcbC9aTNVRro5H7V80vwb+j+Iq3RyCf
         2EVf6D0vcJ2DgQs6WWYS6kyPEe0X93vL2qG/26IdHRJ+h8R6YJhRP6ntMMSE3enYTXze
         8ZMiSR1yy8u5yV7wjFQb5wh/GbVMIhBUBvwQc3Vt6LRJkzQ8IBMOLaBs0BJysJjck+as
         ZRNWZiv1bqTyzfGEzPx4tAk8IOKd1bUqq2qnfuBPWxzy4tlaUwUn02KQU4NFqpKx/m4g
         GsGA==
X-Forwarded-Encrypted: i=1; AFNElJ8/2wxxoJS1ii1Ab9iHyS+uBK9IEYzh5GUquim//AXQ6wDO/upg9lESKkN5IE29CFVN7FdJx0TVdGI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9SL54UAMUFG91Mp1kjpP4Vl7kmqdzMFrbzz3E2DNAai3zHk+9
	YzgQLHArn0MpMxNXwMt5QgQF2zBjGNIz5Th4mDCt2f45nnsiFPsNSVY83MLB8DgHt5uw/prCtCx
	/EC4uq1Hqb2mlVcX5WYlsibSFKAi6RLrP19HEO8z42v3R9jT0ljk6hQGzfu+jhGKn69Ri
X-Gm-Gg: AeBDieucw8tzwwtmJ/dYNao1XZa8CfapWyT32M+oyg8ugSCCAoDWq+SJqX6DV+m1AD/
	70xT1o6J5haPnMWCyKZYim9RoJYQpqf4qSiKPJrBLHG2JKFSAiooqbDWuBV0Yy+LQZFZ9xLZWer
	a/cKsWl3nCyf1v/UTBnL4zcLLDqjZHD74C4B5kkReLpUUp/tDx7BUeiU/FWvLFh4MF4HpneGwAp
	j6FP2rZBuGID/PkdwYctXP6Q0QSzslwGErrWPIl3cQI+nAOx9aOk2UX08gmbVRSENKDosD8gJ1o
	4RnJdkjOuovfiagX9qm4xMzvePO5kE+v3InUljs1vje7x1jF7q97in/iaaZxzNF+biTQA3BFFel
	3hO4+E5oSVgbxJYf4uPJFclI5leHP86Igros1UCZe44qq3982a/fmETU6ywb7SwWB0haOp7IJzy
	8mVdTmLV4aJGNFJCTFHp3n2n8M
X-Received: by 2002:a05:693c:25c4:b0:2c7:3a7:c7a7 with SMTP id 5a478bee46e88-2efb9f808bcmr5821727eec.25.1777954003011;
        Mon, 04 May 2026 21:06:43 -0700 (PDT)
X-Received: by 2002:a05:693c:25c4:b0:2c7:3a7:c7a7 with SMTP id 5a478bee46e88-2efb9f808bcmr5821705eec.25.1777954002507;
        Mon, 04 May 2026 21:06:42 -0700 (PDT)
Received: from [192.168.1.2] ([122.177.243.246])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f28f7ba26dsm7520592eec.10.2026.05.04.21.06.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2026 21:06:42 -0700 (PDT)
Message-ID: <230aef5f-43da-4b7a-994c-7a63b631ae8e@oss.qualcomm.com>
Date: Tue, 5 May 2026 09:36:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-usbc: Add qmp configuration for
 Shikra
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-5-krishna.kurapati@oss.qualcomm.com>
 <gb46nv455vfkldkhvlo7c26amuonrlzvstirdpbzictbqgyxox@6vypar3byxhs>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <gb46nv455vfkldkhvlo7c26amuonrlzvstirdpbzictbqgyxox@6vypar3byxhs>
X-Proofpoint-ORIG-GUID: rdGMcl4gKUXK34jUTiPoMyoWHXjL1j49
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAzNSBTYWx0ZWRfX3RxjFHwmYRxB
 5Q5iceMgVJzY2ma5dm/74f1OpthBH8kijnt/BU5wOWlWPmJVY/fIFSZ1FDVVMZZZZEWtCUTUpeI
 P8axy1Axt30bs6BzT8DBNbqnk/g34T1a4naC/Nj6VKNLED1BBy6mcSb10syWju2RfuFoboKSH3i
 dkswJZ8fnEhQK9jAyiIE6XdyqgrEDT+zpTfc4YsGZ+19//cFHylrGq8THSBmG2Z8Kj72eh3Nuz/
 ebCXZXz/bY4ejc2fZv6KPs0+srm2lEJnujykXs64ZKhacGKhyepRC9WmblTwfssRKdJXtgEY22e
 6vngcK9y3kfbETzj4daO8w5PL5dyAzQwO8InFtdOcGIPEIX0rsF3qPc4wmBkzrmX1Wc73D14bwV
 Rioh4W95ZIcDmxMfUEjG+g40BLxC3QkPzFwhAfkBRavTvtVKCeVs7DF/TDL2m1QJaQytbVgXUK8
 t0r78mm6yo0TX8oq+kQ==
X-Proofpoint-GUID: rdGMcl4gKUXK34jUTiPoMyoWHXjL1j49
X-Authority-Analysis: v=2.4 cv=RvL16imK c=1 sm=1 tr=0 ts=69f96cd3 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=SdbDppvB4z130zS5fHlqzA==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=pkhheSlYpZ5lmKqxZU4A:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_01,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_210644_607416_5D5E1065 
X-CRM114-Status: GOOD (  16.34  )
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



On 5/5/2026 12:58 AM, Dmitry Baryshkov wrote:
> On Mon, May 04, 2026 at 10:36:59PM +0530, Krishna Kurapati wrote:
>> Add init sequence and phy configuration for the Super Speed port
>> on Shikra SoC.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index c342479a3798..400dcebf8222 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -2019,6 +2019,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
>>   	}, {
>>   		.compatible = "qcom,sdm660-qmp-usb3-phy",
>>   		.data = &sdm660_usb3phy_cfg,
>> +	}, {
>> +		.compatible = "qcom,shikra-qmp-usb3-phy",
>> +		.data = &qcs615_usb3phy_cfg,
> 
> If we are reusing Talos configuration, should Talos also be used for the
> fallback compat instead of modifying the driver?
>

The clocks are different and hence I didn't use fallback.

Regards,
Krishna,

>>   	}, {
>>   		.compatible = "qcom,sm6115-qmp-usb3-phy",
>>   		.data = &qcm2290_usb3phy_cfg,
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

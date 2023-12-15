Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E48FC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 15 Dec 2023 05:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+13q35dUDYluW7w6TucQd+24sHqUMc9zpxY8kxqp3zc=; b=2GgFhNLIC3azGS
	UqyHB25FprAU+vEhDz5q39WFjve8MYAHeMVx0jtKrYRz5KYZP8MEqHgejL+Q2sP6n8NEnMXdrTCtz
	6O/LWxScjvmx+PIA7pe2I5OalMVjY3u3Z0t1ZK0/7pHvMipLRD8Ia4ErSC4uArDrq2PAXVNuJ4yS+
	eQZrC5aBk7jzNMWStCDzfmD9cAUFTSfpecDtS8uBXSJn1WK/Nfgl+ZisNKE6qYUAqOmt9yu7J/gOI
	g/3pSBAyc3BFNuY4uhqS94hgZEV0Q67ms5toROzWwBrb53DMT4ENnc4jHvBDVUa7Mgcy43RYOLhJH
	kY/0imBf7JJ4flqdazHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE1Dg-0028NO-3B;
	Fri, 15 Dec 2023 05:58:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE1De-0028Mz-0e
	for linux-phy@lists.infradead.org;
	Fri, 15 Dec 2023 05:58:43 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BF2WU8S001366;
	Fri, 15 Dec 2023 05:58:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=XFNIRz9sz5pLmm9sbk+725p0qlJMx3H0g4U9OyyUyXI=; b=Kn
	P+0ffKh+cgcMC/a2uEjZrC6xF00GxWm2nQV2wqlw1Bnq0PkPHeqKz/laSWQ7uuSd
	2uyz98ZiZytXbKzr9HhwlRC6a+8pxwpgXsLTxw01o50VMeuTi0KIHrfT+JC0tEnn
	1jf0dG1HxhK8C8BEdFuH7/IRPsLybVejhMgZK2DjPNh9ltuA6yDR2Ih/G5F1Ol8t
	WbkcrI+IFwfBY4nSMJWPlW5a0N9LXrbPTMxHJQ0FxQxP3tsaP/8kat3M3w054UDl
	d65esYMAV1dY0AVuHRTRO9wD0R5GuC1aoafkoFn/Z8Xm1Fxn/kTbL1iA+bZ38f8m
	81EngzMLoMViLFOSfzsg==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uynjacesr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Dec 2023 05:58:35 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BF5wYHK015956
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Dec 2023 05:58:34 GMT
Received: from [10.201.3.91] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Thu, 14 Dec
 2023 21:58:27 -0800
Message-ID: <ccb28d3c-8f48-47e1-a4e8-5f995c72ce77@quicinc.com>
Date: Fri, 15 Dec 2023 11:28:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] arm64: dts: qcom: ipq5332: Add separate entry for
 USB pipe clock
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <quic_nsekar@quicinc.com>, <quic_srichara@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <quic_varada@quicinc.com>, <quic_devipriy@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_anusha@quicinc.com>
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
 <20231214062847.2215542-4-quic_ipkumar@quicinc.com>
 <CAA8EJpqJ_7CPjTs2zykqnZpm9bQ31G7Q+1CA308OdS1BNqK6GA@mail.gmail.com>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <CAA8EJpqJ_7CPjTs2zykqnZpm9bQ31G7Q+1CA308OdS1BNqK6GA@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: g4tTtgpDSSfl_LfOuPfo2tkjzGbS6V7X
X-Proofpoint-ORIG-GUID: g4tTtgpDSSfl_LfOuPfo2tkjzGbS6V7X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 spamscore=0 impostorscore=0 mlxscore=0 mlxlogscore=876 lowpriorityscore=0
 bulkscore=0 suspectscore=0 phishscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2312150034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_215842_368758_EBE6AB67 
X-CRM114-Status: GOOD (  12.00  )
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



On 12/14/2023 12:51 PM, Dmitry Baryshkov wrote:
> On Thu, 14 Dec 2023 at 08:29, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>> Add separate entry in clock-controller for USB pipe clock.
> In my opinion, there is no need to do that separately. Please squash
> into patch 9.
Sure will squash this change with patch 9.
>
>> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>> index 42e2e48b2bc3..f0d92effb783 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
>> @@ -213,6 +213,7 @@ gcc: clock-controller@1800000 {
>>                                   <&sleep_clk>,
>>                                   <0>,
>>                                   <0>,
>> +                                <0>,
>>                                   <0>;
>>                  };
>>
>> --
>> 2.34.1
>>
>>
>
--
Thanks,
Praveenkumar

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

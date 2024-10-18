Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AF75D3C55E
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 07:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8hzusjhv8a29XbqusyMJt1tYo0k3/AtFuFR2/Mq+CU=; b=p8yJsn2TcE1k9x
	5IWxowrTSO7XFFYR+1E04aLhx2w8ET3lKDCnePhsFNyi+PL7bJm/8/tqev+5NWbZU3D01lDlArqN7
	FQHmOIkjwaHUbV9RxfJERIx2REPWe6aBTWc84tIOWriL+xXXMe22Qb31Fa0qvg6UcSgexeP4+4f22
	/SqcWFf7kQliwHY5mLStQ305SKyxEmzi3vKzKs2SD3X174K1xvmZI3DmzNBklMFDkYiaMmjoZUu6G
	8NPUBGAeoRCEOxGt1kUJHM4r1Yxs3TM8hh1Uwy8XTc8tjfnM41vhhX/gA+YNFJb4sRws6YHfEzDpz
	VYqBqYp7b6jz4HahnDCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1hlS-0000000HOq9-3c3m;
	Fri, 18 Oct 2024 07:51:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1hix-0000000HOQ4-121k
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 07:48:40 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49I4vEJf016598;
	Fri, 18 Oct 2024 07:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OzoaWvCEqfRjWD3bU1bsw3GKto7yOeJ28P0BvJsYBQE=; b=i1Zp4HnAQ1QTPLxd
	CMkVvPD9J8nRKUgLSfzslY2GUNKSy5P+QywV0qE1iwL5BdSjQr2XiZXUUGsq60C8
	/bDVBQmRQCrSjwOny9S77ItecdiPlvx0uI9q0gIh9qTC6jJBObblB1PQXwz+NKx2
	jf5/KDhWHRzSLq/+9SyMbylo0HKqfYPtRRJjaTr0F5AWKEyk5lyDVX+OY/T2wqPz
	+HFm3OZwmP9cbowszKO9MzwvOYAHtL16x0P4KSj7JtnNvnDrx9jQ6p3cO4KnJICB
	ONcpwx/ZBvZdYRcfqAvrlRapJUVK6Zna5yImrTsmUhEbulTB7wsZIux56pjHUrwT
	n4br0w==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42bh3p8eu2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Oct 2024 07:48:34 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49I7mXeL015257
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Oct 2024 07:48:33 GMT
Received: from [10.233.17.145] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 18 Oct
 2024 00:48:27 -0700
Message-ID: <aa68e5ab-86a6-430e-92d8-ed89b4eb37f7@quicinc.com>
Date: Fri, 18 Oct 2024 15:48:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] phy: qcom: qmp-usbc: Add qmp configuration for
 QCS615
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krishna Kurapati
	<quic_kriskura@quicinc.com>
CC: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Conor
 Dooley" <conor+dt@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com>
 <20241017130701.3301785-6-quic_kriskura@quicinc.com>
 <CAA8EJprcOU6qeJvHH+MVoPnQ+mGcos=pDOVBSeSUfBGw-KR6tA@mail.gmail.com>
From: Tingwei Zhang <quic_tingweiz@quicinc.com>
In-Reply-To: <CAA8EJprcOU6qeJvHH+MVoPnQ+mGcos=pDOVBSeSUfBGw-KR6tA@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Pvo3hA6bTlT-uZ_6lKCKZElyxBT6emfK
X-Proofpoint-ORIG-GUID: Pvo3hA6bTlT-uZ_6lKCKZElyxBT6emfK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0
 clxscore=1011 phishscore=0 priorityscore=1501 spamscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_004839_443595_35BE8DE1 
X-CRM114-Status: GOOD (  15.75  )
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

On 10/18/2024 2:27 AM, Dmitry Baryshkov wrote:
> On Thu, 17 Oct 2024 at 16:07, Krishna Kurapati
> <quic_kriskura@quicinc.com> wrote:
>>
>> Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
>>
>> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> After checking platform details,
> 
> Unreviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Please perform global s/QCS615/SM6150/ and s/qcs615/sm6150/

QCS615 and SM6150 are different variants of the same SoC. QCS615 is an 
IoT variant, while SM6150 is a mobile variant. We are currently adding 
QCS615 SoC support to the upstream Kernel, as it is in an active 
development stage and we anticipate many products based on this SoC. On 
the other hand, the SM6150 is an older mobile platform that is unlikely 
to be used in new designs. For a product introduction of the QCS615, 
please refer to 
https://docs.qualcomm.com/bundle/publicresource/87-83838-1_REV_A_Qualcomm_IQ6_Series_Product_Brief.pdf

> 
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> index d4fa1063ea61..c56ba8468538 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>> @@ -1123,6 +1123,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
>>          }, {
>>                  .compatible = "qcom,qcm2290-qmp-usb3-phy",
>>                  .data = &qcm2290_usb3phy_cfg,
>> +       }, {
>> +               .compatible = "qcom,qcs615-qmp-usb3-phy",
>> +               .data = &qcm2290_usb3phy_cfg,
>>          }, {
>>                  .compatible = "qcom,sdm660-qmp-usb3-phy",
>>                  .data = &sdm660_usb3phy_cfg,
>> --
>> 2.34.1
>>
> 
> 


-- 
Thanks,
Tingwei

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

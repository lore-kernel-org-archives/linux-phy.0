Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F91D2FFE6
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 10:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmW9uFku1WYJ8o5p7YC2xaZ/vKHYrtJdS1AFK2x3sIA=; b=hDB9cP2kU/tR8k
	W9h2ArXC8EYrX82xo2MzV4dLMe1oXUk1gAS/uf2/qDPEdR32E5G7Q3efAJLw0Or92MAjXMnV0I+BO
	yf0v/xUSm6KfV1vfH/+/DmpxJsoBK7T48YYj6TXKgILUdsVcAHZ0swH8qKn11lpH1IC4xzyV2quaX
	uhXAqmIWbz+lYANAt8657EST099WoV5xX0s6xlASmPtAxoxo7ZqH1pGZN2ZceLxBdq81jxGcup9he
	8TTVlp9coZ/FPP7fm8vbSMvvnLwWwC76gAXp4WXcbli9F+aOMIWAtyDqVCcggvBSW3CfTAvFvzdCr
	VShPQs3Kt8uEwT+FcEfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kQ0-00000000OqZ-0aRa;
	Fri, 18 Oct 2024 10:41:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1k8y-00000000M8r-3UZ6
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 10:23:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49I1gN5t022062;
	Fri, 18 Oct 2024 10:23:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y0eQ/+mZ/DlkJ2oiZtADEUydVH3jecP10XpmJP5ZxTg=; b=YpvMh+kL2oJJo52u
	s45WDLnedKiAKIA2GFH4oUYMttj5WfmAw45CM+iZBu0X8F9PKHyZJl/rCr5cyzRK
	E7z2WT0H58T4XhpUi6pXnSXikY3h8SarsVsmJ+jfIGRa0ZBROo4bne48gDL3JAhi
	CrZFdD8SPMyfcxSp6Ha6mZySHvMHXBoTGp2hRNVsvXqiemfQDheK7g/TLmI/eECA
	nkdQKiEKEBmrldm83MdEfNKkePI+ti5l3IRT1DJmkZnTRVs9PsgvYiExc2Yn6nRm
	5FFC/h1puwcPNhpkJWis8G47sOjm5L8BZpwznnwRDnLdz5aGTBTAZCxP63HoQH8z
	bMrWuQ==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42be8c9c8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Oct 2024 10:23:34 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49IANXFF016269
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 18 Oct 2024 10:23:33 GMT
Received: from [10.216.0.54] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 18 Oct
 2024 03:23:26 -0700
Message-ID: <479f7aa2-0401-40d5-8e2f-d7512aeab0c0@quicinc.com>
Date: Fri, 18 Oct 2024 15:53:22 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] phy: qcom: qmp-usbc: Add qmp configuration for
 QCS615
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Tingwei
 Zhang" <quic_tingweiz@quicinc.com>,
        Conor Dooley <conor+dt@kernel.org>,
        "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>
References: <20241017130701.3301785-1-quic_kriskura@quicinc.com>
 <20241017130701.3301785-6-quic_kriskura@quicinc.com>
 <CAA8EJprcOU6qeJvHH+MVoPnQ+mGcos=pDOVBSeSUfBGw-KR6tA@mail.gmail.com>
 <aa68e5ab-86a6-430e-92d8-ed89b4eb37f7@quicinc.com>
 <CAA8EJprkq-Cct9Uk1Jwqc5Rn8mx8THTRgwCzDx=8ZgbCpwD7qw@mail.gmail.com>
 <684582c3-3559-4c54-8257-cb952bbfe2ec@quicinc.com>
 <l4wpt5qin3ezkowf3puvodrm5wjsptd4a32f4qrzcuuquo6kq6@j2orv5z5quln>
Content-Language: en-US
From: Krishna Kurapati <quic_kriskura@quicinc.com>
In-Reply-To: <l4wpt5qin3ezkowf3puvodrm5wjsptd4a32f4qrzcuuquo6kq6@j2orv5z5quln>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: IpwPcAoJYgyVx804yfn7aMePnjv4O_g5
X-Proofpoint-ORIG-GUID: IpwPcAoJYgyVx804yfn7aMePnjv4O_g5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 spamscore=0 bulkscore=0 phishscore=0 mlxscore=0 suspectscore=0
 mlxlogscore=999 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_032340_933040_DEA7E17A 
X-CRM114-Status: GOOD (  15.17  )
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



On 10/18/2024 3:41 PM, Dmitry Baryshkov wrote:
> On Fri, Oct 18, 2024 at 05:01:48PM +0800, Tingwei Zhang wrote:
>> On 10/18/2024 4:06 PM, Dmitry Baryshkov wrote:
>>> On Fri, 18 Oct 2024 at 10:48, Tingwei Zhang <quic_tingweiz@quicinc.com> wrote:
>>>>
>>>> On 10/18/2024 2:27 AM, Dmitry Baryshkov wrote:
>>>>> On Thu, 17 Oct 2024 at 16:07, Krishna Kurapati
>>>>> <quic_kriskura@quicinc.com> wrote:
>>>>>>
>>>>>> Provide PHY configuration for the USB QMP PHY for QCS615 Platform.
>>>>>>
>>>>>> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>
>>>>> After checking platform details,
>>>>>
>>>>> Unreviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>>>>
>>>>> Please perform global s/QCS615/SM6150/ and s/qcs615/sm6150/
>>>>
>>>> QCS615 and SM6150 are different variants of the same SoC. QCS615 is an
>>>> IoT variant, while SM6150 is a mobile variant. We are currently adding
>>>> QCS615 SoC support to the upstream Kernel, as it is in an active
>>>> development stage and we anticipate many products based on this SoC. On
>>>> the other hand, the SM6150 is an older mobile platform that is unlikely
>>>> to be used in new designs. For a product introduction of the QCS615,
>>>> please refer to
>>>> https://docs.qualcomm.com/bundle/publicresource/87-83838-1_REV_A_Qualcomm_IQ6_Series_Product_Brief.pdf
>>>
>>> Yes, I guessed so. It would have been nice if it was documented this
>>> way from the beginning.
>>>
>>> Please note that we usually get support for the mobile SoC first. So
>>> in most of the cases devices use mobile compatible even for IoT
>>> platforms, see qrb5165, qrb4210, qcm6490 and other similar platforms.
>>> I simply asked to follow the established pattern.
>>
>> Yes, we start from mobile variant for most of the platforms. There are some
>> exceptions like sc7180 and sc7280 which we started from compute variant
>> since they are widely used by compute platform on upstream Kernel. I think
>> we have similar case here. QCS615 will be widely used by IOT products on
>> upstream Kernel. We should have clarified this from beginning so there's no
>> ambiguity.
> 
> After offline discussion with Krzysztof, I'll lift my objection, so
> still Reviewed-by.
> 

Thanks Dmitry.

Can you help review patch-4 of the series. I made the changes you 
suggested on v1 (uppercase to lowercase and removing un-necessary re-inits).

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

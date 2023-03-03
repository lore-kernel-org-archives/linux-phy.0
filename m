Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C8D2C678D4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSvWbe2W+2S14ZDIN4jRTIl+5t1+gnUXsti3zhN4gm4=; b=z86z3RwS/Ec0cy
	81HKgrL4qnbeh489bEJN+/YfV2/6AYWcru1ZYQS9Ljo8y2xhe3ISgLFSOkKopRSdB4vRlJjjzH43N
	7SUQ1kcempPFkdNbE/vVADFm9UPwUsxYA2dEYnzlhy5QcNdVBizFZ1SatYVVQpmISiq7w1isOxU6J
	rXoFZz4c/g7AHOa3+Jo5iVlTHI/G/iRgzL4L9Qyn/mbe980Ukh5xFqBXaeMBZ1XLtlCJKH33c/esO
	Ly7nQuhgxOu4cVgd0P56Hpcm+T6IYVm+WWHuryHgXPWwldiy0PekLFkoFGPutysoOqEobNUABzKm8
	FMYkFkzmpqG0TMSit+6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1RD-005bNc-DY; Fri, 03 Mar 2023 09:10:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1RA-005bLq-70
	for linux-phy@lists.infradead.org; Fri, 03 Mar 2023 09:10:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3231Zu84021050;
	Fri, 3 Mar 2023 09:10:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Kfko2m90dOe5JfKrfE4Hr2ikjsZJ8P9Bp91AdKl5MWo=;
 b=H4lo/C7PZjc8kcIhSohagAGZEI8i1N5LI9DP5WybR+yrs7cRjEKJ5+VFYQTIz2EBXEj5
 TupsicXVBZ6LIJPmao+cnkT3/H6gfbgonkE9kJvml6bwn1AW/5gnKpKHcTtDPTF/QzCZ
 PLGp/2ZvW5Cr2S5zneAoV+eQnL/MJFhoSRBp3+e2rBF6rMZ2N19BQ1IyCipx+iC5XdAQ
 doh/FV8za79stz8/1vMZgOl0QXy4z7hNdGTMp+pOASujZ5uZ00VQ9i/K1dXAGPj65Q5y
 tsWoRczSGZcMJ+a31WiUW130rT9kCZL5i3QXfKALrmZ6it33noZEkOPHXBSAUzg1CF6i SQ== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3p36my94d3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 03 Mar 2023 09:10:42 +0000
Received: from nasanex01a.na.qualcomm.com ([10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3239AfVj003104
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 3 Mar 2023 09:10:41 GMT
Received: from [10.50.35.127] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Fri, 3 Mar 2023
 01:10:37 -0800
Message-ID: <d2499ed9-082d-0c0a-ccaa-eec45f2f82f7@quicinc.com>
Date: Fri, 3 Mar 2023 14:40:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/8] dt-bindings: phy: qcom,qusb2: Document IPQ9574
 compatible
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <cover.1677749625.git.quic_varada@quicinc.com>
 <70beab86eb21d1130e61f52753f514cfb433a4f2.1677749625.git.quic_varada@quicinc.com>
 <CAA8EJpq_B_f90W6ULk1q+ot8ACj68U0M8Yc8yXL-BGuF906xGA@mail.gmail.com>
From: Varadarajan Narayanan <quic_varada@quicinc.com>
In-Reply-To: <CAA8EJpq_B_f90W6ULk1q+ot8ACj68U0M8Yc8yXL-BGuF906xGA@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: I2k1OfhVnJ5bgKjvA7aHxqSZZpYHezJG
X-Proofpoint-ORIG-GUID: I2k1OfhVnJ5bgKjvA7aHxqSZZpYHezJG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-03_01,2023-03-02_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 clxscore=1015 mlxscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303030082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_011048_310941_5C939417 
X-CRM114-Status: GOOD (  13.62  )
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


On 3/2/2023 9:53 PM, Dmitry Baryshkov wrote:
> On Thu, 2 Mar 2023 at 11:56, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
>> Document the compatible string used for the qusb2 phy in IPQ9574.
>>
>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>> ---
>>   Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
>> index 7f403e7..c426f78 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
>> @@ -25,6 +25,7 @@ properties:
>>                 - qcom,qcm2290-qusb2-phy
>>                 - qcom,sdm660-qusb2-phy
>>                 - qcom,ipq6018-qusb2-phy
> Please movef ipq6018 to the proper place and then put ipq9574 next to it.

Sure.

Thanks

Varada

>
>> +              - qcom,ipq9574-qusb2-phy
>>                 - qcom,sm4250-qusb2-phy
>>                 - qcom,sm6115-qusb2-phy
>>         - items:
>> --
>> 2.7.4
>>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

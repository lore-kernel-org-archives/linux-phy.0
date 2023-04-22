Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DCC3C6FD18
	for <linux-phy@archiver.kernel.org>; Sat, 22 Apr 2023 09:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNKhAAq1hdALan/rLsFx5MN/E1b1OFHmUh2kmimL8Ow=; b=orPvQoKbQFuSC5
	W6JZDN5L2K9dQfFtu0K+QkpLKqTMKQKkRwqc8HlgaTdJSs8c7Gp4mn5tUOdvJsk+vpqEjuZ5DeJ2P
	gVpZazBXUETsLOBSm0l1oUZnDdjJKkts53eE1vQ+rriSElCjuv+9HjoYykQh3Mu4MmYv00pmV2Igi
	Kq6w6GkTJgwPtKqO+bIQU5htTzyN06IDxXvTK+dFDF4ZLTlSGNJ0Ghb4s/k4tw0pfiYpb64xJbQAs
	SqyLFP4V+8/HbJaWmyPCRkQD4i8o9EoeDWKOCLSOyUJof8OMZbzrtC2Uj98JG1QAE0oqj25OmGuCJ
	behKV6+mIAnGOC49OxxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pq9KF-00Cady-1h;
	Sat, 22 Apr 2023 09:14:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pq9KC-00Cada-1P
	for linux-phy@lists.infradead.org;
	Sat, 22 Apr 2023 09:14:34 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33M9BmRl018828;
	Sat, 22 Apr 2023 09:14:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=jwIMpzTLAw1N3sO+o954FUjaABUc40+u3uVtBjTNF20=;
 b=JVgeR4NLoGlL7G0cHVeJZr54Ls/9OuAsiHQxctaRlE+f5aOqn32akac3huNnjoUxSHyG
 rfyow4mHO8rmsh1YQvGwOzowbucvrENbTvkn1fM7x+TCRVzlhbYlOJeTT2nJlSh0CNHT
 vpnNQx3ktAe5U4FB+ltAU2JPQXNv99P8repHR7gE25Sb2uhimVFeqM60TqAGDdD2lNDx
 gr3+CzwB3FI/WEyPC3AeqmcBWZ9ApzVaYoRH8TfllLaEdlDRZg9ok3xEf0MFSQ3e2lgl
 bE8k8pfSy3aP8mdSo/rqzKLNeFrPAXs55+ElXFLm81Vn2/9/YbQCxGii1my03bllpweE Eg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q48ch08ne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 22 Apr 2023 09:14:28 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33M9ESe2013947
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 22 Apr 2023 09:14:28 GMT
Received: from [10.216.25.248] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Sat, 22 Apr
 2023 02:14:22 -0700
Message-ID: <af12bafd-9433-6639-b55f-478517ebc33d@quicinc.com>
Date: Sat, 22 Apr 2023 14:44:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574 bindings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <quic_srichara@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_arajkuma@quicinc.com>,
        <quic_anusha@quicinc.com>, <quic_ipkumar@quicinc.com>
References: <20230421124150.21190-1-quic_devipriy@quicinc.com>
 <20230421124150.21190-2-quic_devipriy@quicinc.com>
 <49e0e62e-3746-1387-fb9a-49739423fb63@linaro.org>
From: Devi Priya <quic_devipriy@quicinc.com>
In-Reply-To: <49e0e62e-3746-1387-fb9a-49739423fb63@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: HMGISo8qQvS8ZoAExfut7ha-xU-K1Nfm
X-Proofpoint-GUID: HMGISo8qQvS8ZoAExfut7ha-xU-K1Nfm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-21_08,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304220080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230422_021432_505507_AFB57E11 
X-CRM114-Status: GOOD (  16.68  )
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



On 4/21/2023 10:19 PM, Krzysztof Kozlowski wrote:
> On 21/04/2023 14:41, Devi Priya wrote:
>> Add bindings for the PCIe QMP PHYs found on IPQ9574.
>>
>> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
>> ---
>>   Changes in V1:
>> 	- Introduced a new binding for ipq9574 as suggested by Krzysztof
> 
> It looks it depends on the clock header.
> 
> Either mention the dependency here or better convert the clock IDs to
> numerical values. With the second approach the patch can be applied
> independently from clock headers patch.
Got it. will use numerical values for clock IDs.
Just to mention, it depends on the below series which is merged in 
linux-next/master
https://patchwork.kernel.org/project/linux-arm-msm/cover/20230316072940.29137-1-quic_devipriy@quicinc.com/
> 
>>
>>   .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        | 90 +++++++++++++++++++
>>   1 file changed, 90 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
>>
> 
> Assuming you tested it (as Rob's bot cannot due to dependency):
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Yup, thanks!
> 
> Best regards,
> Krzysztof
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

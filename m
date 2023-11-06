Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58B32C4332F
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 09:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSykJ9zq1TFLoQKRblPuzOfyhhFGJRXb0ez6OlF1MBY=; b=Rf9+e4KXNmP1fw
	ynsE9gg2Tdy/dcvjvxKPnY8SUXCInTrhLIPd33pwVytM0mu8+R4ksNUfJrGkKg+DiBwZzub0mQUpQ
	+9LbiuPsiz/NeuBOQd4EULviMWkR1uN3y8HcHUQmYcWcsdAglXYCT3RLQ2QFbaOzJaBBmTm0Ffl/1
	Mhzi30crkxLvgl/Ikpb62dvH1PLcMsBGCPo79OYnYdfgrV9V5Ggjj0anxnUs/Ip4PsoWZmYSk2c+k
	SfSWy+pmLwY2huq6UuhESG7W8Sld+D2DX29atjJagvEwomzkgB81vM5fPReuh/5Z639z1SesaK/Jb
	pEsFR8UGMZ8n5Zp0F36Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzw7O-00GBZh-0I;
	Mon, 06 Nov 2023 09:42:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzw7J-00GBYY-28
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 09:42:00 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A69UmJm013204;
	Mon, 6 Nov 2023 09:41:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=XG7DqSJeQJKx8MHCJ/YU4nBle4JN6M8SRLuC5oNFqfY=;
 b=gjxrt1lI6EhD3qioqaUb7hS79A1MAMfE9n0DJJSSM2bST7Jf3PDaeZq8hEc0zCtTZFV5
 ySFZnGz+V4nIW+8J48EE0bI82i30KiaQPR9qwAONczwLpculY062ohzOrUNBtDyFOhP7
 SNuVuur274O1fuEuwro0eQzgYV7XN2u/FKbMs/agbM+IYGxnbFN4AUHmP/+CpYqKSaR0
 VKGsgHHEe98TMV6zBv8h0JCenLlF54cZ0vLbhCkDXn96jqGokx7rQP8xcFDTaoY/VgZZ
 Ptn+DBzlBslkIxKo4s7tPc9cY7QEr9AsuwnxzQCWOZkZDdCUUyJXS2nwA73IByU/HdEj jA== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u5eg3uptj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Nov 2023 09:41:42 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A69ffCj014306
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 6 Nov 2023 09:41:41 GMT
Received: from [10.214.66.58] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Mon, 6 Nov
 2023 01:41:38 -0800
Message-ID: <67518705-cfc2-4ae0-9cd2-0c33146cf48b@quicinc.com>
Date: Mon, 6 Nov 2023 15:11:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] phy: qcom-qmp-combo: correct sm8550 PHY
 programming
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
 <aabb8345-7b5d-447d-af79-1e5743465315@quicinc.com>
 <CAA8EJpoQ0k_4GSQyrziLYn1v942ppzNOvwxN55sLkZUUDWLe4w@mail.gmail.com>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <CAA8EJpoQ0k_4GSQyrziLYn1v942ppzNOvwxN55sLkZUUDWLe4w@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: SukmHfoCTb3zIWss7OKtOICtkaZZR5wX
X-Proofpoint-ORIG-GUID: SukmHfoCTb3zIWss7OKtOICtkaZZR5wX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-06_07,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 adultscore=0 malwarescore=0 suspectscore=0 mlxlogscore=414 clxscore=1015
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311060082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_014157_706827_BD527441 
X-CRM114-Status: GOOD (  14.27  )
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


On 11/6/2023 3:07 PM, Dmitry Baryshkov wrote:
> Hi Rohit,
>
> On Mon, 6 Nov 2023 at 08:46, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>>
>> On 9/12/2023 2:08 AM, Dmitry Baryshkov wrote:
>>> Fix several small issues with the QMP USB+DP PHY programming on the
>>> Qualcomm SM8550 platform.
>> Hi Dmitry,
>>
>> Can we have a conclusion on this series?
> Yes. Version 3 of this series was accepted by Vinod:
>
> https://lore.kernel.org/linux-arm-msm/169719381727.165658.9377101716537787206.b4-ty@kernel.org/
Thanks for the update!!!.

Thanks,
Rohit.
>
>> The USB support series [1] for
>> SDX75 depends on it.
>> [1]
>> https://lore.kernel.org/all/1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com/
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

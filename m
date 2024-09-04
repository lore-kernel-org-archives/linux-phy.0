Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A35DCD4857
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 17:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fAZf3rK15BpbHlmY0uV+DaMCp9PHd6Lf3Lyuu1108M=; b=e8EMUKMbTUK4xx
	S2mFtZE6edg7OlQw3Q0rwieFNuvrPhygf/rgvNL9EGbPQpNlkyLqEa4av26UHAbXeNsLfXadBjVEs
	yRj12VmQSpYj51iDYGSVD9rg6mhS0qL4eAYBoNxrt7Ru4UsLm3z1fmk0dfQpgzbTJJWZFD6hNnQzF
	7szN478nMm8xiCiK88FZxEsd1I1JOsD243jY+kSDE3VGL4h1QrWQmOZRgrH3TZd9bTgghsH/1wDgJ
	HedPl5Tmc2t7Fxb48ZMpWJPXBdiJjRCclg8pSX78TGuYNfywWNQ2rfvTkfk9tkzHZgY8M+L13IDo4
	nyMZTDh8O8gpD+/ow5Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slthh-00000005RPU-1Dd1;
	Wed, 04 Sep 2024 17:22:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slthe-00000005ROL-1Ovd
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 17:21:59 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 484BE0UI015575;
	Wed, 4 Sep 2024 17:21:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ifcXyK1VksfIVr5U6pkXKNqIKZ/EJtOyoODGhx5JbsE=; b=UdLEGLuVhu1yb7Fx
	lG9mdwwzMW5WtolFmXRSJnWnI1WI2B75Fk882TKESmqWvrUTgDd18iAtp3USfHkA
	Ch0yngdSQUN3w4PHaYkmRjzylMFZSa5VjRIk+1kfM5ioWk61fym0ZDOkTz/PfK+g
	ZippnJUkYdH9pNG1B/0PvNaLeRkR2y7fl+I9e8yu9Bcb9Hrhh1PrqD0uuGrPbZwh
	VklG9Tt7EvtTN6aH2smqI2dZM9qPIGe5gLyfToO8cQ1mY1Fd5tWhpHGFCcd9jJaI
	nLdAejtMl1cibJawy+c3dIu3lOz4InYqvxw2eUFbLJeRVsvOyQZabCKBtv5EKP7x
	qAQxnw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41dt69dp18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Sep 2024 17:21:45 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 484HLish025251
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Sep 2024 17:21:44 GMT
Received: from [10.50.7.129] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 4 Sep 2024
 10:21:35 -0700
Message-ID: <ea8ccb1e-2344-4c35-8a95-7b3f1fe23e08@quicinc.com>
Date: Wed, 4 Sep 2024 22:51:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 4/6] PCI: qcom: Add support for IPQ5018
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <dmitry.baryshkov@linaro.org>, <quic_nsekar@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <robimarko@gmail.com>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-5-quic_srichara@quicinc.com>
 <20240830083852.cwjc6skgypva6u6u@thinkpad>
Content-Language: en-US
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <20240830083852.cwjc6skgypva6u6u@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: MphsN_zb9IeVUWR0Vo0gGqdEPpeFOl7t
X-Proofpoint-ORIG-GUID: MphsN_zb9IeVUWR0Vo0gGqdEPpeFOl7t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-04_15,2024-09-04_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 bulkscore=0 mlxlogscore=850 mlxscore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2409040132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_102158_521910_112A3942 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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



On 8/30/2024 2:08 PM, Manivannan Sadhasivam wrote:
> On Tue, Aug 27, 2024 at 10:27:55AM +0530, Sricharan R wrote:
>> Introduce a new compatible and re-use 2_9_0 ops.
>>
> 
> While adding a new SoC, please add more info about the controller. Like the
> hardware revision (internal/synopsys), max number of lanes supported, max link
> speed, is it a derivative etc...
> 
  ok sure, will add.

Regards,
  Sricharan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

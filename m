Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3A46C47DD9
	for <linux-phy@archiver.kernel.org>; Wed, 28 Feb 2024 18:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgRcYeNx98xS/Wrj8BvQlHpUtuJZAlB/1VmZPWrfMLQ=; b=pC5MJDlTWlydYT
	bjPbXgNfQM/HDbGchw7XlYmzivludEGh4nfU06edvHMNLa0Wy5X/HkD6sxZa7LBAspi66rdFEX16i
	C7MoeHxdq9w4yvSJpGIdEicmSkfgXRCPKwJyI+JkJkXy+D1v283qrNR4kBDeA3pfkzBqkSdQCa/jH
	cl5wLHZ70c4T1Tmf5rgr2dcfbL3gXG9lTXkuC4Qqv5jTj98FN5QuXEUfgCjCzDPND5miIb0nLeCUo
	qdqJ9DXZYs9OYlmgJfoRmx1rYG88oNvEavq65+qdYGc8YczDkKTDtF/vFBPoqkvxYdwHuXWnJLNWi
	7gHHbV1zWjtJMoBcV/CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfOlW-0000000AWvq-2iFP;
	Wed, 28 Feb 2024 18:34:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfOlT-0000000AWvE-0rBR
	for linux-phy@lists.infradead.org;
	Wed, 28 Feb 2024 18:34:48 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41S7DHgw024408;
	Wed, 28 Feb 2024 18:34:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=rHlM6504boSe/WdCMqn0oovvsuz9yItBmL+8TFwM3uo=; b=ku
	qElOaxWnLZkmnbubjopF3VjcpHB3pWPd/fel6ORf7H+EA7DZv9BQmYHgG+aFVHo5
	+pjh7TMgiJz3bcW3SK1SsyZE4XFkTlWp2suSdvAWszeKltD83sZvJD+8TDsF3t5m
	VvL+wImFOZzslcBTqb94SVByy5O8T9RjhsxUAw1UbbVxEOLjJ8PZQkmJR5KqFLhB
	ebUsVhM0aBDxbKt5H0icmeghAgY32mswKYdmvGRV4aiEzf8YL/FpBSR2i7kqmHaD
	SBpr8DezoFHTstz/2zNjK9uA81z3MnjHRcd7ToC+vAvM4/txenXNqtQqePwoUGHW
	VajSpyEk+x6sTBNOiW4Q==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3whv1ft5t5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Feb 2024 18:34:16 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 41SIYFPX020955
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Feb 2024 18:34:15 GMT
Received: from [10.71.109.81] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 28 Feb
 2024 10:34:14 -0800
Message-ID: <c83fb5af-a42e-c9b8-1b70-3818a7fc7b37@quicinc.com>
Date: Wed, 28 Feb 2024 10:34:13 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix duplicate return in
 qmp_v4_configure_dp_phy
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry
 Baryshkov <dmitry.baryshkov@linaro.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20240228-topic-sm8x50-upstream-phy-combo-fix-duplicate-return-v1-1-60027a37cab1@linaro.org>
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <20240228-topic-sm8x50-upstream-phy-combo-fix-duplicate-return-v1-1-60027a37cab1@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: A9bimcU9Q5HOTvQYJ5KYb9jx2P-r-O1L
X-Proofpoint-ORIG-GUID: A9bimcU9Q5HOTvQYJ5KYb9jx2P-r-O1L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-28_08,2024-02-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 mlxlogscore=952 impostorscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2402280145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_103447_398574_BD764D13 
X-CRM114-Status: UNSURE (   6.59  )
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



On 2/28/2024 9:05 AM, Neil Armstrong wrote:
> Remove duplicate "return 0" in qmp_v4_configure_dp_phy()
> 
> Fixes: 186ad90aa49f ("phy: qcom: qmp-combo: reuse register layouts for even more registers")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
>   1 file changed, 2 deletions(-)
> 

Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

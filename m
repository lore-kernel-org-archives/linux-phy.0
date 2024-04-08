Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46599C67861
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 16:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5m4pMsyGBw8xy2UXxdVxsvoQlPMJA7/OcJRXw2j+18=; b=SHnDap664mTGYA
	B6btd+i2j3Baj4E1Q+2vRyxoczjiUSbN0ilThBINM+qHhLBHZSQUq5c1UjvOXG1uqEwpVI/7Xu04h
	Fh4NGyhmepJZzTgGZi1nJqKrfLxN05H6B69RvTn4rbGesJQGvOezwhfMTLGpU8BjfB7COzB0amUSP
	/XL9M7vUkouZkcFXnuNhe0V+iSkC+xCYNiKIt9uwHftqjv6ZzfUF/33PMj02DsgEyb6VdyUIIXT3h
	dMffcf874jt7IdU1plbmk6KT0T7NKc98zSROOwlA60jRCXTSmr7mvIR1g9d686/Uet9FRdEbjj42g
	nH8abNEpRLqyZSjuGj8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rts3j-0000000GECT-39r8;
	Mon, 08 Apr 2024 16:41:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rts3g-0000000GEBc-2VfR
	for linux-phy@lists.infradead.org;
	Mon, 08 Apr 2024 16:41:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 438AfWuH019862;
	Mon, 8 Apr 2024 16:41:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=TdhNvuTHq7dEziJFTqEsp6X+46JLjpqwWk7ezu+cHOc=; b=ci
	fxUkDfBmVemqO42SbMBEl7jyYeYtFtcPSOqwPnwdY5T5xmeuRDijxXlzsBSC3lyu
	tBmw4rl7p8aY6qz8WpDamKx7IrEK4N2mRtUFHMDxJoIlMbCLOa3HlfxsFnBjrsay
	IR7lXr+cjAaXOPhS0VtpdlcnZYAvsti2o/WywnsM1oip/o9KumoF+6Z5smx7dOry
	gVXym0kD+ag62WBbOZ9igxCho9k0ftsT/jpSHoGvib2mKesmOGZs8vt2y48q4ffR
	FZJVxgiYxpayRnZLHs0btK+d/886vWNML4hPZAr/wJI87Aiu+1G4cAIyRF51jxwb
	5pHDLWedHH89Fpks6oGQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xcbg39d0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Apr 2024 16:41:17 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 438GfHSJ025275
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 8 Apr 2024 16:41:17 GMT
Received: from [10.71.109.81] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 8 Apr 2024
 09:41:16 -0700
Message-ID: <23986455-9e35-0106-8835-6bd67bd90b7c@quicinc.com>
Date: Mon, 8 Apr 2024 09:41:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix VCO div offset on v5_5nm and v6
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Neil
 Armstrong <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Dmitry
 Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240408093023.506-1-johan+linaro@kernel.org>
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <20240408093023.506-1-johan+linaro@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 16U9_4TI00xjALNLzjMCNoRm_alnWFxu
X-Proofpoint-ORIG-GUID: 16U9_4TI00xjALNLzjMCNoRm_alnWFxu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-08_15,2024-04-05_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 mlxscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 clxscore=1011 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404080129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_094124_712040_0143ACA7 
X-CRM114-Status: UNSURE (   9.99  )
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



On 4/8/2024 2:30 AM, Johan Hovold wrote:
> Commit 5abed58a8bde ("phy: qcom: qmp-combo: Fix VCO div offset on v3")
> fixed a regression introduced in 6.5 by making sure that the correct
> offset is used for the DP_PHY_VCO_DIV register on v3 hardware.
> 
> Unfortunately, that fix instead broke DisplayPort on v5_5nm and v6
> hardware as it failed to add the corresponding offsets also to those
> register tables.
> 
> Fixes: 815891eee668 ("phy: qcom-qmp-combo: Introduce orientation variable")
> Fixes: 5abed58a8bde ("phy: qcom: qmp-combo: Fix VCO div offset on v3")
> Cc: stable@vger.kernel.org	# 6.5: 5abed58a8bde
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 2 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v5.h | 1 +
>   drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v6.h | 1 +
>   3 files changed, 4 insertions(+)
> 

Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA4AFECAAD3
	for <linux-phy@archiver.kernel.org>; Sun,  4 Sep 2022 18:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/teuZpuxN3/gwUXDB8RiQKYUS7OmyGi44hLJ9EhLSQ=; b=GgkPVfqhaPmPhv
	tRH6FS/Gi92CL1t8dyrREtFKWFP9qETLnxfcy063vRMPE9G/NDzOJO4n/lPpxa3v6XG60CA3FrHz7
	8pSIbEIoDM45t9DKrNmfDW4Dd/ijO8AIC9D2tNvRWgk7gm8gbeUnS9TiXoVE5C7gcl/PNkODQLPH7
	Q0TJDBynZSAj9SgFKcO6fBCMg7ZpKLCMZL48ZrdDDE608qLLteGvVsGdGNumIVL61c3L50fmDrYUE
	2LZjuNB2EFvSH63piZSGeC7iSHUhmprcEmmySbeEFke25tVGOH2DzZ2WlAtkHECxZx0EUsnnXY2Uw
	1F/ogFDHyKKYCJtCvu0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUuAj-0093dA-5K; Sun, 04 Sep 2022 18:16:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUuAg-0093ZJ-LN
	for linux-phy@lists.infradead.org; Sun, 04 Sep 2022 18:16:40 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 284HsKIH018843;
	Sun, 4 Sep 2022 18:16:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ubnAS8VgAnez/UAxDq8AwKFPMgv5RWi6uPoVQePbBlE=;
 b=WbMVm5gv0azn6Wu7ZjnkNCLfY+2vxCCFyRGvsXx7Bv0hh33UZaR+EohJEyNseHlB4oBQ
 cN6cdEZdPr20Q13sVn1N/AG1OcoGl4dmeZqleuRCWY5wCethSO5uWmyyNKPRDmkwrdoO
 zZGHsncyEy7Fb0WwEc5aoB2V5E9xyskCXDyM/mqmCgvh3rXatM/0x6fuQMpNBDQ+xY/6
 22LgvNAVk9LAlJ8ZXTZgYAB/TElNTclOed9jHys/6tKjcFt91f71MS0l+fXzA2mr6jo/
 6urbBsavP/KzyFoASY4qIFZev4OegD5WIhCa6YfqAx8OymZwusTpbOLdth8oHdn5jKYu yg== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jc07dabvg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 04 Sep 2022 18:16:22 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 284IGLM0027586
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 4 Sep 2022 18:16:21 GMT
Received: from [10.216.14.47] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Sun, 4 Sep 2022
 11:16:15 -0700
Message-ID: <7ec9f707-f554-4f50-e7fb-f66a6989daac@quicinc.com>
Date: Sun, 4 Sep 2022 23:46:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v11 2/3] phy: qcom-snps: Add support for overriding phy
 tuning parameters
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, "Andy
 Gross" <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
        Stephen Boyd
	<swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        "Matthias
 Kaehlcke" <mka@chromium.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, <devicetree@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <quic_pkondeti@quicinc.com>, <quic_ppratap@quicinc.com>,
        <quic_vpulyala@quicinc.com>
References: <1658384954-9506-1-git-send-email-quic_kriskura@quicinc.com>
 <1658384954-9506-3-git-send-email-quic_kriskura@quicinc.com>
 <20220830203518.pty67fyefho4ewgw@builder.lan>
 <31d459e4-57c0-85d1-2d88-e5bf0bed6604@quicinc.com> <YxTBewhBecSgXvPq@matsya>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <YxTBewhBecSgXvPq@matsya>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: wGhgHhrOrBDHo0fwH3Q3gDi2rhOx0CEz
X-Proofpoint-ORIG-GUID: wGhgHhrOrBDHo0fwH3Q3gDi2rhOx0CEz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-09-04_03,2022-08-31_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0
 priorityscore=1501 clxscore=1015 adultscore=0 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2209040093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_111638_770584_7F4A1A69 
X-CRM114-Status: GOOD (  21.01  )
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



On 9/4/2022 8:47 PM, Vinod Koul wrote:
> On 31-08-22, 18:41, Krishna Kurapati PSSNV wrote:
>   
>>> The ordering of this list needs to match the order of
>>> override_param_map[] and there's nothing indicating this in the code.
>>>
>>> I was considering suggesting that you add a enum/define and do
>>> 	[SQUELCH_DETECTOR_BP] = "qcom,squelch-detector-bp",
>>> 	...
>>> and then do the same in the override_param_map array.
>>>>
>>> But I think it will be cleaner if you add a const char const pointer to
>>> override_param_map and just specify these strings in the
>>> override_param_map array.
>>>
>>> Each entry will grow by a pointer, but multiple copies of the same
>>> strings (when added in the future) should be combined by the compiler.
>>>
>> IIUC, you want me to remove this array of const char*'s and embed them in
>> the override_param_map and iterate through it without using this const
>> phy_seq_props as a reference.
> 
> I think that would make it simpler..
> 
>>>> +static const struct override_param_map sc7280[] = {
>>>
>>> There's nothing ensuring that the loop below doesn't run off the end of
>>> this array. So when the next platform is added, there's no way to
>>> handle the fact that they might have a different set of properties.
>>>
>>> If you add the property name to these elements, that will no longer be a
>>> problem (and you can add a {} entry at the end of the list and check for
>>> this when looping over the elements.
> 
> Would be great if this is addressed as well
Hi Vinod. Thanks for the review. I have posted v12 addressing these 
comments.

https://lore.kernel.org/linux-usb/1662201048-26049-1-git-send-email-quic_kriskura@quicinc.com/

Regards,
Krishna,
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

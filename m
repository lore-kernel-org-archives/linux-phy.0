Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6207DC0219D
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 08:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bpJ9rrSDAkZ9o73/jiXwqZqkydN6mm5xV4sRIEzPIHY=; b=DuvU/bhp82uf9YMA9t+yzAO1AT
	IO1K8uLHJGeDO2QkeEj38TPIyJvm4xauZVj3puQ8KNHYZgww/2UrnQcrcJ+1EHw7J7//kGznFE6PA
	LqXt5j0QpPNdQ8DgjO/O52ub9uKnRg32ptUzoqiX/PTO69SR4z0rAzYeo/oCGhjxSPpzB3W369N8W
	w2Yw322eZ1y3fPSza9sft8ag1vTs/MJl3Czu/Kh87uoPJe6blEIdWlXNJg0pYkM8N0v0nf/qRB6Bj
	Oywe6UzregYkBRUcfRxxaV1Nak3VL3HEYeNhSTVIHP2sDClX5M1yRk/PrPVG050l79F3fcT9R+sw7
	iUTuiIsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiUWQ-0000000AGLt-1zMW;
	Thu, 13 Feb 2025 08:24:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiUIY-0000000AEFW-3ukr
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 08:10:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51CLRYi7013725;
	Thu, 13 Feb 2025 08:10:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y864eHeHSAEv/3coz6iIkCoZUwrDr88ZpoAZMvN/W7w=; b=HRi1o3HwkxhHD4dH
	cqQqd8ciqbN7cvXULBAjLukH6QSnz4wbe8u9vmrvz35awi6UWHs6cjqdgBG8y7QT
	NS1sEmTkK2uWMapxZzm2u0k6UT18wzACiB+5FMvbEZH+Ihf0juoU7fCM5MHOPqiu
	6yNVUCy+O+L7DVMO24/7AGEXg6WaXXlB6fJMhCK/XDYUqJTGpYKITKbeXWZWUzGU
	WmA0obwr6FVKNE2cE8CmOivKmjv5c2U1qis1IQf5pRG70vab3ZRHULb0KL/3Jz4V
	3DIf5YUTWGC+w6HRc/aZs07pOeHhLnf5kJi6Wx9LWb0cCuzLtyFYPU/EJ9w26XKm
	+p0uDg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44rsd7tyyb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 13 Feb 2025 08:10:11 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51D8AADi015183
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 13 Feb 2025 08:10:10 GMT
Received: from [10.239.28.138] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 13 Feb
 2025 00:10:07 -0800
Message-ID: <5bbd6b38-5c8d-65b2-f910-b125519bd037@quicinc.com>
Date: Thu, 13 Feb 2025 16:09:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 1/2] phy: qcom: pcie: Determine has_nocsr_reset
 dynamically
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Philipp Zabel
	<p.zabel@pengutronix.de>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <abel.vesa@linaro.org>, <quic_qianyu@quicinc.com>,
        <neil.armstrong@linaro.org>, <manivannan.sadhasivam@linaro.org>,
        <quic_devipriy@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
 <20250211094231.1813558-2-quic_wenbyao@quicinc.com>
 <6c38b6e028858662aa5d45f4a14b993860b73cc0.camel@pengutronix.de>
 <93f1f01e-e6b4-4dc2-9485-aba168c6d88c@oss.qualcomm.com>
From: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
In-Reply-To: <93f1f01e-e6b4-4dc2-9485-aba168c6d88c@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 3mvR0qXlMqjg2uBt2sDeiqHdIXHJTI6Y
X-Proofpoint-GUID: 3mvR0qXlMqjg2uBt2sDeiqHdIXHJTI6Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-13_03,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 clxscore=1015
 mlxlogscore=999 mlxscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502130061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_001014_986351_E2468997 
X-CRM114-Status: GOOD (  14.21  )
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

On 2/12/2025 8:31 PM, Konrad Dybcio wrote:
> On 11.02.2025 10:53 AM, Philipp Zabel wrote:
>> On Di, 2025-02-11 at 17:42 +0800, Wenbin Yao wrote:
>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>
>>> Decide the in-driver logic based on whether the nocsr reset is present
>>> and defer checking the appropriateness of that to dt-bindings to save
>>> on boilerplate.
>>>
>>> Reset controller APIs are fine consuming a nullptr, so no additional
>>> checks are necessary there.
>>>
>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
>>> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
>>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>> ---
> [...]
>
>>>   static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
>>> @@ -4203,11 +4196,14 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
>>>   	if (ret)
>>>   		return dev_err_probe(dev, ret, "failed to get resets\n");
>>>   
>>> -	if (cfg->has_nocsr_reset) {
>>> -		qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
>>> -		if (IS_ERR(qmp->nocsr_reset))
>>> +	qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
>>> +	if (IS_ERR(qmp->nocsr_reset)) {
>>> +		if (PTR_ERR(qmp->nocsr_reset) == -ENOENT ||
>>> +		    PTR_ERR(qmp->nocsr_reset) == -EINVAL)
>> Why is -EINVAL ignored here?
> If the NOCSR (partial) reset is missing, we can still assert the "full" reset
> and program the hardware from the ground up. It's also needed for backwards
> dt compat as not all platforms described it when originally added.

Seems like we really can't ignore -EINVAL. If no_csr reset is missing in
dts, it will return -ENOENT, which is turned into NULL by
devm_reset_control_get_optional_exclusive. -EINVAL indicates something
wrong in args we passed to the function and the reset property that need to
be fixed.

>
>> Without this you could just use
>> devm_reset_control_get_optional_exclusive(), which already turns -
>> ENOENT into NULL. That seems to me the correct thing to do, as from
>> driver point-of-view, this reset control is optional.
> Good point, I forgot _optional_ was a thing in the reset framework
>
> Konrad

Will use devm_reset_control_get_optional_exclusive function in patch v3.

-- 
With best wishes
Wenbin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEE8FC54E62
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 09:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxXDI+9lAsH/IkKO2ALqj6Ua6K7o4rnY6UNngtHR3ls=; b=n00HyIQDPTD+aC
	DkBNtLxgNJthgRHzcO8siYSdBpgdKd0+H7i5w2+7mMxP57jcwKowm4FHMIuyUrPKtUAhARJ+FBFbA
	aw/1jQtZr2GoQyO/UX6a/GtMsNyRfJU7duS5iz/C+XRmskbXLnPDkbJlnHgp6RvJVYzqIwUJ6bECB
	atsQsf78fRDNUuENEl9n75XVwixmpTVq1mpf7JOos10Np90/7/z7bHD6Rw7X0wwPEF6l31itYQUPM
	1bQ3XGBa2OZYeNP3qeEZg2FjV9Lg4Uq5Bu4FQ5j2TTD342mJr+DNdWGDwilE8PUsPMsDB1Zzh2A13
	p+9AIFXmrn/wvWXEb1dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFMC-0000000Eo6B-2Iwu;
	Wed, 28 Aug 2024 09:52:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFLp-0000000Eo0E-0NSr
	for linux-phy@lists.infradead.org;
	Wed, 28 Aug 2024 09:52:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47RLoxO3021979;
	Wed, 28 Aug 2024 09:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LZ/UZBqbrpDfh3OhZd0Fzvysdp6yYSxd2eS0/wozgjg=; b=Wv4VEiK9EMI+b4+h
	h8VJ5Cy7wTZcBh6aYAi1tgdDJeMOTZBgidrHpTQX/Q1HrLl8WKStiiEWKIwdLLQz
	ChnUNmbJ25haKVMD4xKZo+Z0NjvwOp5TwZ6t/U+R2HAcRkJRsMMhOPQV844sw0ud
	k8PgcUPIl2AqpQ1kOUU046N2GWQGZQfyKK/gras89CAhgwHWfttQxAhRdnQFaQzV
	cAwX/CYTYETNB66plMUli6Dj3R9ZT84zAL0K/wKzvCi16rFgA878gnIgA8iXyqWm
	Atu+eIKDh6xiqpUvLKJHx6S1WXvvtuvlMkywPIbyOyfsuDebhAMMW/WfGQG8Aryp
	iJaPJg==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 419q2xsc6v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 09:52:22 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47S9qLPd029799
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 28 Aug 2024 09:52:21 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 28 Aug
 2024 02:52:13 -0700
Message-ID: <d79f84f1-345b-4099-b1d2-567ebfd3789d@quicinc.com>
Date: Wed, 28 Aug 2024 17:52:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] phy: qcom: qmp: Add phy register and clk setting for
 x1e80100 PCIe3
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-4-quic_qianyu@quicinc.com>
 <3rwkr4tqyki7umt75bgy6wcs2whchw2vb5ckrkqffaizxm3ssp@glkarq76vl4f>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <3rwkr4tqyki7umt75bgy6wcs2whchw2vb5ckrkqffaizxm3ssp@glkarq76vl4f>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 2X_2s6x66qP3zlQeEjn_cCe0fE1nDiyF
X-Proofpoint-GUID: 2X_2s6x66qP3zlQeEjn_cCe0fE1nDiyF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-28_03,2024-08-27_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 mlxlogscore=955 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408280070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_025229_295082_231BABF8 
X-CRM114-Status: GOOD (  11.50  )
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


On 8/27/2024 7:38 PM, Krzysztof Kozlowski wrote:
> On Mon, Aug 26, 2024 at 11:36:26PM -0700, Qiang Yu wrote:
>>   	if (cfg->tbls.ln_shrd)
>>   		qmp->ln_shrd = base + offs->ln_shrd;
>>   
>> @@ -4424,6 +4641,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>>   	}, {
>>   		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
>>   		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,
>> +	}, {
>> +		.compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy",
> Undocumented compatible or your patch order is wrong.
OK, will put the yaml patch in front of this patch

Thanks,
Qiang
>
>> +		.data = &x1e80100_qmp_gen4x8_pciephy_cfg,
>>   	},
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

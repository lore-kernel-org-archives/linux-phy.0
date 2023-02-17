Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7121C05027
	for <linux-phy@archiver.kernel.org>; Fri, 17 Feb 2023 08:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hm5RykCdHJb7iIYWhHe2UixqgRmXL425QzRLEdDG5m0=; b=PkxHTCYdz69XWV
	on5xJ87JePgKoSAst58Tpsc6BEV2NoVGBLrcUl3xDC39v/y/8Yu+E+RvVfBtJ5RcMAmb8sA8uTuSr
	3KYN/uAIvCjWhm8Sh/vIXmew+XY71JWD8IOwVekQFasUUGBmfqxKQPVHDaXNqAHPuvJAER2HRXeuR
	XjHfBptrQ5WhPrATygVkEstBRCqFrW0avVRXY372u/5F67PtW4+LcAFvLUgVH5gfz3+S2SXrGVpPx
	FDPsEb52ro3iWCqBcxFg0J+aFD+kX8g6tazr1A4AM9wv/gSemHm+MsViwzu5ZKSL5S9Rizrc7Nf18
	mQnb56euxJCfpTRO1h2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSwPp-00DM71-7P; Fri, 17 Feb 2023 08:48:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSwPl-00DM4n-Nn
	for linux-phy@lists.infradead.org; Fri, 17 Feb 2023 08:48:23 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31H63KTZ014637;
	Fri, 17 Feb 2023 08:48:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=33eDyuvYJVBHbnCO5NSYD6X2R8vEOym0xz2B1IWSiNg=;
 b=OIzwO8AxZ1YEu1WVQkroLorCRDoyjaojbAzbQTYgUPPpqLFaxp4ghkZ9IX/VogWDw7qH
 yTKGdlOVi6ylU2qBDFvH7PeLyo+QW7Xc2ss0akTBlH5SVw6c8EhiuCLsDXSwfm+S5M7T
 f5ph1fTyguTQKzyO3leW+qksSnT8+1VJubAYzrHZdRTrPcQBBcTXwUWsVP2fcGqyBdbB
 83qiq7ls4+U69wb4NijORuMQQCt3u2KHt3zRewnZE2DTzCYw0SK9tUqyzW+aaQsjDyzf
 vyPvIo1Vgh15nhK5x9zYP83dh8+VEs4fDveRVNHW7kPuSiycyVJNbfcDw1jkBEbfci6K bg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3nt10u0v06-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Feb 2023 08:48:16 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31H8mFVp000693
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Feb 2023 08:48:15 GMT
Received: from [10.216.47.237] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Fri, 17 Feb
 2023 00:48:06 -0800
Message-ID: <a987fc17-3924-7ece-59e2-3fa1d000afc1@quicinc.com>
Date: Fri, 17 Feb 2023 14:18:03 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 0/7] Add PCIe support for IPQ9574
Content-Language: en-US
To: Devi Priya <quic_devipriy@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-clk@vger.kernel.org>
CC: <quic_gokulsri@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_arajkuma@quicinc.com>,
        <quic_anusha@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
In-Reply-To: <20230214164135.17039-1-quic_devipriy@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: SkGcIu3rfLWbX5OreuJ1hWeFzovxmJIH
X-Proofpoint-GUID: SkGcIu3rfLWbX5OreuJ1hWeFzovxmJIH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-17_04,2023-02-16_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 malwarescore=0 mlxscore=0 impostorscore=0
 adultscore=0 mlxlogscore=693 phishscore=0 suspectscore=0 clxscore=1015
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302170078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_004821_808388_280EFB5A 
X-CRM114-Status: GOOD (  10.34  )
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



On 2/14/2023 10:11 PM, Devi Priya wrote:
> PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
> are found on IPQ9574 platform. The PCIe0 & PCIe1 are 1-lane
> Gen3 host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
> 
> This series adds support for enabling the same
> 


<svarbanov@mm-sol.com>  --> This is bouncing, please remove it

Regards,
  Sricharan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

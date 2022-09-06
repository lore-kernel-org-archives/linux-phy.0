Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44512ECAAD5
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 16:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKruYdDnFV8LmLnrUTwgQPEVcEjDnuCILo3L8gqxnLo=; b=tTv2RvfJGO+2KB
	PvRPsnUJVW2gtCisJfhk//pPEDxx5n9LZYJ7G6TR1UNWWcUzOpIqkygYynMf2nJZLIQki9+dH2t7D
	a6+ktHhcMKO2AvnscU+/Hk3h9PoyyN7K80eg7Usw6+7852UEv+GvM1YiAwazj6ULQhZGyY65cXoSo
	3SzrLuzPl+59wmlZm8T8KEU6XKOqVO5csrtBiPLg09fnYJsYvsaygkXngSbdc+aSqhjVupkdpGuBb
	cqO2K+ubIqEwsriQ1clw3y84t03XKjH9GCVH2NNs6Wkc9perRFhXr5D83dr5vKJcOEu/VfLecCdvo
	5/yxawlRSUriJD3EwUqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVbU7-00FRky-T6; Tue, 06 Sep 2022 16:31:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVbDc-00FGr0-D5
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 16:14:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 286CWWUb026293;
	Tue, 6 Sep 2022 16:14:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=h5BgBKL+F8wAqWSvAJ0pDMx/YCeZeVPg3n3Av6WFlcs=;
 b=eUp0Rr4sZXWW6JYC7UA8x+MfLtNMmJkOoU6N83vDH8rU7PCuA/71S2zpInvVlDDOKagB
 KakyrFxCSaBuph6TZfZW5j0/abmUP/L1ld4hSSe+07kpnjQcb0L5JcrczLz1MmYPFC7m
 fg83nDu0H2luP4lz7WOA/X2nscsBY9O1FyMDTEfROx/KG6W1RFu85A+0F34KRTtoC2Jc
 UpaLDcIJJEN2YJqvg1aFjvjMbbDzJsn5rx/c0tzGiRyszQ/6HXS0Imesns9UuJw4Cwqa
 lRnkVUuAASRgEcXlJxVfF7oZBoYz0/zayD0wFkKe54bC6l7e5IDH8fSPkWlu0KIPw8A2 lg== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jdusrjr36-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 Sep 2022 16:14:28 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 286GERi1002600
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 6 Sep 2022 16:14:27 GMT
Received: from [10.216.11.219] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Tue, 6 Sep 2022
 09:14:21 -0700
Message-ID: <e61dc3f2-7c56-2474-fdaf-f0ad0337d67a@quicinc.com>
Date: Tue, 6 Sep 2022 21:44:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v12 0/3] Add QCOM SNPS PHY overriding params support
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson
	<bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Wesley Cheng
	<quic_wcheng@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
        <quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>
References: <1662480729-10187-1-git-send-email-quic_kriskura@quicinc.com>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <1662480729-10187-1-git-send-email-quic_kriskura@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: y9mUZDpt0vE_JVAKigAvO8uCIXkGj54w
X-Proofpoint-ORIG-GUID: y9mUZDpt0vE_JVAKigAvO8uCIXkGj54w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-06_09,2022-09-06_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0
 priorityscore=1501 mlxlogscore=769 malwarescore=0 suspectscore=0
 clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2209060076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_091432_519680_FEC4598D 
X-CRM114-Status: GOOD (  19.35  )
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



On 9/6/2022 9:42 PM, Krishna Kurapati wrote:
> Added support for overriding tuning parameters in QCOM SNPS PHY
> from device tree. This parameter tuning is required to tune the
> hs signal on dp/dm lines for electrical compliance to be successful.
> 
> Changes in v12:
> Fixed nitpicks in driver code.
> 
> Changes in v11:
> Made changes to logs added in phy driver.
> Fixed nitpicks in code.
> 
> Changes in v10:
> Fixed patch headers.
> 
> changes in v9:
> Fixed nitpick in driver code.
> 
> changes in v8:
> Fixed nitpick in driver code.
> 
> changes in v7:
> Fixed nitpick in driver code and dtsi file.
> 
> changes in v6:
> Fixed errors in dt-bindings.
> Fixed nitpick in driver code.
> 
> changes in v5:
> Fixed nitpicks in code.
> Added minimum and maximum for each parameter added in dt-bindings.
> Added proper suffixes to each parameter as per dtschema.
> 
> changes in v4:
> Fixed nitpicks in code.
> Initial compliance test results showed overshoot in the middle of eye
> diagram. The current dt values were put in place to correct it and fix
> overshoot issue.
> 
> changes in v3:
> Added support for phy tuning parameters to be represented in bps and
> corresponding register values to be written are obtained by traversing
> through data map declared in the driver.
> 
> changes in v2:
> Reading the individual fields in each overriding register from
> device tree.
> 
> Krishna Kurapati (2):
>    phy: qcom-snps: Add support for overriding phy tuning parameters
>    arm64: dts: qcom: sc7280: Update SNPS Phy params for SC7280 IDP device
> 
> Sandeep Maheswaram (1):
>    dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy override params
>      bindings
> 
>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |  88 +++++++
>   arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           |   6 +
>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 252 ++++++++++++++++++++-
>   3 files changed, 344 insertions(+), 2 deletions(-)
> 
Hi All,

  Please ignore this series. Re-sent v12 instead of v13.
Sorry for the inconvenience.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

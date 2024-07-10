Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9486FC3DA41
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jul 2024 16:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTQ+KNCeoBctIJ6NbYs46nxQHPRCcnzKDfAUP7Pjgzo=; b=I3/f6946z2Bizl
	1RVozydMUJEgtxxluZmw6K1gkQWlQNk3toNVTmQMmCFu6gMNzW4w5kb6gTnyDPmxAboL0eXrlYFfd
	COXKP/FZ5XWGsPOXCN525yry8tYpT1Mb9hxqW1VAC73fJT4O+95iR5+Zp2mNdQYAzSKboa6ed2Nff
	k795iTVCNzj9W3CdfvtJEnHqXX0jjzX/Da8yqG/Q8DLySdtTX743IjIHNg5PTWH66vr1TrRMHuA0O
	rYth5W5J7JBz2CxKPwAGcb/STmKjNYP/finWYL2n4Ep/3GWIVY6ywtSyFUr9vxl48Z43MzVG8SywZ
	dQ2zEq2cnBLIMy+AGPDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaRn-0000000BDJN-1JoC;
	Wed, 10 Jul 2024 16:45:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaRk-0000000BDI9-2z06
	for linux-phy@lists.infradead.org;
	Wed, 10 Jul 2024 16:45:38 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46A9avof016973;
	Wed, 10 Jul 2024 16:45:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G6LwVwxoe1zXgroiWAGG01bsemNaFzH2jQrDan8X8XU=; b=YxFQKRIXKp1iLhGp
	13xWuMZ2xCXHenujZi3TleVUCjn2p3x6godAVHghdvT6JLFvKZwSz5fLBwp8Qhp4
	Wq5LGos1zikBDsGBjeFWrus5tbGkdIY4QRXtinVvTopbDZtHLLagMS/TNdytn60P
	Z5LgzOAeuGPbzAPsObnL07mOtgqtqHNognAMMONPjgtoiHfOkeIX40jb3Qa7aKh5
	LY4yall+q/fPdcGw4vxVXDWTi6q4GXU4ej7Su0phbrNqgvsRsv3mTpajKwAlMseb
	rmosSzw9E2CQS9wVQqYIISIOH/LQsMeO2xvz62KOlhsZCsshOuuWyA8hECXydmIh
	sgqLAA==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406y3hhhxr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Jul 2024 16:45:32 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 46AGjJMO006063
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Jul 2024 16:45:19 GMT
Received: from [10.110.80.193] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 10 Jul
 2024 09:45:15 -0700
Message-ID: <3b8684f0-c89d-1a76-6bc5-93ced59dc51c@quicinc.com>
Date: Wed, 10 Jul 2024 09:45:14 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings
 for QCS9100
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <kernel@quicinc.com>
References: <20240709-document_qcs9100_usb_hs_phy_compatible-v2-1-c84fbbafa9d6@quicinc.com>
 <20240710162745.GA3212156-robh@kernel.org>
From: Trilok Soni <quic_tsoni@quicinc.com>
In-Reply-To: <20240710162745.GA3212156-robh@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: eK17DbsDWlOOU_1KyisRLNdD1-0qkt-C
X-Proofpoint-GUID: eK17DbsDWlOOU_1KyisRLNdD1-0qkt-C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-10_12,2024-07-10_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 spamscore=0 adultscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1011 mlxlogscore=999 impostorscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407100117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_094536_815020_AAE896C1 
X-CRM114-Status: GOOD (  18.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/10/2024 9:27 AM, Rob Herring wrote:
> On Tue, Jul 09, 2024 at 08:46:19PM +0800, Tengfei Fan wrote:
>> Document the compatible string for USB phy found in Qualcomm QCS9100
>> SoC.
>> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
>> platform use non-SCMI resource. In the future, the SA8775p platform will
>> move to use SCMI resources and it will have new sa8775p-related device
>> tree. Consequently, introduce "qcom,qcs9100-usb-hs-phy" to describe
>> non-SCMI based USB phy.
>>
>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>> ---
>> Introduce support for the QCS9100 SoC device tree (DTSI) and the
>> QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
>> While the QCS9100 platform is still in the early design stage, the
>> QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
>> mounts the QCS9100 SoC instead of the SA8775p SoC.
>>
>> The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
>> all the compatible strings will be updated from "SA8775p" to "QCS9100".
>> The QCS9100 device tree patches will be pushed after all the device tree
>> bindings and device driver patches are reviewed.
> 
> I'm not convinced this is not just pointless churn. Aren't we going to 
> end up with 2 compatible strings for everything? SCMI should just change 
> the providers, but otherwise the consumers are the same. I suppose if 
> clocks are abstracted into power-domains (an abuse IMO) then the 
> bindings change.
> 
> Why do we need to support both SCMI and not-SCMI for the same chip?

IOT SKU of this SOC is using the non-SCMI solution and Auto SKU
of this SOC is using the SCMI based solution due to additional
safety requirements. 


-- 
---Trilok Soni


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

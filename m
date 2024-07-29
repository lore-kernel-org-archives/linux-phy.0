Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93681C3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jul 2024 09:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4syH9TjmPMdKM2Rh7KPK9ronI5pF+s+hUR7wDuBjERc=; b=1hzFoimc0S1KMj
	mND8jFgEA1EoXTlvehhPKymyADa3lHHZrk/uX2v3TneGb7OnhuHWwgmBvgkaMNFs4Xl6cChqjpmmN
	JJlUTnumCCK8WzjNptjj52PfqNM6DtOruGetQtpyAM72SQc5BhLpBCJNWTh0u7EVRFKeDeTTWYsmW
	KfwXCOcSCk9reN/p6TiSndsYkXyrKV8GxcaqzbFv90vALshFS3dvI7pa9fTiElhxvagV9BqgOQ2TZ
	YXAJRk982CwstcsA6/w4VykU5OUbPYpIXj78IZ0G7jZEauKj23AJ1nFF22GjpuaqwbAhip7uOypOe
	sdrQRVu+ysexe+jZbeGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMqR-0000000AjiG-1Gyf;
	Mon, 29 Jul 2024 09:39:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMpa-0000000AjP7-280k
	for linux-phy@lists.infradead.org;
	Mon, 29 Jul 2024 09:38:16 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46SNFngQ030779;
	Mon, 29 Jul 2024 09:38:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R3DuZyTIPM+eAkEnapQy5bueU7+MV+bnyZV02KN0a68=; b=ZrOVh4hqVbIJWyFo
	VZAtWQ6y5ICGxz2ZE/zvks2yptENpNQio8aCFWSx6emuv7Cmmw5c95UDeWmtn0Hm
	tCZR8sgp+FlDT5q/kiXS8Mh25qDEykkHEeOT9KDgg2YxeQRMBL7OOkrryoWQuO1r
	gHdryfYGDV84+AvjoPm20pAMH/5qV1IDwb382P30pzdVVBE7gq1l98FkddoVxCpJ
	7Z4PlrX72wIKZIR1YqGY0imRyUYRr1oIs+hL/qAu7FpceUny9PR+/Nsi7P/rdY0K
	MvGi6ma1VYrezu/cBKyFzPo3ZTpgnn9PA0vvuENd0/gXXKh3Pnsvotgb8qKvoF+W
	y02NOQ==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 40mrytuna5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Jul 2024 09:38:09 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 46T9c73H024169
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 29 Jul 2024 09:38:07 GMT
Received: from [10.239.132.150] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 29 Jul
 2024 02:38:01 -0700
Message-ID: <108d2cf4-2b17-4ce1-80aa-988e36de533d@quicinc.com>
Date: Mon, 29 Jul 2024 17:37:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings
 for QCS9100
To: Rob Herring <robh@kernel.org>
CC: Trilok Soni <quic_tsoni@quicinc.com>,
        Tengfei Fan
	<quic_tengfan@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <kernel@quicinc.com>
References: <20240709-document_qcs9100_usb_hs_phy_compatible-v2-1-c84fbbafa9d6@quicinc.com>
 <20240710162745.GA3212156-robh@kernel.org>
 <3b8684f0-c89d-1a76-6bc5-93ced59dc51c@quicinc.com>
 <51302de0-5e4c-4e2a-85a0-e22549baa13c@quicinc.com>
 <20240711200354.GA2482879-robh@kernel.org>
From: "Aiqun Yu (Maria)" <quic_aiquny@quicinc.com>
Content-Language: en-US
In-Reply-To: <20240711200354.GA2482879-robh@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Uy67C5vQlgEaIe1ALIPFJy3iwFF2f_Jm
X-Proofpoint-GUID: Uy67C5vQlgEaIe1ALIPFJy3iwFF2f_Jm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-29_07,2024-07-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 mlxlogscore=999
 mlxscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2407290065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_023814_933940_E2763777 
X-CRM114-Status: GOOD (  22.83  )
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



On 7/12/2024 4:03 AM, Rob Herring wrote:
> On Thu, Jul 11, 2024 at 06:05:57PM +0800, Aiqun Yu (Maria) wrote:
>>
>>
>> On 7/11/2024 12:45 AM, Trilok Soni wrote:
>>> On 7/10/2024 9:27 AM, Rob Herring wrote:
>>>> On Tue, Jul 09, 2024 at 08:46:19PM +0800, Tengfei Fan wrote:
>>>>> Document the compatible string for USB phy found in Qualcomm QCS9100
>>>>> SoC.
>>>>> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
>>>>> platform use non-SCMI resource. In the future, the SA8775p platform will
>>>>> move to use SCMI resources and it will have new sa8775p-related device
>>>>> tree. Consequently, introduce "qcom,qcs9100-usb-hs-phy" to describe
>>>>> non-SCMI based USB phy.
>>>>>
>>>>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>>>>> ---
>>>>> Introduce support for the QCS9100 SoC device tree (DTSI) and the
>>>>> QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
>>>>> While the QCS9100 platform is still in the early design stage, the
>>>>> QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
>>>>> mounts the QCS9100 SoC instead of the SA8775p SoC.
>>>>>
>>>>> The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
>>>>> all the compatible strings will be updated from "SA8775p" to "QCS9100".
>>>>> The QCS9100 device tree patches will be pushed after all the device tree
>>>>> bindings and device driver patches are reviewed.
>>>>
>>>> I'm not convinced this is not just pointless churn. Aren't we going to 
>>>> end up with 2 compatible strings for everything? SCMI should just change 
>>>> the providers, but otherwise the consumers are the same. I suppose if 
>>>> clocks are abstracted into power-domains (an abuse IMO) then the 
>>>> bindings change.
>>>>
>>>> Why do we need to support both SCMI and not-SCMI for the same chip?
>>>
>>> IOT SKU of this SOC is using the non-SCMI solution and Auto SKU
>>> of this SOC is using the SCMI based solution due to additional
>>> safety requirements. 
>>
>> More add-on information, IOT SKU which have qcs9100 soc mounted will
>> have firmware releases which support non-scmi solution.
>> And AUTO SKU which mounted with SA8775p will have different firmware
>> releases which support SCMI solution.
> 
> Yes, I understand the difference. My question is why should upstream 
> support that? Normally, I wouldn't notice or care, but the churn of 
> renaming everything makes me notice. Why do the maintainers need to 
> review all these extra changes because QCom couldn't figure out their 
> plans?
> 
> So after you duplicate all the compatible strings, what's next? Changing 
> all the SA8775p bindings which is an ABI break? Presumably, some 
> bindings may not change at all? In that case, you don't need any rename.
> I have no visibility into what's coming next, so please educate me.
> 
> The minimal amount of changes here is you are stuck with the existing 
> identifiers for the non-SCMI SKU. Then you can add a "new SoC" for the 
> SCMI SKU. You might not like the names now, but you picked them and are 

After considering the feedback provided on the subject, We have decided
to keep current SA8775p compatible and ABI compatibility in drivers.
Let's close this session and ignore all the current patches here.
Thank you for your input.
> kind of stuck with them.
> 
> Rob

-- 
Thx and BRs,
Aiqun(Maria) Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

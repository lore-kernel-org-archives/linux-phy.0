Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C7F6C54E4A
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 16:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OMGVfVZXE9ZaAFAavC8iLMbl/F9g7aBYSAes9DNgp4Y=; b=19NkJ1Oesq4ofEjCIphEoJmOdZ
	R6NGcPcZy6M929zdHFkt3YxkQUHOsCBQLt8viHgZoyGV0cAh0UuV71Yn/IgC++j4Oq7qkPl74C/vr
	EkZm4HAJgMnL2tQHafJFgvIpYlY/AVrZIE6Zw/9Ch851B9XJX1n/oPoX/i1F8gGRYYBzM0Ep0AM5y
	bq46F77dnfhsVoCBZ1dzkXaMI0cuIUVYa2VTJQaKVfApVCbBz70qp/jTVI489UcZar9SZSMXaLWe1
	ia9bz2RPclx4ksivt+QLpT7jre49/EfdLRkIWrm9qLfJL6cJhAUqtCUbdEA3O8RJUKIdk5evJ5Wr8
	mNmNvnqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtkY-00000000u3I-3VtL;
	Wed, 06 Mar 2024 16:04:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhtkU-00000000u0g-2UMe
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 16:04:07 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4267rSim029054;
	Wed, 6 Mar 2024 16:03:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=udjqwGjeA5cBD+ZblmObsFRwtHr3lpuOSBQ6XJh6FZ8=; b=nd
	yeMeVriIUUHglor/qaPslWmdHsRP4SwefpVPmfd4McrbwYXcv62+YH7MYRNhXO/R
	AOMRNvC5xJfPmioUw5WV6jNFleuIR8n6TJv/nfR1Sayd2KKYWkvogxbg5cqlemI0
	HtSw0UbsDqnntbJl8Mdq3YN5yKhlgl7zhafaWvU8o9XkJI81suyA9WI7rbeyZjmU
	8pGXb+JJFVujf3WVpP0W0UYSDMyf40/YC8cBTINh5AZzQi1i93mMJ6CdvBmkqvI1
	buGJSAPhnqUFPrXqATDYZIWiC3KpJep4vtmaZvEJd4YDodkgR1FfHtcYyKLew379
	MBVbUqBMT1quCpKd8+ww==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wpepc9qqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 06 Mar 2024 16:03:59 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 426G3wcw028610
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 6 Mar 2024 16:03:58 GMT
Received: from [10.216.51.173] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 6 Mar
 2024 08:03:52 -0800
Message-ID: <b832bd70-540f-4dab-955e-ba98f7a5f31d@quicinc.com>
Date: Wed, 6 Mar 2024 21:33:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 0/3] Enable firmware-managed USB resources on Qcom targets
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, <andersson@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_wcheng@quicinc.com>,
        <Thinh.Nguyen@synopsys.com>, <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <quic_psodagud@quicinc.com>,
        <quic_nkela@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <ulf.hansson@linaro.org>, <sudeep.holla@arm.com>,
        <quic_shazhuss@quicinc.com>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1697b03c-56ab-4e8b-a268-f9ceeed91c31@linaro.org>
From: Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <1697b03c-56ab-4e8b-a268-f9ceeed91c31@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 9wplb99ItW5xKvgU3B8r73zurArmM6xI
X-Proofpoint-ORIG-GUID: 9wplb99ItW5xKvgU3B8r73zurArmM6xI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-06_10,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 mlxlogscore=848 adultscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2402120000
 definitions=main-2403060129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_080406_680894_9D1475A1 
X-CRM114-Status: UNSURE (   8.12  )
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

On 3/6/2024 2:39 AM, Konrad Dybcio wrote:
> 
> 
> On 3/5/24 17:57, Sriram Dash wrote:
>> Some target systems allow multiple resources to be managed by firmware.
>> On these targets, tasks related to clocks, regulators, resets, and
>> interconnects can be delegated to the firmware, while the remaining
>> responsibilities are handled by Linux.
> 
> Aside from the comments you already got from others, please change
> [RFC m/n] to [PATCH RFC m/n] so that your series isn't filtered out
> out maintainers' inboxes due to the missing PATCH keyword..
> 

Sure. thanks Konrad.

> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

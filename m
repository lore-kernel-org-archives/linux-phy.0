Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7817DCF9C6C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 03:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OAnhjZyyzxmDGkpeO1JDm5DL1j5WOOI6icfRUG8GMc=; b=NxB1ivnRCsY3JG
	9M1nvSGzzi24BiAKeokRkzd7JIYjTK2ODIPcZZoVk1PEFWDaz/1NP49xmzrobwtCE1bwThKI5YB/X
	IbUkuHaXNSa5IK96249DBlhC/kwaFeW+rmMN1NJbiifD/kyC+zC/PK203wgYbZQ1ehaCEweQNgXoh
	F7sDcip46afY2Mx+fuF/MVrnxdL8Zce7VU0TlTkuQsp5C/Kcx5+OL0tTejxZAsbPN8Vy2yIU6J4Nt
	J10xgU0b9IgXpbbOG//QqNEkDtV4vjFeUEp7e5HkbTF71N+dCAF4nOVWxXA44hB+aLH2yN+Y8BQi4
	+0xkCNrRCxeULk6g+VBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stItw-00000003vAK-0hkM;
	Wed, 25 Sep 2024 03:41:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stItM-00000003v5R-2Wip
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 03:40:41 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48OJ57ll014296;
	Wed, 25 Sep 2024 03:40:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8IaeXU8v7pvd1GaZ60wnggcBhffoHu+Rw5ZykBmr74U=; b=Qo2KTyM8isGhWo9n
	mgCwFEO4gu1iWwBZrFmAclykWyQTfU7+ca70n91SXdfCT4aHdPe6Ud6iWsvWG66R
	KaOttd4kqP+64No4lQwPV0PCR3+YpwF6CTD7fmGDzFL3+F8W6LKePGE6h894eyJ+
	QqI+49eW5Tc/xW3x2CbbVuaRNVoAbyflmGz2bMEO4M+eWsMW8kzpA2oVHmhKP+Gy
	wc4eYt4VkraYVU+/B46AGPQs1OdVTUFRYtto+M7TnnitJIG3Lq7pmEH0+i7gnEbH
	6mP8/1P4kLu161Z0CExEV6vmZvRiNESGtVTaZWUU6Xsw4sOZhWVs6LPa26j/Oxu3
	nzT5DQ==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41snfh2xay-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 03:40:34 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48P3eXPj012440
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Sep 2024 03:40:33 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Tue, 24 Sep
 2024 20:40:28 -0700
Message-ID: <dd16ff25-8f05-4137-9726-7f63ab82f30a@quicinc.com>
Date: Wed, 25 Sep 2024 11:40:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] clk: qcom: gcc-x1e80100: Fix halt_check for
 pipediv2 clocks
To: Johan Hovold <johan@kernel.org>
CC: <manivannan.sadhasivam@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <abel.vesa@linaro.org>,
        <quic_msarkar@quicinc.com>, <quic_devipriy@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <kw@linux.com>, <lpieralisi@kernel.org>,
        <neil.armstrong@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, Mike Tipton <quic_mdtipton@quicinc.com>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-5-quic_qianyu@quicinc.com>
 <ZvLNNDCOy68nK2B5@hovoldconsulting.com>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ZvLNNDCOy68nK2B5@hovoldconsulting.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: EVIdORHBfowiQCKqqaKJOSDHKth64nAV
X-Proofpoint-GUID: EVIdORHBfowiQCKqqaKJOSDHKth64nAV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 mlxscore=0
 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0 mlxlogscore=622
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409250024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_204040_796725_39CED122 
X-CRM114-Status: GOOD (  12.12  )
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


On 9/24/2024 10:31 PM, Johan Hovold wrote:
> On Tue, Sep 24, 2024 at 03:14:42AM -0700, Qiang Yu wrote:
>> The pipediv2_clk's source from the same mux as pipe clock. So they have
>> same limitation, which is that the PHY sequence requires to enable these
>> local CBCs before the PHY is actually outputting a clock to them. This
>> means the clock won't actually turn on when we vote them. Hence, let's
>> skip the halt bit check of the pipediv2_clk, otherwise pipediv2_clk may
>> stuck at off state during bootup.
>>
>> Suggested-by: Mike Tipton <quic_mdtipton@quicinc.com>
>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>> Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>
> Looks like this one is missing a Fixes and CC stable tag. With that
> added:

Will add Fixes and CC stable tag.

Thanks,
Qiang Yu
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
>
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

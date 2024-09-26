Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C31ECCFA15
	for <linux-phy@archiver.kernel.org>; Thu, 26 Sep 2024 03:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hl77I4YGpjpZdc0lMfeJvWGWZSiFQ6Z7leviwQHyWlU=; b=sl0ZhU+/q3BeiW
	Nsef0txZ8+3PxNMeQhS2hD+PDNosO3tL8CkPRccvvS47F/Xuaedr90YWims0x6/HTA8nMXvTTyGSt
	yXvv/rU9LKDJe+dsNoteytkGOjs9D14m5ACJg+0W2W4KuXeP67IlDOeV/oJiBjHPDJ4s37fSrgE/m
	LwMjHkD2i/MThoH5oyPbCwev8/dIbiObnBTaJ1UIl1W3ps07dQfMrCV8o5IhWQ2p1ailnrPBOB+lj
	L0D+NsgwByWiofGiEMXlXrIRCtBT9dmAqh5QdPI/ZFKt1VVOWW6hdcj7jf9T+Y3Blgo8/EIvCK5po
	hBvUHM3WTxNt8SuM8d7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stfIN-000000076Ai-3VPp;
	Thu, 26 Sep 2024 03:35:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stfBn-000000075GQ-45Lg
	for linux-phy@lists.infradead.org;
	Thu, 26 Sep 2024 03:29:15 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48PH5Jk7012529;
	Thu, 26 Sep 2024 03:29:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XO/bmxI3kq9zcxVosDo1vUKLoZdAKrP1FIrKbyXHCfk=; b=cSmY+3lyCajULmB8
	2ypYm7GXrvfmwfjxTWOgQSZesgCvXRJQlkqhvFDL54AxE0PRsNyraiU7eVXnMDDw
	+VYyPPb+Xjbb8OCBVKQm3WRlJtXyOWJ0U5EwDpCJBr32a/W8/stmVDkfVZ7lOysi
	ph30aNFqosZIOc3kgw7d1cd0Q6REL1cTS90jOWhnID41g1mat4HH/lB4jfEhgmif
	KY3Zq9+FTtm4FozkbAHKgAybygItNgrstSZNOCMgJMi7aEIaSsuXb72hq+qMqwJP
	YD3kH9KNUKAyOxltBMaPrbBVprwuQKtTkf57lW36DwKPp2ays1PiDHn8yaUPil4A
	EA956Q==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41skgnekw5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 03:29:01 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48Q3T0Fg011881
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 03:29:00 GMT
Received: from [10.239.29.179] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 25 Sep
 2024 20:28:54 -0700
Message-ID: <1419ba07-5163-4126-8869-2213eea6c492@quicinc.com>
Date: Thu, 26 Sep 2024 11:28:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] PCI: qcom: Add support for X1E80100 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: Johan Hovold <johan@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <abel.vesa@linaro.org>, <quic_msarkar@quicinc.com>,
        <quic_devipriy@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <neil.armstrong@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-6-quic_qianyu@quicinc.com>
 <20240924135021.ybpyoahlpuvedma5@thinkpad>
 <ZvLX_wkh7_y7sjPZ@hovoldconsulting.com>
 <4368503f-fb33-4e6a-bef4-517e2b959400@quicinc.com>
 <20240925080724.vgkgmnqc44aoiarv@thinkpad>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20240925080724.vgkgmnqc44aoiarv@thinkpad>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: CGPIGE7oYXMUFjcpnQm54XHv_eN8lSCW
X-Proofpoint-GUID: CGPIGE7oYXMUFjcpnQm54XHv_eN8lSCW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 phishscore=0 impostorscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409260020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_202912_263857_E1577919 
X-CRM114-Status: GOOD (  19.88  )
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


On 9/25/2024 4:07 PM, Manivannan Sadhasivam wrote:
> On Wed, Sep 25, 2024 at 11:47:02AM +0800, Qiang Yu wrote:
>> On 9/24/2024 11:17 PM, Johan Hovold wrote:
>>> On Tue, Sep 24, 2024 at 03:50:21PM +0200, Manivannan Sadhasivam wrote:
>>>> On Tue, Sep 24, 2024 at 03:14:43AM -0700, Qiang Yu wrote:
>>>>> X1E80100 has PCIe ports that support up to Gen4 x8 based on hardware IP
>>>>> version 1.38.0.
>>>>>
>>>>> Currently the ops_1_9_0 which is being used for X1E80100 has config_sid
>>>>> callback to config BDF to SID table. However, this callback is not
>>>>> required for X1E80100 because it has smmuv3 support and BDF to SID table
>>>>> will be not present.
>>>>>
>>>>> Hence add support for X1E80100 by introducing a new ops and cfg structures
>>>>> that don't require the config_sid callback. This could be reused by the
>>>>> future platforms based on SMMUv3.
>>>>>
>>>> Oops... I completely overlooked that you are not adding the SoC support but
>>>> fixing the existing one :( Sorry for suggesting a commit message that changed
>>>> the context.
>>>>
>>>> For this, you can have something like:
>>>>
>>>> "PCI: qcom: Fix the ops for X1E80100 SoC
>>>>
>>>> X1E80100 SoC is based on SMMUv3, hence it doesn't need the BDF2SID mapping
>>>> present in the existing cfg_1_9_0 ops. This is fixed by introducing new ops
>>>> 'ops_1_38_0' and cfg 'cfg_1_38_0' structures. These are exactly same as the
>>>> 1_9_0 ones, but they don't have the 'config_sid()' callback that handles the
>>>> BDF2SID mapping in the hardware. These new structures could also be used by the
>>>> future SoCs making use of SMMUv3."
>>> Don't we need something like this for sc8280xp and other platforms using
>>> SMMUv3 as well?
>>  From what I know, sc8280xp and other qcom platforms are not using SMMUv3.
> sc8280xp indeed has SMMUv3 for PCIe, but I'm not sure how it is configured. So
> not completely sure whether we can avoid the mapping table or not.
>
> Qiang, please check with the hw team and let us know.
Sure, will update once I get any response from hw team.

Thanks,
Qiang
>
> - Mani
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D00E6C02181
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jan 2025 06:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsVcxKBswaALquX0VyO8j3m5cuRzOMtG90I3f5aMpFs=; b=F2kEOSUdtg02FP
	Oo28GOyZ/qw2ECKAQ3XjWWEEtDtEbJDfiko5FoR6+gPYjFWpVfK+wwLvX4HF5M3fmFfCapt21I2LQ
	Qwa5d5ssUc7wkhfhq+lQwDq7pbh1LaZ9a4J8NVALdT22m5iGfxbqwBFbbHvYqLwt0r6gtQ0JAnzoS
	d7U59WxSi9QhlHCXjHkoSGDbyFTuATCoclyOJHB5nCyHAkDkKTA0iKxjC4DJp/7BjpiIK2s5FUlvX
	ek86HHNNAkLD5pnyUcR7oJio1GN54iOwKg1GPyAIzLvnq40Cx4boHCENUHaWNYGP7ENzlnIHpiHKt
	njY84d4XOcjezpeLsUvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbD5K-0000000E0DA-3sSr;
	Fri, 24 Jan 2025 06:22:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbD5I-0000000E0Cn-2Ak4
	for linux-phy@lists.infradead.org;
	Fri, 24 Jan 2025 06:22:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50O5O2L2029450;
	Fri, 24 Jan 2025 06:22:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	64eq/oqA7JDWeAiYLmnSqj+q03h2Y075+O5M0cVtE/0=; b=a6J+DJ5ItRR3sD1F
	sP5BUlW/f2Ls065+Zpc/pTpRpBVvz27xfA7FEZFBX7MEly00eE+JOrm5N3E9+x4V
	8cdav/gxRi0/ZAouyFj+d59nuYz1+W+892wonSP0EgVnEN2Oe81YBdFkLF3ulrmh
	y5MWvN7dNlmv9ggQlQ+JXIXtEhYuyZabj0QfTpc94YkAbWOAmbpqikk6OZ9UHa0l
	WK9/lPHHfAjMpTrMczIqvtMCc47orN4YjhR5qclXsXzVHGHQ9WLUwLfIG4SkKzay
	M8YCtzCO6hLyWsFTgBXX74ybAxTZBb/ovl/2KU1K5Qv1km7gVWd2WUMw+mEJiuIw
	SZ6DlQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44c4p5g3jy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 24 Jan 2025 06:22:23 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50O6MMmD008697
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 24 Jan 2025 06:22:22 GMT
Received: from [10.239.29.178] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 23 Jan
 2025 22:22:19 -0800
Message-ID: <188a9efd-718e-4ac5-b89a-29f2713e1dba@quicinc.com>
Date: Fri, 24 Jan 2025 14:22:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Wenbin Yao (Consultant)"
	<quic_wenbyao@quicinc.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <p.zabel@pengutronix.de>,
        <abel.vesa@linaro.org>, <neil.armstrong@linaro.org>,
        <manivannan.sadhasivam@linaro.org>, <quic_devipriy@quicinc.com>,
        <konrad.dybcio@oss.qualcomm.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
 <CAA8EJppXQpDrdXzJsTE7HWs=POt7yFAw0JVZFabN6Ks3fhZiWQ@mail.gmail.com>
 <a2cc5a5a-6cbd-7564-a8df-8af2a652de2f@quicinc.com>
 <ya27ma6iah7ts6sj35payj6ek4z7m6y5v4pnxd6wtqrp3cbyta@ypvrzwa4bnfv>
Content-Language: en-US
From: Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <ya27ma6iah7ts6sj35payj6ek4z7m6y5v4pnxd6wtqrp3cbyta@ypvrzwa4bnfv>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: owwt-Tjq6d_0J0vwonWCEyGjL-aa3QAk
X-Proofpoint-ORIG-GUID: owwt-Tjq6d_0J0vwonWCEyGjL-aa3QAk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-24_02,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 phishscore=0
 spamscore=0 mlxlogscore=999 impostorscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501240044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_222228_685252_661BBEB7 
X-CRM114-Status: GOOD (  24.19  )
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


On 1/22/2025 5:43 PM, Dmitry Baryshkov wrote:
> On Wed, Jan 22, 2025 at 03:17:39PM +0800, Wenbin Yao (Consultant) wrote:
>> On 1/21/2025 6:36 PM, Dmitry Baryshkov wrote:
>>> On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>
>>>> Currently, BCR reset and PHY register setting are mandatory for every port
>>>> before link training. However, some QCOM PCIe PHYs support no_csr reset.
>>>> Different than BCR reset that is used to reset entire PHY including
>>>> hardware and register, once no_csr reset is toggled, only PHY hardware will
>>>> be reset but PHY registers will be retained,
>>> I'm sorry, I can't parse this.
>> The difference between no_csr reset and bcr reset is that no_csr reset
>> doesn't reset the phy registers. If a phy is enabled in UEFI, its registers
>> are programed. After Linux boot up, the registers will not be reset but
>> keep the value programmed by UEFI if we only do no_csr reset, so we can
>> skip phy setting.
> Please fix capitalization of the abbreviations (PHY, BCR) and add
> similar text to the commit message.
>
>>>> which means PHY setting can
>>>> be skipped during PHY init if PCIe link was enabled in booltloader and only
>>>> no_csr is toggled after that.
>>>>
>>>> Hence, determine whether the PHY has been enabled in bootloader by
>>>> verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
>>>> present, skip BCR reset and PHY register setting, so that PCIe link can be
>>>> established with no_csr reset only.
>>> This doesn't tell us why we want to do so. The general rule is not to
>>> depend on the bootloaders at all. The reason is pretty simple: it is
>>> hard to update bootloaders, while it is relatively easy to update the
>>> kernel. If the hardware team issues any kind of changes to the
>>> programming tables, the kernel will get them earlier than the
>>> bootloader.
>> With this change, we don't need to upstream phy setting for all phys
>> support no_csr reset, this will save a great deal of efforts and simplify
>> the phy driver. Our goal is to remove proprietary PCIe firmware operations
>> from kernel. PHY is just the start and will be followed by controller,
>> clocks, regulators, etc. If program table need to be changed, the place to
>> do that will be UEFI.
> Well, that sounds like a very bad idea. Please don't do that. Linux
> kernel drivers should not depend on the UEFI or a bootloader. Unless
> there is a good reason for that, Linux should continue to be able to
> reset and program the PCIe PHY (as well as all other hw blocks).
I'm wondering if it's really necessary for Linux to be able to program the
PHY. Perhaps Linux should only care about common aspects defined by the
PCIe spec like bus scanning, BAR space allocation, and functions provided
by other PCIe capabilities. As for the specific operations that are
different on various platforms, it might be more appropriate for the
firmware to take care of them. This way, the responsibilities can be more
clearly divided, and the driver could potentially be
more streamlined.

On the other hand, since the no_csr reset can retain register values,
maybe we should still make full use of it, even if we don't want to
rely on UEFI. For example, during runtime suspend/resume
(the D3cold -> D0 cycle), when re-initializing the PHY, same PHY
settings will be programmed again. This is a bit redundant.

Thanks,
Qiang
>>>> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
>>>> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
>>>> ---
>>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
>>>>    1 file changed, 58 insertions(+), 33 deletions(-)
>>>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

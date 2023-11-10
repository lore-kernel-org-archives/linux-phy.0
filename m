Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E29D4C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 10 Nov 2023 09:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pK4oOhrC/ozkStdP2ld+5rhfM/1OALFPrLO8B60YAk=; b=HCWB5UOxaOUhZy
	4UVbaXM1eFt+3EFW4b9aPQta6q+cL+A1Bddz4YvqDEikVqzNaMvJpP0hTWnOubQ2Ik4Qcqn4z1Ju5
	vslnV0xl+4sqW7TmVr0YLTYgMPc4HbScxeF7bse1aGklTvLInKWHETtUk7q3C/dBdPoc37ek49uKr
	DrfPTC3Ppb7650a0kSG/WbabkphMfOHB8hK2NIIbFtnplUE86iMjb10ix8U1Nzcyp7qBXZW6uJJH6
	GJ0YpqHuu/jTxiXyJXHZH4GP2v5+G9SibrEEq5YFX/pwJQcV8et8sDmLIEtUNmP4kMrmLzU3W7qG0
	iHBjPtXMT7COB9VcO0Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NQV-0088tB-1x;
	Fri, 10 Nov 2023 09:03:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NQS-0088sg-26
	for linux-phy@lists.infradead.org;
	Fri, 10 Nov 2023 09:03:42 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AA7fuxo010154;
	Fri, 10 Nov 2023 09:03:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=TBYV7bv97Iu3cs83mPkPNVVr/7Yfp0fRAEk0WhPDGqU=;
 b=KhLozCSUhfP0QuefC1NOXPz/eNiAQAl+FZaW7B3JnXC1RkSjPLTTz2sn8mmVUXyuwo0r
 C66FbTfPoFRw2WtkeE7WmX2Z7P4kM0Kl7EfUQunZi6c/ImzTq7zk5QhAnF4l0YO0s8wo
 gm9RCNA1un/SFZ2ghQmYtd4ovZDipgxyV1+ij+eql1fGJprDYVZYI2bChvAps6LVGMYk
 Twa1fR8r2VyhvAjQdbt/uCbvLXuBi1g1u5rY+MRXdAx7cLXGzoBo3OwkfYDjSSw/NFeD
 UAwg+KS8bgzTZBm7POj5K32KKV43twWPkW19cnxO/bLpoC6CLUucUA8mQ1vk776Cvnob Cw== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u93qy9qs9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Nov 2023 09:03:33 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AA93WT7006279
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Nov 2023 09:03:32 GMT
Received: from [10.253.32.19] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Fri, 10 Nov
 2023 01:03:28 -0800
Message-ID: <c3fb1fa1-4ba6-613f-a545-79e0e4b2658f@quicinc.com>
Date: Fri, 10 Nov 2023 17:03:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 6/7] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
To: <neil.armstrong@linaro.org>, Can Guo <cang@qti.qualcomm.com>,
        <bvanassche@acm.org>, <mani@kernel.org>, <stanley.chu@mediatek.com>,
        <adrian.hunter@intel.com>, <beanhuo@micron.com>, <avri.altman@wdc.com>,
        <junwoo80.lee@samsung.com>, <martin.petersen@oracle.com>
CC: <linux-scsi@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        "Bjorn
 Andersson" <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
        "open
 list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
        open list
	<linux-kernel@vger.kernel.org>
References: <1699332374-9324-1-git-send-email-cang@qti.qualcomm.com>
 <1699332374-9324-7-git-send-email-cang@qti.qualcomm.com>
 <e4bafeaf-bbeb-4990-b6f2-497159995910@linaro.org>
Content-Language: en-US
From: Can Guo <quic_cang@quicinc.com>
In-Reply-To: <e4bafeaf-bbeb-4990-b6f2-497159995910@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Bs_mWBVUYlb-vmwGMPmlFCrTOWmKgGG2
X-Proofpoint-GUID: Bs_mWBVUYlb-vmwGMPmlFCrTOWmKgGG2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-10_05,2023-11-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 spamscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 mlxlogscore=767 impostorscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311100074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_010340_742500_EC1C4335 
X-CRM114-Status: GOOD (  15.80  )
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

Hi Neil,

On 11/10/2023 4:47 PM, neil.armstrong@linaro.org wrote:
> Hi,
> 
> On 07/11/2023 05:46, Can Guo wrote:
>> From: Can Guo <quic_cang@quicinc.com>
>>
>> On SM8550, two sets of UFS PHY settings are provided, one set is to 
>> support
>> HS-G5, another set is to support HS-G4 and lower gears. The two sets 
>> of PHY
>> settings are programming different values to different registers, mixing
>> the two sets and/or overwriting one set with another set is definitely 
>> not
>> blessed by UFS PHY designers. In order to add HS-G5 support for 
>> SM8550, we
>> need to split the two sets into their dedicated tables, and leave only 
>> the
>> common settings in the .tlbs. To have the PHY programmed with the correct
>> set of PHY settings, the submode passed to PHY driver must be either 
>> HS-G4
>> or HS-G5.
> 
> I guess I'll need to rebase my SM8650 UFS PHY driver to support both G4 
> and G5 modes
> at some point ?


Thank for reaching out. Yes, please.

I can help review the PHY settings.

BTW, are you enabling MCQ (by adding MCQ related DT) at the same time?

Thanks,
Can Guo.

> 
> Neil
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

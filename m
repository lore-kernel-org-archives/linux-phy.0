Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06455E95A8E
	for <linux-phy@archiver.kernel.org>; Mon,  9 Oct 2023 12:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXPb8bA417XEVBarutqZF9VvgzyWLnele7QdTQLoKzs=; b=V23p4VifAiH5s/
	Tk5fhR8PnPw3TaMXtnWVVitqtGnnxZsdKDBRmFLnJ74QVXd4fTwXh0zcPWP4oSnKwWvmoUh+2HFOe
	2CZ7mkjL21kLVCI3vEYnHAO0EzTDYHya62mvglyIORytRZ0Rnag86EsVJ8gIXRlpn1ELHFn+HvTNx
	g+mjRtlVHNH/koOs4soBkXGjmsfP3D9G2vQ7NXe7g4fE5ZG698yMVb8o2wC0kyvzAIcvTI9X6MVmG
	bLjEbxOvDJ0zozvjCjkBO8DkuI17yOrX2N8N08ezZRaKK7DHWPUYqOhqjfmakU8eCHiRcwy49dII4
	Ghh+k8bMlS2amdjdkxsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qppHh-00Ag2M-2N;
	Mon, 09 Oct 2023 12:22:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qppHf-00Ag1C-00;
	Mon, 09 Oct 2023 12:22:53 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 399CCcB0028812;
	Mon, 9 Oct 2023 12:22:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=suP35r1I9Tl7Cfr9eTF8H/MOSNej0t7TcjZBQBeGero=;
 b=iknY5SyQ1Ak+PDP/eh9dd1stRLx0L9lD8X9l0s0usw0t1Qfw9s88KR2S40Qjr+PIRVzT
 ma+qb2Rg1gTgUBYXlL1+bcEwjjIfAKqrki4wfaAc0Q//SZ1ubce8KMdQ0g4s3lR1Vb1g
 6DXkBmST4ZbkKrpuS5odle3BApIPOl0PuJZL9JCQnRblx67OtnhB5Su35ddZqpj2ODDD
 ae5CMk7NVheCRyOrFtPnmum6Da1yJqU/cxYpnW9okj/hMfw34Wk2/saH93CVNIuS6rNt
 XixhNe+bw6J68ooO6tsTz/Tilp4XMqwub8nsv8Z7WI5RzHeuP8dzR5F1LYCxoul8/apF kA== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tkhx2jb92-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Oct 2023 12:22:22 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 399CMKRB017690
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 9 Oct 2023 12:22:20 GMT
Received: from [10.216.45.67] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Mon, 9 Oct
 2023 05:22:11 -0700
Message-ID: <55435a32-1c3f-479b-b257-a190ef3fc7cb@quicinc.com>
Date: Mon, 9 Oct 2023 17:52:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] phy: qcom: Introduce Super-Speed USB UNIPHY driver
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <geert+renesas@glider.be>,
        <arnd@arndb.de>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <u-kumar1@ti.com>, <peng.fan@nxp.com>,
        <quic_wcheng@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <quic_kathirav@quicinc.com>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-3-quic_ipkumar@quicinc.com>
 <412492d1-fcc9-481c-9d28-b208a644ba1d@linaro.org>
 <7975c638-29cf-45ce-9d76-b8a93d750eb7@quicinc.com>
 <CAA8EJprhQz_Tj0Bhv6zhGa7h37Ug-Fp6Tof9tNscTFyZzkbJvw@mail.gmail.com>
 <0007b5ff-34d4-44c0-80bd-8277d5842c01@linaro.org>
Content-Language: en-US
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <0007b5ff-34d4-44c0-80bd-8277d5842c01@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: lslQH4pSDAP-WMR6p4dijFZIEMlxgnM5
X-Proofpoint-ORIG-GUID: lslQH4pSDAP-WMR6p4dijFZIEMlxgnM5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-09_11,2023-10-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0 mlxlogscore=380
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310090101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_052251_175405_8E4EFD2B 
X-CRM114-Status: GOOD (  19.28  )
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



On 10/7/2023 5:27 AM, Konrad Dybcio wrote:
> On 3.10.2023 16:54, Dmitry Baryshkov wrote:
>> On Tue, 3 Oct 2023 at 17:22, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>>>
>>>
>>> On 9/30/2023 10:48 PM, Dmitry Baryshkov wrote:
>>>> On 29/09/2023 11:42, Praveenkumar I wrote:
>>>>> Adds Qualcomm 22ull Super-Speed USB UNIPHY driver support which
>>>>> is present in Qualcomm IPQ5332 SoC. This PHY is interfaced with
>>>>> SNPS DWC3 USB and SNPS DWC PCIe. Either one of the interface
>>>>> can use the it and selection is done via mux present in TCSR
>>>>> register. This driver selects the PHY for DWC3 USB and handles
>>>>> the reset, clocks and regulator.
>>>>>
>>>>> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>>>>> ---
>>>>>    drivers/phy/qualcomm/Kconfig               |  11 +
>>>>>    drivers/phy/qualcomm/Makefile              |   1 +
>>>>>    drivers/phy/qualcomm/phy-qcom-uniphy-usb.c | 322 +++++++++++++++++++++
>>>>>    3 files changed, 334 insertions(+)
>>>>>    create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-usb.c
>>>>>
>>>>> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
>>>>> index d891058b7c39..7257c8455c53 100644
>>>>> --- a/drivers/phy/qualcomm/Kconfig
>>>>> +++ b/drivers/phy/qualcomm/Kconfig
>>>>> @@ -154,6 +154,17 @@ config PHY_QCOM_M31_USB
>>>>>          management. This driver is required even for peripheral only or
>>>>>          host only mode configurations.
>>>>>    +config PHY_QCOM_UNIPHY_USB
>>>>> +    tristate "Qualcomm USB Super-Speed UNIPHY driver"
>>>> Can we please have more specific driver name? As I wrote earlier,
>>>> there are two other (different) kinds of Qualcomm UNI PHY devices:
>>>> - DSI / HDMI UNIPHY on apq8064 / msm8974 / msm8960 (?)
>>>> - USB QMP UNI PHY drivers
>>>>
>>>> Adding a driver called UNIPHY, which is not related to those two kinds
>>>> sounds pretty confusing to me.
>>> This UNIPHY is different from above mentioned ones. This a custom
>>> version for 22nm on Qualcomm IPQ5332.
>>> Can we name the driver as phy-qcom-uniphy-usb-ss-22ull.c /
>>> phy-qcom-usb-ss-22ull.c ?
>> usb-ss-22ull sounds better. Or maybe usb-ipq-ss
> usb-ipq-ss is as safe as usb-msm-ss
>
> We can not rely on the hardware never ever changing down the
> product line :D
Not all IPQ platforms having this UNIPHY. Only IPQ5332 and IPQ5018 are 
having
this custom version of UNIPHY. Hence thought usb-ipq-ss might confuse.
>
> Konrad
--
Thanks,
Praveenkumar

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

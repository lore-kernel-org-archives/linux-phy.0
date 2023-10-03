Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAE1E7AD55
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 14:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGqFdDAH76y3dmqxYSR1ZTDdsb+nLuwqigH5WZhUGxo=; b=OTBFPZW0CDi94I
	CMNIXPWPSz0UAlZhAndY4ZKYbQYXT43WcT7qi7t5idztXZwKP1UYTErobEPMgbj7vzp3d3EKJWKUL
	wN9E12V56/vGXcV0UD1vYhW7xlfF68Ar8jF5Xmg4IJME2sIaZx8uJjX2EDeL/Poy4AX+LssGN4Gmq
	IcdK31j2+poCzxRoUmv7QtCBcCBSTzwkx9QfCIDXBlM2q8bYKbrzdrs+7dWc4OkGTMi3KdeD8Z02z
	26FHNh23F8ojLjy8EYM4KKvyg7ZCnigrBXBAhsJ+J3ALPQ3n2uTLiV+EHuMUmiFf4mBn697uSyweK
	0/PWBzETKXzSQ0T1p4lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qng0h-00El2k-2z;
	Tue, 03 Oct 2023 14:04:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qng0f-00El2M-2W;
	Tue, 03 Oct 2023 14:04:27 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393CtFvq024974;
	Tue, 3 Oct 2023 14:03:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=KW2J+DS9oHYENFNLmqwrDgX6qwBY0QVYINMUCr7I9Yw=;
 b=XK4rIydXnhdLo2yarTHTscnIJdElJzth/Ep8SXoVI6+uYwiVuaTGFEw+uc4TMXW78MIj
 cCrLu5JhjbeAPGffL3QE5Z+TDMCWHt4nc+joXxCqSaYrsX5t8XG8OmFLwhFOZDiRapX9
 KZ5P4CsNBR+QUxIUYo0qpib3c21kOiQYLGirz5aMAwEXUogs41MrYBgf7v5sGg/7+hFT
 6vKnl8A20HSchdW7hlR07TyOn7uVx7woWemxTXZrYiofyowHr1V87ltwn4ldB/t1KIyd
 C/jfR2Pz/mNjToHgx6dF5dv7b0t8PCq8UGF8gUpFIYoBRUIWAXFI+fO6aVEdiOQNmtKJ 0g== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tgbjgs659-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 14:03:56 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393E3tq2012896
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 14:03:55 GMT
Received: from [10.216.32.208] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Tue, 3 Oct
 2023 07:03:01 -0700
Message-ID: <7d01eadc-4395-4871-91d4-a3d33d119921@quicinc.com>
Date: Tue, 3 Oct 2023 19:32:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY in
 USB node
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>,
        <geert+renesas@glider.be>, <arnd@arndb.de>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <u-kumar1@ti.com>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <quic_varada@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <quic_kathirav@quicinc.com>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-7-quic_ipkumar@quicinc.com>
 <618992fe-4c76-42ef-af47-ee66f74c5bb6@linaro.org>
 <3f89e0b7-189e-4cf7-bec5-b03c903c46b5@quicinc.com>
 <1e3af927-52b0-42ab-9643-db4bf3f2d2c4@linaro.org>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <1e3af927-52b0-42ab-9643-db4bf3f2d2c4@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Wd7JrN6cM8dnplHkB29Q3HpCe5dE3cnM
X-Proofpoint-GUID: Wd7JrN6cM8dnplHkB29Q3HpCe5dE3cnM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_11,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 lowpriorityscore=0 spamscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 mlxlogscore=443 phishscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310030102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_070425_834854_C6E57BC8 
X-CRM114-Status: GOOD (  14.41  )
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



On 9/30/2023 10:56 PM, Dmitry Baryshkov wrote:
> On 29/09/2023 16:31, Praveenkumar I wrote:
>>
>>
>> On 9/29/2023 6:44 PM, Konrad Dybcio wrote:
>>> On 29.09.2023 10:42, Praveenkumar I wrote:
>>>> Add UNIPHY node in USB to support Super-speed. As the SS PHY has
>>>> pipe clock, removed "qcom,select-utmi-as-pipe-clk" flag.
>>>>
>>>> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
>>>> ---
>>> Patches 6 and 7 should be swapped, otherwise you may get no
>>> USB with this commit. Incremental patches must not break
>>> functionality, unless it is truly inevitable.
>> Understood. Will swap the 6 and 7 patches in the update.
>
> But just swapping the patches will not work, the patch for the board 
> file will break compilation. I think you have to squash them.
I think swapping will work as the PHY node in the base dtsi added 
separately in patch 3. If compilation fails, will squash them.

- Praveenkumar
>
>>
>> -- 
>> Thanks,
>> Praveenkumar
>>>
>>> Konrad
>>
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

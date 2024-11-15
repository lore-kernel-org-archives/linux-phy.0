Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B620AD6DDD1
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 04:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUIarDW7nnmEuuwc4rkg7brLjA+mgqjHIIqywVSERE4=; b=U3En0QDTxK2JpA
	CpbRiPpvyB1fft6/Wki7457vdcUS/ZCPg/3XufXpNZ6D/fUIym7lhn11iqETKrjCVAoNnNgdkNUmC
	mK7zXshBdbiBThNO92/c/llmb8SO7/kj86muXY+/el2f8Aykp81TWqkTQ47Om9aaspjzY71FIyfNS
	B42w7WDHjzho7FO08j4NR2v33i617FWZQHVNl3MwcWqAn46ECzh55FfNIEcOKYLz2xRSKa65GxDB0
	jjKlqIfYeJg6llgKGwn2igCZAj8MhRYiTB0g1Lm7cLJsZhaIdd00RrGE6be20VJI+JHf1vXBOpdCo
	JUEIv/AqXim1u/1c3d7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBoQm-00000001ciR-26IH;
	Fri, 15 Nov 2024 04:59:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBoQj-00000001chq-13hE
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 04:59:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AEHHtcj018977;
	Fri, 15 Nov 2024 04:59:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	naLjQEOCVlYSfud/gWZWjECc3UCVfY9WDE7qLR53pRU=; b=gWNmwo701CPthAYp
	4ADLwr8+wbiwvmpQEVK6SYqwVMhO8+eBcxEYw0Inbs+wblefBoiQxN/gyJpgp2A5
	W7nSrSlCkWDuW1GOxkXFWGwl+p8f3/8vgF0UHdV91So0f+meu/qEbWG5Xz2wFNQC
	CyyUVoR+Q/m5OtVQ70bsYsO5/JJBeJ/jw8cKBoZK6F5JSf1a3Nh2lLO3KQWMHoOz
	aIQnpe3Tt3x7qlCSoDoeOq+vNgD42K3/OXvvgtiarag/UqeYnqzMnKhXWz0fysYr
	KNyZnPlnhSEq8+sr51vqMeb54lLa3k20dr6Jg6ey/rI7ThwT12xE2n/nW6P1K9p8
	Y9CRKA==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42wex8ttgd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Nov 2024 04:59:25 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AF4xPAX004511
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Nov 2024 04:59:25 GMT
Received: from [10.233.17.145] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 14 Nov
 2024 20:59:15 -0800
Message-ID: <288be342-952b-4210-afe7-6e194dfd54a9@quicinc.com>
Date: Fri, 15 Nov 2024 12:59:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs8300: enable pcie0 for QCS8300
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <bhelgaas@google.com>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <quic_qianyu@quicinc.com>,
        <conor+dt@kernel.org>, <neil.armstrong@linaro.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <quic_shashim@quicinc.com>, <quic_kaushalk@quicinc.com>,
        <quic_tdas@quicinc.com>, <quic_aiquny@quicinc.com>,
        <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
 <rg4isufmnhnbsiljm34rfdsn46gfpatbsiscynaqtsnykbhnm3@ovcaulkfj4nk>
 <26943ea3-109c-473d-818b-2a08dba859ab@oss.qualcomm.com>
From: Tingwei Zhang <quic_tingweiz@quicinc.com>
In-Reply-To: <26943ea3-109c-473d-818b-2a08dba859ab@oss.qualcomm.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: gW9MRU-f88Y10pYvrMlMAq6Z4DCIw1DZ
X-Proofpoint-ORIG-GUID: gW9MRU-f88Y10pYvrMlMAq6Z4DCIw1DZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 phishscore=0 bulkscore=0 mlxlogscore=691 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1011 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411150040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_205937_409159_569F6F6B 
X-CRM114-Status: GOOD (  14.20  )
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

On 11/14/2024 9:03 PM, Konrad Dybcio wrote:
> On 14.11.2024 1:10 PM, Dmitry Baryshkov wrote:
>> On Thu, Nov 14, 2024 at 05:54:08PM +0800, Ziyue Zhang wrote:
>>> Add configurations in devicetree for PCIe0, including registers, clocks,
>>> interrupts and phy setting sequence.
>>>
>>> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  44 +++++-
>>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 176 ++++++++++++++++++++++
>>>   2 files changed, 219 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>> index 7eed19a694c3..9d7c8555ed38 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
>>> @@ -213,7 +213,7 @@ vreg_l9c: ldo9 {
>>>   &gcc {
>>
>> The patch doesn't seem to update the gcc node in qcs8300.dtsi. Is there
>> any reason to have the clocks property in the board data file?
> 
> Definitely not. Ziyue, please move that change to the soc dtsi

Gcc node is updated in board device tree due to sleep_clk is defined in 
board device tree. Sleep_clk is from PMIC instead SoC so we were 
requested to move sleep_clk to board device tree in previous review [1].

[1]https://lore.kernel.org/all/10914199-1e86-4a2e-aec8-2a48cc49ef14@kernel.org/
> 
> Konrad


-- 
Thanks,
Tingwei

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

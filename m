Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F365CC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkvIKXifjecjvVNgV+AhXKE3Zm0b9NqW/qQwD1/jcMc=; b=afFYKIln0uLN1S
	b8oYKKQRBnVuhqPL2Ybu1ljbZZg5PZ0zi6Fyv4VgXeOCnecQZ/d0QAuHWkUjHaxntC0iqfb4pw4BZ
	SivxZ9i7mgcCBqWVzbMaqHCoPFSsFAjpgkJeGlaP0gMEbuyQLjR5ongQ69EaeOgdRzg/6yfCYHHRy
	gnvO0lt2PzQnv2jR/dftIKYfgYI0o1HIBwKrOC+QH9YcCtKBjt1Wk+NJF3U1at2qCCflZcKL7FSYU
	hGGaVOYaXEyn5vuHYLhq1TysUL7ZaQCji/793fHDnU0mqb5W8yOV353OdxWWp3xiuLZsjEnwtBcb+
	UESg36w6dpJFIrf8TKiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyGm-00GZPI-2E;
	Mon, 06 Nov 2023 11:59:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyGi-00GZOv-33
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:59:50 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A69LeUQ000763;
	Mon, 6 Nov 2023 11:59:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=2/DCkzmeV1d4xaptQXzY0hVaYF+2cW7ZXSlcQMQEqks=;
 b=Om+v0OlICBDvqiUsqzek1vACxgpuTUP4IpYgKAeBphf+h+5IUvHk+BAKx6BdbAhmMTgX
 bwl945Qz78oXaqF7NIcD5CYdSFdGZ6pjn/I+g8lfSo32gq0yglPb8U0d+DZ2Z6DKxoz1
 Zhe5bmlN/fi42pjXlh3HLNuJCljXaF0lYmHZIVk2Ij8DkyxEfx7+MdOYvYIZ9Kkp4Txd
 n5ZTwaucHxVAW9Mev+6q0e2XaHDhludqepCAvSHRdnzShd1bEvM/57LPqqzy5S9pyi08
 9X6/iEjZoLxPqiHhZfIHOO99lMZDxcmEVdazkulz1FxWma+Uh8+100f7jDczHwBpY4zQ PQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u6wer0cy8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Nov 2023 11:59:44 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A6Bxh6S012004
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 6 Nov 2023 11:59:43 GMT
Received: from [10.217.219.216] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Mon, 6 Nov
 2023 03:59:37 -0800
Message-ID: <6cbe8202-7708-95b2-f9ac-1dbbc6991a9a@quicinc.com>
Date: Mon, 6 Nov 2023 17:29:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: [PATCH 0/2] phy: qcom-qmp-pcie: Add support to keep refclk always
 on
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_vbadigan@quicinc.com>,
        <quic_ramkri@quicinc.com>, <quic_nitegupt@quicinc.com>,
        <quic_skananth@quicinc.com>, <quic_vpernami@quicinc.com>,
        <quic_parass@quicinc.com>
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
 <CAA8EJpo3oi20p55CLxacdMJTKgr-6Wrnx=idb_D9U8p482mpgg@mail.gmail.com>
From: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
In-Reply-To: <CAA8EJpo3oi20p55CLxacdMJTKgr-6Wrnx=idb_D9U8p482mpgg@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: u29m_hPxtfs8NzrLPcx_zztMGQ1II1ch
X-Proofpoint-GUID: u29m_hPxtfs8NzrLPcx_zztMGQ1II1ch
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-06_10,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 clxscore=1011 impostorscore=0 phishscore=0
 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=817 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310240000
 definitions=main-2311060099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_035948_993009_A4865317 
X-CRM114-Status: GOOD (  20.14  )
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


On 11/6/2023 5:28 PM, Dmitry Baryshkov wrote:
> On Mon, 6 Nov 2023 at 13:53, Krishna chaitanya chundru
> <quic_krichai@quicinc.com> wrote:
>> This series adds support to provide refclk to endpoint even in low
>> power states.
>>
>> Due to some platform specific issues with CLKREQ signal, it is not being
>> propagated to the host and as host doesn't know the clkreq signal host is
>> not sending refclk. Due to this endpoint is seeing linkdown and going
>> to bad state.
> Is this a board issue or an SoC issue? In the latter case this should
> go to the PHY configuration structure instead of being specified in
> the DT.

Hi Dmitry,

This is not SOC level issue it is a board issue.

- Krishna Chaitanya.

>> To avoid those ref clk should be provided always to the endpoint. The
>> issue is coming only when ep intiates the L1.1 or L1.2 exit and clkreq
>> is not being propagated properly to the host.
>>
>> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
>> ---
>> Krishna chaitanya chundru (2):
>>        dt-bindings: phy: qcom,qmp: Add PCIe qcom,refclk-always-on property
>>        phy: qcom-qmp-pcie: Add support for keeping refclk always on
>>
>>   .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml    |  5 +++++
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c            | 21 +++++++++++++++++----
>>   2 files changed, 22 insertions(+), 4 deletions(-)
>> ---
>> base-commit: 71e68e182e382e951d6248bccc3c960dcec5a718
>> change-id: 20231106-refclk_always_on-9beae8297cb8
>>
>> Best regards,
>> --
>> Krishna chaitanya chundru <quic_krichai@quicinc.com>
>>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

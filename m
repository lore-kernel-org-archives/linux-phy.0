Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1DBCC25B48
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 11:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEl4+69k+IWc8m7/jMhN8QDvwn+Y1GVNB90v7LeHhFo=; b=lEWtK05bFKuqkZ
	kY5XSEZhsXhFw0Oo78fQ7wfnaxIgWudJSETSCSa6thttWALhoi1Ula+86WTBdyBg/s9zTNdC8bqRg
	bi4Wv7g95C8KCPI8dPV1wm83pUNVFXKaIozA0mMGN9zk3X6IAyYDd9pIqkGSnhMALzyz0dG0XzXOn
	Rzkn4JCRzg9O68OlpwWvdiPtOUZZ3HMxfhMeW0LvlFz3LcvEi+y5n7bSOyizE5Jbvy+ME5in+sSVT
	W8SUiC1rlxdV9X9DM4U0tCwf8QdU54BPsct9veGQ3GDetLC7O6vGbhWb7RTa2JgaQxQ8fWfWrz9Ga
	VR5s5swPqIV0Accd283g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvydW-00ENDy-26;
	Thu, 26 Oct 2023 11:34:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvydT-00ENCh-2a
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 11:34:49 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39QAmBFV024823;
	Thu, 26 Oct 2023 11:34:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=0RykzLAc2GcpRBB2lxRtT9xw9T54D6XSLPdU1P03Ecg=;
 b=TUbPLcJRU3NeutpppwPr/hqOUndGtWyqtZHchUg2fabbywTsyxW8B99C7mgCpMzrNbIZ
 dKhnFNYGtMhT60D5ZYxeqNgXEuvmpX9A23EOvRFASJbQ1ewVYmhos3ywrD9lNaz0h7xK
 1xtRZKMT5Cg0DsJtKNQEfvo3ylCuHQ3UASiRh13i7d/bvygPfZ9d7UojdHKByEq3FITY
 ebT3JCUvSuHRnCXYweEBbcTxe9W6oBrUPT44ZARfj/Iy27KWYRTDeWagWbMJwh6gXG0o
 ly4OEBtHmlLj+3IAyOf/Ndg+0tVl0XKIZ6J1tsKaorxlTLC+8uLoFjDgPrBtuPdoCjVI /Q== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tykw28gme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 11:34:37 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39QBYaIs014795
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 11:34:36 GMT
Received: from [10.216.45.182] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Thu, 26 Oct
 2023 04:34:27 -0700
Message-ID: <b9fb5970-633b-07f0-4359-09fe8204bbf8@quicinc.com>
Date: Thu, 26 Oct 2023 17:04:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 4/5] PCI: epf-mhi: Add support for SA8775P
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
        Manivannan Sadhasivam
	<mani@kernel.org>
CC: <agross@kernel.org>, <andersson@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <quic_shazhuss@quicinc.com>, <quic_nitegupt@quicinc.com>,
        <quic_ramkri@quicinc.com>, <quic_nayiluri@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <robh@kernel.org>,
        <quic_krichai@quicinc.com>, <quic_vbadigan@quicinc.com>,
        <quic_parass@quicinc.com>, Bjorn Helgaas
	<bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mhi@lists.linux.dev>,
        <linux-phy@lists.infradead.org>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-5-git-send-email-quic_msarkar@quicinc.com>
 <20231025075603.GD3648@thinkpad>
 <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
 <fb0647b5-67c4-4558-ac41-ee2b21446ee2@linaro.org>
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
In-Reply-To: <fb0647b5-67c4-4558-ac41-ee2b21446ee2@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: I9bXBXL35wkZTwKQbllTp6Iof-QEowRZ
X-Proofpoint-GUID: I9bXBXL35wkZTwKQbllTp6Iof-QEowRZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-26_09,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 mlxlogscore=679 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 mlxscore=0 clxscore=1015 adultscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310260098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_043447_971534_10B10370 
X-CRM114-Status: GOOD (  14.32  )
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


On 10/26/2023 4:40 PM, Konrad Dybcio wrote:
>
>
> On 10/26/23 07:30, Mrinmay Sarkar wrote:
>>
>> On 10/25/2023 1:26 PM, Manivannan Sadhasivam wrote:
>>> On Thu, Oct 19, 2023 at 05:07:09PM +0530, Mrinmay Sarkar wrote:
>>>> Add support for Qualcomm Snapdragon SA8775P SoC to the EPF driver.
>>>> SA8775P has the PID (0x0306) and supports HDMA. Currently, it has
>>> Is the PID fixed? I thought you just want to reuse the SDXxx PID in the
>>> meantime.
>>>
>>> - Mani
>>
>> The PID for SA8775p EP is not decided yet. So using 0x0306 PID meantime.
> If it's not decided, why should it go upstream then? Would that
> not break the hosts' expectations when the EP device is updated?
>
> Konrad

I don't think it will break the host's functionality. In host side as 
well we are reusing same 0x0306 for SA8775p

--Mrinmay


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

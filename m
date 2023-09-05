Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2746FC83F3E
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 07:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vczrkm6Pcrx+crCrHgTWAlO6M2CMmoSLLNFfGvX/Hg8=; b=FEf8Sph/PnKjL6
	IloVOAn+PkfzWPAnqj+X9NCNv0qhAwE8gap0scnkfGAcKPIGFM4FKFGF/kSMX3/gVAQAwFK48G8Ys
	elgrdrj3ieiGHsw5Mea8oun167uNjtB6M+B+Mj2yDhccIfLxv5iSY0zQ+mX1BCTT+hNZ2Hdk9UNGM
	T0pUmhQYN40N2Jpt3YbaKHN7IU5CePvn76SmEXVquJM7v05lXybQWWGJQslpx/DbDgRnQ1xzxppcf
	UfKcXyrBTSOw+mCVOorV7vbQNpq3FkI2yChoP+EXlAjhO4MyAdFmRYuJPMsjNl9USrk9DOaV0WSPm
	/RCB3AKr9PCd0zDwYi9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdQTk-005RkS-2g;
	Tue, 05 Sep 2023 07:28:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdQTh-005Rk5-0E
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 07:28:02 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3856YcAB002491;
	Tue, 5 Sep 2023 07:27:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=256BKtyx5O9hoXC1Xrw2qF7WynCsICZfB8jrzWPy9aU=;
 b=Q+KkD3ctRvtjvFbhUA+OSfAqg/lDVyaBi4CD53ZKY3cSU8/vTn+Yz66R0RA6DfTprwJk
 dZbIzngcm17XtLPwrDQMX6Aes8yQwLCNhrxGCI/2d6sSA8FPitWD59pA7jwUyQQD2G91
 xXW9i7/1qYXcusnUQ6w1joluGwvljqK1/mXlSJQtNwdx8kJWG8hzuYmf3njX8Sr/u2TO
 ml3CMi/U5PJ0Si4Jliz90NEHLZ0eGIleK/DRtJGZqoSEBkVWeEiVkLKDgc5zxRiCNrsd
 Et88d7E98bRsQRxZNyLZIM1xxnaoOe+KKk528fIhJh3nu8ahuJKTGS1F+NYfcTsJ/eYS yw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3suvcrd046-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Sep 2023 07:27:56 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3857RtaW009798
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 5 Sep 2023 07:27:55 GMT
Received: from [10.216.59.199] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 5 Sep
 2023 00:27:46 -0700
Message-ID: <08c35c13-fe97-4d81-5ecd-19b079ab9c3b@quicinc.com>
Date: Tue, 5 Sep 2023 12:57:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add qcom,sdx75-qmp-usb3-uni schema
 file
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <abel.vesa@linaro.org>,
        <quic_wcheng@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <kernel@quicinc.com>
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-3-git-send-email-quic_rohiagar@quicinc.com>
 <0a2fcbc0-4b18-a54c-9f91-9710cc0bea1c@linaro.org>
 <00bf888f-1501-70d6-eaf0-2592a36d1114@quicinc.com>
 <4bd9e859-cbc1-6b8b-9c22-0a1745924475@linaro.org>
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
In-Reply-To: <4bd9e859-cbc1-6b8b-9c22-0a1745924475@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: cHLSh3U4hL-nMNCP5uu42IGkOBNJiDxp
X-Proofpoint-ORIG-GUID: cHLSh3U4hL-nMNCP5uu42IGkOBNJiDxp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_05,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=738 impostorscore=0 suspectscore=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 clxscore=1015 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309050065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_002801_245250_780D96C5 
X-CRM114-Status: GOOD (  15.26  )
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


On 9/5/2023 12:50 PM, Krzysztof Kozlowski wrote:
> On 05/09/2023 09:08, Rohit Agarwal wrote:
>> On 9/5/2023 12:19 PM, Krzysztof Kozlowski wrote:
>>> On 05/09/2023 06:43, Rohit Agarwal wrote:
>>>> Add a dt-binding schema for SDX75 SoC.
>>>>
>>> It's the same as qcom,ipq9574-qmp-usb3-phy.
>> Seems like this change is not in the tree. Will rebase my change on top
>> of it and mention the dependency.
> ??? We do not talk about maintainer tree nor next. This was merged in
> mainline. You work on some old tree.
>
> Sorry, rebase and recheck all your patches on latest next. This includes
> running smatch, sparse and coccinelle. Do not develop on anything older
> than maintainer tree or next.
Oh, Not Sure which file I was looking into. Now got it. This change is 
present in qcom,sc8280xp-qmp-usb3-uni-phy.yaml.
Will update this to reuse the same bindings file and add the compatible 
string here.

Thanks,
Rohit.
>
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

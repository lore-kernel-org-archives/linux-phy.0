Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3D76D6A25E
	for <linux-phy@archiver.kernel.org>; Sun, 17 Nov 2024 11:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6VZe5qgvjffKeyGEY21XzMD+bnuai88cmhmYCKHvjs=; b=s3H7BUbDvFisWE
	bLIvMwRs0h4LR9Tawnm57S/6kBXI/NNZSD0Rwt/Dnld2tWFfy7xbE6RR1nDbQUuFXWmEpJ38CSTej
	ZwWrEQ0gDLPT6MpRESbYRw19BDnlzylp5Q0U5BOgbL5Q++EFcGCLeLDJTKOdtTsD8qxZJW7qBdtOl
	/ioa3twPM4G0tdcQVm/e+AKBRRwJh0tt5oAOzcjJ9wPHafFvEHlcgOou+l/4byQIh/3orFSgRaYxx
	gzjjaHQ0QC5s/E5M1C3dne/ZnqYob7soE5e8yjKBLrzkYz6Tiuwxr2jQ6rvFatJ6kXbL8f3BH+E2d
	/McgZKg6w7Oq6RJ2d9KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCdoP-00000007G3a-0Oh1;
	Sun, 17 Nov 2024 11:51:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCdoL-00000007G3C-3RoH
	for linux-phy@lists.infradead.org;
	Sun, 17 Nov 2024 11:51:27 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AHBQoEc018007;
	Sun, 17 Nov 2024 11:51:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r7yo6t5c3rbNwNoB4a/nilO9me/cwL2wq9BFqEdkOaQ=; b=N033CvT39zoJPGTi
	SI6IxaCvgitn3oQRKgrSg38MOpyRcKS59X19nrT2n7Kv0AxiGab6NGw94XJvjv8L
	6krbIKAKE/ISJZY0i2J+NgS+Er85Ql7eeJhJ6atFxoezb55vOr8jO6jv/yZ0z6p3
	kjqodzrfiD5v6hZHmTFpLrZb+KPKSI1P566fflB5KR45fa6PeC2HmaUfo3xUU5Kt
	li5I33x8ukiEl1jocnJ3CLN3Giq+kK/9Kx4OOlwjsZeTxI1OQdtUa2nob+ZDQ3ga
	rRf4UUfMKcUHnxXkY36huIzn7tV6J+7MyApxef3mU8NEOKQDrQJLfK+LKXHMaIk5
	jqNR9w==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42xkv9t618-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 17 Nov 2024 11:51:19 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AHBpIM5023103
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 17 Nov 2024 11:51:18 GMT
Received: from [10.216.58.29] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sun, 17 Nov
 2024 03:51:13 -0800
Message-ID: <51f7cfa8-3362-46e3-a9e5-e43d585d4ac0@quicinc.com>
Date: Sun, 17 Nov 2024 17:21:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5.15.y] phy: qcom: qmp: Fix NULL pointer dereference for
 USB Uni PHYs
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Andy Gross <agross@kernel.org>, Stephen Boyd
	<swboyd@chromium.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>, <stable@vger.kernel.org>
References: <20241115091545.2358156-1-quic_kriskura@quicinc.com>
 <ibh3n7gl5qcawpiyjgxy2yum6jsmfv5lpfefuun3m2ktldcswl@odhjnmkj5jre>
Content-Language: en-US
From: Krishna Kurapati <quic_kriskura@quicinc.com>
In-Reply-To: <ibh3n7gl5qcawpiyjgxy2yum6jsmfv5lpfefuun3m2ktldcswl@odhjnmkj5jre>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4Z9p9YvYcx7uD8TRA6dEdOwt9rs22_R9
X-Proofpoint-GUID: 4Z9p9YvYcx7uD8TRA6dEdOwt9rs22_R9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 priorityscore=1501 suspectscore=0
 malwarescore=0 phishscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 clxscore=1015 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411170106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_035126_009834_88F0C2EB 
X-CRM114-Status: GOOD (  19.38  )
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



On 11/15/2024 9:29 PM, Dmitry Baryshkov wrote:
> On Fri, Nov 15, 2024 at 02:45:45PM +0530, Krishna Kurapati wrote:
>> Commit [1] introduced DP support to QMP driver. While doing so, the
>> dp and usb configuration structures were added to a combo_phy_cfg
>> structure. During probe, the match data is used to parse and identify the
>> dp and usb configs separately. While doing so, the usb_cfg variable
>> represents the configuration parameters for USB part of the phy (whether
>> it is DP-Cobo or Uni). during probe, one corner case of parsing usb_cfg
>> for Uni PHYs is left incomplete and it is left as NULL. This NULL variable
>> further percolates down to qmp_phy_create() call essentially getting
>> de-referenced and causing a crash.
> 
> The UNI PHY platforms don't have usb3-phy subnode. As such the usb_cfg
> variable should not be used in the for_each_available_child_of_node()
> loop.
> 
> Please provide details for the platform on which you observe the crash
> and the backtrace.
> 

I got this error when I started working on multiport support (begining 
of 2023). Initially I tried testing on my code on 5.15, hence this patch 
was raised on the same.

The 2 qmp phys on sa8195 and sa8295 (based on sc8280xp) are uni phy and 
the following was the DT node that worked out for me on 5.15 codebase:


	usb_1_qmpphy: ssphy@88eb000 {
		compatible = "qcom,sm8150-qmp-usb3-uni-phy";
		reg = <0x088eb000 0x200>;
		#address-cells = <1>;
		#size-cells = <1>;
		ranges;
		//status = "disabled";
		clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
			 <&rpmhcc RPMH_CXO_CLK>,
			 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
			 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>;
		clock-names = "aux", "ref_clk_src", "ref", "com_aux";

		resets = <&gcc GCC_USB3UNIPHY_PHY_MP0_BCR>,
			 <&gcc GCC_USB3_UNIPHY_MP0_BCR>;
		reset-names = "phy", "common";

		//vdda-phy-supply = <&L3C>;
		vdda-pll-supply = <&L5E>;

		usb_1_ssphy: usb3-phy@88eb200 {
			reg = <0x088eb200 0x200>,
			      <0x088eb400 0x200>,
			      <0x088eb800 0x800>,
			      <0x088eb600 0x200>;
			#clock-cells = <0>;
			#phy-cells = <0>;
			clocks = <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
			clock-names = "pipe0";
			clock-output-names = "usb3_uni_phy_pipe_clk_src";
		};
	};


I was hitting the bug when I write the DT above way on top of 5.15 baseline.

In 5.15.y, the SM8150 usb_2_qmpphy dT is as follows:

                 usb_2_qmpphy: phy@88eb000 {
                         compatible = "qcom,sm8150-qmp-usb3-uni-phy";
                         reg = <0 0x088eb000 0 0x200>;
                         status = "disabled";
                         #address-cells = <2>;
                         #size-cells = <2>;
                         ranges;

                         clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
                                  <&rpmhcc RPMH_CXO_CLK>,
                                  <&gcc GCC_USB3_SEC_CLKREF_CLK>,
                                  <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
                         clock-names = "aux", "ref_clk_src", "ref", 
"com_aux";

                         resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
                                  <&gcc GCC_USB3_PHY_SEC_BCR>;
                         reset-names = "phy", "common";

                         usb_2_ssphy: phy@88eb200 {
                                 reg = <0 0x088eb200 0 0x200>,
                                       <0 0x088eb400 0 0x200>,
                                       <0 0x088eb800 0 0x800>,
                                       <0 0x088eb600 0 0x200>;
                                 #clock-cells = <0>;
                                 #phy-cells = <0>;
                                 clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
                                 clock-names = "pipe0";
                                 clock-output-names = 
"usb3_uni_phy_pipe_clk_src";
                         };
                 };

IIRC, when I tried using the above sm8150 dt on 5.15.y, the phy_create 
was (either not getting called) or crashing. Probably because 
"of_node_name_eq()" didn't find either "dp-phy" or "usb3-phy" and cfg 
variable was NULL.

I can try reproducing the issue and get back again in a week.

Apologies if I have misunderstood something and this patch doesn't make 
sense. Let me know if I have made any mistake anywhere (either in my DT) 
or in understanding.

Regards,
Krishna,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

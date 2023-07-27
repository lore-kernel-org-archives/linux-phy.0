Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C2B9EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jul 2023 06:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=js8BKQD9wt2TbJGE1Xo22H4l1zT0DSfP2+YwMW7BMvE=; b=ud9z2SMDxAbsUr
	+wS202vuwVMtxvT9uzSJlMCu+Kk8ItxQzCGkXjGLN+gZy7w2cJ4RTA3qIz6Vbhgmuum82fEkRNkOp
	0Pq5s2ARuJRknci+YfH7GqsY3jkGkqgK4IampwV0wRQy2Hb4G/d4hm7zIhrrxex9MQbbgWFge8VqW
	7IrolAqA5PzPcNU/is3/5WG4NOj2BaD9fjx7ZnsBon95ZRxEUql0dQ4FK1Kdj3cFsPAyPMMbAEuV+
	6YjysaaNIkMOvtPKfG3Xh/xv+xUH0j0+jPp0drQM0gf5ZTQVkvjBd6zEy3HCwrvEut0E36BPmExGM
	cyZP6P/QedAAdHR7upEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOuf0-00CKwu-3C;
	Thu, 27 Jul 2023 06:39:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOuex-00CKvs-2Z;
	Thu, 27 Jul 2023 06:39:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36R5uBcH023086;
	Thu, 27 Jul 2023 06:39:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=8WqSueMpyPR36uQqgpRx0xEa9Qkbf693u9xUJNMsytM=;
 b=l8XYvbETL29fbcpIbD6HK1+vcqGqgyz+mGHY4bdJNxBHU5/ME+umt4U473DOoDatoyOF
 XSGEFXsMTM94otNOzN83CquuStG9FIa/qzQof7u+fFpKrr50KFPFnsYb2QpYXE3yuWqj
 kk56EibTSzfK/qwQ/smtpSzj6X+ZRBAlD+RleCykYOcyUrXR7idLYYIv6ppmBzWFlmrN
 XcdxRlV68QDQ6qFOYDfHli0pK5oteqLB3pTIJXGyns1haXM/ysjZ/YIgffP04PT044y8
 PLOFWtGiMMfaGeUbQ0/n811D9HN0NDGRqF96hqdhPon6BVMeR2dKs/ttVTh4ttnQzb0D 7w== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3s37g0h88w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jul 2023 06:39:21 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 36R6dKsj029405
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jul 2023 06:39:20 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Wed, 26 Jul 2023 23:39:13 -0700
Date: Thu, 27 Jul 2023 12:09:09 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>
CC: Rob Herring <robh@kernel.org>, <agross@kernel.org>,
        <konrad.dybcio@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <rafal@milecki.pl>,
        <quic_srichara@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Message-ID: <20230727063908.GA15719@varda-linux.qualcomm.com>
References: <cover.1689913334.git.quic_varada@quicinc.com>
 <131eb1694229436919ac88bb9920fb54d6808388.1689913334.git.quic_varada@quicinc.com>
 <ymbcafqqhc6hgrfhpef4byehvfyjzovs5zeprmj343erdv5ti5@tj2iunu6whvi>
 <20230724160136.GA3619408-robh@kernel.org>
 <cst3d76ong32lzcatxlcr5gbakmh3grm5tehvd36wrdza5ozd5@gfl4ysu7hdo6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cst3d76ong32lzcatxlcr5gbakmh3grm5tehvd36wrdza5ozd5@gfl4ysu7hdo6>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: NZdzKQSQBtvcYzpROXyG5HPaYZxpeTJ1
X-Proofpoint-ORIG-GUID: NZdzKQSQBtvcYzpROXyG5HPaYZxpeTJ1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-26_08,2023-07-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 spamscore=0 impostorscore=0 mlxlogscore=875 phishscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2307270059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_233939_950299_7B4E0775 
X-CRM114-Status: GOOD (  15.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Bjorn & Rob,

On Tue, Jul 25, 2023 at 10:24:15PM -0700, Bjorn Andersson wrote:
> On Mon, Jul 24, 2023 at 10:01:36AM -0600, Rob Herring wrote:
> > On Fri, Jul 21, 2023 at 10:10:57PM -0700, Bjorn Andersson wrote:
> > > On Fri, Jul 21, 2023 at 10:05:27AM +0530, Varadarajan Narayanan wrote:
> > > [..]
> > > > diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> [..]
> > > > +examples:
> > > > +  - |
> > > > +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> > > > +    usbphy0: usb-phy@7b000 {
> > >
> > > usb@
> >
> > You mean phy@? But 'usb2-phy' is accepted too.
> >
>
> Yes, had the controller in mind, sorry about that.

Have posted a new patchset addressing the comments.
Please provide your feedback.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

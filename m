Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B672C04E69
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 15:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybqg7mz3odjmMbsIogRc1ukgw91FYXoS3IBN8fKUs0Q=; b=Je2pDcDw1evDgZ
	zx6/cgaR7XKjbw+wOHOYOWCmhjd7y9WXjHrEzn0I3IZZmHm71Fw+RyKoxiSijO416sNZz4+3hUBYM
	p5ighlDjBcbm0pRJX7UFX+TCMbJ0ysKktIcCUh2SdcgErWlXB2Mr0hM6tcI3q0uAax2weZ1TpUL7v
	EVZTUDihSTclQINunDl+eQN3iG81Xur4bC7bN9i12MmnhzP8hq+nyuJFFlwgfvu7yPIP5jG+CbL6b
	u+8XLGuw3ggIPApUgwAMxsrj5qYcrqCPNfDfbSab3QY7b+cB2S+e4UUvbiH6BiNxTPbl1/HN/mNWr
	3SdN8anUd42X/zVpVoDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU7SV-0081yM-0K;
	Thu, 10 Aug 2023 15:20:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU7SS-0081xW-0X;
	Thu, 10 Aug 2023 15:20:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37ADTO5g022254;
	Thu, 10 Aug 2023 15:19:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=FQTCIdCDZFdwitFmat+HWiYspb+Ntw8Z6YHrX5EBeRQ=;
 b=aSq+mqx+9R+U3Kltk2BFd2Lg13jEMLyL9sxYpoTNTrQgG42WA+Egj81wnXn6h6TTY6WL
 ///Yd0dZPhlNMLPG8B5rpx9niWtQjwRln6npE6/TP7eXkPVdg7P7XPQMqozbh22znLf3
 nQXOly7eWYGoQS4CS8AXBDOfp3V/5x9gEi36eaJMfr9XwaXsM2mVyKNQMURSNqkYZBOg
 yBYC7UOCt+9hdeqZcNTMCJOzKjWKS2oMtxvKHGWLvdZEL9ju79szHLgGe20bBjdfD8xb
 jrD2AaWQwJtIol9/9snycGIdeHm7+81B7Hx67fnTe6QKI9SITmkGysDP+9lryDETrHhy Jw== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3scqsj1f1v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Aug 2023 15:19:56 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37AFJdxM003329
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Aug 2023 15:19:40 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Thu, 10 Aug 2023 08:19:39 -0700
Date: Thu, 10 Aug 2023 08:19:38 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>,
        <arnd@arndb.de>, <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_srichara@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v7 2/5] phy: qcom-m31: Introduce qcom,m31 USB phy driver
Message-ID: <20230810151938.GP1428172@hu-bjorande-lv.qualcomm.com>
References: <cover.1691660905.git.quic_varada@quicinc.com>
 <b17b55b2ff2277bb9bfa99acdb2f98ed420dfb6e.1691660905.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b17b55b2ff2277bb9bfa99acdb2f98ed420dfb6e.1691660905.git.quic_varada@quicinc.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4z3Pg5_OydcxxP-Hb2M4_Cj_bUNVhuis
X-Proofpoint-GUID: 4z3Pg5_OydcxxP-Hb2M4_Cj_bUNVhuis
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-10_12,2023-08-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1011 suspectscore=0 mlxscore=0 mlxlogscore=729
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308100131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_082016_212949_F85C7F25 
X-CRM114-Status: GOOD (  10.50  )
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

On Thu, Aug 10, 2023 at 03:26:05PM +0530, Varadarajan Narayanan wrote:

"qcom,m31" is quite DT-ish, how about:

"phy: qcom: Introduce M31 USB PHY driver"

> Add the M31 USB2 phy driver.

Please expand this. The documentation [1] says "describe your problem",
so you can at least state what the M31 driver is and/or where this block
is found.

[1] https://docs.kernel.org/process/submitting-patches.html#describe-your-changes

Thanks for addressing my previous feedback.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 894DFEB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CapcM/GvfUBvhDDrE54O2gjwRIlU+HgUo8gjv8LPtc=; b=j4fnUWgXwrZmKT
	WYLi1ZTj8vLcNC/CYEwcOKnGK9C+PFAXE9hjZkF76dy9+CiCW+f5CR6DdjLXvouf2tlrnfCsOAlcL
	5BqKUHdfcZARrqQbNwKogttNh2vpZd3dUHi29o1weINfx/68Ng84tvd2O+hNqM4Ls/0UkdZeOnzYo
	Tqn5/Y6iL8YUJ/OdWYY3IP/FkmXh+eIOp+LheJX11JXqOuzOadur7aNTUKFyOYWLYyu8angld9Q5C
	Wj2yyIu0xR2EVHGQkM4EORf42FF8rJyzpZy9u+ZwIyfw01SfKUhn5keReYjay4vwPMF61GDyJ5zdv
	B1wYzDEUzV5hbvwRT6Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9gGb-00DpR1-0B;
	Thu, 15 Jun 2023 06:15:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9gGX-00DpQO-3C;
	Thu, 15 Jun 2023 06:15:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35F57MGO029957;
	Thu, 15 Jun 2023 06:15:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=rcuJGoUPbfta+nfafmsO1hk9cPHxSC1TL0jnUatlus8=;
 b=LxalkOwJPf2qOyalPmc3gJbJDUceepWfBhzNCya8JtvVZ6raBwG17PiMAs2kF3jJLt+d
 fq1X/O1C643mjEY4ZmyKvZ/VbWjR51PNUIL1RrnzA3Z7xCicXj9XrdWOyyiiZgCjmzWs
 w2ySWWXq4KEIizpo5xuA43Re2pmj5HAgeawPTQo+/BeHptcbCfKrLlgsngacciMWV66Q
 1CFvwF3W5cnylN/VUIFJycgLm5Nv6739nvAXShDAf9sBkfu9Ay6VYK8WkxPv90gM4c80
 3DiyOC5e2Rr4ZaJcvZXbs9B8njhl+o6p+uwKXSajGbHanb0VcUvWcv2Bop1eiGFl/8Qo AQ== 
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r7fae9jnc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 06:15:15 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35F6FEOu010333
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 06:15:14 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 14 Jun 2023 23:15:04 -0700
Date: Thu, 15 Jun 2023 11:44:59 +0530
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <p.zabel@pengutronix.de>, <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <broonie@kernel.org>, <rafal@milecki.pl>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 6/9] phy: qcom: Add qcom,m31 USB phy driver
Message-ID: <20230615061458.GG22186@varda-linux.qualcomm.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <353c5affd1d638bdc7e4ed187616a938e8d763a4.1686126439.git.quic_varada@quicinc.com>
 <1904d271-8db1-e012-ab00-060e418f4c14@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1904d271-8db1-e012-ab00-060e418f4c14@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Dbg8RrgnCegxLhykGu50sG5peXjt3tUd
X-Proofpoint-GUID: Dbg8RrgnCegxLhykGu50sG5peXjt3tUd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-15_03,2023-06-14_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 adultscore=0
 impostorscore=0 suspectscore=0 phishscore=0 mlxscore=0 mlxlogscore=495
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306150051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_231530_042675_463473CE 
X-CRM114-Status: GOOD (  14.23  )
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

On Wed, Jun 07, 2023 at 08:36:45PM +0200, Krzysztof Kozlowski wrote:
> On 07/06/2023 12:56, Varadarajan Narayanan wrote:
> > Include M31 phy driver if CONFIG_PHY_QCOM_M31_USB is enabled
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>
> That's not a separate commit.

Will combine with the driver and post new version.

Thanks
Varada

> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

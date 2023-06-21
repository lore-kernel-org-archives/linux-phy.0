Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0089EB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 10:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+tWNEg7JYDdZniB8RarijQXpx9+uDC9jyKgqdp/6vw=; b=PHa/Fs1bhsh89a
	FgrgN6v3Qfy0Kt6S/RKXN9b7EIln+7gSYHWF8ysAIYec2+wtBx1helmG91hxYXDA764qAIYi8Paly
	Q0EJQijvgQPLLDVotszvY0vQzREXRaO4kIrpgcAUywXG67rxOVFjR+BADbt6bYKb/I81A86fziS58
	3BwWxfs1VNEz1DdLcYz7lvUhAfGyyImYijFSN6P+y+oF8eQMlmxCEiTJa7BBTGvqXTgMiNHFILHLX
	gzlv9goCE0DIwyYuu4UayhmCKNP1RvUzTuGYm5klyy4V8AmZZr//BuLeo+3b4S+adLQYOyyne35Jg
	0mWZFlkmG4JDPKvGh+kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBupq-00DzVU-0Z;
	Wed, 21 Jun 2023 10:13:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBupR-00DzUH-1Z;
	Wed, 21 Jun 2023 10:12:49 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35L99KPH029693;
	Wed, 21 Jun 2023 10:12:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=gUmj21gH3bLd729QgzUszORR2zfcQYaMTPFMTdZi6aQ=;
 b=BTlTY3NqB9Z3X3tICIjVVlyJk0Tq8Uv5R/1XvxKpT+Ssv4yUMboTERpl5uoHVs0dgU9I
 qqO3ZSLN6vj/fYopLDTXAsWsN2Y7voKRI8YXfl4zsdxtEP1O+dNmOJHcKe7uDZJwEBV+
 ro1KOkl8deHF5YvtkGKNvC8vCmJJ91HguyJR1Ez3yU15N6r7n/in8S2TbJm9ROQciDbV
 Zhjt+l3G3BmLNQe+IIXRQTI7uyqnr3kJDfcZaX+pHEORgyUHvDwew0ruKmYcx6EMlhl2
 g3Z6WEtvieQadmxyXGXIbyOTtWePXpugfy8jUDMT8gxFzq8JXVRiUw72kIvNo8Ewo8bV ew== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rb7suu7px-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Jun 2023 10:12:29 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 35LACS89011080
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Jun 2023 10:12:28 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 21 Jun 2023 03:12:19 -0700
Date: Wed, 21 Jun 2023 15:42:15 +0530
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
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
Message-ID: <20230621101214.GB3533@varda-linux.qualcomm.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com>
 <98960024-7dbc-91a3-75de-90b529637916@linaro.org>
 <20230615052746.GB22186@varda-linux.qualcomm.com>
 <aca54f67-cc09-ff4f-93ca-6973d153db2c@linaro.org>
 <20230620093225.GA9966@varda-linux.qualcomm.com>
 <dd78b449-8ff8-108d-cc49-fbddbb660c76@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd78b449-8ff8-108d-cc49-fbddbb660c76@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Tzr6RSq6epP8dYrnQHwcDmS_aots0hgE
X-Proofpoint-ORIG-GUID: Tzr6RSq6epP8dYrnQHwcDmS_aots0hgE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-21_07,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 mlxlogscore=737 suspectscore=0 spamscore=0 mlxscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2305260000 definitions=main-2306210086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_031245_529742_F35121F5 
X-CRM114-Status: GOOD (  18.01  )
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

On Wed, Jun 21, 2023 at 10:43:38AM +0200, Krzysztof Kozlowski wrote:
> On 20/06/2023 11:32, Varadarajan Narayanan wrote:
>
> >
> >> And then we have... existing bindings qcom,usb-hs-phy.yaml. Don't create
> >> something similar with difference in the hyphen. Just use device
> >> specific compatible thus device specific filename.
> >
> > qcom,usb-hs-phy.yaml seems to be for ULPI mode phy and the
> > driver we are introducing is for UTMI. We would have to
> > modify phy-qcom-usb-hs.c to accomodate M31. Will that be
> > acceptable to phy-qcom-usb-hs.c owners/maintainers?
>
> We don't talk about drivers here but bindings. Why would you need to
> modify the driver when introducing new binding for different device?

Sorry. I misunderstood your feedback as "use the existing bindings".

Will name the bindings file as qcom,ipq5332-usb-hsphy.yaml and post
the next version.

Thanks
Varada

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

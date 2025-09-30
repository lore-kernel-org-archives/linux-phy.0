Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 558E2CAC5B8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 19:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKR1QJoM+L6dtgVXLxyc/xWtiSH0aTdrspqHZURyWSo=; b=fbb38nI3ncrRgX
	c5UDS6D6dp64uWo+vptZKdEDycgtRaeQV/G5IKYvGlkyyae+c1Ccc4YJZOcZMFS1iWZxkIzqNABjb
	iM4vXL9j5Q2RbP2bLI7C/JXg+vLQlwJr68ni4gk7T4TcJsfIb2io6Vu7+bKEc+2ymL/5izSLkwR6i
	6D5hclnlEV2KOL9C4EVoqFWiPnnpI5TEJ+zAnFnKyquvG4z2Oscfo3K88+LMLCZMyVzO8duyQDf8k
	z+IYeHIC119hrpwM9Hfe1ptgPpXhn1Mfm1wKAScaFmNR8vheGeNXkIU72+l2p/NZD1y+t7Uz/GBOU
	GIVC1zit4mY3IILXFdvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fnF-000000063PZ-0PF0;
	Tue, 30 Sep 2025 19:13:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fnB-000000063OP-2fcA
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 19:13:43 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UC0spU015093
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:13:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xSV9Cq1e9SR7LQlW44w+/ize
	/XOY0Num8chSiEvfZ7I=; b=e17CAAdPmEViiiRfz9DjP7RWN8bu7dQFSMUkU5At
	rqFHUetkJCwyTtYhVlMAyzfNjmQ+COIt0RzoX1LbuOQBVm616mGtDPTsEOZo/cHa
	rn3O33q//t2dUqleoTN1Yn2BSKwsu/2dzUTc2LVbD3uaTn58OpB4+sG+Rx3zfI6y
	IW2gAyQAQUta8xwKOG+Bwe9eUxSESA0SNMNA4iTS7i1lgsxOJY17i0u5tDWGqi2X
	4PDWUEcdJhCZ6m85DefF7S97zf/ylZogMYoJE3EyqePdM8mmw5zhX8Y6d6/8Fk77
	+7XnWiNhdFwJyrC6x98xfWrZbmMt/z/M9skQTSZBAX8ybw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr26m1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:13:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4dfe8dafd18so117347121cf.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 12:13:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759259620; x=1759864420;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xSV9Cq1e9SR7LQlW44w+/ize/XOY0Num8chSiEvfZ7I=;
        b=HPvRDU8d/3ie/w4QXx0n/QyvwXDDsJeY6nmEoo86mTxPFNxLIzIXSbZwB/6mRtszDc
         LAEek+7O2YzET4EicWdhoqbUv3Ihs30StMoH0+GqmETDs2bOURwRdL6a7rf+0Og7ykFk
         JCZeFe3J/NN86n49HpvHCfVHynHFqihjMT4z6JmpnK6d8fc38n56DkfAGn97pQmy5zNd
         VpngQcBVa2xv0uUb9+TchlRVMxB2OtDg3pxI5VplFd+s3zoYJBNJjwYkbPFvfPMttas1
         i4owMMF9f3XuSb1QBuMCnFxHKkPUvTzZAtvV+TdQFkaveJZT/vx2LLj3Bw+afNFish5s
         abJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq6q8uSrJvAfOgzWaiH7isKFenJXz/0aba69JQ4QZYI1SvCoVfT5CYIClPSnS/0+KQz8EpvwCU4Lw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4hfYJqN/zGC7biRJYEqZE9L5KPyOyB3K7vk8UdHhHV8pl/Hbe
	GMj4jmOH8e5a3+YSuAw0cfBg0FuQcJPbPCNslw5hp0O9gV64DhMZMBHBl+d3j3GH0xznif9jARR
	VF0+rggVeRynokU8iH60MUOjqdEwzcTL39DvmIKTm3D3h5+zeMngUoJQCWuFScGP3rFyw
X-Gm-Gg: ASbGnctG63f4WXo/jD31xs3wuKrccCBljGJOaGdfdo8fCUDO3AzSMcBF5do6AQiF/TZ
	ydFt7IGTsQ3HGJqgd4l2MM4pyEXW6qnnt6kIF2FoSACKq1xEymcmhgOZeiCcRkLUOR/iii/JQ4S
	ONb5Y7MaMj6ci6XYCm+nybp6dQ8dKbDcbecn+bp9hD6i9vQjbONUMTw38Ec5gO7E7283E0siMud
	he7o1pLZA39TBf+19/bLhRHp8vZ3nDEbNlrB+AEL3F/LyUDyJDo2BuMDH7fCrcnKT1RJZHp8mCY
	BtzZ5mP+dP97zakOhNltErHOYVsps1J+hdlk5tBUn1a+CTjzNxTLYttaDHIZJDxGqbVGASmx4W5
	MVs2s23qleD7y5GSrS3IZG7ZdxmvBWQu2qyaai+fcej7pEjRI4YDYKI8y5w==
X-Received: by 2002:ac8:59cf:0:b0:4d2:4df8:4cb5 with SMTP id d75a77b69052e-4e41bd7a0edmr10557611cf.4.1759259619577;
        Tue, 30 Sep 2025 12:13:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWLFpkh8hsbF0BWjWEBKzr7EQDGz46NeB9GyBzVRvHn8dRxUQboxhAGEfSv3X96BGi8K3Eww==
X-Received: by 2002:ac8:59cf:0:b0:4d2:4df8:4cb5 with SMTP id d75a77b69052e-4e41bd7a0edmr10557091cf.4.1759259619073;
        Tue, 30 Sep 2025 12:13:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583134312c7sm5264888e87.8.2025.09.30.12.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:13:38 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:13:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Romain Gantois <romain.gantois@bootlin.com>, Li Jun <jun.li@nxp.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: usb: switch: split out ports definition
Message-ID: <xxvexvdedkzbvhhoh6tubqkbrtxjskhgjockawa22onzwqusp5@iggjnospkryv>
References: <20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org>
 <vwlshz5li23xlthn5delxwxdsdci5nc22iey3xih4qf5uhbory@clskdsy64xpx>
 <426679ae-03c4-47d5-895d-7c927b2c3b07@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <426679ae-03c4-47d5-895d-7c927b2c3b07@linaro.org>
X-Proofpoint-GUID: eLxOz7v5Eu48Bx4otF_Wrd1TXiaAADKT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfXy1hWeEo/tBq/
 iXkhD5ANkRWMfHSTUop0przs+38P53+MhVAmTG74x5DPles3O+3xCJOIcJhHUwdsS3Jp+lHAw5F
 1bgmRF4X/Y7R8chO7d+DNW3fYUfDtq24OANyA+uwNNi9ecA1fivfN6M+2EvBz5VGmoi3s2jjUz7
 evJhLGJrixaSUpaYfU8n35/YdekWznss1wogZiP/RSb9JeWaZkDD3bi7wy0ud+WqtlrzrJDUhic
 jO+BtvFC6q6DekDMx+IRjVZGqT/BPNRdEpTobtUInj8F+VwMhFj2gYyWWgCQwzCvnq/ey2mvBYL
 qsrSsG9OvQ44366X14TClpc/ekuy+ye9G7YE5KmnJsqDBd6C2Zzz9ae1YMCy2NTfNANji+4it6M
 a5E2AP561h9HG2t2y9YZbkuXCGYNsQ==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68dc2be5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=0GIP9b1rOs9S8cRHSfUA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: eLxOz7v5Eu48Bx4otF_Wrd1TXiaAADKT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_121341_683636_205250A2 
X-CRM114-Status: GOOD (  20.65  )
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

On Tue, Sep 30, 2025 at 08:48:13PM +0200, Neil Armstrong wrote:
> On 9/30/25 20:43, Dmitry Baryshkov wrote:
> > On Tue, Sep 30, 2025 at 07:17:21PM +0200, Neil Armstrong wrote:
> > > The ports definition currently defined in the usb-switch.yaml
> > > fits standards devices which are either recipient of altmode
> > > muxing and orientation switching events or an element of the
> > > USB Super Speed data lanes.
> > > 
> > > This doesn't necessarely fit combo PHYs like the Qualcomm
> > > USB3/DP Combo which has a different ports representation.
> > > 
> > > Move the ports definition to a separate usb-switch-ports.yaml
> > > and reference it next to the usb-switch.yaml, except for
> > > the Qualcomm USB3/DP Combo PHY bindings.
> > 
> > Isn't it easier to make QMP PHY use $ref for port nodes instead of allOf
> > and keep ports definitions inside the usb-switch schema?
> 
> Rob asked to not do that... see https://lore.kernel.org/all/20250905175533.GA1000951-robh@kernel.org/

(Just for the sake of keeping it here too): your current patch allows
using mode-switch and retimer-switch for the fsl,imx95-usb-phy device,
which it should not (because it can only be an orientation-switch).
Likewise our Combo QMP PHYs should only be orientation and/or mux, but
not retimer. I am not sure how to solve it without actually allowing
properties to reference nodes from another schema.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

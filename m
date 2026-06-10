Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB641CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 13:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bngn/RSPlTCkMKm2dSVQ8RZGUD0xbD/GE8W1uaPRajc=; b=rpRb2OhYKwCIkd
	krmlI8OoP9TReyJFLtMOCa2W73jXCc0TWv48IKgQVfTKY04tZzgooPlWvPSxM2r6XI0VDllzhkFkU
	yWg0UIXs9WKN0KlpA3fvwtiwr02VvxDIa5z7xshALbhrhgvs7bHc5SBeKWrdOBGCfVxcjnNFE1qGS
	0fRLoSg7TL5PU2VLnssc7QIEsTmsIT2TfZv0xRgDiR5HzNSVE9JRbDzRFetRV3bexvivKvnMnAGEh
	gWzLm+6hBYMLW+ChWRnFmgsk+Ckwc42r+FbepUq9c4BDpHc9+GPgCLtBYjXcsqXLTTQdJqacRdQd0
	SJD5Iv6vZw9W3S+7pP3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIqy-00000007kbR-43iS;
	Wed, 10 Jun 2026 13:20:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIqw-00000007kb7-0SYt
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 13:20:19 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACBgES3763396
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:20:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dqR2B1jbSFWY5YhOH3YYZLkD
	N4ze6vPwfHF35RjzG/I=; b=Wp01LxkSbdcfdzVaWIPEOcshdfnbwbBYhcASZypM
	NJBl07epf54iboZuX1pLceKa4RRyydgNbENz7536lOnv9zLuPjWwe1jgM7TAzesr
	cCO5rmCwRIizU8IM2QPj5GKefVjyAdT/QBH+EsHaO9Xvpn5JhEAcUZ0dMW2Ase5I
	ONujkN8476ygNfmQ+73AsT3874/coHNy8iY08To0v3oiUfOA6E1z2aFBY5TwigYm
	4lSt5c/b0DlSNjOD9VEp/KKDg+ndTwUeB6FDAByUxqKnHEhIbs6Ay83m75kJSKZY
	moMq+mBeoQpUA8S5y22MKNuxhXjm0eD564ZCNTWtWcsucw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epwnetky6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:20:17 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9639d763d99so2872474241.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 06:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781097616; x=1781702416; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dqR2B1jbSFWY5YhOH3YYZLkDN4ze6vPwfHF35RjzG/I=;
        b=F/iDNmv8660r7fih+6O5F4wozuSyEL0DFtQwBMgy9CxgclFzPj/MR6FMUT0KLYe7UL
         fmU4Q3hsbuB7/4JQUSa4v0qj3lChFiGoMMxx68CVqJUJbWfu2dObJ6/VqfKSBQZv5uG8
         9oPCsA+kQSxy/BJrlgwcfgO7KE+V9jfw3S1tbmPLZd416aSAT5i1ASh124AWko75bRR4
         9bGrufHypfmgYRRD1rTySN97Cntfxfbxt1Z+uCV847Cdd10llIsnoK5UXyq4dbnOb5+a
         4G479401yRmpJm9dS+RVU1x6aKQS+sPpDhhrR3OJio/jcp6q3CUEkV5dKZ4lBkVa6ffY
         33BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781097616; x=1781702416;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqR2B1jbSFWY5YhOH3YYZLkDN4ze6vPwfHF35RjzG/I=;
        b=ckfZMefX1yaXUGGpbboEWtD+Yq0D0ILTOL4Tl7lZhDVXCAL/jQQqG0NC7xYOr2pVr0
         kiMWVNwmO8TG4c7mFtYLG7PQhQAoigUYEhf6EVAcRnaxGH0+d0q0w3infAVWB/eNK4C0
         8OIfjdEE+dVPXC3tW77sIvE7t4IZvmpR0dILl0EXWJ31FOLCgRkDNFxaAN6VNohRvQgM
         tGG/EKfzGYzYZEsRdEUr9xg40BwWOK1jj1xJFLoFpLTHZnokllAzsdKVkSpxz80jZXmX
         pEuVm1jWpm6HKytdzrMUmH7ul6jaR4kzILixzkBsY0yMD40qhTA68soW4nHZ/IC80sbZ
         Y3kg==
X-Forwarded-Encrypted: i=1; AFNElJ/d/6qxWmMmhFL+ZPuBx3As3UMkl/u5TSrrTTavqJiMeQ4Xgi0tdqL88d1Y/WzcOyFCXA1zCg7X21A=@lists.infradead.org
X-Gm-Message-State: AOJu0YzNsMFRJDfbpDtsJ2ui2sIWP0OEmtEhz/1OCElq1t51UkhPfGa3
	OClCvlGarVewz87MK2YOw1prJrDD1u6PO0cVnjvLipL2RP3+QlgH4+M6FW36SN0lZz4BpKN9Le8
	Rw4FxcVu/r0arZ59Zh0yPADTfX/xACnCOOaxWyhNphoB6ZAS+wRcZKcAXI4jwdsrlx4Gj
X-Gm-Gg: Acq92OFNqKBayMYq8uvQSyD/ElIhGiiq+t5ZkY6hTaW8mecjSOcAsrpjDE28+X1WmEE
	km4CH9CSnA8BZ6cWJR3vT8Z0avp1Fr/Wt3rsxCVGpo56zGVBK8q7eGQnh+zuPq8lnwFmAndKgpY
	NLz9dIBDNkJCBqsI5aKmLEp+aKqMgvXjAQDOzekk6SdtoShmluGU1bh+ulBhYT0O5OCLJDNyhdO
	qNbDSnwwvzkcd2xaxttL2Fnvl23FM0vd+UUU2RaVOhxsi2t+9kf+pLZLL1tQSI3uhCLpkMSTsD7
	AdVvjGrqBm1Ov7LCUb81qoaPhxXqgRWRrjyi2BoHgSSlENlA1LUEKaO/5rto/3tRQjfO44dQszt
	aBzEPsw0ZiA1DoMJk/q2BVqOz6d6vKS5NFl3iA001cq31jA7B+OsDuj6KeiCWZq5sYuXnS9xXhv
	igJw2JvYpceVJvy1YFTzByX+acUQrzK6JUXiQLsLYe+BJzJg==
X-Received: by 2002:a05:6102:370f:b0:633:3040:ca5d with SMTP id ada2fe7eead31-6fef25c9f7dmr12034047137.9.1781097616431;
        Wed, 10 Jun 2026 06:20:16 -0700 (PDT)
X-Received: by 2002:a05:6102:370f:b0:633:3040:ca5d with SMTP id ada2fe7eead31-6fef25c9f7dmr12033948137.9.1781097615457;
        Wed, 10 Jun 2026 06:20:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97b0f5sm5424732e87.41.2026.06.10.06.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 06:20:14 -0700 (PDT)
Date: Wed, 10 Jun 2026 16:20:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] Fix up QUSB2 PHY description for MSM8996/SM61[12]5
Message-ID: <nrdf44ixzjqdyxdjnf54ucotpbncehjxjqygqnrknc66pyqfau@vm3emv662bub>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <b05e860e-ace5-4399-bbd9-493f7bbfe74d@oss.qualcomm.com>
 <cnyhnyoce6v4d5roijrceuzd3ujvvw7ozklulaxkibptvjancm@cqbqu2aa7bz6>
 <852caded-eacf-4ac1-8fe5-83dd9285ef11@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <852caded-eacf-4ac1-8fe5-83dd9285ef11@oss.qualcomm.com>
X-Proofpoint-GUID: Y1rZghb2fhf-LmgBPQcEeg6LojYE31dG
X-Authority-Analysis: v=2.4 cv=ebYNubEH c=1 sm=1 tr=0 ts=6a296491 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=C_BCb9cMjCrCBmKrUK0A:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: Y1rZghb2fhf-LmgBPQcEeg6LojYE31dG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyNyBTYWx0ZWRfX2iBl/+TN9pfh
 tGyaV9Jh+PESNgjPrz0o/2etDOnz86DxXdEcvCbdXS0vpM4wowcEdVe5kXfq6mv0eJbVZwZaNOx
 VVkerBWE4zTyI+MFmlxJRL3zHM2VrDnwSMNm45p0G6WXxkefTwC/YRwWbJd17eKjY+kBlwqsl/h
 0UAO/rSad8R/WqT6N7J54k0w4RsPHIcFFy9Y/XVyL/BWjonzKAqIRrGagFiaK6NMt0wI6RM1MMQ
 Uih9HTccZgG/j9qRKFPl/RmyPT1xjvnIN1FpwHDDqLEYUdAql38OMOjy2fDuAcUCh3hW72wLVuK
 /UFhX5ZPk+pUPRLotZOHiAEnvZMXneWVLgmA0e5FcMPLTD5Kqp+iCqvYAySlrqjMzEci937vr5Q
 HFXJZhLlIRlWcthqfqQKttfHAv5u/hVPkDRGGyRm4wnhh7mIPkBG2JW4vwUZTSs/f3rSp4ubBgo
 CV27NKHuSKXU3TwSyTQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_062018_154208_D6E0C2DB 
X-CRM114-Status: GOOD (  23.19  )
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

On Wed, Jun 10, 2026 at 03:13:01PM +0200, Konrad Dybcio wrote:
> On 6/10/26 3:03 PM, Dmitry Baryshkov wrote:
> > On Wed, Jun 10, 2026 at 02:49:31PM +0200, Konrad Dybcio wrote:
> >> On 6/10/26 2:04 PM, Konrad Dybcio wrote:
> >>> The MSM8996 QUSB2PHY was not being guaranteed a power source.
> >>> The SM6125's QUSB2PHY was believed to be idential as the 96 one. It
> >>> wasn't. This series tackles that, freeing us of some dt checker
> >>> errors about vdd-supply not found on MSM8996 boards.
> >>>
> >>> Compile-tested only, but docs confirm my findings..
> >>>
> >>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>> ---
> >>> Konrad Dybcio (4):
> >>>       dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996
> >>>       phy: qcom-qusb2: Fix SM6115 init sequence
> >>>       arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
> >>>       arm64: dts: qcom: sm6125: Fix QUSB2 compatible
> >>>
> >>>  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
> >>>  arch/arm64/boot/dts/qcom/msm8996.dtsi              | 10 +++++++
> >>>  arch/arm64/boot/dts/qcom/sm6125.dtsi               |  3 ++-
> >>>  drivers/phy/qualcomm/phy-qcom-qusb2.c              |  4 +--
> >>>  4 files changed, 43 insertions(+), 5 deletions(-)
> >>> ---
> >>
> >> Note that msm8996pro may need even more looking into, but that's a
> >> story for another day
> > 
> > JFYI, MSM8996 Pro is being used in the DRM / Mesa CI. If there is an
> > important difference, it would be nice to get it sorted out too.
> 
> reg   96   pro
> 0x80 0xF8  0xD0 [!] QUSB2PHY_PORT_TUNE1
> 0x84 0xB3  0xB3
> 0x88 0x83  0x83
> 0x8C 0xC0  0xC0
> 0x90 none  0x02 [!] QUSB2PHY_PORT_TUNE5
> 0x08 0x30  0x30
> 0x0C 0x79  0x79
> 0x10 0x21  0x21
> 0x9C 0x14  0x14
> 0x1C 0x9F  0x9F
> 0x18 0x00  0x00
> 
> apparently this is indeed SoC-specific (via docs) but also apparently
> may not be very important (although should be fixed regardless as
> some designs may rely on this)

Would you send a patch, please?

> 
> Konrad
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

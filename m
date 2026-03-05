Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62974EEF331
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 08:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biWvKHcwqBkK381SOIjL+/ou5ExA9K9LN9xFvvt0KAI=; b=gUcJJHzFWzF8Jl
	bfCrQoeI0QtKta7RMJgepcWMnm0hsDS3luem9uSEZpxYagBy5hVoq8C4LqC1KCr1uQi3qzxPDJ40l
	LIleAIllMe4rEApFgW6OWYrZh14fekL+E+Pm4ShDk/jcAlvOLiwXsVxLRg/43w7nnUA3zADXs+dUa
	Bq4oFqTAw1dlXgGRmgHkO0O/rrvqCW8Vxx91VuwQQiKo2aT4AH5kvhcnbOmZ7jFiQ66NM20wNy2mE
	MYlxpj8iBvb8QPG+92jxufhpyUrZQPxTZVnVng3BXrpHo/stYzNY0YoHy/Z1usTIFZvS9FCE2COMa
	SHbtPV+pQtD3W2nVSfag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4WQ-00000001GNk-0LlF;
	Thu, 05 Mar 2026 08:57:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4WN-00000001GMu-1mvo
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 08:57:28 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6258nVpW021019
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 08:57:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g2QX49Vqh00Z07fTh/aNaujc
	J84T6LYPP7usUAtLV70=; b=PTNTgkuxe4kDhyEN14MR94TGk1n8uX5dsmw8l3cD
	R+V2ZHdkmEqqmzQnGnsEs/R6F/QQsq8/C4eF15o7HYol/DxmhCJi0gK2EeMOog2n
	e710eqoLrx4Z0XzeEXGmitYubB6UjyPWyzanCWBt/j8qpBktsu/stcGFA4UVSgM4
	6yKEPG332QAZ89fQMnTZxMicvtNbTsxXKODT0HoFtwItchPm6P8EIyfcb5PX8YA3
	lDiG3kVq9+B2BTH2rs7sMQ2UH+2bjnu5rhoJghvihxxWcEXXOcOY94XbEb7cWaGy
	6DIBYGIg19GrmhrI+hmrQPiv1OigAVfRMp+hGUvHFZfpGA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpuptj0bh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 08:57:26 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-12776bebeb3so3716234c88.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 00:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772701046; x=1773305846; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g2QX49Vqh00Z07fTh/aNaujcJ84T6LYPP7usUAtLV70=;
        b=PY64NzEDN+k7VKiiy85wGwYzJ5hr72mL7u0L2ng+QYMgZXrbWAzLrauOniCNtpqjxP
         9vP9AQu48T+74ti2eXzn3HciPB76c+OTXVi6+Gw19yyZuooLx+FjKI9i0LCWIFgjt8bF
         1MC9MvM/rOT5ZaZ+1LjNdtHf1TEug6x8N9L3/uCvtDGbuftAPpVgo5l+Q390e0mpW2aF
         5RjLp5fv1kxT/Uu3jimzFdpbKgb+q7knqAMUWx3cdpNtbl9pmIZQRx2gDaJJNVnDtWGu
         oECSrfrxrE17klZcCLdUt341b2BE+rKY1mLWm0wSdzwbydTkYg7tSnVshPTYjYfgnZ22
         7cEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701046; x=1773305846;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g2QX49Vqh00Z07fTh/aNaujcJ84T6LYPP7usUAtLV70=;
        b=Fm0dlDF2zyz29ylre46TvirCLJw3RlsrVohZJ0jOTNq+7URXG0JVczSu4JtYyGYdj0
         tV3VO2fxUx3+h7ALKZ3Mls4aSHyHI6uFsMx+2h3WGl6jTrjq/e2F9zPHRhcvibo7aS8v
         z79lxdutqVtZysfLYr0Nqu2+Nqv9JnQGobeJNuuHpFjBgnzOdc2nRXz3bkr9ksR4ey1N
         NJt/9ejkfiifky8rA89Hgrp0fdWssdwrA96mlnrxBhoCXdPJKQ3o99SCVMp8jWJgVYyO
         ctFSWf6deZCBo6AU5IMDmgHeUaJOwqM7NnQBgNlOpxpxcdjXJXpwYspFFIwcGEX9C30G
         erTg==
X-Forwarded-Encrypted: i=1; AJvYcCWleqWa2izxfHlK14Rl1g33vl8JTkZZHm4GbKFvSwbbCX25se+XFvEvCs+UwS7tnWrR6EN63edEmbE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2h7cZO3Lz7jmQeM+7zLCG+PtPIo8nQFeTfw/kuQsLg3yb58gi
	1Uv6OkNgGorMWrv3ZJNbzKkmSVz6eZMgr/EJtcqbjJS1x208a5Ytyfcx2GiIYhvHXrJJ3pbPLo8
	Y6Yu4bNRAePfIZJ+N+yv9sF5VhoWP35fJ7TTDS2+J+odpQ0NxTDvqn3d4+iIYJMcHzWTw
X-Gm-Gg: ATEYQzzAuO2bnsOQf4Rjc0lxyAppfmpNxD6cuXA3PoJkaB/vFK0qbOu3eN8vw0LTRP3
	7Gps08gWuvseXvzGkTCbx/PBcauNNvdT2JMTerGOgpaD/JSemrAakLfOanJ5muCZZyCQrkHpKuT
	w23q+0AMrnqJKk781LydFVeGPBW+0rz1/PBhg/rqnrm3VrMjIOdHA/JtWFSqG4APC+oT6ERJzL+
	FWUTVuKFjJIqSutUaL/I/lUqU+46GYK48lGgexEeWsT4xZDKZkmU7HsrHEzBBTqu4bxHnkJUaHI
	w5y6bb3vnQtX2j8ACdOB1TUj3ahDAM7KeLv1HhdLqF7kLXrL+0XMLOpeL5izDWTVmwFCO2wuktD
	xifWMrJ1kf3xjq6IQBNwt2CeYiudgXdjkY9HKqn+t6xPCicOE4gj6Qm6nJOQ4BuFqlceq
X-Received: by 2002:a05:7300:fd04:b0:2ba:8018:cc53 with SMTP id 5a478bee46e88-2be311d1920mr1882892eec.35.1772701045730;
        Thu, 05 Mar 2026 00:57:25 -0800 (PST)
X-Received: by 2002:a05:7300:fd04:b0:2ba:8018:cc53 with SMTP id 5a478bee46e88-2be311d1920mr1882872eec.35.1772701045085;
        Thu, 05 Mar 2026 00:57:25 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2056acd1sm5583020eec.22.2026.03.05.00.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 00:57:24 -0800 (PST)
Date: Thu, 5 Mar 2026 00:57:22 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <aalFcobmkaTTjQlE@hu-qianyu-lv.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
 <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
 <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
 <578c485e-b7d3-4468-bece-efeb6db2b1e1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <578c485e-b7d3-4468-bece-efeb6db2b1e1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MSBTYWx0ZWRfX4e9SG8dGUHJO
 slFSBoxuntIi9YRZ1MNyMb2HdZtroQKGDTCn3oykm9ERvFf7K5HTkkdZHxlS5yiWGP7js/enEM4
 jO6J2KhRMITXqCgmG0ufNeNAnyN1FDxjS3PXa36Up6JghYLFKzB4RciQ3gELj0sVn+ECPS9tL7x
 dVLOlIHdVGK3vdXs/U+lEQodm1yFdhfhJ6g5SNG6N0IyHlfY7k1Pz2Nb0VpyjTYZCfxNDRxD04a
 dMgtYSeeYIg/AWnMi1IpPozXAJIquaUb9nh8WzXybx4/CO7D4iIrNcf11aAMlBBelMssVRlZ+aE
 BF7SjVOfEkEwxZ7C5E1SiJ+CUiXm3cDJ1ZrpmD2rhoOq0+7BrPnteQz6st4as9Bcj6q6LCyI4zw
 gUqMquxFaVGgYA0pjClys0uWYyqXVSI7PK4dRiBWnxQxGQOVi3Zavm2xt/ibIXTnR4O2K90eOTP
 Y4RrM4yqSs2WzN9FVLQ==
X-Proofpoint-ORIG-GUID: G9u_TFovkwnsPPmRDlL69Hh0WomcTtli
X-Authority-Analysis: v=2.4 cv=Ddsaa/tW c=1 sm=1 tr=0 ts=69a94576 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=o9cD3-WFi3VABs8zBZsA:9 a=CjuIK1q_8ugA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: G9u_TFovkwnsPPmRDlL69Hh0WomcTtli
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_005727_472830_20B4DEAD 
X-CRM114-Status: GOOD (  39.83  )
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

On Tue, Mar 03, 2026 at 12:14:29PM +0100, Konrad Dybcio wrote:
> On 3/2/26 11:21 AM, Qiang Yu wrote:
> > On Fri, Feb 13, 2026 at 07:47:36PM +0200, Dmitry Baryshkov wrote:
> >> On Wed, Feb 11, 2026 at 07:32:23PM -0800, Qiang Yu wrote:
> >>> On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
> >>>> On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> >>>>> The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> >>>>> refgen. The refgen itself requires two separate power supplies:
> >>>>> vdda-refgen0p9 and vdda-refgen1p2.
> >>>>>
> >>>>> Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
> >>>>
> >>>> How does the driver matter for the bindings? If I add dedicated driver
> >>>> for refgen, then I change the bindings?
> >>>
> >>> Yeah, I know that dt-bindings should describe hardware, not software. But
> >>> what I meant to say is that the refgen is different from qref which is
> >>> controlled via TCSR registers and its LDOs are requested to vote in
> >>> tcsrcc driver. The refgen doesn't required register setting and it doesn't
> >>> have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> >>> this statement in next version.
> >>
> >> I must admit, I could not find references to the refgen in any of Glymur
> >> PCIe-related HPGs.
> >>
> >>>
> >>>>
> >>>> There is qcom,sc8280xp-refgen-regulator so why there cannot be
> >>>> qcom,x1e-refgen-regulator?
> >>>
> >>> I think we can and it seems better because the refgen for pcie phy also
> >>> supplies reference voltage to other modules like usb. But I checked the
> >>> qcom-refgen-regulator.c, it contains some register settings and there is
> >>> no LDOs voting. I'm not sure what does those register do, maybe Konrad
> >>> can provide some backgroud.
> >>
> >> Those regs provide voting for refgen, because on those platforms DSI
> >> block doesn't have a hardware vote for refgen.
> > 
> > Hi Konrad, Dmitry
> > 
> > I tried to model the reference voltage as a fixed regulator but the fixed
> > regulator driver only supports a single vin-supply. However, the refgen
> > block requires two separate power supplies (1.2V and 0.9V LDOs).
> > 
> > Would it be appropriate to modify the qcom-refgen-regulator.c driver to
> > handle LDO voting for both the 1.2V and 0.9V supplies? In the regulator's
> > enable/disable callbacks, we could vote for and unvote these two LDOs
> > instead of performing register operations.
> 
> Wait, so you want to associate the MMIO-controlled refgen's driver with
> a dummy regulator that takes 2 supplies? I didn't catch that part earlier,
> that's not great..
> 
> Or do we actually have access to the MMIO of *this* refgen and can control

I can't find related info in any documentation.

> it (except we don't do that today because X Y Z)?
>

But even if we could find registers to enable/disable the refgen block,
the two LDOs (1.2V and 0.9V) would still need to be voted/unvoted manually
since they're separate power rails that feed the refgen.

I searched through the drivers/regulator/ directory and couldn't find any
existing examples where a regulator driver enables/disables other
regulators in its own enable/disable callbacks. This pattern doesn't seem
to be commonly used in the kernel.

So seems like we have to vote this two LDOs in phy driver.

- Qiang Yu
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8166CC61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UYKpdCHgptoM4SWdzGG4p91cWCyk1DN31JB6qb5/Do=; b=KNxs1iXeajMcs/
	GG3b29kFtZ/H1Wxd5LmpxCvUhCNzDtZGhiHr5yfO1Dl+P2NRjj5vGddE3kTHjT5KZ8RRBjBFvyrjY
	PcytL04++mMfA4eghdFPhZ55405YsTtDlGKclcPSsDI3vQrAapRInJYqeKkZhfxjSkDwkU3G9MRvz
	v2J5LKbnFUnMoXKOoSbddZfdbKFLFtvtkJWsvRX11Ar7vgo8w1smh7VJUnNSsqPeR4d52fw4OTMJM
	cRIw3tauVecRXHDKO72aedYZHjHi057HQOioEi/UY5FJ8XG+llfBcNA+9HgFRgGBYD/iwVsZVKUFX
	MlVNnlqfefTpgu2Drr1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OI5-0000000CAQn-0n9U;
	Tue, 01 Sep 2026 13:12:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OI2-0000000CAQ4-3pOq
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:12:40 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJd5H2406438
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:12:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b4svtbf1ssYRglJJD6Szy4t0jDZQ1u+zIb5rrNp1VYo=; b=DcohuhmEjpLNEsP5
	+fXbY99VV61e7fZNptdUJbAuWi/YmvyDnnevc7K5Xkr7CEj5X4aJqdB88d1+mhW3
	HdYuZLQ+sG6fViTl6TYW0Qfrfc+FKq7PgQUA+0v++4qsHAHE+V4s1cKtMsCGi0Nb
	KjpAcNsSwoyJkpVO3bfvwSpPn5RcXNvzUxlwViTtydQwn5VFks6sv7jzeMm+P6r1
	hDpzD36D8r55NIWpK+RLS84IFhwrqSFhpPmyA4BgGwBk8Px4awb5XSi4XEFCVwa0
	o2uPwGAO215NpiTe/jaEKCqcjT8LzlCp/JM6HHRaV1/SPH3GY5IE50ol/ZH6Tfik
	ScrVFA==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdp7r2euh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:12:37 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5c67601735eso130505e0c.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788268357; x=1788873157; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=b4svtbf1ssYRglJJD6Szy4t0jDZQ1u+zIb5rrNp1VYo=;
        b=g13f6+XR7sCIQJ0Oa1e0fJupME3eQDc2yqlskt/24qojHaHSzrOpCrsCDbL48X3rBM
         Wi3CKm70B793rcoe0/lHpRjA7pMtuFFMUG0Jc/U1QYtxfO+2rGzCMdtPzOa88h2tcZxG
         reOJZiEDS1+3Yw1p83YiJ2nY/wuwkg7sdiNW3pcDhUy6WKAHvgCPoX8aQ+D23dLHXWM0
         lfidcmI+gfb1y2I9AYisIiDxSnsKiDZC5uvZBapf4h38fexnIY+JDonfc5uCQmAMFVvh
         MQPHzEoP2rfcENeZyatEvH/BCsY6AFJgNSyi278wiT4WQfyRlLojef53ofcF9MoLICL1
         vkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788268357; x=1788873157;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=b4svtbf1ssYRglJJD6Szy4t0jDZQ1u+zIb5rrNp1VYo=;
        b=gDq+6ZcvoKxV1ybt/LVQ0I+OKWS4kBvq08kmmYMQfjU151ghx1mGgFFfkfeZvoZ+t4
         /0LC+gaHkvEe0GbmFApv1Fxjjc9mEjbtLH1uoP9tNpJFbC/NTah69zOKZ49u5vDuUpfp
         vH1myM+pDEATGKqdZLq6kHOqbPdrjwEcpwaXfaJYoI3NISPw9mXKvvBbwnG1RKhRjsWz
         mlleRyPuUO4JpKvXdgKBV8RsJC4t+xOllJZ1YigWk7AArKs3EsI1zAiJpcoyFWfm73XP
         YPaPobYVTAQwcV0PiaIBQeYXQKBIKAWNBOyzZTQy4U0Nx/1LeLBd8RUrQq0rpQxxxkpN
         5YbQ==
X-Forwarded-Encrypted: i=1; AHgh+RrZvAIpWIhrgwvS/kKqpL6TcGg2sSzryNCDiRm2OC14lr2KdlGWLw44f5BaZiPFDBqB/aS5fMeTof8=@lists.infradead.org
X-Gm-Message-State: AFuF++mfZpiy/XzS31o6/vt9ZSOGFbSUhvNm2I1pbNdxRPrTpsIqDB/x
	1PFY1k5HvMNEHRUvL07/XpvqRazaTgHWyHTDOu+U0nYXFbQQO1lOXru+SrgqrRSIpMxSLLHRQ43
	pgYXD78kGim+M45W5r+vcvGeqOs4oekoh3PuNFYXDAPwgxZxTr7TAo9gPAbQDq2WcDIzL
X-Gm-Gg: AR+sD12tCUjX/Bs8sKuho1MxMXR8Z481URhmJstopRjak+QOmg0dRTp3NPMRkVNeyX6
	EmEYAJoWGC/pBe4ldWR5FGW7iTJMtcQBsdi8fSOFWZw7kHzCS6wVdYUZFmB2AbfgzJ/FV3lYoFk
	j2E84YeliOq569cS0qhNbWBDwC9KwoXIYfeRhgPMVqjEQIQXSKpg54NM/dky4woSgttxtGhqjcG
	pdaygm2t0SHYbNjN5rEs1FrJzVuDJL0FpmNpS+f9LhjPlFTABQ8JKzQj0NxIbnrt6u1koztITUV
	NRJFJbEObxLPfQkRsM/ScWh0+Dk2r2IraD5Mq3mmXU9848haDrzFf0fEnD4EkUPxJIt2SNUo3R+
	MOGOzqQsNs17XS4oW4Py1XQ==
X-Received: by 2002:a05:6102:5044:b0:780:6fc7:2181 with SMTP id ada2fe7eead31-7859956a0e9mr4248240137.2.1788268356866;
        Tue, 01 Sep 2026 06:12:36 -0700 (PDT)
X-Received: by 2002:a05:6102:5044:b0:780:6fc7:2181 with SMTP id ada2fe7eead31-7859956a0e9mr4248202137.2.1788268354886;
        Tue, 01 Sep 2026 06:12:34 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b605b1752csm32498e87.81.2026.09.01.06.12.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:12:33 -0700 (PDT)
Message-ID: <8651e227-5038-4684-ba87-df74b89bb903@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:12:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/12] phy: qualcomm: qcom-uniphy-pcie-28lp: Convert to
 PCIe/USB3 combo PHY driver
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-3-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-3-39be0955a6aa@outlook.com>
X-Authority-Analysis: v=2.4 cv=beZbluPB c=1 sm=1 tr=0 ts=6a96cf45 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=1f8iOkyuOCog2pG1YhQA:9 a=QEXdDO2ut3YA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX6nZj7WLNhsRK
 aKj2PaV8W/TIk+sdxEcO+kgXGzN8QEmN14s88LE90y9WyDbKgkgWNQmHlMIOPjx7M7zFV807XmP
 zrK/7d4vlpv1Lzd22JZSfudUFk3QYjGfKbpntC+dkKSzCM7tY2IexAbZgNH1y/CpAcGExHc7EqO
 AniGNfFgdXyyivEaWIYc1R2NEvuPMmN2qFErL9iQZMMJ0SGepoyPE/xjyG3Eu/gtJTRwmdS4KHR
 ezqMFTYYDgLzJU+Mq0fPdlwxfc/tQnAwJ0JLG3UceKLUIV2tYPbd17mHuF8/GlBR1C19+kgd+E4
 +4uZBgx3d6zYx0WF4UqvbcCtE7FI/iSJkwhXBhE0vBth0Xgp0oJuPDa5/1QD+mYl4n4j83swljL
 +pvL16TUEH8EIB+q4WZ3SgBdfLLaPfYSaExjhkXKsmm3SjR5Ze0AbaL4A90HxWk7sALDsc7g0RB
 80F/+3VS1Qf0AKCYJmg==
X-Proofpoint-GUID: UjwJXazeNjyue07lKhu7jBGwTo3FPJTt
X-Proofpoint-ORIG-GUID: UjwJXazeNjyue07lKhu7jBGwTo3FPJTt
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX/X0jjZ4SSnzX
 2EDtigmlWoXecZhffHBF5qKby9EU0lpykGGZ7BHmaYPLh31npGXqdvnCtcsz4rbPE3UTx16UPja
 oUe6C30TKQ8nbNcI/kPQtEi3G8cBmfY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_061239_070255_CACFF116 
X-CRM114-Status: GOOD (  11.85  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> This PHY found in IPQ5332 and IPQ5018 SoCs is actually a multi-purpose
> PCIe/USB3 combo PHY. The driver was initially created for PCIe PHY
> support only. As such, rename the driver and generalize function and
> struct names to reflect that it is a PCIe and USB3 combo PHY driver so
> that USB3 support can be added in subsequent patches.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

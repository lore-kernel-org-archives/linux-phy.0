Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C2B7CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 13:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lr7ZysQrOH2hPa+rcQs1nxpEYzUtu/NE4XkoPnQ6jX8=; b=g33TlD1GRFSy7O
	9cMxkvpjZu756CiMpdRgJJ3kNPaL7Y/KHUpJ0Gtal17x1QffjTf4NxkfaRdMZebNrpPbjavxtVTt7
	YDNJPVvcPLx2nakW4aynx3/2OOHvLGN0hTruvV5VILdd/8/GsATDTPENBILGJr+OWbTNSCd77Da3b
	pMAfpEeNGYhy5xstVGG2ZsHth9lgasTJPMnh22l5fQEwJIAtravML130Kg660/+9/s4Urz8awNAre
	HhSn9FeHfXUjdYfFN8Ha+gC0fvSv26TYyQ5JVvvlMlSpmKOd0P/TpT3pZxvP8h6uPGHBRCZuXGsh2
	ekrDN++7SpwOKWWI1t1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIrs-00000007kkS-1D45;
	Wed, 10 Jun 2026 13:21:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIrq-00000007kjo-17Py
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 13:21:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACBmQu1169802
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:21:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=I3wc/QhjdMmUdiJce+ISH6k7
	yX3QQTSRv6vS0VaQ2yI=; b=FcdGAuZXFJ+w2PXpQxdAwjdMY8AW4RtGYEQEVews
	9qjgKoo9KjC1ii7RDLOxh9uyNYDLkd7GqcHQT8DakWj4AKQ9Pp4Cknp4zLFKGeGC
	1psIlYOztwHFviMLsqkr6gsZnQtBIF0qlKOcqqy5Lho3M1hHu/AX0x6wNYUvta5C
	hf+tiBCfvmNmebegEsrv2XJbtFsEFMTgCbyDdKT6g/MHN4T1ZrSZidoNL1KMjixV
	Z46CFD/NXWmc7GuO+hRGCNgFdKi5h4b1z9ykKrcC09iixZUy2Q/yY8vhApJFmmmA
	JtSIGFbWUfPyWDHhGRQ+gfDNVaoASH7VhZEfGbs1/96nIw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq4w1rycm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 13:21:13 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-6c33d75153dso2680317137.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 06:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781097673; x=1781702473; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I3wc/QhjdMmUdiJce+ISH6k7yX3QQTSRv6vS0VaQ2yI=;
        b=OVntdGzgA6l12slxVA+QkPAYJuT8xsAP9hxEqldtq9pxOLLNsV4fnVL/fTszN1fKx8
         Xopv6giWd7Ll2a0mXf/7DP23K3vWsjDu04a8v1t0Yd+UuUtI9aA6sDbkFkaGo8gTbmMJ
         gdtgKeF2oJypokGJFAEsz92FjxfBuxGrDu6wR9281izLodWYQUSwZxqg60sVuYJPnezT
         waXnYV9Zw5v6wwxNiavHX72ejW8QF+nhDpX+ihYYNwVMl1CJYI95otICJkZyhAR1Bl8P
         7c8XkYNiUxYyiJOFpSIC1lgmxRiMAsngmYVmftEfyUbDLm9WqscZDwgcyvMLfWLXQKBw
         0h8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781097673; x=1781702473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I3wc/QhjdMmUdiJce+ISH6k7yX3QQTSRv6vS0VaQ2yI=;
        b=YjZW6cfLKM/ozOxqylt1lcKNGsPBGRgZMp+Si6Sn4/0OZRaZacgC2jFAWXpQcFxiz9
         KYuzmRVFE29PlI9XDvCZerdwwbjpDiAD7cBXXaMhpo22yvJQGv/eMXQB6YdMT0FM9lzC
         142E8UFvR7gvrbhBN175d2fX/+A4F70e2k4H607hux5OfpJAoTkZCB34wMCcZ2kc8+Ib
         VhpAolp7+78nISQLHKujTjKcZ9mCY1PdRYLPd7uh/86zMmUEoZy1TYfX21IgUUH0JgWT
         sjHF3WkVX3SYLJ24HEuiifDaPZ1QGm6SyQFDGj6jrgXAHkoJLpvVzFd4BkOXTWNl58yy
         hkFQ==
X-Forwarded-Encrypted: i=1; AFNElJ/ZwY0uxuGHVjmX9FSQ481oYuQgluGamNnHEirkzdbkRLHIZY3KCrdF1hV5iwIjmQEN6+Kaehf4RZQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKLWr3OtnA7m5WUyE3fTuocI8ftB57RFw/2sp/vA/7ZgGZNzhn
	czZo1lbCD3LdwKNZrk0B9DZi8ALCqipVb68F1imixHBDUcWDIJaaCNbPKr3hyOp5P2+abyEWiL4
	VtHZ94Knr4SE5UeBPK6Wnlw7YCCeLZeG0K0VdIKDts1uC9G9I0jVSAKKVX41wCIJLOx+J
X-Gm-Gg: Acq92OH7O79/MmwA2UjVpXXVfunBelon9uYIQXp3Pj4SnX/zYFAds9YfRDOFVWZnukp
	BgywL4PMGWHaNAd27ll2xV9l9rI3acxFWYdkODIY3+WlYog8y5VYj+ctt6MhePZu0rjAPkZNTV0
	ZKgLMbRkd3RqkhNzYGkfWINAw0WE7hlGt53DJ19KhmoDF6iusP21Nd7ZGsDIl5+fvFpsyh9vHCK
	AN1sMiH9oh1+O4rAB1uzNKpqcJlIRxDflFXjdkFuQk+A/VGhxqNRDANZ49uwefcKqlP54EF6AyQ
	Xk97ekG+RDyURBQDRMQJ0O4DG50cZl9en6mqGc2+PttOyOtRBjUyDavLTLfV9slbXdmP46qMLw2
	jUC2t1YoZHHXwU1X3AZTuR5xUQsIfgDGGu/86Xq7F+KuBwPp4pT1oyH5LS68mpyTGC7ct68SoDk
	iyFfCJ+wwJKgL09dnFpENgDq/+8enPSUn8L6gXRlHcfcR7Zg==
X-Received: by 2002:a05:6102:5a8e:b0:6c5:d55d:c090 with SMTP id ada2fe7eead31-6feef09acf2mr12547614137.3.1781097671405;
        Wed, 10 Jun 2026 06:21:11 -0700 (PDT)
X-Received: by 2002:a05:6102:5a8e:b0:6c5:d55d:c090 with SMTP id ada2fe7eead31-6feef09acf2mr12547529137.3.1781097670855;
        Wed, 10 Jun 2026 06:21:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b9903e9sm5338283e87.69.2026.06.10.06.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 06:21:09 -0700 (PDT)
Date: Wed, 10 Jun 2026 16:21:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
Message-ID: <b24o5mc7cwljy73a52r5klagfnhxldkdpvyq2easkjfmgmqyo7@o2oazxld2svl>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-3-d7135980e78f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-3-d7135980e78f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0tQndKyF1v30b2uJID1niHtefr9Nv1dD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyNyBTYWx0ZWRfX3cJJ1LwZlWG6
 BgxkC4JaGazIIfzjsJBYf+WPP+BOSFEBx7K9YsAKrfhXPnZ9fdLIWdmI6sr3oTH+QaawcBwyZdM
 kELrzKuuYNxH9M3bFrwqwWawS8NLyBvjHkGr5LtrRXPGyiSOlYt1W1o6I9dFWc0d/GRIERaQQFs
 P9OtTzfpKJBNC63BJQpIn8M+hlfvdJiDybhblAHqwfvR4QIycCzVVfvwBlTMddwcYAiF8vpMY6O
 njBjfgmC2zPr663iLVoomdq/EUccUOO6CKJBWie/jFhiZtTplaA/Oy8B5HJSrUV2Vulyi7tCzjH
 baq9c7rmKkT46tmamw4Nv27hApZ2Wp7dPJPY/gJK2mX4HZOwuxCmMARgO4PjNmHXXYpAlPBhrx3
 MM1+8jvrRyMGIsXymmyDS4Ss06nROmjDdwil0Ut1uO0t5O/vksNq0YD3iatJK4F+5HgbesK9VKJ
 stSgmR/+OKObkO6YlZQ==
X-Proofpoint-GUID: 0tQndKyF1v30b2uJID1niHtefr9Nv1dD
X-Authority-Analysis: v=2.4 cv=ZfEt8MVA c=1 sm=1 tr=0 ts=6a2964c9 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=wNkKLIlDSNE57RjdYp4A:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_062114_309767_5E3BC35A 
X-CRM114-Status: GOOD (  19.25  )
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

On Wed, Jun 10, 2026 at 02:04:16PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The QUSB2 PHYs are powered by (among others) the VDD_MX power rail.
> Describe that in the DT.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index 2f67e665996f..b7cd1928335c 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -3192,7 +3192,12 @@ hsusb_phy1: phy@7411000 {
>  			clock-names = "cfg_ahb", "ref";
>  
>  			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +
> +			power-domains = <&rpmpd MSM8996_VDDMX>;
> +			required-opps = <&rpmpd_opp4>;

Interesting, might it be the reason for QUSB PLL locking issues which I
have been observing from time to time?

> +
>  			nvmem-cells = <&qusb2p_hstx_trim>;
> +
>  			status = "disabled";
>  		};
>  
> @@ -3206,7 +3211,12 @@ hsusb_phy2: phy@7412000 {
>  			clock-names = "cfg_ahb", "ref";
>  
>  			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
> +
> +			power-domains = <&rpmpd MSM8996_VDDMX>;
> +			required-opps = <&rpmpd_opp4>;
> +
>  			nvmem-cells = <&qusb2s_hstx_trim>;
> +
>  			status = "disabled";
>  		};
>  
> 
> -- 
> 2.54.0
> 
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

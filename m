Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C840C5AD49
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 12:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FC6K7+OL3EHwTI621vjH42fzGDsm9AlugNl2uzobEfI=; b=CG0YmLl2mDWWCD
	jtekoV1b8wPBYN0u8kQJj7myuxvp0lZchEdNcc9NGDeMaAWBCvTGbbjrCl2q6epVe/cxYu9YhVvGp
	g79OSi1F2MH0ywL+pY+ri+81+woDntm3DhXeIM7M55u4bUPTwS+Y+X2V0H8tQlO8BMptXQBdG1KxB
	57QU5ILatkB7Osgh1DCJ+Pm0irPHatDf7xawF4R7w8ShDDY46Xua+qUqH4c+VMAA2h0VD6+Pb7jz0
	oramRiKn2eS3brENoMJQDV622a1uc7Kfjuv+6VjLM1hBWfmXuLTymoq1kvVRKUdY8Ei9s6Zebn8PN
	JUNTNySCmm0YLbWfjM2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGCE-0000000D9dK-15TR;
	Wed, 28 May 2025 12:47:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKG2i-0000000D8UE-3iX8
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 12:38:02 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S3HQV9013944
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 12:38:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LnTOhc1LJtROB/kjrDGcE/rf
	8BNOgI+khnoo3xpI+II=; b=aN5i82Yzl4Ju2K4fPRuXGArnnnjQ0DBL/U89Uyzg
	YEusB0lLkN497fDAn7DxqHzIj70kAMhEW5GON70OU06rh6P3qKlC0Np0tUkIuSJ0
	kcIje/EoAeRrNKOUOYwwZBMg7Ft/3atT3jK1RVuY5HQaYzOuUSQlKpRq3ex8bvSV
	yuB1qeoxTR3SOLJHIHktc3MH40k7HVJFHJ+Pz9+a+tWaBnfbZHhMrilhxBcj7fGL
	r4rmWyA0Yc1dIlKMGXhbe7646KGbXaG7coCM3gWhd0TqpiYcegRTOXGN8T329k0S
	rCZVS6kYetIjbeZS4gKgB6I5yNZgTCGOU5ywJGe2kr0fJQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549j5gv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 12:37:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6faa33468f2so74160506d6.3
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 05:37:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748435879; x=1749040679;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LnTOhc1LJtROB/kjrDGcE/rf8BNOgI+khnoo3xpI+II=;
        b=GDmBhIpmPc+e6EPbqLu50zzmnD1MuPq5cKAGsRjfo6EWRMHewKYyE2zYINEUyWGhv7
         +AKjJWS4uJKe/p4dG2cgY8IM6d1QJUYP5NYQnEni6CyFGJ+rlAsHHdZkUfDpYpdHFsrc
         9ufJ+R/gaLp6TMcQpD0uOdJwksqbA3mReVbPP/xGfOXwRMjjTw/XH+tRhAggQYqbb+uj
         o8rq7InCtYUx/7A3hhI0KqDr4H5wuhvEbljRqtS1+0sT1paefpm2PKjKH2EqUCBh/Kcf
         Db7Un/lkmfiIlKY0JwyqdAuZUj/wnmYAii4lCs06KJpsSCXX1xmOCAOSlfsl3BT+X+aN
         oXAg==
X-Forwarded-Encrypted: i=1; AJvYcCUhh1jxeRzFf7gspF4mDHssY9dSTpErmtYWPaqK7c0DKkN0VHnFrGMmGnqxmk4kwUHTBC4aPFUfEQM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdF2Ln6yLP2MlRBsYH+4TFaLFlKySZGygbBheN9XQQ/1bmCgqW
	lzcxsOQvjrRTHYcCwYnJg3zRTJs9XrHVyjjX3HOx38h44hAipa4F85qTez0SsklIobNbMcRqtEZ
	rK50L97DPbX2EJM16DLmroSqCh1Oj6veH3tb+dh7JlKh6SQ5LkdA5DcMjoSE6ME1UJLh7
X-Gm-Gg: ASbGncuukN1uluzLoXR8dZaOfQzIwMbAcjHrQcl+MzyIGywPCvnYoA34bfueabl9RmP
	inTsQeMtB4dL98iXOlcHBAuzPq99Hc8bGCsnhwex9NQ7XCdyFMOH/rx0gxi9vRyi8Y1Kk9tPFUw
	dIfPYTQDqhaTLBkaB8/E1yH8OLtaVsud+Nlt3Iq5LIRmWQ32ZOcR8aCY5EvHw0T0Uk5DltAiHHS
	9QN/ODQJWiL5Q71HWkHulj8AMt2wl0zjZHvdodtOsGNAb90vFJFl4MLw4K8fKG1kAFiro5fRRfR
	EKVaB9ew5Tq5AzXcLDQDABKTP6Sa4R+lAxVgPK1Tz66Hb7RkuztDiOn+2qqVc/IulvNSKgf+lxN
	/yHlSzI2Y0g==
X-Received: by 2002:a05:6214:5198:b0:6e6:5bd5:f3a8 with SMTP id 6a1803df08f44-6fa9d289038mr256233356d6.29.1748435879080;
        Wed, 28 May 2025 05:37:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHf/wgeitoAgxxj9Q2ekKkeVrKgLV9879XWXLjEkhNeRx4XpQkYYovwYdM7CGYXKyMxm7vwPg==
X-Received: by 2002:a05:6214:5198:b0:6e6:5bd5:f3a8 with SMTP id 6a1803df08f44-6fa9d289038mr256232646d6.29.1748435878664;
        Wed, 28 May 2025 05:37:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532f69a4easm265991e87.154.2025.05.28.05.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:37:57 -0700 (PDT)
Date: Wed, 28 May 2025 15:37:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 10/10] arm64: defconfig: Add M31 eUSB2 PHY config
Message-ID: <zybi7fyii72vm3dljqw2en76d4n2rmdicz7jgm5xdv6netpwrb@xwihqutyfa3w>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
 <20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com>
X-Proofpoint-GUID: aAjD4z3PmM82tHj3jIWjoHoRHTMd2duN
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=683703a7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=J22MhVpkVBW5EiQ_9csA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDEwOSBTYWx0ZWRfX+8KK1azhEqFk
 s5BvldpVVbttD+y4UCF42ZC/0IVREQN9t/Np4YqkfPXJ0yKIU8Bjx/p/5HLRUYNUpXoxK8jKyMX
 azgOyQuFZUpADqMoCDJJAlsKUfJJxIJpJVmTyO7P9KT/BLsVkkhRwj9c32RtHhmBI/09bxTSM3q
 wJoNB+fsc7+LBipUNT5GomS6+MIzm4+9YlrzJlKVvp1rz1OdiI0At0yF76O9XW52VMz6jgyk/OG
 ianme2yo6qbhlKO2Yq8gH7Msw4LN+5098b1PCxT2SHXquh5+62JPe2tyUJAUxsUnfUydHva0Pl/
 F9BOkDpbuDfA2plz8atb8Eb2cwikpd3Erkh+mboK9nj6eBot5meDXkCdTFFgBIe0hYOhTdledvo
 ThB/OnNDf+oOBx8pnOma4vWGqJhHi2LOsaLHCBR66/AHTIQiXXoZHTmq7lD9FeNxqOFP13KN
X-Proofpoint-ORIG-GUID: aAjD4z3PmM82tHj3jIWjoHoRHTMd2duN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=679 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_053801_052019_C9C09096 
X-CRM114-Status: GOOD (  17.71  )
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

On Tue, May 27, 2025 at 02:04:46PM -0700, Melody Olvera wrote:
> The Qualcomm SM8750 SoCs use an eUSB2 PHY driver different from the
> already existing M31 USB driver because it requires a connection
> to an eUSB2 repeater. Thus, for USB to probe and work properly on
> the Qualcomm SM8750 SoCs, enable the additional driver.

Nit: in defconfig messages we usually talk about particular boards, not
about the SoCs.

Nevertheless:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 897fc686e6a91b79770639d3eb15beb3ee48ef77..f4de2473b3078543b68b01387ac7e3ab6951e4a4 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1600,6 +1600,7 @@ CONFIG_PHY_QCOM_QUSB2=m
>  CONFIG_PHY_QCOM_SNPS_EUSB2=m
>  CONFIG_PHY_QCOM_EUSB2_REPEATER=m
>  CONFIG_PHY_QCOM_M31_USB=m
> +CONFIG_PHY_QCOM_M31_EUSB=m
>  CONFIG_PHY_QCOM_USB_HS=m
>  CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
>  CONFIG_PHY_QCOM_USB_HS_28NM=m
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

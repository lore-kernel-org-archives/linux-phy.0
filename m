Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 267CBC5B542
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNilikVjpISOdgvR/RVqwpRedE9tz/pEby37YL1Bnqg=; b=JBgUxrV1mvhdlw
	4oUhhXRungpIUzoFaL3RVT+H1t4x9H48SHmZId3xrK3d0iP90Das+ZScAcwOHOXKfqaasyQSIzvTH
	R55De0zTLndBnOFm4LGUR9Lrpb5Eh9w5w9DKLExSeCBR7PSW/VslDWgtoJ1cxqnHcDYTxpAPwIE7w
	ZHAUkc989kWI21u2+1taA5ulbAsy/ApbsIDWB9VFESnwJca22FDYw7XkmTVY9kLE3sBWnyuTnEDi0
	St+wQdWsrNaVoVHtixYtPe4ATKheJiZkz3wRwg3iLiYHLBFhCNNMsSZVcRhQkOOIWs7VHn9cnuRXL
	I+j+Sl+m19b47iI0srHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1r7-0000000Bba8-25Bd;
	Tue, 27 May 2025 21:29:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Yn-0000000BZni-1SbV
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:10:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RCmckP025125
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:10:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KTU6QlFT8LoXjBrmfp2AVZLy
	jUeZzltGjXBheEes3Qw=; b=n3ocTpMZxTkk9CXLjdp7+kJe+XGZa99d1W8OOOgQ
	3sxcsDutvZiIp4LpIawJS2OKqTf1WYXsc+Sqhlk0JPQqkSgPGhwMY3iD3yd8JOAC
	3uzo0UhDTL4+J8VHJxZLMix19ohtsGCIE4p3jF6/xk89aWU1k0vleTBkBMVv1uET
	1QmLqN/MtXfy4Spsjm6Ng1ilYW3SU9UmGIrwabiI1ptBAGAu+PehMSUNi/ID7nnE
	IpBwE6ghBHj0jN7TxxwS8znpKToZAjQVBlSgYorBOmDqdlxYgt0TWMJungjnVg8I
	LJ6w2IurZEUlGuhke+L2Njha5CqWHR4jcZ8OOg7dqSLt5Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79p89a0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:10:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7cd06c31ad6so43735485a.0
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:10:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748380207; x=1748985007;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTU6QlFT8LoXjBrmfp2AVZLyjUeZzltGjXBheEes3Qw=;
        b=RJAD8V2kM3UpN70847CMOVbqMcOtPin+jAGj51Kh5u0/HQsbmiS1hDS3p4nuyE8atJ
         7DK2Nr9J6MdQOI37vuHD2Uh/ajFhtk0NfuXVMuIjJz0lCWqNYCmhXQNKZVEOO57R+hmm
         kqmydtvgbqkypDC/JOPeZXxaKYuvHOcIKhYyS1HYTkVskllPKlXT/kmOg4tpLKdzEITo
         jItZJ7sXnpk/ngj06q/9On8jUpo97qray3u1x1h+rJIi02IzRwsRJu2Esawej7fybfJ2
         n+ucVne3p4TD07qQZ6LlnMLiZuM2TVyg37bPSZiBFieOQQ4aQxsFqqAlnOt10UXT4+Br
         IGhg==
X-Forwarded-Encrypted: i=1; AJvYcCW8zDL+34U/QgQDVln5COQcE5BJ96deP9jB6TUE2RAaToTgOM8LtrEU7d2iXuQ9WUx31olEh4kvQN8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTKWkIKIS/7+Qb9Ah4jJkF2H+FitsDvQa/p7HWufVH5vMqJYon
	xRuvi8atr2+B4C2R3qrmCpXwqY3eR30n+2KFKn6ZIz6TBT0pFMzWbIfgbvBhT0TCERHY78Do6PL
	q3ugGOza8jYcqKEkfy+oFw2byfSjSOtnYip2E4YUTq99xMadtwYbgGwIL/i2vphGP1tx/
X-Gm-Gg: ASbGnctxyzyK9V/z/XZCnl7a6FMfDjJvGitlGq/v003RaVPm2rr2/bi45NikKxZSa/M
	4Doi4jPTt0OVdI3SxANyJduWU6qWMGYnnxRr5OamJh3vUjXRi+WAQUEivHDNO0pE5l28ouZg0Xb
	hevrGOgPO4t5Ucw6qSb2F5j8dA+B7mbcPB5f2uyEbgdxw892sTIepXMDOG04SKnw0sJz6ZM8+Db
	UqKIstOyUMBPxoG6wfbVUEzCGWrpJKPX8q9g0+DruRBf0nVoyowU2J5MNf7S5/MbQ4EfefmtKht
	Op5ZXaL9wSeJPq2vPKl49RM1s+KnTGJogXK+jnebhMB4kI5ORcx9bokQOb+tmcqwUs14J1h/hgQ
	=
X-Received: by 2002:a05:620a:414d:b0:7ce:e9d4:4fb1 with SMTP id af79cd13be357-7cf06d3aa98mr304096485a.8.1748380207183;
        Tue, 27 May 2025 14:10:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFC5Ad4ysV6+XlrFyXeReg/9nW+7rJ89ue2KKwQKeT9Y6m1nBBLy1fCB8SouNPS6nsn646Ekg==
X-Received: by 2002:a05:620a:414d:b0:7ce:e9d4:4fb1 with SMTP id af79cd13be357-7cf06d3aa98mr304091885a.8.1748380206726;
        Tue, 27 May 2025 14:10:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5532eddcee4sm32257e87.27.2025.05.27.14.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:10:05 -0700 (PDT)
Date: Wed, 28 May 2025 00:10:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
X-Proofpoint-GUID: GtUnqpEEXaVYcME1VwvWD8VJOYSNW8-p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX36O9+vYqD6YH
 QDKxJXgnP9weQZYrvqme3GY2fkAZm3GMfxnV+Yqrj5qJlHMx6oMyZz80vcvxNptO7WN9NGqdBQ3
 EZRvWScplgHOzVrkh31Ow6e01rH2Sg40JPKcr7eYhKR+oDS8ZMTfvzCtFOp7DdsPDRWp9I11cnZ
 UizWWs7sEqt2H1mPoJaO3F2dLNaqDqscWIUdfvDy3r33NcbNGwWK7avxycryZMcX9QGC7R9o6Jz
 C/mFmH9ZcF3EizMGzOwTllwGqlHm+7cig52WfB03flycBg7OinR9i0xiKqn4ppQBT4vN5mrc8pX
 nhY46nUaI4Tfi/3hqLZmwnEndrDOYJSxfYzF3mSxk5+uu52EOrIU5RlinubKp5wHAziPYReJBWO
 YIGTgZUKSpymK7HOcKiTHCRec6Lodf4748TQjaNH74Qq8fqKRK9ubtaCpotMBG6yMpwCOQdU
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=68362a30 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gwmzPixrIpoEWUPfHWUA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: GtUnqpEEXaVYcME1VwvWD8VJOYSNW8-p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_141009_393206_9005FB72 
X-CRM114-Status: GOOD (  31.16  )
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

On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.

This series doesn't seem to solve the USB side of a problem. When the
PHY is being switch to the 4-lane mode, USB controller looses PIPE
clock, so it needs to be switched to the USB-2 mode.

> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> The patchset also includes bindings changes and DT changes.
> 
> This has been successfully tested on an SM8550 board, but the
> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> as expected.
> 
> The DisplayPort 4 lanes setup can be check with:
> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> 	name = msm_dp
> 	drm_dp_link
> 		rate = 540000
> 		num_lanes = 4
> ...
> 
> This patchset depends on [1] to allow broadcasting the type-c mode
> to the PHY, otherwise the PHY will keep the combo state while the
> retimer would setup the 4 lanes in DP mode.
> 
> [1] https://lore.kernel.org/all/20240527-topic-sm8x50-upstream-retimer-broadcast-mode-v1-0-79ec91381aba@linaro.org/
> Changes in v3:
> - Take the series from Neil
> - Rebase
> - Rename many variables
> - Test on X1E & X13s
> - Apply a number of small cosmetic/codestyle changes
> - Remove some unused variables
> - Some smaller bugfixes
> - Link to v2: https://lore.kernel.org/lkml/20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org/
> Changes in v2:
> - Reference usb-switch.yaml in bindings patch
> - Fix switch/case indenting
> - Check svid for USB_TYPEC_DP_SID
> - Fix X13s patch subject
> - Update SM8650 patch to enable 4 lanes on HDK aswell
> - Link to v1: https://lore.kernel.org/r/20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (1):
>       phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
> 
> Neil Armstrong (5):
>       dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
>       phy: qcom: qmp-combo: store DP phy power state
>       phy: qcom: qmp-combo: introduce QMPPHY_MODE
>       phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE
>       arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set up 4-lane DP
> 
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   7 +-
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 182 +++++++++++++++++++--
>  3 files changed, 173 insertions(+), 22 deletions(-)
> ---
> base-commit: 460178e842c7a1e48a06df684c66eb5fd630bcf7
> change-id: 20250527-topic-4ln_dp_respin-c6924a8825ce
> 
> Best regards,
> -- 
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

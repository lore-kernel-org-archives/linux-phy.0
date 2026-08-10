Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7A44C5AD7B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Es4ZTuJ5FC058HDfcX4ooybhVtkUegfp8N+45wgeK/s=; b=ROTPXUQ3X8fLCu
	7LSOjMIJs0lP8ARWg4edUWzN16+AcjYAKQ/48lNmH9ceyZqoOyQcEKY10lfb3UMeGO+rZ6ykpLLKM
	a5qEvMeh6p0nsftmsYI+TIQZ76awR1+PS6/XINcujqy9/E+WdH2l3m+f/xfekvWh521WKIgrv7gqM
	sLrxj9u8kYJTJbcr99aiV8EUgIvcTBWY78KChr0TWwuKfcqB9/6YknIP7lXWXM3oUbkRPLJTbZYQc
	p3ZN2l/gw+8D8zt/hZiPgKdHegljXMDlYsqZhRPXO5JqlWwQ3freyq3MOEEbjSFjk+R5WNqmQrBn1
	HrdEPpntIEFTbVgSzKcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8m-0000000CISY-0xd5;
	Mon, 10 Aug 2026 15:42:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8k-0000000CIRd-0e6l
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:15 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWMUK2035048
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=eLuS4u0Hi7E3hpkD0vQROs
	yQnpBAEmZmD8ZIrcsAD78=; b=kmCGpgjzXuqB/vrAPivyv58e4IEe5MeSjGUBDw
	vDacItwMTtJXxHixvJTduuh/uec7JI7n8G5xo6Kp4GKUXilbR2MA+Shh61JFREOm
	PK8mMimkunq6SSx8BpCltLfzstCaEMixzUN1NtawDC6swkdijvrxrSt/FlS6PBwI
	14kd4sDpKu3k5jE/xvxNGKAaXS/iudj4i9AckDwLPDFBADE5krGF4Aiiq69rXL6F
	E+Ujks1xn2tWPqGg9nMEPj1A8g1+cKN7tzwXsnkGbBmlzI7rXifBDFa4ov/xdApB
	Asx5KDNH9EQGXNvYj/JouDRxCt9rAiNILX87edINqJsE6RRw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8vhjb0m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-52ce64c41efso38067141cf.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376532; x=1786981332; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=eLuS4u0Hi7E3hpkD0vQROsyQnpBAEmZmD8ZIrcsAD78=;
        b=MPCoBdhqd0698E6I8hq5+OIH099eNCHMwZT2aZ83E7tSVQN3wd89hrb2mYniK8AL6x
         dJdjDOaTAEQAj+ITT9xQDBwb+9KuXkS1XA/mrRqNLcYAu1TqdW506d11AO486EP9q3Nv
         g6bW1owqTWfjj3C3J9TbT8lnVtzOtmrOpdiAm/XAD1btEALOP3jS33dvg2+FAoiPt747
         JgIdyzSWqUra5QiBbDsbwwwjSMtUxR7L159yNi0O93omHL+xUItWP0twHQ51H/tty+XX
         ANJTgp60ua+XBpH5YTwENXfqXdEzIORs74/fnUWiLSlWAjbmRqQzf0LdTEtKCxsKCQOd
         IunQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376532; x=1786981332;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=eLuS4u0Hi7E3hpkD0vQROsyQnpBAEmZmD8ZIrcsAD78=;
        b=ojb2xe29lr7biSvg+XHBsJtqz2Hgk7LLjulnNC4Kvm+S5st4FQgKBoOIQ/QMo/sBc3
         jFYGyJBPsptfZ/OkPmf3FOxQR0wyaEAXN44ExBzaZc1huvJl3HNT87k87iJGcXPadjBZ
         meYpk8r3AjUzjG2977OOi8z1aXOCh8r3uolhpUihC7/TG9puAl4xCAH+b6d/OG2UhDx9
         tiMphsCw8nFxZKxHf3mFJVZNTpDWR1J1RPsz3Ncdmv/by0P9oI6c95q1K4OvC96du9f+
         FEb8USUwDQIEkcJ+B2TQjwvWxjVFXakaY8OwdsAw+knKtVxBSAEhTG1EcsrvYuj3v+xD
         uxsg==
X-Forwarded-Encrypted: i=1; AHgh+RpnJw+J2qHV4MT2HXJKe1mK9Eji9u+SOi1uyrclnERs4zjOWyQKVvlhq7nx66ba5GPFphorXnmLGjo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpRlglmX243THz3nmUaNHC47Fp24q4fJ89PTc8cwNJf4UR4QxU
	/4mA019oVhnW2xsWEXJM6ytnia5WM65eGdUlDprFNP5XEUgGeJVAJ//qlpqkWcdtu0rUysG0pfm
	DaMaBvyg0Q7nNDR64cZMwUH+zAM/hSqvg9AYp06HmaCiPifNddnChFa0IBY7WwGueJWkd
X-Gm-Gg: AR+sD10mJwgdd76Zxr8K3b2knXup6FjHEy/O/1w1aALLqIph+ay/DgFI0pkJa9tCoqI
	QPYHLkYJ9CJg2YHcj5th6HL8Rig+DsuLLL1hXcrqrAE7v9xxVjHG438Z4Dsk+Ut6W5VKfdcDbM2
	Izm1NhQcGN4vffPVE1rrL32JPHgNb3xjHArPnBOhEaNBB35hcNNgwNr5MYftjigIpUK144kxX+F
	R0Q2j8VZ8wB22m7pb2iGdWNdiKtTJN2XcH8FRunJN/S+I7a1p+h+C46vxtwCtsEIK4pHTMWe34p
	xNdYDj3ZL5RIUVAEY928blhBAMQqJ4up8vNJqqX45+t7UeT/S31VAKbGQ0wYsbhRpbvpJe5Y9GM
	b6yOVLUVOXmBaC5ufq6OQ6zw0opHZfRWmiMkgJQBC3Om+Kz/W+xdRPy7OfdY9dZX86R0TYr5jt/
	VRo08F2cTeHgNuSw==
X-Received: by 2002:a05:622a:1308:b0:51c:f8f:13e with SMTP id d75a77b69052e-52d4bdba3ecmr28771261cf.40.1786376531918;
        Mon, 10 Aug 2026 08:42:11 -0700 (PDT)
X-Received: by 2002:a05:622a:1308:b0:51c:f8f:13e with SMTP id d75a77b69052e-52d4bdba3ecmr28770451cf.40.1786376531332;
        Mon, 10 Aug 2026 08:42:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 00/10] ARM: qcom: msm8974: enable HSIC controller
Date: Mon, 10 Aug 2026 18:42:04 +0300
Message-Id: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEzxeWoC/22OQQ6DIBREr2JYl1RUFLhK40Lg29IEbfloTIx3r
 1WTduFyknnzZiYIwQESlcwkwOjQ9d0a2CUh5tF0d6DOrplkaVamgqXUoxeyKuiAmj7QGcpLpo2
 0ra14RVbsFaB10zZ5q/eMg36Cid+doxHgPayuuNd+KpWciXIquGS55EIyLdXIyP+9E6bvdN8Eu
 52UwmYyLwueVemB6gaBmt57F1XSwRSvvsEIgdTL8gG+TI26EgEAAA==
X-Change-ID: 20260810-msm8974-usb-hsic-561bc9dfd757
To: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3676;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/iME9U4DZopgH5yA3YpkX0M4sCoYyTKd5z7eK8+7e/s=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqefFPhPppiU/+8z7hFJ5yT8GEzUAfh/+bYg8ci
 lA9lX/VZCeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCannxTwAKCRCLPIo+Aiko
 1fVqB/41VEeOkcrTS1P/XDhhk2W7e9+oWZOskE4kdqebE8gex94qYCg0uX8JRrIQtjceF7If5sf
 safqOPI2dzMh9Bi3w9ZBem3+BEXCeyM+2RmPotYzOEMlkAz68ApxD4usO/MK9SU6BRSUGRWdurh
 v+2s2IYRiEgVFTLPdNRvvQk02pX9cnTQmdwL8oHlPSftykZaHSEq8HD01R/7g0OE5JFtV41gfbN
 KBMK3LdyfDjci6yFftIMAMnDYtziMJf8BGds8gRsrcdxZDVaFlLaK6BBtTsmEL/cpSPS0OnlLzF
 PKdVpzkV7HkffEWOlmrBddyZLuDupZfp/kodPyjYFjd8yhw4
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=MMtQXsZl c=1 sm=1 tr=0 ts=6a79f154 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=sGvnmoecOSnWcdYzNygA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: -vaqB9sFNQykc_m5frvcJ25wRMcaaxoZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX0xasbzjdvgeq
 Sm3LzSdejg/r/aRIxoS35AlM/8n0eOUrOeS41uCPv7REwpDUrs166A+ZhLWaW6zzoCj6yE0lXd4
 WuEfAHaN+fkWRIN5XVjPWki6EhiXmMIgUGCTA7uh87lV8Xmlv6BjJlyuP1B6DB60xxh8xDFW7UO
 CZNizXRmFu/X4boh5DfcRdoInLVRlou2NYgalY2ghwP5isoBDmH6moqYZEgcMlANy+op6yV+B36
 EUrmnAcK71nFUDgb+4g/NKOQ1IVLYmCUUIbu2mYQNWKTaNZ32dvovVHfJ+o74YtB9xdlppHO90i
 +uqUEnBVu6tWpF2/+BOe4cA3TmBvcPKVldQN/g1f8hJcmhsuVNuc4G7VKux6vvjWo1kd+w8VfhU
 jTcJh4FpyBj2X1r6ul64odUCQYXNA6leRWxvUAiPwezDrEpGa3y8rXsN6IITtx5ufXMuJ5lbjyn
 emkQ1AXnnNgDYYu7P/A==
X-Proofpoint-GUID: -vaqB9sFNQykc_m5frvcJ25wRMcaaxoZ
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX/No8wdAEP85g
 OmQNqK+yLHb6LDbPaUPZ9c3kC7dk0KP4u/NwnuAt6c0KRIYM6QXRKDJan/yDRggAL8tYENZL/Jv
 JY1S8LyD+Wt/TRPf0CNmQ05bB+2N3rU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_084214_325918_7840A0EC 
X-CRM114-Status: GOOD (  12.87  )
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

Qualcomm MSM8974 incorporates a special version of the ChipIdea
controller, HSIC. Enabling it requires some quirks, which were not
present in the kernel tree up to now. Wire up the controller on MSM8974
and enable it on APQ8074 Dragonboard.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (10):
      dt-bindings: pinctrl: qcom,tlmm-common: allow functions on the HSIC pins
      dt-bindings: usb: ci-hdrc-usb2: allow the HSIC PHY as the ULPI child
      phy: qcom-usb-hsic: do not run the sleep calibration clock
      phy: qcom-usb-hsic: engage HSIC mode from phy_calibrate()
      usb: chipidea: msm: support the HSIC asynchronous wakeup interrupt
      usb: chipidea: msm: keep the glue device runtime-active
      usb: chipidea: msm: do not force the TX FIFO idle on HSIC instances
      usb: chipidea: host: calibrate the PHY after starting the host
      ARM: dts: qcom: msm8974: add the HSIC USB controller
      ARM: dts: qcom: apq8074-dragonboard: enable the HSIC host

 .../bindings/pinctrl/qcom,msm8974-pinctrl.yaml     |  1 +
 .../bindings/pinctrl/qcom,tlmm-common.yaml         |  2 +-
 .../devicetree/bindings/usb/ci-hdrc-usb2.yaml      |  4 +-
 .../arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts | 27 ++++++++
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi           | 71 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-usb-hsic.c           | 50 ++++++++-------
 drivers/usb/chipidea/ci_hdrc_msm.c                 | 28 ++++++++-
 drivers/usb/chipidea/host.c                        |  4 ++
 8 files changed, 161 insertions(+), 26 deletions(-)
---
base-commit: 6b8c8af514d739d0335f5579b585e02babe8a727
change-id: 20260810-msm8974-usb-hsic-561bc9dfd757
prerequisite-change-id: 20260810-msm8974-usb3-8591395891b9:v1
prerequisite-patch-id: c26539fbb2d694a92439cb1e726212918553475c
prerequisite-patch-id: 4ad3db6c6ac190b38705ed8876802392c8d7d339
prerequisite-patch-id: 3478affb2dfff9e7ab10d3021889e8b18457533f
prerequisite-patch-id: b646868cd0435307c98f9f5befcc6b19f21ec0d7
prerequisite-patch-id: b98cf68875fdf3b81fdc383e1b69a3fcc35bf986
prerequisite-patch-id: 4af06591492ba21e53d415f18de59488bfc3c2d4
prerequisite-patch-id: 5177cabe40273cd97110295567ff2cccbaad02df
prerequisite-patch-id: 1d2ed9fb3f5d99c6ea828eb5aec1412f4b46467a
prerequisite-patch-id: 246d719fc20ff640d41bd295fb97061dfa979250
prerequisite-patch-id: 21c3534b93d76f2902f08fff2e5d922402c0b8a3
prerequisite-patch-id: 8e31a3323407f373d791f26edccb7a0aa6c51628
prerequisite-patch-id: b50af8d10a33e4383d7d4baf76d710a91d0d6c6e
prerequisite-patch-id: aa0ddfa89a9b0d7f11fc835846a5566df50f94f5
prerequisite-patch-id: 109ff819c0c46ed02dac52641e7b9f4b254d09ed
prerequisite-patch-id: a3059aa8be37e0b32e0eadbb964b0aff6547e563
prerequisite-patch-id: bc77eb17f857d18e1076597a662951a10ada9535
prerequisite-patch-id: 19f3ffb7fd87e270623c8a605a9250b3f886553a
prerequisite-patch-id: fd5725234a661c4284ec4804bf3da6479452c5c2
prerequisite-patch-id: 80439f9121f3cb7d269caa0d2f117f30599611a7
prerequisite-change-id: 20260810-msm8974-onboard-usb-98d293645270:v1
prerequisite-patch-id: c26539fbb2d694a92439cb1e726212918553475c
prerequisite-patch-id: 4ad3db6c6ac190b38705ed8876802392c8d7d339
prerequisite-patch-id: 3478affb2dfff9e7ab10d3021889e8b18457533f
prerequisite-patch-id: b646868cd0435307c98f9f5befcc6b19f21ec0d7
prerequisite-patch-id: b98cf68875fdf3b81fdc383e1b69a3fcc35bf986
prerequisite-patch-id: 4af06591492ba21e53d415f18de59488bfc3c2d4
prerequisite-patch-id: 5177cabe40273cd97110295567ff2cccbaad02df
prerequisite-patch-id: 1d2ed9fb3f5d99c6ea828eb5aec1412f4b46467a

Best regards,
--  
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

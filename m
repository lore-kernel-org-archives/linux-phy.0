Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 756F3C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e1K6d7GOB2R3zKHisif4b+eeeZ4QpYjX3QptFjBcfdk=; b=I08lOtib5i8wxq
	SSUK94lVFRtmHkF+cSxAEMpAG+S4rwt0eqoJ7ocSG6RSELwZXlJkCjHTdP2UYs2AWCBjELcJ8BCey
	G88nF92vboFkvejnTG3f44GvGrIO3lb/utBIMkemQcC48lOMqgkY3sUl3bxQzqBouigGCLD/Fiwib
	qcgSI9Mh+/xcx/u3iVMo2045zHbflzze5PjW1eWenW7J3M1R6XMELCzo7lpXnNJ14w9T+pUNN9eX6
	i1sXmICkdf7PfAidNTj2DaTNA0EEtr5AnUxjoqGu/ik670kptZVqs4mPPx6W/BJa4b4+PBhg7tILP
	lJrNb4vtpF7qDdXyXdlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOOv-0000000BeL6-0hxG;
	Mon, 10 Aug 2026 11:42:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOOt-0000000BeKK-1dgM
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9SBh5446565
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=kM7XsYvsbTlHzN5NeePXFj
	cCpwDy8mm+ntXcnUV6Y54=; b=WVIAb8KJTo6GT1JYwfmIOpXSqjxbHCSGvoepCv
	nBYcOA8NjZ6eUPKjZQVhTnw0vctuHMOuiducaYis0llD4JzgtbFsGsPRZRSd4Bqw
	LmzQVI2kTO4wuNiwt+W37yGJR4X8MO7Q69zOltSAsmQk3OpBJSpicnFpRlCw6VWS
	L5BFBygGx7iHccf6NS2vpQmYTvkuhcfqWQZuc8ZqjzVfT0AP9vv2PeTbl/PRnSlf
	gREO5gAG+F0BCGTMSmxHJXu7uZ4E6sYxfgho89p9COF6BTn26JgtK0oBKJx9C4qE
	sC+Uin6uKMBQzwHKAiNonRXLr60phm7xLmfCY2SDfYznsjaA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v918xt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:37 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-52ce3c7cb2eso31287491cf.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362156; x=1786966956; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=kM7XsYvsbTlHzN5NeePXFjcCpwDy8mm+ntXcnUV6Y54=;
        b=gMbn71yHMlxYYENFJZgYrdFQgHifZnX41naPb6NEIlzJxtfjVjsoefeku0aQ3Mt1xD
         tKyj+zzIDvbJP+G11v+pN5qWbGdnNyrxKXLVDmLqOhqSNH+M8jkZ9a6jPpM5iqMJdkaC
         Zy4r4HZfoBKlMSrlSI18NYzBcN/CKJ3F0xIDMqugDrO5p/DFySL/c8QWAtueaaa/DJ5s
         TuTakoYDlQPqM5qhPzRBDPjCEsp2TXWmwIM3g4h0yZjSBwngrqBhhZ56KCgl7e7KFDtQ
         lI9nWHVk+4gaUS9v485miKzrJ6gAr+XkFqQOAqM3RYBafOHD01IGRFzWfEEFBRPwrTIq
         CU3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362156; x=1786966956;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=kM7XsYvsbTlHzN5NeePXFjcCpwDy8mm+ntXcnUV6Y54=;
        b=aGNv1t82pc5Xncp6r7B7QPEZf4J864vImhEmJA8m3kpJX2/VqPf2zj+Hhsgh5YBc8J
         kuAzk6YvyrnbhC5wdcs70ZSy5OrMpr2bPHf1HFRePpUOU5ft0KmWYyJ/It2ifzpYNtBJ
         33fXqh6AcC0WjL5PCcVXN7XyQCoFbEWvTI/WXu+AQrJ7w5koCqBFY5naseqjyf7+XiaF
         9BLIWXeRF6Okk4rhsdLCkjrOzExVztyvDUiLNiTNs07quqcY1hIAnzNlmvkt2I+VQ83N
         YBUumINgZTkpqTPs6EfmGhYbfjkfY67nviHEwLlnaVV3fHOacutlDlHajfTYIaOB9DD4
         O6NA==
X-Forwarded-Encrypted: i=1; AHgh+RqjvHSVpaT0y+vhHcdt8/heXNYGeJrSTd2VV8BASWhd7e6ilE+p3+dVc/3TUPQ9ak3W7Zu+HUrSQTk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOshUjwdEii4bk6hfxgXBjsqyoOeo9XFjLnW3rqHdI/m2e0uEc
	A/D7gJo4oLhpiyLr9SHKQYiqANMEyQBA/mbOIpvkwCL0allMKNT4GJ0HTraIyAMWDTSJM4ZM9Kr
	VESzrfZLX5K2JJIYcblHsF7h4tKTsvmMKQpH5PCoFjLMPFGL/k6+lCih6ok/3SNp7ha3U
X-Gm-Gg: AR+sD10YwlUo2QtEnJ33455B0qrRM4DQvK/eT9wn0LrTkiCU4f12YrxDPK5wPrhOppb
	WIklmbTd4oS+oUme6H4L3TjYv9/fkcrK/HMIAGN9dEZnTQ2tG7MD7tFujIQJxWHn0XHWdyql6SA
	Rcrv8+/tHmUsEq0pVSQZ2ZPNj3+fxxx1754Mxzzh9n/jlj2UmMa8xDsLNlaBgc50ZBQFa1pHTi1
	ptmPrFeBvN4NJd6Tmoz7PErdgEcrXlODt7ix/OBQsz/E6P5XtfVfj7Hcq849HlYUON+MWZy5p8c
	fkHxJAXMA1HvaEkRWxSWicb4zEimhw57FsST9kcVAjYL8ycH+5To1l6dOiuoepZyLVTgk5nOm5t
	hFdKYsL11PBHwxEZNwixZtUrtU2/n/iNc4TZ65GCKb7pC1XrkeFNiw1xKKk9Ex52/F43iobSJnP
	Uw4eM0GaHoFNuNYg==
X-Received: by 2002:a05:622a:2595:b0:51c:2068:a9f8 with SMTP id d75a77b69052e-52d0b00401emr342790751cf.5.1786362156089;
        Mon, 10 Aug 2026 04:42:36 -0700 (PDT)
X-Received: by 2002:a05:622a:2595:b0:51c:2068:a9f8 with SMTP id d75a77b69052e-52d0b00401emr342790291cf.5.1786362155717;
        Mon, 10 Aug 2026 04:42:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 00/10] ARM: qcom: enable USB3 (DWC3) controller on MSM8974
 platform
Date: Mon, 10 Aug 2026 14:42:30 +0300
Message-Id: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACa5eWoC/2WNTQ7CIBgFr0JYSwT6B1zFdAHtp2ICKNCmSdO7S
 62JC5eTvDez4gTRQsIKrTjCbJMNvgA7ITzctb8BsWNhzClvqWCUuOSE7GoyJVMR0UhWyUZIZiQ
 ul2eEq10+ukt/cJrMA4a8O76LCK+pdPIx+2UU+osEb4KO4x4jUoxcVm3d8I6qme0yoxOQIThns
 0Ielnx2OmWIuN+2NyRV00HaAAAA
X-Change-ID: 20260810-msm8974-usb3-8591395891b9
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2235;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=AVCqVf9cUb6onN8q/nZVHhyRhrReTtaAp8rhIRv2URY=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ1blTg0hyZevNVjmZTFv2vxQmp3Zh6GrXizzIv8Glk2x1
 6R1TX91MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAizzLY/7v/ujk1tt1CK93s
 +g2B+cLs9WeTvAo7Tz9qjFzimj1BWNJ4lfhNaXUmvzuznm9S+ZLbz76wxu+GZ52TkBXf23we5kC
 Hi2++BHw4+9fnT6D9QqUGszt3pzRviDpn+GKCnG3DFZPAIEPhI4aKfMFvMnaLnC6odXj45cfG3X
 6Mjw9Ki/mw3O05JixR7bE6y8a9ziGneLnhe+P0Jw8FF25QULr0VIaB8f4Vz89c7h9YMm9PbOH/u
 StSh2Wpe/m8p15aXXIPGK+WrzWIKaifve6uycfDeuW3uR//Oux0OcxkQ6jcym03fM1rKpf8eRg0
 I7Pjn2CMEuvOuadU366LX/dFsDNrQU/F26LsjsUSLDMCAQ==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfXzGldUyXNZbYx
 mptV8PPVZYUfy7DgoAF9RjAdy0FcO3iZV0i/rRbiFFw7Ygb95ZVU6vrbw7X6VjbAIO4J+bds4o6
 6We0ILuq4eEt12zVmrJGfj0aOpeNx6w=
X-Proofpoint-ORIG-GUID: u3TV-XgCfOCA65nwrWLRwlDIlYNaKcZK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX8b8G+vSveDl8
 wsoz6uNtErEdXoI7ytbV83MHIoxWHPa9bdSM4k65SgpLNUh8Sj18U49p0ciDg8s7I9VTDdM+3uS
 C5mOJouAqk8hBPQB2b1+IqVX9a/aJFEhSnl5tPDYy+K0MxMj42I/qztcYjDgFdT1SFyH4/ZUlnU
 kPwzkUg/yTmUhbaM9h+qsOw7DjtW7AZFuqfqTgA0V7QSY1NyJaZc2tzvaXnbC8sYgH2Xqn2ZOZe
 swjMxSRZIgc8sSskPChjkE1UXb9eLveXvjaKT4r5v/VQkyF/yxOgzDuZSAKA5LPOSUDkvB62gWT
 DTfR3iwlzIroMhX3DI+LJh4GwTsqpGwdRveCtkN5DiU3wVnxjUghXex2V5wQQWSkER/qGReT3iK
 kKFcGcJ5LxaFvAwpnGNvAoO9DTAAkK7sudC+9Rwyp6adlEyyFn62lhkB/+26zDlr3T16NTTorCv
 T95NmNFXHLzAx4Hq/ag==
X-Authority-Analysis: v=2.4 cv=T5m8ifKQ c=1 sm=1 tr=0 ts=6a79b92d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=iQ4cL05PARBYzk5mw1IA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: u3TV-XgCfOCA65nwrWLRwlDIlYNaKcZK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0 phishscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044239_440024_01CC8D95 
X-CRM114-Status: GOOD (  10.45  )
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

MSM8974 platform uses three different USB hosts: SS DWC3 and two HS
ChipIdea (normal and HSIC). Enhance qcom-ipq806x-usb driver to support
HS and SS PHYs used for the DWC3 controller and enable USB 3.0 host on
the MSM8974 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (10):
      dt-bindings: usb: qcom,snps-dwc3: document the MSM8974 controller
      dt-bindings: phy: qcom,ipq806x-usb-phy-hs: document the MSM8974 HS PHY
      dt-bindings: phy: qcom,ipq806x-usb-phy-ss: add MSM8974 SS PHY
      phy: qcom-ipq806x-usb: add MSM8974 HS PHY support
      phy: qcom-ipq806x-usb: fix the SS PHY TEST_POWERDOWN bit
      phy: qcom-ipq806x-usb: fix the PHY_PARAM_CTRL1 field masks
      phy: qcom-ipq806x-usb: parse the tx-deamp-3_5db property as documented
      phy: qcom-ipq806x-usb: support the MSM8974 SS PHY parameters
      ARM: dts: qcom: msm8974: add the USB3 controller and its PHYs
      ARM: dts: qcom: apq8074-dragonboard: enable the USB3 host

 .../bindings/phy/qcom,ipq806x-usb-phy-hs.yaml      |   6 +-
 .../bindings/phy/qcom,ipq806x-usb-phy-ss.yaml      |   4 +-
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    |  19 ++++
 .../arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts |  61 ++++++++++++
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi           |  47 +++++++++
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c        | 107 +++++++++++++++++----
 6 files changed, 221 insertions(+), 23 deletions(-)
---
base-commit: 6b8c8af514d739d0335f5579b585e02babe8a727
change-id: 20260810-msm8974-usb3-8591395891b9
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

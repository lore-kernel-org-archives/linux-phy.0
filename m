Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69373C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 06:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c49zjFP1wIi9XC6fcHTiA27EZkvsqTfMn5JL70wQLZg=; b=ZgPX1lrr2yL8j8
	3n8Udk1I7YFANago1yYlmV6DORAVYXLLlES/JCkmZuC3Iw+y44+/fxdNx7jEnBpuuIYdppVF2AvNT
	sUG9cne/u4Amtke2czuipAfScSl4MwWH1ZuFVMviU7nCYgze6npusegFcIgXWeivn1QMdItWFmULj
	d3olti8R7GTr6KhUV24LknNhT2LB62NsYFPxQQ8FlLyTpGkw+4d9WLwdPXVtn65zU9MTnrdW8eXGQ
	Sm7pp1hHbJl3vAUct0lyq298rM59X0UsLpVkiWW4VqzVh7mOxsnuRk+dMjnsMpjno22Wn2OkJ33Sd
	9oyHQiUC7wskWs97mcBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOJf-0000000G0NF-43WC;
	Mon, 24 Aug 2026 06:37:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOJd-0000000G0Mj-1Q65
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 06:37:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O5RMrt2058379
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=8pOWX7mEcUUo3NdzZeNrT7
	XWoFlnxo1OqZkoMF9fLwU=; b=DjOUXjQauRh5y0Vc1QS0XsKqj6DR7Tw7EwbaKM
	Cpftoxd5/E5c8e5N1gooaogw5sZI7kcvXAUZvNUPWo46CMNFzEa0eOc1Cg9iv1r2
	VEuTehUxqj2SGTTrJFcE/VyIHEjg4iZsw6ACRk41emcWG6fnsMRyi+uZea4VOOF2
	JZbf8yueW/f/eYAFZgFm9QBMCJxhOKs9LvDv5ss01uO8YJ1BGFHg5VM1ZEDDhQdv
	F/4cppqQPQi6UmvF280Xf1gB7NDZnRKUvzasZhI9izF31jInhayS/frxMLzLm13v
	s0tDuoAU6xmOX31tOCP9hpptJzAyq9lVgV460YpschuL2Vcw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8bdr0wmn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:37:51 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38f0fe57470so4384726a91.0
        for <linux-phy@lists.infradead.org>; Sun, 23 Aug 2026 23:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787553470; x=1788158270; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=8pOWX7mEcUUo3NdzZeNrT7XWoFlnxo1OqZkoMF9fLwU=;
        b=BlY1mXvmSuctX2eiXS9AhnTWdf6JdMU/acdp2wXQwWl1mo1nw4wEPhKbEr90I406ep
         3ZY7B2MuvX+FeqzOlAMifbFeIDmnAvPGsLpJIfiK+r/sBYMQHrHxaYes5KIhoq7esoAu
         xIZdiYCC/9mNZ7+Rczq0MRFNz24X8irrAOJm43HPIR3915BvKpFqktxwLJfXYpG00OKr
         nu2ZSwoN7qYM7pofgD603ETOUkVQPAX/f5ABddELaCqhcjwUYLIjdZuNuvdGa5zgp/h2
         BRwkJx4Et9JbCNefi6Yv2aV50bOgbebEZM+GvwyM1vtxNZclPMfm1FuwteqzNdf6QeyV
         Vs7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787553470; x=1788158270;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=8pOWX7mEcUUo3NdzZeNrT7XWoFlnxo1OqZkoMF9fLwU=;
        b=cBOJKia2nNRnrqFHL63HyejkejGnIbCMqgVK9QPq0aL+zs2atWirZVXdJKmb5hBsve
         EjC4/eZe/+pIcHh1GvOO7gX45t8RazYn7/o9Rqhz1Xorye0CWhCGFYvqyExsvVOQMaJ6
         +ruITLRDFUlKkmfooeKVQdCYNO6VyEYysIq5KRHhsaRBp+yWZ061Rw8sXHVMvCbgHu+a
         lgDZUOf59lbFLwdFGrjD05t9j8IsloHwXw83Spqmt4RJKbiF4HMI9aKuBA7TzcZprESM
         P1owB+E2DQjZFvRiuSMLiFry1IqhO/xT+DEQMV23sU2u7D7nYukU+UrS4eY7rT+fJGxS
         PBVA==
X-Forwarded-Encrypted: i=1; AHgh+Rra8TvMJPqK490BHugwHBUMKH13UJ0KACJ+kLsoicIC6Wc8+vuBvXEGjVYAkuuUgkGKQrWovq1Dwt0=@lists.infradead.org
X-Gm-Message-State: AFuF++lNTy81h4VpiGv1qVzqADjD6yUsOZ1C+0DTfnCSLR3uezk992zE
	4Bny1lU1mRpiKe59TSz9kIZbMLvt42r4PAKDpYDMgIPpduj5L4Hm4mkliho5b/CPHx2qhdfiONz
	J1t6WVK4vmTDeGXgszYfe+46Z0//1hM5eSl3O+SnTM1f28kFMS/DIzMOwDY4BqDXWv6Ph
X-Gm-Gg: AR+sD13dOqpofcdrSTKfyDk4KXxMJ0PzwTITUfvIIF3QB7vOenaaBsduTOjpyDZz1uJ
	5O2R70EsdZfJ9CnV/i7QCglgdLPXDAJQp4DKpRxitStTk3DsbjXz5LM4t8g+iLQVQez1wJFpRTY
	68ZiSVuOJaQBJcdb/nM5RzHH+GBuhL9hIz61sguoMRxcOsUu51qXWpkEVJMSFx55d0/c8krDXgr
	6XOXk3f9KcsEWSHMFQDe50JQF1SFXR+ErxZzDbCH+mswbRogBt9S0GxLtK8sSkKh8CqJZ6F1hUZ
	M4FMRModduB6MrOoGUkDY+f7/BhX+oq1DWKDgBOzmvkOddmpzKbPBcvXtU8648l4qBPmwn7ChDd
	IaKRv0lbCUu9AwDJHMOaySqLcOcrc8XZH+vfBjZTlDdSmCIbb3iov1NLFFSQVyvtBIcKqDg3GzG
	1PIh36rG3s0OAn2wm9cPuXWEB1wjNpuw==
X-Received: by 2002:a17:90b:2d0b:b0:38e:9784:dd47 with SMTP id 98e67ed59e1d1-395a044f2c1mr37328300a91.1.1787553470433;
        Sun, 23 Aug 2026 23:37:50 -0700 (PDT)
X-Received: by 2002:a17:90b:2d0b:b0:38e:9784:dd47 with SMTP id 98e67ed59e1d1-395a044f2c1mr37328255a91.1.1787553469952;
        Sun, 23 Aug 2026 23:37:49 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-141861732f8sm21667830c88.10.2026.08.23.23.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2026 23:37:49 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH 0/5] Add support for USB phys in IPQ9650
Date: Mon, 24 Aug 2026 12:07:40 +0530
Message-Id: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALTmi2oC/y3MwQ6CMBCE4Vdp9uwmZaON8iqGA5ZB9kDBthoM4
 d1thOM/mXwrJURFotqsFPHRpFMoUZ0M+aENT7B2pUmsOHsVy/PwZefO6C7wVm5C5TlH9Lr8lXu
 zd8TrXbC8j/RoE9hP46i5NgFL5gOsqNm2HwooH0GGAAAA
X-Change-ID: 20260820-phy-664ed5ec0292
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfX1Ab+5do767f8
 nZcP2PmkPMsBRg6/vRCnR89fy2fW/43lCmp9DlcL2K2ryLaaAdftGnSIVhdrA+5yW38/XeTL5HR
 DN90CzrhY2Da4Ut4qGl0eZ+Zs5X2RRFjqhvEovgUq8nvznEvMRTlQU8osfFVpZR0gYT8GetOypQ
 oHW6uBqeDKQAFRjgBSDZ1rLFj5+P91h9NfsqhCkqLaIfDMtMneyPMWswHV2+wYPp7rnyScmsFUI
 mbIMBY8u4Pz+6G4A7+z+Oh42o5DyBVQeOmNfezJlIrlXpEERLwVPLv22XCVu4PHBcSsfeSTlENF
 nfglc+wUyhaNXv69lu/3VHw5KyP1fxpBdrHpEdo2wYOc4d6D6X5gpDyGlXc3y8vydyDyVx4jADT
 MkNheQahCTE9YDsZBDvwuRkfHG71i4S9XhBJnuHQP/w+ScRaTesxS37zbUwcgvUA+BZK//rygbL
 orNz3nQderGJpjX9LKQ==
X-Proofpoint-GUID: guxE9BtzqbkR5XYRdROSCeiktH53VR06
X-Proofpoint-ORIG-GUID: guxE9BtzqbkR5XYRdROSCeiktH53VR06
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfXzqixei3DrTSC
 HuNIA7qhUeeJWN9RihKv0z/BAcNZjSecIxQ2Zilr+kLQq+SBBGetLmYNMn8x8P+BBxmugTMv7wA
 uC6DhMOGVq/rY1GAXMSlvQvK9juhyRI=
X-Authority-Analysis: v=2.4 cv=W8cIkxWk c=1 sm=1 tr=0 ts=6a8be6bf cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=QVgSJ0PFQKcnxtkCEG0A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_233753_501711_C4C14016 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

This series
 - Adds dt-bindings and driver changes for the high speed and super speed
   phys in IPQ9650.
 - IPQ9650 specific init tables to QMP super speed phy driver.
 - The Femto high speed phy driver is refactored to accomodate differences
   in the init sequences between SoCs first and then support for IPQ9650 is
   included.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Varadarajan Narayanan (5):
      dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3 PHY
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add IPQ9650 compatible
      phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY configuration
      phy: qcom: snps-femto-v2: Move PHY init registers to config tables
      phy: qcom: snps-femto-v2: Add IPQ9650 support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   2 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 118 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 182 +++++++++++++++------
 4 files changed, 260 insertions(+), 46 deletions(-)
---
base-commit: 862ff50ac20d5e0899a5907ebc5ceee73ed4b099
change-id: 20260820-phy-664ed5ec0292

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

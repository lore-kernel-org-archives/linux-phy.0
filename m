Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E676FF885A
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 07:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CMlzWLqogR4hv3kiF/FdrZD1rB74lSAZcpqnNVIJuwM=; b=kEu5/+gUcM6UYi
	bce02f277BFxhiaG+3l2VhnnVW3k1tiz88fGM7dXPAGCsKQapmSQYjPSrbtLJf1hLmUJc0cZUILt3
	Eh+j6krO2R7AXu4YOfeDR/hobenAJGkUAHiFVXiXTknElpQgYo/VYAvwtp8wD5qc1iB4u1W2sWLnq
	2GXJ1jPiJqyT+/JIUsq3ce2iY3/ADiZwktYdX/Xyf2TcIxQB0/q5EiRIUtBR5AZkbCDtb9qz6RZlp
	XJfSnYr6BMB7Adt55bQQNjeQqCYRgFFMaBofGlguMoL0el72QbT8E+kyoRxDngBXPJfZe28qaUivJ
	I6BxHo59Ve8OyHwQjOFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGX07-0000000E9Ii-1UnA;
	Sat, 25 Apr 2026 07:00:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGWzw-0000000E917-35qX
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 07:00:18 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63P3jkxa1016045
	for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 07:00:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=u95S0dwADM496+fuZWR4w1DhE/LLWmP01tc
	nf4xUUdg=; b=lYpQeRo/gUlm/XZu5UEckjqsRJS3mZnBg+1THadc1l14reUD3yL
	kvo4aa1oLI2gKt2o4J2+i6J+vcZV3YHw9yI/AmYZl/4TS7kuINmKzSczsHujT9Lk
	6Z67i4LLnGIhQj9X8Fgci2/93oqqY3mZpbWDA3dTB0D2kp4jQ/VVKlt2IhEc4tiR
	5rTzahFD+3u/lPBqXHqcHEt1v3Wi2HO/Gq0CDTIcEiM0UN57+mRCzo5gb20apPjf
	hgYAvIPm+AAp8BPNjUAwSGLcWYv47P24ohgkeJ94nooge0qY5skngOqQjXxBRUd7
	keD+28d1IGYj8N7zdWLqVFRbdSIp7cc1AHQ==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drp07gapy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 07:00:13 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-12c8ccc7593so9868410c88.1
        for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 00:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777100412; x=1777705212; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u95S0dwADM496+fuZWR4w1DhE/LLWmP01tcnf4xUUdg=;
        b=EMU3ZPMPXHOUaQ5ep/xgooJaCvUax0oWvqjJOYGy85zPKdo0+wWN59ZVWOsnlTQuss
         fsV9qH7duejm1xRS0zGHhAT9BPwaK1EnMubKHX074375thN9eH6tj/eg6ew6euaWdIl9
         7YMWG9gvwp5dENc5pG78LkciSzdJKIUNVl+WyVbR0rfJkpvfNbGUV8IZ6mrdbSFLWJ4P
         Iv9TOPVAUAmrF96Q95lwnWaiPY0ERNNZXNYVYhcR5Mk5K5LhBYkuvrxKRL9N+98s/4yD
         yB19W9JEN4L4RBKVYItjTb5Uy5/PFDVY1eYRL0CQjvTOvMYa7BC/Z0ccQbDSS6G4kjWk
         n3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777100412; x=1777705212;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u95S0dwADM496+fuZWR4w1DhE/LLWmP01tcnf4xUUdg=;
        b=YyQhpZTgQi/O/ZOQ1zbV0cXUZMdnGZKco/YQ88wfjdxMuYXzWvMF6FqoMpJ715qACy
         lkjbQbmmQJXqJ/A52Rj4YGyjIgUEEV6+Ehydpb0rtNyjiVSjTPb34We4hYmi3nx0UeaS
         zebE62BAXuM11ZSxdcIhdmn1hHC/r8irjUxz4SUs8krfUW4gsQyTMmeP4pkhM2Kq5zsQ
         dXeYmxGc99Ybi62dKt+Lt3LhaT6dxdKda6e42gp14cBZpT0K+qlJ1RDNRD4LiGwVXisG
         RZA2Mrcj8F0hloofhaFjEi4z5Lz8GmQpdM2Xmo0ZEfLPePEWoObiuHjdcHKPVFUO0YiI
         zOjA==
X-Forwarded-Encrypted: i=1; AFNElJ9TUV6N2RXRrfwAbA5enBZ//xjJb1OxDXmgn2Koihod1QA6U4J89YMEBaRBBxkkx9v5rIfpHLkk2GI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLu5KBaTVBhGZO6qAQRYEGP+a7/gG2vwcMHwW+KT+U6b0txsaS
	O3V4JYAwEvGr98YaaxZjg6zBolHcdrr6+viM7Z54nTRBwa4NaYTuXmQiEimNC/e1ns8vtRg3SM/
	mjqBgFEZfjK2xEev1pXvVFmL+KkHXU8mVFBxcLxPZxTnvpXrzGgmztaFvRCJ8f6m7bdb/
X-Gm-Gg: AeBDievKXZ4oyc4RZdmgp2OnEj4Tn0eeKHxUCeBUsJoWev3a9tC6dipw/7DJEc8X0Em
	WsHAv2NqchQRsPHQrAJCc/uvs++ZJWJkUGFDHPtyHsD2OCJR/kMRwEAg+mRgCVuAK7LqQxjYxRe
	/DjAM4RK8niNKk3xEP5xrvVJfPCrnZlvGofYbD1KEQ4xKoCIL14GV2hwbR8lBrXR+vOE3qB5rIF
	gNpVFoTbax5BHl36fx/yhrzCbOvgCD10JLM3NAcGmmdbt6wpqQOkUwBGpCKpOEKmRZdvuQ55n2F
	GGkrHG55F5rybvSdOG9DjsIfjSZIdiekv0FNz1WRYZk9UvOeSc5FvbvbIdRmzHnK/LwZFa/c+/x
	0jaMrKqmHLe+UP4+66N9LW+7L9KYKiT9c3pkVYvBo8zXcAj02fLA/WSKjfQLNiVsBEdLLp9WTD+
	TKPOCm22P43A==
X-Received: by 2002:a05:7022:90a:b0:128:ceac:6db1 with SMTP id a92af1059eb24-12c73fa71demr16584846c88.28.1777100412461;
        Sat, 25 Apr 2026 00:00:12 -0700 (PDT)
X-Received: by 2002:a05:7022:90a:b0:128:ceac:6db1 with SMTP id a92af1059eb24-12c73fa71demr16584822c88.28.1777100411921;
        Sat, 25 Apr 2026 00:00:11 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12dc2dfad8csm9430630c88.3.2026.04.25.00.00.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 00:00:11 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        ronak.raheja@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] phy: qcom: Introduce USB support for Hawi
Date: Fri, 24 Apr 2026 23:59:58 -0700
Message-Id: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=K8QS2SWI c=1 sm=1 tr=0 ts=69ec667d cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=MeUEimlcFosfp0q7v7UA:9
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-ORIG-GUID: FlR07trxZ6m4WfTufbT2VCa8y5Eprt8U
X-Proofpoint-GUID: FlR07trxZ6m4WfTufbT2VCa8y5Eprt8U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDA2NSBTYWx0ZWRfX/6hR+I+tN4iC
 Nd5txhGLYsxtR1Nw8xGqMEhSqZTPeqmbryKfC0m7QjgH4YXt5jBcf3jb81AqmY8q+JXH6AYcjxE
 rJn6nnfPhCEp31536nLE2j5F67mYotNUkhX50zupYGEDeCTnMcmiGfgqyGxBQw0kxImFVWZrwSg
 sn8bp5xt4zbdz63LuAgnebvh2AJooHhX3ucKViH5jQOpSSh988YlJgZpzjCZOWrXG3Ctf6JMEQD
 sG0n6cCerVwd4i0n8zd2PvSvy+2HwMxcIeq6TkPCMhnKj9b+YwKZ/TQ0RQIWZ1Kj8Z6RjC657Rl
 YfhM9QLpuMLQhSByOOcmGMGFGB1lOOij1zd+BhQLY9l+6OsSSIlwJx6XLPSD4VBtM/dkFHsSghK
 SMCluGu1YpjFkq2tvVuK3Bm1+3yhlzVe4SVHTdH2jUKAoT1/0RUQTg5JOHC7BZxU0aIPmOg+UON
 nENgsTsRJbWvMIhgtVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 spamscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604250065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_000016_917244_CCC48625 
X-CRM114-Status: GOOD (  11.31  )
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

This series adds USB PHY support for the Hawi SoC. It documents the
QMP USB3-DP combo PHY and M31 eUSB2 PHY bindings, adds the Hawi
compatible to the DWC3 USB binding, and adds the PHY initialization
sequences to the qmp-combo driver.

Ronak Raheja (4):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
  dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
  dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
  phy: qualcomm: qmp-combo: Add support for Hawi SoC

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |   1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   2 +
 .../bindings/usb/qcom,snps-dwc3.yaml          |   3 +
 .../phy/qualcomm/phy-qcom-qmp-com-aon-v10.h   |  15 ++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 232 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h    |  15 ++
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h   |  13 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h   |  19 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h   |  34 +++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v10.h   |  89 +++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h  |  89 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   5 +
 12 files changed, 513 insertions(+), 4 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

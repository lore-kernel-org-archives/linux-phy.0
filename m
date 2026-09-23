Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E8DC982FA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 00:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RcX4LrH3rFvi02NoGT7WOr5SdiNcS4lPNOBOpG704lM=; b=TlEAUcViQnUKoQ
	oqB4mAdOG8Uf0/DqM8f0kIrpdqh1ISoobw9x85vYT5AVxnoZphDemkAElVGU1gGwZTGRPA7FLoqwc
	0PnaMYxuX0ukioRKUSKETSJ7nZn0L+8KHOnmfcGKq10eGfr+gioIstYX55FEt+PnJqaNF9cmcpQq4
	I7UK2AghYMKvhAwVDp8w21W+X9EW2qNcxhAk7N0zpNqXVVascOOBemif5+7qmCDCfiwWhpbD+eTYZ
	xBVDcvnT24dxwZ65eq2ncmKNW+poMdQSeupQZBgm4SMIQHFHzbr94U6GBG6zmlfRC4f2GZZuzQ4wb
	r0ttYMVSzRaO7KquM2FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ATb-00000006lYV-0gcR;
	Wed, 23 Sep 2026 00:04:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ATY-00000006lY9-2m7c
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 00:04:41 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68MJCwkb1166709
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 00:04:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=waCzY2zXIz2kJx9LDaqj+2
	979FNXVnLg8fppO1NrYSg=; b=lamUCdUK0NOUIPl1+S5APIpjT7kXgyy4WXAXBD
	HrgL3OA0n9p56gBW1H8HHGAfLIv4rpra1IH6S2C1jRfn89UGaGK/gGvZtPYWaKnH
	nYZhu7Q9Dhb1RKB7MPUW/oRNnf4hIfWaj/S4NAlN27lcJQ8oO70Hj1oRrcstPpVN
	9vSmgAEX9kyMtU6tJ6qTojoMQXxRhnBznI35Vsg2ROUanD2jcpWIrEKKALa7cLVE
	eSLtq3lzjn9ccgLGdSt/i/3yjJpjFPuXGOPyq7NLVhHoOJxkKyHrmo/HcAACP+wN
	eLRjP3TL/6T/3xw2AAXJykdrMNdrQiVoiMn/qZt3jTpwCetg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4guymw15pv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 00:04:39 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-338c2e27430so215895eec.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 17:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790121878; x=1790726678; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=waCzY2zXIz2kJx9LDaqj+2979FNXVnLg8fppO1NrYSg=;
        b=hnDZ12+mURbKQva5Hf03cL8uGd1mLU4zvdSLrRZdGRWLRsfLIZkF0M/5mLWnRaP6Jz
         cR4QFg16tjkSrTHrQVy358exGJ7sUzCWvGVi5ePLin95gOhINCoiQx/BP40ShtVuvHRG
         bL2ati75syRo31tSyI8RVvPk5+Tt+WeRq5OeILlLE7bEM3I3Eyh1BKnE+QKa2fCvamYU
         qVEDDd2348eGS0HV3FDf0E2TQMuoGCU70AAMeIdTD8GCBVhed59dJM6ux6JP5PEQ3Y/1
         3NKHTfPA1u7iMZfVaZEP2FmJjfTu4JT0QCGyeFUS8sralFveFMonzeYCmv5F++XTznAV
         q3aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790121878; x=1790726678;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=waCzY2zXIz2kJx9LDaqj+2979FNXVnLg8fppO1NrYSg=;
        b=WGWKUkNj0XUnnTCH64to4TolqifSp6svRP7rXVI6hoqzmUwZ33cvURaydDw8qlShB8
         DX5ulZDQ2q13YzAxtfd5fhAULuzq2XTCBQw6WLrpfJCl6SRiOcJ2Of8KAFMFpsqKG52d
         bSrBRcDfhZyLGsGyV6MPu+qWpginH3NBa7g7xDo46v2l5aOEnRGAuOZFK6dF9xU06A6I
         Jji/GVRfR2YTPzAmk4HD2UwiiiLrwSoznUdbIX7bkMSnoPqH9l0gy5zGnwXIQg9Pykwh
         EH4ovY7HtVb5UcFPWaJLXaw+J/vjF4I8U+b9vTKNpa5rk4QJiRu+HYTywSJl6YSApH0w
         moZw==
X-Forwarded-Encrypted: i=1; AKwUvBxEp+77bConHKxRS2e5FpdDSiCkQAAESBKoiPczNFpgsgeRtzazBSfdTLnczEsudfq4IJNf1dvIJrs=@lists.infradead.org
X-Gm-Message-State: AFuF++nDwgZdh9WFTIzaSCLEk4sVjNwo/lolkV5ftfz+g2PKdpAwO0YK
	icyfMVexjWqqc3Vml/2FEMDSXZ2T1uBSnFHL0XHWU2CnVEyCShE9KKqKxdb2Jp4qFdt2Ayn7EBy
	YOYnSizCPxJ6TeYZ3Jxmdn3HeXr5l/7FDznDIJ8OR255Q24gxKFfWV2F0FDFEDPm7R1jT
X-Gm-Gg: AYBFou1/6GaBmVm58K4OzS3AOYmHjKNRdyUFCjSTFd4ANgBD9rca7kbdpvKKC0yrrqB
	bfr8WgPRT3697QAGFu4Z2KiOTEYSRUOi04ZzRTCkdqzqsa86cp1Wba72TmLqGS0778KO2tAobbJ
	UgSriS9rFjJ9B4duWsUwia3axipJJna7ePaPP7b/14h3TddsQvHOkah7YuZXC9KrGPG1pYA28Ef
	cq3nKj4FpsrzWVd+VWu2M1eAtQuXbjefGaVv3acy4eQeu8t5lHfUpbXhaNI3uvCk68pxlucZL7W
	r5DlKqmuM+la2Qalr4mN7RN1EBQIvkvcTjbjuqYNhvVFkPBw+/lPYzN3LA98ZLuS6DDCUsA9IPa
	z9yLMBSq6zaqUUgHxM8az0RB0OMyS
X-Received: by 2002:a05:7300:560e:b0:33b:c23b:f5a7 with SMTP id 5a478bee46e88-33e8d8d2575mr986122eec.21.1790121878309;
        Tue, 22 Sep 2026 17:04:38 -0700 (PDT)
X-Received: by 2002:a05:7300:560e:b0:33b:c23b:f5a7 with SMTP id 5a478bee46e88-33e8d8d2575mr986092eec.21.1790121877640;
        Tue, 22 Sep 2026 17:04:37 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e939fd955sm1688347eec.1.2026.09.22.17.04.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 17:04:37 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Subject: [PATCH 0/3] phy: qcom: sgmii-eth: add Nord USXGMII support
Date: Wed, 23 Sep 2026 05:34:16 +0530
Message-Id: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIAXs2oC/x3MOwqAMBBF0a3I1AY08b8VERHzotNEmQQRxL0bL
 G9x7kMBwgg0ZA8JLg58+BRlntG6L36DYpuadKGbotdG+UPsjLhDPOKctEVQa9U1ri1rZzpDiZ4
 Cx/e/Haf3/QCXGnkVZgAAAA==
X-Change-ID: 20260923-nord_ethernet_serdes-c486f715f383
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790121872; l=1845;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=1oJNVnV8beOaRZ1Ot+GYNsmqLMGppySNe2KXhKrBmVY=;
 b=Cw/3FJe1gx1Yrc0iplXbdTlz+ALOknKOL/xoeIcwIpW9fZvXg90sDOj1nOebhwTIaOtzmsK/a
 9ryl+FlPf92Due5QmnPYqcRtDJereC9zIqjgkrsrssMy8fkB26XDIDR
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAwMCBTYWx0ZWRfX1vmzlrcOVIvl
 MRdKF4YRai7s0pgEKesmdimFwcZMG3fCKU+8eAkG+QhBGrxJsyunN9D1eO6jtH+UqZf8hxcDE3S
 YN48yapCMWVyo2uZDf0sYqHHRokH/j3G4paY3vCbH4XB3K/4pIjU4YBfQnDJeUDeoEQkPIopALl
 uDJOpdHOWgCc3ZxTY766T4iqrS2/jA/reBk9gOjcoyeBJfhIqGDilpA4OwFN7vMdrV+kM+k/x+E
 01cecd+PhGvojYSrUWMVU837IMw8oX0J9ET4NoD8IkFBhtfFGjSKS5XHOZz9KphiA9ZwdhQ4f/m
 8LKpWlImtYrSRnqP78GCuoE5FE9BaYj9g5NMYnx3NhE8MdBOEKW9PL3fdvrEmqsXk6AnxDGLMfA
 O9Wq/3RkZTzfIei2GO4chtvu1OQpKEF1CcHQFR1J/K1OhDV7ASbI7mnjkhAzzOo22+rgFVj40iG
 CeISLYEXIPIHfXsZGkg==
X-Authority-Analysis: v=2.4 cv=feI4WEQF c=1 sm=1 tr=0 ts=6ab31797 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=KKVqoz1RRV_EfAR0khEA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: MEik9k8Oe0VW46YgVtVAom-I8gz4qW-_
X-Proofpoint-ORIG-GUID: MEik9k8Oe0VW46YgVtVAom-I8gz4qW-_
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAwMCBTYWx0ZWRfX8InYqHBYmdUH
 ZZXRGkRPU3uR1Wd43UAs4tFumUDrYvfR0fRYaGJFi7O9AC2tAwxrqt7YaxblmcP49vArvxuHWWi
 x4X02qlCyaZLQGA4vVPJqC0noTH//G4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-22_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_170440_721525_9F0D73FA 
X-CRM114-Status: GOOD (  14.36  )
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

This series adds support for the Ethernet SerDes found on the Qualcomm
Nord SoC.

Nord uses a QMP v7 SerDes block, which is an updated version of the
SGMII SerDes PHY IP already handled by phy-qcom-sgmii-eth. The driver
currently supports the 1.25 Gbaud and 3.125 Gbaud configurations used by
SGMII, 1000BASE-X and 2500BASE-X. Nord additionally requires the SerDes
to operate at 10.3125 Gbaud for its 10 Gigabit Ethernet interfaces.

The series can be broadly divided into three parts:

  1. Add the qcom,nord-dwmac-sgmii-phy compatible to the binding.
  2. Prepare the driver for PHY modes which require different SerDes
     programming and readiness checks. Existing SA8775P behaviour is
     unchanged.
  3. Add the QMP v7 register definitions, 10.3125 Gbaud programming
     sequence and readiness checks required for USXGMII and 10GBASE-R.

The changes have been tested on the Nord Ride SX platform, which has a
MV-Q6223 switch, running in fixed link USXGMII 10G mode.

Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
Mohd Ayaan Anwar (3):
      dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add Nord compatible
      phy: qcom: sgmii-eth: prepare for additional PHY modes
      phy: qcom: sgmii-eth: add Nord USXGMII support

 .../bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h      |   5 +
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v7.h |   2 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    |   9 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c          | 226 ++++++++++++++++++---
 5 files changed, 219 insertions(+), 24 deletions(-)
---
base-commit: a8c591ed6b672915e0be57843f943a2a723aff40
change-id: 20260923-nord_ethernet_serdes-c486f715f383

Best regards,
-- 
Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

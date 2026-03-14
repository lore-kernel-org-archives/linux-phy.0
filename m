Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C63C0107BCF7
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fw7dXCF949ti4wR/He9v6fPZGNDHCjX5L3Y2FLInfME=; b=x9k230yUBtSqXc
	IuN8Unk/Hh2RxwYS+ZGbjEU463tD9fyma32OWCbXjh4HgZPF++gChpukW4LFFth1dZaF1JW8kSpnC
	j5aadpZoNSYwqer+n8XF+SJ8ACPWiNBc6HifX+fZsG+rqmak1DL6i5pZOMQY7dtPDyblpCQGTePOZ
	qdRj8ulZsnQUj91oXFIxc7GV7VllO8i0Tc49WhJ9OdpLQsk0XjzwTTl0WqWpUGG985TquG7HEYYxt
	a+bz3BdBNhDVr6iJx/idsjAhVsPb92zUUKy/zrR3kn/MaRZATd+GulJ/Jwme9rGtDfR1mMEYXa4SS
	r+F7QdT2S+dhKkU3v5Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKR-00000001Vti-2MvK;
	Sat, 14 Mar 2026 05:14:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKP-00000001VrZ-4BCa
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:14:23 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3diau3507755
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=TQ7UbaX2oRU/+Phhq2OeYcWf31wYO1Qf4Sd
	1/DK17RA=; b=PFshEK9iIDLsMk+ZvQp8GtsWdg0cd9JHC0QTtRcpW1IefUaHLKa
	CfKPgitn8hayYA/YtnYF/vE1asUzqxtCj7DXDa66Aha4xSaMN74HquouNbp2fZ2y
	/8oOnXYTsF/g1NoNMJZh330bzbj+2Oswynhs+Ea84kRVM2LVcjoWneH1OFYAT8FC
	KnKrLx4iR6W+Zbu0/5eNegqmjaSIk7/2ag0uqDBnuqgStlpXKt6dbg/ttbPJ84u7
	m0wbFkVAzfc2GEtgTDhzFQWSa9zFO2PfHHCsW1+xNc08xDW4DzLtjeAjri07vgdR
	f9n0VlvYacDWG8xxcU3n1gtr7Yox2gghT4g==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyyc04ex-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:18 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2beb5d51b27so591882eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773465258; x=1774070058; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TQ7UbaX2oRU/+Phhq2OeYcWf31wYO1Qf4Sd1/DK17RA=;
        b=T6cBvkFA7KsfKW+Yk896YcNZtSTnSbNHen2ReT8iZM0d+n0aWwvSM+Zi/a1tAVV82j
         h/zCbdJ33zUUEofv0SltVOvH2jivv5vuX5L/qHD/G2/4EoQJyCwJLHc5TzR/erBeGzHX
         fqna0XJInz1eML3lPpIeeiQKxupeN9ljzdOal8kkLgErslUlqfoiUg7vp/+UuYRBh/Z2
         xTE9DzW+mLRRk0X6ktI7EQYoK1b7PzLz+QVjorItEtvNMKxKLNwQFuWcGWJl742THXGW
         QL6HoUt75+EepyZzrxhTo9+8MzWWKIFQRl3mt3FCmZZ37EJ5mxkXLt90VqoZMyNVxK9Y
         i5aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773465258; x=1774070058;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TQ7UbaX2oRU/+Phhq2OeYcWf31wYO1Qf4Sd1/DK17RA=;
        b=Xko/rDsWCGC78SA0Ijg8HeRoCkBar7ea+FxRRAkm5cOcceQjo3+lEHAyc/0k1dy93p
         Er4rXyjisf2u1ib4zLKsm4BsGcm96IGdnwvdErbWCy26ju8vkwrcjR2d2qYzqHknWaxw
         EB1axaXqqn7BBOddpv6IMUMwyDET9E+2bldeuG7Go1NRlxeBUcN72MB+vHeiS0yP48Lc
         ePsodE2joz+VVgfyNGDYqsBu+oSafFTb7ukCuAY1/18aPWLFeIO03ZRJgryYilovFTWJ
         ExvEpmMRisveXHhsCvzRTRphuxixcEk8d/7pRtv2RkWL89MkcD1yQZPKuqoI8ZiYBeBP
         uaYw==
X-Forwarded-Encrypted: i=1; AJvYcCVdet9Rb5x3I4BpXX2W+vg1S/7kkW7DM7lmMDRWA7ywfE9rv703x89yMYKiae/TJd4IBbyweS2M1qc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoW/J+hzMtcMsGZy5MmpuQmzJs6JMOJ5JkNvlEKBj9e9Xl9Hn7
	MRcVsLBXA794PKr0VkjHgMtpOmZQrE4VaQkVuIDHiSqmsGzpuLrXKAhIvWWmHHMCOoKLE16myOf
	ZQLbXfnloZm/gRiMq7qRa3Y8eWk1c8PEfIx7NEZOqEa6A/gxKCRdbXWXAWxcsMbyoMrVi
X-Gm-Gg: ATEYQzxADJnmRL2JiGFGOXJ2oCra8w9PiBX38FM+L46SWDJHU4GSExJwV5dZxJmmcoP
	OwY+LFhZnkEMOLjisaPGTyeYr7psHm6sKeq8CpEQnZgdcZQnuEUfZf5oXHHy+GQQTKeCS36jGlk
	if6VpayqlDF+JcxfinViip8a0qNGPVDachYSznnqkLyR+UnZMTdtmq7rT/smUuqUIyMKERty25x
	iwyaW8ysqmIa/OFKFEohuvJcyS1H7u7JHfv6jFPKAyApgTpw9H5EFq4sV4rcKNQFl9fflZgTGPy
	hCYrrEcXXP5J2w71TVLildWf1K0sL+Joq3hXGEBJ90KruKdoJPJMa3Kl4Ne4s+b+5zACAUUA0Rc
	2U5nUbW57C4eJ8bb0/e7pai/EzrUsmSvCa+moXqJuoqmwqegkeFuxM0ecqoPWzauysTEstbvDNA
	dfV1SQyA==
X-Received: by 2002:a05:693c:2c93:b0:2be:8216:57e5 with SMTP id 5a478bee46e88-2bea53ec7c3mr2056072eec.9.1773465257816;
        Fri, 13 Mar 2026 22:14:17 -0700 (PDT)
X-Received: by 2002:a05:693c:2c93:b0:2be:8216:57e5 with SMTP id 5a478bee46e88-2bea53ec7c3mr2056059eec.9.1773465257245;
        Fri, 13 Mar 2026 22:14:17 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c098cbd4dasm1784045eec.0.2026.03.13.22.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:14:16 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 0/6] phy: qcom-qmp: Clean up QSERDES COM and TXRX register headers
Date: Sat, 14 Mar 2026 13:13:19 +0800
Message-ID: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=euXSD4pX c=1 sm=1 tr=0 ts=69b4eeaa cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=hJKCr7oTaIRBbX3R76MA:9
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: joJKe-cXsOxG7KZwR7d_gtxQpG6AOpcU
X-Proofpoint-ORIG-GUID: joJKe-cXsOxG7KZwR7d_gtxQpG6AOpcU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzOCBTYWx0ZWRfX4QJ831G1a0n1
 SgdyW7reiuOKnJeARQCx/DCQJW9bDoenBOUiMZjNZOIIX7jb4xnHhTFN+D6HEYh6l6fyN7qVWQ9
 ip8kDEm50WbtA3EWZUSKOOYO9fr4W8jhLllW1VlZhIm4ATwmvrjLFz0iJ8Bjag7+nm6C7EyH4oh
 kQsY4FElC6EndKTif6spqBf84VBzU+jpZrX5XJqwMrWAaAONycHxSmOQ00Dq+MTOBQDCrlxNRiB
 hB2nBa/iR88VGhrL+4FuDwhR7YJLShvq4bp18BZUadrqr37HqprhyPMZIPLXMnmtEsc5679MLlP
 C3SQ2UsLuRcl+HWb8ttCwE5V4dmZD7LiyTw9h76ND5kmirAlIM3K8LKNpJnM91SRDYH5OPVfsDV
 7Cb6zwAWEFQOWl2luQR3kmLDp7tthFD89EmbF7hE5Jk/59C5ItNpzA4LJCxb0OyM1q4WqmH4bcl
 8e2dmoRcKp2EtLe9Law==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1011 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_221422_104319_4C8347EE 
X-CRM114-Status: GOOD (  10.20  )
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

There are some duplications around QSERDES COM and TXRX v2/v3 register
definitions.  The series tries to clean them up, and also rename
v2 registers/headers to make the version explicit, just like all other
versions of the QSERDES registers.

No functional changes is expected.

Shawn Guo (6):
  phy: qcom-qmp: Add missing QSERDES COM v2 registers
  phy: qcom-qmp: Use explicit QSERDES COM v2 register definitions
  phy: qcom-qmp-usbc: Use register definitions in qserdes-txrx-v3
  phy: qcom-qmp-usbc: Rename QCS615 DP PHY variables and functions
  phy: qcom-qmp: Drop unused register headers
  phy: qcom-qmp: Make QSERDES TXRX v2 registers explicit

 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 110 +++----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 212 ++++++------
 .../qualcomm/phy-qcom-qmp-qserdes-com-v2.h    |   3 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com.h   | 140 --------
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v2.h   | 247 ++++++++++----
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h  | 205 ------------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 254 +++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 262 +++++++--------
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 310 +++++++++---------
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   3 -
 10 files changed, 769 insertions(+), 977 deletions(-)
 delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
 delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

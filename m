Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68437CA101F
	for <linux-phy@archiver.kernel.org>; Sun,  7 Sep 2025 14:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoDkJxis0HiUx5MLAuHFd+viOFPaoihB3y5Rbps5/ZM=; b=rEY3X3K7ptMRCM
	+hqr1JH2ov0UdilwvzACAWZWrPlBEC6AIkFplJg/NNpUlFBygBxgai++mCAR4mcI/BEflN8d0SEKG
	I3NyB+Nij8PNY+qPEu5gkIP0y9ve9BpRIw1pfxX2tdmMF1j0eAe/ihpKqTHZvso1vFEIPuClWCTnc
	tLdAaK0CuAOGh3qR1EHJ187Orpt1AgMABeo5O9vaOayPhfYPx+iAykbk561ZVc/+RuG2aLsrRHYGK
	AVvYetePLjS7DOnQr8wmy09knde5a8sPy7sn+9MAVZJCOYS3MLALCakrVtKT5VAUz7zG7BV2a6bDC
	gAme1OzxVDsMHxhC8Y1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvGkk-0000000BYwp-0kgi;
	Sun, 07 Sep 2025 14:52:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvGkh-0000000BYup-2h4v
	for linux-phy@lists.infradead.org;
	Sun, 07 Sep 2025 14:52:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587AGift015587
	for <linux-phy@lists.infradead.org>; Sun, 7 Sep 2025 14:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uXEvIWnbOkICzt6MJ22YL53UMQf8f9LrhVZWM6rbuZM=; b=k+5/s9Yq0AystLw0
	z47uMBoFuMyOgGp2TvjsW8HNhZa5GFeciREo216E552wXVaExN9H8eKhlPcw42Ch
	UULoZ8wNMc5aRnmqO/VMVzxqDzYvD6Jj2qPthu0p+Mq/EkHTg6ApEbSxHIkqMXTH
	Ml/0WlrthOzud/kTqmwGDVybMz5PO7mTLW0L2u3I04rus1nsAiGcGNmRZDd6fBKr
	VYMhjeqHe/+laUCWSlUdHVa256M35rA4r61HPcbc6ww70BNRT58KIX+s6LqCeMOy
	7/WlZKWRFKCqlvb5T1Ylc8ILFNcEFsEBwdJGaff+x8+zxwFYWjOi9/2gC02Vzqtk
	1FZFhw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4kt4bj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 07 Sep 2025 14:52:23 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7222232866aso98073666d6.0
        for <linux-phy@lists.infradead.org>; Sun, 07 Sep 2025 07:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757256742; x=1757861542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uXEvIWnbOkICzt6MJ22YL53UMQf8f9LrhVZWM6rbuZM=;
        b=N6AlJEe0x9lx1utwvkY6TF0y8f4Oo6xsRUvpv92IJx8WYz1Eo/xVBKLbHjMmR9pT7Z
         OiQRAWNIPSx9RskquwZ+Eqm39Ar+DPdYd0h1V92WKwcqXLMNVU4DyFmyn2VClRyKVg29
         ZqKt7s91OSAPqqFyYx/EyqmNlDQNM6YtJtxo1N4fpG+HBAxyFRy4luViHZTtOZRkfLL6
         vrQXuIp6Zk0ARWiRWG7d2Ju6dkBul2B3xq5tu3LyCjNEgrl/tCQpT+hMe+DM30qNUtKm
         TqNfqPthJQEZDt9p96lLTRObpLRRcJAux6sFbVoxIqfbop8Fzj54t05mVCY/m6DiNbml
         JT/A==
X-Forwarded-Encrypted: i=1; AJvYcCUi6E47YVkfKNFA3I6kbHF8XS47AQhQyIjiL5VA10Ysmp2guuJT44AJDztGNUdd+QTeIPGJMMXv8FQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywrdm4qVe9N+l6Tbr5QSVqr+enugX1XAD9qaM/PssVmbxdHcP6Q
	zuw7VccjfyUTfB9kXrFT4eUzfxw5WAFkHJRVfXHZI2r8jzEOpq/CvlmKAfzG99Ix0bg8xVLC+My
	8uAjcfME2D4yvU26ppIobedIDti+sH6egAqHphy44UtL2fdSKftdbi082LEDf9GzIzctg
X-Gm-Gg: ASbGncuXjiOBEp6dI1RD/HRD8+V0UguWAfslGtk52IkVgc/s9pGLxPboQLK34Gh3YU5
	KoXSMKJ8PyFRoDwuc6JkhgVJQBeHU0qJi4XyzABVW3f94i8naWfBwaMPw+5S/0k57/0l/0M8UGi
	H4lpUXATBV8fmeSgi83USsYa3cVQ7bX6DBeIVkEYS5lSlgJioHRhE5TGTkegMl/NmlKKy0rLt9y
	ny2A2zAoKQYucqmCtHwumBD+9D85iNrOZSxLFWnxilTdKM20qKNJNlq3IM3lpDM/STE1xBDecL9
	tBuk21u4AWd2K9CF1/qVbLqXsVACQo7wWq0qWzuOcW5lIgxGs0ZoV83QTHLWLorhjk1Rwn4kqdn
	dhBuHb9hf6ejVpKpmg5IsFGgpex7VGjIxc9NGgpfEJA59SPfZIDFM
X-Received: by 2002:ad4:5de2:0:b0:722:2301:315 with SMTP id 6a1803df08f44-72bc4f93957mr111576576d6.29.1757256741910;
        Sun, 07 Sep 2025 07:52:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJHVWmsQlKEwtB5F5SiO5c82N/76wI2OG3Sj8gZLObDi88o8+yPn/Ihsm5i+eJImPr0TQ8pQ==
X-Received: by 2002:ad4:5de2:0:b0:722:2301:315 with SMTP id 6a1803df08f44-72bc4f93957mr111576406d6.29.1757256741535;
        Sun, 07 Sep 2025 07:52:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab939d5sm2936738e87.46.2025.09.07.07.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 07:52:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 07 Sep 2025 17:52:12 +0300
Subject: [PATCH 3/4] phy: qcom: qmp-pcie: simplify AUX clock registration
MIME-Version: 1.0
Message-Id: <20250907-qcom-dp-phy-v1-3-46634a6a980b@oss.qualcomm.com>
References: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
In-Reply-To: <20250907-qcom-dp-phy-v1-0-46634a6a980b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1929;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/UGpwgqLbcHspMjEQhf+040bOSKXnckhqkr7K5HPcSw=;
 b=kA0DAAoBizyKPgIpKNUByyZiAGi9nB+i9+O9rWaagO59RyRA3FTS3nlrOFKSSJecf0T6cqpxR
 okBMwQAAQoAHRYhBExwhJVcsmNW8LiVf4s8ij4CKSjVBQJovZwfAAoJEIs8ij4CKSjVJ0MH/174
 EKbry2VSI0M+MUUSLJmimpY5GH7+VCNsepDpKLUGeAx9epYlURX1qqEWtMLgZhnC7fxl0Ms9Gj6
 vEsnSYED1WugA8B07PptbGtGULT/ZaoymEJPZmnNnLiOf7NcxrLlH0/+5TK1CdmIjNKRyfwe/hU
 hFXMuLJ00qiU4O0Qy2SD6/IW0EDyFgGIVOM/Mf//WKD/DHNbPv+I0TZUKbTqn1r++ftc3Ni2hAe
 fzXhjUvgpFuviZhcT+f/CdsuGoyWtgBGZ/ljCPqlgSjhig+dtejUKa0dPa4zHD6VUDU1t8kAbEc
 0EptjSVcqQXN+SDvHcdet2KL7Ua/DOSCmOM5vks=
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX6pVYz8vwUaS2
 dgcABcMDus3JkO93CYfwWRDWBry5xCay9u4diS2cAcn/CWdfqgZxHg2dnYI2JTl++U/UapUYKFk
 wLqmuMCF/fPyQDL7dhz3vBRvvziGCejqzXDRpnFh14dcbiQM6QrZe0+QNoTwmYALB8GaIeotxBg
 sK2swRqkz4z/XogYgadN3BintvwoEVExYABH5MIb1FwfqI7Vx2yrX3x8bp5PHVGHwIWc7iZvwgl
 o/kOQ0ul+rj/4nu6VD+wod5nsUr8FPg7aNk0L+Lrp71bOvuawxcmw8JN+StPfRI2EaDZufWiKfM
 hR6pLk3H/9B908wvu1WP9maDH3jzbIajqDnrG9mpyQmXgEjui43ie0RdkRjlky+ntP+m+O+Jtst
 a8ZT5hUH
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68bd9c27 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=UpTUyc56fgFd2ZLN3CkA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: KZHK-1tdFXhN6EIIBu4-eIdVpBbTDcfY
X-Proofpoint-ORIG-GUID: KZHK-1tdFXhN6EIIBu4-eIdVpBbTDcfY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_075223_693113_FC297AA0 
X-CRM114-Status: GOOD (  14.02  )
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

Instead of hand-coding it, use devm_clk_hw_register_fixed_rate() to
register the PHY AUX clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index dad44cc0648355fc1533c9afd176b7d37cfa9018..a81facec7e45304f26ca3ce165af90aa5ff56f4e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3173,7 +3173,7 @@ struct qmp_pcie {
 	int mode;
 
 	struct clk_hw *pipe_clk_hw;
-	struct clk_fixed_rate aux_clk_fixed;
+	struct clk_hw *aux_clk_hw;
 };
 
 static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
@@ -4809,19 +4809,13 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
  */
 static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 {
-	struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
-	struct clk_init_data init = { };
 	char name[64];
 
 	snprintf(name, sizeof(name), "%s::phy_aux_clk", dev_name(qmp->dev));
 
-	init.name = name;
-	init.ops = &clk_fixed_rate_ops;
-
-	fixed->fixed_rate = qmp->cfg->aux_clock_rate;
-	fixed->hw.init = &init;
-
-	return devm_clk_hw_register(qmp->dev, &fixed->hw);
+	qmp->aux_clk_hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0,
+							  qmp->cfg->aux_clock_rate);
+	return PTR_ERR_OR_ZERO(qmp->aux_clk_hw);
 }
 
 static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
@@ -4836,7 +4830,7 @@ static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void
 	case QMP_PCIE_PIPE_CLK:
 		return qmp->pipe_clk_hw;
 	case QMP_PCIE_PHY_AUX_CLK:
-		return &qmp->aux_clk_fixed.hw;
+		return qmp->aux_clk_hw;
 	}
 
 	return ERR_PTR(-EINVAL);

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

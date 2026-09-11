Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9397C88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n8bG0wsmoBjK8OKZVJRb7JFZHOdtEgLta+0k4RQRVhw=; b=T0DDWpVbDTEXMv
	A4yK4NVN6xQqwgYndUGpFpqJATPnQtCEE27TIcMD1CZnfPApgihqoEiZ0+5TTLKKtYTzS+1grz1t2
	TuJF2ux2Vj2oiGfWL+ehgfLu7gn7S1UX6iKyCrvIhY5tqmRemdznOOf2d+p1JkIWzAs9jllvZ114g
	wBgSoxv3K3wce3XXeiLylOpar/fUM0M7vsHCqSOwvQCac13XqlEwHyQBYNT4NdMSZYxJcHFJ9WPLA
	oB8WMPFbdu7b0kEEFyIhkqrk+uHEKHhajgnzLY9pbUWxJwoSFQbrfGPKyzwqRxH7OWzWbNA6ucERS
	7TvJfRacU4zuTJ2P5wYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53JK-0000000H4tH-2gct;
	Fri, 11 Sep 2026 15:37:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53JI-0000000H4sj-0YUx
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:37:05 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmYRr3962506
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NoklEjEHefOp4rYdjJllOB
	/b4jWlzIWDGBqgFGK4+ls=; b=es1DConpLm07rfbb5R8DWZa0t7NaoJSlylMZOn
	SkS4sG7SJ2vz+Wam55KL+G+rgxIbnJc6Ep1blSkhhR3CiFF4Hy7BglscniJ3GgMP
	zN+OG53cUjaZOknP10+Q0apmJKe8mNwHvj4KvorISy/D42OgKwudg5YKhjlQPKTj
	D2faayLi5hDSFzhpq9SSdbpJx86EVAo2LJ0iQg1oJk3nBmbvu6p2aFSaWwR4BlK0
	JTXKort3qx2hVZ7NIAE4X8DojI7YmQ6vG7pbuRU6RhTFVJIQFVdUMJkAi53C5M3G
	6/oDNfKL28EwPi7Egap/M92LcVWtal9Nw0uJaZBGwsTJizDQ==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmfbbhg9n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:03 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-4519ef1babeso787537fac.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141023; x=1789745823; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=NoklEjEHefOp4rYdjJllOB/b4jWlzIWDGBqgFGK4+ls=;
        b=GHi5gld9VX/qdRP8fERV+7MPmS0A2adY39Yh90EUPBNFF+7oeCFa9cAGxvQov5/ypE
         btjy5UjKSrKjJHzHv343imS+F06B8nSqEVgG8WgfVxMYbRyG9J6tUgCtZpKcbDH+b1rn
         neEkGSDtbB1Jf9Mpn61uWCY/H3RUc8Ph6EOgdHHxH964ZPd2LvSp4AgxoFCC3SoHSsT+
         CODpJhmAp7ps/CFbvFMo9s9q/AIf3IL4QtBTDTdZ1Zyht1FBn14fVkeIZNWHxp0Gtf8a
         xQur92AkKtv9vRvLFc5VnoqBPfBB2tOFdgMXJMx/w+3yJoyfVhMk4nfJwe/LTKNheABm
         9vVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141023; x=1789745823;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=NoklEjEHefOp4rYdjJllOB/b4jWlzIWDGBqgFGK4+ls=;
        b=Jc0KtA6DyugHLZamSL9XIadm7JJ7fqiZy/swlvA/ovsrbz/2LjtdBHEnx1bPLBelCg
         pToIoBl4qhUtPrQ6a2SZHrIDq1G8wYhEBAcpGappSMzJ6+JeYroRV0y39SdLMcr4OvpA
         phaUJMjBvlreK1fYTGFKiOxBQn29kbT0dSwRysAbALVJsId+sErK2/1XbDYlWAIImxfQ
         6peIGTiZJmyXCNlP5Qf22o42eXJTwmkChLqpvu3HW+GkdQq2dYpHjpq7lu691kXi8eMD
         nADEI0m4t/dyC69UFzCDV3HCCSO3llrSaMnJA5v4FAGwxFvlaIAnnwMihwknEafz9Wf+
         UnTA==
X-Forwarded-Encrypted: i=1; AKwUvByj7cQILRK8IoGTBeXckKJ1iA+zhQG5abuPTutf3jK4DC8n4IsnT+eVIRUfFSDlOSObG5cFRQYIHVE=@lists.infradead.org
X-Gm-Message-State: AFuF++mzYHioIAE8Vnr/5soQP9hBz6GTENrnnfP54jRoCw/wCf7rpuBn
	VC7ggja5r5Sk1RT8SHLf9HGE7h6PW2YvdJX7U2vraFCl/Pj/E0lDR8vV9NsuchgsAPux42udEPe
	5XptiQzejNG9OSC2mYsbFpVfKrTL7fJc49E8Sa7GNvIPAnfBuAfmUnkuibW/aFPfq63nBMJRCzf
	Jz
X-Gm-Gg: AYBFou23wYtorwb9PLtRJgir0qUhgw1hLCe5fWzODZn2zTh9HgcozViyQR5UWC9wJvr
	zWuPLAxjoy1HsKIrU+5wP5sPs5UV8hFwUa4ZehXOniKi1m8+9LZLgUzGr4TK16VAfs+hqhsHZfg
	vH4EtmTmkmvowVsaTBuIywyNUnpwr41IbdYZscyxsAz6fzIQBZk6jFPQ/4skiT45naz8TUuSRI/
	Vzkl7zpCG8NaQuaBncFcW+XxKBX3c2i3edYUYkAZgaxQgEKWovuTm5ukaZteDEQxAPBFGjK2O5R
	GAQRTueQ9oF8Cz+GI4VeIHlKsBdKVA7AyjYyVwkk5L150rldzRATpXljSpgvwW8nMaMfJfRJtce
	DK2LjqammA0NcGMULAIrYtAmAppI=
X-Received: by 2002:a05:6871:828a:b0:475:e0a7:9f2c with SMTP id 586e51a60fabf-47de95f77bemr3653773fac.26.1789141022773;
        Fri, 11 Sep 2026 08:37:02 -0700 (PDT)
X-Received: by 2002:a05:6871:828a:b0:475:e0a7:9f2c with SMTP id 586e51a60fabf-47de95f77bemr3653743fac.26.1789141022347;
        Fri, 11 Sep 2026 08:37:02 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:37:01 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Subject: [PATCH 00/17] Add Qualcomm Nord display and eDP PHY support
Date: Fri, 11 Sep 2026 21:06:31 +0530
Message-Id: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP8fpGoC/yXMQQqEMAxA0auUrCfQVlA6VxlmoSZqXNQh7Ygg3
 t2qy7f4f4fEKpzgbXZQXiXJEgvcy0A/tXFkFCoGb31tg3MYFyUkXZEykg2dd0PVtBygFD/lQbb
 79vk+Tv9u5j5fCziOE7EmhCBvAAAA
X-Change-ID: 20260911-nord-drv-dt-d09b21f37ae9
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=2969;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=uZtos5GcxW16bUgCP04imDNSXk4Y2sw1hsgfG8ryyeU=;
 b=fvlgQemdYfvMPG2C2gg7mIz0dTtNx1itQVQos4yxGflmCrffKnuOPCQ1TeWCAjmupxkjNdcad
 MglmLqvQIJMBgE50me0cbTbNltdvQKecJlrQVeJODZH2ZN/I8/pxFlv
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: 5KgESDfKniU_Jx-we5FuoHcSSd5rvVZg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX21u6200p3zl3
 cwzXe/L/8bP/wAUG6D/xmnGqKTSN3Wm8Df/WNJ/x5+LL3ceB/+lHOI9ODSOpiz9uvYCqI7n9rJR
 fHjRGB4fpyoIB5MFIPdUT/RxjVcr06d301Z/1Hl354RMdqg+38PwuQYQVfyBSm0FJ7TqrMRT/4n
 IO359sUjZsftb3c+XdSTzrKls+Sv8iw1m+HNKlB3MVn/6PkwIqVQiZrWpVyEp8SkQmOEPB3Hv8c
 jZ6FZ3Ty9wtB4IUiLGHPQ1URCAblP4pHxZEx86VNNdslsCDijEiTbeJn0xl1TwZwaaSyv1tcatk
 PFSc9Z8tYZsXoaPJNRed5e0iVQg6OcOgV466T3usb4G29equOITJKpEGH1C/5CVvJzpU3XnKUsZ
 Wfzkx8X9h5EoQ8N1FgaBj9Qr4cY9hc1vYDJs8sdI7Vue6KHPAsm62U+IhnPj0NgERBgxlNl8hYP
 3W15XyMNpgdVzYFH4tg==
X-Authority-Analysis: v=2.4 cv=X6jHu2Te c=1 sm=1 tr=0 ts=6aa4201f cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=PFInfxxGytTXtyWs1EMA:9 a=QEXdDO2ut3YA:10
 a=y8BKWJGFn5sdPF1Y92-H:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX8kFhLobL/OMk
 gqOyimELzInM1X9xGV1QeG1SCTC5k/Ml6V8AMwUHSYtajJ20i+jKKWEWz/1iQdAAkaokFsoLhfW
 8/ZSkVzihBTQCSdMrifwTd2jfc1oFqw=
X-Proofpoint-ORIG-GUID: 5KgESDfKniU_Jx-we5FuoHcSSd5rvVZg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083704_180534_A157AF55 
X-CRM114-Status: GOOD (  11.68  )
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

Nord is a Qualcomm SoC with a DP-only display subsystem
(MDSS 12.1 / DPU 1499A) and two independent DP controllers
backed by eDP PHY.  The PHY uses a different register layout,
PLL/SSC coefficients and TX signal parameters compared to
all existing SoCs supported by the qcom-edp driver.

This series enables the display pipeline on Nord by adding
DT bindings for the MDSS, DP controller and eDP PHY, DPU
catalog and driver entries for MDSS and DP, and full eDP
PHY support.

Tested on Nord Ride SX board with one DPU. Both MDSS and
DP controllers probe cleanly and panels render correctly.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
Mahadevan P (6):
      dt-bindings: phy: qcom,edp-phy: Document Nord eDP PHY
      dt-bindings: display/msm: dp-controller: Document Nord DP
      dt-bindings: display/msm: Document Nord MDSS
      drm/msm/dpu: Add support for DPU 12.1 on Nord
      drm/msm: mdss: Add support for MDSS on Nord
      drm/msm/dp: Add support for DP controllers on Nord

Ritesh Kumar (11):
      phy: qcom: edp: Add Nord-specific register offsets
      phy: qcom: edp: Generalize power-on path to support per-SoC overrides
      phy: qcom: edp: Add Nord AUX channel and VCO divider configuration tables
      phy: qcom: edp: Add Nord voltage-swing and pre-emphasis tables
      phy: qcom: edp: Add Nord PHY power-on and reset state-machine callbacks
      phy: qcom: edp: Add Nord bias and clock buffer enable callback
      phy: qcom: edp: Add Nord spread-spectrum clocking configuration callback
      phy: qcom: edp: Add Nord PLL configuration callback
      phy: qcom: edp: Add Nord LDO, TX lane and TX resistor calibration callbacks
      phy: qcom: edp: Introduce Nord phy_ver_ops and phy_cfg descriptor
      phy: qcom: edp: Register qcom,nord-dp-phy OF compatible string

 .../bindings/display/msm/dp-controller.yaml        |   1 +
 .../bindings/display/msm/qcom,nord-mdss.yaml       |  98 ++++
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   1 +
 .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_1_nord.h  | 588 +++++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/dp/dp_display.c                |   7 +
 drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 416 ++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  |   3 +
 12 files changed, 1107 insertions(+), 13 deletions(-)
---
base-commit: 693de981a44b0e7e3b6a73f0b0bcbae9c8d068e6
change-id: 20260911-nord-drv-dt-d09b21f37ae9

Best regards,
--  
Nabige Aala <nabige.aala@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

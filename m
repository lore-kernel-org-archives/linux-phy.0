Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3699A1088E73
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 03:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LH8K89rXWIMrY55J99+1H03Oxcz01XMcinyEBBjrNc4=; b=s85VqmMwZZJUXZ
	m26D2MGY7P01ofAnuvH3Gz5F1enE8DAp4fX+LvwyJ8Soi8xyl+Pgh19dKI89+W6KHpBRxEQs5x+BJ
	olxzdvbeSxn+xahrds3hxS5sLkx+a8UYPl1deQEwYGdbbhVq47Q1ck/Y9dC53uK5Ew8Fd3p+1FAD6
	2AlQFgDbvGikdjV7vHv8JwdAWGEsapi9uZL8BwrmBzXMw/FQ9Tm+KxbOa4hEL5HtEYhlFb62BcW9t
	XOQ96lsPeE8cl5lCY3p2v6URbj/xPqUpDs0SDg8IgloW077GbDou7GQtGRrpR3rTE+iT6JKdP1o8q
	bWy3ky44pJ+nT9ZpYsWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w34N0-00000009r0B-3FuL;
	Thu, 19 Mar 2026 03:48:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w34My-00000009qzR-0etZ
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 03:48:25 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J3A69d3228017
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 03:48:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=JX6V7P6bsRPeotKtiH7RJ9
	N7+4pq9ewOSYm/l2L69q8=; b=QKdWofywVfC8mLqUB1djykNVRCqNJ4ytFYOYsG
	/KtKWI5O+WHdjewmYRcN8l2ftdjgz2OcQgkoZFO4ZV6dzlsTLA6BiQ0+/Ie1ZIyA
	1QC3UnyJdguaRDBn42y8Og9AzfxsxIVaE1oNbtydb0XDq7Yjxyi3zCKi3wUWESfg
	kN9vkZjY2zCNRoFk7F9jLdq+HnNW385cWuZTXaOiGd0JZCWs9Luy3M5ZcYOwMHot
	8nD7/BJuwXG3GhO4Ds72zomPIh4nmIyUJzqxlXPSorNSTWPfYLh4Cwo2x1P956Am
	Rx2pi0zE2MABMqJbgKTRvNOk7r98BNNeWRdU28eVB3rk6Y4w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00eg9n5k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 03:48:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50937cf66b5so71716101cf.3
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 20:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773892102; x=1774496902; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JX6V7P6bsRPeotKtiH7RJ9N7+4pq9ewOSYm/l2L69q8=;
        b=RMvMsJbukUPoYCq/zw9xWChb5G3QBdTisx+1C/y9P+CKNr1OQmpqb1UB5YWTdS86cv
         lXTLjJTS3Cjsyx7mroIyNzkNKipGHve1uVPN8qsdy3s8jHytXANs610yfZ2f3bfcpjfo
         edlZf3fgqGRhJEf/hFL1f4JUNm4u50srBNhz1s200gvc93IXo/vkGeQ5CqKUi+3+RNLm
         a99YJigjWYt678LLWj7Jbu+pHIJ9TSyhmag1bkKUkbxVi2jrb9FcmrRGBohApKa9WiBn
         TZD14wob/6pMQR/lDbD25ug7j8FKueB/BbXViDtyIV1w3AC/rqmnGNV9CJKUTYWnptfu
         h3xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892102; x=1774496902;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JX6V7P6bsRPeotKtiH7RJ9N7+4pq9ewOSYm/l2L69q8=;
        b=EWVJKA+8kGBsAk77QevA4T48MhcOgFXwsaGzz8VTJN9y1iUhBWmPP6JVvq1mST0+nm
         d9hdipU/sUX0Zyz+2oOrh0q30MzJ+x0x+OqBOR11D3ybnSw3+uXtYJbRR3Lw2ms1pblZ
         n9ItTSeB92goQQLvOzMyxDXZUNVOyH3o/SKRHalxsxKhEJKCzdPS/UNE9qVIGuftpvd1
         2IHCzHGzuCb9fMUrGRp6KKjVGxbrVn8mmm6kC8gbXNCmIuSSg3YiqwDMaQ7r0o5Qmyw6
         FJhoxV24H+Pf5XNP5J1hwQ/Kpjk8YWIBQoTut9r23g89UZW9a4qCY47NH6HbtgJ6bf6c
         WLoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnprsk14nKF/pwBgqKiIu6iPvKSg0jJN2AsemRBfs9xQJm8YPPbkKTG6ZSnreufuJpxnDVHRCkyRA=@lists.infradead.org
X-Gm-Message-State: AOJu0YypH4I2X9SGxdO/p6QZFcF5UkUWEOtK0aZ9z8MJw7lP0NHqoJEA
	xAN8yLx9CqGau/xzgPS8Unyw2Kgw1GOQ7PpNjEF3pfkM3d8E0XB+PhdFyP/pt+kWbZV0vW/z5YW
	/yD6OccnCFG/eCW6/4Ga8k1nJEOk5cw4Kf5QpK12bmxuDsfdEvoHKzq0QSKpGXBAONVHa
X-Gm-Gg: ATEYQzyMCeRH2IZstl0o2piScBsbacbjsFubymyanNe+VPwkAB6IWR4kAEug8+WGHNf
	CFzrDH4eOCri9KCwTRYQ3vT9E0hSEb6DZ7CmHW72ZrYJkJ3ulHQ5/v6CTSXimAHnfFG08nclnzR
	2zyDVr5xLEhkt5OB5DBBEysoNXbH3LAXfi2rmWcAOOH3UnHELS4WkOorpxG+SzdlrWYlYni0ooP
	n/K+0fK7Ey1PoFnKhrNPm47cbYr+PFVxxfZsiLrPoDNgXAD75hteOY8c+uiYNj3rTytS5vqbJJC
	enZci6D5iJ3HujI1dky1wdRtr3P62uR0n1qZQXmJfnqpmqDAUCD3o/llNCKIe+Q7/fEL/eljAEd
	pmAd5ydABP4y/YVEmntvD1ab02MfUXzp5NT5ZykwR6+ksbmcYpAUsUOUlKBoxaEh9zJAAJJMbr0
	ytLGo/GlhFR8cOZDogbNSUiUToPHyRpjYl6Tc=
X-Received: by 2002:ac8:7f04:0:b0:50b:2e8c:6ad8 with SMTP id d75a77b69052e-50b2e8c6cadmr226541cf.34.1773892101685;
        Wed, 18 Mar 2026 20:48:21 -0700 (PDT)
X-Received: by 2002:ac8:7f04:0:b0:50b:2e8c:6ad8 with SMTP id d75a77b69052e-50b2e8c6cadmr226291cf.34.1773892101202;
        Wed, 18 Mar 2026 20:48:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c79442sm907649e87.70.2026.03.18.20.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:48:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 0/4] drm/msm/hdmi & phy: use generic PHY framework
Date: Thu, 19 Mar 2026 05:48:17 +0200
Message-Id: <20260319-fd-hdmi-phy-v6-0-cefc08a55470@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAFyu2kC/23Oy2rDMBAF0F8JWldCo5etrvIfpQu9HInGViq5o
 ib43ysHsgh0M3AH7uHeUQ0lhYreT3dUQks15aUH9XZCLprlEnDyPSNGmaBANZ48jn5O+BY3LIQ
 dOejJOjeg3riVMKXfh/bx2fNU8ozXWIJ5GpxqNgKA4pQAg0GAxoC7t5aNWFO2Gr9yO1/TYkomu
 VwONqa65rI9NjZx4AclqWT0ZU4TuD+cNUZJZvwgz7lW8v1jri7PM+kHHauafBKKchCvhOyEHIE
 xE7Ty3P5D7Pv+BwRCMEM3AQAA
X-Change-ID: 20240109-fd-hdmi-phy-44b8319fbcc7
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4372;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=GjT8hX4GoLE57pLmBQAVyLUFHndk0TADrBaKx6V+sLU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpu3ICJCKy3A19oDDChvBzxx7B9r5GPU+ihItK3
 ZBilBRuiYmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabtyAgAKCRCLPIo+Aiko
 1VXFB/9LpajkYmQVIUq/d8ZFH142i2Gr/sXj5aitG99qq0vTEUO1esGql0jcvkWJvnYNPUoK1fk
 whb1q0odkeY4adRCYRXu6R5R6eXgsdMMeq9BQ1FpOHQhaW/Gn0A/hRNNFLMQGos/WnvTKXa1CDu
 72ISmg/zqatGwp/xsPYZ9HCCnk3BpPhTCC8itvG23j+XTc8UZkPWtPkCakjzmbjLaFRoG4RUCpR
 SXt4EgExHOw5PA/pTk+j4COVYr91kfPGmewrXnb7aVpK98cyzB9JpwewaIYu3NjRHo+NY8U32Su
 gw8MEdwvEqFIOE0nr3UeWEM9PFs1zGXH8uQOe6j0pX7K3r0N
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=MMNtWcZl c=1 sm=1 tr=0 ts=69bb7206 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=aG6DWvB8Nz23F0sxf60A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: v-qzwttZlVfVsYm6ycge83CFPznkbNTv
X-Proofpoint-GUID: v-qzwttZlVfVsYm6ycge83CFPznkbNTv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDAyNiBTYWx0ZWRfX1AmKIJzUXx/R
 LuS2l8ZEO4sGhjiPINg0BRop/kS3lTyOE7aDcyQj2XTIEEBcrVfr/uQDy2Si+fKMZcj8jEkyZMW
 kbqtqua9IaZSozmoc2D6CREBIi0KlHsUmc/xtuCiyn8a5LR7hHtU+CaVFwrN4gdvYCLZDOKRJDi
 h1f5Iwx0p37Ew66FPXq5X6bDFvv/IUDMJY1L6vxEG/VDp3bq7/2QAX7I5KdwzkqWyTF317O8h0v
 ZUBVbPN/0vIbrKkEC2j8zI5DjpJ1775eg31keVHXARJShS9zHMqjm/Jpmy8Fn/DFfqZ/CvupLyv
 5qm+eH/954x9h1T0ppNJlafDYZyO40mUfIrpRKFFdZvlDJxzYjVT69JlzrURQmhLM+U5r6gjkXc
 bFwDGCHdTNria9Q9pfnC0x1MFZ5JxbnKHbuC8sAlGXBt5eGlnGZi2G7cZon8uY3TOG9Kfd2Q0gd
 IDj5UXZw3yIFSHpU5XQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_02,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_204824_227912_617429B8 
X-CRM114-Status: GOOD (  16.92  )
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

The MSM HDMI PHYs have been using the ad-hoc approach / API instead of
using the generic API framework. Move MSM HDMI PHY drivers to
drivers/phy/qualcomm and rework them to use generic PHY framework. This
way all the QMP-related code is kept at the same place.
Also MSM8974 HDMI PHY, 28nm DSI PHY and apq8964 SATA PHY now can use
common helpers for the UNI PLL.

This also causes some design changes. Currently on MSM8996 the HDMI PLL
implements clock's set_rate(), while other HDMI PHY drivers used the
ad-hoc PHY API for setting the PLL rate (this includes in-tree MSM8960
driver and posted, but not merged, MSM8974 driver). This might result in
the PLL being set to one rate, while the rest of the PHY being tuned to
work at another rate. Adopt the latter idea and always use
phy_configure() to tune the PHY and set the PLL rate.

Merge strategy: cross-tree merge via the immutable tag.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v6:
- Changed MSM8974 HDMI PHY driver to use FIELD_PREP / FIELD_GET (Konrad)
- Fixed rate recalculation for MSM8974 HDMI PHY (Konrad)
- Dropped register read/write wrappers
- Link to v5: https://lore.kernel.org/r/20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com

Changes in v5:
- Kept only a single place which handles extp clk (after PHY power on,
  before PHY power off) (Neil)
- Inlined pm_runtime calls in the HDMI TX driver, replaced
  pm_runtime_resume_and_get() with pm_runtime_get_sync(), since
  atomic_pre_enable() can not fail.
- Renamed registers defines to drop the REG_ prefix.
- Link to v4: https://lore.kernel.org/r/20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com

Changes in v3-v4:
- Rebased on top of linux-next, solving conflicts
- Squashed add-and-remove patches into a single git mv patch
- Dropped HDMI PHY header patch (merged upstream)

Changes in v2:
- Changed msm8960 / apq8064 to calculate register data instead of using
  fixed tables. This extends the list of supported modes.
  (Implementation is based on mdss-hdmi-pll-28lpm.c from msm-4.14).

- Fixed the reprogramming of PLL rate on apq8064.

- Merged all non-QMP HDMI PHY drivers into a common PHY_QCOM_HDMI
  driver (suggested by Rob Clark)

---
Dmitry Baryshkov (4):
      drm/msm/hdmi: switch to generic PHY subsystem
      phy: qcom: apq8064-sata: extract UNI PLL register defines
      phy: qcom-uniphy: add more registers from display PHYs
      phy: qualcomm: add MSM8974 HDMI PHY support

 drivers/gpu/drm/msm/Makefile                     |   7 -
 drivers/gpu/drm/msm/hdmi/hdmi.c                  |  58 +-
 drivers/gpu/drm/msm/hdmi/hdmi.h                  |  80 +--
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c           |  80 ++-
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c              | 225 -------
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c         |  51 --
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c         | 761 ----------------------
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c         | 765 -----------------------
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c         | 141 -----
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c         |  44 --
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c         | 460 --------------
 drivers/gpu/drm/msm/registers/display/hdmi.xml   | 537 ----------------
 drivers/phy/qualcomm/Kconfig                     |  24 +
 drivers/phy/qualcomm/Makefile                    |  14 +
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c     |  23 +-
 drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c       | 352 +++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c       | 462 ++++++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c        | 186 ++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c      | 212 +++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h      |  59 ++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c    | 185 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c | 443 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8998.c | 496 +++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h         |  77 +++
 drivers/phy/qualcomm/phy-qcom-uniphy.h           |  74 +++
 25 files changed, 2628 insertions(+), 3188 deletions(-)
---
base-commit: 95bcfacccdad8a76e02a8eaa92baaf09c879877e
change-id: 20240109-fd-hdmi-phy-44b8319fbcc7

Best regards,
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

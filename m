Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9000C54E71
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 20:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/P8uX87cUQoqEeLwqpHJ5ly7icS2PPiDp8H2oRDBG9c=; b=QDvUH7+86iwToK
	SaO4AaFztQm+F76cZ07XTNmGHBPzTOO58RdGyc/lmvj4KXzuSqRYNizXIUMvUDKGZNokIg4g6HxVc
	+uIHyk9v2sPBuoHVIN9le1b68mIfaZze9FtV4uE53Tg89LdIYZJhTmscGmI9CMm1/eIuXZl6L89rm
	u5ciNqeLOKCM4Dxk60cME7raZwiobI0FSJe6ZhJFiXgyQ7TJnXy/sFJvoJ9O8wwR6dS6ECiK2y8Yi
	wE7cEioO9vocjcwUTvA2bUsXj9vCMqkvt48mL0pkfcu9vyjbngHORp85wF0thYJeqIbrV7/oisk7q
	nb2ySuLfOinY64RCCkkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHTqU-0000000E6yo-1BNp;
	Tue, 20 May 2025 20:45:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHTpX-0000000E6af-0BhN
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 20:44:56 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGdmH3027933
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 20:44:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=CnhEAhcJpQDgCGDvh46RTj
	Mj70tEmGh9F2KinGlWxFc=; b=ludPCjVpTFJkbjufdT8J1F5lvW9Xegoi+XLqb7
	CV10DQlYvLak/aB54M3Xx4I/38nSwr79c6um/ULPMTgVAbAyEqorClVstrXC58lD
	2pSoT6aSt5jbt8niKXpxSjWIbyuTlvqGftylKQO+6Ytae/vcYxpPF0N7oZeaJwW5
	v06dQdkYBcEy6JtrwI7jQYmNGxcSRdG253VOpab85aghNjttOpZ+bvT4vkOG4WeE
	T9lRx4uzMCPN+9nfio3ToGS5Oz4X19egzL/kkd8R55LA1Ahmi6bVrNK6UeDRQmYv
	2ghM2FQ/nsTPJo/mur7GmuKSe8qst7eY1f6XGfXafCNsX0Fg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf40ktq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 20:44:53 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8aaba2f62so113452836d6.1
        for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 13:44:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747773892; x=1748378692;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CnhEAhcJpQDgCGDvh46RTjMj70tEmGh9F2KinGlWxFc=;
        b=SE4LLDhiEuWQeGJ9f1cxA9I6DnkBCg78keeUH6Qa3oiyGUN1a4od0yynvrLYGwzdmj
         noTnPocX2tzRJ2iJTTdB//JEb1eNlu4cs+CoYXsHMaRWyRd04rGv9xmm7SG9sALmKcoe
         FCfUrzJ9gT8nvfK1CZY9am3J6KL5a0FP7Yn+Vu/BqnVPqOtQjc5YKQebIT+MaeYmSQb+
         2DrHg7zRIIT2f4W3/IZye3uapl7bgH5dAG8UfbEMVcC9JycX541ygZJ7EVGPV/wLhqMc
         97s/u+DscNmzWK3FfxjBHx9u3qgrRuam/3beaIdL89KylQ4NQFwV6ggGxo3fOhVqMui2
         H5+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVIX9/CrV7dX8NyUUhVCw5QV7U3QNJDTOR16aDYXUc0cImVBSPcqkZLHp+gab5ryeL0KXDH62JTn9w=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXmnHFeePgP+uXRtjG9iU4JZt0x2S0EmAz9/LwVeuw9KGmfDhq
	6h7WFkirb4L1PrkC2vQAQ4LrHgMEnX2XBVUFS8969uD8cuvgvg/nKybFJUZ/RviSbNbXFiHdC8h
	88aIuc8FVNRvpzDzaSzVwhEisYA2ohDyJ6u6pHI2M1V4mW3tagFBU8K7EBfP6rpNtleBWLbYoZx
	UL7c8=
X-Gm-Gg: ASbGncvDlc6Upc9Grgx2TEYCg9Ns/hAAioLhN3Z9RA0wn0VZb/uKi5nxsAjOzCw/jsu
	Y/HJp18BGNw0RivucU7g2sWBnjkQK0tLqLxnG3znzVsgPv4rnS1vvNxmE7ZeVDZc+FeE5AB5VUc
	yxUhenqpCBOha0ctL55jHCTaWvBiIPHEwYMkl7jpLCL69ZUtM7lO0FvKgONAqAG690vxkd3Ns9B
	H9OMInBVjSIaY6+knxRuH7bMwDuzIgswBirR16WoxBGkqcB1nKI4fXIt6WI9FtyEFdnTR4ylh82
	Z3QGKS90w5BI18S1rTPcM3r5nmYFd2NZbJQ6KG5jZRtlgp/nNckq6mscEBBYuc/SQ7WOwkKKJR7
	p+jZKF3hQfsKXhb7SyxVf4UDG
X-Received: by 2002:ad4:5c49:0:b0:6f8:d920:6962 with SMTP id 6a1803df08f44-6f8d9206bd4mr119468156d6.14.1747773891728;
        Tue, 20 May 2025 13:44:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGfp+ypX9kSBxgzbkN+MgSu5aIfQQmM0ZkghxJplqrv3tEo+2xeiuUHFeyxXpUk9ezuAwdhA==
X-Received: by 2002:ad4:5c49:0:b0:6f8:d920:6962 with SMTP id 6a1803df08f44-6f8d9206bd4mr119467926d6.14.1747773891241;
        Tue, 20 May 2025 13:44:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f163ccsm2497950e87.39.2025.05.20.13.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 13:44:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v4 0/5] drm/msm/hdmi & phy: use generic PHY framework
Date: Tue, 20 May 2025 23:44:42 +0300
Message-Id: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALrpLGgC/zXMQQqDMBBA0avIrDuSiaGarnqP0kWiiQmtRiYiF
 fHuDYUu3+L/A7Lj6DLcqgPYbTHHNBeoSwV9MPPoMA7FIIVUgoRGP2AYpohL2FEp2zWkve37Fkq
 xsPPx87s9nsWe04RrYGf+j0Zo2RHRtRE1SWoVaSQsv5X32hrec3il7f6Os+FUJx7hPL/eOzUUp
 AAAAA==
X-Change-ID: 20240109-fd-hdmi-phy-44b8319fbcc7
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3665;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=PA+tCKwTo1nH+Lso+Uwg7CdiMtEk2emhO7vsfJ9adLI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoLOnABXk81kaZokLdiRD1RUNWGemqA1YFMLllF
 8hqIxr9ewCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaCzpwAAKCRCLPIo+Aiko
 1XGYB/9dPRhf86STXfF/uE1qb1TGI/f4ZSLGsiECHc/89fO5BSSm418umoc5AOiIwXGAm3B6JjO
 mOZvsLU1z7MspwYTdtlCgg5TILBd8hjF9c/gXk88g4U458MGK0DeKV16vwmp03DrehbbmQd4qpe
 BMJ4d+AMsSm2q7iAbSi5pllmP4dpciCdUalImp2CsoOsDRcI2WQ8oC5fDK/YLPZMn3dn4QXGY0M
 nj/elZWzy8TZq7iqunmFG0oeOVPvDmhxHCNmPImrcobEXvWetj7qdNPqUwjk29WEi1sFmc2shBY
 nLtLpx8bcdlN5XTSymqHtEW6JSeWIUBLGDp2nJoZihXt75UA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2OCBTYWx0ZWRfX4IuVkzpLZ0HH
 irfAb/0w1RUbiYuVeJ9JGvWj8JuAgAOTd1vkvNRT6o+Iehfuu9dcJMH5apK+LHMu3W1kEeyN/de
 WOMlA+camK7o3Sd3T9d9S9hWfY0iA/ramyhjdseMYXerJsBWTN1LxSw5LGSZyidnd/9fBsyrmT2
 xuR8pfszQXQ+sAfm73Wm4hSj1mTdGz7KEDahjjEcye+O4pKQbfD5O+QSkPgn2UfrOIXbPUsDeNP
 AxsaD6DOJULz19eB/XagAq2xRZBE2PV+kKi3bhrfDoAedBRGgJjFy+0wf2TSfaFb5HSuy7Sa+KG
 hGFzRKbLep8zS+rjioJJI1+LISiCdod3KY0ywwK6B+7iEF1gwjZxnff3fF+tp9gZTfK51YHXNiI
 0u/rAtxcw+T9vZC4Cp3cKTh8AfI34Dg6il1TpMpmvdt4C6GDiH52gGUqxAKSe9r9OpcJTMdE
X-Proofpoint-GUID: LUtmPCMzElrLHG2l1n3aSgKFnfeHkQyI
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=682ce9c5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=I5G884IeurQlcsuiieMA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: LUtmPCMzElrLHG2l1n3aSgKFnfeHkQyI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505200168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_134455_101167_E665203B 
X-CRM114-Status: GOOD (  15.22  )
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

Changes since v2:
- Rebased on top of linux-next, solving conflicts
- Squashed add-and-remove patches into a single git mv patch
- Dropped HDMI PHY header patch (merged upstream)

Changes since v1:
- Changed msm8960 / apq8064 to calculate register data instead of using
  fixed tables. This extends the list of supported modes.
  (Implementation is based on mdss-hdmi-pll-28lpm.c from msm-4.14).

- Fixed the reprogramming of PLL rate on apq8064.

- Merged all non-QMP HDMI PHY drivers into a common PHY_QCOM_HDMI
  driver (suggested by Rob Clark)

---
Dmitry Baryshkov (5):
      drm/msm/hdmi: switch to generic PHY subsystem
      phy: qcom: apq8064-sata: extract UNI PLL register defines
      phy: qcom-uniphy: add more registers from display PHYs
      phy: qualcomm: add MSM8974 HDMI PHY support
      drm/msm/registers: drop HDMI PHY register definitions

 drivers/gpu/drm/msm/Makefile                     |   7 -
 drivers/gpu/drm/msm/hdmi/hdmi.c                  |  58 +-
 drivers/gpu/drm/msm/hdmi/hdmi.h                  |  80 +--
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c           |  32 +-
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c              | 225 -------
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c         |  51 --
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c         | 765 ----------------------
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c         | 769 -----------------------
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c         | 141 -----
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x74.c         |  44 --
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c         | 458 --------------
 drivers/gpu/drm/msm/registers/display/hdmi.xml   | 537 ----------------
 drivers/phy/qualcomm/Kconfig                     |  21 +
 drivers/phy/qualcomm/Makefile                    |  14 +
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c     |  23 +-
 drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c       | 330 ++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c       | 441 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c        | 186 ++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c      | 212 +++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h      |  81 +++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c    | 185 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c | 442 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8998.c | 495 +++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h         |  77 +++
 drivers/phy/qualcomm/phy-qcom-uniphy.h           |  65 ++
 25 files changed, 2584 insertions(+), 3155 deletions(-)
---
base-commit: a0fd124020ae02815905d4c6808261bfd262ac08
change-id: 20240109-fd-hdmi-phy-44b8319fbcc7

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

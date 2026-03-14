Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C82E9FD88ED
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XtC6AHok/9b3wv9p5/5pryrJWqOH3PsWO1Gku++/r9w=; b=Saj29fZ8R90Ab0
	JNTvKULEdL6fjlrbu//ZBq0qzDN1mw0vPwB6gWJSwvCFWd7KrhTcz+86fnzALedBrA6AopvHQtY91
	+AWKXxtkz1w6QKlU2aQPtFBvUMF9bheJnkW9nhVWp83TO9T8NZqwqtULBJ8wwIWrkm2lGnWuK7oMX
	qkqWgI1BU4GHWfDvcJ5fhgXgJuzON4l8dTTblVotEkIzJWNRQ+5mqUQ1xs5EYR/wH0nrThWPxmz12
	GMJe3G0LyqmtMAG5gZOfqTHs+A8B5BxoXHu5AtrnffxMlvAL7DbFLsNEBH36QEKjPfusA0zHuZwo+
	MEqLvT0A2pI+KTRv2Dog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HCx-00000001VBJ-2Usm;
	Sat, 14 Mar 2026 05:06:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HCu-00000001VAy-1qiB
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:06:37 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3ndco677410
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:06:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=uRmdk1ifzAXT+4aK/1/vkT
	qfkWelFGrIyVShhIr/5Zk=; b=mtx/wY2YYEb+n1VBg+RmNyAfervdRuoBNqnAnD
	48+EdTZZYYFC9t5NP44WzumeAjiK5jqA22GNInBE0v/vKKeBRRT463mQ27de38eX
	Iai8WXBlcUu6rfyykzfj809lhR4KgkU2rpniNAYKBvGp4rlPrEiBbB3zVTGPKGty
	yZ6sYUVhKEA+VsnbeurFLCu2/a6cv4ukksYDPS1TaCjHq1rA1U35mjrhx2/tx5NL
	jlCqs42BPUFhpvl6fCd7L8DaxKazmrdLw9I4CVMOqQiKfhPIk9xqBnogeLIpeuY/
	Z4/QKfXWYyTVzzVedZfNVxYUKhtcWRtYSzf+2jEZ2vUph2wA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03xg3r5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:06:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-509162597f9so221837941cf.2
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773464794; x=1774069594; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uRmdk1ifzAXT+4aK/1/vkTqfkWelFGrIyVShhIr/5Zk=;
        b=bJVMFF1epRwJaojmU63CZNAqPKE+xb/IwVoZP+OIrypJj+v7IV4ZXWxIXUHvTay5XF
         UiRHdourwYRS/XyQjuNnhxtLaYFMHnoc/MWDifKoOKWeoJUsAXN95Ns0r4PQZn14X/gF
         2krdZG4PJ2tuG6o8USMxXdlKCrXIJnQCaXkRJulPuZ9eDyOYn7QmHGmKVGsZTyFxCzgj
         mCxxsy+2FvqACE6chKvyS7fIciK3/66G5jTuRuObm8hxoTWYfIb2K6/1mYY0KxItdk2u
         U9a5o8LSU4onRGhtHvLYRs8IS/wa3isrG6vNKw7YRkyEvx/Om3lZvzzEYKDX5sL8rQd1
         gtRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773464794; x=1774069594;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRmdk1ifzAXT+4aK/1/vkTqfkWelFGrIyVShhIr/5Zk=;
        b=LLABHMBGB6ON8kquVJQ61+U1PkR68JS7LP3Xc5kHWc4xU2ngCxhFCR+qtpm9DtjyTH
         KgZ9R8MTzF9qQe2NYO9SB2to3vtfUjd23nysOfW41VTNIF6SqocHzmNmhA6VksGZ/Hdd
         Y2XDotDG4N15vj97zvmj2C3KMWXxqWRqzmpOphU+zkOWjWUR7wLeBaOJGNVn09VIHJ6O
         u0tdVNgxS1Y0EXYTmodvM/w3JI72PtaZwyovME6DQG6oH12aXduLs/UXzsPH2XQDPjiu
         XheL1VMJSxqvDVI7/ovv985Pq7QN9swDvoBYSmXvynq1KV+5CXbreXgETy2hzY5XUeGv
         TC1A==
X-Forwarded-Encrypted: i=1; AJvYcCWeL5Aqk8wvwH+mw9zs05LGg69teoepVauIuz7WCLxcYLJbHGEwqVRlCJOZhFykhgSNEOp4j63icws=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4fM9bgZhnSz/r57mNxC2W9ckSUPBhBSQ8ygm0ncoam9JuY6T+
	J+lRIPsInKCyOvGFyS1L0Qn+uvz9g039xyj1AvbHqsFx8rm9dd+1el3cWhHjzIIvfoVI8TYiz9c
	JqsiFvYTFbFusWtwql7LhMn7H4qZTjF0MsgL0+FDud1JBQEjiSKDUGgPYmE7UpFbH8YIh
X-Gm-Gg: ATEYQzxtSacIOSQbMnERmwa8n5BgBYPrc8FK1Jg3q+ypWUvzuo/kxuetd0dXIQgDHgL
	gi1LrX2VeYqlr4CCr2xyjaa33si4zoqrmGfx740Z4khw32RL3M0twALo849WjCIl9rPDJnpVYw+
	YmSq5Q5XIgXHw2Qsw3YEr4OcP0PAjbRcSX+PeImMCNG3D9hf8B5JMtIycuLt175sIV76NWyE8H6
	ypJ3uedB6shSacswSnMZ/PokJAjE34zikpEry9LeX+j+iHQXY5clfBlU6CR6KPdnV4uG3JRuw0n
	385nz1PFvUNmA1zB67y8t/F4p4u6k/ILxvdc9UlrslQEs5crF8YMGWMQl6NGztT6xcTswTcNcMC
	5rHUG4dr8Qj+2K6VZhKotK2oEOyZgxaDsjne0DuE2+8Oo75DXPMt3LR2LQagwFUvXCdYgrJn1Re
	ffFp7BcpcGboUnvrSbMV+9zsVwFThZRC2L144=
X-Received: by 2002:ac8:5a87:0:b0:509:1b01:8929 with SMTP id d75a77b69052e-50957cf5250mr79097481cf.3.1773464794308;
        Fri, 13 Mar 2026 22:06:34 -0700 (PDT)
X-Received: by 2002:ac8:5a87:0:b0:509:1b01:8929 with SMTP id d75a77b69052e-50957cf5250mr79097241cf.3.1773464793816;
        Fri, 13 Mar 2026 22:06:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15636206bsm1982771e87.67.2026.03.13.22.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:06:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v5 0/4] drm/msm/hdmi & phy: use generic PHY framework
Date: Sat, 14 Mar 2026 07:06:18 +0200
Message-Id: <20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMrstGkC/1XOQQ6CMBAF0KuYrp2mU1oQV97DuCil2EahOkUiM
 dzdQuLCzSR/kv/yPyw5Ci6x4+7DyE0hhTjkoPc7Zr0Zrg5CmzOTQiqBooauBd/2AR5+BqWaQ4F
 111hbsdx4kOvCe9POl5w7ij2Mnpz5GYWo5QERy0JwlFgprAEheyPNvDE0J3+L0+keBkORR7qur
 A9pjDRvGye14iulhZbib86kID9sY0yppWkrfYop8efL3G3se54PuyzL8gU6+GMi9AAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4083;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=dpVL6xHiAyTcRZvdVTUxyACDfNacks8+MDrD7qZtgII=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBptOzVFzbufK/Pv/ssbcuMRW6VJ3TLt05H6aH7U
 W/uoIwvBW6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabTs1QAKCRCLPIo+Aiko
 1Zd0B/0WSzvf4ZiWaezOqFchqErUFw8lThh2cUGjBEL1kB7F1c1TwENIyYeltHt9bglOH5j+Zos
 kpr6aLYMOpgP0eYEmhl8WAriX+woGYntlzeVYxmD66mlIvnCMqdmRMaCftjg5KH/KdzPJXUDRsx
 cyy7ixuVv20jpLMabU4iprDhO80cZKMC9Le8U3lbGLtrzjl6xU0tClreKVuzgaukADmvkw4VRyI
 7sX5IKeRs3vxtfgTeefva/zDDsFPBtwYj5q9Y+LWHXybWjvpU+GQNafnJhPWdCoKlsfrDmSes7n
 T6aNwNuhSwhIvzh6XqV3IxsJiAvzVXKSajYmUCheiXRrWF0y
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzNyBTYWx0ZWRfXzB6eMMG4JY6e
 2D+jpuFGloOvjmvWtxHP08Q3dQUOlQbKW4sj4Cf8h+FkyIb29nDSNX6eiv5rjLuDnez7iy6VmzM
 OFYPuL8tY1m93pbJVdWT100ptl6aOY3OAQDw3vopf5FJnZWDy9ZQzN51rNV6tk19UaScFp5f7nl
 C90kwVcgAvVIanOhbd33H47r+/oxRPKnszlL6EXS4j7NfwU0gLqYii+asauQ5P/X1zNRiDGp2d0
 X1U9O9Tyj9FBkXlVbH5zdgQzIrpkPO3QoMnqWrRopnicY1Z2QcwVkO6+DnusCGQlFowJ4yWqaCl
 GeovmjU2NuGufIxA1XYIE+eNsZkZ/J2U/XyS6DoDJPvVGiCRrqGMbB/hZX3hREhhji3fjbUYNNm
 R+bHxzWHm/7Vf7oj+7efyY/1NSb0reKN//GCSoHP3J7lPuY82aeQfjCi5qs+omthlyIe8zvHDqE
 u6P674caLyhOS4FpdKA==
X-Authority-Analysis: v=2.4 cv=YLOSCBGx c=1 sm=1 tr=0 ts=69b4ecdb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=sCsn4_Ng67BVsxP_3UQA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: l6I44ZK3gcruGiHfttbkedfN-bFalKF8
X-Proofpoint-GUID: l6I44ZK3gcruGiHfttbkedfN-bFalKF8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_220636_611129_B671A8E5 
X-CRM114-Status: GOOD (  15.20  )
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
 drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c       | 332 ++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c       | 444 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c        | 186 ++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c      | 212 +++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h      |  81 +++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c    | 185 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c | 443 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8998.c | 496 +++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h         |  77 +++
 drivers/phy/qualcomm/phy-qcom-uniphy.h           |  65 ++
 25 files changed, 2603 insertions(+), 3188 deletions(-)
---
base-commit: 6d67f372c3bb68e62b609d0929808c9567df7209
change-id: 20240109-fd-hdmi-phy-44b8319fbcc7

Best regards,
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

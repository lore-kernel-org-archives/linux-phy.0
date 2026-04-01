Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB772FF4937
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 03:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o68LK7Kj8uKZYy8wCKCoJTqzDAyR1pbKhhI1GFPDhtQ=; b=itvxq202YuLPwk
	Ux1vS7JtO0WajoF2koUTXp1s+KMxOOHs9M6m8Of15FUzDgcOx8SGkGNvIdyfsIPc+QjsL/zYl3EXL
	oH9xl7+X0TyH47JhUYOpr132YCLuCkSNZkiQ32ckZQSDbcgxG6uYY/VblwziDMZ//V6SW9p8ekbo3
	WDAZpXwK6x0eSBisuUgpjpPxxKFpS8UOx9fg1MjefunUgZDfgm2ge7u9ymPTlXsqmtglWcOvStvbN
	ell8tUdmqb2yCWX1NNus34a7JQIUcW+luM4a6p1WKNn0axD/0UIyjguSNBZrcjvXgiJNb6JvupnZv
	nJl43q0QJRZW39E8zStQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7mQ1-0000000DuYd-1uoM;
	Wed, 01 Apr 2026 03:39:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7mPy-0000000DuXr-0xAN
	for linux-phy@lists.infradead.org;
	Wed, 01 Apr 2026 03:38:59 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62VMSeT51831813
	for <linux-phy@lists.infradead.org>; Wed, 1 Apr 2026 03:38:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2kLHLuUfXgHXpsnoBEtKL3
	EbLPGLR7YyXYBSSpUL4Y8=; b=KIajPlXaOqbrPumBeZFSb1bDHNe3AUdj7ar/hK
	2HuAw/O3irC7TMfxmt5HIm/KvsRIju7HS+4BM/LHD9wQ5kVVjoPePn3puuDzIyzm
	eeE5xegfWf9I1Pz3NQH4ldu8Zs4WHgLqEdu5SIL30EfeEez0AHZw2RBfE2dJSj0w
	Z75daWoL33yRBW5tvOs9ATtxLNOIzX6Ob6lwX/pZ2KzzEpyq39hDrC9PfBg0DfmD
	P9Umtn+cBfMCLnmzIh8VmibWUEGjmnZkdx2puW+OI83lYw342D9lZ42ECoIJYsCd
	/KA5PZiD52Lieba80Ligh75cmDUxCrcna9VMK6fi/Aj9JLqA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d8equbpeb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Apr 2026 03:38:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50911c94db1so157335721cf.0
        for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 20:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775014736; x=1775619536; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2kLHLuUfXgHXpsnoBEtKL3EbLPGLR7YyXYBSSpUL4Y8=;
        b=htwEGnIIQpSPk4r8RQ+BOqzxlgF0z3u3FAXkmhcymNnWCxfxtxrOWs+HHcQJlwfLto
         UjofnweRjp0MCZsTvAbXx+hFeDjoTInfYnqhrksvdD2tAVb1bckGV9y4fLSVmfoyPC6T
         AwU+2sAQ/jAUE6ksYo7weaEpyQYfIgwpNfxlxSpdFMhj2KpnFRvOb/UJvfER2XGpc0nM
         z5Z0FfKfi4cGmzBzlWxb35FCjeZ1VttHkYY3JEz917+ff2E5kDSeuZeJkQBY6nr1aMfx
         G+WTmlabzSKUutNqfGsQH1PZVjZsQLvOn6DENHds4Pwz9I6bPOndhULtpH/FWT7MjcLG
         IQAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775014736; x=1775619536;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2kLHLuUfXgHXpsnoBEtKL3EbLPGLR7YyXYBSSpUL4Y8=;
        b=TBjBuGnMIV1Oi/TnJzjjhcQPAeA4OExyFAU7dRHpHOcAvZ8hUoqUxn7xnaqLsVCGKW
         5DMWYyrLONPI8zQopv547MDqrUp21i+J0sBTC9Emnura79fgEayDkEszZqRkumBZp920
         vFSD2Ead7i2of3We2B+jPHPlZqTfgke4Akci7hotulO2l6H5QESlcr/yeLuElqva7+Cp
         x3+udFKCZFK2dQKzUyBxWaGTPf3GTZhh7dTt95LneIV8p7I3Q9EoOAfRA48B8rZxSXyS
         Yz8w7b5Olih7XnQNwLVfjnI3UolwRL8F1hxNrj0Yfnec97gMOt9zgq5I5jgbnbiGRyV5
         BsQw==
X-Forwarded-Encrypted: i=1; AJvYcCVdOIyjBIbsKz1qRkRqTeZQYxP/OFWLs0POd0jZr34lei9NY0t5+mrzzr0VCTrW85XMW8I2VTRMV58=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIsdS8sXLl52kdZiVgjIyVuJFl2sAXv9eTytf/SENvrntvPDt1
	m7G6CvPgdfF3Dq79fVuuqbJ4EzpjJMBlO8iJ7zbfFMl+vyEaIRcuwcQzeqj93bjOiJwpjLldvyf
	OAxIcD8IL56CCicqf5cMwdZGYmM8d3iqQxHcPBlxE0h0BBCHKqH/yiqvL0kkeTxGt0v0O
X-Gm-Gg: ATEYQzxItHa0DR/fhdp1pbr8WHEQg0rql6o9/JdrFQkFNmXmcmRItcfEpwvcPi0Ezo0
	Lw7OstCCcW9eM0q81I8PiuE6ARfIGt5+C0/Id/x32D2UynYJFZzKWhI/NHPHVGrMnL4zmZlSfbV
	UXWBebVqoTA8DHD6EJUMZzh+l8JWHUleSZ03L82AEjtrKNXCVgw50gWirsMu7jWXJD0M8mXnpMe
	Rteq8kIVyZ6t6FPvrB0z18CcrNjIphmK9GveARkQ7ydLQPDNh8lVP0mnITGJEQxlj1cO6fIWs5Q
	NDZM5dtZITKbARSS0JVWOuAbK82NS/NJ0J/SS8uOG6uUpn8x2QERSclwZJibx44W8R0Sm6f+NG0
	ZPWFSeiKaUxRO66Ckk2kfHv29FPfRMy1bmvd/wbQaU7+OmUw9+h9wAXez3GZfYhZSnEInWtUKmy
	u8HbAzEvQSgMnMc6R/rZ4uo708A08wiZRhGKU=
X-Received: by 2002:a05:622a:124f:b0:50b:352d:6b5c with SMTP id d75a77b69052e-50d3bdbc16emr28859441cf.64.1775014736436;
        Tue, 31 Mar 2026 20:38:56 -0700 (PDT)
X-Received: by 2002:a05:622a:124f:b0:50b:352d:6b5c with SMTP id d75a77b69052e-50d3bdbc16emr28859141cf.64.1775014735943;
        Tue, 31 Mar 2026 20:38:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38c83730f7csm24404851fa.16.2026.03.31.20.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 20:38:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v8 0/4] drm/msm/hdmi & phy: use generic PHY framework
Date: Wed, 01 Apr 2026 06:38:45 +0300
Message-Id: <20260401-fd-hdmi-phy-v8-0-51b0e98edf6c@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEWTzGkC/3XQy2rDMBAF0F8JWldGb8lZ5T9KF3o5Eo2tVHJFT
 fC/Vw4E4tJsBu7AHC5zA8Xn6As4Hm4g+xpLTFML6u0AbNDT2cPoWgYEEYYw6uHgYHBjhNewQMa
 MorgfjLUStItr9kP8uWvvHy0POY1wDtnrh0FRTxTGWFDUYYIlwz3EsHlzXjqj81LCZ6qnS5x0T
 l3K540NscwpL/eOlW34RnHECdrVqQy2hTVaC060k/yUSum+vvXFpnHs2gBbq8ofhEAUsz3BG8E
 VJkT7XjhqXhDimdg/pYpGWD9YpDTnTKIXhHwiyJ8WshGGYee8cooa9Q+xrusvdkUgj70BAAA=
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=5065;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=S7FOJT4ts1TJI/oFCfRdpPixtPPnf4IHzaUtEo2nS7M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpzJNLqjDU53LfSbxFzBYYoWsug4MURgItWCpMd
 B4klOZbf0SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCacyTSwAKCRCLPIo+Aiko
 1R5dCACzqqBGYmeUXNgyEYFHuAylviYldq0HtOXm/NeMZB4urlL5dJwY+4G/3FUC/j6yvI+M8Rv
 NdOoVotFKBamjaW41b9W536ZhWh7EP9VYPTo5hIbPL7UTWpSOhZIXZl7DMV+Fo5/r1WxieAfqxM
 lYi1N8U28SHxBPDLkkq+m4f+0PsiWHYRGHgC/BWaxlq3REgQ7GqKGlwwDgen0fq+9nnFVUIP/tQ
 gWo/gQrvpeLFBGd6U90tStkBTZQ8Xux+utWrKL3VWExMCZ5ANJ8jVJSI90KatraN1TYLr1Y+4Dm
 5QNUq3qUrc1BbvPs2XFUwSfwuEeU6Qlax3OkvMlMK9lMWYm8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAxMDAyNiBTYWx0ZWRfX6RFE5nlNc2IC
 nbHnbB7MAPn3ALQ1c1bg4PeTsDzg120t2cY/rMBvSCuojTLKBThN772lOMQxGp+tQbG/N7ph1cc
 UrXHE2pM4tGqsMxQ3cdeJAda0DSO/+0tziD44GQQ6RXmhopdcOAoYriElbyzEszYEoIjwfVJ3/L
 KzkojBcMqUy7UaAA8rdCubuQwNGOSqsRRpQ2PQKegwxb8mEFUq41UAWd0VPW8EvFw2c+w7TQDtN
 iTZaPb5W9sX1fia44KQg24Ct9kgt6Uiv7GorFNZod6cvY8qS911Jo+JEJq6QT3LLP7V9WKRpMdE
 60jQCFL2Cux9PKRUj7BaKtmqm5S8hlLtubg7VQkXfe6WailSXQGoAtMCVVd1PGoEjVu0h/qIj8P
 3aW0YSGVhKWsYW2C2/pCvWVp3ARDtWqXw2fVERpX/E9kBCCpMjECkW+YFVRg1Iov2ROUjhArIyV
 f8vua0nc5aphnl+LXAg==
X-Proofpoint-GUID: 8NpvqWAn7YsREeuIMXOok_H_lTKevXXA
X-Proofpoint-ORIG-GUID: 8NpvqWAn7YsREeuIMXOok_H_lTKevXXA
X-Authority-Analysis: v=2.4 cv=YMOSCBGx c=1 sm=1 tr=0 ts=69cc9351 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=aG6DWvB8Nz23F0sxf60A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-01_01,2026-03-31_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604010026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_203858_283446_6D0553E7 
X-CRM114-Status: GOOD (  17.64  )
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

Merge strategy: Merge the first patch (either through drm/msm or through
the PHY tree), merge the rest of the patches in the next cycle.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v8:
- Rebased on linux-next, fixing conflicts
- Added missing ids for APQ8084 and MSM8998 (Sashiko)
- Switched to pm_runtime_put() (Sashiko)
- Fixed several missed *1000 after pixclk -> tmds_char_rate conversion
  (Sashiko)
- Fixed several math overflows (Sashiko)
- Link to v7: https://patch.msgid.link/20260324-fd-hdmi-phy-v7-0-b41dde8d83b8@oss.qualcomm.com

Changes in v7:
- Fixed the build issue between msm8974 patches.
- Dropped even more writel / readl wrappers (now from QMP PHYs)
- Link to v6: https://lore.kernel.org/r/20260319-fd-hdmi-phy-v6-0-cefc08a55470@oss.qualcomm.com

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
 drivers/gpu/drm/msm/hdmi/hdmi.c                  |  59 +-
 drivers/gpu/drm/msm/hdmi/hdmi.h                  |  80 +--
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c           |  80 ++-
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c              | 226 -------
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
 drivers/phy/qualcomm/phy-qcom-hdmi-28hpm.c       | 353 +++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-28lpm.c       | 478 ++++++++++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-45nm.c        | 186 ++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.c      | 213 +++++++
 drivers/phy/qualcomm/phy-qcom-hdmi-preqmp.h      |  59 ++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-base.c    | 187 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c | 440 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8998.c | 489 +++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h         |  49 ++
 drivers/phy/qualcomm/phy-qcom-uniphy.h           |  74 +++
 25 files changed, 2611 insertions(+), 3189 deletions(-)
---
base-commit: d894dddf2a144f0e1d1cd7a8225c744dc906cdd5
change-id: 20240109-fd-hdmi-phy-44b8319fbcc7

Best regards,
--  
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

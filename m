Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 057F6CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/a38mg01MUpWw4/AfGzfG9KiGrY8i6izDvr8oKE+4Zo=; b=maWt7+sHcmmhtg
	DRoB9g6k7DPwhWePMYwT3Yk5D14gjA0y9rRGcVZt/yDrEzm8Vb1bfaGGYr7rH4PUuAOz5+7l6M8zs
	7YdJiRj8/FgRaf/vkfi14QaMbUZ/SRnYV6D5PaYbsHkzpTXFqv9iKJU36Ha23o7w5/sy4pVlDr9Fe
	RGduDmwhevw/nlJwzQQfNSyme7TBWBX19JTV8sXDxXPIeEDmITTVlUmYOCBji9ufwp6Lym3Gmnw0G
	sYDuHHR6Sdhuo97u/zGR83enEPumYBAPHUhytroeWFDDhx6jYYnpFMualKB2PMCTTum5ZYxExuqGf
	2z3XUxo/93p45Mc2/3LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG8w-0000000AaUV-2x2b;
	Mon, 12 Oct 2026 13:32:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG8u-0000000AaTo-0T3g
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:32:41 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC07VM3292216
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:32:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Dx+5DlXOJvegtnA3Kmrrw1
	qJ6BKbC1jFDAUZNCC1dnQ=; b=Ov+Y1iLztTChqp6fYm9U0PUNsYfH79Vdf9GBmP
	vHXgqOtIkmspbWEYwT2xPOfM7ly4OBz2/35RY0mAXr9S5EUKQg/NifPXBpFuuE7d
	PIBC4NLx5hfAfPqtAVIU8pSBjxcl+h1N/VCIh7+MPFwAbDRSSyUp+uBsG64fSVu/
	VLCJB2qFAjicF4h7bASglNABMZm2PT6khALwJM13Gmagv120qnbg7glMac0Oop58
	Kn573MWky0RIqzHMMcEnw1o7SoefmqmlnYJq0D1k9W+HYQBMuqShtIgMRvbfjzzq
	8xO168vqvdqc92DiXBBV8rNRS7EMPwXdEvkxc+x2Ztl1wnsQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8uh3hhj6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:32:38 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3580c07911eso5213074eec.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791811958; x=1792416758; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Dx+5DlXOJvegtnA3Kmrrw1qJ6BKbC1jFDAUZNCC1dnQ=;
        b=OivYjHocyflztoPVhAKmBSFeOgZks0A+ewAOsxeAMxXD4TtL3pXyWNxkv8lNQ1XdB9
         iBe2qz/4yu9IlEp2kO31GbPzRWKioCPgKU6SWFOSHdL5C4DdROdDmNzzt95NZA+4CDZG
         NT0uHh38rDqMvZ2BbF3E1MiNh1wNFB24vs0qDfkPEmJ7xbtb0Xr3YS+/aiyqVwLbLFLA
         +cMDoBa1Kk7lFDpIAwQ022DrD3jfmbrtPe3pjpcHHcm6O4bm9zM3ajaiZNyAfvOZDVSE
         /C/7NQOZqXvYe2QSEjQm/FQTRJbJ6ns+5NCE9S6xXY3vj27ruCckPSM9P1sFuRjyTnar
         ISrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791811958; x=1792416758;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Dx+5DlXOJvegtnA3Kmrrw1qJ6BKbC1jFDAUZNCC1dnQ=;
        b=bBGIExOPbsj9HIAh/g2zbB6ikFuAO2vdnwed3xoxU5afpOiEcBXlPpxuMKDwU6/LOq
         hb9fcx8nGbbVgZUN9S1Q6e0/bIjFIVE07R9pdAuQ6oiPTCFYjylmAIP0ker/4KHxaip0
         oAx4qvbRZoG6RIsku8M8X5HWo1jFVfka4PY7qU6o/UaooFOpdUIZYMvsf9mkvY2hH9YK
         RZacJi6AqwcClDP4jfetUEaNgizS42hHK9f/GfKqd5r31L/KtAm2wSfqhrLlWMtTfCri
         W3z4YR+UG/NY//WYKsRI4IGTwrCxk3fVY2jkEG9nbI3fGVZcXex0Szrh91eucfqWQlmc
         iqIQ==
X-Forwarded-Encrypted: i=1; AKwUvBwTWcXCfAg4jg8Z+pd9a/Y8aevWOMSO/CQkfp40sTiIvbR6ZzWs1FsQ9qF+Ms3eiIKcQiozHltb5/8=@lists.infradead.org
X-Gm-Message-State: AFq9FYKurq5fBf3EFvn0IeUuGELUR7XeO4VnNBeRehGsftSD22M/hhsG
	dIqAcuQtk78oqkFFdByViQwXoHtmKW3O7FTGk7od4L0QHnFc0WexMCKHq+cInHz53AvvWBICnwH
	f3emjVDdiArSfTVNELBZ3ombRdKLQppeMXGpcyFqlm9jQQMxdifSwV04KMGaDrHhvzUfG
X-Gm-Gg: AYBFou1j0aj0bGfVAtX5bz0IlV2g5o2aQ0AECZiKSdBkdamlJHl0F8fH5/nu22toXOO
	7tdfnBPO50hG3Jzwp2eojndB22JjVjbCywCCdqypCe7+oHERWiI/AY2jicxNU3YLjjggYbupzTI
	avx3LR9TlkqbQGywap1d0Aw8AMXd030nIMBujuaetjPAJuOFkKsCa9bGU2fXQK0A+J/Bp4NzV82
	TjyOr7+Bg7aklNdVh451rr18I1SThECGfBdkn8qhtzDX1/O4phZB/0H0tgWWBbzmxz7Bke8/Cfr
	CBDHMPythabb3ATDzduR08dO0H53YGXDqM88T42zngwC9zqurlf9CpptkTAP4Do8NRdms2uLmON
	aFWQiQe19/3p7wbb1LHlokoquuAI=
X-Received: by 2002:a05:7300:b293:b0:351:207d:bff4 with SMTP id 5a478bee46e88-3537deccb0fmr13597429eec.4.1791811957912;
        Mon, 12 Oct 2026 06:32:37 -0700 (PDT)
X-Received: by 2002:a05:7300:b293:b0:351:207d:bff4 with SMTP id 5a478bee46e88-3537deccb0fmr13597378eec.4.1791811957167;
        Mon, 12 Oct 2026 06:32:37 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:32:36 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Subject: [PATCH v2 00/13] Add Qualcomm Nord display and eDP PHY support
Date: Mon, 12 Oct 2026 19:02:10 +0530
Message-Id: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFrhzGoC/22NwQ6CMBBEf4Xs2SVtiRA8+R+GQ2kXqRGKXWg0h
 H+34NXLJC+ZebMCU3DEcMlWCBQdOz8mUKcMTK/HO6GziUEJVYpaShx9sGhDRDujFXWrZFdUmmp
 IiylQ596H7db8mJf2QWbeFXujdzz78Dnuotx7/81RokBSZyOqwnSyLa+eOX8t+mn8MOQpoNm27
 QuzrMGivwAAAA==
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=4153;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=Oy2vFMavUsEa6xHikhMkIegRjj0JnZoJtqReLysfrm4=;
 b=D644PHpCjLdH/Dj6FjK44RlieTC6bfNL+J9F14dTxmv5/r02jogvN+83PcZOABhzJnUGF3F5g
 RPKi+C+4P6kBCEpWO68BDBq27CWTvFv8eWz0yLs+7RcC6h6Lo9qWBNO
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX6nvkpYIYiKbM
 EdHtO2yTGG+QtmNSrTTmb1wrgjbQi4mUh6+SC7VreSswIF6HoLBkWUH1WCe3mdunK7YgKNl3tFJ
 n6FGT8HBKzz7o9eKRKfYOAMJ4vUdjbj9QaPGkns74IXKqectwlaDdXNij7azkMJaNkVPKIovOin
 hyIui9+47x1Vo0AFk1kiiVmySHjKdKID1L2fvgj99u3kSGnDJ+IlXLyvuK75lEbBF2uVM+rxqWb
 W2163SFHBMZgQV9UfzeM0SVcclrnUC+XqoFK4JqgU7hps3M0E2GQPA0djIb78g630zusfFxHuol
 eVmcsH5Gc5+cM/IAdrIaJdrtFKCF+jqD35E9K9/O1u9xVcmDd32UpUqqn+f+2l3XPatoKj7APX0
 kiFswA3u6O0chCgwZvzHm4JVQcRpiIkI3CcmuS8Ev3ZMtfGsu7vsW548HMHFT7ydJzc0IdZZmiF
 +QkMT0UsBOIfZwERamw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX9AMllWDtKtOl
 ba2F2qT57KKl+lmWw3BKR0c7Z/LNI9p6W/ljGEXKQ2zer36ygMfRozf624or0EKV46Z73gkc6Mw
 2d8t6KzPvjl8JWFnM2T63UF0ajSOLYE=
X-Authority-Analysis: v=2.4 cv=QO391QLL c=1 sm=1 tr=0 ts=6acce176 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=pGLkceISAAAA:8 a=tVI0ZWmoAAAA:8 a=QyXUC8HyAAAA:8 a=COk6AnOGAAAA:8
 a=JfrnYn6hAAAA:8 a=e5mUnYsNAAAA:8 a=VLagYuF82rudLD4T15cA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=-BPWgnxRz2uhmvdm1NTO:22 a=TjNXssC_j7lpFel5tvFf:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: ona96wooL-rYgGWjSWzO_p_o9xskC8bu
X-Proofpoint-GUID: ona96wooL-rYgGWjSWzO_p_o9xskC8bu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063240_165472_C72D6164 
X-CRM114-Status: GOOD (  14.42  )
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
Changes in v2:
- Reduced the PHY patches from 11 to 7. (Dmitry) 
- Removed redundent comments. (Dmitry)
- Addressed review feedback from v1. 
- Link to v1: https://patch.msgid.link/20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>
To: Dmitry Baryshkov <lumag@kernel.org>
To: Abhinav Kumar <abhinav.kumar@linux.dev>
To: Jessica Zhang <jesszhan0024@gmail.com>
To: Sean Paul <sean@poorly.run>
To: Marijn Suijten <marijn.suijten@somainline.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
To: David Airlie <airlied@gmail.com>
To: Simona Vetter <simona@ffwll.ch>
To: Kuogee Hsieh <quic_khsieh@quicinc.com>
To: Mahadevan P <mahadevan.p@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: freedreno@lists.freedesktop.org

---
Mahadevan P (6):
      dt-bindings: phy: qcom,edp-phy: Add DP PHY compatible for Nord
      dt-bindings: display: msm: Document the Nord DiplayPort controller
      dt-bindings: display/msm: Document Nord MDSS
      drm/msm/dpu: Add support for DPU 12.1 on Nord
      drm/msm: mdss: Add support for MDSS on Nord
      drm/msm/dp: Add support for DP controllers on Nord

Ritesh Kumar (7):
      phy: qcom: edp: Add Nord-specific register offsets
      phy: qcom: edp: Generalize power-on path for per-SoC overrides
      phy: qcom: edp: Add Nord voltage-swing and pre-emphasis tables
      phy: qcom: edp: Add Nord spread-spectrum clocking configuration callback
      phy: qcom: edp: Add Nord PLL configuration callback
      phy: qcom: edp: Add Nord PHY configuration data tables
      phy: qcom: edp: Add Nord phy_cfg, ops and OF compatible

 .../bindings/display/msm/dp-controller.yaml        |   3 +
 .../bindings/display/msm/qcom,nord-mdss.yaml       | 396 +++++++++++++++
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_1_nord.h  | 544 +++++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c  |  20 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.h  |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/dp/dp_display.c                |   9 +
 drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 350 ++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  |   3 +
 14 files changed, 1319 insertions(+), 16 deletions(-)
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

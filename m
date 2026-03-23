Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E621F4613F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 22:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BfjTBoXTUdKM16PEgjic2RxclXAl28DBcJ3tx2YnbzA=; b=H+gJJrQ61tvhYT
	Zli76uGRsKGDP5nNnivJIyCPAyO2vmXc8G6/skTkAGF67KWoXOivL+ogoB04b5y8F+EWDZpK7sgip
	fv7gZu2PUrneqArl/zMlDm9YFIhlNz/QnTbXjS1iZyy2NKo5fhmWkq/F+Gr1iWYZ2jPCOpPsbMAwl
	WeTkZ70rX76QFc+qFWeGUjkBDmrDpMCHfhRJzwlZGfNZM/kvfmiF9Lgf6XcjoOES/7ouENkxXzJ1e
	MwKvYp9k+9+qEnOEPq1cBZMS0351xLHSixPX08g10EgN6Rq+GRaAn4QkZueOBwP3dJU/+ZK0fZxxa
	QHK0/oNO8mu4laH3QX7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4oCU-000000006kQ-0Q6p;
	Mon, 23 Mar 2026 22:56:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4oCQ-000000006k1-3eJm
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 22:56:44 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NHqrTN3934924
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 22:56:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=2ZstTuHl7bih1VkM7rz3Sd
	0l8JroL3oROjL1l70Xarc=; b=iL0liLYoa0URKVpCq/SQMfpuHcjmBXZm2VUUmH
	GqA3998hdoFYMpxGvk/nvKLljTVpK6tl55hZaWymyM/q853c2FECIqGg2Elzlh24
	hRKm6UMyfAvTXFoH7jxOhvSLKtO6Wu2uGAzl9JGIRgHHzgfLQM5qBUo7GoPTpSEH
	/FfaRcCHgdPX7CYKBzxQdt1copzxbF9N/3rBWWfqibg+R4shSZcCw0beS6GjHGJa
	GMQ06y/+lUv5/GXHGccXii7QBlgsJFPQ+Q8ozu1SBlmLk76DUgKS8NfwNSHim7GD
	3/rnFZMcVBTmpDCGUyaAfdeV9ltR16YdWOBFCHA2HSiEgd9w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d37a0hn25-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 22:56:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-509219f94b0so62472181cf.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 15:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774306601; x=1774911401; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2ZstTuHl7bih1VkM7rz3Sd0l8JroL3oROjL1l70Xarc=;
        b=b17VZGxjQRrzkNW1zmDfiwoZyVtyTTEa7g7XT7TUc3CksPKwaFsmx6Pd5z4CjfW7vm
         exilykrotjMbYGBSpyVJlZyppsAwzXHXi7EUKce8yJQASGhABjmuEpJ9kd7J03rdLRF4
         HCVdQP2iDxxb3ZDeapougI6NtuYmhX0G3qkU6E0Nytz0f0KG3R1or6wyQ+UBL3z+xLEx
         RnRyX/xoBQQRC7wVbOVeSlVhMAbAFnvkx3TCSxxGqUVg8srDs88AC/f49ut9epA9Fc5p
         5u/iRvsSRsFuihDeEfO1rqoZQo1wzEQjdcAi9+BRw7kPAHalP13+HD+TQ23hnigQtBJt
         DQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774306601; x=1774911401;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ZstTuHl7bih1VkM7rz3Sd0l8JroL3oROjL1l70Xarc=;
        b=Anj0kiDhhXFvClRE2B9x/o+qN94ZdWGWQzslavmn4Lt6RYASSb6RSS9rfjqjC2iLZt
         51Mdiz3JFTcYE5C6inWvCdwnKk0Q60Rlw15BlRSr2SpaC3ivddgcr9faWo/0sSIolTMj
         wxI8hGnRnMx0QYg71v89K4Uep2YP/02qQM+H1ITm9SPDVlVlpRgef5Dkq7YN543nDCT0
         by/+3uoJSmq4a3pXZr72/NMactg+Wtzi9flPCZA7i0ztGf8kvUy0VkHpvhVGRK5OnwpX
         /Rw9EF/GRlzCtsxcNZnbRRlBlqHmW6fO5VGnF6Pat1Wp2k7jnONkUiXnHTxqqjWJTNf8
         x5jA==
X-Forwarded-Encrypted: i=1; AJvYcCU+xGPqP0hkBkxncAgPaXxB5Znusxo+z1z2QPYS3lPNhNU/qPIVeq67B8t/WPZjJKck1974l81CwuM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXWKrl/cAaJTVvjtNxtAKemy97riOLgxKaQ07Id4jKlz3GDgJm
	N65uNSpr3Urk+H87h5BAaKc9WVITk2FxtpiJr5ux64ojEG6jPmsiacwBLaOfbWUms8y4NRtee11
	YUCqg91qEIysEKmujsS/VNpyu+j+uGtcXo5eGZL40pQiUcasOSQQYMNWyPEpN1z1i5io5
X-Gm-Gg: ATEYQzxa19hYKFJk74fweAnEzkm/tobd6evYFDcA46JlUEEEnvz9YMvZgK6l+HkfAjl
	oSMVSfcUZ+ZtdW6PRrDqEvR6LENHlLNDBLum+3TpigYutst4OWEp1wLx6uFZ4RfjbpW8HJxErqB
	qfWv4e5qFF+OPZqkyTXabTdm1N/BNz6ti/4FexHZ3QXpHad93O0RhlkxfjBN7jatLqKBWNAvzF7
	bXGmvFP0ay17EtLuEAaxkO/ztlPK737/scurSL28KIsrN+yIv+qyw5+Re79UKaUu3Ug/8f6uRwr
	XkNV8OjzRTs+4l0akW2cQKuyjlwoTYetPwcKxwSSl6jwm+vSidls4MTaMkAoN1vptAg7gCV8Q2j
	NzLDcZEkPKiy0KUKldrbnqG7C+mNGjZUIDWCtkUb9GO838+VSLbrYKkdcv62pezTWMVzjWCQxpd
	uqTmaYkscur3DneCvP6FokLGN12mEATM1MZqc=
X-Received: by 2002:a05:622a:5a88:b0:50b:4226:9250 with SMTP id d75a77b69052e-50b4226a527mr199416241cf.44.1774306601117;
        Mon, 23 Mar 2026 15:56:41 -0700 (PDT)
X-Received: by 2002:a05:622a:5a88:b0:50b:4226:9250 with SMTP id d75a77b69052e-50b4226a527mr199416041cf.44.1774306600639;
        Mon, 23 Mar 2026 15:56:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2963fa304sm156489e87.27.2026.03.23.15.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 15:56:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v7 0/4] drm/msm/hdmi & phy: use generic PHY framework
Date: Tue, 24 Mar 2026 00:56:33 +0200
Message-Id: <20260324-fd-hdmi-phy-v7-0-b41dde8d83b8@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACLFwWkC/3XQTWrDMBAF4KsErSuj0Z/trnKP0oUsS5FobKUjV
 9QE371yIFBDuxl4A/PxmDvJDqPL5PV0J+hKzDHNNbQvJ2KDmS+OxrFmwhmXDFhP/UjDOEV6Cyu
 VcugE9H6wtiX14obOx++H9vZes8c00SWgM09DsJ53AKAFa4BDK6GnQKu34NoMBtccPlI5X+NsM
 DUJLzsbYl4Sro+ORe74TimmODvUKZLWhR2M0YqbsVXnlHPz+WWuNk1TUwfZWxX1JDQTII+EqoT
 qgHPjej2K4R9C/yaOTym6EtZ5yzqjlGzZH8S2bT+FqDUregEAAA==
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
X-Mailer: b4 0.15.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4684;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=wmhP025rglUx7+8vVzUuIs8KYz9sx5JxJRsRX38iJbg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpwcUmgHLBp5eXLKQV/pwQik3PWswABr5/GgT8c
 /PkG0xp/hGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCacHFJgAKCRCLPIo+Aiko
 1Q93B/9J9OPumurTq5B/6bIkP757/W//ayjgSu98QSIvQF2b2MDx2R1srj8w849Bri4eu1/g7bY
 Tt05hjT2ikV/thilJIv9LFpCqE/krjlnPNb/1PdEEPor1M4PZQx+yuk0pcGy2UIthcvD39LAsvi
 37MIJI97u6hdJCn6oIr3O0fal4IKvh6Qv23Cw24Xdnt6ehmacqxMybUqrcSBVHP1b5b9nOtFHdB
 hFnjU7nItBoEh1nNFdihIZPXhzCZeUow75A/YDtbGjxVL0t999eQNuEaeWts5G0FmHXyQKv2YUB
 t7xHd4LIthT+2YbPnnu2nZPLxKZbJtpQYGYWoLhDy5AjUyCV
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=GIIF0+NK c=1 sm=1 tr=0 ts=69c1c52a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=aG6DWvB8Nz23F0sxf60A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDE2OSBTYWx0ZWRfX3aFIDNCv0YI4
 7s/3/J4dnbSbV/dkkz1BaLPnSijyaQACFYQ+KBB1cK2Bz0PZWRqcV1yVFm+DcEvQXeqUhiuSq51
 0H4nslHcWeDJ55OddsaEKpzVgQ/ag7DmRkL5Gj9BVwWOf3mYexz6BI5CXgjo6V+A3yk0AGHL/t5
 h0yBAFcPxduW83WOJG2XiE1w3SGKU3a+frUZXvGJLoOeoKsWhwlHceArGN8T+JcwrhzwMH10k3x
 WEqU/uv4Ic1TGjpJoYCq9eeQSUmpJzX75A+P2upT18ZqH8a1mLbYWaUG1+UMerGOESjwZwD2ApS
 hh+6rkMoyy729Xfe/OzEWrRzUcbQnf9OQG2EdKKqVYuyyBA8hVtd0gdHPltPNZAIac5n6qpMf5F
 5LssW0o6CxoJN4OslJN5wzOW8LRwDMeK7M3wtBa106+L200/8mihMSb2dJNIW1eyndqTo+eTmgX
 D43nFeZsBgiCAWAddnA==
X-Proofpoint-GUID: VeiPOM5quiEY2BGph_0IE06WeS9qN96z
X-Proofpoint-ORIG-GUID: VeiPOM5quiEY2BGph_0IE06WeS9qN96z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_06,2026-03-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_155642_943516_A7FC0524 
X-CRM114-Status: GOOD (  17.06  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8996.c | 440 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi-msm8998.c | 489 +++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-hdmi.h         |  49 ++
 drivers/phy/qualcomm/phy-qcom-uniphy.h           |  74 +++
 25 files changed, 2590 insertions(+), 3188 deletions(-)
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

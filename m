Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E60C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l5i1WlS9UO7UqkAI0R3I5/po4niNjYiAoXSU/qF9XEM=; b=tBW59IJfl4qbhD
	6F0LBZY0CMbviK9f1Cwwex99u5QaNQsCvyJE13quYUQvm3HzkxVsNJAywun7t4D66e+h/l1MUIaBu
	mwNGlkFPpkDGySTcuBWfqseKIcSvZclTt3z0r8eiVXsjlN2c6tOKDmR2x2E+ogAjsEPgMjSVxpfqp
	IsIoQ5Oj7/YxaHCbf5HuL4ue8Kawf6bRwwNQIqDsMRN7uuFBB864eUkqEBDi9RJE0u+XUSnojLge/
	M+NVkfhm1SZBZIzx6FOcaHapFtPFqmGFa0MeSw8nwJccVsXqcjgIodg1c4nOZFduDxrsrBP12c9W9
	oU6gaHxDToItMWwGVNpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxD5-00000005wOR-2Gfe;
	Fri, 28 Aug 2026 14:05:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxD2-00000005wMT-0F0J
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:05:34 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkonj2970077
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ESpmF/AoUuQly5eGwpgeHE
	+vjb2a7bz/klJLDshyWoQ=; b=lh/V6tc7Aj9h/4SvQpCNvtmV55kj/n8Hnhba67
	1UzgJOkq4i+DXRjMfa4SFiTGy0jZfH6M050A5UbMo+L2w3M8lmQ0Ait4TZhnYkb+
	pcHKw9T/rViHEMQYXcmqKCC7nbgQAF2ygBD5PBTCzuRNBS2CPFa43nWaqp5lGqRv
	PDBhth+eNMyDlXwgzIML6hRxSMQxI3Cmtw8hGVj7bedlX1090Et5Z0D0puRWCbNP
	Z37ng9z+r5ilPKJMLqlmWd/KGX6xXwTOco2xIjOU4TQBDmGV5CY28Ooruk5j8IOB
	t6ICd6/nk6ahd4M3aOCxgT6mr8S0qC4ovH/X0X5xvF2bF6Og==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3hs245d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:27 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-78449c66789so210053137.1
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925927; x=1788530727; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=ESpmF/AoUuQly5eGwpgeHE+vjb2a7bz/klJLDshyWoQ=;
        b=i1QgH+BnUEQ3BRlS5RrNIm0ounBHVW1LPA/Co3fmSG065Lls6yeHv1L3vs0gcaMGRQ
         F4H7Rv5QAW9CHOe5FlwUyZ/UBo3TR46sUlsFUsWEjdjbmF1/4CS1jebLWRdTEAPM4Bn5
         0cfD+Zh9tnE2rBzLlWSp2VpZ2anxfT+xeX6BWjF4cnpQYIAmAFjrLc4woLdnN2fpw1Dz
         SXT4MvmlDPt4nfQeEzNz6YifBtYob3eZqlIg6JfSqIaZTrJizEI+4Fhu7qxXGiwdSHE4
         lcAO4HSVBV2YU5686nuRg6C4uFb9p5r1OrOPWJUJ6dmAkVmIlLA5YBLk5m001Kidnd21
         lV4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925927; x=1788530727;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ESpmF/AoUuQly5eGwpgeHE+vjb2a7bz/klJLDshyWoQ=;
        b=YYqQpFhbzJ8bxCASpv5pOwD8+dXvlBE0NoAKZg0sbBuPi9D0IZFdMJ8OU6cuKpeFdo
         +ZcA2WApqU3oXbtJre1FA9LQ/DkADBC58qAGaB5NU3X1/kzXRi9pjG8LvnkPlRPNdLJ2
         ee0ZzRvq43lPJqTAtbAebGBpoyAQI/SiFXUaJjWTQB8U3ZB7UOBRjytvonDhDgG1+iht
         9QxiDr+Z5DiZYaNTXsz/JdSFIrMtUl4L5op9CxmIfyX2ZDalGdUw8JnFhYwiMS8otwIV
         purrINH60+DcgDx3dYW33eKo0P7eho6byTP7uoBGDlbqqqba/28Lr/tu0W8SWaXafGRY
         Gl2g==
X-Forwarded-Encrypted: i=1; AHgh+Rp/ViZHh9TdnsDCaRNqHWHkgvjFbxleEmV+zwZuV5Ofi18rvgkoj83R4sdCjDNY0xq/2ldtT0sFzVY=@lists.infradead.org
X-Gm-Message-State: AFuF++kj9NPYJsYRsQ/LOr7MSsU698hi/eEtyRVxUU5oDSDBHsVChuYt
	ukwGfEfikkPcp5phE15Iek0HTfW0hPQNwJhYdi8RJTtudRbj++VRw9l8FisOFUUHcoMq5bnU0ze
	TTKskEOBrYcSFhXT6oGi+S55JE0TLLUS1EauRsBAd3t1bGDeRiCQ52L94stPW9EsKe/uALwNtAU
	rm
X-Gm-Gg: AR+sD11uN7WCpmvuy7jdq9PKH355KbssIYWtj4ODSLmzWHKRD7OdMhLpYaRvNgjmcJm
	HUETHjnzchQc0ou2aVTBy5KUvLW95gIRFiTuOsqzFOifmVTt3w1n+JACyaK0Fm+EkKG33ujxr2c
	bGeqvf+aUv/+8rQ8oQ3JKCPrnfkeEeK4WTFNcmq+bjZOYW79uSXsagECUN3gMfDSbmIQLgFYTs1
	pxdWdPsdrvknFK4bEr83h+qni0MuPfHAFDr256bHOpDjTZlfN7M1BEHBYQLG8Zr88ZX1RaOFG/p
	KHqoqFgVc4+nIsm7b/ozmOk5CkgDB6+nI/Xy49GNuy+tNy/BLbCWMeYX6hzqRRqQKwXd18DAsDj
	78nTC9rGjGZp5hwyQfR9IQyc=
X-Received: by 2002:a05:6102:5128:b0:780:7e65:f0ab with SMTP id ada2fe7eead31-7859822155fmr1884429137.1.1787925926924;
        Fri, 28 Aug 2026 07:05:26 -0700 (PDT)
X-Received: by 2002:a05:6102:5128:b0:780:7e65:f0ab with SMTP id ada2fe7eead31-7859822155fmr1884351137.1.1787925926256;
        Fri, 28 Aug 2026 07:05:26 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH RFC/DO NOT MERGE 00/12] drm/msm/hdmi: Add Eliza HDMI and
 HDMI PHY
Date: Fri, 28 Aug 2026 16:04:58 +0200
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDCyMT3ZSiXN3c4lzdjJTcTN3UnMyqRN0k45RE07Q0U3MLU0MloMaCotS
 0zAqwodFKQW7O+i7+Cn7+IQq+rkHurkqxEBXFpUlZqcklILOVamsBxh4E04gAAAA=
X-Change-ID: 20260824-drm-msm-hdmi-eliza-b3da5ff57851
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2629;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=vJbhpstV+ttcZLNyRwj3/fWbYL3GtHiutJk3K5SuMGE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWVnzNVHc+lG26q5VD6MUoiPWo4+IJEQmloY
 NARu+bwH9KJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVlQAKCRDBN2bmhouD
 1ytFD/9hbKOrNeWlLxDmBPlo/nIBIDXI2BK3P/ZzCU6Un51/tyatSsYVJQXke1oILq9TTYQrwRa
 T+ltjftm0bzGloK3PQvumopARUNa3G4rqfmxJ0Zu94zemUlCtN8q+T3OipJKYWmS2EaAd+HS8YY
 QKifEwpnO7ibqhBC19OY8Hiawn71/2ZhdyA4wBZTd39hjVwc0eqO2xPxpPbxAX+dl3CCYY/iO38
 8GEuM/JrsuK00RvXw9rOyr7grpVn4Oqenf1Beo4cJxhE6iKfjGej1luIJPsCxo9Wy+p7jJdVfFV
 vAmAGMuSMlYNi8mEHoDDy0eKo/KArNTvcCuoZa9sFSztf6MKtG2YiZF4ExSO3iSojWMzVQGMw6Z
 YFuWzvJ4qv5WND/rZMXhdqBjw7LykVJcokpLFxYp8tfFa4IEzb9srSjIAfaFhJvwVC7mcafh9Fp
 4TWev0SAlfXWrEAZjlcdtPOimiOruhvOkONSUaCTmxF4QgyEFplXliL0wzZTi6s5EAWSiA2G2jh
 xxGsUpFGV1pFHeSexBm0uRmRUYR4rn+NMLQxqO97j06JVjBI3XceHNqELd/QeRkSA6sNq6Gk9ZE
 rZ1lC5eFQhJobPBBkV2dEdgKwjBNTNCrojmUwtY5gdk7rs4nVrRjAZarf8lrsQA3+HKkgy9ghrV
 8I3UTJFJzEt5b7g==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=XKYAjwhE c=1 sm=1 tr=0 ts=6a9195a7 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=qF0omb1No2WOS10Eni0A:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfXxCKLc7FBf0I/
 nTyCWKk12OnszJy9WGAGe7Xsw3sNFr7W/9RJm36Nhw7K8qnIsYEAAwx60t5jAVx34dyNABnC9XF
 Q7aBHK7rdFOXGPv44p8TIKR6szbUZ3np6tB6yhXwAdfI5J1/j0jemh3EokwPdgT/nMQ+satfRMt
 ebZ9HO75EiaGqhBPO4BLcrCOqX+cnBM6Q3MQyqyr9V1p/YbEv7m27btuUYpH6G46kAHJf0e5Iym
 vohYNXBPSNSPjzvy4/46/hLnzlYaott3n2mcPAoizFTy3O6nIF04d2MnTm64pYbW6WM0g+I+wmK
 vYZ7fKpiKLdF1AN9R+Vk/eidZ82YGojWTaKK15piHWTvQw96vUlkHx/VbiWtAAS5eKWj/AnGenp
 mCoW/hIBQn032zErcUfx6w30Y865kK0VWs7HY2spqevnZqf4WXo6DOod1Ds66vfG879QM50y+fa
 KNbgzRna8u12EgAbogw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX1QhuLhOvay7B
 vFsVc/BC3nf/Ob6bqk1mdB+r+aBEFdp56ppwY244ee79sOtSEdVRr5ucINiqkZOJlGBaz1UU9rp
 tuRA9k6fmhoE1sps/PG41hyoCNYI6ew=
X-Proofpoint-GUID: 81bozO1xiaq0ih0IncxLPnB9jRhG_THk
X-Proofpoint-ORIG-GUID: 81bozO1xiaq0ih0IncxLPnB9jRhG_THk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_070532_277741_A62E95C7 
X-CRM114-Status: GOOD (  11.63  )
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

RFC
===
Posting to get some comments or just for reference if anyone wants to
build on top, because unfortunately HDMI does not work - no signal and
missing TX ACK on HDMI PHY (hdmi_eliza_phy_ready_poll).  The TX ACK
appears for all four TX0-3 lanes only on the first boot configuration.

The MSM cleanups (first four patches) can be taken as is.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (12):
      drm/msm/hdmi_bridge: Drop redundant initialization in msm_hdmi_bridge_init()
      drm/msm: Properly handle msm_ioremap() without name
      drm/msm/dsi: Fix indentation of if block in dsi_mgr_bridge_mode_valid()
      dt-bindings: display/msm: hdmi: Correct name of disallowed supplies
      dt-bindings: display/msm: hdmi: Add Eliza HDMI TX
      dt-bindings: display/msm: eliza-hdmi-phy: Add Eliza HDMI PHY
      drm/msm/hdmi: Split PHY init from power up
      drm/msm/hdmi: Add support for PM OPP table
      drm/msm/hdmi: Add HDMI for Eliza SoC
      drm/msm/hdmi_phy_eliza: Add support for Synopsys-based HDMI phy on Eliza
      arm64: dts: qcom: eliza: Add HDMI display with HDMI PHY
      arm64: dts: qcom: eliza-evk: Add native HDMI

 .../devicetree/bindings/display/msm/hdmi.yaml      |  71 +-
 .../bindings/display/msm/qcom,eliza-mdss.yaml      |  96 ++-
 .../bindings/phy/qcom,eliza-hdmi-phy.yaml          |  71 ++
 arch/arm64/boot/dts/qcom/eliza-evk.dtsi            | 103 +++
 arch/arm64/boot/dts/qcom/eliza.dtsi                |  94 ++-
 drivers/gpu/drm/msm/Makefile                       |   1 +
 .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_4_eliza.h |   8 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c  |  15 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.h  |   3 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   3 +
 drivers/gpu/drm/msm/dsi/dsi_manager.c              |   2 +-
 drivers/gpu/drm/msm/hdmi/hdmi.c                    |  40 ++
 drivers/gpu/drm/msm/hdmi/hdmi.h                    |  26 +
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c             | 117 +++-
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c                |  28 +-
 drivers/gpu/drm/msm/hdmi/hdmi_phy_eliza.c          | 723 +++++++++++++++++++++
 drivers/gpu/drm/msm/msm_drv.h                      |   5 +
 drivers/gpu/drm/msm/msm_io_utils.c                 |   6 +-
 drivers/gpu/drm/msm/registers/display/hdmi.xml     | 140 ++++
 19 files changed, 1520 insertions(+), 32 deletions(-)
---
base-commit: 448e60718f7b424994fe1a9013b5317e756e18eb
change-id: 20260824-drm-msm-hdmi-eliza-b3da5ff57851

Best regards,
--  
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E45BBCA9EC1
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QJTJTfOE7axg0wQok5HQ6zEi3a1snf4iL5YCXVFB7D0=; b=URKWwzb/g4V5SV
	6EvOesSDg4sMpG/H14Xe1dDOlVX9zwaUboey9e5xc1Vp6t2p9Cx72se3kQorc7mdaQ1Vqr7WkjHRV
	7pdaYK+53SWnS/wvM0BKBhaC3AnOoRvwoCt+/XAlUd0tAKe381/LRgo5xe9qupoEOGc/dpoJxNEFg
	9Bkwt0hUaybU+8Fiv1SSKQUCnkbplDDWUdtvGZE2LJRAtUOyWnjwcMAQv8Q7c4F6W19BrEshczSFo
	e0VS8PkMCSdbIUuCed/BaOdNrFBN/dEwakM/YekJa5h0MZc2cJaskwJXX/GM4tITtbACRshpmwlLb
	IvLI02mf2qctNyw1Y16Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVu-00000008F99-2DBL;
	Sat, 10 Oct 2026 16:01:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVn-00000008F4g-0NqB
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:01:30 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69AFPUM1957682
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=DQqdig/lPUYKnlWFUuz6XD
	GgcfQefsbf/OU7KlytMpI=; b=AJzFjyWwNHlftzUDPQNRfqUH4rlnqJBi6sKigh
	8jdDFGevMdL28EQBh1FvQUYvZ7Xqk20t9Cg9NcGRBqbeyur/Slyz9vxrvomb82pT
	g7FTN3nH3mkswmQMh1AT5LAg42lgcMkM69t8pcb1Uwp413tnpiI1dCq+/QJRUtFy
	PPBpG8swCo2j3A2XkIjjM09PJRbsbHLwHfJhv/RicFNuN/0aGP/GsljdI6pJCzvw
	Csa2gpBPNjuVcXYA23vMZB7OsdvJpC/vRmFlkVeVV1uaHBkpU3I1mtvhPOpdlbLC
	S7ZvXknp7ifqY/cNax+6Ze+pIVHwO/Xx0fmNSQ/vCQzjKLvA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7deuhb3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:25 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-143826c4a13so501605c88.1
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 09:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791648084; x=1792252884; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=DQqdig/lPUYKnlWFUuz6XDGgcfQefsbf/OU7KlytMpI=;
        b=SETgs93Gdxlf9Z9gcuoqiI9LHaaJt9g1SBM+SF1LOA1Cs3zJPwpFPHQWdyxSWRIfFR
         G3M6iIbx6bbyOz4+S+KtsxeTsqpdpkEuN7PZNCI1FQrp35LQx5kh1PoOA5NX4Iul7bTb
         TFfIFrg4MuaIzT4v1USalajPBPTWKw6o2JLuf1/1OTq50FKE68bkGhFXUMWBtVsZJICz
         6vtzCAycLiKTV7Wl86NXXWZjHYmdirwEgtMqfl3OI+XTRXQjvDa+yrREf/rzQa9ZHgFZ
         BpL8Ez5RWgOe36aNZwEEbR/IztonVuQ5Y39XcJzonhv/hAoUDh+AopSFzDkYBUBLD8Ar
         R/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791648084; x=1792252884;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=DQqdig/lPUYKnlWFUuz6XDGgcfQefsbf/OU7KlytMpI=;
        b=z2GfcyYR132Wd53f4PPSMgmn06241wG/Qqo9etPg+zIsz1et01dWqSrcrGOXREC57N
         G/m9nHDiRPSJtNJSZE+AteP+B640fheK0FzcSicl19KyzvJnxIpzLiH18JOPXtslPmAe
         fxGbigcGOR7vTuPvQjVoedX5zgdiK9ZOGWDVgNoXROV8xIkS1fnR4RCieqeXEe4lhRgP
         tCA1KXeJNtQ/OM1BL0DGPpBdOeDefQhFToIzvtnqWqiRFs7qm+rhNPgb7MsPt6ih54BS
         cFfAEXhw1ac5vwYqTm9an53uL7Tyr7AkgmnyyAE80X4a5vyIva8Pb6NhyuiA12jq0Fwd
         b+vg==
X-Gm-Message-State: AFq9FYJscsTo0PvBHH+rrhgva/VEONLc/PJW5bYvBpqLCqAR3ekb/ojW
	uOnfDsls10V0Iuw+vii+lh9PPRIJemLFeXWUnbfV8UyfcmkLDeEZkDWhIV/oLPDfzDqWTZOdplo
	lLaalyiDtPepEZJM0v2hPhFH2yxq10FjTl6v2KMvohstwjDouKdUBFr+3P/VY6T3Nf8tuHNDJ/o
	l6Olg=
X-Gm-Gg: AYBFou2srMn0I1iY+v69Mv4CmoZKQs8ms1VGy5REcgJVszVPEOgFrqZyEegVrR6cVsZ
	ul14/cd434SaM8g5sGN86yWq5wyY6QZhaI8Bm3TRys588h8YD24C/6y4SI9jcx1fHEsf2Fs8DRZ
	vjsK60AjY3ouFPFHmF+Eqx2+9GDJ/pZrDRFnOUpnCOEWRbrbx/vv4LLT7B2Iw3jvBMp04bGbMJO
	nfJb33gbSoeqUjH1u2cfUWvcQ8v4NPmJa3uL3xf3Qs+9vFXAncm2Uz+toXuCr7QpsqKBHCAGY5L
	MYmEdBUqoWsdttkdeFh29+fkXo0XoiWigVM0GDu6SnqEY4RWK4FoRFAgd+YIpu1whbGozyZHD3z
	+P6jh3g0xLPJxgibwBXGPoNpLa3eJZRjExDlH9wf/NUwr4+1hAAZJHtxAmEKHfUyzrDGGHrYpqR
	iXIcnLJ6cLyA==
X-Received: by 2002:a05:701b:4586:20b0:169:b1b1:1445 with SMTP id a92af1059eb24-16a5dbfe73dmr6122836c88.31.1791648082403;
        Sat, 10 Oct 2026 09:01:22 -0700 (PDT)
X-Received: by 2002:a05:701b:4586:20b0:169:b1b1:1445 with SMTP id a92af1059eb24-16a5dbfe73dmr6122665c88.31.1791648080281;
        Sat, 10 Oct 2026 09:01:20 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a31f6be0sm30786022c88.13.2026.10.10.09.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 09:01:19 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Subject: [PATCH v20 00/13] media: qcom: camss: Add Kaanapali support
Date: Sat, 10 Oct 2026 09:01:05 -0700
Message-Id: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3XRzWrDMAwA4FcpPs/F/3Z62nuMHRxbXs3apI3T0
 lH67lNSWApzLgYJ65OQ7qTAkKGQ3eZOBrjmkvsOA8HeNiTsffcFNEdMEMGEYZwL+u1950/+kGn
 wx1KoldaKqBSkZAlWnQZI+TaTH5/PeIDzBeXxmSStL0BDfzzmcbfp4DbSCeeMNWQq2Ocy9sPPP
 NKV87lktTt+oIw6DirpxuvI3HtfyvZ88YepwxafGb1yuUCauQokERJa8ehAa6P5GqQWCGeqQAo
 hsCYJ470xzSqkF8gKVoE0QoG1PHBubNBxDTIL1GDRf8hMUJNkMklxx8IaZF8gUduRRSgGhKK0y
 ZpVyP1BeFZZgdx0Ndt6BS2w2K7uqHmFahM1CLUiaCchaQasAj0ej1/vtWoh6AIAAA==
X-Change-ID: 20260112-kaanapali-camss-73772d44eff7
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-GUID: -OYry9k_MHCtaC7Hww24zzOxfUbTkbAj
X-Authority-Analysis: v=2.4 cv=Aud7T+9P c=1 sm=1 tr=0 ts=6aca6155 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=_sVxUl8a_8SdBIyRE0UA:9
 a=-Zunz38_rFd79tmP:21 a=QEXdDO2ut3YA:10 a=Kq8ClHjjuc5pcCNDwlU0:22
 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX0sjqPqH0lcWU
 opjJTeg8HVTL4ckizzvaOz0tYzvZW5FVIiMABynayPge8ogtFqKuAK1MDMo30pYzGzD7M281k1b
 KJysR5Tg5QiqRA8simq3TyHrkXnetrk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX1rZbHBQYLmWO
 n+pq1M4ylCx4U5/Xifpz74cXgsRihw3AMqwxDSrZ75IAzPyIBp+TVBCTGdaYpED4OI0IEJl07/H
 rZrMnK+PptnQVItpbdEXJ1I58a+gdLlnwlU/29oVPLqjtRE0KQf/2v0gFBPxsxKcOubZaCGkbs0
 pDu36wdPyCtdh8MsFS+I6Mr7YNsERHJiwPTkzRr4S0puXlLk0Ous8/WXzra+bXkfHSjWwm/+qWV
 B5SnmFSZJyedmD+UJI4VPsBzHPcITT2gDaLEPRwL+dUr8H1xxJLNUlnY/cwizMYGasPGLvBmJ22
 pRaeXoTwkDLss/L+ppZQwP97uN/XGo8X10PV6KMEb6/aIKFUiVSG36kGJLREjenGril0EHDxtar
 LVNovXqh4MQsxFGqsNWEQfrfNpbXi8LlopODTVkKySyo3NGrDVHXM6AyGeNe3nCaUnvk/3Amg3V
 j0ufo0BQFO3WuBMqRqA==
X-Proofpoint-ORIG-GUID: -OYry9k_MHCtaC7Hww24zzOxfUbTkbAj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-10_03,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610100063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_090127_280598_E2FD6949 
X-CRM114-Status: GOOD (  19.67  )
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

Add support for the RDI only CAMSS camera driver on Kaanapali. Enabling
RDI path involves adding the support for a set of CSIPHY, CSID and TFE
modules, with each TFE having multiple RDI ports. This hardware
architecture requires 'qdss_debug_xo' clock for CAMNOC to be functional.

Kaanapali camera subsystem provides:
- 6 x CSIPHY (CSI Physical Layer)
- 3 x TPG (Test Pattern Generator)
- 3 x CSID (CSI Decoder)
- 2 x CSID Lite
- 3 x VFE (Video Front End), 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite

This series has been tested using the following commands with S5KJN5 sensor.
- media-ctl --reset
- media-ctl -V '"msm_csiphy2":0[fmt:SGBRG10/4096x3072]'
- media-ctl -V '"msm_csid0":0[fmt:SGBRG10/4096x3072]'
- media-ctl -V '"msm_vfe0_rdi0":0[fmt:SGBRG10/4096x3072]'
- media-ctl -l '"msm_csiphy2":1->"msm_csid0":0[1]'
- media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
- yavta  --capture=20 -I -n 5 -f SGBRG10P -s 4096x3072 -F  /dev/video0

PHY driver part for maintainer Vinod Koul (3):
[1] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Kaanapali CSI2 PHY
[2] phy: qcom-mipi-csi2: Parametrise the common status register offset
[3] phy: qcom-mipi-csi2: Add Kaanapali support

CAMSS driver and DTS part for maintainer Bryan O'Donoghue (9):
[1] media: dt-bindings: Add CAMSS device for Kaanapali
[2] media: qcom: camss: Add Kaanapali compatible
[3] media: qcom: camss: csiphy: Add support for v2.4.0 two-phase CSIPHY
[4] media: qcom: camss: csid: Add support for CSID 1080
[5] media: qcom: camss: vfe: Add support for VFE 1080
[6] media: qcom: camss: tpg: Add support for v2.4.0 TPG
[7] arm64: dts: qcom: kaanapali: Add CAMSS and CSIPHY block definitions
[8] arm64: dts: qcom: kaanapali: Add CCI controller nodes
[9] arm64: dts: qcom: kaanapali: Add camera MCLK pinctrl
[10] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5: Add DT overlay
  

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
Changes in v20:
- Remove the redundant null check for reg_update_clear in VFE - bod
- Define the port property for CSIPHY nodes and align the style of
  CAMSS and CSIPHY nodes - bod
- Replace bias-pull-up and bias-pull-down with bias-disable for the
  SCL/SDA pins of CCI nodes in TLMM, as internal weak pull is inproper
  with existing board level pull up resistors - Loic
- Align the if-else condition in TPG version judgement and remove the
  redundant comments in TPG code but describe the hardware changes in
  commit description
- Add Kaanapali camera subsystem and S5KJN5 enablement dtso
- Link to v19: https://patch.msgid.link/20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com

Changes in v19:
- Remove the internal CSIPHY hardware operations for CAMSS - bod
- Collect RBs tags from Bryan and Rob for CAMSS binding - bod/Rob
- Split the PHY and CAMSS into separate parts and document the
  corresponding maintainers in cover letter - bod
- Link to v18: https://patch.msgid.link/20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com

Changes in v18:
- Rename CSID and VFE hardware version from Gen4 to 1080 - bod
- Correct the description for CAMSS ports in binding - Krzysztof
- Add lane count fallback path for CSID RX configuration - Sashiko
- Align the TFE lite line count with the commit description - Sashiko
- Use hyphenated pattern for MCLK node names - Sashiko
- Resolve conflicts introduced by Glymur in CSI2 PHY binding
- Correct the spelling mistakes in cover letter and enhance commit
  description for compatible and CSIPHY
- Link to v17: https://lore.kernel.org/r/20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com

Changes in v17:
- Rebase due to CSIPHY re-arch dependencies merged - bod
- Remove redundant CSIPHY resources in CAMSS block
- Enhance the commit title description for CAMSS and CSIPHY blocks
- Collet RBs from Loic
- Link to v16: https://lore.kernel.org/r/20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com

Changes in v16:
- Remove RBs for binding, CSIPHY and CAMSS DT as tags stale due to
  split-CSIPHY re-arch - Krzysztof
- Update CAMSS bindings and driver support for the standalone CSI2 PHY
  provider and graph-based PHY lookup model - bod
- Add the CDM IOMMU stream and simplify CAMSS binding example part by
  removing redundant subnodes - bod
- Improve commit descriptions for CAMSS compatible, CSID, VFE, TPG
- Clarify the common-status-offset change with x1e80100 compatibility
  details and future SoC offset considerations
- Add Kaanapali camera DT descriptions, including CAMSS, six CSIPHYs,
  three CCI controllers, camera-control I2C, and MCLK pinctrl states
- Rename I2C and MCLK pinctrl nodes to include interface identifiers
- Link to v15: https://lore.kernel.org/r/20260720-kaanapali-camss-v15-0-c0b1c1167c5d@oss.qualcomm.com

Changes in v15:
- Add TPG v2.4.0 support
- Drive the CSIPHY through the standalone phy-qcom-mipi-csi2 DPHY
  driver, which let CAMSS csiphy_res only carry id, ops and formats
- Add a preparatory patch parametrising the PHY common status offset
- Add the mipi_csi2_dphy_3nm_kaanapali config and "qcom,kaanapali-csi2-phy"
  based on the new split-csiphy arch
- Link to v14: https://lore.kernel.org/r/20260601-kaanapali-camss-v14-0-e76f26aa6691@oss.qualcomm.com

Changes in v14:
- Define 'CSI2_RX_CFG0_PHY_SEL_BASE_IDX' locally in camss-csid-gen4.c - bod
- Align csiphy lane registers value capitalization and case rule for 2.4.0
- Rebase this series due to conflict - bod
- Link to v13: https://lore.kernel.org/r/20260508-kaanapali-camss-v13-0-2541d8e55651@oss.qualcomm.com

Changes in v13:
- Remove prerequisite dependencies that have been merged upstream
- Remove redundant empty 'regulators' initializers in csid and vfe  - bod
- Revert binding from full hardware description to CAMSS-only scope for
  modular and incremental development - bod
- Rename icc path names and vfe clock names to drop redundancies - Krzysztof
- Separate port index from VC value in csid_configure_stream(). Previously
  vc was used as both the loop iterator and the hardware VC, causing
  misconfiguration on RDI path starting from 1 - bod
- Link to v12: https://lore.kernel.org/all/20260112-kaanapali-camss-v12-0-15b7af73401e@oss.qualcomm.com/

Changes in v12:
- Add CSIPHY regulator current due to regulator interface changed - bod
- Link to v11: https://lore.kernel.org/r/20260112-kaanapali-camss-v11-0-81e4f59a5d08@oss.qualcomm.com

Changes in v11:
- Rebase this series due to conflict - bod
- Update binding commit message to align with previous generations
- Link to v10: https://lore.kernel.org/r/20251211-add-support-for-camss-on-kaanapali-v10-0-39e8874dcd27@oss.qualcomm.com

Changes in v10:
- Update interconnect and CX domain AXI clock names to be consistent with
  previous generations - bod
- Update the struct name for csiphy lane register settings to make it reusable
  for other compatible chipsets
- Updated power domain names to IFE for consistency - Krzysztof
- Add description for acronyms listed in binding commit message - Dmitry
- Link to v9: https://lore.kernel.org/r/20251208-add-support-for-camss-on-kaanapali-v9-0-3fcd31258415@oss.qualcomm.com

Changes in v9:
- Updates the names of some of the resources in DT bindings to be consistent
  with previous generations and improve the commit its message. The name
  changes are also applied to csiphy and vfe camss resource lists - bod
- Link to v8: https://lore.kernel.org/r/20251130-add-support-for-camss-on-kaanapali-v8-0-143a8265e6e8@oss.qualcomm.com

Changes in v8:
- Change csid and vfe driver file names as 'gen4' to reuse for other SOCs - bod
- Add missing register descriptions to binding and cover letter commit log - bod
- Link to v7: https://lore.kernel.org/r/20251120-add-support-for-camss-on-kaanapali-v7-0-de27f9a67ce6@oss.qualcomm.com

Changes in v7:
- Add ICP SYS registers to camss binding - bod
- Rename 'is_deferred' to 'reg_update_after_csid_config' to do rup/aup
  after csid config to make it clearer and simplify its call path - bod
- Remove unnecessary bitwise AND while configuring image address to bus- bod
- Tidy up a comment and a couple of hex values and csid/vfe - bod
- Link to v6: https://lore.kernel.org/r/20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com

Changes in v6:
- Modified the bindings to represent the whole of the camera hardware on
  KNP than just what is exercised by the CAMSS driver by extending the
  descriptions and the properties, the regs, clocks, interrupts, power
  domains, iommus etc. In addition, use the word 'vfe' everywhere in the
  bindings to be clear that all of those resources are referring to the
  same front end modules. - Krzysztof/bod
- Change camss vfe power domain names to align with the binding file
- Link to v5: https://lore.kernel.org/r/20251030-add-support-for-camss-on-kaanapali-v5-0-f8e12bea3d02@oss.qualcomm.com

Changes in v5:
- Refine v4 change log - Krzysztof
- Fix typo by removing redundant numerical version in kaanapali camss binding
  comment description - Krzysztof
- Add missing tags that should be posted with v4 revision - Krzysztof/Andi
- Link to v4: https://lore.kernel.org/r/20251028-add-support-for-camss-on-kaanapali-v4-0-7eb484c89585@oss.qualcomm.com

Changes in v4:
- Add detailed hardware descriptions and revise message title to follow the
  standard comment format for kaanapali camss binding file - Krzysztof
- Format kaanapali camss binding file to keep style consistency, by reverting
  power domain name from TFE to IFE and keeping clocks name order as last
  generation - Krzysztof
- Separate the 1.2 and 0.9 voltage supply DT flags for each CSIPHY to allow
  for arbitrary board design with common or unique supplies to each of the PHYs
  in kaanapali camss binding example, based on v2 comments - bod/Vladimir
- Link to v3: https://lore.kernel.org/r/20251023-add-support-for-camss-on-kaanapali-v3-0-02abc9a107bf@oss.qualcomm.com

Changes in v3:
- Use the name 'ahb' for 'cam_top_ahb' clock in cci binding file - Vladimir
- Reduce and simplify CSIPHY supply, port properties in camss bindings - Vladimir
- Resolve the dependency issues in the camss bindings file using ephemeral
  DT nodes - Vladimir/Dmitry
- Update hf mnoc name and bandwidth values for icc module - bod
- Split CSIPHY status macro changes into a separate patch series - bod
- Add clear functions for AUP/RUP update in csid and vfe for consistency - bod
- Clarify why the RUP and AUP register update process is deferred - bod
- Clarify the necessity to keep NRT clocks for vfe - Vijay
- Link to v2: https://lore.kernel.org/r/20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com

Changes in v2:
- Aggregate CSI2_RX_CFG0_PHY_SEL_BASE_IDX definition into 'camss-csid.h' - bod
- Remove 'camss-csid-1080.h' and use 'camss-csid-gen3.h' header instead - bod
- Remove redundant code in 'camss-csid-1080.c' and align the namespaces - bod
- Slipt 'camnoc_rt_axi' clock in vfe matching list into a single patch - bod
- Add whole vfe write engine client mappings in comment - bod
- Remove hardcoded image buffer number but use 'CAMSS_INIT_BUF_COUNT' - bod
- Remove SoC specific logic for vfe ops->reg_update and add a new variable
  to determine whether ops->reg_update is deferred or not - bod
- Add description to explain why 'qdss_debug_xo' should be retained - bod
- Add the procss node in csiphy register list comment - bod
- Rename the variable 'cmn_status_offset' to 'common_status_offset' and
  align this with macro in csiphy register structure to avoid ambiguity - bod
- Aggregate Kaanapali items into the definition that introduced by
  'qcom,qcm2290-cci' in cci binding file - Loic
- Format 'kaanpali-camss.yaml' binding file
- Link to v1: https://lore.kernel.org/r/20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com

---
Hangxiang Ma (13):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Kaanapali CSI2 PHY
      phy: qcom-mipi-csi2: Parametrise the common status register offset
      phy: qcom-mipi-csi2: Add Kaanapali support
      media: dt-bindings: Add CAMSS device for Kaanapali
      media: qcom: camss: Add Kaanapali compatible
      media: qcom: camss: csiphy: Add support for v2.4.0 two-phase CSIPHY
      media: qcom: camss: csid: Add support for CSID 1080
      media: qcom: camss: vfe: Add support for VFE 1080
      media: qcom: camss: tpg: Add support for v2.4.0 TPG
      arm64: dts: qcom: kaanapali: Add CAMSS and CSIPHY block definitions
      arm64: dts: qcom: kaanapali: Add CCI controller nodes
      arm64: dts: qcom: kaanapali: Add camera MCLK pinctrl
      arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5: Add DT overlay

 .../bindings/media/qcom,kaanapali-camss.yaml       | 303 ++++++++
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       |   4 +-
 arch/arm64/boot/dts/qcom/Makefile                  |   5 +
 .../boot/dts/qcom/kaanapali-mtp-camera-s5kjn5.dtso |  78 +++
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts         |   7 +
 arch/arm64/boot/dts/qcom/kaanapali.dtsi            | 761 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/Makefile         |   2 +
 .../media/platform/qcom/camss/camss-csid-1080.c    | 395 +++++++++++
 drivers/media/platform/qcom/camss/camss-csid.h     |   9 +-
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c |  23 +-
 drivers/media/platform/qcom/camss/camss-vfe-1080.c | 197 ++++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |   6 +-
 drivers/media/platform/qcom/camss/camss-vfe.h      |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 299 ++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c |  32 +-
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   2 +
 18 files changed, 2113 insertions(+), 14 deletions(-)
---
base-commit: c74ef2fbf60ff7e7b956c023a881e87502c1852a
change-id: 20260112-kaanapali-camss-73772d44eff7

Best regards,
--  
Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

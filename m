Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A57C7CD4F3C
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WzwXT7p2UXU3wsXzQ3KH0+vdbUpm04SlEr81MMUxgtc=; b=TmMcIUinHlIotI
	WLmImgJF/LePODnxUcq0ctAlsDkotq7bwHvoSyVHxZU/rK9yiM+Q5BCfY+JZUmTefBAO+vzZ9g9YO
	BCFLvH+AaqWMKwGckymuX9BHKzifgR+q3zlCDtE4olo/xZzDufNUFnzSq2QjoFp/gBPzJ44tq4Suv
	4pjprzYXzYgZPxmB6ATGAqhEesZneNBxIMMi1XJszOls4ZU7JrTFGgL37X8SmjyfNVcNz/Z8Q1kCW
	fEnMXAinitJnRmCQeuQwGBYB/+len3tL7DERX/7FbFyyg4ejdJVkoHrE6xjcwWtS8ZCH9GCFWTyYO
	ouBUP/sDHcs/iK/RCBtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDId-00000000EL0-0nwY;
	Tue, 19 May 2026 05:47:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIa-00000000EJA-0nkw
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:25 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J1LA1s2975393
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=RIl/QjTRUfNuNHrFs+lzTz
	ox5ub4IH4cARGRfY3jhdw=; b=eQEtp9bCG4Rctt9TxaCwpcPHzqcPDEPkt6O1lj
	nihoyLAY8G65wkQFtiF/HWqLX0pSPb826QSHJlICDT7GwJZqjds06plGwNe+pyMH
	vFUW1M49PZ+23ac7zgc0OvXqjEGDjcZHWMsDWieH92ZMwctj/B42cISmg26iAGuW
	jo8ouglL1T6BfRZCjqAzraxOsh8qmmXlyOmKKzJE33TZXalTpz4IxgBHoYlJL3YN
	WcWBHyV8c+WC/h0rJpqSxAnq/oDqKY2UuRaw3nOyvGDUFPnN60bd0dtKxmwtKt2B
	4w/DHvBLVD3DcEiknnh9QiqSulXdGm1/Ppv7096wxo3AzNxA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e84v4asjr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:22 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2f485961555so15871418eec.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169642; x=1779774442; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RIl/QjTRUfNuNHrFs+lzTzox5ub4IH4cARGRfY3jhdw=;
        b=TTeK+VKcZc2UZll4IHYIzfrgeWSujusxweh/CWNZL4p4YyZeS87cM22ppIRO45Asiv
         FSy/TYhE12rcHLAkRMatb8dS80afDDPfgQBrr9f+A3XzYVIUsWfVqqh+JkUi4Py10A2m
         oBZWkAioWdS25nUbOjJDjPiUPpnX35egcWKvGhUBTqx+U6Ji9CMd7PUkPNe1sBM1lSAR
         LrZOiOje/9ORh/o3ZZk/2gc1GkGtLp/076VnqVCmSkUWb6gLCUKbL8ZkZ9rPO0PJFV/4
         9EWwdASWkx7qEf91/snCfW6wx3VAfLj6elQOch4UEpq4+Sdss74ZPnhcqJNpiWIHZ0Xj
         mhwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169642; x=1779774442;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RIl/QjTRUfNuNHrFs+lzTzox5ub4IH4cARGRfY3jhdw=;
        b=fwn4Jk4uGvxLU/4VEz7Lfq+PhDEbhTDhSeWwj7JgjgCMfDh2cuQC0hcnIlnjzlGTEJ
         AXYpXpjUuMWEcs1ulEYGXQObug2Zm9PfHPbonuS3HjhbkvSsRxPgGhAAUl3OKOftmpbC
         cR2SlPQhxHT0XsRnO89XFmjFqxFYTKDDdalq/flxaJZlCg71ukks1iljYaaL5QmrZ+Kd
         XymbKqMCm2AWy5xAsTLOVmql67XXjtbEc0CJ2GW27t0SHSmDAAOfeRzhYxBCRRhPgrsA
         VyQUX1Cgha5OGk5YkAiuMHEx9hyjJ94uiv9PjDviPUVq2Hdn87MX+LYPPh3q3pyPi9IO
         x9Og==
X-Forwarded-Encrypted: i=1; AFNElJ8rxwlLKWDPoZgwBR2Ty6z3u378xPIfS/zBgth8iyFX5NzT3qm+uqTVRmT8iLOgrtSObMOvFqEmhRI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzYHmAkDofPlCMdiNafLJCfO6pghIH3UKXfuu9I4m9QsqW/qTy
	83BAQI4I+HsW5BEEhWi9L16ooWDUUQeDpXNFY/WMcEB9p/+lXYtcSodDxGcxEqiha/kEp77cfVy
	mu96/+DhTvLIb8XslXnn1nJq5q9wpWBjYcnsygwGvl/n3I0HfblA89jTGuF5yDMI7H04A
X-Gm-Gg: Acq92OFnMhbI7YNyMwIl8xx5Jtk8aBUwMuGWRyswAA/IfI0A2nSHBNnJjLehIdghlq0
	V+s+74Np+gmeM6XLx0UyKheounpgPJHuVak4ihRg/4YMU+Z/u8nKNYTzDSG3atIJZUcPhyMMOWx
	BvaDyUfR+8jQQh70EyEeX4WIV52OedsErB6r1AyD7O1Gc0TYEtcU4p2AA+TLqjC2llYI5V2CLrN
	xfA7WYR7soLOKVkUXceMjL2GphbxCmwakMIRsgl4WxEdLRUm7hovBqUpV3iNQKCELl6DeBaGoyr
	+q4uZr2FwdEPZYo5plnBP9zEFCoKZTKHnudntETMo1U9eGpcGs3+Mu4DeJ1IWszMFSeqjcLrwCd
	wVMEafdrbtBF8OIb4fFEaAxmcwtYOpZCHV5oJ6kvLRJO8FKgPSramIAvoK4VORfVin5NE
X-Received: by 2002:a05:7301:2c8a:b0:2f2:32bc:787d with SMTP id 5a478bee46e88-30398637044mr7603064eec.23.1779169641768;
        Mon, 18 May 2026 22:47:21 -0700 (PDT)
X-Received: by 2002:a05:7301:2c8a:b0:2f2:32bc:787d with SMTP id 5a478bee46e88-30398637044mr7603045eec.23.1779169641218;
        Mon, 18 May 2026 22:47:21 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:20 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH RFC v4 0/9] phy: qcom: qmp-pcie: Add link-mode based
 support for Glymur Gen5x8 PHY
Date: Mon, 18 May 2026 22:47:11 -0700
Message-Id: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAF/5C2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHQUlJIzE
 vPSU3UzU4B8JSMDIzMDU0ML3ZzMvOz43PyU1Hgg11LX3MDCxNIkOTXVKCVRCaipoCg1LbMCbGC
 0UpCbs1IsRLC4NCkrNbkEZBRUWVFqYSnQuhKI2tjaWgCv2FU7jAAAAA==
X-Change-ID: 20260518-link_mode_0519-708494cee2da
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=5263;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=AL+R7tcejSc17oERHvjpfVsvjomjIli7XDrAaoyWxNI=;
 b=5LnaFyZ6Hj3xMpKJv7wS389amXY+e+6Kx6IAgZS3GGYSuWHXzhVzNoezkYvui4vJNAgjJzQwq
 oeHvYWlOF8nBkvzRYcmrNY/nk3xOmNlND/MW0ZLUj6Gnoxm7RgyXqll
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=VJPtWdPX c=1 sm=1 tr=0 ts=6a0bf96a cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=mDV7jF4A4kZc2-CVMwwA:9 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: 8FESSDbD5PhiaGoaZ0hiKyd5Uo9wP0mg
X-Proofpoint-GUID: 8FESSDbD5PhiaGoaZ0hiKyd5Uo9wP0mg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfXwRpGISriCvxF
 M4QdNFrRBvyEy3TXz0Ey/28Ehsbbcz7/77hq1V45qaqNAUS0XxT9qMQRGq19RkxpPwucpZgiBWW
 RlRolmsSlmQKtDvmuUopxcgIqdcp92onaatsmAaCkRAVuIj6/Si5Oj3HXqMv6bfL4AYCxHi3WWk
 f2Mc7LUDiI7FGTxdzQopR0UiwQDv8bBXkUHvigxUaLw5KO//D2qCnDwZKbvkNVEy6tchqACea8t
 RcM+4lhgGY5fqYzSJNrOM/8ltzLj6SbJnT8yqSpcgfGYa3YniUyJl8w71FNHC/3wHzE5M+RSgSJ
 ZYs03vf54EGqtTAgoOid8+wiIOFare9CnHjcJVWL6U+6mEdMkwcWy+yhwEhhm8vAfnVfHvKRf2X
 epml3MDba5UmjTqts+Oe3cbjhWk4njjDXxvmBKfJ60FdO7TTD26+6k0LbwRMKJFp9rUSBtDbhVq
 RSdCT//X6SroBjZnmvQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224724_245262_1A4ECD50 
X-CRM114-Status: GOOD (  16.49  )
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

Hi all,

This RFC proposes a revised model for Glymur Gen5x8 PCIe PHY support.

On Glymur, PCIe3 uses one shared Gen5x8 QMP PHY hardware block that can
operate in different link topologies (x8 or x4+x4). The previous series
approach was not accepted, so this RFC reworks the design to better match
the hardware model and DT expectations.

This RFC focuses on the link-mode model and associated binding/API changes
while keeping prerequisite/independent patches separate.

What this RFC changes:

- Keep a single PHY provider node for the shared Gen5x8 hardware block.
- Select active topology on the provider side via `link-mode`.
- Use `#phy-cells = <1>` so consumers can pass logical PHY index to get
  different phy structure.
- Keep legacy (non-link-mode) platforms on the existing path.
- Validate mode consistency at probe:
  - if HW mode matches DT mode, continue;
  - if mismatch, allow only when selected mode has complete PHY setting
    tables for all logical PHYs; otherwise fail probe.
- Keep programming link-mode register during `power_on`, so DT-selected
  mode is re-applied when TCSR register may be reset after low-power mode.

Mode/cfg selection model:

- Introduce mode-indexed match data:
  - first dimension: `link_mode`
  - second dimension: `logical_phy_index`
- Effective lookup is:
    cfg = mode_cfgs[active_link_mode].cfgs[logical_phy_index]

This allows one shared provider to expose different logical PHY sets per
mode.

Impact:
- Keep existing qmp-pcie PHY operation flow (`phy_ops`) unchanged as much
  as possible.
- Constrain the new design mainly to cfg selection and provider/xlate
  wiring.
- Reuse existing init/power/reset flows with selected cfg, minimizing code
  churn and behavioral risk.
- This RFC is implemented and validated on Glymur Gen5x8, it is designed
  to be extensible to other multi-mode QMP PCIe PHYs, although additional
  platform-specific requirements may still be needed.

This series depends on a prerequisite patch by Krzysztof Kozlowski:
https://lore.kernel.org/r/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com

Thanks,
Qiang

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Changes in v4:
- Replaced the static bifurcation probe model with a link-mode
  architecture: the active topology (x8 or x4+x4) is selected via a
  new "qcom,link-mode" DT property and written to a TCSR register at
  power-on. This replaces v3 patches 4 and 5 with four new patches
  (driver refactor, secondary PHY clock/reset lists, link-mode probe
  infrastructure, and Glymur config).
- Updated dt-bindings to describe "qcom,link-mode", #phy-cells = <1>,
  per-mode validation rules, and added a new header with
  QMP_PHY_SELECTOR_* and QMP_PCIE_GLYMUR_MODE_* macros.
- Patches 2 and 3 (multiple power-domains, multiple nocsr resets) are
  unchanged from v3.
- Link to v3: https://lore.kernel.org/r/20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com

Changes in v3:
- Add description of each power-domain.
- Add 64bit prefetchable memory range required by some EPs eg. AI100 ultra.
- Move PCIe3a after PCIe3b and move PCIe3a PHY before PCIe3b PHY.
- Link to v2: https://lore.kernel.org/all/20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com/

Changes in v2:
- Remove pd_list from qmp_pcie struct as it is not used in phy driver.
- align clk-names on "
- Link to v1: https://lore.kernel.org/all/20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com/

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Qiang Yu (9):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add glymur-qmp-gen5x8-pcie-phy compatible
      dt-bindings: phy: qcom-qmp: Add PHY selector and Glymur link-mode macros
      phy: qcom: qmp-pcie: Add multiple power-domains support
      phy: qcom: qmp-pcie: Support multiple nocsr resets
      phy: qcom: qmp-pcie: Refactor pipe clk register and parse_dt helpers
      phy: qcom: qmp-pcie: Add clock and reset lists for secondary PHY selector
      phy: qcom: qmp-pcie: Add link-mode multi-PHY probe infrastructure
      phy: qcom: qmp-pcie: Add Glymur Gen5x8 PHY config and match data
      arm64: dts: qcom: glymur: Wire PCIe3a/3b to shared Gen5x8 PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 140 ++++-
 arch/arm64/boot/dts/qcom/glymur-crd.dtsi           |   5 +
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 333 ++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 631 ++++++++++++++++++---
 include/dt-bindings/phy/phy-qcom-qmp.h             |   8 +
 5 files changed, 1021 insertions(+), 96 deletions(-)
---
base-commit: 4359f733f8edf6be944b9f28ccb6a6c6e9a24aaa
change-id: 20260518-link_mode_0519-708494cee2da

Best regards,
--  
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

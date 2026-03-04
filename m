Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53245EB7EA7
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 08:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wTzLnXyQLRGjwmfZ+8GvYEgrHDwWh2PCv0AWgGgS1M=; b=ZaTI/vlYb4JmDo
	vY9UB91idGIjy0fqAN5UH1gZe/YlGTrlVlCfOUo1MmzEONU58AOwLxtKDrU8NMjouoHvaKY4/0E2r
	Gh4WgzSGd3xapQ74UzWYtL74oMtyYxuEHBGHKGBzgfU+gO0XJ0QkEWOd8OpcJkaV5/eQ9mEsF0pt6
	TFu1sKkMQFceYEIG5V4etC0pqK+thQwdjWXlvMyd/8UV2P9jHORpi6Lzg/olS8DVpNSvM3Aa/JfWC
	nlyJcg/z7c49UYvadci8+i3CdJ3kwxjfmijIGlMNCRPjc66aTYYeJQWUej0SPmnEKX137ycAdh9xI
	BQOjKgcSQQdEx5X2gLqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUg-0000000GjdT-0Gv1;
	Wed, 04 Mar 2026 08:22:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUf-0000000Gjcy-0iJE
	for linux-phy@bombadil.infradead.org;
	Wed, 04 Mar 2026 08:22:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=uIlZLMHi3cNBVLJWqwerj0OJ6veqEBRgHl80VQQ/teU=; b=BqwUoKPGdIXombBIvppMlpD1Bk
	rF3V4b9ei2Cu3VfZFy6bysurCYX9RKRHEz7hGybFCRneNN+nCasYPz82259kE9xt5rxMsYNmPX8mT
	3Tk8uKr8WqPVrEJuks9A3T1Ai4eoY9V1vxwlxu6Qe1S/Go+oq6ign1UQsQym/UQ2TRjkBVzsAus2k
	to8OxqTgWDAWOAg91u4AKpctU3DrVRdcTBLCeRvJtV7HrXVWUv6AFYn9FiP672mEP7xkAiGcAUT4b
	Kj1G+PHMqGoEJYHfIn6sdGn3xTElMbpcAx4IcQZUSZ0QoBKS4DfyIFuEmjNeL4Ym2putYA6LxaBpk
	eWaYWANw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUb-0000000478o-3jyc
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 08:22:08 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SMKG1072399
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 08:22:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uIlZLMHi3cNBVLJWqwerj0OJ6veqEBRgHl80VQQ/teU=; b=K6RxHpPyVlrE/x66
	Cxy3hR5OQqMFjWYo4DMEYlFSbJBdsuz4330BmVy3AtFKiBRoYzwWmBiicc1mnwDu
	rJsTdgZWW5qWCVbFnG4fmq3Fy/ewLcx/I/VEoefdrgPMQb/xUYHOGTmFLpO1kuy9
	9vNtxOBC65cpxTZrhNx9ViQl07GBP0c8UM/NfmMcYaiDwjUMw/yIco8/Dzd9dHR2
	HLco3woVAdlg748FrltbKEnSExVAvVql2NUfNhAFmhmPCQyzU8YKy65iuP+NKZjT
	4JHd32bGqGr1vi/A4KmaofjE/cCBnzcN54WHFIfwVLXFka7pA17eBenLposkrOlA
	JHL0Dw==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpcxfguus-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 08:22:01 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-67999892f00so129900642eaf.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 00:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612520; x=1773217320; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uIlZLMHi3cNBVLJWqwerj0OJ6veqEBRgHl80VQQ/teU=;
        b=bg9vjBm8sjq0NNRxY6odggdbCY5yvkyOB7/C5xRcQp20TS28wdMWS4ylbxebnpXHLZ
         buPIKzHsKo6/Cg9+m/d3+BDjNNYLbZy/8dyqHKkkmY5PMT2hgGykRsJP1N9Sg2oyE74x
         6uK+sjrIqYA7IqY4AUpz3T4YvHc31BTsfsxPPGs+9JBjmZuLDC5gjNlTpHY4UB0EiFK3
         nGQy3p4ttXpmonM1Qh5WlFrk5S0yoS5K/OXvRVP9Ytfu6uIw2rdAntmiF4s5SbazyGV8
         q1zEYbjl1SYcftbOdkNZbFcouWazYQD7JzBdNKn/dkSR8h22RpnMxnXqRxTwSff4145+
         8Eyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612520; x=1773217320;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uIlZLMHi3cNBVLJWqwerj0OJ6veqEBRgHl80VQQ/teU=;
        b=H9oJ6cL9lPFTG7IwPZLhk1PBNY6Ma22GxtIsLtUylwnSliqDkS3psEEFGQQdYSh3BW
         crgYQAGShHBiYaitLuMsHL4sMkQgMH72MCcmoSiXRIIMsiednhSXnlJkIDk5o6BnOOsH
         l+3q/hoQe6+B+Shf98K7Ejsoq7Zltyu95cK3Hrn2nXUiL1Xul42wNrrwXx5yfxRLBTPb
         C1/ufbIYiKxu3I78/c1Whe9pkF99aukWVSAPbksbspOMW5gto1/ihEmiVPlLyosCWTli
         ByhYR+BAIYp3wG19+hefiAQLQSDUVVVHuj9s9PvunX7FsYMMTcdn5hI8Jj+LmkSdqpOs
         Teew==
X-Forwarded-Encrypted: i=1; AJvYcCWDHFiTz94jPPIC9RszONuXCABS8j2QcNAR1/V4ODiwzuP3rL3/nMX2DmDWq6So2Ry8a0j7CAkHGcA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfkCTLD+OyzHHtzd7rDacdk9obQtSRoJfBeo71nb3jHF84SzKd
	8QDiTQZqV1BETPJd9G/NZu/jB0KQOuu2o8M3lRM9prxntv5pwu7yrQ4i2beb4WZNnMhWLB+1Bea
	dVdFZnXHD6PD+Qyt9I+qkyFrJxv49CzmgJLVz6R2pJp05RorMoNzF9duYvS4iPixgVkSD
X-Gm-Gg: ATEYQzyk6LI0J0iLDGvOfUbVoHT45AkUKStMdwQKbVqJgHYJB5vgp2oroXDvzOBz7t+
	AJQO6fQUDq/YOdJyJqjJrMfJFmD7ZsTAwhgYf6Tz0q7vNw5a4UYcUFL+eRp2irDq/BJDhCFqq1i
	XfiQRdVsDVgJxqQrAnvwXLhY3hwYkJ5mBYBxr28WomP7HjEaWsyop8i1fvyOrwQPaiXjnyT5ErB
	Jq7mIbiqGOMj3i3OOn8NejMqxtKIjceoNMMLnhMXmq5lgWzrK6tL3OrcOvZ89Ksak1AfXtmbOvx
	HVuDbWUvB1uEZ+q0DHOegDInGpfaW/8XqWGiaSa8FhDaGwd3OIDiCQid227JaCUnhU3fhoVq8Rc
	b6r7gfUJB9TWHGReakkkmtvzLzeZpJfBxQLgwjdgHUwurdBN9zHQUUmAVaBLnbo6adL/s
X-Received: by 2002:a05:6820:228e:b0:663:364:674f with SMTP id 006d021491bc7-67b176e9755mr800763eaf.1.1772612520503;
        Wed, 04 Mar 2026 00:22:00 -0800 (PST)
X-Received: by 2002:a05:6820:228e:b0:663:364:674f with SMTP id 006d021491bc7-67b176e9755mr800749eaf.1.1772612520151;
        Wed, 04 Mar 2026 00:22:00 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:21:59 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 00:21:56 -0800
Subject: [PATCH 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
MIME-Version: 1.0
Message-Id: <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612517; l=2482;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=J4iNJP7fooS2FBjy7epanSIk1L/eL4p/+6UyF/qZDag=;
 b=hXW7/3qZDw8ZcuCNj5DNMwpqd5gvzLVpDYhDMMiUziMx8Ux6j2NnYe10xoZtSisok7Uy9UoMu
 RzCC64PxoX0D2heExusm2P62gAB7wKXzv/jEJ9PDGpPsyaZSX4jt47u
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: A1atqjld7gGA5lV5Edo3RSZis2WOW7OE
X-Authority-Analysis: v=2.4 cv=R4gO2NRX c=1 sm=1 tr=0 ts=69a7eba9 cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=eu5IZVYEi8O4nexjJlAA:9 a=QEXdDO2ut3YA:10
 a=-UhsvdU3ccFDOXFxFb4l:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfXyrMzglb84ROW
 XdOXhPUco1/EB8ZL0yU/+jQCoJ21bJaZQ/FoJB97hUpP9pkJouEkF7he3SdC+xlI7jR3/5MC5Oi
 d5QMpeBORC5jktqmyQU/bln3PuW29yz1JAEBkn+D/vVjYkWlbjtMJQVhm1IVCfWmC9H9yVTsb5O
 lgbsQZkKBtynZYPVedfC0qFnuavt4D2imt13ISalNRTFhVff8Isu6HquTlOQkAwNdZu5oH+v9Z5
 suXukO1VJcvyJgJhNV7zjB9jo+zI/YWcXWwKk+0A8ZHaqVhVgHTXfOCyvs58zyF8N/w1dQ5oDoy
 JTmlcXp4YvZeiQoV76cYLNtDbfcn6JpMi/stxUWGatceou/Cyt/2WiDKEXdF2V9zQ+2bhlmeI6L
 YTSOdjkZqnPgJiAq6AFTc4in9qEKuqFTXUixMFGJ0EU3O2GiA0YYfutiAaDDiYrDw/x8FnqMvuH
 oNgww3qjjEUIRoDJQIg==
X-Proofpoint-GUID: A1atqjld7gGA5lV5Edo3RSZis2WOW7OE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_082206_456987_53AD61E6 
X-CRM114-Status: GOOD (  16.95  )
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

The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs in
a bifurcated configuration. Each PHY has its own power domain (phy_gdsc)
that must be powered on before initialization per hardware requirements.

Current PHY power management assumes a single power domain per PHY,
preventing proper setup for this dual-PHY scenario. Add support for
multiple power domains by using devm_pm_domain_attach_list() to attach
power domains manually, while maintaining compatibility with single
power domain PHYs.

Enable runtime PM to allow power domain control when the PCIe driver
calls phy_power_on/phy_power_off:

- Single power domain: QMP PHY platform device directly attaches to
  power domain and controls it during runtime resume/suspend
- Multiple power domains: devm_pm_domain_attach_list() creates virtual
  devices as power domain suppliers, linked to the QMP PHY platform
  device as consumer

This ensures power domains are properly attached and turned on/off
for both single and multiple power domain configurations.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fed2fc9bb31108d51f88d34f3379c7744681f485..7369c291be51aa1ad7a330459dcb857f5a1988f6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -17,6 +17,7 @@
 #include <linux/phy/pcie.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
@@ -3334,6 +3335,8 @@ struct qmp_pcie {
 
 	struct clk_fixed_rate pipe_clk_fixed;
 	struct clk_fixed_rate aux_clk_fixed;
+
+	struct dev_pm_domain_list *pd_list;
 };
 
 static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
@@ -5348,6 +5351,16 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
 	WARN_ON_ONCE(!qmp->cfg->phy_status);
 
+	ret = devm_pm_domain_attach_list(dev, NULL, &qmp->pd_list);
+	if (ret < 0 && ret != -EEXIST) {
+		dev_err(dev, "Failed to attach power domain\n");
+		return ret;
+	}
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
 	ret = qmp_pcie_clk_init(qmp);
 	if (ret)
 		return ret;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9044BEBFD02
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 06:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OG1mY54wpHoG2GenN6k/zJKSznzUU6idIki1lO/f2ds=; b=UNBzzkw4nnYHE/
	Giie5XA+m55lD65db7Ov8txsujv3BKlzdRDth50czYx4hmQj6c2VwXkAkThFxypteRt9fqTxe+UJW
	NRNUU3v8JtKMlt3+kA71n3WAdrsPXQJYUrn7+GiVpnLlQIilZLFp7/YY3CIn4kxdtKU02fdRGoOQ3
	V/PHljGVM6Ewm6D/TKOlid14O24+WmtuBLzpdSgf9DaLX/wfn+qpchRbC4WxCyG9HmyUGoCHEm9ZU
	He5EppuKjOoUPKTSywIvPBeDgovZyA4wIDLBfMRh0hELHpjGGoY6nRxgb+HaFPSPNI+52Gj+RVvmV
	t8Kzd1fIMJJPF3GTDySw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAka-0000000F4mG-1Mfz;
	Mon, 13 Apr 2026 06:26:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkX-0000000F4kV-444g
	for linux-phy@lists.infradead.org;
	Mon, 13 Apr 2026 06:26:23 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63D5WdE82532200
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Le29xCZV1ZgyaYyiM/bMz3/EFr3qGhovELMUCsNM1sE=; b=VwksyroCd/hL84vz
	r9VH6GJsr+u4eyUE4i4TV7xJGRmI6xmDcgKKGRoOd2QG0ZjbSpjywjsBEzSvei/T
	8ioW2NL7yyeiChKOQIXAeKUbVsZXiunAYIDNxhhEDpLTD9CeXqqGjY3QQHFLpaCa
	HH0Uy3IbRx/xIw1ncn79AE/QTXeNAOD8gHmnwnhOYyJ2zzKN0zJufBTabrKw8mm1
	ru43pPelq+rldv2dabI3L6pB84TmG4fxHxK2tTL1CN0aIPYgIqKv9m2Lhd09+gl4
	n1mKcIjcjpODX1YGyNvUN4CrwRu6XiK8tZB/4N8rhz/xPk3CX8uhERnPxEyOYZ20
	BHJPag==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dfeyyv1bf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:21 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2d8a677cdfaso874954eec.1
        for <linux-phy@lists.infradead.org>; Sun, 12 Apr 2026 23:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776061581; x=1776666381; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Le29xCZV1ZgyaYyiM/bMz3/EFr3qGhovELMUCsNM1sE=;
        b=HobiJu8Oz4rDmvALYkkeW1To2Elq6GTJvzeG6xpWcFxHKiSLHnzi6L1FaQtPgj/Xq7
         kq+mN9drlasB5ANEPGnFh4neYKX0qhgtj7uEuUcJZIy4CiG08OENPZB2YQ7gIAMmY1Q/
         ggdsnI7/Xbul+Xp7WCp+lOknp81rpnm7p8BFugLGj9YAPJJs2ETRgpnTo4QTvTuGuR+j
         SJYrCMJ9N0PjRdHKBhO33HuKRC4WED5jSZfMPsaM6zh621t/1LIE32mrMwJd5aNzqK7g
         xN4fx2aFis44bJHPClqA/Frgt/7vVNFPl/Fkchzjy+syOuDMQsi88ng388dUf1azLDXZ
         EbfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776061581; x=1776666381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Le29xCZV1ZgyaYyiM/bMz3/EFr3qGhovELMUCsNM1sE=;
        b=rlk8Wy3XnMR7+gQ4/Jqp9cuGCGtFXnMHH3ZOo1HRXkXm0Cv7hyHGYmDaRP/aR3gHeX
         hMDv4+sThZG53/Xz3ix4GNMBGUzuRpvMaEpm9ngEpFScwicK/szcMOUfS0CGFhMWdTGV
         ml/2xRrZ3XRWsGz4Tn7WaD9PvlSd/ooiuB3LPrqUJz4pmNOYlIa2IIrBzHGSRC3TSvBW
         wS5wp+zcVzlH7NLd5gNiITl3f3IrALE+O85b5vTE5RVd2II/l2skoyWd1/VqEblTABPl
         y4jp4gWK9XozmYMVLyQBfRDGCBkp5+pCAyd4EiBRx75nqAD+ZHTFdATdO4P8IpB6Koqo
         ee1Q==
X-Forwarded-Encrypted: i=1; AFNElJ84/QIZnpnF6Jo/5Jsz8RSlNtmcER6RNCp+dAkbrKyNyMFdy9F/YEOlLj9a+kglhiANb1c46JoM+YE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCI7uk8kF0jUXLOlzNOudXWVg586XsXA3gjfJiXl8mIw6dUTtI
	kj5//qXFOtQQ5h3nTfWMP3uIwMHAIed23MkXoHZeBA36+iETXck1IuBdsdM3l4fcGGkd4vJxztW
	l5k4DB6bqVGysOML40Mt5K7OiRT5woecCecYZqkoZwCG/2dPf7lDw3MJzDOsjCjnkyfWq
X-Gm-Gg: AeBDiesgnjLnm5Yk0LfSY53V2sAZOnGBcd7KFyXZIIVnNn7Nq+SVugSoPBXJbYGmVw1
	uhDw6QxllMvJ8A46Y2+FHy4jNytSUxX5xAVO0j2HSTVufKw9f1YRxnCDn6kglpt74FNXyzJFzB2
	CheR2y+CA72JzPvK+wZDUGyhtRipr0Fk3ngihrcbYZcLvCiNy8G1bCuWm9osrEGSorcgM5HfG8N
	uykvAd5LIyO7uEBYSnG8HfyI92QFK3k9aKD8J0x5GMOeCk20wQg7bt3kJt535gTuFoj7cHGNsed
	1hBkTrwHniZ/fcQs20ACYhivsofeollF4VouC76I7SNM8FM1HDSRCrKXSN0l4789BHRZe9bqiEd
	jmTPeIlpLY6a4+LRWz2NxYl4E827NAA+YO1Oxrbf0nPQhaW3BKwXlch+GDPpXErVSS6Dk
X-Received: by 2002:a05:7300:220d:b0:2c1:6676:5ed6 with SMTP id 5a478bee46e88-2d589669863mr5936236eec.25.1776061580832;
        Sun, 12 Apr 2026 23:26:20 -0700 (PDT)
X-Received: by 2002:a05:7300:220d:b0:2c1:6676:5ed6 with SMTP id 5a478bee46e88-2d589669863mr5936224eec.25.1776061580282;
        Sun, 12 Apr 2026 23:26:20 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2d561cd3138sm15260935eec.14.2026.04.12.23.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 23:26:19 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Sun, 12 Apr 2026 23:25:57 -0700
Subject: [PATCH v3 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
MIME-Version: 1.0
Message-Id: <20260412-glymur_gen5x8_phy_0413-v3-2-affcebc16b8b@oss.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
In-Reply-To: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776061577; l=2571;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=WuxD6kGdL+V30CDieIdjcJTNov5dAUcLLKr/2N6fJU4=;
 b=oIeAAqEG9SEUZcNaYwhRdKHtYtS+diUCf/WWHL1ZhagoSPXt4BK35q/TEcJmwzjJWYyfJOvuO
 R/LkzvwtIECDN9YfRwvv8LAB50WN4CywYm/PTyFq8z4kB1rhRXMUaJr
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: a20NrbXp1ES_z7zgZrDoHKOTqhMoy48F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDA2MCBTYWx0ZWRfXzhgZfnrQfnxb
 h1s+2azQtsztBN4iljelUPScE5rlMNojgAxJhbdazctXNb3qlWP/7ZbRl3W7KZZaiG/t+7s0wM2
 Ww5eQL5IFXUTy15VgTuFekUfG4bXRrQaB2KkMBsawpPTgLTJnApgRSnLtwcE1Yu8Sdoc/nTJKD0
 Qz9dLJqFJVxXtC1WFAnnlyE6MDrVvpuztjh5DJah1dBe1bMAAf0y6Gb1jK2VRuQGh+lvUdLueBj
 vjs7+DFgH2TYWezGwM996RqEi8Xe/ybvXfM44T54jn0+r/qnhpqSom+0Ktvbg5C5zIBT65EuRir
 9khRUP79WjKl29bfbSRtPi3zuJHiXLdRX7qyfSrDs+gKHl73F59meTwCKH0lwJLN6SeWreZB5Or
 qYa7fCdhw/FF7D5sA9dV42uKZf4M8glKxOhb8XF/wP1hVwaTqiM6XdJMVpRlFKPUZeJWPg07uAN
 ZGZ6LZwlnYygot71oTQ==
X-Authority-Analysis: v=2.4 cv=FPQrAeos c=1 sm=1 tr=0 ts=69dc8c8d cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=eu5IZVYEi8O4nexjJlAA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: a20NrbXp1ES_z7zgZrDoHKOTqhMoy48F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_02,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604130060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_232622_024201_2F0B9D2C 
X-CRM114-Status: GOOD (  16.00  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fed2fc9bb31108d51f88d34f3379c7744681f485..424c935e27a8766e1e26762bd3d7df527c1520e3 100644
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
@@ -5329,6 +5330,7 @@ static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
 
 static int qmp_pcie_probe(struct platform_device *pdev)
 {
+	struct dev_pm_domain_list *pd_list;
 	struct device *dev = &pdev->dev;
 	struct phy_provider *phy_provider;
 	struct device_node *np;
@@ -5348,6 +5350,16 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
 	WARN_ON_ONCE(!qmp->cfg->phy_status);
 
+	ret = devm_pm_domain_attach_list(dev, NULL, &pd_list);
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

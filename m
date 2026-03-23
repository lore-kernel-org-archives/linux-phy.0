Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C097BFC72C8
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 07:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbDo6AL77A2iDZu6YW/Evl1/LvndJB23+vurXycM03I=; b=PwRKgJaHUgc5no
	mMc6hfobPS0GtHFsuNrGGGk5/58L19gyyfxAAjipcoSIXDQ+vCrXthid/8REbQV0TPYDcKfuqg3an
	wRkFOAGctuSU61yoIlumKptavuES+uNbxqCtVukV3K9kCDmIA2SilVgW5smUsfv2ymsKriibfXNka
	8vmd5tZobW8DFCqx4Sn6jRPP+VxAFHQV8D7B+ivKZKyldnsO5i58MK4BNg4S+SeOPoNj2N2tpvUaA
	AQjN7c5nMx40C9uMDOiZL8PBhtqhN2k2cqZbQjFz1qNXOzxl12RBU6mXHNtlvKhoAaW+tkhJ3+ctH
	QdRdZ6DvaK8mLkIuARSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVm-0000000GAsQ-25Do;
	Mon, 23 Mar 2026 07:15:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVh-0000000GAp0-3U0L
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 07:15:39 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62N6nvUP2044226
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BJhpV2AzAumJm8pTjJTWL4q0sS8IJpLGwzEITJtHskk=; b=CvKSK86UrjlaEy7p
	1wXtadtBUHR4UVZCwgtD39vKozOQTaWoBKxn4NL0XVIr6c3tfYXArsyJjbCdYGKa
	CVa4qU7DsY5E0vHaICrU0pdbXMp06V/OeTXDvYV+cN5V6ZugadQFtMCnj+dxN49N
	vdpsxC0FoLTVlojzPcTxERiKx+LeDVK/vRk8MKrZFBd13j3X3emGHB4P4B/tyFRB
	0i9xrVe0vnrEp8tNiA655PaODGJyCCtv+XZmGwjJiwmiGNIwC98k/CfonILSCbbk
	zZxBItXP1PZKmThS//5fEWA9DDI5XR2ufY9Qx0EMYnsSFCXestYsW5j0YZI3Lj7+
	y5sOvQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1jb5mb1y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:36 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2c0bddb9196so2214427eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 00:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774250136; x=1774854936; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BJhpV2AzAumJm8pTjJTWL4q0sS8IJpLGwzEITJtHskk=;
        b=F+q2nTAlNUOhoBcwttmq0iTQk7jwNJMQYzGX+f/8L+c0qnmsOuPaY4kVFVNY7jH5Ci
         Ayx2wDIbmFQroD46QVUxsv5FhT9PDUlIymyu/QVsTGPwTq+axWYW4Znu54U2ASCvhwWx
         VBeII0g4UEzeDQdAZ5686nSi5CPAD2CBntOOXK4crb1o6Gz+PnTe/P3J26o7xth08QK4
         EfHFoH6GaZ+n6i34d4zSJDy15qCIDNHp0PvaqRHn9NB0H+BAsUlrq+KIBpb7IcsWNSKo
         0t71/ip9GQVuyrnxkab+ejYL8bak+H5NEI1iXbmOmj3RJSlFHLKyvSoglLL5M9nlQiYX
         qy8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774250136; x=1774854936;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BJhpV2AzAumJm8pTjJTWL4q0sS8IJpLGwzEITJtHskk=;
        b=nLgBHPOnwg2J6cPdklk6eSFqjh5R61KuF/m+WkJ6fx0zlYTyOJWiaafok5w1VVCmee
         LbawCvYq44jhMEMmkysb6V08RBvWwsyzufAO2dTTDom0zdzHLSr5YkHDrxhgJxQ+Nv4+
         g9FoVK5ZpGYodF2Fe7ykbG8dSQv1bGtfU/aQ1wJ2xpTskPYsVPt02GpbdBGcDgKUnypn
         XVq4pvYikkjIV5IvBDJ/LDRFYWVhgfl1FRH/+qcMgNVwtaDQ79RSIJDfMsm8vqWC/yiv
         5/k0ORBjG2Rn8pM9OqsyKjBtqpU6jqRvepnWIsoHrROorrpCgbAE0UYCkJTeoxhASMU9
         jQSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzN3yRRz61HvkP6d5ayoYr+vQwVOdYwgnULEIYHAbub5dAB+n778OinMIi5onKQs8dSj7IElu5+aE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/kkGHSYa0uryfvcTzr3S2wg+YVaAMWit4PN9DhEfKkAzX5jwq
	66DaQuIj7sVj3NwnzlJYB6BwJDhvqgkBgUIpZDRJddHDkqRlDqkR7hDJNfP1ZLBZ10wdjm2MWtv
	brAqqCH9VfxiMVh0y9aAAgCKG3t9JSfD8LxoOXpTrSs11bf2YGHPlqoSA+CHq8HTIpAol
X-Gm-Gg: ATEYQzzDqPUNaYOy8wxUtQDhSNzi75WNBUIJUIQzmc0Cpau+91NtyYnG1NvMW3Zqd/4
	zBD6o44pjuU8XlW3beOZcT1+hupJ9loSzgJ/f+/Ql4OR80ay4Xqrhin7Q64Atw0205CTsQA5INl
	9MQ6WeGiIMj5fkUs7VMl2vN/lP6anXUbQ+siRxdDz/OVS4JI2DNtG+GUn8grCPWMGnd/3RJOMNN
	w1W8p7f08EFERHAStcHySKG+bgEIFI8VB4m4mo3T0C6fA+Ov4hHbOh6joG3t33d+gOcnKv1IG7Z
	kgu9zxVJaJH+5AZ/cZ4/YJny04XTLZwmhJk5Qfh19bRdQnwiRq62y5K36FDOjT3XDdmKZ9trY61
	bcGXfF1aM9vQrYHJOJx6shef+wbUU1Rj/T1BYejgPvOeej33SRKyvzcQ7kc++46w5XeKq
X-Received: by 2002:a05:7301:3f07:b0:2b7:fdb6:ccf6 with SMTP id 5a478bee46e88-2c1095fb80fmr4975767eec.14.1774250135754;
        Mon, 23 Mar 2026 00:15:35 -0700 (PDT)
X-Received: by 2002:a05:7301:3f07:b0:2b7:fdb6:ccf6 with SMTP id 5a478bee46e88-2c1095fb80fmr4975754eec.14.1774250135214;
        Mon, 23 Mar 2026 00:15:35 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b14cadbsm13997886eec.3.2026.03.23.00.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 00:15:34 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 23 Mar 2026 00:15:29 -0700
Subject: [PATCH v2 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
MIME-Version: 1.0
Message-Id: <20260323-glymur_gen5x8_phy_0323-v2-2-ce0fc07f0e52@oss.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774250130; l=2504;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=1kVB09tNu2L/JXEZO/ToUYxEMkDFaHUqjJ74Zd0YDCI=;
 b=MtfPg0/WzxcccrnkITZarstr4an0FSrB3GYefYIOIEx+XcVZGCq+zCV0mtEnRv7BQn+FRSU+K
 EOPre4HDVu3AdlWQAR9PHbVlaBLIqW/krj80b7m5CZdbEa6mP2H3cyq
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=aJv9aL9m c=1 sm=1 tr=0 ts=69c0e898 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=eu5IZVYEi8O4nexjJlAA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: nJHfhOwbe3TXjjFevU-z-Ku3vxhbF_97
X-Proofpoint-ORIG-GUID: nJHfhOwbe3TXjjFevU-z-Ku3vxhbF_97
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDA1NCBTYWx0ZWRfX5QVvpnfLNymm
 EfT8aFzw79Gn1atMfEzAovoFJANdFSTmzavd3DOfLAUnvbVbuW571MEoL/+aY5CZTSBcD7FMgzV
 y52gCpfsfpoChWtWnMycOWwjboM8juTW63tSgZJEf/2qikVvmzZORhnfcVPMV/3lFK2JgWXF1z+
 nJdaiGSPRsbz1dju1AUu6559d7FV83qPKBXpQmOuc1jU1hHYOsvl32ATJ70OEWVTc2CHtZZNTBP
 phD3C9mvM5lQC+XI9hGh27E/Uy1xQR0cCjjBnR9ncViMW9YCuVrtar82seaEzDEhluoEuSdpj1v
 Na4MWY5Uil3u/H8yFwIykY2xGPoK9Fb0uTQtrfTCP2NEzLInKprrbVsXJQ3/66BhNO5LoAoDhzK
 0dC6MKBM2F6HcObtjVJBJEqCjU2InnhYHxi4sVYbsIngVMXbBEg/G1GMGTdmTpabBaT5HVgDnbp
 46m74z+Q5R+zAMtzHvg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_02,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_001538_024221_4A288F3C 
X-CRM114-Status: GOOD (  17.02  )
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

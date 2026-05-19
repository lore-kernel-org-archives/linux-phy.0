Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC074CD5BAA
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lx9Lo/IOIiWME4ZtcWIzLdiwGAnfv3lbX6VzkCn0GQg=; b=JjDoQltwqEAehi
	8FToehwP/rrCQ9BAZY+M2Zjrb0W/MFattfQ816ZJcuqf3UiKrl/+t6nJDyqTA2j2WipDaJhTy0Uud
	uU7HcM5twzN+2wgTQEX3TvL+2qeulNBrmCQZjMCd3NGhDJwshOtvcfiakbp43fgXOXKACfdTCNdTG
	O7u/wpSGqdHPW/jCHMuigSW4dT1zFSCaPlt+Ips+3AGta785JIiQcOihqayrAmbh3l4SodwYEniil
	/jlnydRvr651zP23xPNKwTjTYNwCQatHWIsTDKeFTZAvOEhXLpxscL4x9pHdbex0SKja7WFwXyAX4
	5psv20a3mFL5Mbb8MJZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIf-00000000EN8-1ISo;
	Tue, 19 May 2026 05:47:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIb-00000000EK4-20YP
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:26 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J1RQPc1146343
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VtTEoJrQ863EpCklHl4K1iMrE0nExfGouoieBxC+FJQ=; b=TFmMaIpgIHCHlj76
	I0rUJqlAyXopxTRYDAEq5fKY0sFK6UewYqji5/nPpx299GNXsqYq+E0oKtXUMa/6
	Vx/NOv4nBb7p1RH/BT0JVke0kaywynB4o1kr30DqV5Vew0MzE9Ux5j0oCbARzY1A
	07uHuvfIq2GonIkALsyhpU/5dJqsltqRI0l9dNpXo2T9vXylBw0cfOyd39kvlruK
	ef3kAzailOmypjGuroSYTlyVSSmL2e7FnPmEE0JLsAcSq4C5bjo2Xxv3MElnKGbl
	UbfcVx4yxAncwEglHUUs4+OFuKr9O9III6e4gMxImlJqDnTlVzl04Y+TqCaLZEi5
	5gXYBA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e8e7egsyu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:25 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2fe1cf409a1so6106927eec.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169644; x=1779774444; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VtTEoJrQ863EpCklHl4K1iMrE0nExfGouoieBxC+FJQ=;
        b=AgQA5A4IkGJffY7ZkefnUK8JK0p74seE9ieb53gepU5X3YM1BqXpEp6g93C/8agHCm
         portUYxm1mpeK2Tv45JJmXDkNniAVPRO0S+MER9rQAtb1IgVzDq5b7gNOlvDC/XGv/uD
         mfaHYShImfX7Pu9/TKZQraLs3rL1Qi7NR3vbWSXYl+J79g8rW2nINUiHKv0zu/slxVG/
         IC1ZIsd5PGCEAzDtuzmkVmlmE+0b5GBnW4PVm8M8QSYbKJNIqhIL7dBJ2KAB/rQe03Xq
         AowBFS9/0lH6zNk7hMOEE7Cqz+fYyc7z3PE+WDG8BC+Mk1NcxdGXNGF71Y91gDRBWKHu
         ZlWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169644; x=1779774444;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VtTEoJrQ863EpCklHl4K1iMrE0nExfGouoieBxC+FJQ=;
        b=EMDRciRrCDCtgJJT3NyWLZIyc/0+ORRp83xEHxics5D1KXtjGSwIIBmoLdJ1XLZU+m
         m3OFP4aB/OKu85ni4pFfX/MNuFVr9DPK6sdwREe0KG+/wcLj2ijF9pIy4yJrQtSpFtCa
         NMUHxRdN4l19g0reBk8u0HaiIC8sanI01UDgNu59L/h2cqHUnrT0Ptji3bJVpSmhPYu4
         8YH2tRpXxBfcaKwzNiA2laC6cZpo+N+23CkUxmZFMGwpuSkcNdQB/fqWILrRlCg6UgnY
         0/e8J4PjuZ5ef2vAVmmvPqdvrFQnzg7z+M/bJhaC1Pd95xevNDyAyUJaJE4PacLgJtqD
         ZIDg==
X-Forwarded-Encrypted: i=1; AFNElJ+eBCLrZfuXRUp2k3Nvwk7ZrMTO3rZ9juiSi00mpY+7tvaUeUj3T6twafX1BCZxDX5GzXHeHZCP86Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoYlwFlD6m0zFk1adCGt3ewwiYuHvrWMxsdFajse967tCa+10t
	e0d90oIGoF1VHUMTj304wVJIc056qJ5JKj8kREdVuYo2muE9/qbONKT9WO3nPToZVIn/9x5VcOy
	WaFXZwQqCjbiE4dRVR7grLLepNhcYBu0cDGdRb05gPN509sYAIx7C1IJTFdt1SvZva8+A
X-Gm-Gg: Acq92OEWWGnLCshIGL2/XyUdOoVJ25YGSQb5v5e0nSJk8TuIHnrR1JG3Iz4JXUV23LZ
	hT4yjmPYPf0y5uuZAzRDolTvudYdjGqq/RgZBGe7kaoT7jw5BPdNxOUnsCyHoFraQLSJaqxGD1p
	lxWE1ngRlnIOLlWyRRuN7EaBtiXganP+men4fLnTYdgBWCni1vlQlFbMZ1PURxyTBieIFcKZOlG
	9tN29DbCzdSfKTEO2g1CW0odER5b2tD7YC5zXJ/akPjvwfAykCcXQji7tEkJVaTC/+DXPW77EFS
	/1I+qA7XKUMuj4KDbaVos6LQSNiwYzOAOOssCEpdBqwvks0CToJNN/hjbWY/Av24ZHu5ojyug6j
	6QyQMDLddVLDu73wecHPdPrFI+MgLy+9rfu0zxag0tCmFSzORJ49tVI5sXc0rlGvEt6FIHL6AuY
	oYRQY=
X-Received: by 2002:a05:693c:2b0e:b0:2dd:2ad3:f799 with SMTP id 5a478bee46e88-303982ac821mr6840952eec.9.1779169644392;
        Mon, 18 May 2026 22:47:24 -0700 (PDT)
X-Received: by 2002:a05:693c:2b0e:b0:2dd:2ad3:f799 with SMTP id 5a478bee46e88-303982ac821mr6840937eec.9.1779169643852;
        Mon, 18 May 2026 22:47:23 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:23 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:14 -0700
Subject: [PATCH RFC v4 3/9] phy: qcom: qmp-pcie: Add multiple power-domains
 support
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-3-269cd73cc5d1@oss.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=2515;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=0SfbZYNjk789aGYvSOXe+aw7DeVeyc7Kx10vw0KqrQw=;
 b=BO2RmfNFHbFIq1KEG1dO+4zWeOtGTTNbu/g4DipyMdJHGlwMB3onbNYR2YE0WyW5uigCUblZp
 mF6GK6wBoVLDmAnjOHt5c1QsCtCGbDlQ6NZBx1r0rE0ZjBjpKqDDYUp
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=Rt316imK c=1 sm=1 tr=0 ts=6a0bf96d cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=eu5IZVYEi8O4nexjJlAA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: xfA3NL6_7knq07nuS9ve5HaHqxqCY_kI
X-Proofpoint-GUID: xfA3NL6_7knq07nuS9ve5HaHqxqCY_kI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfX+scZ/P8b/0+F
 rqRVuyBw3ECUeTMq+fx0TD07P1BAPvYPjfhr7bd1oFRTxgXmNMi8cFSjQiz9H3WnunFQBuzZKtF
 gBCBMfhYb/1NGtRDT6Mr9RV1FjUUvQ6Y9HNjd5MFuLpnUyJdg8GkKwj/6KEewHTX2Z9HxdluxTj
 Ypxig/4hXGTE8ljz8XSoIawcOHdbroqa4ddOfueYr4RIj03PD/7JyVc4JD9w0uFXgrOi94JsBAc
 PdMfioV/+qxMbsrLlWzXEI5GkwGqJDBLzJw1JwaB4AN31YENs+rheqeOQLPROmidVjl7zzI0/FT
 nn3A3gwvRv8SOplqfIhxIlBO1Pz+xxyNtQ34UAdPVG+wjwJaLcwh5VjaPTKgskDrc06t2AWq5sV
 tc4lr0ixVlSyTB/Jmzku3lP+Nry8moMhxRYkeNEh7K2SOcHE3bH+oB0lQs27z+EGDMviHLxBVY1
 P+IL7+mfV3ttFwMN1bg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224725_524236_9827985C 
X-CRM114-Status: GOOD (  16.79  )
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
index 75afbd15aaf4..832b5d93105b 100644
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

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFBD3CD5BAB
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYQxY3lO7fvYy+aQnM19jZmhZbX9i8zOh4lR3/iJ1jk=; b=FyopADCQz8bs59
	3T5X08crohC+Blibp84U5X1SU8nDydUP19lCn2DH3i1sfVOBt+cQYYzgt8gFEGKSXvVP7eSs7DOFw
	xX8QlWcMqDI9gXm+f4EUovRBcK1sfNNlpnzxcLcjijN0JBgHnh/V5U5jFCPOPGYB8Rddd8/eRPT8Z
	59m3UU3iotj9O8W2XFwoemQLansjdcHIYThob9c2ueTFz40RNDmkBKnaXUMNHyn+DaintLCC+MiwR
	a26nq+W2TQAd+PHIdvF3q3zbI9dv/2RLl5fXYyMVEV29wC4+JY8mv/Yvd+2A+OD2RvPdsRfSFiJRE
	3N+y4YfrL8qGtoRMUxEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIf-00000000ENW-1ds7;
	Tue, 19 May 2026 05:47:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDId-00000000ELE-2FMC
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:28 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IM7IfM2892690
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P5B1VrBCZnVKjjIU3TaDRNw/BnDir7OFUrpirZ5gPu8=; b=gkRnk846rzCIkExj
	s0v+5HaktDA1pg0paPZD5FI5hLgM4E33gUQmnvskFjG/GxAsXJiRc/LxNjfR81LJ
	qN3l5poLWdI0p4/5DGg2m6UfG0CtBJa11MqW6OWED+bYOIqUbFcoQrz/qHeUChuL
	dwIVsdJ9RfAIGSWIxm3WswngL3h723JS8jqgIiqq09/yzedtb2XpiSliRT2OOJfC
	+yjcdhvg1l74W2aG1Yobxa1amTtKoRuL1gT45G4Ha35Urevo6YGuFPN5e2IRWBmr
	LgTWXlKGeIEVKeoelIcCJLv7kpOBsU3rSdhxaBwfNtC21Rt57g9AuKWuLOk7PDy/
	knH/JA==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e7xk1ckw2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:27 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-135916eefa0so14544217c88.1
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169646; x=1779774446; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P5B1VrBCZnVKjjIU3TaDRNw/BnDir7OFUrpirZ5gPu8=;
        b=IHZKCEGSvHSkPnl8qxc8tmRIF789UUw1qOVS31NEYN87sLZF2MxIggyFPeu5A+4hgO
         phYhF3UiZGyPNxxloJKYzL//O/ESrg/f6qtjIUfC2ujVEG9l9mjzmQaywwul/MWOtVgH
         bkILaj+eUUbBWyfmwOkoPPYcAI0qVUg15j4GSBLK54mA0f7QZBV4F2nyTBrV8WUmk4kU
         sPexYagb5uQ9AnFJNPfHv6VfYyELyuG4cn5hOUQ/4440MucvNIAVTNoMTGOOkt1ZyVn3
         rKMBrCLEqGmX8UGDqTbBokSrKVJ68+QylWdXwopPNQiqUbvKo5PihhXOWOnT4F5AzQeR
         dePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169646; x=1779774446;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P5B1VrBCZnVKjjIU3TaDRNw/BnDir7OFUrpirZ5gPu8=;
        b=WdC03US/8lN6ECIIyqme3EFrkgyPnYKXtXNQTtUVgqmGi1JYL3h8tgpfp6GHJ+8fhT
         nQks3X/oupeL9vaMN0BVCFwDk+UYzexQ2EAa3/zENDG26ZocOz7oGH71sKWO+SAPDD8D
         fVO7IUeazorNF/bLGGTBTygESKLjziT4ZWLEHkeXObLIPvv6eIvK+HfO6KVEkw7cN8wf
         sfaJaheeTIMcRgTuFZMle8/ugSmOVohym5nc9gXutEI3uStMjrt8hWZlfSvEiI14biz9
         rqYd3L/SxuTSALuFzJnvjpO5WVQJieIuzfOave2Tft3j11qQWv64L008FldKvh60aJlT
         hO2g==
X-Forwarded-Encrypted: i=1; AFNElJ8ozVDxgoxf/I+qmH9mOFNM0drlsOiH9h+tL9no1p5SPbLLFI23VvwLRg3zKpfKrWd3s/vu08kL+0o=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhMC9n6kCVe1IA29TqS94IRyAOP57OUf3C3ibAgKG3VaKfXx1W
	O7gxGyun13NFOfN6KxPB5jFWCtVnYdfRQujthgFZk/5F1Ch98x9yGVn/luABpVZ6Rr36mmuIc9e
	8cKSCo2A4zu9Ehgti17uTY05Dcuzzp94R109lhq4CEyIWski1aNvtt+8mrXO/+7GafYbo
X-Gm-Gg: Acq92OEKIWUxSefjaIHQsyvUc5RTJJBzI39aUwuy0lBPXypurv+OTeZFPQ1LJAGUxah
	rPlRJz8rgE/7pYRswfwdw91znMDXKGFEDQ8eXycqamzns32VSiz5f7YpFLSbxjVviAbaq1Oeq06
	LCdxijNiKPeBf6+JLBcKXEAGjFQFURXuBIGEDjLIgrvthhYmohkiymSaiBxvq1dMkZ9dr8spdxW
	JZM130ImCYgr1MYHpI38QqkQSsj+XGOjygfKYzIFgYvFPWql5khlUr6DcdMFW2VtXWXtY4iIR7P
	kweQDBpTporlGhxYgBY8NpRKEFR8o0vBLt98JHU+jjMWIcqIvqiKlJnL0qHI5J8vWxjFkFJk1ok
	nIdZ5JbAiKWWN7OAW4vwCGu+nf9RoKgp5b923EcIPYdn3qC50mcUyn3xm9U0HpBCgpihjJDrJK+
	AxAvk=
X-Received: by 2002:a05:7300:fb83:b0:2ed:ff78:2c12 with SMTP id 5a478bee46e88-303986b7f00mr9394477eec.34.1779169646375;
        Mon, 18 May 2026 22:47:26 -0700 (PDT)
X-Received: by 2002:a05:7300:fb83:b0:2ed:ff78:2c12 with SMTP id 5a478bee46e88-303986b7f00mr9394456eec.34.1779169645860;
        Mon, 18 May 2026 22:47:25 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:25 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:16 -0700
Subject: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk register
 and parse_dt helpers
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
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
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=5256;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=MbaTZPbJ/JsKncMTk7duiSh2ZYiCvvSREcklhYtrLDc=;
 b=Dq3RCcs82o0H2virjARvXvlTSyqDuHN+lBQRphnHRjl/IthNFWB96EylAfdOP6gHzuQPubGCY
 3RMr5wszk+1Ce83B2703ATv5W3RlvPKpcAXgRqGxLvicpvvGZAfXDtQ
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: B31cwZfRPwckLNr71EcLB8hcYlDml5c-
X-Proofpoint-ORIG-GUID: B31cwZfRPwckLNr71EcLB8hcYlDml5c-
X-Authority-Analysis: v=2.4 cv=BICDalQG c=1 sm=1 tr=0 ts=6a0bf96f cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=2AX8zLxBezjo-DDFgScA:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfX3hm9Ln9qPXtG
 MWMv4LJxlK6nlDI/aOacNcJ6J+SWmTOKWrBkU1TpFwthXp73juC6n+LTVaF8UAy5Fnf/PoaDrcR
 nKDTCZZ+dIV7Mf/XSx97o0EeQNMd9kutAHdHuHRncuC4HjaFGfRtPTzbggU2gcNUMGFdZGxd1U1
 Xhk3fJCqTrTy9DUjfYuDlQKptbO9Sz5mKkwYUJU1GtUKhLKo2jz5ckfoACE0xlKnsHspT7tYtPD
 c6YPkpiDuA1kLX3e7WThtfex2b9MrGfl8yi0KXmQ8eWaLqLm8V9IgKKKHaBJAeBnakq118GU0zL
 dY0AoluAAuG4q9ksKubDrPjTj4WBG6tXaL1kIbkxu2KJ9yPmilkJcZ0//WxtCF+q4lgvVTkvdV+
 viM2HVFGFoi0pS932aMALbluMc/mfAWMfMEXE2nNdJZ7bWA/U5rEXnk3IUb0bCwci4ZckQIkJ8p
 VYMCA2zCunT8JxtTxCA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224727_591268_682C69B5 
X-CRM114-Status: GOOD (  18.29  )
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

Some QMP PCIe PHY hardware blocks can be split into multiple sub-PHYs
under a single DT node, each requiring its own pipe clock registration and
DT resource mapping. The current helpers are tightly coupled to a single
qmp_pcie instance, which prevents reuse across sub-PHY instances.

Refactor __phy_pipe_clk_register() as a generic helper and reduce
phy_pipe_clk_register() to a thin wrapper around it. Similarly, extract
qmp_pcie_parse_dt_common() from qmp_pcie_parse_dt() to hold the register-
mapping and pipe-clock setup that will be shared between sub-PHY instances,
with pipe clock names parameterised per instance.

This is a preparatory step before adding multi-PHY support. No functional
change for existing platforms.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 76 ++++++++++++++++++--------------
 1 file changed, 44 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 1dee4733d4f2..6332f15f78ca 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -5116,32 +5116,34 @@ static void phy_clk_release_provider(void *res)
  *    clk  |   +-------+   |                   +-----+
  *         +---------------+
  */
-static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
+static int __phy_pipe_clk_register(struct device *dev, struct device_node *np,
+				   int clk_name_index, struct clk_fixed_rate *fixed)
 {
-	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
 	struct clk_init_data init = { };
 	int ret;
 
-	ret = of_property_read_string_index(np, "clock-output-names", 0, &init.name);
+	ret = of_property_read_string_index(np, "clock-output-names", clk_name_index,
+					    &init.name);
 	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
+		dev_err(dev, "%pOFn: No clock-output-names\n", np);
 		return ret;
 	}
 
 	init.ops = &clk_fixed_rate_ops;
 
-	/*
-	 * Controllers using QMP PHY-s use 125MHz pipe clock interface
-	 * unless other frequency is specified in the PHY config.
-	 */
-	if (qmp->cfg->pipe_clock_rate)
-		fixed->fixed_rate = qmp->cfg->pipe_clock_rate;
-	else
+	/* Default to 125MHz if caller did not pre-populate a rate. */
+	if (!fixed->fixed_rate)
 		fixed->fixed_rate = 125000000;
 
 	fixed->hw.init = &init;
 
-	return devm_clk_hw_register(qmp->dev, &fixed->hw);
+	return devm_clk_hw_register(dev, &fixed->hw);
+}
+
+static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
+{
+	qmp->pipe_clk_fixed.fixed_rate = qmp->cfg->pipe_clock_rate;
+	return __phy_pipe_clk_register(qmp->dev, np, 0, &qmp->pipe_clk_fixed);
 }
 
 /*
@@ -5336,26 +5338,18 @@ static int qmp_pcie_get_4ln_config(struct qmp_pcie *qmp)
 	return 0;
 }
 
-static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
+static int qmp_pcie_parse_dt_common(struct qmp_pcie *qmp, void __iomem *base,
+				    const char *pipe_clk_name,
+				    const char *pipediv2_clk_name)
 {
-	struct platform_device *pdev = to_platform_device(qmp->dev);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	const struct qmp_pcie_offsets *offs = cfg->offsets;
 	struct device *dev = qmp->dev;
-	void __iomem *base;
 	int ret;
 
 	if (!offs)
 		return -EINVAL;
 
-	ret = qmp_pcie_get_4ln_config(qmp);
-	if (ret)
-		return ret;
-
-	base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(base))
-		return PTR_ERR(base);
-
 	qmp->serdes = base + offs->serdes;
 	qmp->pcs = base + offs->pcs;
 	qmp->pcs_misc = base + offs->pcs_misc;
@@ -5368,12 +5362,6 @@ static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
 		qmp->rx2 = base + offs->rx2;
 	}
 
-	if (qmp->cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
-		qmp->port_b = devm_platform_ioremap_resource(pdev, 1);
-		if (IS_ERR(qmp->port_b))
-			return PTR_ERR(qmp->port_b);
-	}
-
 	qmp->txz = base + offs->txz;
 	qmp->rxz = base + offs->rxz;
 
@@ -5381,17 +5369,41 @@ static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
 		qmp->ln_shrd = base + offs->ln_shrd;
 
 	qmp->num_pipe_clks = 2;
-	qmp->pipe_clks[0].id = "pipe";
-	qmp->pipe_clks[1].id = "pipediv2";
+	qmp->pipe_clks[0].id = pipe_clk_name;
+	qmp->pipe_clks[1].id = pipediv2_clk_name;
 
 	ret = devm_clk_bulk_get(dev, 1, qmp->pipe_clks);
 	if (ret)
 		return ret;
 
-	ret = devm_clk_bulk_get_optional(dev, qmp->num_pipe_clks - 1, qmp->pipe_clks + 1);
+	return devm_clk_bulk_get_optional(dev, qmp->num_pipe_clks - 1,
+					  qmp->pipe_clks + 1);
+}
+
+static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
+{
+	struct platform_device *pdev = to_platform_device(qmp->dev);
+	void __iomem *base;
+	int ret;
+
+	ret = qmp_pcie_get_4ln_config(qmp);
+	if (ret)
+		return ret;
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	ret = qmp_pcie_parse_dt_common(qmp, base, "pipe", "pipediv2");
 	if (ret)
 		return ret;
 
+	if (qmp->cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
+		qmp->port_b = devm_platform_ioremap_resource(pdev, 1);
+		if (IS_ERR(qmp->port_b))
+			return PTR_ERR(qmp->port_b);
+	}
+
 	return 0;
 }
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

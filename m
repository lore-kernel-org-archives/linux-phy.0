Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDA7BD232EA
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 07:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OD9iBb6Q1IEscKjp4dX7Omcst3Pk9oZPKi3AORsWJUs=; b=pEeWKA+kux7Z8k
	LXTchlhla9xTX0cZlEwMIiPWt1f0q3AWt5SXbpahccAmY27PN1byhT74cbazehxWLfX0c/8UsIecH
	FfGQS2IBckCjnrft7mcbpgb8eb1i9RoP4odTiu3fcNUSjTqSPfh9D1afI8jESkdfn1Lcdc5WOFB8R
	KyD1zsATWkM5pEcZvXBI/R+m9IHp5xVzKozl6rqBNUxeWT68gaK6TRQPk5393e8rv5U7qKAEaPRnB
	SwHBKOP2MfRTKmxSvXdRiBf7XCPTEr89Cu31q3xkniGYgKi1wCOjilT7/HhE0VyTG3Ox6OPRKAjBL
	36FlSrYLxdfYmfwcMN3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oI-00000001hEi-1sDU;
	Fri, 09 Jan 2026 07:21:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oC-00000001hC2-2WD0
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 07:21:24 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60950TWJ409337
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 07:21:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KBmQ3JjkNs0c0gyqtwiCkbDYZXIghaKkt8zCFfC38Yw=; b=cRvptH0LuvCIZSDx
	VnvmliRwVLOXFc3Oxqnm7MPBygiRJTgvngIvBDNQkcUtOpcMyCt4Iu0RNuBCjFgn
	r+XERZce5WgltbLC7gpeMxkaiPX1IumruHFgel9eucnqkjp3jskJcTpX9MSikw+V
	EYzslPwSpvitGSQqQJfibNsGVt302E2Vk8GpWYsNjWWPN28/P/w8Z54iFfgLj49O
	B8N4gx/MEPyGIWBQiLhhFb65QnetlHiAikpnfh3Iy6XribkkjqDDV6zKfeVoQ13w
	1kg213MQIPitU+x39+5vaMhdnnNQ6qWb4KnIzV6Nr+GOf8nb1MAN2EYqzA2xKq9B
	xEzVsg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjb39uaq3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 07:21:20 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c52d31fe88fso1314389a12.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 23:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767943279; x=1768548079; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KBmQ3JjkNs0c0gyqtwiCkbDYZXIghaKkt8zCFfC38Yw=;
        b=ZL1QrRqWsnW4wECkcX6bJT/DWt6GXE2x5ZcwBVw8qSrHywaZkyqkiC0wr6eLQOwv00
         oUrskeLtGqPXV0dZkmtCi8ofajRSFBHk2IWMexBhrS4Of2QJD3UJb6er51CLBgLZIfuz
         DM9OPG6Zirt4RLyZsf3AZxIGkzyRmMMq1FTyixCKkwRKzAR0SoxegwVBkckEBOy/PHzq
         F9hLb27utlwGt9qLmYcPRCIQTknNKES8tKVKB2DQruw+YTZber11D+SypwgZkkQjaYol
         0HoVOib5E5xKHyBKWRM/yq6EQWpBp+9TnRd/Q36te36xQ/16IdLT9TD6bd2VUaQGaP7g
         gyeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767943279; x=1768548079;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KBmQ3JjkNs0c0gyqtwiCkbDYZXIghaKkt8zCFfC38Yw=;
        b=Juqs7iwq/fVuuvEVh7OE3UOFhGOReFokEXMQY3p44vKiLDzWo1cpm+ETek3J7pUAeJ
         XL0lInVUw85fh3HmyJ3jsgOsp6QhHJAHCWhkQoIVypceTHkXWK/ujPYrvK+7dI0azKz4
         f8E1pRLn+Gp28CWvDD6uf7SwEl8yOUnMryQ2RB7iakMszdW0jopjM2YntVe2/1DpusxQ
         LUoKw2GrZWOlsbvzUjEcmjxKb5j8w0ywpMyohjkiPLdta93WUP8/mWRjOa/pEuC7ezPu
         NpqaJRofG3NC3Z7eFgyBCz2Q2uFFd0zL3nmb1oEWEWe80+O7WC3s/bMeXDXfOPEt1fHM
         YuhQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4X68/VkdzHn/PEbRGmhfCt3xDV6vKKHZBRfMXmkkyKFp/v/OIF5fB81d3OS18NkIOsI68r8aV/1I=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBe8ybkUdXREUAYQV6Cux2oYWTC5VR7d8ZSHAvmOlOr5IUASaS
	wcP/2zvy1c+4g56aQWLHVibHNi/4krfeQLq1iw+ZLcceEXcCFQqMn+Ivhf842XbGkXMoumFL6us
	nxM8EKSqMWOen4sWVQ3st0JCRGkOSL6HzIzFeYGCMR9naacuvztkxQ4kV9uacH0hWU3uk
X-Gm-Gg: AY/fxX7Frz/5D/wX64nWiikGkRasnJ4lf3TX9+g7FWtpDsmpwKvdsM+KG49VlA5c2fl
	1HUCbUR29TPH706UFJXt7MQQvxgqe+bBmCr56+dc33ybbG88K3vY8HcpDa+jmkkaz3s/uFB4PQK
	U+I/Ryf9AnuSujLa5fLFg4NYZHogpHX+/jRIXMr8P2xlvqF1uc/h65LAOi0ZRHi4rC0DP6oTWI2
	nTYezhyYy9hhdlKUbQVw8g9fU9C4/cjq8Te5tycnjM6yKJteZRqsXM79uX+e2JCyCwqnWv3T1bx
	clIM9ACFRVpskha54am+kITTsmwyH/Q49iYfvfzSi47JGwEJuqRLEcSOPJTdhGRknkvUWfuP+W+
	6bRkAOfk5iZTY2rDuk2WCgRaU+1XHFZW+iOe1vXAn0vLq
X-Received: by 2002:a05:6a20:728f:b0:366:1992:89a6 with SMTP id adf61e73a8af0-3898f92caa7mr6887751637.9.1767943279217;
        Thu, 08 Jan 2026 23:21:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGs6QOa9xeUO4AhsQgCzcZWo5NIQzpXhO95M7HuPd07DAWIleAAX2o3DQHUnSO32As//Hm8iQ==
X-Received: by 2002:a05:6a20:728f:b0:366:1992:89a6 with SMTP id adf61e73a8af0-3898f92caa7mr6887727637.9.1767943278706;
        Thu, 08 Jan 2026 23:21:18 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm9510369b3a.30.2026.01.08.23.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 23:21:18 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 12:51:06 +0530
Subject: [PATCH 1/5] phy: qcom: qmp-pcie: Skip PHY reset if already up
MIME-Version: 1.0
Message-Id: <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
In-Reply-To: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767943270; l=2601;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=qCZcq4ePhl1M5OCnTIjZBXNlTVq1DHiR6pXLBB27pc4=;
 b=YpF4qKbOyrlgyQ4CyawhI7IS6EKsaXBA+4/Z0aFC6PdpPG7zBMYWxMqQZiX4GJyBrsCRqaoDp
 jKW3/Fu4WofDn1ZfDcK0KrKy+FDO4y/0IUdCB55OBqrI5hbEk22kX1W
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: K8OHl0bmfVxKBS9Gdqn8ZJOsdRWNuImO
X-Authority-Analysis: v=2.4 cv=X7Jf6WTe c=1 sm=1 tr=0 ts=6960ac70 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=HRk0seaB8xIaapVIQOkA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1MCBTYWx0ZWRfX0PmdWQhAuwxy
 nxCt8sat2XPAS6Q61a8MQ1SBEU9aMMMwe1x09cPbutWSBEXEDsofgSaUEutIqElz6BxvkOubgG3
 FvbsGQlkR/NdbWeikRzJtKsL3+y29JQFX3m7w5QZ9j26iNjTqPfQRI0mrm5+WL0jecEk6CaeTaV
 dXBURWFz4PIXQlcWC0hnQ69HTrozjoWBordaOifl128vjbbzZZUp10zPXIpxdLEXbSJiOBragWh
 YAZTzBIKwmHLdOIDRKve5+JPOO6citrUY7RGwT1vFR21Ud7CTtuApmj0vEpQyX7txRHX3qebI9d
 JpX2bAT1orIC/LtO/36Nh8keWJ2EYW0k+2ctJGF5BNov2EVphMi3r/EGZzG8flAGY5BRG1I+Mmp
 zUwkKzZsxlnwei1EgAshNAN9+h7v71Xvw889bJ4X3lGL725Gw/4Q/1AxZZUG23EqB9lxW/mHrIg
 cC4XV5DOVzAfiz4dm1w==
X-Proofpoint-ORIG-GUID: K8OHl0bmfVxKBS9Gdqn8ZJOsdRWNuImO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_232120_815554_1816F796 
X-CRM114-Status: GOOD (  14.36  )
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

If the bootloader has already powered up the PCIe PHY, doing a full
reset and waiting for it to come up again slows down boot time.

Add a check for PHY status and skip the reset steps when the PHY is
already active. In this case, only enable the required resources during
power-on. This works alongside the existing logic that skips the init
sequence.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..c93e613cf80b2612f0f225fa2125f78dbec1a33f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3153,6 +3153,7 @@ struct qmp_pcie {
 	const struct qmp_phy_cfg *cfg;
 	bool tcsr_4ln_config;
 	bool skip_init;
+	bool skip_reset;
 
 	void __iomem *serdes;
 	void __iomem *pcs;
@@ -4537,6 +4538,9 @@ static int qmp_pcie_init(struct phy *phy)
 		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
 		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
 
+	qmp->skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
+							    cfg->phy_status);
+
 	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
 		dev_err(qmp->dev, "Init sequence not available\n");
 		return -ENODATA;
@@ -4560,13 +4564,15 @@ static int qmp_pcie_init(struct phy *phy)
 		}
 	}
 
-	ret = reset_control_assert(qmp->nocsr_reset);
-	if (ret) {
-		dev_err(qmp->dev, "no-csr reset assert failed\n");
-		goto err_assert_reset;
-	}
+	if (!qmp->skip_reset) {
+		ret = reset_control_assert(qmp->nocsr_reset);
+		if (ret) {
+			dev_err(qmp->dev, "no-csr reset assert failed\n");
+			goto err_assert_reset;
+		}
 
-	usleep_range(200, 300);
+		usleep_range(200, 300);
+	}
 
 	if (!qmp->skip_init) {
 		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
@@ -4641,10 +4647,12 @@ static int qmp_pcie_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(qmp->nocsr_reset);
-	if (ret) {
-		dev_err(qmp->dev, "no-csr reset deassert failed\n");
-		goto err_disable_pipe_clk;
+	if (!qmp->skip_reset) {
+		ret = reset_control_deassert(qmp->nocsr_reset);
+		if (ret) {
+			dev_err(qmp->dev, "no-csr reset deassert failed\n");
+			goto err_disable_pipe_clk;
+		}
 	}
 
 	if (qmp->skip_init)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

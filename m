Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 470A1CD5BB1
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyBhJC11pElvIHo8vtjxE95KXkL9TaGQSToujlqUq5g=; b=tvOxjC94zDEUel
	CJWfi7/gNAP7iuwWQEq8hF8o9RM2kysB/IGg/GYMtio0AxGygpwEgZ7swVqt+35mG/NSAwfg9BOdT
	LXRsQymVqhrS8kDQPoo/Zsc/MNyXDteo2KlUOUMWENNMGi7xGM/OsMFSI1MLTCNGQqTm3D7HbDsnq
	Jl7h4yoaeIaZxsrnmfra7BtESBbTgi5u+KG1BaitHGOWUT3s2fdUFL20wFIHlYshe6KCu4VgrTAem
	4Tk+L9AKaIXYdnTmOA3eTagSsxwyqtA0Y0jUbpL67J47+vo8U1IPV56QHEZmt9sqAOYrQeGXYEqcu
	aRt+ZSOIsVXoFl2AekLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xY-00000007nCH-089l;
	Thu, 21 May 2026 12:57:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xV-00000007nBE-0aGl
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 12:57:06 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L99uFG3772914
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:57:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xSZqspbgJj2wWqFY7lxfq9p3U8n82NjVy/UhrKbC7e0=; b=hcXwfnikVkwwZWP3
	LwYdjKBaLM2rOYgIVywl4i+Hp+jUMGbQBWpcvRMkANwpLlSOxyFwRRnc/0pr3drx
	IfUV95/zJwvm99t/WA4Mb5No80/GDWM1X2BFXYWtZuVziaup2/qhoyfyuMAfQbRh
	XGwtDLjUFW66aGnPQfUgmBo22qIsDS2HFOUsbr3DCHUVhIS8hiwy2v293b0n1dle
	VV/+TQ9ql5dKD+Wqe6Y+VyEhp4aEzVlXK3hJfhmFzDxQf4B3sn9TQJJYQusoMkKy
	yJ6HwaB/gvUls/RcChQY52Z5q2oCh/9eYoPkvq60LR3FjCARHqk8lZc2MfnkaEY+
	mJFBXQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9ma4391f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:57:04 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-367cb6de61aso10956650a91.1
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 05:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779368224; x=1779973024; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xSZqspbgJj2wWqFY7lxfq9p3U8n82NjVy/UhrKbC7e0=;
        b=i+bHNrhznxZYUdbXvGGVsIkK0+lXwIQaIACZV4DYs3a8z2i+J4dr/ykVztFel71Y6W
         KTxq3oQyGoYWq8tISx6HrNsRBMvPGSqN7IX8U4UMl23rkvorzBOlc8UgwuntaIgCuDJo
         frvVvbLszo3Fr26t9ylaDeqMZmtMeEFjnHwky71zMy+FRhBB0mt6lq/Ok/tYsL7Uw2ow
         Y6sKQOSwT3vrbr3/6YPqTGufYxRycM8rdey9D+WCyEaQ5+3YFhaXPkkk6UfAfYN0+Ml4
         kCdAzQQCfxYS8xvYW1L0sLR9mIZ91Rhn26pCw34xCM+PuwEYOFLYYehl7Xw5RjmFm5C6
         /SXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779368224; x=1779973024;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xSZqspbgJj2wWqFY7lxfq9p3U8n82NjVy/UhrKbC7e0=;
        b=tCor8b1gjmL35Cy1POGxsn00ujkDkyfzWo3lFHY154VahdqJRCzeIxpqaV7We9gGI6
         HGNr7G5vuLMYw7/hSXF8Lu+8CfcxATBTv5Id14BSnBVZaqSE5bBvEP/yMzuaEFEbtqAB
         c81mnWwHCoBdpqzBelWAZ6Spn5up3tMUPjU4upTOLGfwS4dl80MVYJro357j57s9Bd0Y
         VgjIpI34ET80h6pLvcJo9DvIjiw4PBuuRMU/F6P0Nv2GcpQV1qiFKdNNipDJOjAOKkfj
         CT5iGxUHew9cZBkv+RKyjwrrehxJupwceoZ8r9KRXs/o1UCMLeDWJyBDeEvRNI6FwLkO
         vEHg==
X-Forwarded-Encrypted: i=1; AFNElJ/GDFVrbFUmrrzJSp9ZlD/BfOlDocRgPniVDPKj9GcQUeZB0fz8Jw10hAGDRxOE5IB4mQg8eGBuVfM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxmZcIMuw7IZ/l9YXbjbFvxgD0DyaMJbRw+Q7K4iRJPt3gswnB
	F1cIHgnTU89hinSkHbwsEJBHRoTU8uSWC20rZCnODJ3aRYpBZ7t7v/aXwK0KpMbDCTd2Gn0k67x
	12ijkkDTBg93usCSzeCj+OiN+yByXIhnTFV7sVLX1kZb5+f9eYbIz6aedb+qeioVabWBR
X-Gm-Gg: Acq92OGsgBaJqhq/Eac7kjOrpgs3tWD9WMKMKHWIzUpRWc0UD5CPiii4y40V0PYIqCD
	/K6hnwN8rKtXPvaZn1MVXbkGYmcflVrRGpXkj6urBUnhGSorSlAkTBugFzfLSTWlOHAFg4Wnt6B
	yA/yKJF7COw9jJ7N6HRT70gQwmPSoBMjZaDO+pb4DKLCf5KlH8rNndOv9EvGJexYIyMdZ+fNGwO
	byFeFrg+cnq8gdhT6kT6l9jITtiUuUfm+3YiOb1JQnEZP+7Kkb2uN/JGewLSu/5rCu7e6e/Wn82
	BgChhsTRNL8eZ2jEIAgg/YFGf1zVEJe0dFa7Q1ao6VlMK6LlTc4g7KO0y6CmUNZRd+/TYoSiCzg
	NAwEX1vQJFbbN+0XTLsgtkdbdDcfwyV3EsOq1QLJvTVExyLNiuGbhrArk
X-Received: by 2002:a05:6a20:a11b:b0:3b3:216b:2743 with SMTP id adf61e73a8af0-3b3216b2a24mr341039637.4.1779368223925;
        Thu, 21 May 2026 05:57:03 -0700 (PDT)
X-Received: by 2002:a05:6a20:a11b:b0:3b3:216b:2743 with SMTP id adf61e73a8af0-3b3216b2a24mr341003637.4.1779368223478;
        Thu, 21 May 2026 05:57:03 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85198f508bsm357984a12.20.2026.05.21.05.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 05:57:03 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 21 May 2026 18:26:33 +0530
Subject: [PATCH v2 1/4] phy: qcom: qmp-pcie: Skip PHY reset if already up
MIME-Version: 1.0
Message-Id: <20260521-link_retain-v2-1-08ed448b081c@oss.qualcomm.com>
References: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
In-Reply-To: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779368212; l=3603;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=wmvKp9NRJ4GvSqBTeqBv04c7mvtTpO9keDXQfKRmU+0=;
 b=Lf5uPP6lOdqiH810K/fw8fjljnmWCoHzlhfhROpoten0D8FfUgTOR63Bj90b2vp9nPzDzp4UR
 m+XYTpuKfxdCCpgUM+pbX8d2k+C/lm4qaCbjxROZxZYEJfo23MmH5VE
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=K9kS2SWI c=1 sm=1 tr=0 ts=6a0f0120 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=opHQ60H3MKUy9uz0bH4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 2vzHITuMh6_btNE4-3aO6-uSK-5BpYC_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDEzMCBTYWx0ZWRfX3oxd1m5co+og
 PDiRktEPWhJNKJC02+YEg3yJvu+Rn8eWEnKB/D/GeeMZhFrobAjzEBMlX8IsFxF+VeLy81gaVkD
 EGwztlMJs6wZp39POfBHp6feD67LQb/ZNZ0QVwE3CquoAW0ivz4UaLhFNbeuOJbpPyJ/GXfFVbT
 vXEoEjqULF+kC/+HwcECB8n169YCpgi+afXz0BeNenKqVqgJbgKKkBAAFYSsn4G/Azj+Pn1BGL4
 MoLvdoPtGfXoCRd3HorpxObK5Bq5/Vk1YDOfClPira+qZ8L7dN79IiF+Jcfkq0dMdXDYTGJRC63
 M/QuO83Nrve8CuWazUZIJ9dxcDJb76CQoP4/RuWW7I0nSQ/Wk8o11pSzwyP2YncLfNHQBzlo5sg
 aQSrKBSSqZI3wm7lL3B+NrcRJmJFdMax5oguel9ff3a1tkpKB/P6sa0KLgZLnaSn1+mc+S/0VeI
 2Jqmw0vzXO12hVc6cyw==
X-Proofpoint-ORIG-GUID: 2vzHITuMh6_btNE4-3aO6-uSK-5BpYC_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1011 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_055705_191293_165700FA 
X-CRM114-Status: GOOD (  15.86  )
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

If the bootloader has already powered up the PCIe PHY, performing a
full reset and waiting for the PHY to come up again adds unnecessary
delay during boot.

Extend the existing skip_init handling by introducing a skip_reset
condition. When skip_init is active and the PHY status indicates that
the PHY is already operational, skip asserting and deasserting the
no-csr reset while still enabling the required resources during
power-on.

This allows reusing the bootloader-initialized PHY state and avoids
redundant PHY reinitialization and PCIe link retraining, which can
add hundred's of milliseconds of delay.

This relies on the assumption that when skip_init is enabled and the
PHY is reported as up, the bootloader has already configured the PHY
correctly and the link is in a usable state.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fed2fc9bb311..1458ac1478c7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4729,6 +4729,7 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
+	bool skip_reset;
 	int ret;
 
 	/*
@@ -4744,6 +4745,9 @@ static int qmp_pcie_init(struct phy *phy)
 		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
 		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
 
+	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
+							    cfg->phy_status);
+
 	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
 		dev_err(qmp->dev, "Init sequence not available\n");
 		return -ENODATA;
@@ -4767,13 +4771,15 @@ static int qmp_pcie_init(struct phy *phy)
 		}
 	}
 
-	ret = reset_control_assert(qmp->nocsr_reset);
-	if (ret) {
-		dev_err(qmp->dev, "no-csr reset assert failed\n");
-		goto err_assert_reset;
-	}
+	if (!skip_reset) {
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
@@ -4823,8 +4829,11 @@ static int qmp_pcie_power_on(struct phy *phy)
 	void __iomem *pcs = qmp->pcs;
 	void __iomem *status;
 	unsigned int mask, val;
+	bool skip_reset;
 	int ret;
 
+	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
+							    cfg->phy_status);
 	/*
 	 * Write CSR register for PHY that doesn't support no_csr reset or has not
 	 * been initialized.
@@ -4848,10 +4857,12 @@ static int qmp_pcie_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = reset_control_deassert(qmp->nocsr_reset);
-	if (ret) {
-		dev_err(qmp->dev, "no-csr reset deassert failed\n");
-		goto err_disable_pipe_clk;
+	if (!skip_reset) {
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

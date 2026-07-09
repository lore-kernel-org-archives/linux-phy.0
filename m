Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09F32C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 06:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZJ/Hp0vs83jfaFhIpCyp6Umc7NbqBJyFEl0+kkPtnI=; b=Nv1oMSXpXIKzVV
	FU7rvI1rsVPPfmUhzdifnARZcvTXB4AE9CHTsxKXnu9SKFvyu0/DmaLfP9plxP9L7M58oUZ/HQf8A
	KeGtHbvK6VSHKIEdVpenL4mmWeAT+JqD+uOVV0t3Rhb4AI74g7PVqfimHWLw62emVPs+I3YrrtbO3
	WG9U2ttRqKGyk2LDrBDwHF7lcNY96nvaGczFEZ8EKUwVtzkLWLp8Zz9pLZ86tkvEK66WWG/ZBS5Wi
	JmFl+Am9d/i1TWlWUGvhrQdanou1EXkEgOAVbcRT3x2syJo4oTtJtuVEac7T5WMJmnoFSkHbfiYnp
	r5KbfmMtjx2hFcpRJz0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMH-00000001Bqb-34ab;
	Thu, 09 Jul 2026 06:35:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMF-00000001Boy-2tMe
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 06:35:40 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 669600qj793873
	for <linux-phy@lists.infradead.org>; Thu, 9 Jul 2026 06:35:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xozTUbTiSFMcUs0rkGns4SRkNmiUaXwEd6jRiqtON08=; b=B2fcfZb0aFCKdWVK
	MgNLx20GCw2EPsjCr+ORonFVi7CYw0SHtf8dKo4VhjyZrM/5Gv5fcqrUnQ+Mmqon
	nzBiHeYKcro771eSoRmo8vVCp9uIKMJVr42UM+IdRvaZtmFRdjWg4UrsW3hURNMZ
	pEkNUMiv4g2QAbK+yhuaggGZYTji9m+Q5NvDHt6whNQXL4pAsneLrPUA1kPvxCAj
	azNXh1KQfshB5FgwWL/K9JnzAQJD/h9ySocMqAnCD6J0IkDwFpo7iyHbrGZQp23i
	BSSM12AQqmPNWuQUz5dfD6Q7/rp7w+rB9TN14G1U2+4cvVRoqvjNV/w6Jz5MFwab
	/qogXg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fa1yds1bf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 06:35:39 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c85a298cd62so1578050a12.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 23:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783578938; x=1784183738; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xozTUbTiSFMcUs0rkGns4SRkNmiUaXwEd6jRiqtON08=;
        b=dXCrs9apOFQHl6yw3sp8XOZeg9EJ5GTE5BKVkTUiEkhTp2UHUV+Vbe2S7NdJi7G3VN
         DCdcZxnlk7B4cACn3d3cKb307lxqK2S4TuPGW0/JXDEBOedzedscdgRhs8bzhjuAKVcI
         wFLB2egw/WB8qSix1PYLVOBHAZdC5xgnngiSQ3XUVMmZU7R1H/ZiJHtLri8r7v2nfR8U
         FIFY6ooyrER/FepkOSiuevimDRSSUZUteUHb9QaHWKlhWbwlWc/H3nf7TI8Cxax5uHR9
         Tay/uWJkkiD6pZ+5mq6XyUJenbaMXxYS8rDdobxsSdFt1unZEFkcfIVDthCwKxdQS9aq
         4xeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783578938; x=1784183738;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xozTUbTiSFMcUs0rkGns4SRkNmiUaXwEd6jRiqtON08=;
        b=N1MGCI+VvvmOzHxLjNYXjmd5W/FWXnpmepjlewZ8CVTeZI8EJMH6+nP4SgEX3/PEJO
         XtUYwwZZ5sV18nUsdh8wEzvyWhnSN5Ll8JTRghb7p/FDc0RtLvzibMcCXGBGo7LfZ25g
         BD/Wmk4+nHn3haAhizQ4sIIK21V6mZiddhzDpJGSUKK3rYZ7qRN9WIzMROwr4HxY7ixF
         Or493mRDXDoAfHdO46eX2+pFEhynZGEl6X3oGAWosalufjjS4bRhmN/AkbSJABvyM3nn
         PrjuiDuk/HLgQcQS67VixnZll68NNHiB2FLb3sB5rUuQhlBsFm8PTLqlEcl5MjCkoztp
         blFQ==
X-Forwarded-Encrypted: i=1; AHgh+RqSkJMKAsZ0QHeTm/Sv9OSs08ekhJMJcvMmCrehCRwF0cUI5WpUPloXWBomWYYkaA90dn0Zb5RjayQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFIxXnOgB8am1KPqnd8sNnENBu5u7QJ8aEssRuRPu+v2UmhTEB
	nq0rX/a0bPufeadaTS9pfk5WIuyLolLHDYWRWiG8GSWW/kuGW6fruQJPRYUMcR6djmi7RbUN8WN
	HBZXa5lhO3s04TKW5bk3Q6JFPt1sp4boPXbwJ9SHlicSzo/2drVaCdNorH1lVb9xwImsS
X-Gm-Gg: AfdE7ckg8KQbp32u53x81IFgkui0p0x/LSprW7gjxOHXLJXcqTJpbnv1a2JICevaXT1
	9KGcNz0Ut3yAQnGDdsVMhVo25K+Dj5QvHPxwqI22i672OLnnvO7f9eAwz0mRW5mP8Xlll4iArCG
	EBcNkNn9FN2P21B2JuQjZP4nK/LPvhA5YgMG06zPwRbV/tcSJyWvGABh09GiT7cZYRD2LQJYc99
	0W1jSs4DAofuyvmMUpH+laxuuwZAZS9GLjne+6wD3Y44G5CpGc48lYbhjO7zaHlzN9HdlzhCAtq
	bKvflsi+OY3dRMsQrMzk9gCvKgAuialg6JUpAPK8fSX4FN+gYvphMGMg/ssevXWynOrHseDouaF
	rYpMMc0P1WJU3eZu5svMi2+n+7ywNDe4gJRuxdULUPevIXQ==
X-Received: by 2002:a05:6a20:918e:b0:3ba:f5c7:6bc3 with SMTP id adf61e73a8af0-3c0bce1eb32mr6762102637.10.1783578938535;
        Wed, 08 Jul 2026 23:35:38 -0700 (PDT)
X-Received: by 2002:a05:6a20:918e:b0:3ba:f5c7:6bc3 with SMTP id adf61e73a8af0-3c0bce1eb32mr6762046637.10.1783578938071;
        Wed, 08 Jul 2026 23:35:38 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174a56848sm28304294eec.16.2026.07.08.23.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 23:35:37 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 09 Jul 2026 12:05:16 +0530
Subject: [PATCH v3 1/4] phy: qcom: qmp-pcie: Skip PHY reset if already up
MIME-Version: 1.0
Message-Id: <20260709-link_retain-v3-1-81a9d187bb61@oss.qualcomm.com>
References: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
In-Reply-To: <20260709-link_retain-v3-0-81a9d187bb61@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783578926; l=3603;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=R0/W2Phyy79uouOevakF9zWVoE+R9xIaDHzt9TBuyms=;
 b=zmgyhFhIkqGdHGjvKKkpfEdJcW0Brt3sMmnEgbFi4QYkVK845RWPNhu/gAZx5mA8RaCPIKD4g
 ZJcafkp+02wD4pfenTOgkkKbVRS0aSH8uswmthN8/DX9H4SZDn/PofQ
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfX8/3ALrHIaANu
 5PmUHLeBgTm8WOPrcd9BDpJNpASzJe/rN+yYcowoCUFv0+SP5hRzN7J/e2idt11Ay0ombZ+zVjH
 4AzA++GvIDVCb80tOD40EYNildg7gNU=
X-Proofpoint-ORIG-GUID: K4s8r2pNohOaTWdyMAINe9jSgkLKmdj6
X-Authority-Analysis: v=2.4 cv=cOLQdFeN c=1 sm=1 tr=0 ts=6a4f413b cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Y7qMJ73t9LdsiZx4VnoA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: K4s8r2pNohOaTWdyMAINe9jSgkLKmdj6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfX6+is5s+nXp/D
 ZGHT1x1lprst5dw8xHon5zJ1KuBpgrsQXIxWEFAOdOz+pK77YaoJJF4MkimZZ/By/CqhB+t2YC9
 N9GXbYvb59ttgOUsTl0O5gopIbs1ULJCVaaMNhWZf0OJBLCJOgIQ0r4lVE1qScPOQyiGXd2vS9N
 XlO1fMUS3gmq09RfvWhZrmHdrfccJywMvM82hhdGhhEp6XyWb+I4X65dHkURXo7u0tgtavfXMzf
 ss03uOiYnoilD5wDNvFPEW83WmlElwVXyAcU2q4WVXKTb9ZpLWIikg2wM0HKMI0uOoJXjOcgG91
 E6BM9+NvuI4ozBt5tMStofPUGwSk7thFOwEhG8abUmfF9+rdsz7pnlz5nVEHjbwzRmrbmqmxbFb
 nCpjJPlThB36AdPy6J6MTUju+qQznzzdTNK43ATMof+kLWFB9n+kOPUJOl5dj9cAO/Bb7OLSXc0
 /zuzn5A5jSwod3xE95Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_233539_753971_B33BA385 
X-CRM114-Status: GOOD (  16.39  )
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
index d3effad7a074..49e10151cb1e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4862,6 +4862,7 @@ static int qmp_pcie_init(struct phy *phy)
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
+	bool skip_reset;
 	int ret;
 
 	/*
@@ -4877,6 +4878,9 @@ static int qmp_pcie_init(struct phy *phy)
 		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
 		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
 
+	skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
+							    cfg->phy_status);
+
 	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
 		dev_err(qmp->dev, "Init sequence not available\n");
 		return -ENODATA;
@@ -4900,13 +4904,15 @@ static int qmp_pcie_init(struct phy *phy)
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
@@ -4956,8 +4962,11 @@ static int qmp_pcie_power_on(struct phy *phy)
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
@@ -4981,10 +4990,12 @@ static int qmp_pcie_power_on(struct phy *phy)
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

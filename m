Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1775AC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 06:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zbKhzBDmK0JNMiooicQtI/A5H27Ob2z8ITk2Lqj+pI=; b=BM4GSswNynqfEF
	ouImWah0zZowTl6WX7dj+OjZDN/boMgI0F3GS+uXYlML8zrjpaWC9bXm4qddKtpxP8kcNexMvLsrk
	sPdD7R7d3V1ymfE1i8C4u03Alv5HbKCH1UD7dYEaHpxjjEWazbH0YerGe36uhVNnYl3vI22h3ytso
	RpPH2J0DFS1R8A+oiJkkJcAH8O/xOA7bUhYa+bXgUTwgbBMs7H4oOeccHKBneSFitlA3J60gtuLzu
	GyriuHHn3jGo97l0WgL7lOjZQz/Cpp79Dy+M4zHyO0gn7yqOoA3phZWX71Y+Q5pzUMLbfDGiv7yUl
	z1aGBYcYJ9/McyJ7LfEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMT-00000001Bw4-3Wli;
	Thu, 09 Jul 2026 06:35:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMR-00000001BuD-1aYF
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 06:35:53 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66960bEw837507
	for <linux-phy@lists.infradead.org>; Thu, 9 Jul 2026 06:35:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vAr7bLFrWMsutX0Fk9x/KNLJeHFhChUaxX3V5RJjvUk=; b=QxL4HmslkH2EgtGk
	0YNuOXaPN6C1oC+fMMdou0CTTDJMpVCRum6vRAev0zLAqiXLsd7gOVMmdxxcC8PJ
	IS67o4qHm2MDPyfA5e0roS5k6XQfjJ+Ga4UXDNYD9hpS8wAsDLCfYznInwEwheZi
	qBybdPyaRe3qkaq4hY0Fwg8vTW8h2AHuNnUkUuRb/ndahatupdOZIfWbW/SyIKWr
	69lKLm9CTPXiUp+12hCHdc3COS+sDToVyO6lqIdlrC8WQIZTm1MSRW+DedS6QjfG
	+13G47wrFd3ta2MbHj/OFPdWyzG2xnTBrboUpzlQp4k0kDWBq59ak5aceF8kJiTN
	wdUD4Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9sqwaqfe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 06:35:50 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-ca6bd8a190cso2436860a12.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 23:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783578949; x=1784183749; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vAr7bLFrWMsutX0Fk9x/KNLJeHFhChUaxX3V5RJjvUk=;
        b=F2xzJqJqkDApP5BNXhJ2c0vYQ/pEd+U9Vvtf40bpmDH2slC5sHaTjtQgK6qwLazHxu
         t2l39JKpH2g7HHM6VOsacRFz+9GDCKGI6WuXNOkXMjXygChLgV1Smf2Ta0FixZUwLiJi
         ciUk0Io9YdT7vCxuRXEtyHsgSyHI3xaZgnKo0nPp7pAIRYB1tvlBOPtcfXPefgEt7pCi
         YXvMz3iHNmm/JVA7AGlYfZocL//qVGhOufMJsXZ5uU4V5tBBMAbu3LXEeeyFaiUDU+C8
         +cxqDTTxUR0liQ95UILJPUpgqNiUS1xTsoyzU0t/lSs89Dil5ePviS1JRyysVn3+CzO3
         jndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783578949; x=1784183749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vAr7bLFrWMsutX0Fk9x/KNLJeHFhChUaxX3V5RJjvUk=;
        b=nprNSY2qSdtbVhWocebJyQX0pD/wvjT+Ag4JLvXRSpVioWLimverbCrYy7uQL4AMzo
         A+3sLN00brgp3NU9j3eyXrjIVpeaDrTv6euSnY3UriLkCdXyla8148YrYKs5YuTHLYw5
         XsovXRD84ALQP1EvCqPAIOpCgwyz41uwTNT7xIt8Eh3GOPzxo/UfALULSmnCpXQ+NSgA
         c8hrXE5UWLMI9hEsjscQGgaC2WU7HbxUPLwYETA9xPfzBBbx0q9e+OJt6HCgZvJPzNbF
         V0OZYrkTGnj6RNf5fA0gIN+2XP5zgdjqbLNVqGNCyV0Ww8eB1F6dIsypMiZcpj2gJvfv
         +ttg==
X-Forwarded-Encrypted: i=1; AHgh+Rrm6fWdrfy4jyEFZnJHR8uGf4G4rABMMVKBa/E3HaN0BoSJ5OdA+IeSrFvRqx7azw2GNe33ylj5TE0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTfOfxFdkn+xeEvIfgT8gINfwjmRYXIz5rxYMDPr7ibJpHf1kl
	63AZ4+0wgSN7EWh2aFg9l0j4/YQOxWm2wp1Y24iSY31LBtYTPK4414wbN9gMTJAhkW+zJ44wG0l
	6/bJKi9vBdlmBdsrDCFZdYptnzdWVGxHDeFIiURADwXgKL8SAqx6zoaTVnNCpODTw4XVy
X-Gm-Gg: AfdE7clx+8e6CRkIBx9MsN42i1Ca3zsVdTekH1lI7DdOjYgOnS7rdEIoM9aoZKApgbK
	QD6C/3GbQWgwmL/MJ6x9WhDkofBQtwOVgvBvz60FRZ9UXUyNWxr01HvhIMJgwYIZ+aq02mru8/D
	BR2LGu5tTrm+eTLHP87RyaNVIR/Qj8Sp7E3Vd5RjC8dfZ1AAxMIrV9Cv+D6hq/nGJvfRGB/9IXw
	ZhlksCOxekmkPBirOiOev2LdXjT0w5Ti6fPFle6KEX7nWF9+4TehcgjCKW6/kmT/FqWYEH2OWNQ
	vYaTwxPNYRPn8hChARpFJ/C89+54V3EH0gk+6y/LYRHPReshPA+3aYkiW7C1XDYvtmOAgD1qLEy
	2Adhjcs5kWf1IemIX99QI4fzBW0OXhlz6ZLmcq0mBfnce5Q==
X-Received: by 2002:a05:6a20:a124:b0:3bf:c49d:9183 with SMTP id adf61e73a8af0-3c0bcc2429cmr7001242637.50.1783578949409;
        Wed, 08 Jul 2026 23:35:49 -0700 (PDT)
X-Received: by 2002:a05:6a20:a124:b0:3bf:c49d:9183 with SMTP id adf61e73a8af0-3c0bcc2429cmr7001203637.50.1783578948903;
        Wed, 08 Jul 2026 23:35:48 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174a56848sm28304294eec.16.2026.07.08.23.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 23:35:48 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 09 Jul 2026 12:05:18 +0530
Subject: [PATCH v3 3/4] PCI: qcom: Add link retention support
MIME-Version: 1.0
Message-Id: <20260709-link_retain-v3-3-81a9d187bb61@oss.qualcomm.com>
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
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783578926; l=6218;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=LbNgjWi3xdSg5QyRDAQ6cjP0KSXQ31Ga8mzLNFd928c=;
 b=KOIzWz7+c/zS1ZoEPHiWV3gJxkNGPdqTJYU1reCDuqcgpFXArV4s7DdqJeKEawtmH6tR1F9oh
 vK3kZycv1NiDQdPsp2/FNOMoAQ478BvdxYtHTs1PEP6H+UBX6Er0Ip6
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfXxTyqqPZcEB1v
 j/rNZHDII+ypR4d0AP9uh7UR5dv8l/4c511O/E3+BErwmbeHIKe3zj1Hhl7ZgUvU1scy86wxZhn
 kmeQqO6LIeyKVGwcBTcJ2+C/oYUvz9z4DTFyZxjJwO/wPGfYs6LvdJG2s5E87fdSJgRP75rL7ys
 z24vC+Uj8CNWWWJbTniw1hbhPP2gKpvR9kdxgsDQqwomS1pgAcBXGAbGri7LaqS3kP56u6VSTnm
 CWr3xUKfrPUrqh7usH+wjzI9hyPmFmDxFQN0Zpr72GkvnXzqA5fV8YLVtmVIsCcDwpmjZaGgRrs
 XAgyK5aTeUjwJ5SInRfOi1Ga4uxgYiGxT687k2b/6ZyaEzIeSw+MjuH4f+wQ+wvgCDVUberSdi2
 gqC4MktwNizHcHQR636dPZ0i9wH9cUQxPi4flgllncHWQVQw0IurbW4/oAM+m+ZILy3h5oyfurc
 2ifbkqpfEVlDoSp/3Cg==
X-Proofpoint-GUID: J6Ii6R4d6ys5YEhZwZJAL-uZnqp2cBJb
X-Authority-Analysis: v=2.4 cv=fMIJG5ae c=1 sm=1 tr=0 ts=6a4f4146 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=1q2gNXp5umABOXX4V9YA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: J6Ii6R4d6ys5YEhZwZJAL-uZnqp2cBJb
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfX3/SdfiGYJUKy
 VrgvBf8O+nFfXaEIZ7q2q5UdL5h0fTnOc4Bmf90KmK/5++H8U5xIucjQxq11Eq3XzEOv96W6kov
 VhJyCXqo94oEUfC9kOvKoApUf+032q4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 phishscore=0 clxscore=1015 impostorscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607090060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_233551_547994_D2AC5DEE 
X-CRM114-Status: GOOD (  24.04  )
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

Some platforms keep the PCIe link active across bootloader and kernel
handoff. Reinitializing the controller and toggling PERST# in such cases is
unnecessary when the driver does not need to retrain the link.

Introduce link_retain in both qcom_pcie_cfg and qcom_pcie to indicate when
link retention is supported. During initialization, check the LTSSM state;
if the link is already in L0 or L1 idle and LTSSM is enabled, set
link_retain and skip controller reset, PERST# toggling, and other post-
init steps.

The max-link-speed and num-lanes properties in Device Tree cap the link's
maximum capability. Retrain the link if the controller's max link speed or
width exceeds the Device Tree cap, unless the currently negotiated speed
or width is already within that cap, in which case the existing link can
still be retained.

Configure the DBI and ATU base addresses in the retention path, since the
bootloader may use different base addresses than those provided by the
device tree.

Set l1ss_support in the retention path as well, since it is otherwise only
set later in the normal init flow which is skipped when the link is
retained.

Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.h |  1 +
 drivers/pci/controller/dwc/pcie-qcom.c       | 68 ++++++++++++++++++++++++++--
 2 files changed, 66 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index de4b245b1758..0c98b914eb52 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -471,6 +471,7 @@ struct dw_pcie_rp {
 	bool			native_ecam;
 	bool                    skip_l23_ready;
 	bool			skip_pwrctrl_off;
+	bool			link_retain;
 };
 
 struct dw_pcie_ep_ops {
diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 9ca620d4746a..77d2d989e9da 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -260,12 +260,14 @@ struct qcom_pcie_ops {
   * @override_no_snoop: Override NO_SNOOP attribute in TLP to enable cache
   * snooping
   * @firmware_managed: Set if the Root Complex is firmware managed
+  * @link_retain: Set if controller supports retaining link from bootloader
   */
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
 	bool override_no_snoop;
 	bool firmware_managed;
 	bool no_l0s;
+	bool link_retain;
 };
 
 struct qcom_pcie_perst {
@@ -996,6 +998,50 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	return 0;
 }
 
+/*
+ * Determine whether the link established by the bootloader can be reused.
+ *
+ * The max-link-speed and num-lanes specified in Device Tree are meant to cap
+ * the link's maximum capability. Retrain the link if the controller's max
+ * link speed/width exceeds the Device Tree cap, unless the currently
+ * negotiated speed/width is already within that cap, in which case the
+ * existing link can be retained as-is.
+ */
+static bool qcom_pcie_check_link_retain(struct qcom_pcie *pcie)
+{
+	u32 cap, speed, cur_speed, val, ltssm, width, cur_width;
+	struct dw_pcie *pci = pcie->pci;
+	u8 offset;
+
+	val = readl(pcie->parf + PARF_LTSSM);
+	ltssm = val & 0x1f;
+	if ((val & LTSSM_EN) &&
+	    (ltssm == DW_PCIE_LTSSM_L0 || ltssm == DW_PCIE_LTSSM_L1_IDLE)) {
+		qcom_pcie_configure_dbi_atu_base(pcie);
+
+		offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+		cap = dw_pcie_readl_dbi(pci, offset + PCI_EXP_LNKCAP);
+		speed = FIELD_GET(PCI_EXP_LNKCAP_SLS, cap);
+		width = dw_pcie_link_get_max_link_width(pci);
+
+		val = dw_pcie_readw_dbi(pci, offset + PCI_EXP_LNKSTA);
+		cur_speed = FIELD_GET(PCI_EXP_LNKSTA_CLS, val);
+		cur_width = FIELD_GET(PCI_EXP_LNKSTA_NLW, val);
+
+		if (pci->max_link_speed > 0 && speed > pci->max_link_speed &&
+		    cur_speed > pci->max_link_speed)
+			return false;
+
+		if (pci->num_lanes > 0 && width > pci->num_lanes &&
+		    cur_width > pci->num_lanes)
+			return false;
+
+		return true;
+	}
+
+	return false;
+}
+
 static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 {
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
@@ -1014,6 +1060,15 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	if (ret < 0)
 		goto err_disable_regulators;
 
+	if (pcie->cfg->link_retain) {
+		pci->pp.link_retain = qcom_pcie_check_link_retain(pcie);
+		pci->l1ss_support = true;
+		if (pci->pp.link_retain) {
+			dev_info(dev, "Retaining PCIe link\n");
+			return 0;
+		}
+	}
+
 	ret = reset_control_assert(res->rst);
 	if (ret) {
 		dev_err(dev, "reset assert failed (%d)\n", ret);
@@ -1074,6 +1129,9 @@ static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 {
 	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
 
+	if (pcie->pci->pp.link_retain)
+		return 0;
+
 	if (pcie_cfg->override_no_snoop)
 		writel(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
 				pcie->parf + PARF_NO_SNOOP_OVERRIDE);
@@ -1364,12 +1422,13 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	struct qcom_pcie *pcie = to_qcom_pcie(pci);
 	int ret;
 
-	qcom_pcie_perst_assert(pcie);
-
 	ret = pcie->cfg->ops->init(pcie);
 	if (ret)
 		return ret;
 
+	if (!pp->link_retain)
+		qcom_pcie_perst_assert(pcie);
+
 	ret = qcom_pcie_phy_power_on(pcie);
 	if (ret)
 		goto err_deinit;
@@ -1398,7 +1457,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 
 	qcom_pcie_configure_ports(pcie);
 
-	qcom_pcie_perst_deassert(pcie);
+	if (!pp->link_retain)
+		qcom_pcie_perst_deassert(pcie);
 
 	if (pcie->cfg->ops->config_sid) {
 		ret = pcie->cfg->ops->config_sid(pcie);
@@ -1414,6 +1474,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	if (!pp->skip_pwrctrl_off)
 		pci_pwrctrl_power_off_devices(pci->dev);
 err_pwrctrl_destroy:
+	if (pp->link_retain && ret == -EPROBE_DEFER)
+		return ret;
 	if (ret != -EPROBE_DEFER && !pci->suspended)
 		pci_pwrctrl_destroy_devices(pci->dev);
 err_disable_phy:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

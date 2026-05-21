Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A899CD5BB1
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 12:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5eZLWFSukoeFOlr7JRaT/DgQajq74hAPAL+64gbcP4o=; b=UODPiFUZzmyIOX
	ZbcHHSsCCxot+oErOxWU3E1w67LMZmjVvX7zBrAl1Tt3rpnxREkAbRR1rGMjGrgsfE1IOVfjBUNji
	ugtd7RDRHOlDKmLiIZ8ybquW5ug6NliY10mY/4UHMtXAb9aevqvXTXyYIEF8Q9qT6K6Fx1HYvz2Qy
	zEcpNPOOgnAq1ZCkS2D4RpmpXZx1kuNHayxbK+rMiWlHgvM+hc+rAXGLvhbRB9rE3133h9vJejeZ6
	g2XvUDogkoBQHjCHD3bxawvHl+YJZByJu6ch+i059T2CWLNPLMbkc9wvMy+toGFi2Z6ALgZK0o6zf
	sGaPDDrVhnqCWzVyPXbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xj-00000007nFa-0k7l;
	Thu, 21 May 2026 12:57:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2xg-00000007nER-0wZ3
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 12:57:17 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64L99koi3343477
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:57:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vomIflt1wBG93ej2ALoqD+yPyz13mCFS7oAgFK8rkBc=; b=k2AOAR9aiIov6Tn1
	20C5o+2oPbbl++DKVtBEnYhQIANntx4M+F0010GNxztWGtV3ne4uvoz6lbOlZCC5
	UXEsDvdPX+whUTAjO+T1yqyaWtFQZBjNTqRjoVIZ5RxXMhulXKgdqNPhHpmIZkNk
	PDiKB/c1vD7kTljqwoWDURS+Dq/SoG5Ml8Ne50g8b6azEqmy0uPxnoO7d0QUD4zA
	wn1FPlpMC1Om33ZsO5I4JBCsB/GrlIFwsebIH92pGvnhea7Di1Tj1TtzxX9IdSKu
	zKNN4FzT6gsxWg+7B7uyqKlYw++Br7xyDO9nK/q/Y6kAtKHaNadZJbgQjbtNrtBI
	InNT1w==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9wahsce3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 12:57:14 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c823549b1fcso10313400a12.0
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 05:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779368234; x=1779973034; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vomIflt1wBG93ej2ALoqD+yPyz13mCFS7oAgFK8rkBc=;
        b=YluhEPOP5kOFjZUdAvNebOLnaKaICLW1LUpx9iIAJnhhwMbJTJOj+vzSqeyCdo67E4
         GJPrC7XFP7tLm/aZ8nJMRtAa/xYCO3UOMLWhfSXVMc18dJmT9xfuqeFmmbGoMqYcFWKE
         qObSA2ZinrvmCgjb1o4jsrgHEUqLxKd/EFbdwDGjC8vvNK6XN4im+7ius1Pew0VHLiuj
         Iiprisj9Gs4i7ktCgDL5hsXw9hoZ3copJw7uikkKgG/g9D0rnDqIB4LnN+5AcNBrWdb8
         VAsJ4BHGTLeIDNvo2YwpLVGf18Sko8ZcCE0iA3JRkLZkq+vW2wU3tgJK+o/7AvR8Yl+j
         Rrfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779368234; x=1779973034;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vomIflt1wBG93ej2ALoqD+yPyz13mCFS7oAgFK8rkBc=;
        b=RBRBub0R04IPIKjzC8FePY1E/PcVoIIs3lxe1PjrmjPEDKUaQr+GxlPGFxfvTb37hu
         nStO3W7ZoI+lhJuhsV8q5id7EDxUuk2948gKMB3cZRv8KX9TdGlk9woVrDuUdLZxJTPw
         tonw/OzUClHacn2IK43/QlDfja1zz3gNSd98I2/xCVGaSLevEZ+r3ey1uM9xmsbmHO5j
         IRhEIl5PNLvj1b0A39Vo1NYnN12bT/ArpUmWewKp/34d4TJa7U5Y5IF9mkhJF7yiG67n
         rfYfVyZnaDj0xXyduUAg3FPyJ13OOuhOBjqBde1t07xoP+pjFd+tbccmHgiaMh2c2l3j
         AZCw==
X-Forwarded-Encrypted: i=1; AFNElJ98khiq1xt9k6hWGpc4ZPkHPH8SRfZqmXhjFvt72SX8iVo1QSHW9yAylMBGd5btRQQguFf9u8p7VsY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvWsn7EqGZtyQuYvu345wYKRzrq4kiJAOMDnQj5vKyOD7Keyrh
	XaCCXLfb7l9JWaz31XmXtS5b2N0n27ForqWV8mTSdStJ9SS0bT3/3C6NXklDUOd3b4o5kJZQbx0
	YgywoIjbCliWX1do5Qsae4e1gcS+jF2hKn16XWJ94dxs04DymQ/0ZO9+tRCKqaW/YXqTA
X-Gm-Gg: Acq92OGxQdOY/yoQ+2Eqn9SsH2FSgqeGtoPtXEF2xL8PC++r9gbw/5U1pAxIrNToXRx
	VLZ8eWWLWf2Gk5iOlPPwNIaRevACi/aUVb6fRE5BH5wH7nSwgkMPGk9adnlV6dpbCuKYYuXGBWv
	C7AO8JtGoF3F8LsBflMoD9rUDNl6/wrdEl8vBs5J0Fsw4XBMwRX8QUtSynfjTYWNqxSq0AGUyZC
	jA5bmKI45abRe1oOUvQCeDFbGkxhft4hYeNwpoSP+MRb43UATs/UYC3E5MD6qOeSTYOXn9a5B/t
	T0Pp9LEmapmOLvJfIZ5cxXQoPUYi5CmOMNzSo033NLF+GNX0HxVUpw/wegyvSXzNwsKEh89Bxs3
	6C6nxpaSuma9yWVJPGPuiO2f169ZpeqCOe+gsX7ctqn/EYK5JkBt2Jajy
X-Received: by 2002:a05:6a21:6d83:b0:3aa:c9d8:d795 with SMTP id adf61e73a8af0-3b308555272mr3380160637.10.1779368233975;
        Thu, 21 May 2026 05:57:13 -0700 (PDT)
X-Received: by 2002:a05:6a21:6d83:b0:3aa:c9d8:d795 with SMTP id adf61e73a8af0-3b308555272mr3380129637.10.1779368233408;
        Thu, 21 May 2026 05:57:13 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85198f508bsm357984a12.20.2026.05.21.05.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 05:57:13 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 21 May 2026 18:26:35 +0530
Subject: [PATCH v2 3/4] PCI: qcom: Add link retention support
MIME-Version: 1.0
Message-Id: <20260521-link_retain-v2-3-08ed448b081c@oss.qualcomm.com>
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
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779368212; l=5792;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=3+5T4Qn4tm+vkgG27Np4c/MlLk3lVda8ilgq3YiaXT0=;
 b=3taxAhZvMHj6pmSnpng1cabvfhu1DN5TaebBCIxL9G67b0eO3II2ZzCt1hbB8rPsKQH/Xqv5J
 v0ME8HLCAcJCIWHybvoY2p6aRktajyUrl6JsQrI113udMooaQL1R0V+
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDEzMCBTYWx0ZWRfX0/Vl+5UgbtNR
 jskE5bk8/jQeqQF5FFS7z9q6zjye2TAt/h/gJ79it1Cqml24vPj6Kg4K5F43paefQeHt4qXtV4z
 6DWo+DUzC/pr5EriOhut4ESvJMI8G6RArPOzcpKIh8Gt4/82NuzswIS44R2621kKbNIWPBKSL7K
 ulNq84sbea/cavDExzvRec9epLlO+pGal8La7UnFHacaOBoTNiQuhbVwfIWKDpNo4567Mgd6IJ7
 X/PI6RQcoyGbH/IjQd4w+P7nEHWJXdrR6XUaWHUVQKLXI19FaqbDQ6I3RHMvWphObNj1revBKqu
 w+6ceAR0gSLgNaK8t2vfBzIyG31vR1vrNNVsdOjbU96VwrjL+c24HdyzsW+BoVJ2QrlZw1EX7tF
 ZjIYitLAvbCaOOCthb+Dp9oACik4Fh2kL+iZn6E7/e70uQCMfiiKADzxpCBLQ1uA4EWE49UKa2k
 xOnI949SoOOxkK3g4Qw==
X-Proofpoint-ORIG-GUID: UaJYQ5BDwj2Lp3Em0cUFr4015dsY6P3z
X-Proofpoint-GUID: UaJYQ5BDwj2Lp3Em0cUFr4015dsY6P3z
X-Authority-Analysis: v=2.4 cv=H8LrBeYi c=1 sm=1 tr=0 ts=6a0f012b cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=oQbQ34n3Jerzy_GFPTkA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605210130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_055716_386818_5DA14BED 
X-CRM114-Status: GOOD (  24.33  )
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

If the current link speed or lane width does not satisfy the constraints
specified by max-link-speed or num-lanes in the device tree, fall back to
normal initialization and retrain the link instead of retaining it.

Configure the DBI and ATU base addresses in the retention path, since the
bootloader may use different base addresses than those provided by the
device tree.

Also fix the -EPROBE_DEFER error handling path to return 0 instead of
propagating the error, avoiding unnecessary cleanup when probe deferral is
requested.

Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.h |  1 +
 drivers/pci/controller/dwc/pcie-qcom.c       | 62 +++++++++++++++++++++++++---
 2 files changed, 58 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 3e69ef60165b..be6c4abf31e8 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -450,6 +450,7 @@ struct dw_pcie_rp {
 	bool			ecam_enabled;
 	bool			native_ecam;
 	bool                    skip_l23_ready;
+	bool			link_retain;
 };
 
 struct dw_pcie_ep_ops {
diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index bfe873cbf44f..b061eaa227b3 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -253,12 +253,14 @@ struct qcom_pcie_ops {
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
@@ -960,6 +962,42 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	return 0;
 }
 
+/*
+ * Determine whether the link established by the bootloader can be reused.
+ *
+ * Reuse the existing link only if its current speed and lane count match
+ * the max-link-speed and num-lanes specified in Device Tree; otherwise,
+ * retrain the link.
+ */
+static bool qcom_pcie_check_link_retain(struct qcom_pcie *pcie)
+{
+	u32 cap, speed, val, ltssm, width;
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
+		if (pci->max_link_speed > 0 && speed > pci->max_link_speed)
+			return false;
+
+		if (pci->num_lanes > 0 && width > pci->num_lanes)
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
@@ -978,6 +1016,14 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	if (ret < 0)
 		goto err_disable_regulators;
 
+	if (pcie->cfg->link_retain) {
+		pci->pp.link_retain = qcom_pcie_check_link_retain(pcie);
+		if (pci->pp.link_retain) {
+			dev_info(dev, "Retaining PCIe link\n");
+			return 0;
+		}
+	}
+
 	ret = reset_control_assert(res->rst);
 	if (ret) {
 		dev_err(dev, "reset assert failed (%d)\n", ret);
@@ -1038,6 +1084,9 @@ static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 {
 	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
 
+	if (pcie->pci->pp.link_retain)
+		return 0;
+
 	if (pcie_cfg->override_no_snoop)
 		writel(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
 				pcie->parf + PARF_NO_SNOOP_OVERRIDE);
@@ -1294,12 +1343,13 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
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
@@ -1322,7 +1372,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	dw_pcie_remove_capability(pcie->pci, PCI_CAP_ID_MSIX);
 	dw_pcie_remove_ext_capability(pcie->pci, PCI_EXT_CAP_ID_DPC);
 
-	qcom_pcie_perst_deassert(pcie);
+	if (!pp->link_retain)
+		qcom_pcie_perst_deassert(pcie);
 
 	if (pcie->cfg->ops->config_sid) {
 		ret = pcie->cfg->ops->config_sid(pcie);
@@ -1337,8 +1388,9 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 err_pwrctrl_power_off:
 	pci_pwrctrl_power_off_devices(pci->dev);
 err_pwrctrl_destroy:
-	if (ret != -EPROBE_DEFER)
-		pci_pwrctrl_destroy_devices(pci->dev);
+	if (pp->link_retain && ret == -EPROBE_DEFER)
+		return 0;
+	pci_pwrctrl_destroy_devices(pci->dev);
 err_disable_phy:
 	qcom_pcie_phy_power_off(pcie);
 err_deinit:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

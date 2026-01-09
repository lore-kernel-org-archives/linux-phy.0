Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D6F1D232EA
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 07:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2LIECDqzkx5L5d6S0bk+ImAcE1xZnb9XUg8D1XJl0U=; b=j2ibBge27/EQHe
	tcCGL1VSD3F9CrKWCYNYX1q7LXVg6JJ7kTAj+vYSey0MUGNejBCjpgIqW2PQQL9d3a76ivtZXLWro
	DuXX0t1GmC8V8dIKIvkbpNGwQL/gfGkuJ9w9jvA13ELWgEBMcVGX3mJHJs+LsDlMUZs7JQnPXW1Do
	uCyMz2aGB9k0HoR0n8jX0d5FakYUPhwZNr5UpA2T5WSaw8gp2Iq8STpTNZUmdXkBiHNNm+LGYVn+F
	EUEgq6isY4y4Xs95iqdr8bwSenRi8Hq/a+/ggeCF/HAQ/v/5XEbuu6qr+JxZDwEM9DguwHXnBtRGc
	tPJ0/VvLAVEd+4k0O72A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oU-00000001hK8-1CKK;
	Fri, 09 Jan 2026 07:21:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oQ-00000001hIG-0yOr
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 07:21:37 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608MmYpH3214264
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 07:21:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	72S83sFcJLczdJt8oEW24FAL+N/F40XzrhBECgz9llc=; b=FdOinPKaTYDaHT4h
	fQToOCGUwhBzCHAGgahjXuDn6HqKxW3zHbrFvSl4wuwsfAmtpkcyOpg0gFXeweiy
	grH6Yg44JTuzVq/mVqGlZ1Kb3aPHZo2b2uNV+y/LlSJTCCrSOXtYgGTFqZUxNbWq
	1EuFLO9vFg2HDCEhCi5RuY0+U/NW4YWTvOBC7MP45frAnLDKbdirpS/kh4laBTBh
	RuOJwRrbb8d805eZvUaOm1Wcy1/RaKTKtNJoNg44iP9YXh5d+Z6H5+gdehM2PSZg
	f1A5I35RGuUzUAI5TZ9/I7B2p+X7mgYj2yUegnumUiSpu2re8SsrSNdAd2XYDaip
	IJoukg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjjt0hkft-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 07:21:32 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81c68fef4d4so3240415b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 23:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767943292; x=1768548092; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=72S83sFcJLczdJt8oEW24FAL+N/F40XzrhBECgz9llc=;
        b=Nr0xjVDA4pHkjMoIjabIjTvAYIZIq7AIe0efizh0DR8AtQhDqs0if+41GRu9+Q2ZzQ
         LXjJKBwYxwQopDanoMPMu6ZeBWyaaQTvMdQFF98bfDUPNDzhLcLFzZntxG5qfzRnJ4Tc
         km1zboBnG2/bdPnU32jU/wiTmSfaLnyEAt/qJFfnEecfa+BizBlmrxB5DrPfY/0z8B9u
         NRNNU7XS0xupvomtsVsa3fqtjPARRxokkT9l122zkn79ajpU1qzQnwRFxn43b/r6oKwB
         7KRKCW/uuBHDQAQSFCGc9WjgeFa2grQCw4wEUxqBabzOO0VZtkXre5kcOIPXRpfASxax
         Ie/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767943292; x=1768548092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=72S83sFcJLczdJt8oEW24FAL+N/F40XzrhBECgz9llc=;
        b=BMhsRPiYDEQsoBWKZBhNrL3p+f6DRHqCkuKsCX6f8Wdt2VVoUlspmSuw1HgBHjvxHY
         wcLvreagN2IalEzO4K/x4KM7V6H0s2dd6p4n01ZF8Lq8PI23CjWprtlAWDATTOsVN+BY
         eeix8LygGQ2xPzl7o4QE/LlTp0LIkLL5VS0KJb0aBHGdFN664zg76UWZAITogQKi4FJp
         NwDNdqyI8edvq91YcnraiErZe10Xl0DPaF2gTD9500VixABlxJBOsAC+xzYJpoTqcF7o
         6NVUCzPXFVo2eTzvg27hE+M2xX7PdwrvEGT2FAy0y5gDkyiA3fl+n9XIdm7CpCW46i1q
         hbdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQG+jpDdY2ea+mH4Dw/gvOoVYqHiriyu3a9zBpXi+LO1vPcnGLhilhsF8RBolsbpjnAwEB7FqSm8c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7nyNoJMWiRldPZkW7Gf2pjbaumdnvzgnd2VK5d1SYJ94af42P
	CpLbofW2D7IWl1QKOVtpjldWzj9YteliRlhp3mdUSgfPtBULBIh67DoQkojmYxBeYEByZGz+FhD
	YO7JaZTMuyWQrmVvfyBRotKKZnjQJijvk/xL9tbPSW6EBBAPKdCkoUeG+4GrEwK3ECtDr
X-Gm-Gg: AY/fxX5ooLNK9MGGAVvJ5u0oS94vrn17LAFr9QKvuudNWngSJm0W0qKf5UZqVVUCM9j
	beCvHMCk0x0CZL6xi9RIoDlttuJ4/X7iuyIbLqN76IcNsxSV6/CU5VKE9JrM6j2YOekrhrIAZ/l
	jThadjDSbMR/B6ISDVqiDhG3UT32cLP0DGtxS8SYxA1sK0AYDIoclaAq6oaxNKPMR4YJCAOL1BI
	fko4Tpu4OJzdiK5S7Q/1tziN0VR7/8+b4CJQSNl4mZsPt0fOYlzsYNhWxOiU4hKYkrgXvqFBNwC
	AwqqID/QdA6zW5IMyZzT36jUwpPcJyUGTTNhQfLt9803I42RrkXk7ednUcEc5TsJGuVNf464ppU
	tXSP0ZOGpT5stV+EgshO1WcYvMni8AMXouYeyvHRZrxc5
X-Received: by 2002:a05:6a00:e19:b0:7e8:43f5:bd18 with SMTP id d2e1a72fcca58-81b7f3f1ff7mr7879186b3a.45.1767943291776;
        Thu, 08 Jan 2026 23:21:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBsaYWHr8eZog5Woy39kTSosevSsQ2EU8sshvTGXJv+BXUHaeNfYg7ku/1jVEn99TS7RH7bA==
X-Received: by 2002:a05:6a00:e19:b0:7e8:43f5:bd18 with SMTP id d2e1a72fcca58-81b7f3f1ff7mr7879143b3a.45.1767943291246;
        Thu, 08 Jan 2026 23:21:31 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm9510369b3a.30.2026.01.08.23.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 23:21:30 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 12:51:09 +0530
Subject: [PATCH 4/5] PCI: qcom: Add link retention support
MIME-Version: 1.0
Message-Id: <20260109-link_retain-v1-4-7e6782230f4b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767943270; l=4282;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=sATat5gXi+RmClCqAUl81QS783eB44xkTcOkPS41g74=;
 b=/zFkBrsSntluR8iQc/wubd+dohrF5L/1t1GC/liOmhwA0+Vxai9BpzHpjhct44yyHtNpaSt6d
 70jOpWu4WP0Aofc9GwjUx9bfI/LQXB3Oy5Huej4BYcKA8AjhCv1Naim
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: dOChtCTV4xi2nOe2M5Rd8p6hFIqJ_aNx
X-Authority-Analysis: v=2.4 cv=VJzQXtPX c=1 sm=1 tr=0 ts=6960ac7c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=S-wDCh2AgS0RhsWIeBgA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: dOChtCTV4xi2nOe2M5Rd8p6hFIqJ_aNx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1MCBTYWx0ZWRfX9p0NprvLyteJ
 r58VJp2XIVBeEEQkG3A2d6TnCvoD225CSlMJ5HvjL3KsCtUabY7t2jbVdMCXwCndR5bJFaF7IDW
 HyzX3FQTk/icn1hDtMWf8CzjqrMu/gXtst3o8f9O9pl/39F6hh+5F3dPtmMmKbX690JvxCAG/Cd
 V7c5yaE2Fn9VyJTX6zvNt0ic3qD/svyNDKbizCTxH6nU3i+8g4Bpq7UP4NgMNm5WrhUQ2BTnZeW
 RE1LtHXrAEGoTVEZiFvBjP0MKlqOhfDpkUxI5FtqkYscWtvXl7O5YD6gKN+cNn3wFHiAysiOtDF
 04aMd8cJs3CvmOrgwoRuL8RHhnl2Abgi3fgc6oN5CzNUYf9ci55OkDqYLh/rIB4tnF+auw6YRyr
 vT0df0jbavDgIQEVhgfhcoA/dFhdO1sBVpH+pjHaZIICgyvmP58aKQzuZ6Y91qB6Z7Dh3wvV/ws
 bwBG/zk+7KHmjAGCDAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_232135_964198_658C6167 
X-CRM114-Status: GOOD (  20.01  )
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
handoff. Reinitializing the controller and toggling PERST# in such cases
is unnecessary if driver doesn't want to do link training again.

Introduce link_retain in both qcom_pcie_cfg and qcom_pcie to
indicate when link retention is supported. During initialization, check
the LTSSM state, if the link is already in L0 or L1 idle and LTSSM is
enabled, set pp.link_retain and skip controller reset, PERST# toggling,
and other post-init steps.

If there is a devicetree property to restrict PCIe data rate and lane
width go with the normal execution instead of link retantion logic.

Configure DBI and ATU base in this scenerio, since bootloader DBI & ATU
base may differ from HLOS one. So use the DBI & ATU provided from the
devicetree.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 50 ++++++++++++++++++++++++++++++++--
 1 file changed, 47 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 9342f9c75f1c3017b55614069a7aa821a6fb8da7..bdd5bdb462c5f6814c8311be96411173456b6b14 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -259,12 +259,14 @@ struct qcom_pcie_ops {
   * @override_no_snoop: Override NO_SNOOP attribute in TLP to enable cache
   * snooping
   * @firmware_managed: Set if the Root Complex is firmware managed
+  * @link_retain: Set if controller supports link retain from bootloader
   */
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
 	bool override_no_snoop;
 	bool firmware_managed;
 	bool no_l0s;
+	bool link_retain;
 };
 
 struct qcom_pcie_port {
@@ -965,6 +967,35 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	return 0;
 }
 
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
+		if (pci->max_link_speed > 0 && speed < pci->max_link_speed)
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
@@ -983,6 +1014,14 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	if (ret < 0)
 		goto err_disable_regulators;
 
+	if (pcie->cfg->link_retain) {
+		pci->pp.link_retain = qcom_pcie_check_link_retain(pcie);
+		if (pci->pp.link_retain) {
+			dev_info(dev, "Enabling link retain\n");
+			return 0;
+		}
+	}
+
 	ret = reset_control_assert(res->rst);
 	if (ret) {
 		dev_err(dev, "reset assert failed (%d)\n", ret);
@@ -1043,6 +1082,9 @@ static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 {
 	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
 
+	if (pcie->pci->pp.link_retain)
+		return 0;
+
 	if (pcie_cfg->override_no_snoop)
 		writel(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
 				pcie->parf + PARF_NO_SNOOP_OVERRIDE);
@@ -1300,12 +1342,13 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	struct qcom_pcie *pcie = to_qcom_pcie(pci);
 	int ret;
 
-	qcom_ep_reset_assert(pcie);
-
 	ret = pcie->cfg->ops->init(pcie);
 	if (ret)
 		return ret;
 
+	if (!pp->link_retain)
+		qcom_ep_reset_assert(pcie);
+
 	ret = qcom_pcie_phy_power_on(pcie);
 	if (ret)
 		goto err_deinit;
@@ -1316,7 +1359,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 			goto err_disable_phy;
 	}
 
-	qcom_ep_reset_deassert(pcie);
+	if (!pp->link_retain)
+		qcom_ep_reset_deassert(pcie);
 
 	if (pcie->cfg->ops->config_sid) {
 		ret = pcie->cfg->ops->config_sid(pcie);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

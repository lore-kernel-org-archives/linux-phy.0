Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0825EC982DA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+pinBqRmF1X9q22PTOkGPl0ZY3krMW2c3g0NZ7Cg1s=; b=xQQi7MKIRp48K9
	QE5nY1vNjTn6LTh3vhvulEwkvQIHBkKF5Zkkw+gDqQfuoVtVo/ve9+uwQgaquf77LPe87WcSPIc6c
	ocaFbtGMDTBb1NyVYZ2jamV+89x1C8nIHXz0rp3jwKjEXuBOUOoqmvtzp5BRd6d8oyKTZj78zIDzQ
	riaW3UiYGJOB7eBKbzRx+SvRn5oZGi0Qkseph1vpjpiTIcZ177PJjUziurzIkOzocswzY9iZW2XMc
	fKPbd3vHjHi/XSmmBnzgZW90vKXKT2Qp3SFLuWiXSdAlK2wdmCBsK/A7dg7rFn6QettKJPKVU2b09
	72xhliH2mV3NW9EFlB+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wik-00000000wNs-3Ppy;
	Mon, 21 Sep 2026 05:37:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Wii-00000000wNI-41NR
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:37:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L3YtBK142170
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AjvDOtrhl3XR15sbKhhIi5BKrmoRXrS0m7WZhaoqXIw=; b=M/l7wKnQmup7wJWA
	HRzR6my0vJmjFlR/OQf2Z/Ll+6/XVmMv4YuXA5MwKN1lXgRkpzQk7weaMiQMKdOD
	++QIG/QsYvB24T01uHPSCx2Tld00yzCtgAIRdOlISGIvkyiDicFwccQ2vhfSTUOz
	KXGLlyJ0TMrWPZeCL6S5Fb1McxTN9qrmyMi/qBsMgeyy0YoxvqVEWgU0gFLfrygD
	sXNzrSyjcyyIauPmlm53iQE3oW6nwAX0Y1t+a285BwMlfp4x6akGrdBBw8fV21dO
	OzJAFRlWUd/TaJkEyq3bpgOUZFR4RhGZMeJ2As6FcPO2YCTkn2kC8R13CjFsrpDf
	LnHEMA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtu1egng8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 05:37:40 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-39b6416441eso4424784a91.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 22:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789969060; x=1790573860; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AjvDOtrhl3XR15sbKhhIi5BKrmoRXrS0m7WZhaoqXIw=;
        b=EleftdKMwK06iwUPMXK48bNmzXND5F3FCgTS9NMc0e2j2mNDWR18XfyUuwi8ixXhsy
         L4IdiKhdx3mgbD4FoRb/QK8HhSQvyGDdaoknlVnyqxIHOAiDpc0f1dK5sQCYXn9Jb5MT
         4P4Tf6wMuAgj/HbVse0/O+5T5Aub68m8NHNspQAVZhbluvecoZrSs4JfNYebJkizU/1C
         OOHe3HUnmNzkew2187WzVtn2CH5Sx0nLKQI3StKN/rubY32Fk6ypffuBeusTSTYY4gnd
         Y4sSObA8fpktojRWqqUYXkpTDQNIXQG8MBdQEyr7UKu4GBf+JWIA8p/AdDeDLnPiyyR5
         Kkog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789969060; x=1790573860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AjvDOtrhl3XR15sbKhhIi5BKrmoRXrS0m7WZhaoqXIw=;
        b=dxPs5uf0mj5/L/bKQT9PRv3wjZoIOesvUEHku06nG6pgpKq/EfH+Rqk041XE3Zlpbs
         shbwJmCFRRdeCOyD6Du9DaozjC4xl6feYz9jiroFzgVWc3gSLnGI5MB6fMGTgYY5pf2n
         Jn1TKdWXfH9IwlknOzUAy/syEFaOJnG76xbDb/wDYJmgoT2fGEfHFNnRbiJF401l4iW/
         Ed9pYW7cWYhiq+dAU7TwqCCWSrxMcaKRi3tJGYt5azRXmwcW0Ds+e8C+a/pUC5AwCzOo
         W9H6O0P7YclLeZ7cRznjihLjajRrMGfzG3wn0kz2LJQ97xZadfl1YUxOv/kywVUEZf1T
         VjOw==
X-Forwarded-Encrypted: i=1; AKwUvByb1ufdHqlK++36jffqE1CTjFa0fS95zxVplmkAwbR4VQEioXLkJ5h+BCG2F6WFbUEz6CgGMj6X5Qw=@lists.infradead.org
X-Gm-Message-State: AFuF++kMCS96Gqe/kGz5qIVVSpi6GORuPwgkDjbjLKjPo26o4dtUWzBR
	B3dqUf3tLcTcsCwNBU+3QdMyIZmPlnBVuuMrYLSKLKSVJH0N/fweeL2ZAmlQMTemkOkgvG7dHZF
	0qG2IzqC18tTBgpM6mwIOOO8KYWs3UWWko2MAMihruviWCz/ZaGhSjUp3tTgOKQbQcQuT
X-Gm-Gg: AYBFou3mGLVeEXLeNaGKyne4T7nWvTz83WmR0W7PsyazNxlUELmVKtnDut67cUoWzFG
	pLfQqqwpC5Q70Za7poXl+YWqghzEyI+x2YlLJVX1GHD/6RBfpMzoYcHDeAagtzpa5FU8yCrLDCR
	b0ZNi7ML0mdNoFTb709BgGMk0jnMr7Gv4TjIlpBXovx0QmjSWJd4wEJZPp+iTJKcskQ1lo+rzij
	BgdH9tbdU0ai1XGQWj8o5B5cbyfMOTno8/0YXGXXj/mhgO5D/FQ6XnJBl8/PpOxo9h7TA5Xpmml
	2ChGMtQ1NgrT2YKvixp67KBmKpcAR3MUAj8l4JxI6vHUIV7/+5nyW3w1//hChqg7bJK5eHklO6n
	+h0yiL7rMmV1XvXCy2K3c4Oe/bxPeRygP8w==
X-Received: by 2002:a17:90a:e7d1:b0:39d:f2a1:31 with SMTP id 98e67ed59e1d1-39e54e77eb2mr15959720a91.17.1789969059701;
        Sun, 20 Sep 2026 22:37:39 -0700 (PDT)
X-Received: by 2002:a17:90a:e7d1:b0:39d:f2a1:31 with SMTP id 98e67ed59e1d1-39e54e77eb2mr15959687a91.17.1789969059264;
        Sun, 20 Sep 2026 22:37:39 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144d55d45a6sm15054568c88.9.2026.09.20.22.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 22:37:38 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:07:11 +0530
Subject: [PATCH v4 3/6] PCI: qcom: Add Nord PCIe controller support
MIME-Version: 1.0
Message-Id: <20260921-nord-v4-3-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
In-Reply-To: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789969033; l=2648;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=z+Ya1VcXykQjtc7MvWy5pcQNsDt9baIxgws/kJipBlQ=;
 b=5HjTg6Kz8BbxPfLUWjxTYnh1/eVS+81rNP1VesBI3jHBobY9c24kL1vXGbibvm6gjg7qHlKW/
 dMW8nLJOuOtD9WA4uV9bct7Fs7LSUNualsKxKSWTLIjndB/Re3IQY/Y
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfXwF/5gRQWcIfW
 nS1soQofQIjFDdRF2nCVBEm+RiCeO/UsAQjNbBlZrsGnBcem6McPhZiBtxpgmBNhPaCSN8oJKPy
 eEotY3Et/xNhh/B8C6tMmLS8ZlYwEXk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDA3OCBTYWx0ZWRfX064Q9IQtGxJv
 TngMmtxM63LInv8xAMsaHTZHHLUR1a6LInPkzTbFFvLmTKeiBflNTK7CZlwjMAKo+DlXy13RzgK
 z0nIwvpUWYQaAdDvychHtSWjvfD9Rfx8zCCROOLc+XQwcdEFHNdXjrDKQ9uB7PQ6wUBsFdDxKgA
 ErRiIrGL5KTMHvVwsCDGr32zUvYjqVJmF4kE+cggxf4lZBsUCdVSAJ8UtWiqgxdHAl0MoHC0piL
 o9eb0FU+lP/TIJgZD/HGeBKjpEPEB8Ycq8Q5tUJwxQkVmnmyzXKrA6h+v1MdwvAPonjJWOyjrcP
 Jc3maPrwh2PiTINfbtmjdBdnzkIIqmb9pzWTt6Vv6fNUuH9jyhNGLOXjXPFOoLzQOYr6/Op444k
 4F4IdwVMdPQYF2DGKZJzTfZnNusta9RlMFwXbyo5X3+0g6w3OkxXWscd6XkIUQJIxAjX1DRYPnw
 QhBQzF4tOP5r7S8fXDQ==
X-Proofpoint-ORIG-GUID: smCFqR2dNt5H9jbycVUR5c4dgjn9Swp_
X-Proofpoint-GUID: smCFqR2dNt5H9jbycVUR5c4dgjn9Swp_
X-Authority-Analysis: v=2.4 cv=A6r5rKWG c=1 sm=1 tr=0 ts=6ab0c2a4 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=fhppCylznReUS4Xj7DkA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_223741_009532_D1EAF1BB 
X-CRM114-Status: GOOD (  15.24  )
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

Add the Nord PCIe controller configuration and the platform-specific
settings required for correct operation.

Nord requires the NO_SNOOP override and L0s to be disabled. It also
requires a clock-gating-control (CGC) workaround to address a PCIe
power-domain timing-convergence issue. Set the CORE_CLK_CGC_DIS and
AUX_PWR_DET bits in PARF_SYS_CTRL after controller initialization.
The SLV_ACLK_CGC_DIS bit is already configured by hardware reset.

This behavior is documented in the private QCTDD11972446 erratum,
which is not publicly available.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index b58a607b713f..304628b57f33 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -281,6 +281,7 @@ struct qcom_pcie_cfg {
 	bool override_no_snoop;
 	bool firmware_managed;
 	bool no_l0s;
+	bool disable_cgc;
 };
 
 struct qcom_pcie_perst {
@@ -1097,11 +1098,18 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 {
 	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
+	u32 val;
 
 	if (pcie_cfg->override_no_snoop)
 		writel(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
 				pcie->parf + PARF_NO_SNOOP_OVERRIDE);
 
+	if (pcie_cfg->disable_cgc) {
+		val = readl(pcie->parf + PARF_SYS_CTRL);
+		val |= CORE_CLK_CGC_DIS | AUX_PWR_DET;
+		writel(val, pcie->parf + PARF_SYS_CTRL);
+	}
+
 	qcom_pcie_set_slot_cap(pcie->pci);
 
 	return 0;
@@ -1630,6 +1638,13 @@ static const struct qcom_pcie_cfg cfg_2_9_0 = {
 	.ops = &ops_2_9_0,
 };
 
+static const struct qcom_pcie_cfg cfg_nord = {
+	.ops = &ops_1_9_0,
+	.override_no_snoop = true,
+	.no_l0s = true,
+	.disable_cgc = true,
+};
+
 static const struct qcom_pcie_cfg cfg_sc8280xp = {
 	.ops = &ops_1_21_0,
 	.no_l0s = true,
@@ -2464,6 +2479,7 @@ static int qcom_pcie_resume_noirq(struct device *dev)
 
 static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,hawi-pcie", .data = &cfg_1_9_0 },
+	{ .compatible = "qcom,nord-pcie", .data = &cfg_nord },
 	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
 	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

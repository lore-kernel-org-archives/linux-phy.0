Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4457606A32C
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lPFlB1MV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=M6b0b8HD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=kHqWd/n2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qbVzdUe9k7iMkrqMIXT58YVc7VKoXfwIS9E0+0RwFEQ=; b=lPFlB1MVjdhgHNzPImf0D/FKDY
	uZAImv2tCOFilKJ3hi6BxrvbhZUONgqrf1tq9ZFARVxyvJdnLieU4N7R9b+Tyj0mDnOJ4wIAMhwaR
	RzzSG5dRf42vrbLXl3KgtNqgtIs/2jCaZkOGYohs/9wvJ/H4uwG4fQqZGnMiIqcJ+n0UMdBje1dEt
	dlqvKbOyqNaT37bdXbo42i3UWrX95pPZVz0Xbrx7eF0I14CZDpb/Tb6eHfL0r6tGDzPR/J40yd70F
	97fcUVFi9dSp5594Ht6mVu8JbYjkkmOfb+PAzB0SVsK7gBlcMq+/QWkRtc/9B8KNS8Lm9apxtDQgp
	gZO8IvRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxli-00000000hDP-1kfj;
	Sun, 22 Nov 2026 02:57:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlf-00000000hD3-3DRj
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:57:29 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM094ON272297
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DUnnvu0xCaV3U5iYbpyqDcnVkGmFWOVxP0+69AyZGoo=; b=M6b0b8HD2sPhLeBY
	jXuvp/a/qLxkQ7r5of+7u2ADjaAfbj2b4xwIWqrZ3WpqxtYRwIqQpZuEgBKfcTqf
	uSm5ixUGONwINRwBWAlMJXiXN2BYbwnXLu8+ULDJiejyBkmT8Op2IS7IjD6wBL6/
	oosyd57rRVkf9FUpZSWsfP87yoMQRd8/lPA8hTQau5RLob7TvJ3wjb0ATmrES4gO
	x5eUYBeVST8xAphouK3defcfQts34woq5TEuws+WIC7ri7+fisjY0cUcPGEG2BcJ
	ePpQW9siruXVVnkOW3a4a/21haYCET1Q9SlrsoF/LDvddxOf8ImD7TaEw+NNRiYc
	0Zeblw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j34fk2cm1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:27 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30bcb065bfdso2518207eec.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316247; x=1795921047; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DUnnvu0xCaV3U5iYbpyqDcnVkGmFWOVxP0+69AyZGoo=;
        b=kHqWd/n2U7Z/OlDaPgdkTXlAeJko/+NLDAW+Qw9sjVWpPhVRYiq8O0v9aAm2YzPiQR
         kbp5I/sL/imrdxLMhdXkF4lS3X7Av22YmrLN/JAVfmgpLGMm5AEpncgTlDXwR/F2mkE3
         DFwWUMe4P157YtRSOXAJpGT7AMNefPcC1DG0/OhLOB6t7OmSVxWpcutw2wox136CjbEa
         z4KI7/aHPyRC3QnlBxBQ24x3hJPf2IqnGFp/sXAmZklaHN8XKF2nNv9OC3Ku/aeNaMTE
         oZ0WWTsRdsi6yRiB0+f009dmfBVJCyDaLKdJ1tX1QyaZLdVEZUrfZ2OeDtmw/tX/4QzS
         MmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316247; x=1795921047;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DUnnvu0xCaV3U5iYbpyqDcnVkGmFWOVxP0+69AyZGoo=;
        b=L74HvCwseu8nUSK7SWP1Jsln2pEULmI19wXhGNAs9y7gJxqiaObns2f4Pzi1wGR30y
         2VuNL94PyYzGvNVAN9oHwGweMDzJ5XKX4+FLEoYIaonhtjKma5nDEkDuFliLt/ELNQmY
         tBJ6zISfzvGkn9L1Gmh2+uUGufJxUD82TNBkVecaSLgVjk1SsMQnpmYx97FPFQYrx7+E
         YnOpMUPuceIj/RTx5iXhKG9cWMUx+fD5jZSVAFa+dGRKFGXsGh+X6upqqRbjTpqk3Upx
         lTSb7QIE5VgUVHmGze0ie922bzIalEw5UcdWSWKQKTXvoIzghjp3EC9BIxb68Ewjzbi1
         2Utg==
X-Forwarded-Encrypted: i=1; AL+hErHIwU7GKU8+F+rHtLOYmwaHL8Gmh6hOCocK2XJFhzcpyNcimxH6HgCk+utEocgg6tEPAo0f/2lGfpU=@lists.infradead.org
X-Gm-Message-State: APuU4Z89BUh5rVoB9pr/h3x9XiBXWPEQVNq4Ffb1RcjxlkAPGMtP3nzw
	ki2l6xDsogWUL2ztJzp5Le99ZH7y3lzRaxyu6HCk+EKlsFIP0o1VstdBIA4/5mTOOEr9Eak/r/S
	4a5xsUo9oJHR/b2WhU2Hcf5VkeiUisOANANzUiK2crAcf7QETSTnz/XZS5mrJHEESTLBZ
X-Gm-Gg: AZFdTZe8T9elZ5TWgYGRGCOtPc3uY3J+JtMPqPiWYHpWnaIbwLuiyGmynRMOhe/40dQ
	1rpjmIcEvvWwyvITz8bwLg2cHzcpW1V4i/PYOM8CFpRt98tLarVMbhRky0trMtyNO7DLh6OGxPI
	QTtLtDyNTYZGjUCjyvEuasextnZQeOfX0AK330aVCDzUKu1jZ3MpSe8wJ7pjbZC6/NMLMBKB5K0
	a9Qofe94jRx9oTIh7OkGyF5bik0SfRYB3iWyPyxR97H7lsPHk93TRvNfd30gIub4GQJlZn3xkZ4
	PsxKDbenr+ZeSHWNIJKtKY5I8Sd5DDc1AmbdVs4Ayues9ZqmJH++H7oHSJ6lcUmsYdx/REUZ/GM
	YzNKPo15KPsEzzCkykB76poVjGeSYmc4zupu4/ILFMoHbdVLjiRBCS6O337+1gz9aw8ihZQfJ6t
	+5Q1t0csbD
X-Received: by 2002:a05:7301:a0d:b0:369:fa21:ba0b with SMTP id 5a478bee46e88-38570847a85mr9002386eec.33.1795316246569;
        Sat, 21 Nov 2026 18:57:26 -0800 (PST)
X-Received: by 2002:a05:7301:a0d:b0:369:fa21:ba0b with SMTP id 5a478bee46e88-38570847a85mr9002360eec.33.1795316246085;
        Sat, 21 Nov 2026 18:57:26 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:57:25 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:21 +0530
Subject: [PATCH 08/11] PCI: qcom-ep: Add Nord PCIe Endpoint controller
 support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-8-6d8839ffa9aa@oss.qualcomm.com>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
In-Reply-To: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Frank Li <Frank.Li@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Niklas Cassel <cassel@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: mhi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316184; l=2371;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=8c0qizR+vJDbUelP4aajkaF2bPuI5eYuJiK1wGZgORg=;
 b=eL5h/o95qzrBD5KJbEm5L9/kOS4P75awELLFLbJl7PPCl/p6djtY0NQoswJCEy282rRHN84Rr
 loGzYvTNdqeDDKu6YWBkPsCtU/wYJPe9jTxYfL8UmXHrmhT875SEVdd
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: UEpHc7Ym3sebWZ3ScSueg8RqPR9X6xrK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX0kCawMRiVkC/
 VW9fl8ynkO6OF4Ea27e5d4gyhuJ4EEuOcaoiqgxkuRvrlpdAtKXYaBk3+Ynmok5QAEapvHyc7J9
 6mWq0rMj3sYg0tx6LABI6dEXNIKEu7ohj3b+HinixR+w1B1gje0JvNAjX08vA0a3FZh8O/9URq2
 t64N0HJ+FFTbrItepIYUEQrG+P0QHcb11OyO9Jrmx71exyzF+rXjopFNZfngQrJlevOYMoy/TNn
 iPwxemPOx1KBGroS3lzFjAQpn59iABGA5PeXXHSZP5E77StCS/HiSPbpleUojxhPHVeAMMUb92y
 aE8iiu6aUBKjx8Jf/YCBJqEIDmIalR1qsmq7WJXXXxOlRXXMrkHtsFoIsxpypwrCjvlidfIZl0m
 /BBLaOcoR68eyegA6A9MUPbp3rvBw3FPMUW6xCb6SelQRpTjEDNYIvaPn7/Gj4M/XM2AXTSy698
 PaMncozBYDGdl8OtD7w==
X-Authority-Analysis: v=2.4 cv=PsUG/AM3 c=1 sm=1 tr=0 ts=6b025a17 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=v3XsYOnbjY9NYLbxQCcA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfXwdxq8OOgw0ND
 WU5W8KvIER0bcGUC5at48tmLGBzOH+Azhc2GPyy2KRHbIf06pvmdGcvPVZt5fxArommQOQqFL/c
 RppEqPV/Qa36zEpBeC4HOk0tajBgtDk=
X-Proofpoint-GUID: UEpHc7Ym3sebWZ3ScSueg8RqPR9X6xrK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-21_06,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_185727_952264_29E42700 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add support for the PCIe Endpoint controller found on the Nord platform
via the qcom,nord-pcie-ep compatible. It supports HDMA, overrides the
NO_SNOOP attribute and disables the MHI RAM parity check, and is MSI-X
capable.

The Nord HDMA block spaces its per-channel register blocks 4K apart
instead of the dw-edma 256-byte default, so program edma.ch_space_sz
from the SoC config.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index c794a2207df2..661bd8aac7cc 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -171,6 +171,8 @@ enum qcom_pcie_ep_link_status {
  * @disable_mhi_ram_parity_check: Disable MHI RAM data parity error check
  * @firmware_managed: Set if the controller is firmware managed
  * @msix_capable: Set if the controller supports MSI-X
+ * @ch_space_sz: HDMA per-channel register space size in bytes. 0 selects the
+ *               dw-edma default (256).
  */
 struct qcom_pcie_ep_cfg {
 	bool hdma_support;
@@ -178,6 +180,7 @@ struct qcom_pcie_ep_cfg {
 	bool disable_mhi_ram_parity_check;
 	bool firmware_managed;
 	bool msix_capable;
+	u32 ch_space_sz;
 };
 
 /**
@@ -903,6 +906,7 @@ static int qcom_pcie_ep_probe(struct platform_device *pdev)
 		pcie_ep->pci.edma.ll_wr_cnt = 8;
 		pcie_ep->pci.edma.ll_rd_cnt = 8;
 		pcie_ep->pci.edma.mf = EDMA_MF_HDMA_NATIVE;
+		pcie_ep->pci.edma.ch_space_sz = pcie_ep->cfg->ch_space_sz;
 	}
 
 	platform_set_drvdata(pdev, pcie_ep);
@@ -984,7 +988,16 @@ static const struct qcom_pcie_ep_cfg cfg_1_34_0_fw_managed = {
 	.firmware_managed = true,
 };
 
+static const struct qcom_pcie_ep_cfg cfg_nord = {
+	.hdma_support = true,
+	.override_no_snoop = true,
+	.disable_mhi_ram_parity_check = true,
+	.msix_capable = true,
+	.ch_space_sz = SZ_4K,
+};
+
 static const struct of_device_id qcom_pcie_ep_match[] = {
+	{ .compatible = "qcom,nord-pcie-ep", .data = &cfg_nord},
 	{ .compatible = "qcom,sa8255p-pcie-ep", .data = &cfg_1_34_0_fw_managed},
 	{ .compatible = "qcom,sa8775p-pcie-ep", .data = &cfg_1_34_0},
 	{ .compatible = "qcom,sdx55-pcie-ep", },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

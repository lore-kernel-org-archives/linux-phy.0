Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646D7606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Cfzpf++I;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QAQ3Ynh9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=bRRm7i7F
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HGZMxP7VcWhGochUj/H/M3VQ6nSM6LroA1xllP1p+x8=; b=Cfzpf++I6N0L9MnIg0jI0BWK8h
	fyF+otYp7a2z3UE4bkYrIgwJ1iNth5gYqjOJOK3W50Qliz9dDJfMbqIe5o3IHqkKKwUM9HleDEn5U
	Ms6uNBlH5E1mSPYYXo7+mjGKEoutRenGBJYfVqJVroF29ng2ZK4kvp3TkvkaH0yHnAaLGkUxSuY3C
	gq6OthZmxzKeRxWwuhNSRZNwKec4q9a24adBZxwkKg8lMfJ8VtwuljIzNqXdf2NzS6KmhOP9q3Vjx
	ElsjD2S1fzg8u71WeSxca1nS/s1Y8xeaPgT7QGU6/xHAhWiHhOcsxprXoNZUo9u3qZu4pDtZRd5R5
	mMQ0QzVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxl5-00000000h6V-0a6k;
	Sun, 22 Nov 2026 02:56:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxl2-00000000h6B-1Xru
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:56:49 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM08vVI1649798
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:56:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1clNjBa8Zrj0xBBvYuEZ7pZMKBdACxhX6qQy1sXV/YA=; b=QAQ3Ynh9suMLRRUw
	6CDW4cxFy91GGPGeuB7l3KRUkrtuW+FaEc2t5yxjo++y8DamGXFCVVb+C3htk1gx
	KM45X34DvG9ejTgP7KcKYBumpnUPiGvH+6Xa6FdQpsMmsGkACnCoYgIUEJ7i1NFr
	Bo/EvNmKyOGWTP/14K3tO7OBOoHti+bKhHHoHFjviW70xZzFE10NyYqJAWbaCMH5
	GRMOggSCd6AXnwx0F00Nd5kHWscFTZA7xSPDDTvmo02l3u6CZhULB8MnmSjnhWg2
	SMCqSf4VH66SrFDwB0C8zESSCSHmyid4LoEgWM9Ee9iZNs4lzN2kHzJK/n7aI+z+
	LqaCtA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j32mgamf7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:56:46 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3869865a304so3510116eec.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316206; x=1795921006; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1clNjBa8Zrj0xBBvYuEZ7pZMKBdACxhX6qQy1sXV/YA=;
        b=bRRm7i7FrPDPSsW0MPd0WjPQiMaCGuVvuSesYMfkICN2X+cuo+Hsgnh5nNlx2S/MfB
         6i+FaPuo/7V8J0IwxUWFLWPVzO3U/CpGN1Ze6IHTcm2xfznty2alOv52W+SoRAhDiguu
         3J81H0pdAIGlYRF1S+/exXPYjjVPr82nhYp8gHhd9RUJFAb7qQoUaw1TeFpIjkBP2QtI
         Dxt0bFZCkObht8XFyJhmoL2aHC+p0QMmhLISTKIYjwCS9w3R91cNCnwEG20whC1bOpZ+
         9+SEak6+Qr/otw2VTaYDNI2nluy3t6TjG1FVlh9QxuTkKfLOe03kRz4MzbKEFjs5ErHH
         WDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316206; x=1795921006;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1clNjBa8Zrj0xBBvYuEZ7pZMKBdACxhX6qQy1sXV/YA=;
        b=u/jD0buSmv7iNndmmSOsI+KCW/3Bjc8eBi4nqJ5rS9G/Dj0jhhCXwwfvH68uQjG3PN
         WRuG8k9Ow10purYvs+CIFV5BcaDhpu1wnh5o/BE2j2Sp5QOSMYPowyM8k/715Uy7cf+G
         Z7X1w3GLriD0AVPU4Y9g3nR4laqfxO7JSF1YOWr6swmvHh4E7h14L63TJKGOvisZpWpo
         j3ALx5DwNXRqFgWXXyr5wdoq7l8AtV/RNtcPnxS/ljlgGMFXLlvGHvPcXCFNpFUen1e3
         Bq6aud++ZWUI5VVuXcfAsMCfzCX+NjJjhTi6MDDdgt/K+bbNVHWod0J0KQzPD157V58y
         U1PA==
X-Forwarded-Encrypted: i=1; AL+hErG7PuYZlU7lZ0r/i1B+PO1Ez2axyCRRnRcxBfZ+RRlSeIf2EngnzqKTOII47Fj62LE/0PtAosURCj8=@lists.infradead.org
X-Gm-Message-State: APuU4Z8dLiFeTSDpYMLB9J1+XZcwiayIUGEsyKqKJFBqRhuo1xRmD2h5
	jtqvApJ4TalXsa3Xg4w2neaOfU+7SJ+rAa70wSdk+b9uCp/2okVyAAAngk3cY5Qe1rF5GVlwYyP
	eyptz+hc35XkB23PrUy/Hd4O5I0YVk0Ch6CZjVdaUZUiC3c+cybtEn6JT9xECUGLyX9An
X-Gm-Gg: AZFdTZf7MrGB42CaxswTz9t+zuNYFq1FvAeLBG/bANxjzMxHgVbNz4Om1hGfPwYzf4I
	wWjtP7k6tY5W2BmSbhrIyArezqFPPY2WBk+3kIdqDYs4HV8wDZprRN9YgoUZWRw1xQ1pI7Q/s9v
	gjLI3hYh7J1IRIwBgCOJj7dCWiX7YTuDWcmLYYO9pvp7UC6ak2weuTQK3vK3z6KfnhuyGdj3bwv
	ANurMl0LJX/SUsJgU+fAZ86ZurU+zornW9zTeAr1hprkYNpQDPmqT+YLIwEBwPBQkMf2JIglNYR
	Q0wd/MiezUCdbYwi9TirrX5AIgCYbYSgBiPb+JcIpBuBnBQE6bw5ccZr1uj6zxLmgx7mrDtoDjc
	TPwmuQ/N0omea1ZSF32F7dl3lBCntjWcxtT+UuXm5DmSXokFT4rkcdWANSBaO9VbYGAwF8FUZ3D
	fOKQ25ZY4j
X-Received: by 2002:a05:7300:50e9:b0:386:9a77:b390 with SMTP id 5a478bee46e88-3869a77c55bmr4571710eec.12.1795316205999;
        Sat, 21 Nov 2026 18:56:45 -0800 (PST)
X-Received: by 2002:a05:7300:50e9:b0:386:9a77:b390 with SMTP id 5a478bee46e88-3869a77c55bmr4571671eec.12.1795316205494;
        Sat, 21 Nov 2026 18:56:45 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:56:44 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:15 +0530
Subject: [PATCH 02/11] PCI: qcom-ep: Add MSI-X support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-2-6d8839ffa9aa@oss.qualcomm.com>
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Anvita T <anvita.t@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316183; l=2569;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=mps0dQPLSI1oXXnodqvs4lyheOQWjr7tO9t5zayQPrc=;
 b=MWK9vdASLE0qflk/gtdRDSZdWQXZFXtbdL9B1Q8QY3V+hGuk3FWi/Rrs489ZWn45aX7b+aoCW
 L19aKtF4695AxOdfTdqcsrkRHJ5v3R8Rts4pFIJ8JWUFHK+SGyTZEKU
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfXxC7rOSRCqxVF
 pjajzOKa/Ol4gv3YkfPAM3tpqot/V2Lyyzu2IuibvOhLf9jVPrz9UiRA2bmj9EDWEmF1+F3510J
 rWnPKs5QzgjO+Fwx2nnPEFW1CkxgzdGgdZXeLSK+RkrLTVrSPz1BLe99slyT68koFDtt7qvZcVU
 QJIBl4i79mIMhTEbx0T9XyKIp5C4bCf1jbfQjgEugiSv4MygMHpnpYAbi8mP10IZeU5ecS1pXH7
 gEWaM1rTDidj3AAXH17WbdjXOHsKRU86G4VESX0e8e8Nsw49XZij99CD1mi7ZUH0gJoASjmK8lB
 6bSQmHe/ZdFJ6lOEbuV/ezHWYrBrRqqIVoWJhLd1NPqtJAi1841EkZ0FIJfzZJviDL68mgjaDVy
 P4gBArBh4IgYwf7mJm3V8y0dNaPcnNeIVni1G/MGbp94QsDefyEC5Uf9u7MovyeUeVTAliwMEHw
 JKPLzczo73RihAMGbPA==
X-Authority-Analysis: v=2.4 cv=OM+yTiaB c=1 sm=1 tr=0 ts=6b0259ef cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=EKRowzD1bsybSWocKwUA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX+nz4oWA88kfl
 up5iKtTxjnLBzhmrTbE2z97aYGuHFDLGRUQXGQ3iGyfQGhj0SE/6p9+cZzjm6DFk0S7Az/86QjM
 /jpkevS/846J5ZjoOJMoJ2/qhBTDX9I=
X-Proofpoint-GUID: AVVNe_WG7PrQmF3yHrRbbmY1uwRtkBDt
X-Proofpoint-ORIG-GUID: AVVNe_WG7PrQmF3yHrRbbmY1uwRtkBDt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-21_06,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_185648_553831_6831C88B 
X-CRM114-Status: GOOD (  14.28  )
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

From: Anvita T <anvita.t@oss.qualcomm.com>

The controller can signal interrupts using MSI-X in addition to MSI.
Add an epc_features variant that advertises msix_capable and select it
from ->get_features() for SoC configs that set the new msix_capable
flag. Route PCI_IRQ_MSIX requests in ->raise_irq() to
dw_pcie_ep_raise_msix_irq_doorbell().

No functional change for existing SoCs, which leave msix_capable unset.

Signed-off-by: Anvita T <anvita.t@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 2d7ddf8d173f..c794a2207df2 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -170,12 +170,14 @@ enum qcom_pcie_ep_link_status {
  * @override_no_snoop: Override NO_SNOOP attribute in TLP to enable cache snooping
  * @disable_mhi_ram_parity_check: Disable MHI RAM data parity error check
  * @firmware_managed: Set if the controller is firmware managed
+ * @msix_capable: Set if the controller supports MSI-X
  */
 struct qcom_pcie_ep_cfg {
 	bool hdma_support;
 	bool override_no_snoop;
 	bool disable_mhi_ram_parity_check;
 	bool firmware_managed;
+	bool msix_capable;
 };
 
 /**
@@ -806,6 +808,8 @@ static int qcom_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
 		return dw_pcie_ep_raise_intx_irq(ep, func_no);
 	case PCI_IRQ_MSI:
 		return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
+	case PCI_IRQ_MSIX:
+		return dw_pcie_ep_raise_msix_irq_doorbell(ep, func_no, interrupt_num);
 	default:
 		dev_err(pci->dev, "Unknown IRQ type\n");
 		return -EINVAL;
@@ -852,9 +856,25 @@ static const struct pci_epc_features qcom_pcie_epc_features = {
 	.bar[BAR_2] = { .only_64bit = true, },
 };
 
+static const struct pci_epc_features qcom_pcie_epc_features_msix = {
+	DWC_EPC_COMMON_FEATURES,
+	.linkup_notifier = true,
+	.msi_capable = true,
+	.msix_capable = true,
+	.align = SZ_4K,
+	.bar[BAR_0] = { .only_64bit = true, },
+	.bar[BAR_2] = { .only_64bit = true, },
+};
+
 static const struct pci_epc_features *
 qcom_pcie_epc_get_features(struct dw_pcie_ep *pci_ep)
 {
+	struct dw_pcie *pci = to_dw_pcie_from_ep(pci_ep);
+	struct qcom_pcie_ep *pcie_ep = to_pcie_ep(pci);
+
+	if (pcie_ep->cfg && pcie_ep->cfg->msix_capable)
+		return &qcom_pcie_epc_features_msix;
+
 	return &qcom_pcie_epc_features;
 }
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

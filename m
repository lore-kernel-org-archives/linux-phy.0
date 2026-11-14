Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834A4606A880
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 01:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W35CN7Ic;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=eKbRTLLa;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hxYUW+Y3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=M19s8LH8ptijeLH6DHjd/upk39RZFvgG0yYlNriwmqw=; b=W35CN7IcWzLyP4iY1Xfc+AIBzF
	KiMk18QMFlhybcqrI1S+99VIBbykq/OBVlrGBgbkoiIWeao0jlr9SwMm08BmX5UkHXUO2EDRR92ar
	hrEmHHxFZCWRu11wguMBCoWg1owZyJT7VltLabgR69qk7s7f2N9EMTGNn6SHojrSZZF3rc46wR6p3
	riYxc2a3+aj0OcxjNshkRi8eccyK2TnCH/Frelte+LH7c6+8bCJ1oaoqeDaX6azAwq7uKXKoEXq1S
	QgeHivrLLf2vRQda8xoouBnLBSrUPRZSqsmyxhttNnLAybS7cROvHYBTX0EsCQKcmWvY6lCgv00Ci
	fJyhE4jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Ku-0000000F02J-1Ag9;
	Sat, 14 Nov 2026 01:13:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Kr-0000000F014-16IT
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 01:13:42 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADMbQVF2846371
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JuGhy0DKyNxM9PhxugC/t24NVoa+Yyv9Tqc8WSFHR84=; b=eKbRTLLaM/E7K72s
	RLRxu6Ew6BnHeVkKVdEae4DcWcxKoXXWqPgEDbg3ep0wV9sztd90HXvZnJ0GxWr6
	pJw1EKUwkowhHbftXlFG2Ln70U7OB5G0bCJinSx9U5stW7Re5nhPVA1CsvCGekgj
	HtULtv8K0+WbCFERa0Rrgdo0TpIsEL8Lr7ujCYvfQtaaXdd8CqBxcyqbTN+rJpZi
	TnOG516xdRz4DBZzbskEAIhMiD0+qSAq+qrBqVWDB74vag3TgoEm3zkrdIOYMH+r
	7GTMNX6vHbfgq4zWi6RMx/XoNqcvR8Gs/VFdJ7ze2ErMFz4fExNiICPHSM67DQvn
	d6xGgw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hx1bpaykk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:40 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30c0d568830so2083621eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 17:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794618819; x=1795223619; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JuGhy0DKyNxM9PhxugC/t24NVoa+Yyv9Tqc8WSFHR84=;
        b=hxYUW+Y3yb0pDuOVJ7obsFaLfkRyMWrihNmfCcnsEOtUAuPue7zH2S/yGnZWvan2mW
         ktxkaqb/nPjpaAmpRzi7SVyZ72MA1FxnvI/mtJd5GsR+hCj215426xNU+bFjFlwxLPso
         PR7DBi32DP2M6xMwrGWuobvz2mGDakJg2mLCLEfUx1iYUUtYlxoAfBRLrx6ydqY1c4x9
         IP7xz7Uu8OAhq8nD+c4dYJycQYwOWxNxmhFGgh+fUmeKSCzT/Z/dPWA0m8JvSlwVG+72
         8Ce4DpHiV2of0AQ3qt8EjrMrKy908AjufWfHZayvZ2QCeZqh5TTy2D1T340v9zimahia
         4MHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794618819; x=1795223619;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JuGhy0DKyNxM9PhxugC/t24NVoa+Yyv9Tqc8WSFHR84=;
        b=sE1oJ6M7sbFX6lwUzHh1ChxMVgyLcN9lK4uLW6o+/nFgQlQG9Oz5S0KZDxPUyFbstt
         E4xDGowmtsA8UprXcQaCk9ZHoweGhtunbJ+N8FI/gugX1hQ/HT9/QXTCFtX+nB5Y8Y/S
         rjOmXWsz3NkS7DYXg08BOG7SarllMHviZd2mZLNlVCXqI2NIE0jem+Tm00BLcAoyt6Rk
         IrUv7FUi1zmNEYsC1hF3S1lyRFjIc+unix5FQ1eVPag4kDmpQIGk7T2Q+3rVtpvmmhiY
         J7zwWEl8H4nEL00EOVHtK404i3UmrjTw49R3mkbG3aHRy/K4i9VY5G2+T34sPmFmG3+X
         yq7Q==
X-Forwarded-Encrypted: i=1; AL+hErFL7SlJI69uKx7CQ+9yIR3pTsdES1o+Hy3cGR13oiRuk2m5eIiYvy05oFVHFSp8dS43+kSl5gl7Uc4=@lists.infradead.org
X-Gm-Message-State: APuU4Z/MsSq+CBNnb7GMe4BkCVEcMJgLS9nJle5V3DDNGJYeVriU2yG2
	p4rlg+J4DcLA7DXgKSABEfeJRz7sImvsIxnRm6XRZRTpUrO6mldeZolZRHOFfgEcN/ZK1twE1Gt
	RfykBgZy10PeUqkZC3zP37Jjo2NsdY9QRPNskfCmQnwhlHbCADqhMLwFbTdfvUL3++2yk
X-Gm-Gg: AYBFou3d6y2zPOkg0E9EDIbBtWrBRcgpauxEH+c8p+8CXjcwVCVuM+ssBEVFhBk0kFx
	3Mi8zjWq/iKRwd+6iZ9ANAOPo9UC8fL0DIaK4p3ogWLTtcR9qfPJyI3Pb9HLwqyfU042LnhulSb
	HpGUIN5pGMktFfc0imdG0ntABzF3r7ftJczq5lFS9N7Ws/f+XbvwEGLROmcEMtKY1ODlSZ9u/Ko
	AsmDeXJMJzsk3mc6PMAS7X4eO08MD9Hqynk5D4mY7Qr623oBIxjPyUGBxgVOsQZTgf9XwY0LQdc
	qrO+g0WP7ZmOXCQTB+9mMtnZiRL2WWQukb34+7q3FqjVLBIadIfIgaZHHX+3t/47k1J//9tb7bv
	A8kghqbuL6Kuoyih+N85qx7hvvF56yndfupTxJS3fBKQdlIicmQyUEsBmjvev5RQHae6Sy0LyyH
	R6gPQPMl+/
X-Received: by 2002:a05:693c:4097:b0:372:7af9:b914 with SMTP id 5a478bee46e88-37967aeb603mr3618786eec.24.1794618818906;
        Fri, 13 Nov 2026 17:13:38 -0800 (PST)
X-Received: by 2002:a05:693c:4097:b0:372:7af9:b914 with SMTP id 5a478bee46e88-37967aeb603mr3618764eec.24.1794618818193;
        Fri, 13 Nov 2026 17:13:38 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3795378d7e5sm10952813eec.3.2026.11.13.17.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 17:13:37 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 06:43:06 +0530
Subject: [PATCH v3 4/6] PCI: qcom-ep: Set initial interconnect bandwidth
 before enabling clocks
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-monaco_ep-v3-4-7fe227cdfac0@oss.qualcomm.com>
References: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
In-Reply-To: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794618790; l=2784;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=JLeyQVRs1DLYCFaBm/u2gI+HZ0uJrg1UE3jfNR2noLs=;
 b=fvyspk0gNdaY7uQRp393/Q8fpriJSfofzij+hrmrJ3G/mBkegWv16IKlyLq3OaJRr1OYC4lEB
 VVVo8dduRzQB/08Em+w16e3U3EKALc9ZcitS9Kq/wPOJyXd6wwbEAjQ
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=W9ytxhWk c=1 sm=1 tr=0 ts=6af7b5c4 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=kXhGf0cxdCgfIYue-YsA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: hXE7XaIaqHz4m3E3o7cYD9q_STMgTTO4
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfXybYpe4kx0ke1
 qgc5uhwc7RObqQ0BgZi0XWBbNo5BrcrQ+w70XBL0MWyqGjR8vvxELxIUjVOBQYNDkrcpDCW2deO
 pTRxp2kjUJqNUilfEwHsCuZwDinNZdc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfXxU5gwW/ynoQE
 jipt6kgQzVpdmf8BEEaIRoXVdwWntJyG3TmLd/NqcUS/64OKTJ2Z7Ymv87WAk8pHXAXJHMvjCHo
 xO1CpkHcTIorWZtEWZfR0BsAEUN6GAgZCXYd3ZYZxFxuqXQOVoRurlBFGQVBSKLWJ4OwTRO47Uf
 kSz1Vb1g6iQ0O36Jm4gbCfGhoY4QjBoUwSsqNvPdYNgrUNMGftYpJbOqUEnBdtAIotYLHd+kDsW
 +47wZu6Trhmo+dbiqtXE4LcaHgLbEADh2afPTamHZAF8i9fGb7oKrEI81l7UFlEEG+z0/rPdWfH
 PnWCmPOlP8vhTrO6zhG4rjbLR+WU0+dWgKy1l4YI/32pcGgxq3FarfVlDRf0D9fTgVzEt4D33NR
 kd7QUERJ7uwCe4faJJ7Ga2eR2iztmlkVqJO0ONnHciboW8ZhKZJd5Eq9kLoVXdIc5u9QhBdzxzf
 Xu1DkgPIze8/5gFCA7A==
X-Proofpoint-ORIG-GUID: hXE7XaIaqHz4m3E3o7cYD9q_STMgTTO4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_07,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015
 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_171341_425082_A870F59F 
X-CRM114-Status: GOOD (  14.91  )
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

Some Qualcomm platforms require the interconnect bandwidth constraints
to be set before enabling the interconnect clocks, otherwise some
clocks get stuck in the off state.

Move the icc_set_bw() call before clk_bulk_prepare_enable() so the
bandwidth vote is in place first.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 36 +++++++++++++++----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 2d7ddf8d173f..a753d8870d10 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -332,9 +332,23 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	struct dw_pcie *pci = &pcie_ep->pci;
 	int ret;
 
+	/*
+	 * Some Qualcomm platforms require interconnect bandwidth constraints
+	 * to be set before enabling interconnect clocks.
+	 *
+	 * Set an initial peak bandwidth corresponding to single-lane Gen 1
+	 * for the pcie-mem path.
+	 */
+	ret = icc_set_bw(pcie_ep->icc_mem, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
+	if (ret) {
+		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
+			ret);
+		return ret;
+	}
+
 	ret = clk_bulk_prepare_enable(pcie_ep->num_clks, pcie_ep->clks);
 	if (ret)
-		return ret;
+		goto err_disable_icc;
 
 	ret = qcom_pcie_ep_core_reset(pcie_ep);
 	if (ret)
@@ -352,28 +366,14 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	if (ret)
 		goto err_phy_exit;
 
-	/*
-	 * Some Qualcomm platforms require interconnect bandwidth constraints
-	 * to be set before enabling interconnect clocks.
-	 *
-	 * Set an initial peak bandwidth corresponding to single-lane Gen 1
-	 * for the pcie-mem path.
-	 */
-	ret = icc_set_bw(pcie_ep->icc_mem, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
-	if (ret) {
-		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
-			ret);
-		goto err_phy_off;
-	}
-
 	return 0;
 
-err_phy_off:
-	phy_power_off(pcie_ep->phy);
 err_phy_exit:
 	phy_exit(pcie_ep->phy);
 err_disable_clk:
 	clk_bulk_disable_unprepare(pcie_ep->num_clks, pcie_ep->clks);
+err_disable_icc:
+	icc_set_bw(pcie_ep->icc_mem, 0, 0);
 
 	return ret;
 }
@@ -388,10 +388,10 @@ static void qcom_pcie_disable_resources(struct qcom_pcie_ep *pcie_ep)
 	if (pcie_ep->cfg && pcie_ep->cfg->firmware_managed)
 		return;
 
-	icc_set_bw(pcie_ep->icc_mem, 0, 0);
 	phy_power_off(pcie_ep->phy);
 	phy_exit(pcie_ep->phy);
 	clk_bulk_disable_unprepare(pcie_ep->num_clks, pcie_ep->clks);
+	icc_set_bw(pcie_ep->icc_mem, 0, 0);
 }
 
 static int qcom_pcie_perst_deassert(struct dw_pcie *pci)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

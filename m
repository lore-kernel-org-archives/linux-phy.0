Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B72BBCCF2D6
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 09:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQ4j8HfjiKBFAGG+YStA1ZbtSlPEb8uZitxAvzXU6QA=; b=IhqAnaNubrvLde
	pOIBkLFnHnqSLUVaY+1dNLHjjjBdSB1eDA5ZHJBXOgv6sJjA18c1nFZyAkgvg1gCs52p+gRko02X2
	iqWlzzue23KEDl/I1Insid3VQ2Y3P8dGsHQJyLJDbB9DDYr2cJbyFmIC1Z5Hn4LLWr1qqh3cV8YXR
	t1rthL0lfvZ4nOtT3HKLFyVRbAnguY/Ed+XuBY8jkTbmUY/xaMflVn71Pzz74pF25sYyioVdFdZjw
	rJHSC22RPQ4WiXu1AIXwpG6VyZZ3xA4djz8e/krmaSLcdEv7y9ygxzqo/OjX9wDPqXdR/HegKxjAv
	/TExq23hueZWxj1FDXTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjcy-00000006zn1-1f0e;
	Mon, 19 Oct 2026 09:25:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjcs-00000006zjj-2HQR
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 09:25:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J8Orvl1665482
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	blzspiWyOtJxzBS01q7zxMZsMueapA6Q28dKLw57dFI=; b=panm/GZdbtT6x+Qi
	0ORvhI6YQoIyiuFMc8jSiphQvHTV7s7VxWMfsERz2Ru68MCpv9EZG+AAQSpSTlN0
	twDyZtGH5ADlx04kB6yHqRqS76wZ2OayJMVSGFDyuEUEw+Yfq8DvhQfDWIvxJRh/
	Of32Z3oDyPrioZ4U0lMCvTywmPkd76MdpD1M/nmuh6xFq0lPIVsSRtvksf8ya7MX
	VZr1vGjoQUNZ74Okh7eAUxg6mVFEWYpotk1ZIKL8k0Cx+LGDRN/YI2ez9yGRMv6b
	k6tesKnDDA3XQXXgeENVyFC7D7ZO8SHaDvsDzwTB4BZVptwmK4QEnqnguoNy4+bs
	so5RFg==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdf3n0c86-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:49 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3580c07911eso5798211eec.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 02:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792401949; x=1793006749; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=blzspiWyOtJxzBS01q7zxMZsMueapA6Q28dKLw57dFI=;
        b=dDTRMX4665rWUfAEXx7dpJsGIpVZ8qaS1W+TomhtEhjn6LexoL3lSCzTZGSsGb87+5
         9Aa5NGWXrjzZzBXb037hU1juyxMPvQ+qNZ4fLgv+ANvlcc5McBPHHyaVfRZ44iHQEUZt
         1zB4/UnE/8rIR/tznmZ0Z2ewxKbX5XAnvChsGW5BcIFcX0aIRqJw1G8PYsV9ejJ6nSrh
         UP+IfVPnTnV+pcv3WWFM8YQSC6F5Yihj1UCzkYdboCum0qpTFj4iXqJjQRXmmiLhjYpS
         VugFaKKWw+ZPGTUynkChjE2OiPAQaCj+hFFg5fEFWNqgX4BeMlqj+h/fdjqdYEHcZ5nH
         b78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792401949; x=1793006749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=blzspiWyOtJxzBS01q7zxMZsMueapA6Q28dKLw57dFI=;
        b=GetDegEQuAnKfYQ6TqI1OFDpD84w4cqfAjBU8QZNhOleWdN12c7C3r9X+2rj7i78FZ
         Z+nSCHk19H5+3CjJn7shbfjJ49fZQzSfchLUj3PKjB8o2GA1TYZs4eQd5210BIm7fRSy
         24ksyv9TzU4AcWva3pDbpSUZkYIUK+faoTRxcy182vnzVh1ys0EH3Fjwgqd/iLmypqrm
         HI0LofuRL29urSOu+GOmQ3SITPUvKqf6liRajgrSQLj2LDxuC2SdZOKNGs/P4TeE7fii
         e9TawnGPIrUsQQnkP/ndddx4iUYROsbYJ4zMiC3aissv9mp0UIlaCZSpm0DM9UmYbfKi
         f6/Q==
X-Forwarded-Encrypted: i=1; AKwUvBynkbCNkz3WUxu881+iFZM53j2P+dU+yiCpVmfVor+ne8U6a1n/gZfp2aR01jsq/tUe97SLasYQBEA=@lists.infradead.org
X-Gm-Message-State: AFq9FYI+vVu8l392TBee9QpxYGaOdU2Q7eekB2vn6YQDcpb7iCZyH86v
	AUwgT0B+am5WIipA/P4QR4N3JipgnePsKcq+O/BcG9IOBfZ/3zjCaaDLhenCoBthwu7Ojnd5YYX
	zGhJFeuGPejm3PCLm+tlVourq4IRd5WnHWI6IeWj8gDiZJmePtbTwScN/P3HRlUEKiMgH
X-Gm-Gg: AYBFou1ss/Rzk+67wvF8MibmcmDdKCK07gq6IuTaAvVQdgN6KWZ4P8rzHU4EqZ/ODt+
	9XAhEt9MWbYgJslR71+IA0X0kLsD8Zk6/Ecfa6gQjZHcXDWj+s0IuYXoBpKgLaLeGhVTenywg0q
	BtlC4h0DQchFu5U8Rh5uVdRj1aFXy7ypFtKpa8VMCVtZxLoArqd98ljhYr5II2y3hCfwcLzp6x/
	MvHNsIp8YAC8gvM0uhX9LH9QDiW2+2US43BMuwt0HVgsb5Rw0J/Gu25VFv9Hlg6IG3rq7yR4OXC
	StFeR/lLC1OtsSMWn8fqHl5PpSm6DqEKd/As9byYMS6ObEFjRuYajaSgrXTY6xHawfXnK/XWr1a
	xZ0nsU63TnImPkJ6E95p3IZnz0VkKtmQm5Q==
X-Received: by 2002:a05:7023:a47:10b0:15a:9834:73c9 with SMTP id a92af1059eb24-1851453f752mr10057391c88.40.1792401949047;
        Mon, 19 Oct 2026 02:25:49 -0700 (PDT)
X-Received: by 2002:a05:7023:a47:10b0:15a:9834:73c9 with SMTP id a92af1059eb24-1851453f752mr10057348c88.40.1792401948485;
        Mon, 19 Oct 2026 02:25:48 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831c4d4675sm26682584c88.21.2026.10.19.02.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:25:48 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 14:55:12 +0530
Subject: [PATCH v2 4/6] PCI: qcom-ep: Set initial interconnect bandwidth
 before enabling clocks
MIME-Version: 1.0
Message-Id: <20261019-monaco_ep-v2-4-852cb9f5d012@oss.qualcomm.com>
References: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
In-Reply-To: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792401919; l=2784;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=xu9UkqrTenBHBotGjSYb2DNRMD1vbtCWxZ556RehpDM=;
 b=PJQxjMnSel094yAn0e2lWNVF+PVM4h9M+bWwd/TcwqwOIgza0IZsozs407okf5hOHc2m5QVTq
 rV8A4Jq3L9sBZ5LDiJkc5QhbetIdnX1TnEWATH7F1iFnRrSPRMs/+hw
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX3NOEeULf47AO
 B8FTeCNGqPIPKYYFqIlUwR5/cmPsqu7j9ODGK5QT8KCkH0av1hQTDz7Tnr9vnSGBW3APgvr3TWS
 kgroXM9l5j28R6aU8zCzbEjAVYlDpXs=
X-Proofpoint-ORIG-GUID: dVF1BqTemUFjmcUpLR513TsOTd5ogiY5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfXweVByxfhFaLi
 So4l+wtsIvSokzOXitO1o+BXGz6fCb1ZNPCjduopNXUIFyNrfSbu7chWbJD2g6xp5U6vF/lSA+p
 xNA0A4iCkiZgEOfRpcEqGW8iw8u0Fb6LCZwzW7O/EEOlJ/dYC+ekpusqoNKPQiMh3fDahGZP80R
 Qu4QG+kyX0tmafsLzfxpxCNDD6yBsEyXT493+wWNHGKRprcTDOPnPGgeMtWucwoL5QqkPBdMuZ5
 YakFu7yD6u3450gSdTEBUOXdocl4f8MbHCFeGOfl1qnaNpTSf/o9r85abSOolhU+KFSLiQpFH87
 s1ess1HJiv8S0mbv2BqPlJoDCr3C9ysO8fxEjSh7eKAkuUilRH/ouOPQ4AqB6ckO2cKjR8U62MB
 5NjPm9Nd3bx1yLKuajUzrErvx0clObZbPdFl3eDnwIbb+igGAENUsBOiiwaV7tqi6mSx/g7m0Pz
 VIEKMRUTcSPE8VjMGYQ==
X-Proofpoint-GUID: dVF1BqTemUFjmcUpLR513TsOTd5ogiY5
X-Authority-Analysis: v=2.4 cv=Zf2IpcVA c=1 sm=1 tr=0 ts=6ad5e21d cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=kXhGf0cxdCgfIYue-YsA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_03,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 phishscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610190037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022550_592421_416C3967 
X-CRM114-Status: GOOD (  15.88  )
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
index 56184e6ca6e6..6b5eaee84f8b 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -331,9 +331,23 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
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
@@ -351,28 +365,14 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
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
@@ -387,10 +387,10 @@ static void qcom_pcie_disable_resources(struct qcom_pcie_ep *pcie_ep)
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

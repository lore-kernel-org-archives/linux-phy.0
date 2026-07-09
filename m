Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43CFC43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 06:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGm1tiVmxkQYh+7oLT/w/OtMMDT+ABkdKnNEStMLmvE=; b=rhGPdmN71P1y4N
	EOZ75DIm6dW8fyvcg7ImwwPGDgkB5xnNHqSHIbFeOwqoCWv71TKIvzIaOwFxlcl08eKYXcNr9LIJI
	n2LyJYxS46LXd8yq4hYmjA0aUf+OG3QzSiGyIZP6DFeA0phkss0OoXQR+QxjbtquV9ki4cpGiBOyW
	FdJa6qO2ha7Zj5jNHcD1wDGglSDLxGA+S4Ao3RwJTYYrd9h0krsmJXhXXvoR1zNlOhmRXZGFc8c0M
	4lHgLkYKyppdo5qGr24OZmY9OaU79VS9CQ3pO5qnhzlUoznIiPtbigmiuYsAUV4g0zkyFy7VT98ni
	d82BCRyNx7L1HO3a6IvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMY-00000001ByY-1p56;
	Thu, 09 Jul 2026 06:35:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiMV-00000001BxA-3G9e
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 06:35:57 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 669603vU794145
	for <linux-phy@lists.infradead.org>; Thu, 9 Jul 2026 06:35:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y9gvp4Nx/FKZgEV7jDtb3Va3H+SAOqpQLjFsjmjYSTM=; b=jZp0taTI8QQS4/zI
	IrO8Yrfo0zF0G+0NSvnm55SB/Oez19/oIudWM29kzdhKmoNebtiKKpN6340jBxUt
	r0LT/4h+ozJB+TMB0Sbs2umX1rdvRxVJWbj98ixUeLqYBlR4VeZHlllQ9606ccyT
	GgW2PVrKhmmHyd7eWYk4Qrz330GESGbyj3BloNTzSdIoZ9YiLGibhCGzUKG7E9p3
	S2aR3AXG9a5ToRd4I0X6YgllMZqUdUdQej41GMyeekr1LU2bG8t/qOMaTrQlRott
	L30zWnCqkmskXwBwGtPPITcHZsOgXciphJSIJSubBsX5lebWTw4sDC5rGlLhwMl7
	vipXKQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fa1yds1cn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 06:35:55 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38096521198so2939037a91.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 23:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783578955; x=1784183755; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=y9gvp4Nx/FKZgEV7jDtb3Va3H+SAOqpQLjFsjmjYSTM=;
        b=GvO0UrBtN5PFfxJHE8RY0by2EMHVRzEIN00SZsVMzti2v62bLA7QAVSEVY+zZXAR91
         c5Hpd/iVEGTgNxk1qX1j/Qc7LHLAiUPQ6IZY8xJPz7tNQo0cVaXNt9t1Z+HYb2AiU9zd
         jmsgUjGxrKm2rxfi4al8cRFe+ktQyNmSeYUIZ6NUOE+InmA3idpgvqKqZXNdZTu+qaWB
         KVTzFaepFBMvaWbIS9Uk1TEy5BkzKzbWfHKRZaeOOheoLeTpgeYqED1OErXTk7xR/Gue
         6DdYCCy02/u8bHs/qMvPJcIWaEQeiONNb3cclvMxNpr8Ci2PPIi/Qn7DVen1pmJuMQw6
         DY7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783578955; x=1784183755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y9gvp4Nx/FKZgEV7jDtb3Va3H+SAOqpQLjFsjmjYSTM=;
        b=dxjOPJ9/PEJem4uUIDQOyMI5smES0ccIyySCwkIMJi3yFcC8b5mSZfy+O8pEVOMmaI
         UX6+S5ErqgFPVXccRhFOIJn13ksuAbCgxyG85umMAKK5d/v0cJr5q5r6WC0OMfdGuIdW
         E89hIJ2Qi5tMYLVfbzbq3uqWlSNO+yabcAOX7irsy0h5JPJe9DQpxOX5cg1xgXvmAaqH
         VU1PQr5sZWKySE5mzLDrx4CFf3XP5x1bUVNLksuBRFakY2xdwsvgrh15pZxTQd3ZXPaM
         BB76NdBs9EsVDpoBWjhdFUy/+UZdBXcG62IJj9UFYb6lnpYfYsgkYhoeJJgYn7uCk1jf
         v91Q==
X-Forwarded-Encrypted: i=1; AHgh+RpmlM/sw17TjrG6vuDdDtoEXm7fXwh+qi4R1TY8+qMx6704A++0N3uz++o1T2mCsVdCSHX/dWuu5E0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzTlEI2dzID5rWHq4RS++iRUlHaYDF6Of3YGn3xEUCvjn3xiR6
	tSqN9x19ZWpm6pkvFDprCcmZHNE7++mNxHliB1dqYwU7dHYoX1qd4MtZcXV/IhVW8hWZ/bRMtNu
	ag1VJ/RYlIl1mSs4W53nUdJW2x/tORDsfLPExEqo48E9d9rIj/XmpelCYFX5nk+rf9c2B
X-Gm-Gg: AfdE7cmLqy9hioSNbvXtWyu3xP0+CXcO8nVqMBG3x7jrK1RkG2kHfBcSiF+hFE/7MUn
	XKw7t61Se+vb6wY00KzzgKBYKtORLIyl4Ip8BPSDarAWxCsJlvoYjAIHS59uVOGpvHnc4eVIaR4
	ZT6I7w3nLu7EF16cAlyq2eVtZ8zaLyLyJRdpDofCnS5OYKSL849WotT2RPJq/wnHxlk+/hwLxOz
	zGMLttornhjyCVqFuaUOJrWo2EDqOoTXMKvuKSxZMn2Og0Glnl3lh8zhPFyD3YzstwYy7iJc0E/
	FkniQ6mRIKqWci0+9XXZb6xJBVoPkjvJvx5hQ94BbXByTDfZcS0hcpsuPMCIhpSKEeNeLANYDQ4
	Q6mox6JVOpMG2PCwg9Q0lVx1ro/rheqciMiqx0K3S4XoxMg==
X-Received: by 2002:a05:6a21:b8f:b0:3b4:605c:2163 with SMTP id adf61e73a8af0-3c0bc903035mr7881483637.4.1783578954628;
        Wed, 08 Jul 2026 23:35:54 -0700 (PDT)
X-Received: by 2002:a05:6a21:b8f:b0:3b4:605c:2163 with SMTP id adf61e73a8af0-3c0bc903035mr7881439637.4.1783578954204;
        Wed, 08 Jul 2026 23:35:54 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174a56848sm28304294eec.16.2026.07.08.23.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 23:35:53 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 09 Jul 2026 12:05:19 +0530
Subject: [PATCH v3 4/4] PCI: qcom: enable Link retain logic for Hamoa
MIME-Version: 1.0
Message-Id: <20260709-link_retain-v3-4-81a9d187bb61@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783578926; l=1463;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=g16SUM+svdptq1GY9X2fXmFPiOxntS0lmdbaXrp6d4Y=;
 b=MkCA8hAkNOGu/Aa2n+KaKo56xPrkug1TB9cr3mL/zfVW64EqSAegfw0mEINPQ8vd4Jb40yDjY
 GJTh77dRo5UCRC8mEhI/1zCePfyL9AVmIMTc87Cz9EePPhUYouTlyZp
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfX5rLE1twUGv8U
 JwPAIgohv1GmDc6EkfzgF/yP7XPShTPPmV4/MUobQ7h/uCPQP/1DcD2LwZP32ZQKEr13/Z5K/Z9
 tsaQobs91ECLoMoyIpPJGpnfK33yRuE=
X-Proofpoint-ORIG-GUID: hcEyljv1qbvjO6SvRdoIzyY2l3lDl4yM
X-Authority-Analysis: v=2.4 cv=cOLQdFeN c=1 sm=1 tr=0 ts=6a4f414b cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Py5lcOcq67Lbq8UMOfUA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: hcEyljv1qbvjO6SvRdoIzyY2l3lDl4yM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA2MCBTYWx0ZWRfX54JR+byfgx/P
 H/gMU7ezyODjJHCI0Y1gzut55d362P3OhcnHt1ReWshC9OWCKQ9pIpor4K1fflTDkqOumNFeBzk
 kb+c7WjszKApGOvD2iWwYbEh7LRsi7857KQ1I9sgEFIDf0ZDzgOWpioOPwISFVTum2PpR/m7tzG
 bwWf5bu0nuWUMgkEu1fAr2byLjJVKQlsl4PfSk2isvQH0HFE1zspQAGyKL2lWMzeYKsZ9Ci04h8
 ZVrUpdxeiKIxSL2t6BBNVBsiswsuV8khH4tHVC/13SPG9kRn2FjS/pykZz3gnLhh7+Ll/4vlV0s
 2dGZmupTQpgHsi84Rd0ff+qWMptC1U9RUgRV1r4DkWR0b+I416wCAzyakAxmW3MKx0ogN4LTC5a
 /QQCrtObyIZm5Ai3npTtOYzI31j1vLpZ+iyGjJXgQ14JTKUo7I4txKBNzwzCVVsweYcYMf5okfZ
 CpQmM1UissVI6tKYlUg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_233555_835083_5B6719DC 
X-CRM114-Status: GOOD (  12.77  )
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

The Hamoa platform supports keeping the PCIe link active across
bootloader and kernel handoff. To take advantage of this, introduce a
specific configuration (cfg_x1e80100) with link_retain = true and
update the device match table to use it.

Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 77d2d989e9da..0b345a16f4cf 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1671,6 +1671,12 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
 	.no_l0s = true,
 };
 
+static const struct qcom_pcie_cfg cfg_x1e80100 = {
+	.ops = &ops_1_21_0,
+	.no_l0s = true,
+	.link_retain = true,
+};
+
 static const struct qcom_pcie_cfg cfg_fw_managed = {
 	.firmware_managed = true,
 };
@@ -2370,7 +2376,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
-	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
+	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_x1e80100 },
 	{ }
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C9BFC5B569
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbOpOlIYaK6LdaDyaVZ8ZlmzxTj924XU3+zrSmwQzWo=; b=rb89bQSTxh41Xp
	FHaVSjfA3kofg9NMiepwKNFsrNs/FcYll2Lk2JtuewBj8BzGJDeDdMmRkbmbVFeFFd487QfN8w7Rx
	CTQsip59XlYFaCgqvdiLOk2eRIIrSz8SFDRW0oBYqLHQ1kmLWS+J4H69Ttxxe4/pxsa8muK/24iEZ
	089R6ULZCuw6uo05Aub9pwzS4H1QKzi6YuUxFE2eVjCMbMWDRB7FWV2/uhnnTuU0xXPnUuC/l3h7l
	h7fi5LOWkEO88RrI6QAEOIpHBMk7e96YuU5YlhzSPO5shPH3FK3oFEdDh5H9hPgp1HnQhGrIkh6Hl
	eBNU8D2K+esIk1yabd5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP5-0000000BeSM-3OhE;
	Mon, 10 Aug 2026 11:42:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP4-0000000BeRW-1kqe
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:51 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9SKWI2341914
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rVAf29kiMmANxN6/WIEtvFJSNEOQ4tpALqh5ZTsbAt8=; b=J19Boyn0jglQUx/H
	nuqLFJXtEqLY0sgu+yP6dKSpGfQNW7IA+88ZOpGGTdReV4x9CjMejxGyfwJeNLf5
	1gKwOChWejnUERcujBnrUNbCWUNaLzEnVxE7QTY2e7T8SpqyslFsU5yiXV3QRhPZ
	MIDP+P2JgPncgm5IXQQ4liI+F3ILCo5OndlvmUDF2tjMA1y+ZOFMvxRlSJ1WuH4l
	z2wbqNCkEfQG1v0eXhG/hjGX2Z2RKpl1VKFBcCQfprz4WB2D1HqH3uvkox+5cUsM
	kwsQvMW7k+nxe51vssnFe+5HPcD+obvp3KD9bMVEOPCCvOyyiwWmcAB8c0p+2qAQ
	PlrBPw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy19kjba5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51a8b0a08d2so11968211cf.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362169; x=1786966969; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rVAf29kiMmANxN6/WIEtvFJSNEOQ4tpALqh5ZTsbAt8=;
        b=Goh3g6lQH93/qPI5TMrBvEkuwN2gZEr7RMmAtPDUl3RRoa+CPRm6nWSeuOkd1pGwk1
         tSiTFQAt1gIcEm8Ku5YPJXp7dghJrbwZb7OQm7uiYiMMflT4I23/te3nlwsEqWUlEpL+
         FYSbKMjB7Y48gdNLVsmawUDXL0bxFnsbtvZVTS8DMLO9l4ltMtoStzhRXnTDiH4k3aLC
         j1lGbzE24VWL4udtlXJxkJ4yaaTthR1GO2vBor+OA2Vxv5saB1Tsnbr9XQDjd0D1RxQ4
         YcMFOApTHLOZkOuQitXpZblzOgjJejXJ6L4/XXTHJ1ytmjoLhz00uUUkmU3CKdun14Iy
         LreQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362169; x=1786966969;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rVAf29kiMmANxN6/WIEtvFJSNEOQ4tpALqh5ZTsbAt8=;
        b=Adsa5zCtTbaxZsT+LHREoqdyjWdZMyWE1NVCwWwatAiQc6SydH5Xo5sMKvW2Pzm7GE
         bgJAkoCeoqNIMIQ7npSMfCVeR5IkV2mxLj56AP+Fg5fK+Q6FqDqCpAuRBka1rxIChmqR
         qhed9NKTcOhUNl3n6VpH/72tuEL66hS5OBU8Zp7MZFaCMwd9m+rfL6TnEcSq2dDmoJ5G
         S91CvTPm7woYMHEvtnryRZegTcNYAx9tyYVbhRg3izjI+4T9F9v75gNfX5t9r28uILgU
         60T2Orp4oGQzGriKFLDE61lcCU9wlVnu3nCWi7NFFaCPEqlihU0kqWnq0tR4/g8gdA3s
         4pyw==
X-Forwarded-Encrypted: i=1; AHgh+Roh1KC/ODuaBWFfsO1ROZQdUuQzwt/QMdUJy4Iy5vpkDCtQX7IBKHhmoFSXmSAcK5sZcfK5vYj+vas=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcDoUPdaxPnuD3Ln8TyigJT17WUOrBHqytfnG8ZYM5tz9wJnfc
	xXr470vOVd+2Ykhm9tUbPiweItwJwUxvdjLXnN51Zbq7xhqdiiKvLgTqB3ov31pBb6OiD604oVZ
	e+vxoYc91sst4+IFK8wQ0Qzz0MKfTejHY2ji3NmM43OuT0KOvy98AVFDyhf0H/9bR1mp+
X-Gm-Gg: AR+sD10liGlgxz6XzPpW4MzB1+KaG12PiR2rAdjNLvOBSsT0jI4EkfSd2j5yLOZwQmZ
	px79Lc2dGMZq5tmyUpKPp5IZOfVYGMyRK/IuglWpBpuun3NAVCWCsOOJUE8I4v0gRgB41Dt90rx
	aCqhx+ePnYcKqO+Ay0/CWwvqMzO3ua8nWg4tZdcY6jKaibRuQDM8CAil2wJlZiQukvS3Bo8kHRH
	BRkXeWsDxblSuszv+ZcGbHLIuVyZ44vWcp3JhMalO+tUMuRGt2lcSaiQ/WEv1TAeub0yHsDJ1M0
	4XqH9v5HBzJa/RXzZNDyv0ZTq7lSXSwffhmGpVXpZAIsagIuDqtpzwmpz368Oqf3MeguLLsEqRw
	CefrxpOBKK0vvdE6V/Usvc1FAFTHWVDi/QpVzCgy80LdTbPpjbANR/lvmuqUCoV0Frhs2kODNur
	Oocq6B+MNj5ZUPtg==
X-Received: by 2002:a05:622a:4d43:b0:527:8770:8fd6 with SMTP id d75a77b69052e-52ce618b876mr489984021cf.35.1786362169004;
        Mon, 10 Aug 2026 04:42:49 -0700 (PDT)
X-Received: by 2002:a05:622a:4d43:b0:527:8770:8fd6 with SMTP id d75a77b69052e-52ce618b876mr489983421cf.35.1786362168597;
        Mon, 10 Aug 2026 04:42:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:37 +0300
Subject: [PATCH 07/10] phy: qcom-ipq806x-usb: parse the tx-deamp-3_5db
 property as documented
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-7-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1261;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=4OAepbflvDuHyyYKRedNcB0DVeaHFPgD9xYG8lg0t3Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkp/oMf5or4mevuLpBse3cI0bN5jDFoa3Nvz
 wHSunQabdGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KQAKCRCLPIo+Aiko
 1bGIB/47QQmtXnuegZBrP5AjHmJoklZ8wjVRfEYA/+4UfysK5JObxMiEtoajbtmzcXYhJ5At7Hc
 jw+kTtcPTQOijwSek1vznjQ9/R3eumjCIoaTEV0iScvQDGNXGB5IJ1tg/M9VKgxYMNZzW8SS8be
 1wQM3m8U6eY9oyls2d5SDXsjSpciRbE4jbAVa02obCTJ+LkfYfQs4CQ0eiuDcaN2UOYvuyVPFdF
 rnFEAiCr8yyfrq3dZVdk5a9cGHQxueSDNrPVZyQSKEVtPat5CryxEKsIymfpS8T0NZAEWiumZa0
 wBFy8r40TJGaXZZwRzeZz3TRkx6rWffa0FYzCXGkmX4nm2eW
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 1cn4AwtM20J7okIuQTrWVZtjKZb7F3UR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfXz6+PmmwAt+Za
 apzgLSElCsG3YA61qDPAT70QctZkG+NMfjwZtkoLD8W6QQlsdflgj/eb7uAnLdCm4vimMP55+ov
 MSbvY0LF8FXOzDPNROT4cuGvNsSwy3Gu2VmxHC2DM+PqRgo1I2iiKq/QkJ6EzQMLiF0xyJ/Gvbe
 04OAtGeTLylUNv91jvlVbBrH+EfocUZxx2irdTKB7LzMLMM9niBEqbhJS+OpvRPPFTyEylWJEhV
 zpt5JTwQ9OSWjyzP73BcIB/+sy+vJ6oYKKdThTqPg8uR/QbRCySdCkzjLXOLLbNJLJWWM/RSnef
 ZEcwxkQQ+wQfEUl8s3U+VOy9/VrlRje+ihi1MCIUsok1dFhxnzeS2r4LkSNX/3CmXZid9+0n/Cy
 4mANYv43N/my/vTF35TO1HVVcD+JfkfXSEqj7OxZJzrV9HE3VecH/RJ993OU5geomRddNIT4MoM
 xCvNCfybDBOtIUwaRpA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX1oVYIVzW9S6H
 XpHjIzSIYq2s0K8psbdi3t/dQg3+doVmXhICMzIaJ+dcr+3g7XXLA4lvR0Rcke9dYzTuwTzGsMC
 kAug5a6vmfQW/DFEeffcPnlD86TZk7Y=
X-Proofpoint-GUID: 1cn4AwtM20J7okIuQTrWVZtjKZb7F3UR
X-Authority-Analysis: v=2.4 cv=abxRWxot c=1 sm=1 tr=0 ts=6a79b93a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=l02VEh0-TEfkkUfrjp4A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044250_466027_18234791 
X-CRM114-Status: GOOD (  15.09  )
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

The driver reads the transmit de-emphasis override from
qcom,tx-deamp_3_5db while the binding documents qcom,tx-deamp-3_5db,
so a device tree following the binding is silently ignored and the
default is used instead. No in-tree device tree uses either spelling.

Parse the property under its documented name.

Fixes: ef19b117b834 ("phy: qualcomm: add qcom ipq806x dwc usb phy driver")
Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index 3d3e9d6da298..86e8e869a743 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -561,7 +561,7 @@ static int qcom_ipq806x_usb_phy_probe(struct platform_device *pdev)
 				     &phy_dwc3->rx_eq))
 		phy_dwc3->rx_eq = SSPHY_RX_EQ_VALUE;
 
-	if (device_property_read_u32(&pdev->dev, "qcom,tx-deamp_3_5db",
+	if (device_property_read_u32(&pdev->dev, "qcom,tx-deamp-3_5db",
 				     &phy_dwc3->tx_deamp_3_5db))
 		phy_dwc3->tx_deamp_3_5db = SSPHY_TX_DEEMPH_3_5DB;
 

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

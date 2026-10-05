Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FFF3CA5FCE
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 06:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytNMfcGR1nW1aowvG1PSl5//oGOPwy5R7Tc4LlG9BRk=; b=YRkszuND6yW0g4
	p8akzfM903ZqEK99iEiFVTlCHcki0sCdvgSMTdWBZXQDw4sne+0yE+/nLg8a1TBFdMMvKwrqmWYGU
	bzOPn1yEfpGObLMqrU+SyacDyvwwez6q/wzvbKGYEv3qoo284GBvN8c4R03e6zilwfWzxpQxvDob8
	AR4jVLQrqvUi/Hz7cBSJSOPq/5eIc3XW9aoiWFdaYyALKaEJZKW17NDx4gdQCoFB7UB8ccE1Ly9IS
	8kVR4cF68D1J0KrMaUhBP6zYfr/noT4e9Snfn3wCVwbr8MGhlwbsrgXJmd2S/G4JG2ux8GpMy4baJ
	1kgmgApOyR/E4ELQVCkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcJy-0000000FjfN-30bK;
	Mon, 05 Oct 2026 06:37:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcJv-0000000Fjen-3ein
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 06:37:09 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 695102Nu1464768
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 06:37:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O4tnRt+BeNXcNiBvIio1lUad6y6QIIHL7crYNQLh6M0=; b=hMHNL8P+M6YrIPvL
	REGhSd/ID6KufUW+Eukt6hlvuYnU21Ict0oWdPUz/IWC0mTFVnL/AZruMXsy3hg2
	lb/lMpd+MSq4cvK/crW/7jyo08RV/N2a9N4acPGFKHB1kOQWSqxEDRs6cI2o9VYD
	VcBrUTtglawtcY+nw4i5PnREseYwKaKA1gvimB4pt+TK+payg0uGCBpU5R903hvI
	JQeH9QgZVqAZSF8EnYQ3cKEPWhrsoNXuaonZ1ajWAVnYRniDhhJ7/TmpfeLfMnIg
	AjWmZnJAhcxLzU5RgsGmQqN3hIg9N39r+PQZ2VLTAme7ClzpMb1ks8ALpWkLRenq
	76ZbDg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sssmpy6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 06:37:07 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-34ef5fd7934so4283497eec.0
        for <linux-phy@lists.infradead.org>; Sun, 04 Oct 2026 23:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791182227; x=1791787027; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O4tnRt+BeNXcNiBvIio1lUad6y6QIIHL7crYNQLh6M0=;
        b=X7v8KNdGwoHTQcG4V1/K7HcxNo60JztoGAj85xAWlNpCgO9SOqOmk0iqc9HbuB9gjP
         jgJJ7O7zLgHtuwLJ0Xrv28ZXjw8bL96cg/b6PC7tBL+AFRjflZ0wYyC3u7sLB3sfgAlc
         mW2LPtlfRze6Ygpf2C8JyUyuM6Rj3N0cbLcUvEBGNn+EFbOX8u07hl5uqhOe/Rpr+XRE
         ext8S04J0RReFg3W7Ji+RMw8YOKHZxytl8YxlmJWm2w5Lfxb0GAAcXmej9i0vT5gnzDx
         0C1hXESstvOOXFU5rxolySHWh/sYsclObA8dT3vYfuwAY7M0SNgOW7xdmxmuvOEd1yo0
         YWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791182227; x=1791787027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O4tnRt+BeNXcNiBvIio1lUad6y6QIIHL7crYNQLh6M0=;
        b=YEquITPWTqNOTuuWQZNwVbg537cb/PbuA0r1p3bxZBrEdxjzyA14neDWECU0rAtErc
         ALZ3wuGNEDqjV7LERRR1a4riLKow0x/9iX1EvnrkkHp49PigaVR3z/QNRu7oqaylCMLC
         k02TgJrEeoItQR9ndr1kQNeSlL06KtIBKMWvTWYf9JLG7H9j1ygZCkUGmkziEEoDkGP9
         zUhmn4Dl1DKaOtMe1adR/C5a3VMTgZ29znf7T9CD1hHVVTgOhHfg9j/iKqHqIkaBOzA8
         sD+fkHqFrNp7FO0uKUKrzKrjElt1Nwd9DZjRvG058WKJcN7wQ68r89rN1ztZdTBpVZm1
         AGjA==
X-Forwarded-Encrypted: i=1; AKwUvBwUBJXktKPL8MwT5AbnK1cCC5/wCAEnYQ1x3LMTtOzKwmRHTNlEP+NwFymh57rofptmZyD2UxprCf0=@lists.infradead.org
X-Gm-Message-State: AFuF++ngrEn2LO30gRfIAohKDlaoe7wmUmnqAtOtFTcDjtEArX6sMBIV
	ajxHNUT8PRJD+L7JmGbG1goHHsCY8UPrvxSwLwG+ZOrhAueEmem4fr23ZRrnNgct4F5qb/9Zh7N
	/hKHgtscnB2yFM1Qj3PPkj48SMQuz05wfbicEs4PqMuQ0yuJtlpc6wRpin9D5oZ7pKX8k
X-Gm-Gg: AYBFou1AE7ORNJ8GOlQQssVxcTG+qPfUcAmCW55XBoYOCiCIUdbx5Vi10T5bL8nSe+q
	1UydegLZXl/JbNBfPJphdjpm3BYj7E+tglmkg2mT0Q6uuhG20FuzQfZg68fb09jqzuBnR+1laHe
	D//8BCc8j4kHTgdT83CyRF3Kpo+jxGGTFKN+RK9b/5tguCP5UUlFd0JfVKWzb6AOXmxzWwaQ4ui
	/0n3lg6xAqIAR/Sl9xlOZxb3YFuIa531ZEtFCdC/WSwRDkhdFqiqw2RTgkrFm0VkJQ76uDWU4kk
	W6EZx7cvfMJo6OAgPyp93TNC+di2gowZjS1P4MtKQexPo22yUza3NzoYGNXUi+8+AeOokYUWEHg
	fWAj8vst5EKKIdvBQmeXFAounbZY9XCpYes2A8c7S+CsSBObpUXS9DW29L6GLA1Prv8fhenAnqk
	eB1mBo1gp2cO7dqs7suDJMq7d/ECPr
X-Received: by 2002:a05:693c:42cb:b0:351:29af:5e82 with SMTP id 5a478bee46e88-35129af6a5emr3286673eec.25.1791182226614;
        Sun, 04 Oct 2026 23:37:06 -0700 (PDT)
X-Received: by 2002:a05:693c:42cb:b0:351:29af:5e82 with SMTP id 5a478bee46e88-35129af6a5emr3286649eec.25.1791182226061;
        Sun, 04 Oct 2026 23:37:06 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3512718d9edsm11185821eec.19.2026.10.04.23.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2026 23:37:05 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Mon, 05 Oct 2026 12:06:28 +0530
Subject: [PATCH v4 3/6] phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY
 configuration
MIME-Version: 1.0
Message-Id: <20261005-phy-v4-3-b04c4123ecb3@oss.qualcomm.com>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
In-Reply-To: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDAyNiBTYWx0ZWRfX+/XJ+TaP1/HP
 4yDdrUS4g+btQw/BxAgWaIHJ49eaKkcfGPkpP/cZOsG5tINmM3mFiyVcLfFCcIFqzI1cnVJLm+/
 M5grC8Suew6fHxQyvWQbIzwV3BN+b5s=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDAyNiBTYWx0ZWRfXxQSTccuHkj9h
 16EFSS5Z+wF83c/aX7ME8zusD5mdHlNFodP1BvIO5A3atIJCbDbObQf5WjTgox3Ka1va158xcxz
 RAA/zwTKP2mAqvloLHF7B43ih7eFJHHq6RK5rS2PhM7N4n4JkWm3khisxBs0KcOWGYaHGiVhPWA
 N3JIAWsuIgMxrESzn4U7KQDAzGWn//+beb+A//4XzPSjmbHlu3/FGwLDOgu0oSg+u2Zvoe0O6t9
 6DCwNmuGHVtPaf7x+k1o9zkPj0e9Pv0ba+NJEPg8omSxbrzhwvUgNr49kDVL6O4CKTFZzQOCqNd
 USJfXV6QE4ta5SwLdZ7DYgplLVA3biTpbPiSEbPmzSNJauFGFjnlqHLTfYRNlA2u0MHwZx6JxvF
 1tlupLbmYwqzcGhRiiXpXPuUvwII7vr3rn4fVShEHWunfJBNFP8YTCoR8UbmUFl3Xc/SCjmHS/x
 9YYOneeoV3zYKbqfjtQ==
X-Proofpoint-GUID: sKuRZMSEz0C3nNPYl8Cc_vLlnXGiTaiH
X-Authority-Analysis: v=2.4 cv=HqjjiETS c=1 sm=1 tr=0 ts=6ac34593 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=1pfUWIqQpZhN5ooAS-4A:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: sKuRZMSEz0C3nNPYl8Cc_vLlnXGiTaiH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0
 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_233707_926119_32428B1C 
X-CRM114-Status: GOOD (  12.96  )
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

Add the USB3 QMP PHY configuration for IPQ9650, including the SoC-specific
init tables and compatible data.

IPQ9650 uses settings that do not match any existing supported SoC, so add
a dedicated configuration to allow the driver to support it.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 118 ++++++++++++++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index b0790bcf0bc8..e772e1fa27cf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -400,6 +400,101 @@ static const struct qmp_phy_init_tbl ipq8074_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0f),
 };
 
+static const struct qmp_phy_init_tbl ipq9650_usb3_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER1, 0x7d),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE1_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SSC_STEP_SIZE2_MODE0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_BUF_ENABLE, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_IPTRIM, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0xd4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DEC_START_MODE0, 0x68),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_DIV_FRAC_START3_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE1_MODE0, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xa2),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_HSCLK_SEL, 0x01),
+};
+
+static const struct qmp_phy_init_tbl ipq9650_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_TX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RES_CODE_LANE_OFFSET_RX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0xb5),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V4_TX_PI_QEC_CTRL, 0x00),
+};
+
+static const struct qmp_phy_init_tbl ipq9650_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_FO_GAIN, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_THRESH1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_GAIN1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SB2_GAIN2, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL1, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_VGA_CAL_CNTRL2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_GM_CAL, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x47),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0xe4),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0x64),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xf6),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x89),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0x35),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
+};
+
+static const struct qmp_phy_init_tbl ipq9650_usb3_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RATE_SLEW_CNTRL1, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG1, 0xd0),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xaa),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_FLL_CNTRL2, 0x83),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_FLL_CNTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_FLL_CNT_VAL_L, 0x09),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_FLL_CNT_VAL_H_TOL, 0xa2),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_FLL_MAN_CODE, 0x40),
+};
+
+static const struct qmp_phy_init_tbl ipq9650_usb3_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+};
+
 static const struct qmp_phy_init_tbl msm8996_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SYSCLK_EN_SEL, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
@@ -1596,6 +1691,26 @@ static const struct qmp_phy_cfg ipq9574_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout,
 };
 
+static const struct qmp_phy_cfg ipq9650_usb3phy_cfg = {
+	.offsets		= &qmp_usb_offsets_v4,
+
+	.serdes_tbl		= ipq9650_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(ipq9650_usb3_serdes_tbl),
+	.tx_tbl			= ipq9650_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(ipq9650_usb3_tx_tbl),
+	.rx_tbl			= ipq9650_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(ipq9650_usb3_rx_tbl),
+	.pcs_tbl		= ipq9650_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(ipq9650_usb3_pcs_tbl),
+	.pcs_usb_tbl		= ipq9650_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(ipq9650_usb3_pcs_usb_tbl),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v4_usb3phy_regs_layout,
+
+	.has_pwrdn_delay	= true,
+};
+
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.offsets		= &qmp_usb_offsets_v3_msm8996,
 
@@ -2483,6 +2598,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,ipq9574-qmp-usb3-phy",
 		.data = &ipq9574_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,ipq9650-qmp-usb3-phy",
+		.data = &ipq9650_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,msm8996-qmp-usb3-phy",
 		.data = &msm8996_usb3phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A78EACCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 09:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkX36nIw/iCnPZE5bUdRKPuiALm/J9yDHkR9SA28cVw=; b=FR/Z7Kg2OFaSF6
	IILWpDqNZXzXfM17NHZm5NjYG5Or/oEdFXobeaLHwf+A1NwX3eFI52iXFUntGoD2YRKX2VusaYuq0
	qj8Bw7HBl5Chxr4HiRUz2PpubYfl2Vot4aThDvcAfj9QblOmPd9zQTPw5yxhWQR0MHNPA5imHBXOC
	9PvEj03qdkoWENW87dkY27EGb9OSsNl+EFzb+hptlxQEa1bC2ZgHTmoGyVcIrQfujgsCLkd6hraRj
	MyAEpZEKlPlMGw0TmyO9l9gIQcdDszK4H67UTSEC+4OxxyJcfLa7K/vfBs/IdFgZhCk1Gyd/2XRui
	6LWpE3EHtYXYUdeHN3kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjcw-00000006zlW-0qq7;
	Mon, 19 Oct 2026 09:25:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjcm-00000006zhq-3vvb
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 09:25:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J8Ost63305549
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ILObdEuQZPc2pArHic+2Tx54ruG1wM/IcD+rqRM+SwQ=; b=Ydy7NCeZDquNGr5J
	kEjnkKd/Jwg/kmf4X0UqjoIxfd8gelxLhgOtrUidgLx9F90fMMYP9T5co3fJW1EG
	fTjAJ9NyA47xb3sDvmNEbUPqocRCBI4cuhVw0Ua+S52xOK1L8iFBcjn4jCSdBXPX
	9TGcpT22lXds6c6c2TAdDiMwSi882AUwhta+KkvjgizoDZiuyTN7sfudkTFgRC7D
	XyTJyS/wsWIj4ScIGPKpgXyXNQ2MaWAOa1TNweQJE5hRUMofYqZHgzOBSI8zmF65
	1KVSwh9/c3SM2eCdi/BxeuC8nBgkVTv3BhpZXmDee5FlGt1F/YYl0zo9c+0kf1ld
	d01NBw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdf47gcnb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:44 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-341eff9e381so6014195eec.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 02:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792401944; x=1793006744; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ILObdEuQZPc2pArHic+2Tx54ruG1wM/IcD+rqRM+SwQ=;
        b=e+giriQgR/e7S4c9/1E4pflHC1SHJ6BMefgcREbEIyYRVnoSF/iKwmOWhIkKE+Felt
         fIneieo8hcIaGCeFCwqvXNF+LwDVTmRGg16rniY4mlVyFQdgCyw+NKp4b+mvRGGIwLYD
         3DewmsmVSddXqvFZCrIlH6JO9CNW27sEIL0AEM2HuZTJLTat/5/tRCqlVnqoCHejx1cu
         U45zTKUzTuEdmQV0pCO1OPu0zf+h2HEYGBWTNiUaHFz1um02EjhGCLT80Fnb6wSPmjG1
         b5heZjSKxdpG0QZ/T409c3Kr+B8PsENpo5n8SEIKFJ5iSDuGvfmrmI9TifYt0qKoGatP
         aXRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792401944; x=1793006744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ILObdEuQZPc2pArHic+2Tx54ruG1wM/IcD+rqRM+SwQ=;
        b=AYtpOXzBBNCvg88hacwj9mdL9dEMcFA7BdTOwHzgTpnQBFwLXBfXatGASSQCe6Ayep
         hi6lKq+hrNZx0mQa5Ng8urN0yt9SkuAA1Qw3hElh6wlMpxmla00J5bcQmQiZFXFuag3m
         E5gYJ3ZgrY3aoozzy+XCVwRMrxXTEw88nghf/fmhdShHpY0/jAZq4hXzTg3xezwot91b
         MDdpNNYyuyjJ9s1lL+luFL78JlY21uKvHKCV6PTIadjONtd0tt8CBWT95xgx/ip1HL4B
         yiJmkZQgKBRajxR4YMM2sT9x52I3V1uSNz/qbi9LYjTeChxC4jw7SknwAXKj/7lrY6BO
         Gwhg==
X-Forwarded-Encrypted: i=1; AKwUvBy/Y+ZFJr6DWSvF8uKOh5TdGuK+CRtx1E2sQdWuWZKeBZJrWeh3K782y0hgaZ6i/atOQ0fFQ3+vhZ8=@lists.infradead.org
X-Gm-Message-State: AFq9FYLFgJz5RHwTSnONru75q6Lk7Ti0XSJRmh2LieRZbNrhGHvj7aBC
	6PZfX+tXHykqr8u4vmdXWiHPzX/GqJwrb7RjxH6pN9an9GJaVT0a6J6MwNF7Ym1Uv6E0Ktd9z4m
	bOoH/a1VS2g4ow5gtmwK8kodfi1csKm1aZOtBVVtiFLA6WdToOByUMb7qcAEoPnOJPX7c
X-Gm-Gg: AYBFou0a0MCTaeS1yBhGvIRZhaURn7OD/7eaq/BPoHrj1KwCjj/XASedtXG8lmAyjsz
	+62OstpF2Jbd4qk7ADEPIb/3/ruEfKAXJj9kjl+WPyGhZRxfXdEIKFCxCosL6at46Wq+nThRp0+
	gxMqSWc6ljTQeEXD7+6j6aheRCjBa5NTh59EybW5VaI2s4XMO6l22ck4wGLxfcE2lJJWLk/MACg
	GKBiHONXFsT3AxIeCWtcMu6v9acTcurmL53StPblkLrYcgIw7X8CmYCp6VGzR3/6CET9mpbQIAh
	J5VW+Y89wvJ+H75G0HvPUvaLRZXAC7xbPWmXfph2utJte5t+4AsaGbdnbxhgf/qMqfjjdQDsYuj
	2nxe0Jp1VI/02ZzOpUSwIP6AsJGvoO3ylkA==
X-Received: by 2002:a05:701a:c907:b0:169:3706:d61b with SMTP id a92af1059eb24-18511eb6a06mr10779192c88.16.1792401943570;
        Mon, 19 Oct 2026 02:25:43 -0700 (PDT)
X-Received: by 2002:a05:701a:c907:b0:169:3706:d61b with SMTP id a92af1059eb24-18511eb6a06mr10779158c88.16.1792401943000;
        Mon, 19 Oct 2026 02:25:43 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831c4d4675sm26682584c88.21.2026.10.19.02.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:25:42 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 14:55:11 +0530
Subject: [PATCH v2 3/6] phy: qcom: qmp-pcie: Add endpoint PHY configuration
 for QCS8300
MIME-Version: 1.0
Message-Id: <20261019-monaco_ep-v2-3-852cb9f5d012@oss.qualcomm.com>
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792401919; l=7367;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=o9Rm5yUJHQJsSotZU9luNQ5EkPK3woZNCY7+NVvCHYM=;
 b=8ix4nwNOe+ji9wfkBWGw2okBqBXhf4/mcu1LiCU8M5krFZF7l5YYU6v61CwUGtLzHM8cSsa5Z
 Gc1SkPlGPq1B3hfr2CKCVUmmMrsUlEFqDtEEET8uH3wWjyKE3jZGtUL
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: 8yg5OuN7BQ6oe74c34FVoBiBiei28cly
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX6t+/S/38737v
 Wj4a/BYouQEM2qKz14wapZn/mfrtEYkA6r2smrwn4jtVtwALdANTnQ+JbWEbdrJEb+jqQYcBXlW
 sduwXCd2jfgvA1WUX8VGbU7f4xGKBuFAmefs+cGZIkKzQcROYD1CcP+3U1uHfKiVZa0O6MucPyn
 wCVn5d4GcYSZkmbF4bsILrX0OgXI2f1fw1sK6CW02cm5jRGSAE874bmevveSBQVBpvS9fUIB3xu
 RUY23/pRGIi4dmT36ahSmhILfCxTA/iss5v3obXW8sRXuVnwyNfOWIbA215kfX2zlZKqHvd/pEu
 Gy/FGxjOoqHIvpSqR83ZD2XsYvljK05N1mTsqiTio8eLEoP5IIOyNsoBPimDAAkjXJWkOa9Dj5l
 uV27f10nQ4nF84Xpw6wDjIsrk0bXH/8rLKnX8/jLpmtfrdTYUzJnuxaJME0JHOp4aFYeB6g3WFv
 qFqedFGGPSmyDmiKAuQ==
X-Proofpoint-GUID: 8yg5OuN7BQ6oe74c34FVoBiBiei28cly
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX3EnJfUXbEg/d
 b+4junXCEIJ+Yo7EC2JkqknhhQdv8kd2sWeQpt03QXw6XJIysRqPq8dpBhKf67Qa8B37gSCAtor
 t3oinv5pTxmTJfgWXclHQw1rErOJ8ug=
X-Authority-Analysis: v=2.4 cv=cLt1IVeN c=1 sm=1 tr=0 ts=6ad5e218 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=eLJRkEBLYn0i9-GjmtoA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_03,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610190037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022544_991892_0AADBD55 
X-CRM114-Status: GOOD (  13.36  )
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

Monaco supports PCIe Endpoint mode on both PCIe controllers. Reuse
the existing SA8775P Endpoint PHY programming for the 16 GT/s x2 PHY and
add a new 16 GT/s x4 Endpoint PHY configuration with the required RX
tuning parameters. The new RX tuning sequence is common to both RC and EP
modes.

This allows both Monaco PCIe controllers to operate reliably in
Endpoint mode.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 105 +++++++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index da83358c97ea..cf169d7cbd92 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1231,6 +1231,58 @@ static const struct qmp_phy_init_tbl qcs8300_qmp_gen4x2_pcie_rx_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH2, 0x1f),
 };
 
+static const struct qmp_phy_init_tbl qcs8300_qmp_gen4x4_pcie_rx_alt_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_0_1, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_2_3, 0x37),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_DFE_3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_DFE_DAC_ENABLE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_GM_CAL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_PHPRE_CTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x7c),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_IDAC_SAOFFSET, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH1_RATE210, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH1_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH2_RATE210, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH2_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH3_RATE210, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH3_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH4_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH5_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH6_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B0, 0x9b),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B1, 0xb0),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B2, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B3, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B4, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B5, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B6, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B0, 0x9b),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B1, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B2, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B3, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B4, 0x43),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B5, 0xdd),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B6, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B0, 0xf3),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B1, 0xf6),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B2, 0xee),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B3, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B4, 0x83),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B5, 0xf9),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B6, 0x3d),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH2, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE3, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_PI_CONTROLS, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_CNTRL1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x08),
+};
+
 static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -4583,6 +4635,56 @@ static const struct qmp_phy_cfg qcs8300_qmp_gen4x2_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
 	},
 
+	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
+		.serdes_num	= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
+		.pcs_misc	= sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
+		.pcs		= sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl,
+		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v5_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
+static const struct qmp_phy_cfg qcs8300_qmp_gen4x4_pciephy_cfg = {
+	.lanes = 4,
+	.offsets		= &qmp_pcie_offsets_v5_30,
+
+	.tbls = {
+		.serdes		= sa8775p_qmp_gen4x4_pcie_serdes_alt_tbl,
+		.serdes_num		= ARRAY_SIZE(sa8775p_qmp_gen4x4_pcie_serdes_alt_tbl),
+		.tx		= sa8775p_qmp_gen4_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_tx_tbl),
+		.rx		= qcs8300_qmp_gen4x4_pcie_rx_alt_tbl,
+		.rx_num		= ARRAY_SIZE(qcs8300_qmp_gen4x4_pcie_rx_alt_tbl),
+		.pcs		= sa8775p_qmp_gen4_pcie_pcs_alt_tbl,
+		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_alt_tbl),
+		.pcs_misc	= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
+	},
+
+	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl,
+		.serdes_num	= ARRAY_SIZE(sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl),
+		.pcs_misc	= sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
+	},
+
+	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
+		.serdes_num	= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
+		.pcs_misc	= sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
+	},
+
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -6411,6 +6513,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcs8300-qmp-gen4x2-pcie-phy",
 		.data = &qcs8300_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,qcs8300-qmp-gen4x4-pcie-phy",
+		.data = &qcs8300_qmp_gen4x4_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy",
 		.data = &sa8775p_qmp_gen4x2_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

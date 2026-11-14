Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F868606A329
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 01:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sQeZRkhh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=d1qlu8p1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=dZbx0q7N
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6N4rK2oe7uIXFCOz3qqpQy5NOZY38h/kgIVP44jvnQk=; b=sQeZRkhhzLrb0pJTOfsHtkVv2T
	Xnb9TSgN9Vlt6UzlTmgoF1joJXUqaxTeJUZ056Ms74EH+PHdoIH8Vnhu+Z8VBNryMGWWMiZLlmaGt
	i3gJnouk14SR2x+YhTj6aL6UQ5XXv40Tv41p4iorwblsSMyheHeD0fPslZnGMu+mHrtGSlmRBUI9v
	vWT2DJ9Hs/Q8wu1I3X8GnLxPT8+sLyHfWvBtzxq+n9WJQ41S0CkT7bgCArJI6JzFcmLr5syCuzCwy
	HstS+esIX3JrTPB5GRufQK2qWRUR3YaGyPT/4Nffcv4CUvaijJcsXslRWUFrVLNeedzg1mAaTt2gj
	4XpRrUvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Kp-0000000F00c-0GUz;
	Sat, 14 Nov 2026 01:13:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Kl-0000000F000-30R9
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 01:13:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE0JjOE482827
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TxCWY6OFXWbMrHGugnDJmZJ+Wq439bzrPo48chVSUZU=; b=d1qlu8p1o1DY647y
	jea3uHx6xTLorAOvqHlI0SYMi/tyb1zZ9uhhbz6EC/OQAxmvqpSsCOfa9UauLR42
	Csi1PTDFWhqT+Oh4gFmTBtmnj5aLpXOJISk5dFtyDbJukJoAZyF+3uoUaS1Ky276
	IuzU77h/OGF72czc/REW+BOQ/9E4k1yWINEXiLe8MwGtbUIoMDD7qsFxmNqZ0KHY
	sNnF8KJSNAkvNLR7aJnDVpGj3XThjfMU4c1nWNKqg99sdfiCgiWc4vWc/t6hXQq3
	GCIgm8YAkROI4EvAtvgAu/17dMH/QcorQDKqxlWGIkTFZQ6wL+E1D0zlwYhg8kvC
	kIJ3Nw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxd0nr4hn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 01:13:34 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-341eff9e381so2338238eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 17:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794618814; x=1795223614; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TxCWY6OFXWbMrHGugnDJmZJ+Wq439bzrPo48chVSUZU=;
        b=dZbx0q7NziqhzOLskNYICHDp3zKIxzwuQlX3X5/3u9x9VtBgGrBQoBZz4g9U97Rgm0
         3gE5Oaj6zncJP36pKyYIr61r+NcBhAR+dyZi4ZWThnSvT5XPfQWTk0hNlRWzI+c57KZz
         7JTHLEG6FC2QuAXwn1WeJTazos6ICmUdEOz43WEj4eeUcax/gmnb1P9pWoKCdkOKqvTm
         x6TAw9YwQoU2/6GOKpsL4rN+PGubiIifkSJOZ77kcS3/ksTj8Q36nCmI++HxXZIsiog4
         Ufafl6cWIER4Z2hkaJ9rTmc37Ubsvhe7v8Rfm61YYqXPz7NbrXTjKT8hYybf5WFiyx/T
         SrKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794618814; x=1795223614;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TxCWY6OFXWbMrHGugnDJmZJ+Wq439bzrPo48chVSUZU=;
        b=kDCX/sqyBoK7PMd49kc544eQtLXqgj6Svx2boA/Gsyz5wnxfaNPCTSDC6lo9J8eyNC
         nGDJ0I4FEXIU5+923pX1rFvG+aFsnXrIc8WaPxUXNUt/7to51FIYVpikmSmOv9YlC6ti
         lkH/A2C7bJvlB2HV/Mw9DkxU2iGwAHanhh9gYC5L5c9qaRz2/CSq9uqCSo9DTYFcss2n
         PqD0+HlcTeNwahpmA2cWFU7VuPsclM6+DiYLOzaT3Bkn6GETgzvJBVXrzuRab7SMPmx7
         4lQPBQWg6ACrlOl4YQFQ5v33CY6su6DF93JMwCVZScEtfWMb+2e/7IM6WaORdbsZN9lp
         WQUQ==
X-Forwarded-Encrypted: i=1; AL+hErE69lxhdThg5Cw1lYVQD7BfOqw1opi7N9RMU0qoxcVhU0HO5LhWab3UbhiBq7STzsapnqoLev2sjoY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+4+ZdRd/AZ5apUwJoKt/qMCEqM+qjBfZ2evKO+t8RNuN8aNS48
	c0si0JRYGr/rxj3bKBYlP3peuiohCH0dj5Ozp+OeF4rFHO//ZgAS0gO+uuWeebcHfJFjYADbnpo
	q7BZRh59WxtBwoFkydqAD+R0z0hBnC9nob/ht10Og/UK5c6y/29O2ixOHJAmRq+ZSeEBC
X-Gm-Gg: AYBFou1Tq8S620fVlSrZp9sgW/X14m1yDV9aHh1HDQzFXvjl1IMUhxV38mypbA6emku
	cjgM2eBF6oaerwwS2MBe0r6zKJY4LmwSgdhlGjGkOcTiclcJFFz8YxDaN5UKOhlJKb5SVcEcvlG
	R5Gwxjlpy48QRpOo/rWr9FGGuSAmNh84UDdFEuF8u7L2SSzasrMBqhbYb2diJ2oMigXp+kOzZya
	FKvJR187UrXeQw8nzRDoIBp52FZzI7Yl71/r5a/6f49XuXmb4eaQl17xpAamTVMLysLvD3Rgxd9
	0oFIXQRsw8NlI+yDwX6IRZ0HzBosg6Hd2UxX+W0grWHEfWt/EO53nRfmhgdVy/+po0NllD5jZ2R
	wLbqpbPysoazLF/pFnsPickNs6t7zs5CAqiJ1p0CE+qlAzWS+zBWyynfACaVthZnuC9P9OMDYoO
	fC9g1lvSBy
X-Received: by 2002:a05:7301:4e47:b0:369:f18f:3492 with SMTP id 5a478bee46e88-379676faa4emr3592406eec.35.1794618813403;
        Fri, 13 Nov 2026 17:13:33 -0800 (PST)
X-Received: by 2002:a05:7301:4e47:b0:369:f18f:3492 with SMTP id 5a478bee46e88-379676faa4emr3592383eec.35.1794618812803;
        Fri, 13 Nov 2026 17:13:32 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3795378d7e5sm10952813eec.3.2026.11.13.17.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 17:13:32 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 06:43:05 +0530
Subject: [PATCH v3 3/6] phy: qcom: qmp-pcie: Add endpoint PHY configuration
 for QCS8300
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-monaco_ep-v3-3-7fe227cdfac0@oss.qualcomm.com>
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794618790; l=7367;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=6P2rHDD2paXxwUsB7btdznjPG7HHP3wYChRROQFfdL4=;
 b=68TPHctOo56k3h9sY00pNKX678IpPjao5c8BMrk0SYJBa6y2j6NNZE/QZAMsqPwbEhf/v9q+w
 Au+pwKEwdznATiGRqSR3J3d1mKQ1iJRahz14660u7vXkmN7bzelU++j
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfX9cOE6tFAslDO
 1FzD6tdZ2o8VgwBd+tPLXJx+Nej0BMmyCub3JE/FLWTWC0wgYSRlf2yZsVxx49JMRkbbyrcqFmm
 0HZfgvltSLTkv42Pr79UXU+6kYzO0U8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDAwNCBTYWx0ZWRfXxLZQv6yKMqWA
 n4Nk2NbKPXcwacTneeklcwanKt9eWjogVAw+PRdWdbr+RqHxF80/0MO95W/yCuY+E4nJk4avVOo
 DlOaeIfxfToSxjp6+Z04lxwBMIvcPq7xN2J1VuStMkrG6swUmkzIlyoLDCATocOKeaiScGHeov2
 lE6KeE+9xvFTl4/SdBPGBEni0EbLal7mBJyL4zT5EvSphdR3Fh7pye81luWGiBXRO0AUmmg5cGO
 Mhoh7JVVBbUZqzCAgZnYt6ub09YR+A4Tem1L418SLzf5vgviAuEaAZhUk+nEA5vofLNfKkNrVtk
 EhsDo+rylSXCOkB3sz1iyFw98jteUDogSad7f40dIUUrRCQ7CCt+vRLEgemVu/U7uNkefg9gHEv
 RGyWA+WxAXxB7apD47IxX9m55nH5mRrMrH03/HlFBi/pI2pizEbq6qMU3WYw0i6x/8zXFpF7nEz
 1UigOPQC70pLo8QSHOg==
X-Authority-Analysis: v=2.4 cv=Zo54uN7G c=1 sm=1 tr=0 ts=6af7b5be cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=eLJRkEBLYn0i9-GjmtoA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: _YPYhXTDqcnd4qT2FUQlNA1sDb5yhG6b
X-Proofpoint-GUID: _YPYhXTDqcnd4qT2FUQlNA1sDb5yhG6b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_07,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 impostorscore=0
 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611140004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_171335_883191_FF96C47F 
X-CRM114-Status: GOOD (  12.58  )
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
index b9fe3ce94227..170bc4d790ff 100644
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
@@ -4595,6 +4647,56 @@ static const struct qmp_phy_cfg qcs8300_qmp_gen4x2_pciephy_cfg = {
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
@@ -6448,6 +6550,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
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

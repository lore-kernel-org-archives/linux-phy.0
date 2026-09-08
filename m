Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2AE2C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygNYAezHVizDeVDZPhJFGhoPCtVS95oAG8BnkEz4g88=; b=rHvIkHphuExkCG
	Chvv/YRiIN/5qyN/CN2EhxtLkLnConteKZmU4y8+GwJ1K6H6kFa3nEXABe0eaTr8hmlSHv0BTty3Z
	GHYR++NNHtwgUs/Y2yfRYi7mcB3M7GLzKORxmD1D5DZ0X3EgkW7kEeIpxT2zigCvhSdKVRI7BI/Ry
	5K4xQROi+Bue92BxBGWZCD5XHu3ILU4oQlDh417G5EgZIVoGdvVVX1qgyPqudT36HaT0A6+O/5xgu
	V6gEG1kkczEAs+G4li1h2CPpVqTQUvclToOVj/hZBTVXkKVMrTFGD8pj8hN6K9g+giEcH2ILO6nQU
	wwQVnxQ5lgjQHWnXl/oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOE-00000009DY4-1W5h;
	Tue, 08 Sep 2026 14:01:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOA-00000009DW7-00G6
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:01:31 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688Ckswq3013138
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:01:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H42SKqHNlNq89TFekdazoZ9IGwyHLUH/DIVDOqo9gZ4=; b=C5imqjuQfqJmhuSx
	ErPZmAb7wv27A/G9JrpjNfcK75iChNOH7FcZhO6abzfk1+PESnUjMfNLShGlbA5C
	uJ68WtMYwwgQ3OQpCCnh5cTALl6L7mrfG2tMbL476wk/klRrNZNe/TCsc81svyOo
	sWj8jx45pgjSpSDcuKwyIsfQXrUxBc2fyHoGEf0HHYtnZGgR7vIg23B6ESUpQ4fs
	Rvq822bqZNClS13sh8sDLBSyRdycUkClWgr50pmMs3LboumbGFRqjMKPVK5md8iy
	d1m2aNRhy9njGjLxsOrAt5zCtkprk229FiCu/T3AHL63TAs05LO5HRnxNE5i3HfX
	3OPnSQ==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gj1rwktbk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:01:28 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-6bc3374cb0cso565578eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876088; x=1789480888; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=H42SKqHNlNq89TFekdazoZ9IGwyHLUH/DIVDOqo9gZ4=;
        b=F8Fz4/vvZO6YfgZufP1xy/g9nFtVqmQwNY8ViwXaTf512F7RxDw10Yx2RlxyZjl6Ia
         Vi6zCRIVtmHCRtsR985fdLwTUpa2jIlCa8eIMVW01O3cvHNG3IGlZ0xxT4fRgH02Kl4D
         zbQgUqMcDHW2TfZm886o14tEvZaGS8KOpzu38g2SfJbj724+OMIsJwrk5G398lqocA5b
         x5SHf5TaKG4ihTP3RAadTdUwMgojeEHCp2rHBwuXGpZ4OIXQY8/tUXRWHs8zLAQHb/75
         rK0TPto4AOZqCo5T+X76s6VyUfoB+eFJ4CvWE5rO/mq21eM4tTLnN3XBPrxSX9qp6Bw2
         z3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876088; x=1789480888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H42SKqHNlNq89TFekdazoZ9IGwyHLUH/DIVDOqo9gZ4=;
        b=Is/BdFsnFUzi0de7S77UgWhEw8vbxM7lhXDTVRJ4D71H+/iUKtS9d8/XGsD+qIbAFL
         kUHZUIPOm+TvnSbI4EWFPgVFNAwiW+EcX1EHBNNxrfHF9X5A4+pxB/zRW6F39PDi2jfT
         HXYv93tiisuR9/87ShYx6EvWid9/qASU7jDYmYdhk4+ZpKgKVn3PrfJ/L61nRIL4d0Uv
         WQsMiHtm24VxcbgqZubXQqsKCZJBMdaIaJdt4aWNg/2mLiMiOmr6BYesQdgK29ggVN67
         emfDHlTKEOclHCIEWTqLT0i+i8FqWCZFPY3WUHJOZ3ZfeaCeBKfEeY497p3uRbRGn30f
         H4ug==
X-Forwarded-Encrypted: i=1; AKwUvBxGTl5nmnwCTEtwAWttJZRjgbWkeKPb6M0iGV2a51JcBU8m7ZTk9JvwWuLa9QYcaOFXP8y2jKeD3q4=@lists.infradead.org
X-Gm-Message-State: AFuF++mAv3iE5ZDMHNsEUVvDOPbWvUrfVrz7goAmR+xTWQ4hdMl9Exkz
	yT6UUodCAuXUjFLBdiYX1xz+ANIx9EzOcr4nmDUHOrOVKa/E/Tin2B11dCQfWW1ncYxu1VwIu5D
	MlBkDw3eTe0gRCLdgx2ks6cMhLRtmihvsjQxnBPjaUiYm+lScOwAkFp5eQwRKZP6YXaD02P2Nq+
	yD
X-Gm-Gg: AYBFou1VzqembOUB+OSRivb+20lPPFAVHw1lFfTQXBTHVHrh4UTCkbgWiocclqHjOFd
	7UDd0KIPHkW6jwKIwdvyZJuuLSsNY+s/XZoP368V97bjTxv3R/5UIRGShDlC2CfjmeNTDO5GJDf
	bX1ot4SyxDJmvw4xx/Z0Qc1Z29OD+QxzZVX9PyaDMH+HTQgQRNN3MLqkR0/NmzfDtSpfS5XMWD5
	vinsXTniZ7eBUUDxYUJ4tgWNjf7j1Aq0QDLEIzhrO1i9bh3W1lw6uUfiC8lkSftn58K7TNL5oRp
	9NASgKHKwSA1MOWwCJ5RxR59C4q6XtsoYhqK4Gn6Ny0TegU+7QhLT7r8p/H1GM0bYQZICheKZop
	WObiJZFWlVC56j4SY7rEMwjUbeHE=
X-Received: by 2002:a05:6820:609:b0:6b1:67e1:fc8e with SMTP id 006d021491bc7-6b6fd9c7a86mr17799958eaf.25.1788876086472;
        Tue, 08 Sep 2026 07:01:26 -0700 (PDT)
X-Received: by 2002:a05:6820:609:b0:6b1:67e1:fc8e with SMTP id 006d021491bc7-6b6fd9c7a86mr17799655eaf.25.1788876084167;
        Tue, 08 Sep 2026 07:01:24 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:23 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 19:30:55 +0530
Subject: [PATCH v4 2/9] phy: qualcomm: qmp-combo: Update DP PHY common init
 tables
MIME-Version: 1.0
Message-Id: <20260908-glymur-phy-v3-v4-2-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
In-Reply-To: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=4909;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=jUl/a7td3eVZzHxout1Wc+KQ0lo411exv5ozSQDxRNs=;
 b=ft7oh6O5glwpwUq2UqAHPUs3L7SqLW+OIIjEzm18+vdgLJzzM5A1M8yZbkcJEXx++KtPCJ33P
 SbqU5yvMdPLBtGqZfEYtU+69/LC4n/9W1qEDTpmWePzdv9gWcj2C8sp
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=Ga8nWwXL c=1 sm=1 tr=0 ts=6aa01538 cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=hi1czDCzuCcYxUEklLsA:9 a=QEXdDO2ut3YA:10
 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX/xPpBRHGMgQe
 PVhni3OdW2BXzZo8r+qauly7ggLwoWzg8iSSbEoyLR5XiEVFGLAUIhP9d5VZv3SMwCbuZvTBXKI
 23hHUe2KgXqvdThDBNqvoeAVnaq7pj5eLEOz2Qc27jY7GZFMD5S3c6DqYbxsoIVCPc6a9zSlH+S
 G+gbxeOOSXNndrWNQAy8Snn2b+vx3QPAjgWhazg7UHy0M/JPKvTDayihJl0CC9rb85Ou8XJfR3W
 LnIiRp581ctOW+7hMsEM9HE1HEaDL+bGcwL1fRmZUsRppHfwE4vvK7Ap8slTGE8OqVWYo5zP6ii
 IQkqX/upRjpuL4dudQZ/90rs0XN3ekdXNN1ovcXQ8pHCuDXa600Ls3HQtllTUEECIbQApJWmKSx
 rjYk7SPqttqu0W6i7qkk4R5TVMIDOLMnFMUn2wRptTxNIR+bnpYgKW5JDDVH+lUw1LAMZ1sknZD
 2hBAbgDRmELznYQc0yQ==
X-Proofpoint-ORIG-GUID: vzRkuOLrtaQnQdiM5V6ybpL77NkoJvJU
X-Proofpoint-GUID: vzRkuOLrtaQnQdiM5V6ybpL77NkoJvJU
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX3NDjIR3ctoPJ
 UPvfBw34knliu+goHFskCTkUeqZwNQqJb7r3qGhbMIiitNuWPDa2dn4phRlN/2aD1cllG47dOKN
 g8L92wSqPGtF7QtV6qFIOiivvZ2TGwE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_070130_260660_27D4A773 
X-CRM114-Status: GOOD (  11.56  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Update common DP PHY serdes and TX initialization tables with
corrected PLL control values (MODE0 instead of MODE1), updated
SSC step size, reset control, and various TX lane configuration
parameters including emphasis levels and driver enable settings.

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 4d31637f1dce..b2ffc20e8f6a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1494,10 +1494,10 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_serdes_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SSC_STEP_SIZE2_MODE0, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CP_CTRL_MODE0, 0x06),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE1, 0x10),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_CCTRL_MODE0, 0x36),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORECLK_DIV_MODE0, 0x0a),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DIV_FRAC_START1_MODE0, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_INTEGLOOP_GAIN0_MODE0, 0x3f),
@@ -1512,12 +1512,13 @@ static const struct qmp_phy_init_tbl qmp_v8_dp_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_BUF_ENABLE, 0x06),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_PLL_IVCO, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SYSCLK_EN_SEL, 0x3b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_RESETSM_CNTRL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_LOCK_CMP_EN, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_CTRL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_VCO_TUNE_MAP, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CLK_SELECT, 0x30),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CORE_CLK_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x56),
+	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_CONFIG_1, 0x16),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_SVS_MODE_CLK_SEL, 0x15),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_CMN_MODE_CONTD1, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V8_USB43_COM_DCC_CAL_1, 0x40),
@@ -1553,26 +1554,26 @@ static const struct qmp_phy_init_tbl qmp_v6_n4_dp_tx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl qmp_v8_n3p_dp_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRANSMITTER_EN_CTRL, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRANSMITTER_EN_CTRL, 0x1a),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_VMODE_CTRL1, 0x40),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_ANA_INTERFACE_SELECT1, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_ANA_INTERFACE_SELECT2, 0x18),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_PCS_INTERFACE_SELECT1, 0x50),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_1, 0x0d),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_CLKBUF_ENABLE, 0x07),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_CLKBUF_ENABLE, 0x87),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_LVL_UPDATE_CTRL, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TRAN_DRVR_EMP_EN, 0x5f),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_EMP_POST1_LVL, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_EMP_POST1_LVL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_EMP_POST1_LVL, 0x2b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_EMP_POST1_LVL, 0x2b),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_PRE1_EMPH, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_PRE1_EMPH, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_DRV_LVL, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_DRV_LVL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_HIGHZ_DRVR_EN, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_HIGHZ_DRVR_EN, 0x3f),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_2, 0x50),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_LANE_MODE_3, 0x51),
-	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_DCC_ANA_CTRL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX_DCC_ANA_CTRL2, 0x0c),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_RESTRIM_CAL_CTRL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX1_RESTRIM_CAL_CTRL, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V8_LALB_TX0_RESTRIM_POST_CAL_OFFSET, 0x10),

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

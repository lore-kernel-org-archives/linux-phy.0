Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6722606A335
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iZ68TTyf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ihiTqaxe;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=b70OgwQ8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Da+AJZyWLq13M+BWrFjs+6J3fO6df7xk3Nx3I9ioRhU=; b=iZ68TTyfG0goea1WwFQ6HFCZg4
	gjFiqk3e9eGTT6UO/lvhTZSG8h8aL6RhEP4zLRlY7bfxwjUMOevvoHt94+JIhm3356x73PydNb7fI
	YgIc8lmC9XdOGqnaVJR4fKP/sGloRdq6ojX+UVs7wg64U5vCpj3zZ3ixWcO3vfqzarUyTwVcwymio
	xSH7KdbmytyeuBNNp2z6XM/fU9/4tANZi9QvJECiKw5oXWgw4daUO7R6a2RPb773wwBc3V7fE+gkm
	39tKsg0zmClAjaG0VqoHzYu5xJtO0gUiVDrs18pk/pp43F/BNBGzavWcQy8KHfDBheHwCC2DY5pw2
	sxPi+vaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSByr-0000000FtxF-2uDW;
	Sat, 14 Nov 2026 11:31:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSByp-0000000Ftwh-2lok
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:31:37 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wZsA3276697
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:31:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XMNu1kFCHXFN4FE2hCHTEBumC03iTtNlb2/XhlUGlQc=; b=ihiTqaxeXfnFk6Wv
	gFUocX9CDqm79sdfWMvi5g1xMEuoj+LgbsjavZtsY3mma3qo7L6rw9xhZzOjiUe0
	58zg13hGcH9r0rcCPSkZlXO0ycxi08p66y0tCOqtDE64Kv1rSGeGwTTEaOCy0QXZ
	lSY1FjaPHsVzNCDCg+rlE60y/ebUa0X+KCKs/400mDTLmeoYT9U4yJWk8oZ167kL
	3/Mtr6CShLsL6b37Fjhq1jqzA6pqCZfxj94OS2iHb1WGsknU30Nj/mHFPThUhRC0
	J3fYehEeqIRc68jH9SIqEgTLgSXGB3QmuyRp4Dk5S49rf6FTV6O6gt/rEPVprAh8
	ETLfGg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhjqgrh4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:31:34 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-55cc3c32e15so2453601cf.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655894; x=1795260694; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XMNu1kFCHXFN4FE2hCHTEBumC03iTtNlb2/XhlUGlQc=;
        b=b70OgwQ8WFKrT1sPMudeF8AEKhvxGBga6Ia8tQsEFdKzK9EI+RDiaS/AeErD5SqACL
         759gVHvm4OEu8HvHs4+sj20EWWwk0wtWkELe2BeM45sETKPYNYCxpyaq3Go4JUqphusV
         YKUAxKvZczksJrw1ACA0Eib/nJ4m/d6C+cK0sBiKfqMsEHF3keUvAVaqvy24hsnZ+oTH
         Gcyzh+SXY10tgIRm5YEEjMe+Wxq5mkdVLQNqOYjFy0+jvzVxa0yWJ90MJ1gwE1RASVgV
         YPTnO51citDqS8UGmwcVNHlVyJciNy3GEsISIQHWOCSOSxDXVRwMo1d44OGS58Ala1lI
         Labg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655894; x=1795260694;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XMNu1kFCHXFN4FE2hCHTEBumC03iTtNlb2/XhlUGlQc=;
        b=gvPpXkDNvHdpu4kodcp3wajQJ+amSdn7XYHpjz/gj/bH+Bb92yljuZg9D64K0+Av12
         7kGVBzb1koT0/5m2AQeHcDGIx9iDG+xDK46aG6FMFisFHNJYaMKCAYZPDC+vbBImB+Ez
         BcUojG2U50/xc5uK5uCISlyjK1SAb+D+mIfz8GxIrYhjUiE97Sayy9DjRYMZCF/Eb7nP
         dDbRnFf+pxx7OL1YEO/fnuNOneSqrfyCFX4SUc4j3129cjYGu3pus5w9yI2L/t7be4uj
         RbucXYSqdxDpaQ9XJhIIhcppb8jTSugc3KXxbsD14PJd626l724Q3BIRWav/rMAPPVNa
         FrAg==
X-Gm-Message-State: APuU4Z/Gu74wCeKtJ4rmeNNsQOc0elDFqq3KiBiRvrNyLuVQo/jge/Wf
	5qBSwh/fTUy/TFF+xr+mCV20lskaLYaGxxTMtry3QD7PJMSkqqtGoO/MsbLxHfP9Yn+yIk6oGLk
	X+dLs2WPqXy1QS3kaCSjCnqeovqMDAghIlP1EEqDKEgXYo1LDxLnKV5oC0JS7WWMy1HL9GMfaoo
	dLgwg=
X-Gm-Gg: AYBFou3/NxdaHNvZxxa3iUbPi+/POtycnBsMMFX9GR9exS2qvN5886gbjPIdpNtywis
	Zrno/EyxlJzLKte45EXZaVfJMrDqLQl6/FyuLCvcpAMQMkY0oxuTBZJNR+QBHhcF9uoRrf5++e4
	Eq21jQPDxS2WGqMP83KzdC8/MHW92a+hFjs7xFzyZSpul/qstckD0Ns4B7XJiSgIx+Ah/9oArVh
	Gpol3C6M344/xf8eUMYkBQue6j5TIvMkeu+LjASgsjHShTfCnuN515KzFHzzkDjEPe7PFFWsVp+
	3RSoD5nSsKrg3ssHBcYiwCCYNuzhWdxMTiyk4lDkkqmIlIOdTbivork6BX4/km8yfulHdc4QASX
	Vw/dNoyDVjKyonWn02SRD7fVJkhKrWKI4rvNvXxYLr08ePHTilc7W5h/XP36y15C/vQuDJpYnkh
	5raUCzji+wv5X6db9y5wgRkac6p1oYm4QqL5AWV/tw
X-Received: by 2002:a05:622a:450:b0:54c:dbe5:7246 with SMTP id d75a77b69052e-55ac7b568femr80879631cf.18.1794655893727;
        Sat, 14 Nov 2026 03:31:33 -0800 (PST)
X-Received: by 2002:a05:622a:450:b0:54c:dbe5:7246 with SMTP id d75a77b69052e-55ac7b568femr80879191cf.18.1794655893202;
        Sat, 14 Nov 2026 03:31:33 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:31:32 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:29 +0800
Subject: [PATCH v7 12/23] media: qcom: camss: tpg: Add support for v2.3.0
 TPG
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-12-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=4725;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=nolSV4femI6iI1LwIGiRAt49kcWhSpUec3QSmHu1xS8=;
 b=qZJ3R/VU90xq97oq48U4BdM2j6J+JUPK9vJ+HiJdPG6j6Zm+DaDzz9hBWmYjF98yvKMsLZrOE
 dXaAzXGXKfFDMwfnm/h3e5r0B/T4y1cISDhOFv2G4RUHzV/bvhLT7ra
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=KelHIgYD c=1 sm=1 tr=0 ts=6af84696 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=A0A5h1ccE9LH-sW4MsgA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXxl8QC7otXH6D
 oVpV6Eyu/O+xev1SDcjkNcpTCYfg27FyIfDYvNATaGe1Y90LCMTu+iC9dw1HCTNEKqjxvayUJmN
 gQVQVPNugtsGwB0Lga8VE24KyuM+Ttg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX44b2arNGlu/p
 cm+CpVvxUAMc1ZMBQYmHwgxpJ8GdKRv8hHqwHf+PO7FmLVvKpyFOtWR5EfQr/yjfRyxTeLC9ZYg
 TTT9Hi1shl2dZRw555K3IWY8ao+7vnj6RoJy7uVfM44Nsi6oxGVxKx1Ym9pamrB8UUGSS4UNNY8
 CI+WjJajC5aZeMxXnGQj84mhBnfEU6YTRz+/BCXluaLcL3ufNlqLkui2ctRPWWOvbsKQuGzKs6t
 oCLAJA2uuoeuoVz5zBgHKxoT8pfCkHjMKJSy7O9JaMDZvRfYjTqExDhfYTodkeCQm7BaF0Okgj6
 FHx82QnbOk552eLvrPiZ7qNtasDmYxCaEkQLcIYKBgefy0L1pCOMWP3O32941i9/wswItdG5Zt0
 xANTv+GvuQAPvSwqQWcdW0gKl3fD0y0+V4+PLMOkQ/U83NrDIQ8f75M/cp23hWZMYdEg5SfnUks
 sBdl7BlPW82IgX7VgDw==
X-Proofpoint-GUID: zFBON96vqbqIl08eN-FFRyIpuLXHm9Ej
X-Proofpoint-ORIG-GUID: zFBON96vqbqIl08eN-FFRyIpuLXHm9Ej
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033135_850751_25707885 
X-CRM114-Status: GOOD (  18.45  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add support for the TPG on SM8750, which uses hardware version 2.3.0.
Its test enable and reset go through TPG_CTRL_CMD, so lower the hardware
version gate in the TPG gen1 driver from 2.4.0 to 2.3.0. Older TPGs keep
the TPG_CTRL test enable path.

Reuse the SA8775P TPG resource table for SM8750, since SM8750 uses the same
TPG register and clock names. When a TPG is linked to a CSID 980, route its
output into the CSID RX through the CSI2 TPG mux.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss-csid-980.c | 16 ++++++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c |  5 +++--
 drivers/media/platform/qcom/camss/camss.c          |  2 ++
 3 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-980.c b/drivers/media/platform/qcom/camss/camss-csid-980.c
index 713db25cd8c65ed7e991bffbb8b19d66c662e708..38cbd67d355d0e7bc683cf5a9e521d082c479d58 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-980.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-980.c
@@ -6,6 +6,7 @@
  *
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
+#include <linux/bitfield.h>
 #include <linux/completion.h>
 #include <linux/delay.h>
 #include <linux/interrupt.h>
@@ -67,6 +68,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			(csid_is_lite(csid) ? 0x204 : 0x404)
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -195,12 +198,21 @@ static void __csid_reg_update_clear(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	int val;
 
 	val = (phy->lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
 	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
-	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
-	       << CSI2_RX_CFG0_PHY_NUM_SEL;
+
+	if (camss->tpg && csid->tpg_linked &&
+	    camss->tpg[phy->csiphy_id].testgen.mode != TPG_PAYLOAD_MODE_DISABLED) {
+		val |= FIELD_PREP(CSI2_RX_CFG0_TPG_MUX_SEL, phy->csiphy_id + 1);
+		val |= CSI2_RX_CFG0_TPG_MUX_EN;
+	} else {
+		val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
+			<< CSI2_RX_CFG0_PHY_NUM_SEL;
+	}
+
 	writel(val, csid->base + CSID_CSI2_RX_CFG0);
 
 	val = CSI2_RX_CFG1_ECC_CORRECTION_EN;
diff --git a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
index cabbb2638cf38ddfd333d2c2c6a04984f223d66b..1972423ba41d9d30f5b00a08c1b4a07ed2a0e51f 100644
--- a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
+++ b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
@@ -22,6 +22,7 @@
 
 #define TPG_HW_VER_2_0_0                TPG_HW_VER(2, 0, 0)
 #define TPG_HW_VER_2_1_0                TPG_HW_VER(2, 1, 0)
+#define TPG_HW_VER_2_3_0                TPG_HW_VER(2, 3, 0)
 #define TPG_HW_VER_2_4_0                TPG_HW_VER(2, 4, 0)
 
 #define TPG_HW_STATUS		0x4
@@ -170,7 +171,7 @@ static int tpg_stream_on(struct tpg_device *tpg)
 	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
 	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
 
-	if (tpg->hw_version < TPG_HW_VER_2_4_0) {
+	if (tpg->hw_version < TPG_HW_VER_2_3_0) {
 		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
 		writel(val, tpg->base + TPG_CTRL);
 	} else {
@@ -183,7 +184,7 @@ static int tpg_stream_on(struct tpg_device *tpg)
 
 static int tpg_reset(struct tpg_device *tpg)
 {
-	if (tpg->hw_version < TPG_HW_VER_2_4_0)
+	if (tpg->hw_version < TPG_HW_VER_2_3_0)
 		writel(0, tpg->base + TPG_CTRL);
 
 	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index d05c0f965f01ce02a91b5f8dbd58a43ad9691019..de22ff74c7acfe912afea31dabc1ecc250b022b0 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -6230,8 +6230,10 @@ static const struct camss_resources sm8750_resources = {
 	.csid_res = csid_res_sm8750,
 	.vfe_res = vfe_res_sm8750,
 	.icc_res = icc_res_sm8750,
+	.tpg_res = tpg_res_8775p,
 	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
 	.csiphy_num = 6,
+	.tpg_num = ARRAY_SIZE(tpg_res_8775p),
 	.csid_num = ARRAY_SIZE(csid_res_sm8750),
 	.vfe_num = ARRAY_SIZE(vfe_res_sm8750),
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

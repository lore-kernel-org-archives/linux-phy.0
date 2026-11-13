Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C4A606AD7B
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3IS8MpVq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=fHIbw81i;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=c5JZnHN6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RlDPtYTfs5AwmtocucRNK0AiEinDD02lf9xYCHxWNgU=; b=3IS8MpVqJvYF0wR+Jz6VNR4Yv5
	ku+L1c+QNCF4fqgsaziZLaEll5OET/9Jw2Giiz3TwTlVaXL3NHVV665TTjHQJufUyoEqwMRwsSGta
	vUqGe76zChPQAligzGFgm0A2ANoiWbnzwMRmdRO7OPdtEumarsFCFHNNLl0byMSmOqsxL4fWeLXdc
	AtGfOCzo9u+IA8NfnvoROTwQ4Of/VyEhb/ik0Eu8mpBy1Hld2BovWI+AL2N0GxszipC5oj4ug4lkL
	1iDtJ9R03DV3HIsIFaQQTFMAOsY4L7NOFG5Onygpmw7ayI34/YCtGBKRJ1nfD8TbDE+Dbgy3JBADQ
	Vn17B6Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvY-0000000BhR4-3OMs;
	Fri, 13 Nov 2026 05:34:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvW-0000000BhOu-0YOC
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:19 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD57Uwo3283935
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UfrUK9hOt/DD1qcO1l/6d1YSHtiPjQ/MWdwV6QWZlzc=; b=fHIbw81iwMhQy2it
	bkd/wHAssj89DQsLXxInoFda+J1uKkHWuAQD3YZEMUhMyP6HTdHH6+KRm9mawS1K
	xXU/K3I6wCg5tEv6Wc1EE/HVVxiHttTnaHS0j7nDEUkKsdxjvuen2fnKimPU14Or
	trhwUnsS0G8FQehA+zUA6CifYZATIGYw7UjhSNkbx7WlFScvKc5/7bIPve9gH+DN
	m5D4dP3TYoLB4g8sUiDfL4aT8cEZlK0yAd/Qdr0MvCVn4Xw0453ImJ8gX6Ok75UK
	2NKYlofY02mL7xSbNsuB8viddD45e7GGsoxTcTk/SbPWgGLRYLfTHKh4r9rVxmWI
	PFTYMg==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwv37g3wc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:17 +0000 (GMT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-4adae31e4b1so884263fac.2
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548056; x=1795152856; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UfrUK9hOt/DD1qcO1l/6d1YSHtiPjQ/MWdwV6QWZlzc=;
        b=c5JZnHN610reTjzHe23DJ+D66rAmJ8Wb4UHK+tR2JrUxcIdlGSwypESXQqmYsBgrnh
         LgItv4zF8PxC82eo7gJOkPeG3qG1MDqb389IbjWkh1obbUtZbVE9kvpS83Am6NCtjiVF
         yo5yJv5oqcapuMhIK/5vnHO9SKTbgQrQ11kaNlzv0DFmhm5FexKxai4w9EmQNjbe3HWF
         tn94NF8E6itBjKm5aw69nHI8nrexAk/zV0fbLr6of/DCK4icvRQwWKF4zv6v0wIaoT16
         GPPAYHULgmtqyfYHS0jibu6bzn3eWEqybaShcr518rcTlq7i44BUkPJoahybNP+aDJEG
         8ZtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548056; x=1795152856;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UfrUK9hOt/DD1qcO1l/6d1YSHtiPjQ/MWdwV6QWZlzc=;
        b=pWwME7uuRHZJ4nNDXgrwQTvd8Ff005EjKmUU0iBWjNosqZ56T1Jqu9T4XJzFCOhAvf
         rvKJSg8lCmTAUtUnyhwk0MwdC8l/kemZSYvRB0Yc7/K50zyTn9+5EphrpFZ2Jiz32kDV
         BeBix70eEDwXQjomolTWQ3hC+x+WzlT13e0Z7gvE0e4b9TJ9SM9Z4YHnPQXOwE5B5Xke
         aY59tlKqyzZxcvOfNnXLItIsjpfeUbgpaWdNSMpTOM3jwfo6PODz2rOIBInY6who62Ho
         hoEhUswpKj1LgJ+l0ni7jDZewN98Q0AcNN0uYeLaOQp6KQxrarIk29+AV0pnpsL5OLDL
         iNkw==
X-Gm-Message-State: APuU4Z9ynbxKorgO8BeGqBRcB28RSURasKJ7+3qRSD6WnNjgkbSa59Zt
	ymqBcyl4zfL2IaL//9FsfSNfOlfMY3rf+08aeHqK2SCAjuppEqHGfq8IYjWBt6ZnaqIxJrj9x51
	yda6sGTZDzacpaeuFo+/WNWrvP1CDjIgleDpLVaTQk7jbje/c0i+MIf2VdB+2OalMM6Pmih0Mhe
	3EV0k=
X-Gm-Gg: AYBFou17UcQROerTFzqf10el5lemWEEle+s9M+f2tA3O5V2lwsQkPUQEWSCvl94XPvf
	dH83qNsp5lGRNyH6GV4E9JnNKWUHx9sUQvgT3ADu4YUPsfwVyiioaFDQBmzcj9fGafHKsTuQuHA
	G3zVMk5XcWYYy2LL+pT6blPuxB5cAsB2KGLX689V1q/tbQ4G07ZvIQChYZrVkSsC7Mq8svA4cIT
	ZzVNN5sxxUg4h6mfTwwVS0UfRj+mDE/Fntokad2BCZXo+F0Xv42QAOqb1wKUwLd68j1SxGbelLI
	20Ewl3PMnq2OFMN2+WNt7Bg4brpIRfUe22Qtf+aPP27wumhOJW0QRbEVsPsUu5mBAv2QGot3det
	uCVXk2uxfw7pYyqfG+5uFqvS7kSYMXCbIFOooRl2ZQ0/KUKzJ3VJqAG+AmLte0y3l9cQpFT0xBS
	tGji0TftXkGSCfKHfZEIKRXvctxA2H/xNMmLmGCNbcV+d2LVPpvHHpzF6FHoSM
X-Received: by 2002:a05:6870:21cc:b0:4a8:b12:79f9 with SMTP id 586e51a60fabf-4afdf480625mr1611297fac.46.1794548056346;
        Thu, 12 Nov 2026 21:34:16 -0800 (PST)
X-Received: by 2002:a05:6870:21cc:b0:4a8:b12:79f9 with SMTP id 586e51a60fabf-4afdf480625mr1611273fac.46.1794548055893;
        Thu, 12 Nov 2026 21:34:15 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:34:15 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:43 -0800
Subject: [PATCH v25 11/15] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-11-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfXyqTlDRRC6qnP
 Mgj+7CmI18zWGXboGgO3mqt5rPiANb7UiXY2vcq/R27uaPh0LWb/62v5TFTasPB3dQyhGBB71Zo
 577CPuHrWzhaNWiUTMeGpA1NQWWMG2E=
X-Proofpoint-ORIG-GUID: z9_F3Xvk2YmBPgesu7TSvn1RW9Y5U17n
X-Proofpoint-GUID: z9_F3Xvk2YmBPgesu7TSvn1RW9Y5U17n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfXxDdh39528NRR
 H1WhegXh8a9JYQN5jbv5TBHdtMsnj2aA3mqTAHuKfwaBaK5qA+Tn+gPI5lX9/zPh6ArIq2DWEte
 vQl2b84JG4k5ZKSAy0swoUUBw0kmkB+yOUVbdREuCaVTNdA4ewCwQu44aHLTL8VKGJQhFtqcpS0
 ERtwei05nGkMTL15ObPgWttDFV+lCe8WPbSej291IDhfxP56jlXNWQMj3Zzi/d97A0f+w4NkTbI
 U8N43HlhM1Rq4fXm7hkXPrQw+8NmRg1EUVTWW4/l/aKr+fB/gKyvUQxEVmzcEHfmWGxdFKTFdd4
 zXE/lYfSbKriQ41pOdmrYxMnmLBiTIKPKokNYrKuU3RGnpl7hi5WNwcAeUpGOM0JDaamuP8jqfk
 4lLss28de+O+jPJLQ6APvuoHLrsrNnomVmkH1pvdvzdqqdMC48wYpy5SDtqBVESOZIspHxsgNPb
 mu33w+B897xbINbNQtQ==
X-Authority-Analysis: v=2.4 cv=ZeeIpcVA c=1 sm=1 tr=0 ts=6af6a159 cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=E31TOhX9jficEpHhqf0A:9 a=QEXdDO2ut3YA:10
 a=1zu1i0D7hVQfj8NKfPKu:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213418_296794_8433B40B 
X-CRM114-Status: GOOD (  18.76  )
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

Add support for the TPG found on Kaanapali. This TPG uses hardware
version 2.4.0, which drives test-enable and reset through the
TPG_CTRL_CMD register at offset 0x1f4 instead of the TEST_EN bit in
TPG_CTRL and the TPG_CLEAR register. Its output is routed into the
CSID 1080 RX through the CSI2 TPG mux, so the CSID selects the TPG as
the data source when a test pattern is selected. Read the hardware
version before resetting, because the reset sequence depends on it.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../media/platform/qcom/camss/camss-csid-1080.c    | 15 ++++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 23 ++++++++++++++++------
 drivers/media/platform/qcom/camss/camss-tpg.c      |  4 ++--
 3 files changed, 32 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-1080.c b/drivers/media/platform/qcom/camss/camss-csid-1080.c
index 3d90d31201fa..ec56ba85a0fa 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-1080.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-1080.c
@@ -64,6 +64,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			0x884
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -148,6 +150,7 @@ static void __csid_reg_update_clear(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	u8 lane_cnt = phy->lane_cnt;
 	int val;
 
@@ -156,8 +159,16 @@ static void __csid_configure_rx(struct csid_device *csid,
 
 	val = (lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
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
index d29de5f93c18..cabbb2638cf3 100644
--- a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
+++ b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
@@ -22,6 +22,7 @@
 
 #define TPG_HW_VER_2_0_0                TPG_HW_VER(2, 0, 0)
 #define TPG_HW_VER_2_1_0                TPG_HW_VER(2, 1, 0)
+#define TPG_HW_VER_2_4_0                TPG_HW_VER(2, 4, 0)
 
 #define TPG_HW_STATUS		0x4
 
@@ -33,7 +34,9 @@
 # define TPG_CTRL_OVERLAP_SHDR_EN	BIT(10)
 # define TPG_CTRL_NUM_ACTIVE_VC		GENMASK(31, 30)
 
-#define TPG_CLEAR		0x1F4
+#define TPG_CTRL_CMD		0x1F4
+# define TPG_CTRL_CMD_TEST_EN		BIT(4)
+# define TPG_CTRL_CMD_HW_RESET		BIT(0)
 
 /* TPG VC-based registers */
 #define TPG_VC_n_GAIN_CFG(n)		(0x60 + (n) * 0x60)
@@ -164,18 +167,26 @@ static int tpg_stream_on(struct tpg_device *tpg)
 	}
 
 	/* Global TPG control */
-	val = FIELD_PREP(TPG_CTRL_TEST_EN, 1) |
-	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
+	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
 	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
-	writel(val, tpg->base + TPG_CTRL);
+
+	if (tpg->hw_version < TPG_HW_VER_2_4_0) {
+		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
+		writel(val, tpg->base + TPG_CTRL);
+	} else {
+		writel(val, tpg->base + TPG_CTRL);
+		writel(TPG_CTRL_CMD_TEST_EN, tpg->base + TPG_CTRL_CMD);
+	}
 
 	return 0;
 }
 
 static int tpg_reset(struct tpg_device *tpg)
 {
-	writel(0, tpg->base + TPG_CTRL);
-	writel(1, tpg->base + TPG_CLEAR);
+	if (tpg->hw_version < TPG_HW_VER_2_4_0)
+		writel(0, tpg->base + TPG_CTRL);
+
+	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
 
 	return 0;
 }
diff --git a/drivers/media/platform/qcom/camss/camss-tpg.c b/drivers/media/platform/qcom/camss/camss-tpg.c
index 3caa95819b39..e7216f7f9d81 100644
--- a/drivers/media/platform/qcom/camss/camss-tpg.c
+++ b/drivers/media/platform/qcom/camss/camss-tpg.c
@@ -176,9 +176,9 @@ static int tpg_set_power(struct v4l2_subdev *sd, int on)
 			return ret;
 		}
 
-		tpg->res->hw_ops->reset(tpg);
-
 		tpg->res->hw_ops->hw_version(tpg);
+
+		tpg->res->hw_ops->reset(tpg);
 	} else {
 		camss_disable_clocks(tpg->nclocks, tpg->clock);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2A8BCA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 07:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnJnW4PSnSGAzCJC93sytfJh3fzyWJr5X1gs8TPZrn8=; b=4g9Y7PovVnCNZr
	JGgvcEx8GSaevzhEzBHLFmwVkJBKkX0Vexid7kEKygYYX7P9uv1cp8IeLH9UxwDNvmc+4tuM1HtOB
	iHkxMGEIahj6+zba3MJg+dQin/bmHTe82dd6rP0BIDoXrG7Jokbr8Q3wj93ozaFJwry2WsZCcU8iW
	bdjeWPyZgYgJLtyljlFASglrDJz4xDO+MGcSTfB98Ysyd1XS4868wzdk9yTa0tj24Qqb5jNGCx/J/
	HKLanu9cXyvk/e+lCCY3D8Z/eGGnSOlj1tCwpNlG469iotEZLKG6Wt2Mp+TX+3hVgh+h7lhBC2v12
	9ERzZu0yRCX6pJzTNwRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiL4-00000003iMn-1SJq;
	Thu, 08 Oct 2026 07:14:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEiL1-00000003iJP-2E7E
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 07:14:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6984BrbW314479
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 07:14:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g5YAmdM5mpYFZzFAUloPIwCU1Y2dUjbjPhmaVIbMoRk=; b=FjUToq5HuSwahYp2
	R73ZKPL5QfroZgIfBp5sxA8EfeMelo6YOezeEW92HiokQAHVIh7Toxr09P2h2zie
	loMTf1NxkSrgDq5itoxlIlCYvtJQQ8fcc9q6AFbjz5pYgMVgZ5mrSF/1mj0bTrgA
	D7PFjNoWGnW98oZgnUEkyo1YgXzU3CT7QYWWLH9aukNs0P2DU0aVjknOyOHwxQgA
	jrA44wM4kWKdavFnsCdrIlUQviJnULU8+XWoEbr9FLbyrokMhC5lqu7LBNauMyl2
	S/Zy2vBwkwpCS2YH1riaQLf8b3rZCWokJ5UwQYC5t1pzeDImI5CocGIdi+PijmhV
	IIRkZw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe31km7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 07:14:46 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-341eff9e381so8400542eec.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 00:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791443686; x=1792048486; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=g5YAmdM5mpYFZzFAUloPIwCU1Y2dUjbjPhmaVIbMoRk=;
        b=gUP9aJtJy+c0KQzPoHbs+TvDX9CCzV9Za8NyKa827KYRvk0uqO+2DZuvaecNKvaDYi
         ye1El4+UGAwBShlXpIh9JYOqF14ul+UO+SQVDHZB19yX0AfytsFTfQvMKNorDIEvFoPu
         etuFL+WTfBzqls3NKF6ktZsjbhXXKwpWW1wmRZu2lv73Dz+utW9dy4o5wNtHPTo2ENac
         HlQNN7JQeLDlBZcNhnLpjV9kUIYRsCdJnbpcypzSMxxBA7BycYw+5OMWP7CohNfM1x+2
         1AQEbDKgHlBCtv3qj21P8LIKc3NNPDnH9mGJb9NZUsn1V02OPeFKdRc7dLN5QkKdCqEV
         9dNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791443686; x=1792048486;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g5YAmdM5mpYFZzFAUloPIwCU1Y2dUjbjPhmaVIbMoRk=;
        b=t8snblbmPikSzCGUfuQ8v1XUF5hhVIOg82WEM4EeTRBfzSySJqucKQI+4m2hHJxhCy
         5+KralM0C4pF4+UKv0XrRHfUa3lhaHjeAPhRjjCTUCvoNYjQ/9KzqBRciemM1RzPSu5g
         dsrNu6EVycIteauoRwby5iD9PFbPu0YbWnY+AwW8huedHu4cWnpP2/2fCZT0NJlszpDQ
         af/BRbMDJEpPZMiWJNWJpnDTlURJISRRyWvxLsGFHjXIpEz6I5nJTRdZu7WMPYNOjh0Z
         cBNeOKCAJ30tvrdtLj6wUp8bzRZugQZVXe53a0PHUO+eSJimpAH4/nS9dekys9REjhjL
         gZoQ==
X-Gm-Message-State: AFq9FYI2yF5fo28EuOvzuV6HGOoLcxJxC6DESEL2lZe1Rpnk+/IyX8xu
	9i+uqCaBmVjv1jESIHZlH6707k90+U87Dl7cfhjLp+tKq6XV5PZdmSA6+pbNGkewjs9F07nXgh+
	YjxefAQIFjZRdiA78yqQ0Big/j0gN7Nbcs2zSfbzCFpdGkrNgkE3e8cqBoJHH3tWPfZvF
X-Gm-Gg: AYBFou1pG8D4X0GLQgE7VsFimNbfZIaH9FpyE/XnxaotrtbK2U6VWsRlaCfTTJ47rG4
	ODdAbg1PenhDx8xEaAAkms6wTkeDqwYVkg/R2W2ETCLHwTy3Fbn6phVdTbL1ECi58bzDpmaRot8
	p15oVcaRC/9n220oPPVZqkJ4yv84KFGz4RBgWqwkthHH/I6fmSYfHsh9ENBsoilcnusVcm9jDFx
	GfW9+FSshQ4wwPM961BSwtCmD4i0KW3QPtu+CQ1zZwp7dfM4EwHexfBShnAdfPndi/+HydaDgDc
	wDNmGThUshNIsiZ2LO+3eeaSooln4wjB0F0STLOV/VQ61lSGD8bnc7c593WTh2HbFwjJvvc08l9
	+3p1Z4XX7jeWGYTwJhBrrWEJIqegRfWTmHo3GSjFC/OtGZIUcn9aHI8NTX+94/YgjnKA7k3MDku
	y9bSJEoKkeVQ==
X-Received: by 2002:a05:693c:6394:10b0:33b:fc17:e786 with SMTP id 5a478bee46e88-3515de5da83mr5478322eec.16.1791443685966;
        Thu, 08 Oct 2026 00:14:45 -0700 (PDT)
X-Received: by 2002:a05:693c:6394:10b0:33b:fc17:e786 with SMTP id 5a478bee46e88-3515de5da83mr5478245eec.16.1791443684606;
        Thu, 08 Oct 2026 00:14:44 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515af155b5sm12251625eec.12.2026.10.08.00.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 00:14:44 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 00:14:39 -0700
Subject: [PATCH v19 09/12] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
MIME-Version: 1.0
Message-Id: <20261008-kaanapali-camss-v19-9-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
In-Reply-To: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfXxkLosQP1ptm0
 V9ZIVsH8X5XBOAQFTapNu3BGRH2EqF3ZT5w9mYqFsUtLmKz3eOyXFhkg1mmzitUbyviT6fLXiiY
 GDs4f20ouNVPh73CWWSqUj8YJPh5J99vBi7s8GaAwdJIck8q2lLltMiA/b5hCE/mj5ui2CLR9Uf
 b85p4lS1zkR6mwbnAWBek52vRIlcWn4v6dtNdIsYhbt8x7Vrisp52yZyz4cv+x6kpyitTsVIZFA
 Y6/zMoAIDcmldYvRuXz42cXM9s35EnaP/fru9QMyJBsw2RsforsJooEzBubVQquJMUZzC8iCt5z
 eLb7QUsY0S89Aay6KMm5MmOcvhja5ImhCVAy88AzMEyvHWUj7tC0d0hyZQHpiPiJeXBXwtIeog9
 Srgvm22D4nlI9ixPy9VZGb9gEAMNXQDFIyhBv0vKdZDxlJR50AXYgaqnu+gnmJI3VtUvBsRVMkQ
 2RmaBEz5yhJ+qvFrNJw==
X-Proofpoint-ORIG-GUID: eTLFaPobLQ5d1reRdBCHuD5zbwOEtleA
X-Proofpoint-GUID: eTLFaPobLQ5d1reRdBCHuD5zbwOEtleA
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAyOCBTYWx0ZWRfX+JR9eybLtoKW
 eZwivf27aQwwy1TZ7Cgx+sxeC/vjPhvKKuwBR4aC9LSt2K7Ti6Ya3x7RKeolGcmIfetaMD717Ck
 6SL5sINyEgn3YcwJFxTyZx+vEsJvg1Q=
X-Authority-Analysis: v=2.4 cv=KcdHIgYD c=1 sm=1 tr=0 ts=6ac742e7 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=zvpRHedlNIWp6186mRgA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_001447_581594_32189D91 
X-CRM114-Status: GOOD (  17.73  )
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

Add support for the TPG found on Kaanapali. This TPG uses hardware
version 2.4.0, which drives test-enable and reset through a separate
TPG_CTRL_CMD register instead of TPG_CTRL, and routes its output into
the CSID 1080 RX via the CSI2 TPG mux.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../media/platform/qcom/camss/camss-csid-1080.c    | 15 ++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 27 +++++++++++++++++-----
 drivers/media/platform/qcom/camss/camss.c          |  2 ++
 3 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-1080.c b/drivers/media/platform/qcom/camss/camss-csid-1080.c
index 46e443e05195..851b3cd712f5 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-1080.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-1080.c
@@ -63,6 +63,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			0x884
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -140,6 +142,7 @@ static void __csid_reg_update(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	u8 lane_cnt = phy->lane_cnt;
 	int val;
 
@@ -148,8 +151,16 @@ static void __csid_configure_rx(struct csid_device *csid,
 
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
index d29de5f93c18..770a9e5d5ba5 100644
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
@@ -164,18 +167,30 @@ static int tpg_stream_on(struct tpg_device *tpg)
 	}
 
 	/* Global TPG control */
-	val = FIELD_PREP(TPG_CTRL_TEST_EN, 1) |
-	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
+	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
 	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
-	writel(val, tpg->base + TPG_CTRL);
+
+	if (tpg->hw_version >= TPG_HW_VER_2_4_0) {
+		writel(val, tpg->base + TPG_CTRL);
+		writel(TPG_CTRL_CMD_TEST_EN, tpg->base + TPG_CTRL_CMD);
+	} else {
+		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
+		writel(val, tpg->base + TPG_CTRL);
+	}
 
 	return 0;
 }
 
 static int tpg_reset(struct tpg_device *tpg)
 {
-	writel(0, tpg->base + TPG_CTRL);
-	writel(1, tpg->base + TPG_CLEAR);
+	/*
+	 * On TPG older than v2.4.0 test-enable lives in TPG_CTRL, so clear it
+	 * first; v2.4.0+ drives both test-enable and reset through TPG_CTRL_CMD.
+	 */
+	if (tpg->hw_version < TPG_HW_VER_2_4_0)
+		writel(0, tpg->base + TPG_CTRL);
+
+	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
 
 	return 0;
 }
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 5cd9641fea94..4e9447e11f04 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5863,11 +5863,13 @@ static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
 	.csiphy_res = csiphy_res_kaanapali,
+	.tpg_res = tpg_res_x1e80100,
 	.csid_res = csid_res_kaanapali,
 	.vfe_res = vfe_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
 	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
+	.tpg_num = ARRAY_SIZE(tpg_res_x1e80100),
 	.csid_num = ARRAY_SIZE(csid_res_kaanapali),
 	.vfe_num = ARRAY_SIZE(vfe_res_kaanapali),
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

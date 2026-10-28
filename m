Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343BC606AB06
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TCrwHoEJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=HuE/je94;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=DrUA2dNX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h3iZv9YuqtGm8jsKzlwdHT/0P2CmtfDn8PBXUeRP4C8=; b=TCrwHoEJtLh6quN7RQQfhY78FV
	oD6KiC1/gHcYPWutmmAlKO5kP4hfGKB2K9muu8+RKLOvA7ZRjYkOBxFRKo0XYPe2LW3sn/uOAfH4H
	kyrbCfH1ZlbcZauWM7h4nkGqnIAFm4f0JZH8+oTlQ7BkGpKfFRgP+poFb2C9F7hC9MTZhbVUUpBVy
	i15Ly1RggDCv6UwRKR2TEQninHOCRe2HGdEYc4hIh/FZPdjnie1iKVeQk+FkDCxdaC5edjsfPmYwv
	I/DTxHBX8oiMTMmsTuKeUuERZd9D0rY6RYGlMOVnE8gzJeEImoLUt4ZemEmZfMxe4zCT9SCqtESai
	UenDgVmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5T1-00000007Kyw-3bmc;
	Wed, 28 Oct 2026 15:21:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Sz-00000007Kxg-28mJ
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFAp4Q1154504
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xDQYtF8k8ZaWbb7+5j3FW9elWsMzSAcqwviqB4BRnpg=; b=HuE/je94ZcOYhWRc
	ghkn/2Qmm/8QFtNHdl770cBwJlasdQH27/aw919vM/IrfvXWHt7bbiMi2Cr3l+5F
	nqOgms7g1wpfHGJJpNNehwH+csbph54uH8aEO4nG4Ej1t/lS/Dq3UTfKa7hSl10z
	dfiGUSHwtnfLw+yEC2QvGOnUTpbZjQVLO9dWD5gSSSvkRkCjabxm6E4lYSIHXpXL
	14O3ZcYxOhwPZjVXualqXskPA2FfcfY3EiDrQrpFaWWAu8+Sm2y8bqAr0oIvVdZV
	RnIpqY3U2lZv5EfW/caRhgX5l/Tflc+IfkdFhOpQ2dzD2c8X7U7FouPUMn9iqjUg
	wWtGbg==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk6be34rv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:28 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-6790b1d37e7so42308d50.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200888; x=1793805688; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xDQYtF8k8ZaWbb7+5j3FW9elWsMzSAcqwviqB4BRnpg=;
        b=DrUA2dNXNIjJeQKEooOi5+sHpQg/pTBFTLmQM7dc2QxmrK0Ns9esGL+JcmEV8jxoKN
         AD49ma3YFE0HjE4v3MF8cOl/pN4kkdPlOYctqUbuXuSGFeLEWT4AjUcODTerw+e5lZKe
         /OSgiazRix/1+5038f9wUpa7o3ow7e2Wb40qQcG7CP46AvLlhdY4yk50dEQ1YfkVXAlw
         yuGgmKscp4ZMjisG9xgZbUNIvDZDPFvN8tSOpnwQMNZmkGGsAB5yihrAHA5mhObbMPMr
         D7m8kZCBWccU0Qjhv3Pl0CtHp40IcwarTr0adSMsMR21V0EHssYn6U9sbAUTfuroQ2Pp
         kaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200888; x=1793805688;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xDQYtF8k8ZaWbb7+5j3FW9elWsMzSAcqwviqB4BRnpg=;
        b=2Bz5q7SGWz1Ax+q4zIYhqnZ5V6HqAn51aOJWDx6DmQC1jxl4LQBXdG+se2UrOqAI2V
         3kRUXtcN5OBFsNOYSA3PJGk0IFh5kUSdRGOA6rZim0yUmxWjpPlpXYDR8pznafUQYdIy
         zHM+T+ix6QH8CTS4HULaI5a4PSn4n3m/QXutQuAdyoSd0zzXT/Ow8emS3E2yOQqZbXsX
         QpUN6LNdDnhxTF9EjvfqEUend87NSAiFPwrBooHizPbowF1+Eye76tNyrJbc3rKXEr/O
         qmHWJ058kRDtborrDf91YzdnswPxomqOsvtFzRL2/Zma1BQEGn8ej9NAt/8lzgmRAZKG
         /v4w==
X-Gm-Message-State: AFq9FYJFKvQaRyQsQE+OZkW+/y1TbvpPxQvwu00m70N7DURqD6dvaxdQ
	Q67ACLVvZDMLTOBLHmZW+7FYc3XEDLtMLDo27P90UGUwN5S9GxiaE5yLA8BW6yYp4qWa6apl0QR
	6iPNY6ozB6TYAvAVqYMrCdMROgVFO/kJIiS9yqeJY2/2S89jedQIVf6adaCKk7qA4MnsT
X-Gm-Gg: AYBFou0EGMK9Vcc+yQPUKn2wUcsT7uNSjdW4HOEqYSwJ3ndZGX5BaHCwjuOdXVIQ3V6
	zlatYmbz3BgbDPckCcXNfniAZAcMBWXtD2RJtYQuioX8wEHnm2WIjlK2M4CQq2rW5qpWkIQnrVx
	w6dlk7PjbkrtgGqr5oyd1VmSXxZ47R07kmtnIkIKy2qFPoaGicohJ0N4A8rIt1bsesXtc+L5kAZ
	y18MPDmKGaPhfLK/m8x8sCtnLZ0Oqe3eSsZcipcLDqHpMlCVbnrJvDYgApOBY3uKRtjGGg+fopH
	JGY1vx0zolyJ4mzjvjP6bVblps9xASAaCWlDURJ9fbGTnpHPBLsi0LV23yrwLd1/oxGXJ8yxCYK
	rCHAlwTYheevvF7zUFw/AgobZpajs5geE7KDT+SMA1nX+er09UWZhqtzq//Ns4LHwyRabmWJczB
	BpgE5KU0hU+wHXZO6T6/9vc+UJaNIQuoRbRXYRhC+FnwdYxc5Jj/omBCXbFnLo
X-Received: by 2002:a53:d54b:0:b0:67a:551f:920c with SMTP id 956f58d0204a3-67a7bce22d5mr1623175d50.86.1793200887783;
        Wed, 28 Oct 2026 08:21:27 -0700 (PDT)
X-Received: by 2002:a53:d54b:0:b0:67a:551f:920c with SMTP id 956f58d0204a3-67a7bce22d5mr1623121d50.86.1793200887107;
        Wed, 28 Oct 2026 08:21:27 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:21:26 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:45 -0700
Subject: [PATCH v23 11/15] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-11-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: UUBijIPkrrtPwdT3fNeL6Wcq2_M9vnBc
X-Authority-Analysis: v=2.4 cv=HeuB3SE8 c=1 sm=1 tr=0 ts=6ae212f8 cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=1CCqUJFLb0VynuEnu9gA:9 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX0O/Q9sKAHsOW
 j8YAxxCw8WoTfiQkyVS27HleklNq/xX87YmDGBG+w13rHP0pBljiwNt0xGX3aEhKMG8eT6OZdjb
 KwdGDraXbobbaNdseGbl55BFRISeAl4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX8VQfHhkfvigk
 x5QxMG8wdhoJ6AdC7lqJr6xvlvhxKj0V0cS34OOR+zdvapTRkOTzyzsiaaT/7XKrQrpfIAfuW+9
 3a1iojH0iFhYQgrn3eXT1lL278txr4PNyBtUm8i98KkfUYqYSANHTjqPGGYgCALJcwtFIZSuc+k
 fBx1KX2hZI6QmiV3Rko2YKwS8LNf1arHvhQPJ4QuJr6FJgqaqQuNncUA8OsXIrN5UKRtwo/FNFU
 xfI5Uh+UJGrPOxFJe9xgZpbBW6Fwy/50v6diKXg+g7rThkEzgV2u/m4P6a99BVp53RcEzaC2q3Z
 2nKrgsQOIzKj2YHbqJcfNb8av7EHLEh2TobjRfQzQzxPnQgOb7fEdG48m0xCpDh9WnESw/2Hm/+
 IZjzqOr+4tbiCVzfQ7issnY8b+sqREyb5svAl1Y2m5779+8I9JqHOudy4GtEw7jwge8nvYBlsKB
 Tb4i472GofXCvowIZ0g==
X-Proofpoint-GUID: UUBijIPkrrtPwdT3fNeL6Wcq2_M9vnBc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082129_695738_B063096A 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -1.5 (-)
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
the data source when a test pattern is selected.

Add the TPG resources to the Kaanapali camss resources so that the TPG
subdevices are created on this SoC.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../media/platform/qcom/camss/camss-csid-1080.c    | 15 ++++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 23 ++++++++++++++++------
 drivers/media/platform/qcom/camss/camss.c          |  2 ++
 3 files changed, 32 insertions(+), 8 deletions(-)

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
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 6ff82dd2aeaf..df4b4cf30711 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5850,11 +5850,13 @@ static const struct camss_resources kaanapali_resources = {
 	.pd_name = "top",
 	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
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

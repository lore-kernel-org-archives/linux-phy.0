Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5BFBCDB466
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 23:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvXE+2X77b/3b0yR7uAHEgWx0pjKeifhkYKnL//1eFU=; b=l9G90IOniTool/
	UxeT75Z2f4eV5XHstp00e0RwJ59sATsvigYilJqwHWBLH/FbLitx3VRrIUJUY29OVQVzj3bey9cd7
	c5ZQtWqRaQjZZkh8N49spz77GpkcgXe1ZWywJzK32yq97DUlPDy5GT0/ICEz5PsHiWg5kX9NbViLJ
	gmmJ5YbZhVaSXXtQWGCh6Xmnt37C3/BprHFcSwwOVBTq0LDDKCQbuE4CI2gmXJhPRaqGiPiEialKz
	OBtvk3XJkFNN68yBokXck3wr9sZwV2TmJeuaaZ958EhYS2KcOvMGyzL09rBbUu74F2/679ZEAQDhT
	fUDSYcycDMsJtPp4Vbtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbo5Z-00000005T1C-1Upm;
	Mon, 22 Jun 2026 23:30:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbo5U-00000005SzC-3F0p
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 23:29:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65MJaDYl2101408
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 23:29:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Ca6hcH+dCfbDOMVnB7gBb9Ls6Se3tvGjDS41pm5PUU=; b=JjDplkrHoZ3lXpU9
	iWHOB+4X9+/MHkGAXIIal60oXUT9bhwAkFPGjCBeQiW3pNECnIvMObTKe1AkcDkQ
	c3bs9WjEzhOZE4BKnWi6pcQwZtPU4WV9vtkrmbzjP58YD97tjEXqmJxCTqw7tjHi
	YOCsTp9jyevRUf+pLjxu9kZGL5mzxq8xsWBAFJjuqZRGhyUNnkl39V7wcMzyTsfC
	E0sZA+oKGiTeDjG4HQ+6+NsBpmTRv1JUl4qvQkhXzK5bYv6OO0PG/9zmYOPj8pL8
	IwCnzazXaN0Q5gK98m3Er28iFqU4zOgsgtOHRPI7I8DEmn9dO7WgsUN0+VAZ1inS
	51qhEQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ey3ebakae-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 23:29:55 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30c03c1dda3so6453105eec.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 16:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782170995; x=1782775795; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Ca6hcH+dCfbDOMVnB7gBb9Ls6Se3tvGjDS41pm5PUU=;
        b=BkodGgtX8pihgvU/Y+Un/KdMH5ZCCnPbYAFnyMVIp5X8ub9oZTJkrWCw/lxlKCd3R3
         QG5zgNxydan81Fa6lF7CRiJj5QNTfCgyG1q1j9H2DrHnOZ3j5PxZ5AgC/K+uAQvpFuTC
         zj8hbt8Wl30x7NAh2vnXjkHFdTtFyqmfXynyTSfpixKaaL1xWPLC8/cAP6yfhwnp13LJ
         AhK+O7I9TxxQmsxKyoLqnD91qginEgW54wnqFUQnxUr5Og6vvQnICKKcNDMRDJCRyap4
         leezSJ/C0llqrbIU/9XaFkB5CV5M3uQpTE6S/epUbdwOKnIcMMfvtqA/rzsw4QdKyl3e
         Yx8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782170995; x=1782775795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/Ca6hcH+dCfbDOMVnB7gBb9Ls6Se3tvGjDS41pm5PUU=;
        b=PQLnfjXa1LdaC3aojIgD6YHiWgt93rA4+749pcAnHywWi80C4RDdpLhYaTOD/wfGBv
         9j1yDicyF741GOU5UuOd6VUgSVaqVPj/AtrPJkOZJKHruha15otYeTQMTutUhjq4ciy3
         hfRnVqqrUnD4XoVUWnVAT2QT9130xaYgc9Agkti2u+qwYqsV9+BWffj/SZz3W1ArEMLY
         0IZKVIY20kuZr5dHmm3mQz9WaWufXNgnrTRSHKParmvbRf1gCryKUa6HeX/+kWhEnQRb
         VDw/7NOMy7ASHzbo6/bV8UCkEf+ueqalf0Rn+LuSsoUDDbzgSYtKUocIopXvELNitYU6
         60YQ==
X-Forwarded-Encrypted: i=1; AHgh+RqVH3bHYXnfVWrhMNRXIlFSZGMeFj4ZTsqzW1ZsiPZG5HEZSvQwZXfcB5sjs5IaSoxGatJ1VNgVmcs=@lists.infradead.org
X-Gm-Message-State: AOJu0YypduUZTVUSj0MumncC1A1kK1GU4KC6Gt1JSTt6DNd6rx7NR94d
	D6q/sCyHwP7CxoJExsUuERXmYa05mN3wYYime2t1tiKXWyd07F2xIqjPPGQJwZXjb6yx+Hx7Kas
	AQ8XMNOIBd4+pzE+XMexcH4mfwPiqLRCoJyacW2zygGL2lJrPsTnDWzzxrV2TLATRiNql
X-Gm-Gg: AfdE7cnLEM9GhshEqdamRd+4WQmeSzUoSzlISj+eRCiwNGIMnZH/QlVt0Zh6EQO7/6O
	zOHdhlgdO3nTkJAIpcS28Bn9gNV6ujMoZZ6RFnMAtjeK6u175JQp9wV/CUZzT0RyQUcxEszP65K
	Oik2yH8v1jo+Qg8+wlGqvNqbQdusixK5AFX3sef8MOoa6+AgvQEENCnzGCzDkqeLWoC4xbu0Lh0
	OzkIDyuXf/8M1xCC0/U/++Se03kphTm60Xf5PbE8r4aYr1SjpHsxwtOO3DKSG+lxLLAtCn5p20V
	N2JMQ4MbRxF5as3/mTgBorKXhpmg5pdEUFuE4DQmMFqB9y17Lcm3TcloqHpFy2J/fTdhY0wcmpA
	mLv29SNytJD3nI1VJQP0H4iUpCK93LXygohIVxJqgbMrigNbyVmA=
X-Received: by 2002:a05:7300:6d03:b0:304:e20e:f5c9 with SMTP id 5a478bee46e88-30c1dc6d25cmr9518467eec.31.1782170994471;
        Mon, 22 Jun 2026 16:29:54 -0700 (PDT)
X-Received: by 2002:a05:7300:6d03:b0:304:e20e:f5c9 with SMTP id 5a478bee46e88-30c1dc6d25cmr9518441eec.31.1782170993820;
        Mon, 22 Jun 2026 16:29:53 -0700 (PDT)
Received: from [169.254.0.2] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c1ba8fb35sm15339727eec.12.2026.06.22.16.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2026 16:29:53 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Mon, 22 Jun 2026 23:29:50 +0000
Subject: [PATCH 2/2] phy: qcom: edp: update v8 power-on programming
 sequence
MIME-Version: 1.0
Message-Id: <20260622-glymur-edp-phy-v1-2-814b45089ac9@oss.qualcomm.com>
References: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
In-Reply-To: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782170991; l=22100;
 i=bjorn.andersson@oss.qualcomm.com; s=20230915; h=from:subject:message-id;
 bh=ArXcFTxLuJREGcFCQ6n30oBPeFSGAU89A23fYl+ElHI=;
 b=aeMVAGVLe22u6AJKnx1ltmcsfJgsop7Akk2aX+2UCjqkiXsAtX0+KA80+Nx2/eHzIxMUcLGvw
 pwkxqqcxGk0DZmu/1bsbt5VHAr2/0aG1wShqDjtZ2a1Xc4E9WGC+Lae
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=ed25519;
 pk=VkhObtljigy9k0ZUIE1Mvr0Y+E1dgBEH9WoLQnUtbIM=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIyMDIyNSBTYWx0ZWRfX2g7OyMf8TnGn
 0gdurJ1Hvs+dJ1J6FKN4qDjD7D5tf8fAdBrj6fUEch/IrOxK/CjEpkTqP/5cjK4yCTx8ssx5B0V
 5aBYY4Wijwzx5szTRnU9s9z9dztI370=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIyMDIyNSBTYWx0ZWRfX53kWIw0gxBpm
 qFt2zr17hRadXuG11zLPI3zjv3WZiw1a7mYqie/zdjrmf7qjKT35jkQOyaLbYJl//0jR9zZCoyF
 vyszymdrw+om3u2ROUv6Wsyhf3E/pTOu0GlmnW4ULMsxuzlc4pXADohNvF2VAuklGQ1rfQE2OGt
 KCpCnNG4fmnDms6dJ5yr2pdSyPkEdeYKN0K0DSrNxRsj+capmxirSdSs0hPkbJGeotMSiF+GwYT
 BxWlzGKuToXiDzh97jVmQVRGRIVTWggAkOqujQXvSguo+w2ZVhfqlc+RS4yZ0xVX/MTxLKSZfmn
 JCCMgs0T6/9mFpkOGmNRhF9yHctKQcRqM9fykIYoTVN+e/D7fojXhXcgJj9MjBMeMqnK9OHCjF2
 panBLyzAhl9k5PcVmTEW1zl6u9qt0neIUIARVycOpHzzDbj59nP1qgI4qwgM+cCvZ6EgEe5a6sg
 /PsXQT0yRFDRx0nlT7w==
X-Authority-Analysis: v=2.4 cv=ILIyzAvG c=1 sm=1 tr=0 ts=6a39c573 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=tcYNc8zciasqwv5PULUA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: RB7J5jtRSdKftlEYh9UnpQ-VntZIwY3W
X-Proofpoint-ORIG-GUID: RB7J5jtRSdKftlEYh9UnpQ-VntZIwY3W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-22_04,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606220225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_162956_944206_0E9AD28B 
X-CRM114-Status: GOOD (  18.22  )
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

While the introduction of the v8 programming sequence brought functional
eDP support for the 4-lane 8.1Gbps case, it doesn't entirely match the
documented sequences from the programming guide. Further 5.4Gbps,
2.7Gbps and 1.62Gbps, and 2-lane support are both incorrect and
non-functional.

Update the v8 eDP PHY programming sequence to match the programming
sequence validated on Glymur.

This changes the v8-specific parts of the power-on flow:

  - AUX configuration:
    - update the default v8 AUX config
    - program AUX_CFG2 based on link rate

  - TX lane configuration:
    - add v8 TX lane register programming before PLL enable
    - program interface select based on link rate
    - use separate 2-lane and 4-lane post-PLL lane enable programming

  - PCS configuration:
    - add v8 PCS/LDO/AUX-less timing programming
    - program LFPS/AUX-less timing based on link rate

  - PLL and SSC programming:
    - update v8 SSC step values per link rate
    - make LOCK_CMP_EN, CMN_CONFIG_1, CORECLK_DIV_MODE0, CORE_CLK_EN and
      VCO tune values link-rate specific

  - DCC and TSYNC:
    - disable DCC before the v8 power-on sequence
    - run the v8 TSYNC sequence
    - run DCC calibration after PLL lock

  - Status polling:
    - poll the v8 PHY status register instead of the older status offset

  - LDO config:
    - use the correct LDO configuration parameters for v8

With these changes the v8 PHY has been validated to lock at 1.62, 2.7,
5.4 and 8.1 Gbps, using both 2 and 4 lanes. Link training now suceeds on
4-lane 8.1Gbps and 2-lane 5.4Gbps.

Assisted-by: Codex:GPT-5.5
Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 426 +++++++++++++++++++++++++++++++++---
 1 file changed, 395 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 6588419d4860..c5d1fa0ae6cb 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -40,28 +40,50 @@
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058
 
 #define DP_PHY_VCO_DIV                          0x0074
+#define DP_PHY_TSYNC_OVRD                       0x0078
 #define DP_PHY_TX0_TX1_LANE_CTL                 0x007c
 #define DP_PHY_TX2_TX3_LANE_CTL                 0x00a0
+#define DP_PHY_AUXLESS_CFG1                     0x00cc
+#define DP_PHY_LFPS_PERIOD                      0x00d4
+#define DP_PHY_LFPS_CYC                         0x00d8
+#define DP_PHY_AUXLESS_SETUP_CYC                0x00dc
+#define DP_PHY_AUXLESS_SILENCE_CYC              0x00e0
+#define DP_PHY_LDO_CFG                          0x00f0
 
 #define DP_PHY_STATUS                           0x00e0
+#define DP_PHY_STATUS_V8                        0x0110
 
 /* LANE_TXn registers */
 #define TXn_CLKBUF_ENABLE                       0x0000
 #define TXn_TX_EMP_POST1_LVL                    0x0004
+#define TXn_TX_IDLE_LVL_LARGE_AMP               0x0010
 #define TXn_TX_DRV_LVL                          0x0014
 #define TXn_TX_DRV_LVL_OFFSET                   0x0018
 #define TXn_RESET_TSYNC_EN                      0x001c
+#define TXn_PRE_EMPH                            0x0020
+#define TXn_INTERFACE_SELECT                    0x0024
 #define TXn_TX_BAND                             0x0028
+#define TXn_SLEW_CNTL                           0x002c
+#define TXn_LPB_CFG1                            0x0034
+#define TXn_RES_CODE_LANE_TX                    0x003c
+#define TXn_RES_CODE_LANE_TX1                   0x0040
 #define TXn_RES_CODE_LANE_OFFSET_TX0            0x0044
 #define TXn_RES_CODE_LANE_OFFSET_TX1            0x0048
+#define TXn_SERDES_BYP_EN_OUT                   0x004c
 
 #define TXn_TRANSCEIVER_BIAS_EN                 0x0054
 #define TXn_HIGHZ_DRVR_EN                       0x0058
 #define TXn_TX_POL_INV                          0x005c
+#define TXn_PARRATE_REC_DETECT_IDLE_EN          0x0060
 #define TXn_LANE_MODE_1                         0x0064
+#define TXn_LANE_MODE_2                         0x0068
 
 #define TXn_TRAN_DRVR_EMP_EN                    0x0078
+#define TXn_VMODE_CTRL1                         0x007c
 #define TXn_LDO_CONFIG                          0x0084
+#define TXn_DCC0_CTRL                           0x00c8
+#define TXn_DCC1_CTRL                           0x00d0
+#define TXn_DCC_DONE                            0x00e0
 
 struct qcom_edp_swing_pre_emph_cfg {
 	const u8 (*swing_hbr_rbr)[4][4];
@@ -122,11 +144,18 @@ struct qcom_edp {
 };
 
 static int qcom_edp_prepare_power_on_v46(const struct qcom_edp *edp);
+static int qcom_edp_prepare_power_on_v8(const struct qcom_edp *edp);
 static int qcom_edp_configure_tx_pre_pll_v46(const struct qcom_edp *edp);
+static int qcom_edp_configure_tx_pre_pll_v8(const struct qcom_edp *edp);
 static int qcom_edp_configure_rate_pcs_v46(const struct qcom_edp *edp,
 					   unsigned long *pixel_freq);
+static int qcom_edp_configure_rate_pcs_v8(const struct qcom_edp *edp,
+					  unsigned long *pixel_freq);
 static void qcom_edp_configure_lanes_after_pll_v46(const struct qcom_edp *edp);
+static void qcom_edp_configure_lanes_after_pll_v8(const struct qcom_edp *edp);
 static int qcom_edp_finish_power_on_v46(const struct qcom_edp *edp);
+static int qcom_edp_finish_power_on_v8(const struct qcom_edp *edp);
+
 
 static const u8 dp_swing_hbr_rbr[4][4] = {
 	{ 0x07, 0x0f, 0x16, 0x1f },
@@ -239,6 +268,41 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
 };
 
+static const u8 edp_swing_hbr_rbr_v8[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x0d, 0x16, 0x1e, 0xff },
+	{ 0x11, 0x1b, 0xff, 0xff },
+	{ 0x16, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr_rbr_v8[4][4] = {
+	{ 0x05, 0x11, 0x17, 0x1d },
+	{ 0x05, 0x11, 0x18, 0xff },
+	{ 0x06, 0x11, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_swing_hbr2_hbr3_v8[4][4] = {
+	{ 0x0b, 0x11, 0x17, 0x1c },
+	{ 0x10, 0x19, 0x1f, 0xff },
+	{ 0x19, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr2_hbr3_v8[4][4] = {
+	{ 0x0c, 0x15, 0x19, 0x1e },
+	{ 0x0b, 0x15, 0x19, 0xff },
+	{ 0x0e, 0x14, 0xff, 0xff },
+	{ 0x0d, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v8 = {
+	.swing_hbr_rbr = &edp_swing_hbr_rbr_v8,
+	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3_v8,
+	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr_v8,
+	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3_v8,
+};
+
 static const u8 edp_phy_aux_cfg_v4[DP_AUX_CFG_SIZE] = {
 	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x00,
 };
@@ -294,7 +358,7 @@ static const u8 edp_phy_aux_cfg_v5[DP_AUX_CFG_SIZE] = {
 };
 
 static const u8 edp_phy_aux_cfg_v8[DP_AUX_CFG_SIZE] = {
-	0x00, 0x00, 0xa0, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x04,
+	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x04,
 };
 
 static const u8 edp_phy_vco_div_cfg_v8[4] = {
@@ -427,6 +491,145 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
 	return edp->cfg->ver_ops->com_configure_pll(edp);
 }
 
+static int qcom_edp_set_link_rate_aux_cfg2(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 aux_cfg2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 5400:
+		aux_cfg2 = 0xa4;
+		break;
+	case 8100:
+		aux_cfg2 = 0xa0;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	writel(aux_cfg2, edp->edp + DP_PHY_AUX_CFG(2));
+
+	return 0;
+}
+
+static void qcom_edp_configure_tx_pre_pll_v8_lane(void __iomem *tx, u32 interface_select)
+{
+	writel(0x0f, tx + TXn_CLKBUF_ENABLE);
+	writel(0x00, tx + TXn_PRE_EMPH);
+	writel(0x00, tx + TXn_VMODE_CTRL1);
+	writel(0x00, tx + TXn_SERDES_BYP_EN_OUT);
+	writel(0x03, tx + TXn_LPB_CFG1);
+	writel(0x10, tx + TXn_TX_DRV_LVL_OFFSET);
+	writel(interface_select, tx + TXn_INTERFACE_SELECT);
+	writel(0x01, tx + TXn_TRAN_DRVR_EMP_EN);
+	writel(0x06, tx + TXn_TX_EMP_POST1_LVL);
+	writel(0x00, tx + TXn_LANE_MODE_1);
+	writel(0x00, tx + TXn_LANE_MODE_2);
+	writel(0x12, tx + TXn_TX_DRV_LVL);
+	writel(0x00, tx + TXn_PARRATE_REC_DETECT_IDLE_EN);
+	writel(0x00, tx + TXn_TX_IDLE_LVL_LARGE_AMP);
+	writel(0x03, tx + TXn_RESET_TSYNC_EN);
+	writel(0x04, tx + TXn_TX_BAND);
+	writel(0x00, tx + TXn_SLEW_CNTL);
+	writel(0x60, tx + TXn_RES_CODE_LANE_TX);
+	writel(0x60, tx + TXn_RES_CODE_LANE_TX1);
+}
+
+static void qcom_edp_configure_lanes_after_pll_v8(const struct qcom_edp *edp)
+{
+	if (edp->dp_opts.lanes == 2) {
+		writel(0x1b, edp->tx0 + TXn_HIGHZ_DRVR_EN);
+		writel(0x03, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
+		writel(0x04, edp->tx0 + TXn_HIGHZ_DRVR_EN);
+		writel(0x00, edp->tx0 + TXn_TX_POL_INV);
+
+		writel(0x1b, edp->tx1 + TXn_HIGHZ_DRVR_EN);
+		writel(0x03, edp->tx1 + TXn_TRANSCEIVER_BIAS_EN);
+		writel(0x04, edp->tx1 + TXn_HIGHZ_DRVR_EN);
+		writel(0x50, edp->tx1 + TXn_TX_IDLE_LVL_LARGE_AMP);
+		writel(0x00, edp->tx1 + TXn_TX_POL_INV);
+	} else {
+		writel(0x1f, edp->tx0 + TXn_HIGHZ_DRVR_EN);
+		writel(0x03, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
+		writel(0x04, edp->tx0 + TXn_HIGHZ_DRVR_EN);
+		writel(0x00, edp->tx0 + TXn_TX_POL_INV);
+
+		writel(0x1f, edp->tx1 + TXn_HIGHZ_DRVR_EN);
+		writel(0x03, edp->tx1 + TXn_TRANSCEIVER_BIAS_EN);
+		writel(0x04, edp->tx1 + TXn_HIGHZ_DRVR_EN);
+		writel(0x00, edp->tx1 + TXn_TX_POL_INV);
+	}
+}
+
+static int qcom_edp_configure_tx_pre_pll_v8_lanes(const struct qcom_edp *edp)
+{
+	u32 interface_select;
+
+	switch (edp->dp_opts.link_rate) {
+	case 1620:
+	case 2700:
+	case 5400:
+		interface_select = 0x05;
+		break;
+	case 8100:
+		interface_select = 0x07;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	qcom_edp_configure_tx_pre_pll_v8_lane(edp->tx0, interface_select);
+	qcom_edp_configure_tx_pre_pll_v8_lane(edp->tx1, interface_select);
+
+	return 0;
+}
+
+static int qcom_edp_configure_pcs_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 auxless_setup_cyc;
+	u32 auxless_silence_cyc;
+	u32 lfps_period;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		auxless_setup_cyc = 0x03;
+		auxless_silence_cyc = 0x06;
+		lfps_period = 0x00;
+		break;
+	case 2700:
+		auxless_setup_cyc = 0x04;
+		auxless_silence_cyc = 0x08;
+		lfps_period = 0x11;
+		break;
+	case 5400:
+		auxless_setup_cyc = 0x09;
+		auxless_silence_cyc = 0x11;
+		lfps_period = 0x33;
+		break;
+	case 8100:
+		auxless_setup_cyc = 0x0f;
+		auxless_silence_cyc = 0x1a;
+		lfps_period = 0x55;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	writel(edp->is_edp ? 0x03 : 0x00, edp->edp + DP_PHY_LDO_CFG);
+	writel(0x0f, edp->edp + DP_PHY_CFG_1);
+	writel(0x00, edp->edp + DP_PHY_AUXLESS_CFG1);
+	writel(auxless_setup_cyc, edp->edp + DP_PHY_AUXLESS_SETUP_CYC);
+	writel(auxless_silence_cyc, edp->edp + DP_PHY_AUXLESS_SILENCE_CYC);
+	writel(0x08, edp->edp + DP_PHY_LFPS_CYC);
+	writel(lfps_period, edp->edp + DP_PHY_LFPS_PERIOD);
+	writel(0x2f, edp->edp + DP_PHY_CFG_1);
+
+	return 0;
+}
+
 static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel_freq)
 {
 	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
@@ -911,6 +1114,22 @@ static int qcom_edp_ldo_config_v6(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_ldo_config_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 ldo_config;
+
+	if (edp->is_edp)
+		ldo_config = 0xd0;
+	else
+		ldo_config = 0x00;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(dp_opts->lanes > 2 ? ldo_config : 0x00, edp->tx1 + TXn_LDO_CONFIG);
+
+	return 0;
+}
+
 static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_power_on		= qcom_edp_phy_power_on_v6,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
@@ -942,13 +1161,18 @@ static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
 
 	switch (dp_opts->link_rate) {
 	case 1620:
+		step1 = 0x83;
+		step2 = 0x02;
+		break;
 	case 2700:
-	case 8100:
-		step1 = 0x5b;
+		step1 = 0x18;
 		step2 = 0x02;
 		break;
-
 	case 5400:
+		step1 = 0x18;
+		step2 = 0x02;
+		break;
+	case 8100:
 		step1 = 0x5b;
 		step2 = 0x02;
 		break;
@@ -976,34 +1200,68 @@ static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
 	u32 dec_start_mode0;
 	u32 lock_cmp1_mode0;
 	u32 lock_cmp2_mode0;
+	u32 lock_cmp_en;
 	u32 code1_mode0;
 	u32 code2_mode0;
+	u32 coreclk_div_mode0;
+	u32 vco_tune1_mode0;
+	u32 vco_tune2_mode0;
 	u32 hsclk_sel;
+	u32 core_clk_en;
+	u32 cmn_config_1;
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		hsclk_sel = 0x5;
-		dec_start_mode0 = 0x34;
-		div_frac_start2_mode0 = 0xc0;
-		div_frac_start3_mode0 = 0x0b;
-		lock_cmp1_mode0 = 0x37;
-		lock_cmp2_mode0 = 0x04;
-		code1_mode0 = 0x71;
-		code2_mode0 = 0x0c;
+		hsclk_sel = 0x4;
+		dec_start_mode0 = 0x54;
+		div_frac_start2_mode0 = 0x00;
+		div_frac_start3_mode0 = 0x06;
+		lock_cmp1_mode0 = 0x1c;
+		lock_cmp2_mode0 = 0x02;
+		lock_cmp_en = 0x04;
+		coreclk_div_mode0 = 0x14;
+		vco_tune1_mode0 = 0xfe;
+		vco_tune2_mode0 = 0x00;
+		code1_mode0 = 0x8d;
+		code2_mode0 = 0x27;
+		core_clk_en = 0x60;
+		cmn_config_1 = 0x76;
 		break;
 
 	case 2700:
 		hsclk_sel = 0x3;
-		dec_start_mode0 = 0x34;
-		div_frac_start2_mode0 = 0xc0;
-		div_frac_start3_mode0 = 0x0b;
-		lock_cmp1_mode0 = 0x07;
+		dec_start_mode0 = 0x46;
+		div_frac_start2_mode0 = 0x00;
+		div_frac_start3_mode0 = 0x05;
+		lock_cmp1_mode0 = 0x08;
 		lock_cmp2_mode0 = 0x07;
-		code1_mode0 = 0x71;
-		code2_mode0 = 0x0c;
+		lock_cmp_en = 0x08;
+		coreclk_div_mode0 = 0x14;
+		vco_tune1_mode0 = 0xae;
+		vco_tune2_mode0 = 0x02;
+		code1_mode0 = 0xf6;
+		code2_mode0 = 0x20;
+		core_clk_en = 0x00;
+		cmn_config_1 = 0x96;
 		break;
 
 	case 5400:
+		hsclk_sel = 0x1;
+		dec_start_mode0 = 0x46;
+		div_frac_start2_mode0 = 0x00;
+		div_frac_start3_mode0 = 0x05;
+		lock_cmp1_mode0 = 0x10;
+		lock_cmp2_mode0 = 0x0e;
+		lock_cmp_en = 0x08;
+		coreclk_div_mode0 = 0x14;
+		vco_tune1_mode0 = 0xae;
+		vco_tune2_mode0 = 0x02;
+		code1_mode0 = 0xf6;
+		code2_mode0 = 0x20;
+		core_clk_en = 0x00;
+		cmn_config_1 = 0x56;
+		break;
+
 	case 8100:
 		hsclk_sel = 0x2;
 		dec_start_mode0 = 0x4f;
@@ -1011,8 +1269,14 @@ static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
 		div_frac_start3_mode0 = 0x01;
 		lock_cmp1_mode0 = 0x18;
 		lock_cmp2_mode0 = 0x15;
+		lock_cmp_en = 0x08;
+		coreclk_div_mode0 = 0x0a;
+		vco_tune1_mode0 = 0xa0;
+		vco_tune2_mode0 = 0x01;
 		code1_mode0 = 0x14;
 		code2_mode0 = 0x25;
+		core_clk_en = 0x00;
+		cmn_config_1 = 0x96;
 		break;
 
 	default:
@@ -1028,7 +1292,7 @@ static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
 	writel(0x30, edp->pll + DP_QSERDES_V8_COM_CLK_SELECT);
 	writel(hsclk_sel, edp->pll + DP_QSERDES_V8_COM_HSCLK_SEL_1);
 	writel(0x07, edp->pll + DP_QSERDES_V8_COM_PLL_IVCO);
-	writel(0x00, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP_EN);
+	writel(lock_cmp_en, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP_EN);
 	writel(0x36, edp->pll + DP_QSERDES_V8_COM_PLL_CCTRL_MODE0);
 	writel(0x16, edp->pll + DP_QSERDES_V8_COM_PLL_RCTRL_MODE0);
 	writel(0x06, edp->pll + DP_QSERDES_V8_COM_CP_CTRL_MODE0);
@@ -1036,7 +1300,7 @@ static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
 	writel(0x00, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
 	writel(div_frac_start2_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
 	writel(div_frac_start3_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
-	writel(0x96, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
+	writel(cmn_config_1, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
 	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
 	writel(0x00, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
 	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
@@ -1044,12 +1308,12 @@ static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
 	writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
 
 	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
-	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
+	writel(coreclk_div_mode0, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
 	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
 	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
-	writel(0x00, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
-	writel(0xa0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE1_MODE0);
-	writel(0x01, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE2_MODE0);
+	writel(core_clk_en, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
+	writel(vco_tune1_mode0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE1_MODE0);
+	writel(vco_tune2_mode0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE2_MODE0);
 
 	writel(code1_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
 	writel(code2_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
@@ -1104,27 +1368,85 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
-	.com_ldo_config		= qcom_edp_ldo_config_v6,
-	.prepare_power_on	= qcom_edp_prepare_power_on_v46,
-	.configure_tx_pre_pll	= qcom_edp_configure_tx_pre_pll_v46,
-	.configure_rate_pcs	= qcom_edp_configure_rate_pcs_v46,
-	.configure_lanes_after_pll = qcom_edp_configure_lanes_after_pll_v46,
-	.finish_power_on	= qcom_edp_finish_power_on_v46,
+	.com_ldo_config		= qcom_edp_ldo_config_v8,
+	.prepare_power_on	= qcom_edp_prepare_power_on_v8,
+	.configure_tx_pre_pll	= qcom_edp_configure_tx_pre_pll_v8,
+	.configure_rate_pcs	= qcom_edp_configure_rate_pcs_v8,
+	.configure_lanes_after_pll = qcom_edp_configure_lanes_after_pll_v8,
+	.finish_power_on	= qcom_edp_finish_power_on_v8,
 };
 
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v8,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v8,
-	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v8,
 	.ver_ops = &qcom_edp_phy_ops_v8,
 };
 
+static void qcom_edp_disable_dcc(const struct qcom_edp *edp)
+{
+	writel(0x06, edp->tx0 + TXn_DCC0_CTRL);
+	writel(0x06, edp->tx0 + TXn_DCC1_CTRL);
+	writel(0x06, edp->tx1 + TXn_DCC0_CTRL);
+	writel(0x06, edp->tx1 + TXn_DCC1_CTRL);
+}
+
+static int qcom_edp_run_dcc_calibration(const struct qcom_edp *edp)
+{
+	u32 val;
+	int ret;
+
+	writel(0x07, edp->tx0 + TXn_DCC0_CTRL);
+	writel(0x07, edp->tx0 + TXn_DCC1_CTRL);
+
+	if (edp->dp_opts.lanes > 2) {
+		writel(0x07, edp->tx1 + TXn_DCC0_CTRL);
+		writel(0x07, edp->tx1 + TXn_DCC1_CTRL);
+	}
+
+	ret = readl_poll_timeout(edp->tx0 + TXn_DCC_DONE,
+				 val, (val & GENMASK(1, 0)) == GENMASK(1, 0),
+				 500, 10000);
+	if (ret)
+		goto out_disable_dcc;
+
+	if (edp->dp_opts.lanes > 2) {
+		ret = readl_poll_timeout(edp->tx1 + TXn_DCC_DONE,
+					 val, (val & GENMASK(1, 0)) == GENMASK(1, 0),
+					 500, 10000);
+	}
+
+out_disable_dcc:
+	qcom_edp_disable_dcc(edp);
+
+	return ret;
+}
+
+static void qcom_edp_run_tsync(const struct qcom_edp *edp)
+{
+	writel(0x0f, edp->tx0 + TXn_RESET_TSYNC_EN);
+	writel(0x0f, edp->tx1 + TXn_RESET_TSYNC_EN);
+	writel(0x03, edp->edp + DP_PHY_TSYNC_OVRD);
+	writel(0x23, edp->edp + DP_PHY_TSYNC_OVRD);
+	writel(0x22, edp->edp + DP_PHY_TSYNC_OVRD);
+	writel(0x0a, edp->tx0 + TXn_RESET_TSYNC_EN);
+	writel(0x0a, edp->tx1 + TXn_RESET_TSYNC_EN);
+	writel(0x3e, edp->edp + DP_PHY_TSYNC_OVRD);
+}
+
 static int qcom_edp_prepare_power_on_v46(const struct qcom_edp *edp)
 {
 	return 0;
 }
 
+static int qcom_edp_prepare_power_on_v8(const struct qcom_edp *edp)
+{
+	qcom_edp_disable_dcc(edp);
+
+	return 0;
+}
+
 static int qcom_edp_configure_tx_pre_pll_v46(const struct qcom_edp *edp)
 {
 	writel(0x05, edp->edp + DP_PHY_TX0_TX1_LANE_CTL);
@@ -1145,6 +1467,14 @@ static int qcom_edp_configure_tx_pre_pll_v46(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_configure_tx_pre_pll_v8(const struct qcom_edp *edp)
+{
+	writel(0x05, edp->edp + DP_PHY_TX0_TX1_LANE_CTL);
+	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
+
+	return qcom_edp_configure_tx_pre_pll_v8_lanes(edp);
+}
+
 static void qcom_edp_configure_lanes_after_pll_v46(const struct qcom_edp *edp)
 {
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
@@ -1201,6 +1531,22 @@ static int qcom_edp_configure_rate_pcs_v46(const struct qcom_edp *edp,
 	return qcom_edp_set_vco_div(edp, pixel_freq);
 }
 
+static int qcom_edp_configure_rate_pcs_v8(const struct qcom_edp *edp,
+					  unsigned long *pixel_freq)
+{
+	int ret;
+
+	ret = qcom_edp_set_vco_div(edp, pixel_freq);
+	if (ret)
+		return ret;
+
+	ret = qcom_edp_set_link_rate_aux_cfg2(edp);
+	if (ret)
+		return ret;
+
+	return qcom_edp_configure_pcs_v8(edp);
+}
+
 static int qcom_edp_start_pll(const struct qcom_edp *edp)
 {
 	int ret;
@@ -1231,6 +1577,24 @@ static int qcom_edp_finish_power_on_v46(const struct qcom_edp *edp)
 				  500, 10000);
 }
 
+static int qcom_edp_finish_power_on_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+	int ret;
+
+	qcom_edp_run_tsync(edp);
+	writel(0x08, edp->edp + DP_PHY_CFG);
+	usleep_range(100, 1000);
+	writel(0x09, edp->edp + DP_PHY_CFG);
+
+	ret = readl_poll_timeout(edp->edp + DP_PHY_STATUS_V8, val, val & BIT(1),
+				 500, 10000);
+	if (ret)
+		return ret;
+
+	return qcom_edp_run_dcc_calibration(edp);
+}
+
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0358CCCA46C
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 23:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keXZHNkFybmf9wqGyQo/PGH6dO5775jIgxRnx4b3aEA=; b=L7RaMgUGOWr6ID
	yGfCwOwtPLaiR0EBvH/PgECnbu5aZrGjBZNwyT4/Oc7SigGu+xHBgh4DfVRpN4++KFcVRupa9X28/
	R7xh1e1BBrGRYi6t6pJvxu6iAHLgETCU5xSS/PjP+suWUKVTQ4kjE5ItYOOC3SE0R0laPrk64xjSD
	0qwBRyOpzUI/g9T4Rqy+33w2mJpEIzmGcOBkjMin2vobm/LAhQDJtFt+mv6nRQAVO1GPI8JaTDsUC
	sBzbHa5XVRYTWv6+jIE1PTgSdNnxNzpb0A7XG4QIAHdalx8YwjiyitkWSQeWQlYWU+7ziEwf+wHKM
	/axVb2AbIzVjSqnd08gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlc-00000004DfL-0fcM;
	Fri, 16 Oct 2026 23:55:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHrlZ-00000004DdF-3rv3
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 23:55:15 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GNF7Q03663349
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zSo9NJFSO0n
	piRQQAI5lKIuz+Psdx072TJd4RB/+L84=; b=PQrjltu8Z05W1xB4Md26kPKdz3E
	wfxvtxmtg9cFB+4/4Y8u3YPHSV3RZJlnklhuDappfKvGjL/nz+Ru/yD2YbvjX4Mb
	az3msg6yDaqHeOaA3oKrC+5d4YaLi55MX85rGkfVVdNds9ypkr/dZcykvutX0Zac
	iJKRtUdqF+IjWA5UaDjvCY+zmjudcCtNrE8ilxEOjd8K2totSDXIKfWOjO2s43eS
	DqXXgZyfU3iLO7mCeHtaqNd0hNNCuN+Y9rrcU/noGYCH4Rj6fOHBxuPSg1M+NIwv
	lwIsv3ha6wwbdbZNuwbQpndVgdCTNActktqkoAA9LVTFOzZBOFEp9tHLLUQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbrwms19d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 23:55:10 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-151ba226e1bso687392c88.0
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 16:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792194910; x=1792799710; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zSo9NJFSO0npiRQQAI5lKIuz+Psdx072TJd4RB/+L84=;
        b=QKX+PoThmxHVYrAVmH7vRiwa9uheLMjJ3UAJWUNKAW1vmrVTQVABWxuu3uncjN+Fzs
         VQ3733c3yF+ZhRtcyOq6X7eTPkP9Fy1vu6tp0Kkm8JspnRu3VJivV89LBwm0ldITltTe
         uFWVdTgxyBhVeQYo9OxQzwYKrmXfW4tlX/4VVdXNhnPxmfNmDYswTYaf59NATUiHtJRK
         v3n1EYiU5eJPZ/0DISjqAe8mZQw64kJK6gQmW/JJJqpzSYkTjt/Yx6dKiJYt2nB8JDwE
         frVPyLWEr6dMt537mHYX6D4H1jPc83LjL4d4HFj21r2hSuAEJto6IosQx5kbGtP1THux
         KfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792194910; x=1792799710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=zSo9NJFSO0npiRQQAI5lKIuz+Psdx072TJd4RB/+L84=;
        b=BTzuoN3plDtlCclWL2pNcWW3WiQpvOp+taR6WCJZzEvZuXM3z26IodjJ98HGZ9V7Wy
         dsAaOQR+DevMgoB19r7j26CJVsuFgbCZpYQgKknRg5j9fI/lTxWWReP9lb4h+6ZuLtD7
         ubyTIrI4hD9qYYvv+Bl+bzfcp5Njx7ErJkFEyYHzjhMauKu2jH6d4lhDT4uIZ+A1qjZG
         hQziPac/4mu4YQhsmLbRvzNzDgWtL6ezjNP6p2GZg+BngAi6UFSgPJoPLAlq2CQli/JW
         3cKz5CzN2Up7yGLJ0cx/2VEJLjmAiB74tBH7Eyh78uThiBqSBMSOehaiya61gbtGnpDb
         ZIEQ==
X-Forwarded-Encrypted: i=1; AKwUvBxskxqLOpKNTh4yRUyw6YDcEMQtZbQZu1KNsmi3EwuJOwCo6H0V3I1uuVBzFJc31ffOn8z7cUj57xo=@lists.infradead.org
X-Gm-Message-State: AFq9FYKYwA63oTmKN7WS0ARDE29hkXNG2KUJZrkKnyrTPbu6UACWLc+/
	bvO6U9tmrwUV50RzUmsIylheehKZcxNKlePHjXby9d6zo5h5qNQyhGdgMluGI161hGPm09xVHZu
	gDM2gXfnUVzn+Wt2S2R8+EJISROiRYf7wrdFRgHp5eirIT2L8ZZAZLg6s1JED4BFw/KEU
X-Gm-Gg: AYBFou3gAGuriRSvpIw4yFv0x71XmqdYQ+lvnCJYgYVGkWP/ZipepzgIvUHbTVOPIi2
	GS0kJJKNL49OvPQQb/NlPtwF32dXz6ahhHpSGtqqVsRn1MVstT4jBU3Lxsv4jSmac0sr6EU06EY
	wOHNmesTbWNnXJ2K7RDeXrN6isWSHAG4IJGr0LgzuY8Eh7tRJmzOeD1w7vlFeF2ZF2OXg+OGLP4
	1zhMClQjYfH/eyHCXb8i/LVGvQ8Du65Z/qEnEYpQ6q9F7tp8KQ16FUJdbkAGUqXix3h5CjyqJ3t
	u6vPZJm61snl3GYc5cKvDVoSt795ZXHctpqQwGtgD9Xb9i9zwFAehYO6oyz85aGnACf+B7q7oiC
	77KJAgOfdjFwwCNMQbGlJbZhdnJycrZqimzulLStOWkdMs4w4w8x2VA==
X-Received: by 2002:a05:7022:ea47:20b0:143:2719:566e with SMTP id a92af1059eb24-18515a66a98mr1836443c88.42.1792194909478;
        Fri, 16 Oct 2026 16:55:09 -0700 (PDT)
X-Received: by 2002:a05:7022:ea47:20b0:143:2719:566e with SMTP id a92af1059eb24-18515a66a98mr1836399c88.42.1792194908850;
        Fri, 16 Oct 2026 16:55:08 -0700 (PDT)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-183190aa7bbsm8556183c88.5.2026.10.16.16.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 16:55:08 -0700 (PDT)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] phy: qcom-mipi-csi2: Add sa8775p D-PHY support
Date: Fri, 16 Oct 2026 16:54:59 -0700
Message-Id: <20261016235502.2274268-5-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=B4osQ+tM c=1 sm=1 tr=0 ts=6ad2b95e cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=44N_cihSaI7VOVReE0gA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfXwTr5/EwuEF64
 7JZLAs9COBCVKMurpJkJue2/SwXH03z+pnQKEsLkfs56BkEtJkHJp5uWD3YmaRV6N+720oOa1Jr
 DKmGMGrueKi1/GHH900ALByO1QVNJAq3xBss5BiIiHh1Tg7noykSRSAxv7q/6Z4k1JiyljgiPHk
 IDMaSS9NfEB0U8U7vURbVP6eEJTQs6BbooZq8dl1PoKmVfNhEgp6vMFjz+RfNH+2XHcXpXLa/0Y
 5J554gwHrR4QvoxgXXyMK3deDa/9Ngc1RkRewxgtnkUuOhqS50mZnmAHfMEAx4BIyPUTOmn2sG7
 c1QLfqC2+bb/T/oe5QqeyO/G1GYOWJCKkm2KpoL39dUjpT9Elw3rC04WfxBZP6RsMUgXXRX1bPe
 bIJiVvfiXWIPRXqIrLL7NgC4P9XbydswSr9ZAH5PigYHL/jeEnuqqKL9i+oE8MsoKYcrLrkRbBz
 ZENErYKw8TisOI5i5+g==
X-Proofpoint-ORIG-GUID: kYX-XGSzcYjb-I8Bv35x27Ws0Fd-uXwM
X-Proofpoint-GUID: kYX-XGSzcYjb-I8Bv35x27Ws0Fd-uXwM
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA5NSBTYWx0ZWRfX8FSCDsg9DbJo
 gtIIrzerCdI0cQCkBRIhLCHUE94oL7X1Y5N96AAcIUtoX51fUJlJSABO/md2vhiKSOTzH9hOWd0
 qkkz19lFpKE8iNuYs4YUryA5t/sYsgs=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_04,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_165513_983813_671445FC 
X-CRM114-Status: GOOD (  14.22  )
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

Add the SA8775P (Lemans / IQ-9075 EVK) CSIPHY to the generic MIPI CSI2
PHY driver, bound to the new "qcom,sa8775p-csi2-phy" compatible and
reusing the existing D-PHY 2-phase hw ops (phy_qcom_mipi_csi2_ops_
3ph_1_0). The lane_regs_sa8775p[] init sequence is the CSIPHY v1.3.0
2-phase 2.5Gbps 4-lane D-PHY register set ported verbatim from the
legacy in-tree camss-csiphy-3ph-1-0.c table; common_regs_offset is
0x800. The soc_cfg declares the core/timer/csiphy_rx clocks
(csiphy_rx is the shared CSID CSIPHY RX clock, matching the DT node
and binding's three-clock clock-names list) and the vdda-phy/vdda-pll
supplies.

The timer-clock lookup in phy_qcom_mipi_csi2_probe() and the OPP
clkname passed to devm_pm_opp_set_clkname() were both hardcoded
string literals sized to x1e80100 ("timer"/"core"). Add
timer_clk_name/opp_clk_name to struct mipi_csi2phy_soc_cfg so each
SoC can declare its own clock-name strings; x1e80100's soc_cfg now
declares "timer"/"core" explicitly, with no behaviour change.
SA8775P reuses the same "timer"/"core" names as x1e80100 for this
pair of clocks.

SA8775P's CSIPHY has a single power-domain, the Titan Top GDSC,
matching the legacy in-tree CAMSS driver's sa8775p_resources.pd_name
= "top" and the existing lemans.dtsi camss node. Like x1e80100's own 
"top" domain, it is not OPP-scaled, only kept enabled.

Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 112 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    |   5 +-
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |   4 +
 3 files changed, 119 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b..85e89235f7c9 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -380,6 +380,118 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.num_supplies = ARRAY_SIZE(x1e_supplies),
 	.clk_names = (const char **)x1e_clks,
 	.num_clk = ARRAY_SIZE(x1e_clks),
+	.timer_clk_name = "timer",
+	.opp_clk_name = "core",
 	.genpds = x1e_genpds,
 	.num_genpds = ARRAY_SIZE(x1e_genpds),
 };
+
+/* 5nm 2PH v1.3.0 2p5Gbps 4 lane DPHY mode */
+static const struct mipi_csi2phy_lane_regs lane_regs_sa8775p[] = {
+	{.reg_addr = 0x0724, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0728, .reg_data = 0x04, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0700, .reg_data = 0x80, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x070c, .reg_data = 0xff, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0738, .reg_data = 0x1f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x072c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0734, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0710, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x071c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0714, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x073c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0704, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0720, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0708, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0024, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0000, .reg_data = 0x8d, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0038, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x002c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0034, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0010, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x001c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0014, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x003c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0004, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0020, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0008, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0224, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0200, .reg_data = 0x8d, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0238, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x022c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0234, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0210, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x021c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0214, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x023c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0204, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0220, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0208, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0424, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0400, .reg_data = 0x8d, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0438, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x042c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0434, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0410, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x041c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0414, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x043c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0404, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0420, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0408, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0624, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0600, .reg_data = 0x8d, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0638, .reg_data = 0xfe, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x062c, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0634, .reg_data = 0x0f, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0610, .reg_data = 0x52, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x061c, .reg_data = 0x0a, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0614, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x063c, .reg_data = 0xb8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0604, .reg_data = 0x0c, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0620, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0608, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x005c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0060, .reg_data = 0xfd, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0064, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x025c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0260, .reg_data = 0xfd, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0264, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x045c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0460, .reg_data = 0xfd, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0464, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x065c, .reg_data = 0x00, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0660, .reg_data = 0xfd, .param_type = CSIPHY_SKEW_CAL},
+	{.reg_addr = 0x0664, .reg_data = 0x7f, .param_type = CSIPHY_SKEW_CAL},
+};
+
+static const char * const sa8775p_clks[] = {
+	"core",
+	"timer",
+	"csiphy_rx",
+};
+
+static const char * const sa8775p_supplies[] = {
+	"vdda-phy",
+	"vdda-pll",
+};
+
+static const struct mipi_csi2_genpd sa8775p_genpds[] = {
+	{ .name = "top", .scaled = false },
+};
+
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sa8775p = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_sa8775p,
+		.lane_array_size = ARRAY_SIZE(lane_regs_sa8775p),
+		.common_regs_offset = 0x800,
+	},
+	.supply_names = (const char **)sa8775p_supplies,
+	.num_supplies = ARRAY_SIZE(sa8775p_supplies),
+	.clk_names = (const char **)sa8775p_clks,
+	.num_clk = ARRAY_SIZE(sa8775p_clks),
+	.timer_clk_name = "timer",
+	.opp_clk_name = "core",
+	.genpds = sa8775p_genpds,
+	.num_genpds = ARRAY_SIZE(sa8775p_genpds),
+};
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index 00285be9dd64..821c6a0a916c 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -402,7 +402,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 		if (!csi2phy->clks[i].id)
 			return dev_err_probe(dev, -EINVAL, "Missing clock-names\n");
 
-		if (!strcmp(csi2phy->clks[i].id, "timer")) {
+		if (!strcmp(csi2phy->clks[i].id, csi2phy->soc_cfg->timer_clk_name)) {
 			csi2phy->timer_clk = csi2phy->clks[i].clk;
 			break;
 		}
@@ -410,7 +410,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 	if (!csi2phy->timer_clk)
 		return dev_err_probe(dev, -ENODEV, "no timer clock\n");
 
-	ret = devm_pm_opp_set_clkname(dev, "core");
+	ret = devm_pm_opp_set_clkname(dev, csi2phy->soc_cfg->opp_clk_name);
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to set opp clkname\n");
 
@@ -453,6 +453,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
+	{ .compatible	= "qcom,sa8775p-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007370..5578741c0930 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -68,6 +68,9 @@ struct mipi_csi2phy_soc_cfg {
 	const char ** const clk_names;
 	const unsigned int num_clk;
 
+	const char * const timer_clk_name;
+	const char * const opp_clk_name;
+
 	const struct mipi_csi2_genpd *genpds;
 	const unsigned int num_genpds;
 };
@@ -93,5 +96,6 @@ struct mipi_csi2phy_device {
 };
 
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sa8775p;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

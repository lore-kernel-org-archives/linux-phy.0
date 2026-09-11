Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FEFAC88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cz5i9Kmw2PNGDcxuezSx2D/2zkYsenKiVu21NzTNhA=; b=L1hEbm5Axs1a1z
	p22H0JefFT+KDQeX1/3ZpSQFE4/RALlwT45UM5oXqj4B9XXYpLcnFaUdty9SUD5f0M+J+jWEg12ki
	5QuggXS45EZ7I0JpPYIeLFhT8r1PxkfQFfFlj5ImG4ty8/TvGy8SVR3VCpFO89+ggCvB2aq7SRuDr
	oTAjnz5Yp2ZAPtxNLzI/yuz/tVodI0rG4JcmH5opkua/40qflYw4q6u+t6VbGS7z7dKceVSfSnEGr
	GiZv6QuPK0Qqrw+9UeV3wNtbrgdW2LuYbdxRuEFcWz/cmBbdgfIJQRkf0rMNIZ9onDsnoc9i1RWNN
	zhC9QpxwvKMcSHaMjqLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Ks-0000000H5FC-1N8e;
	Fri, 11 Sep 2026 15:38:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Kp-0000000H5EM-15G1
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:38:40 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmPvj3780889
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	544PPlpv8KTF7vSUH6ehJCfjvM1awtYfBnmsoYrqWyk=; b=ER3OAoWvCqmWe/jI
	ll7qWh1j5p9MBlGXaA7WV0SnB0UqQuwH5qBW6c2AGtqtFNlYIY1J+UjZkYdwAOsa
	sLRZH4yJlKex24p2krfY/R5EPz+YRvrn7yE6imTSrnwIEPgd4Nl+QQjsoRW9gR9C
	v2S+j1JwV8ekBrmuHKoqbBg4zkIpx4QeLkYMU3+Tpb0Ho5dppJxjXpAi73DpgCiX
	hWrvW8X8OBMel/6py9lMCf3EjgCwxoVL47b3mgbzHg41jE6qGT1hZqoObFV2wSpv
	s5exf56Q9/fHHSX3l/qDuZxY7EHWyWAU74yeRbq2+E2TSKB85F7DJRr8hGSNoM5t
	Jt4+Gw==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmcgfj7tj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:38 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-466d41a1d9aso1034143fac.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141117; x=1789745917; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=544PPlpv8KTF7vSUH6ehJCfjvM1awtYfBnmsoYrqWyk=;
        b=G/OTWIZEFHgZQqJO4zOOoxlbLOzsBw22T7yMjsv1a043gYQU+V0kqRHQD02IWUOnfw
         BAWmeq0/KUk0ktRE4vvHTAHeEr0pNqMFObyLf9825EQrgSs4Pdretvn90R8tqZRjYVk/
         M2l2I9Z/2B1bXK/KqoHW4cgU/XwGcoi8YCx9kKx94+zLxh8Sn+I3Ifc5RJQN7sFFBrmi
         wPEHrjGgwusTuT1Yqn4fKr0ab6Uxqw4VN6f7ZVOkGxUTu3NIFRZ/a3x9AlQYCmnRABx/
         lmIDoqp2MBQXgbxmxs/fqlzvf3etiwVNMKMPG7nm3ax+o47ih6n773Ol8c8HUL/X97Ix
         qovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141117; x=1789745917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=544PPlpv8KTF7vSUH6ehJCfjvM1awtYfBnmsoYrqWyk=;
        b=fVHvXIsZLqslJwv/7612JJ8lNVh66Z9eOIS1kWvDrL0NOEgJ99/+6kcmpTBM+F/Jyk
         7p9Zpw/Q1e1sDzvlHC4+scosD/xClvQRMdmCAlMGpP3Cqu8DNWTzSn946PYVrt37G095
         DFi0rw7EmirYSbnyS9ODebhcQatmob8IP71HvLuHzHBwpd4ZRRpC9i8lxGJWpcoQDXIV
         NE2pBBjVrm+dYQRkAVJbps7YM/Djm6/FBUSVuTEo37XqgAn4qOFa7GFZh/bTWy+goEtT
         7wDcBiX6rErpQ0Wrm4CIl5hMR4rc4PrAH90ybH8Kl91hJAC+jOWUar37NI9wHRbWY1UP
         ZiUg==
X-Forwarded-Encrypted: i=1; AKwUvByKsb6s5QoE7ENBGrNmAF6XhnVHS0LXPjmhYKaKnJNChu3uTix5AyxJZjVwNRdGy+LqkWzdQEmZJh0=@lists.infradead.org
X-Gm-Message-State: AFuF++nKOgGQ9rJjivQZU79sRIzXgMSbUZO5qKl1KpLCmIp2rlC/kkGi
	iWMzfVrAQLzhfZ2eJJWbo26g2brcCaRAbrwTWwtgpKn8BLTZbXHffZXt1ZVV22jdj+eyyj6Y1yB
	f+NJ/vQdpq6qd2eRByc8ijg0Tr98R8JONIx1y58Duoz4XUlWnami/X2SCf+Ue/Mk8rrAs
X-Gm-Gg: AYBFou0SS9VLjGyVwuzK7VGKF4/o4l6E/XRb9qPIIfIsnW9SkUalQ3BQk8C11PgxIgC
	6AqN7RPrI7hcJM9z5jNYasrdgshlJPDlphl3GQV8sHL7+HWUJvpljAK5uAAuTFIzuympSrmkkDb
	52HPeLlzPVHYFJXygjEO9wbhN+e45CRloL8bfVQP03HAk9XahVAPsU4SpxQd1MbE2NdfwnOosEd
	7nyaOp8vhyoRQwqPYL9uutEeDh/HtTHvtq1wBHp9ePMD/UrPXuS09AXr7xlcK0n9LQG3LFej/X0
	xeAI9wzH5S/SEdhbSAkDS7xKgEUYPuStL92DQmJTQw2mGWLf6H7jg2TdBi7/CXOj+BxKmBALj3M
	r1cpWDIjH/GEx9L7xVAexu3D43tw=
X-Received: by 2002:a05:6870:252:b0:467:c40d:8920 with SMTP id 586e51a60fabf-47de9ea8d18mr5880843fac.11.1789141117475;
        Fri, 11 Sep 2026 08:38:37 -0700 (PDT)
X-Received: by 2002:a05:6870:252:b0:467:c40d:8920 with SMTP id 586e51a60fabf-47de9ea8d18mr5880783fac.11.1789141117021;
        Fri, 11 Sep 2026 08:38:37 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:38:36 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:41 +0530
Subject: [PATCH 10/17] phy: qcom: edp: Add Nord voltage-swing and
 pre-emphasis tables
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-10-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=3594;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=KK+JtcaGKxOZhpeU9EbHQrvKXGn1efmjoLj5Q2mLrks=;
 b=P63+IEbelT6qmuz4lPHsT5NeSKlrlz+E6ME+S4QOOsIk+8rALitGMqXYUzsBNWiRFI9pnFPlA
 XvcQzcbL3gfApUhx1lOoTtZlimO5WZzNi145uaaDbw4C1FDhN2O+9Yl
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX6tM7I6Jte0mw
 J4z51bQO6GpeVT0+FMN087cCKaN3tmGbOKRCGkQwIN5lxXiqk28EH4z563A+YVO/Ftpp5u6ctSh
 33ZxMiyyJ19In4kiwbr19U2naFrQSzBi/WgiG30Zli6TDuBK7hgJFdNKV0+NcGt/VLKliBvm6VX
 +JAGTLdkHSPYX2Ai/tNJT+y1fR9QShklhtl1qmBVINUzqbO/RDv7ZVD52mNmqW+UbEc36f37Kfu
 RKDvyODKm8tv9gsUnuZ7OgEOeX0+18D3nHCa4HNF+jiPpxRJW9+g/LAWNmQ+FrDBDXiGKTTLD4t
 msCOtGcrmG06wXcQNhIoPupbHfa3OVK+L9Cqel2jzbsc6CkY5C/XyzZh/Q8hQAj9rWP4tXwoNW1
 uTpVnu0wILPDjoGYY05RlIXWikeGrcxIUalGzTpwXApAxJO+ai4BPZvupHRs84ckuRJG7aZKlZc
 ecn29U23JTV7FssXTQg==
X-Proofpoint-GUID: PftFBXWX3lYayU1kTb2M3nFBJGMxcavY
X-Proofpoint-ORIG-GUID: PftFBXWX3lYayU1kTb2M3nFBJGMxcavY
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX/ywUF3KE8e6t
 MFO84y41gg4vCGvX7yjqYawfhwNbuI9YPwrtzc3ovZ+mvyKqxMgqsgDZ5ElnEc/8COguDDrneNq
 pVW7xie3q9e265+XofQlHaG2NFY6r4U=
X-Authority-Analysis: v=2.4 cv=ULtIjyfy c=1 sm=1 tr=0 ts=6aa4207e cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=1VMeiWxxgHqCBInRz6gA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083839_427655_F943F880 
X-CRM114-Status: GOOD (  12.89  )
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

Nord requires different TX voltage-swing and pre-emphasis levels for
both eDP and DP modes.  Add four pairs of 4x4 tables covering RBR/HBR
and HBR2/HBR3 for each mode, sourced from HPG Tables 2-2, 2-4, 2-6-a
and 2-6-b, and wrap them in qcom_edp_swing_pre_emph_cfg descriptors.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 85 +++++++++++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index ee0d7f1a90fe..64878398f43c 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1527,6 +1527,91 @@ static const u8 edp_phy_vco_div_cfg_nord[4] = {
 };
 
 
+/*
+ * nord eDP swing/pre-emphasis tables (eDP mode, low HBR: RBR/HBR).
+ * From HPG Table 2-2: LDO ON 550mV (0x51).
+ * Rates: 1.62/2.16/2.43/2.7 Gbps
+ */
+static const u8 nord_edp_swing_hbr_rbr[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x0d, 0x16, 0x1e, 0xff },
+	{ 0x11, 0x1b, 0xff, 0xff },
+	{ 0x16, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_edp_pre_emp_hbr_rbr[4][4] = {
+	{ 0x05, 0x11, 0x17, 0x1d },
+	{ 0x05, 0x11, 0x18, 0xff },
+	{ 0x06, 0x11, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff },
+};
+
+/*
+ * nord eDP swing/pre-emphasis tables (eDP mode, high HBR: HBR2/HBR3).
+ * From HPG Table 2-4: LDO ON 660mV (0x91).
+ * Rates: 3.24/4.32/5.4/5.94/8.1 Gbps
+ */
+static const u8 nord_edp_swing_hbr2_hbr3[4][4] = {
+	{ 0x0b, 0x11, 0x17, 0x1c },
+	{ 0x10, 0x19, 0x1f, 0xff },
+	{ 0x19, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_edp_pre_emp_hbr2_hbr3[4][4] = {
+	{ 0x0c, 0x15, 0x19, 0x1e },
+	{ 0x0b, 0x15, 0x19, 0xff },
+	{ 0x0e, 0x14, 0xff, 0xff },
+	{ 0x0d, 0xff, 0xff, 0xff },
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg nord_edp_swing_pre_emph_cfg = {
+	.swing_hbr_rbr		= &nord_edp_swing_hbr_rbr,
+	.swing_hbr3_hbr2	= &nord_edp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr	= &nord_edp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2	= &nord_edp_pre_emp_hbr2_hbr3,
+};
+
+/*
+ * nord DP swing/pre-emphasis tables (DP mode, COMBO_PHYS TypeC).
+ * From HPG Table 2-6-a (HBR3/HBR2) and Table 2-6-b (HBR/RBR).
+ */
+static const u8 nord_dp_swing_hbr2_hbr3[4][4] = {
+	{ 0x02, 0x12, 0x16, 0x1a },
+	{ 0x09, 0x19, 0x1f, 0xff },
+	{ 0x10, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_dp_pre_emp_hbr2_hbr3[4][4] = {
+	{ 0x00, 0x0c, 0x15, 0x1b },
+	{ 0x02, 0x0e, 0x16, 0xff },
+	{ 0x02, 0x11, 0xff, 0xff },
+	{ 0x04, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_dp_swing_hbr_rbr[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x16, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff },
+};
+
+static const u8 nord_dp_pre_emp_hbr_rbr[4][4] = {
+	{ 0x00, 0x0e, 0x15, 0x1a },
+	{ 0x00, 0x0e, 0x15, 0xff },
+	{ 0x00, 0x0e, 0xff, 0xff },
+	{ 0x02, 0xff, 0xff, 0xff },
+};
+
+static const struct qcom_edp_swing_pre_emph_cfg nord_dp_swing_pre_emph_cfg = {
+	.swing_hbr_rbr		= &nord_dp_swing_hbr_rbr,
+	.swing_hbr3_hbr2	= &nord_dp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr	= &nord_dp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2	= &nord_dp_pre_emp_hbr2_hbr3,
+};
+
+
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88734CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/jcALB5QmY2NQdZNocNXofjlvmvjcEbJSUuNonImIA=; b=zAkK1gFRaJ7SR1
	gkSWxF7Fydya+RzAuAcP7HiK2Espa1Nh6T9h64zd0osn5BbXOrKYV0hqG1Kloazxb6E5cquLlFAR0
	3Y3np1Ohjn+jCqRnTwCI9hHBo9PgruPWfncPvmnk1gMJYC3ZHl31mtzpwYJAfqyUdfTciNXjk/5IW
	WZIqbuspROZVCij95jvLQClCReIL43j5kuaJL70pzWOO6PtxwTqaVDrW7H7x0N3CrP/975AtNuZVX
	Mxr/hYPpjPaxQhk92YqCYDe1sEMIDxfyqfR4/whMIkhbplO8liTZ4pUzVtMnKNSaNHo1LkMEVptio
	zDVBW4hbPq9n+xA+PFXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAY-0000000Aaob-10hR;
	Mon, 12 Oct 2026 13:34:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAV-0000000Aanw-2dph
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:34:20 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0Wdv2252777
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:34:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1ZO9HNLLNqcZbFHntk3RATNGGcfmE74k0W1y+uxwR6k=; b=CpOuWOIZk9ag2DlI
	cALe4RDuNCgZqete2ha44vZAThVKLX4mveYdEk9vKfmSsVeoxt1N1WgaZf4xPCer
	xpzexobcirKwxYCEFUI6HDs9ym9oXuKMST26S3QG4KhEDJwccHcxk/UB3SC5j9SK
	AGaZmSHCak83GnNcP4Xxx5Mc9xqkYF897lCTagUU1/2GNl9URFqW6/s8wpnVJ63h
	w6ZMYIwtKeCGNH/siQ9t4o6jKggYtuvOrBQGWrWvzo/pr4vd8ndoq4vJrEhDHDAe
	CjZW0Ifu8OMLLdudkT/Ls08+mPKSEYi+cuneZL18jY8qyq42uc9OKHwgnSZX7sOc
	EZ/dAg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8j7136x3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:34:18 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-33713e5e6daso3169563eec.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812057; x=1792416857; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1ZO9HNLLNqcZbFHntk3RATNGGcfmE74k0W1y+uxwR6k=;
        b=TtpexLwCPkQQPa+kbUB4EzvurfyHriz9Leu5AbqsLFbp4/u0Z/XuSeyNzoLWAlg+p2
         MPku+uO99hWX4blraPzqqrYsQEoXClqfK9XK8ND8FJfmFTIsxHkXxJt16hYVU6VpJMP/
         CGHWXd97arWhzsowCq7VgWLk9vnw0+18Y8Ggps42HZqqXMhUsQvRBV88Sv/enIfR7HXh
         UEVQxUNfYvmsiyIPFJuXLBGe2aFvnAxtHzVoUiT/TuhYaJG2i1mJdZAKHcfqAiuD0KgI
         +X+ebxPB2FErdEPPvKYUWoxDl9s0MmPcEc3aPqZKYYXM5nG9SQZhp7oV0LaPPkIK2e91
         5Nug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812057; x=1792416857;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1ZO9HNLLNqcZbFHntk3RATNGGcfmE74k0W1y+uxwR6k=;
        b=ZpSC72Y4tmGZ/CrDblAv11ULyEiePQUd/BlQzLBxmguzg9rWOR47owgVupPhNG/Ax+
         gNiJ9g5oT3cqsNpQb2QY3gE298BgsctmTz105m3djK1t7kW/iJTXVpezmOaOrMAkEWaF
         YoEvN08XN8iP/8lv1dEBIMcuN/aYH0FfHZV9CvTBrEg44Ka3XuAVhx7y1/G0XI6uG0P0
         RfVyO0i93URNPBi+Up4IMycyH2O34aj6BKe9wYHcaEo0M56FBigh3DlQYFbYg8S++M/2
         XFcmob7XXTbsGx1NZG5ui+FKY2LorANcP7Kx2OqBGnb6A02uJORunvZlyYRau3duZE77
         OD/w==
X-Forwarded-Encrypted: i=1; AKwUvBw54fS3/l6pjEOhF5+EhJ/1P/CCIrogsnX6R/T0CJetFOinb3EL90MOpk4Whj+akrZ+i+Q0RppwYW4=@lists.infradead.org
X-Gm-Message-State: AFq9FYJXyW06woybrHgFU/9/ri8v6x0Vgk2/0VrJ6kMRRKXazPyzyMXy
	z6V66NQToJDkmAbRJnmn0TMqECiwZQ3UA2sq3lYX8dIDTo32D+yS0sYJuqcSRwBqzh6lxajsufT
	TcqxfxqFCQQBSR7ff0xhS/Mx+Jgd1hUj0iY/n78dbmg+ykbhXNmV2t3AGXoAWlcgAyZBr
X-Gm-Gg: AYBFou3gJkHWWKSUQMxCiCw8QHr7seJkZo+XPtwUtJ23MCWKLkzHT5N+6PR2YigFbsY
	vpZJoKEekZbIGQWePHt5XeefpWd67MejwJnEDFZ7pkoCvdp994DIr+tiDue1ALuRmDb3wXIqXfS
	7Yln8KTrZZiBi6c3nZHV4u9dUfOIP2VtDX24Ga+LdNoPoj8i9+IjQ2/KiG8UTSe8EAUXmrm/f8E
	j8XaiUCX2ss0wkl+zkpTPIoAcLDfhxeynji+0DXBuWu5d6ixcDWqyjvxrgq+VNPEaGG6D+ukQiX
	bGepxbDhjJxesSHK01wXKy5Ugg1bFzhlVhDnFXalY7ASMhYqavCjvLHiGdojf8J4FnjK5mzsshR
	ha55VLgUFMMAV0smtHviQro/ZXN0=
X-Received: by 2002:a05:7301:f24:b0:351:595:750b with SMTP id 5a478bee46e88-3537e2964f7mr14905690eec.36.1791812056965;
        Mon, 12 Oct 2026 06:34:16 -0700 (PDT)
X-Received: by 2002:a05:7301:f24:b0:351:595:750b with SMTP id 5a478bee46e88-3537e2964f7mr14905657eec.36.1791812056418;
        Mon, 12 Oct 2026 06:34:16 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:34:15 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:21 +0530
Subject: [PATCH v2 11/13] phy: qcom: edp: Add Nord PLL configuration
 callback
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-11-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=4783;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=a5XRl2SA0hyveR2kRhO0hXsLMrPVZAn2FeKG/SbK1s0=;
 b=MRmRCsYT29d/XMuAeE3OCY6Sz58JMZtl8zQgVvmaVSzML6Ox8JKoC/1kMoc5vsqlDzaQVZPML
 6JtvlNFTVpQDqrYRinG9QIqunEFz0eXzpAhz63XhsYsU5gi2wyPR8md
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX1Pa4CauMM43Z
 MqENqzzKUh0KAjQAdRcgNmYCGzYeJaonqxx6V3vOvwZYIBZtQJwWEDcfmxwBvvk976f6U2uVtff
 9JuK8IWMKvKPUYZstdKB8kkuO5TfH3w=
X-Proofpoint-GUID: UCWin2iHK5KjdpBwGDE9YA4FhRrS9gWb
X-Proofpoint-ORIG-GUID: UCWin2iHK5KjdpBwGDE9YA4FhRrS9gWb
X-Authority-Analysis: v=2.4 cv=ePGGH3p1 c=1 sm=1 tr=0 ts=6acce1da cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=PRaozp5Bz6Goyj2T3wIA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX6pPjHWNuIY1v
 29m/tcI+SzpF7sONXOgWtGPdJTX64UZFGeC7sgHm6dT60jr5A4LiyCq1kh4I8ceFVKTrj9pnYX1
 DpWEk/Fto98S2r9c6+UbDMzq8Z6cwQN2mIXpXVgQyk+wXgH+STQtVYXncT3ziFqkyINoZYn+5Tr
 qWRtONyfCTeJbLY97c2PEjppFfATore7Zml34h0Z37bVZ4TbQHUBQ1lvM9+6vT3S9RQTvC0mGVc
 BJrSZv6Qz3wI3h0GD5K/Lhm7/5QT8vXlI/EDCqFj+0YeH27Vcv/bYzEfHBmN15rAtGo9A8iFdtu
 WsSoQ8+yfP5fWqgiCTUd3GeceQj2SVifpMXmKchzlZNjoAXIEhkG7SPjPGer/LPBna2yjlPsNTL
 EkekN6ylLEV0y+9OFol+xELANeY509JABl+xwti2hPv40NQ1yeZz4aAr5MaMbD4UUf8tyUWAoeo
 A7HwyBM/kYqVRcWr81Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063419_814505_7CF48579 
X-CRM114-Status: GOOD (  12.88  )
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

Nord uses a 38.4 MHz CXO reference with a different QSERDES v8 COM
register layout and PLL coefficients.  Add
qcom_edp_com_configure_pll_nord() which programs all QSERDES COM PLL
registers with link-rate-dependent values for RBR, HBR, HBR2 and
HBR3, per HPG Table 2-1-d.

Assisted-by: LLM
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 103 ++++++++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 66c31684c48e..3e857d105668 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1638,6 +1638,109 @@ static int qcom_edp_com_configure_ssc_nord(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_com_configure_pll_nord(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 div_frac_start2_mode0;
+	u32 div_frac_start3_mode0;
+	u32 dec_start_mode0;
+	u32 lock_cmp1_mode0;
+	u32 lock_cmp2_mode0;
+	u32 lock_cmp_en;
+	u32 hsclk_sel;
+	u32 code1_mode0;
+	u32 code2_mode0;
+	u32 core_clk_div_mode0 = 0x14;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		hsclk_sel = 0x0c;
+		dec_start_mode0 = 0x54;
+		div_frac_start2_mode0 = 0x00;
+		div_frac_start3_mode0 = 0x06;
+		lock_cmp1_mode0 = 0x37;
+		lock_cmp2_mode0 = 0x04;
+		lock_cmp_en = 0x04;
+		code1_mode0 = 0x8d;
+		code2_mode0 = 0x27;
+		break;
+
+	case 2700:
+		hsclk_sel = 0x04;
+		dec_start_mode0 = 0x46;
+		div_frac_start2_mode0 = 0x00;
+		div_frac_start3_mode0 = 0x05;
+		lock_cmp1_mode0 = 0x07;
+		lock_cmp2_mode0 = 0x07;
+		lock_cmp_en = 0x08;
+		code1_mode0 = 0xf6;
+		code2_mode0 = 0x20;
+		break;
+
+	case 5400:
+		hsclk_sel = 0x01;
+		dec_start_mode0 = 0x46;
+		div_frac_start2_mode0 = 0x00;
+		div_frac_start3_mode0 = 0x05;
+		lock_cmp1_mode0 = 0x0f;
+		lock_cmp2_mode0 = 0x0e;
+		lock_cmp_en = 0x08;
+		code1_mode0 = 0xf6;
+		code2_mode0 = 0x20;
+		break;
+
+	case 8100:
+		hsclk_sel = 0x03;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x17;
+		lock_cmp2_mode0 = 0x15;
+		lock_cmp_en = 0x08;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		core_clk_div_mode0 = 0x0a;
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL_NORD);
+	writel(0x0b, edp->pll + DP_QSERDES_V8_COM_SYSCLK_EN_SEL);
+	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SYS_CLK_CTRL);
+	writel(0x0c, edp->pll + DP_QSERDES_V8_COM_CLK_ENABLE1);
+	writel(0x06, edp->pll + DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE);
+	writel(0x30, edp->pll + DP_QSERDES_V8_COM_CLK_SELECT);
+	writel(hsclk_sel, edp->pll + DP_QSERDES_V8_COM_HSCLK_SEL_1);
+	writel(0x07, edp->pll + DP_QSERDES_V8_COM_PLL_IVCO);
+	writel(lock_cmp_en, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP_EN);
+	writel(0x36, edp->pll + DP_QSERDES_V8_COM_PLL_CCTRL_MODE0);
+	writel(0x16, edp->pll + DP_QSERDES_V8_COM_PLL_RCTRL_MODE0);
+	writel(0x06, edp->pll + DP_QSERDES_V8_COM_CP_CTRL_MODE0);
+	writel(dec_start_mode0, edp->pll + DP_QSERDES_V8_COM_DEC_START_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
+	writel(div_frac_start2_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
+	writel(div_frac_start3_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
+	writel(0x12, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
+	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
+	writel(lock_cmp1_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP1_MODE0);
+	writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
+	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
+	writel(core_clk_div_mode0, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
+	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+	writel(0x0f, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
+	writel(0xa0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE1_MODE0);
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE2_MODE0);
+	writel(code1_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
+	writel(code2_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
+
+	return 0;
+}
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

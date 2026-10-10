Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 184EECA9EBE
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43f61KNHnllsbjhxfzjhUVmJWTwk7ByfN8Q7/it8IX8=; b=pB4jS4qfHV1isO
	zvap7bPsvZi0KHR0zFUJn1Xef+xTusq3dcb5qrtuDoDSD5/E3rqTA9PBVvr1GRGd4ny72S0dwb89b
	lADqsY+pq7VFiY4/IV2ipQ/IgNgYlCeAV/sTImI4sYLA90+SNIYRXy1Y9ZH9W56ROmxCEz/Ft7a6o
	wZkphu0QOgFfX/fow/lVYtUXZih5bA3nvF9uvkU4GP9C+wBN3iRb0KO3r2UmJBGRmI+51IXCLEM8f
	9TX3dq+NZF6b0YRCbkOa0hdpbPQlGIYj9TZZ12YVEVR/KkE9Ku/erBYWqTMv46qS31uqfPK4ixbfd
	oMpyKF/yeNCMiw8p1dBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVp-00000008F6L-1JJn;
	Sat, 10 Oct 2026 16:01:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVn-00000008F4d-0Nvj
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:01:28 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69AFPUM0957682
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=; b=eW2WKOA31ShPJ4f0
	/jEXeAjHajDOxy/nOuSfsf+7bW7zL5NyHTybai9T5Pt+YpxDR43QY/hFYk8hW74h
	MDrJ5o/Tbl0zzVXio3En0MrBh/K7QiV66vKEoxJhOsaJy77Af9ddggCAQg3zD6gp
	YEYL0za+foE8+ePw0qwkGX5qYnv3XFtoSEiez7o5vsXhP8Qo2rcZtcmoAL2QCjaH
	JPdfiNG7QECud6eZMLSPyxLhbCU7OWu3zME75aQ4dxpj6W4m+VsfJybrMHSb/UR/
	7CdB+b+rx/e/2ObmsCwudOQAcAc+D7fXlEpPCez9VQLQ1F9VkT0yfiORNY8qPUrb
	aKHnaw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7deuhb3k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:24 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-34ef0362d95so1801890eec.1
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 09:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791648084; x=1792252884; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=;
        b=V66z9hZAxc01zB8xq1CunHfdqy4Tlb+iHXhWszCbpA5KTrlrXolbn4zkH0gtQEgv3u
         7CjaPmkbWLQnVnVV6JrcCmQxAWiAUrXTP/e5EH4tVrnTJqkJxdagNTujrQFUWzauHI5D
         gsv6Hpm5A1REq9HtWPMm8uqbjHCimtzmkYOD1T0BWOzCuXL66BOD3YmWuMdFwPZXrstK
         wtZiX9ZsSLrCJoyjrS7Mq7WYYkD3EHbASs/oRp9GaQJTuE3ZKnzLMcLb9n+psV4FgCXo
         Tg98nHe8aHzhs4wGC/NdIE2ZnZ9juWoiqK3Uh4WrJn0daQuZtyYLyV6MXq/q8xYBwX9l
         NftA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791648084; x=1792252884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=;
        b=NK3uS29AYtSvx/fQGWqlgoTdmxSbEu5AAJ+9pkJHWs5mQb6sZQrqA0Sp1ftzS0l1Kl
         xtb5sYvJrvRcfVlAY0LiyfegMmuUJPUTvaadW3w/MQsJZeMxsm6W7ds/uMegVKvcV/tN
         A+d6EA/tF12BwulE7MQQvBTu6IQIvldg3HqnObSh5pOmWQ48M3ze+CloWntcwW+nkr3s
         ReQJaQXLKl4tExEwBQa5qrRTYsLl+izWb+8P1UdGuCtDs8I3bxlEnenQHXQm9jhub1bC
         u/chWr9+C0xUZSq3kW7U+Qrlpsow7zJ3RLHWf4DPysKCBAEs2i9k6DJLjL72QxggU7mW
         g9zw==
X-Gm-Message-State: AFq9FYLuptsAUsyHhlfTpee/OzvV4oLgCG/LtykLHO0cH8TTYEgCq6Qs
	2ksAIEMWKXWqBfgUI4Mnowc7iB9+Ohlm8ZGnVoxqIvNVRfnPOt1wDaEXHje2GWfYhpaaqdWQL3p
	b3f2bAokHp4iw6Otrn+jp6w8POfgR3qkh7fk5YpufCBU5x/pcFeUInsiqoJd+IUGWD14xfh7Y+L
	WB+oE=
X-Gm-Gg: AYBFou203ntmN1X6asxSlcOlS6tP+7tjNrVDnWJM/hYoiS984sRnzN6cw9Gx9JnU7TV
	g2PjAFdsG59dD/0HnytfLd1dtpk42i0/DFvicZxsnmeKXLVOZAYuadiBUE5RqDOiAAIIEOwMf54
	SrrpbxekB4c2bWv6EDhDCIkMtZtMh70iDmSGBr4GXteHCiQv/t+oLHBO0kFzzwPs6WcjcsbGvwO
	AFn6VsIztnyrylz7stNd73tjCwVdYQfhXi3/j1RXXvTL/jimPqo9QV6JP06y082+4HNg83QTb6z
	o6KIaiFPbh3Wnq403TNYD5npEbmY2SZtKYaWqnvQOHHEm1ygFgxm4EOMc1t/qveo5H8b8SZT66A
	W7jFXk36Xae308E+QGLxhP6riAT+4UWui8Ig+aeYDHaeQqrm5Gpr1R/NdqVvuYxivla2ciBua9n
	x9O6IaArJ0YQ==
X-Received: by 2002:a05:701b:4512:20b0:14a:d8fe:33b3 with SMTP id a92af1059eb24-16a62bcc0a7mr6077986c88.40.1791648083412;
        Sat, 10 Oct 2026 09:01:23 -0700 (PDT)
X-Received: by 2002:a05:701b:4512:20b0:14a:d8fe:33b3 with SMTP id a92af1059eb24-16a62bcc0a7mr6077906c88.40.1791648082484;
        Sat, 10 Oct 2026 09:01:22 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a31f6be0sm30786022c88.13.2026.10.10.09.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 09:01:22 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 09:01:07 -0700
Subject: [PATCH v20 02/13] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
MIME-Version: 1.0
Message-Id: <20261010-kaanapali-camss-v20-2-63e98ce9ac0c@oss.qualcomm.com>
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
In-Reply-To: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
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
X-Proofpoint-GUID: pG4lCYAQB_PPD1rzTHUdjG4aZ7RxGwR7
X-Authority-Analysis: v=2.4 cv=Aud7T+9P c=1 sm=1 tr=0 ts=6aca6154 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX7vjEbMKeN6pi
 /rGliKAZEgSbgcVOTVpyFH6FPfyJ8IW5MvU9cqxDj9j2G3v/yZ2MdLNBHdEjYYV2Omv5OiQwS3N
 jidEp86KXwL79+6uEtlxGFafVJGoZw4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX70mSNmWeF2+3
 SkZL48Vp6Y7iqbDhnUuGCkkOsOLqNi4xCNpSNXSnDmuC55RXZy8B13H6l/4QvvKz1wDbK2lZXRA
 yuZT0wLzwaRtvhrWRSlnc1EKgo5DU+kf3/ZCOLUdtWVJj+aSkLoSnZFXxduzTz6CDWrC5Hhv0IR
 TB11Uvtr6Px6uLVQEhbYl78UzHeGt0mvtql+T04ThwyAlOdDZSaa6LyA0YQxuobVQ0zLM8WXgtb
 o5oIUhT7fM43nQCnfikc9hyU9m6bgzZbFHh5jKa0BlkAa4sw2sQztZg2I7qAgdLzp0TSLJa2/y2
 0cQKpTDVxPZEzJSDL2TjwD3rvhmdKZOEPzBx5IqicgPH4nGlRttVgatOIKscapYuhErtSEOtpmc
 hzghdOLzVwG423VD9zQIm5CqUfNQzGFz2BsoA5EuHoms9bSKA736JkZEa5DvI9/OWcjYm02mndI
 jVpM9ZmmI+FdIZBUpKw==
X-Proofpoint-ORIG-GUID: pG4lCYAQB_PPD1rzTHUdjG4aZ7RxGwR7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-10_03,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610100063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_090127_260409_A5F733E1 
X-CRM114-Status: GOOD (  14.90  )
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

The CSI2 PHY common status registers are not at a fixed offset from the
common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
v2.4.0 parts differ.

Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
no-functional-change preparation for describing other SoC offsets.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 +++++++++++-----
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b..8cd331cfb4b3 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -19,7 +19,8 @@
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL10_IRQ_CLEAR_CMD	BIT(0)
-#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, common_status_offset, n) \
+	((offset) + (common_status_offset) + 0x4 * (n))
 
 #define CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(n)		((0x200 * (n)) + 0x24)
 
@@ -176,19 +177,23 @@ static void phy_qcom_mipi_csi2_hw_version_read(struct mipi_csi2phy_device *csi2p
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 12));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 12));
 	csi2phy->hw_version = tmp;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 13));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 13));
 	csi2phy->hw_version |= (tmp << 8) & 0xFF00;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 14));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 14));
 	csi2phy->hw_version |= (tmp << 16) & 0xFF0000;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 15));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 15));
 	csi2phy->hw_version |= (tmp << 24) & 0xFF000000;
 
 	dev_dbg_once(csi2phy->dev, "CSIPHY 3PH HW Version = 0x%08x\n", csi2phy->hw_version);
@@ -375,6 +380,7 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 		.init_seq = lane_regs_x1e80100,
 		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
 		.common_regs_offset = 0x1000,
+		.common_status_offset = 0xb0,
 	},
 	.supply_names = (const char **)x1e_supplies,
 	.num_supplies = ARRAY_SIZE(x1e_supplies),
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007370..d6366f809e51 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -51,6 +51,7 @@ struct mipi_csi2phy_device_regs {
 	const struct mipi_csi2phy_lane_regs *init_seq;
 	const int lane_array_size;
 	const u32 common_regs_offset;
+	const u32 common_status_offset;
 };
 
 struct mipi_csi2_genpd {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01E760A2637
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RWdsVvn7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pJUbaKvP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ILXprkHA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rwUB4TAyuJAbMdSQZ9lq19M8SzXkSlHhnpex7cgbAt0=; b=RWdsVvn7AS8PX5NqGyjUS+ZCn7
	7HRydoczvscQM/HK5lDXBn/ES0XsMRSfdZDpWhYphq47qLOX7kWhw7xYJQH1KG7orbsI+N7ZGIk3k
	WLHi+VRyxEDWqVdGozjmZuiAM4J71Lf6Y6o98NB6gwVvA2MPSR2z/QQQRbaag8aMDIEJvXMfXEkJR
	ajSjv3yCO/u0Rrd9pvSos5VgAlQYxiobZAjdoXd3u3FedS5LFKIibCSBQpdvDMb0AqKIoZJHLaFXv
	YW65MeZyVsw8xkMHe+mjYJ62/I9Kyt8VTwdH6sQ7xezNVuP2dEwODEkySRSilt0B93EfPqSCyC4jG
	h5WCDM0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUg-0000000GCO9-1etB;
	Mon, 02 Nov 2026 10:42:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUd-0000000GCMK-2eIY
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:24 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29ALB34039632
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MID0gSdRFYEtOdMRf2Fnw6acFNQMV+62kE4jNStcaWI=; b=pJUbaKvPrrcSeGWp
	Fpdcp3GwLwIwJTuFEuG9cwnvINisD9IPIgcsII4SdQyGFX9xf6HahdObMi4g6XWu
	wcZ5OvC1vRXtFTk4RRwKgz0qz1Ycdgs1RpNX1/UQse7ItspMfZJwog593Wee7XZX
	xn6gICP5YSKNdURe/zwvfw1Jg47C9rR8bBJ2ap2E5ij9s+aAskQu3tJp7yEUKeGu
	ssg0XeQi6Kd7aMddybhXfM0lAq1PO2JMvg6C9W6AJZmu6N3qh52lqccPTQehqD1g
	9X2Xlz3nmcWG9ofUdq/unY5FE+Enb/Kb5WmbCyqAuTnQQERt81mgY4MLQHbKtOeb
	7X7k+g==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpph18qa9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:22 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-4b26d8d2498so3867385b6e.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616142; x=1794220942; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MID0gSdRFYEtOdMRf2Fnw6acFNQMV+62kE4jNStcaWI=;
        b=ILXprkHAfunR5t+EJdaEpVbBUApSWR1t+wVyvV3tcj/yXwWmoSVpLQA0Rai22WwBoH
         kFggtZKDIW3fcXcg5MLAqahKs5ijast6LTsYLDgWxUqq9NL9sgLWEgaDunmJx21kjFve
         pZOWyBKlDrccb96vyGXVctyiGumV4/db5S3GIZ5ghwRYT3wnK2zZpYwuqkZpdUso1WFG
         4EanZnZvFBWqCdf1s/KirZ2AsUksNF597wPMTOgev4zmRMKUJG9K7josuwnFJRIzxbW4
         6q4MhYp2NQo6jCqHXaOX4ILKgX1o79A1v+s3aX4A4HlekVy1icHXmZAoZ3EBKbG7ItNg
         5mUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616142; x=1794220942;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MID0gSdRFYEtOdMRf2Fnw6acFNQMV+62kE4jNStcaWI=;
        b=Tp8zkUSGJjFfqFSCXK1K1hS8zxpfnAUp0FaSA8+fscqFidf5wccxw4UBcS8PU47GyG
         qH2H+U/sFksQqv3y58LNp0RL7ru/Mb/7UdfKnz1kogGSQ+BAL+rJgzdrLWI2mEdqTJ09
         +ZiUFMda/STug/VAOhAicOGuQqGFIYJdrZDtOsIDA+tiwWDpUPcbPhvQZ5gT2gRG7xvE
         d6FyXpvUyUYfyFFu6uIrcHWSwTOAKpZs+98cf/Ml/WS6vgB43nPS6HzGN/g32Q7ml7QX
         lmFMfLZzEpCHy4pSDCZHZBkt3F0z53DPGixf7nq41+DFxx7803PNGxmyM5Z4e4+kzoUh
         OZdg==
X-Gm-Message-State: AFq9FYKobtgyQ5+GWicU8ZH+SQz0CeK1ATeJ+6IwIqqQxZwlsg870GpX
	8pgRUJdvieCgxpaoxP0Bclq5f4K3kyoUR9KPmnB7PwhS/jWVnqVibDyO3tnhfPU63LuDXKdV2Y5
	z9cUnyVBS13sjVMeVMl786Fow1ReUeS8UwNmR2tm1iLM+2x1QkFn9v/I1/LVYGajUDkFX
X-Gm-Gg: AYBFou1RR3ECSu06knRIoj13uMeNoQZpBCYqW4mffmqlufcCqUVmX+e4Ccig6H1PrlT
	s2VGhO/mWTKS5ozFPa6xmDxMSNaxVOud5a0BtGZ8DUgGGXaAqYpm8wBlLEoTIr5vgGl+J7CiHT2
	eW3MtEzEBAR8xuYCSCCKvx2AXqOQ9I4vYzxRe0FFCohuSiNobLAMjVyCQMvlu5FZt0ZthKnYTOu
	rCm6Tok8c9JYrVLypx5IdW5MXBnEH5i9iWyikBobq9tht8aLMimTTplZ7Km/9/WY9lDnJvy2V+Z
	yFQhYG0EAFpbWFaFYVHh1Mz1fUx1HmJX5Ffw1u1OGNBnTCmjP0/9O8E6s4cs3Ot4lgWlXZhVJdh
	tqWvsI1aSLSiim95ILxi3mdSFb9wsmHTRziiK5DumsbxvkI+G6efLC4wZZnLCmS7JcEWweCnfdD
	fl3CFwlm4nxDoH/2tQ7pGPZSkmklRTDJRN09WZw+N21/ZLuXoTTbscS7R4Kho=
X-Received: by 2002:a05:6808:6508:b0:4f3:36ff:e521 with SMTP id 5614622812f47-5640df1c54bmr5861962b6e.58.1793616142087;
        Mon, 02 Nov 2026 02:42:22 -0800 (PST)
X-Received: by 2002:a05:6808:6508:b0:4f3:36ff:e521 with SMTP id 5614622812f47-5640df1c54bmr5861941b6e.58.1793616141658;
        Mon, 02 Nov 2026 02:42:21 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:21 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:11 -0800
Subject: [PATCH v24 03/15] phy: qcom-mipi-csi2: Add Kaanapali support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-3-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
In-Reply-To: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
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
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-GUID: wpxYlc7dlMvBc7BKZjDy4kt8bLuhXdqM
X-Authority-Analysis: v=2.4 cv=IruL47/g c=1 sm=1 tr=0 ts=6ae8690e cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1e3Zegj4IIqRqDCgfwkA:9 a=QEXdDO2ut3YA:10
 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-ORIG-GUID: wpxYlc7dlMvBc7BKZjDy4kt8bLuhXdqM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXywiVeF/HAODR
 wFPJ27eH5izRYtTsvJvuOCCJ1tpN7BTes5FjaE5YncL+q83c3M6dNZ0tZJFP5mUTp3IwUDSz2pE
 YaA9ahljI+sgl6D7aHqjXxv+txPwMlGzJ568dblIYmuD1ffVGXWcTkQojdREXXqGBo3BccEiaNy
 MCneESVVQlbzFGnQxpcDpeN3m1sj6iSaj/vz4KxD2VvUaftZPddzdKm4pbuVC6nrhorvkhmXR0C
 Lz22Tlj68UnyK33kVQAwT1FQdCqiLn5h7N4WYB2DcT3GXx+DZzymdS8kH3YTKdbKQGXxdNcytey
 atarKERXJYKTSKCSBginPrWUauUUdrrZZkLKqP5SCwkcOFfGsd9yujeF+1EHz0FJBX3K3mOK5XQ
 RtNpY75QKzrRwjrRy6MfdaIW/SLPp5ud7Cj0an9IDA6WWkX4TgJ3QyF+XbJ9tBnIe8P6WI9anUC
 FslDai3AhLfUTTib6fQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfX4gAVzEOP4Pmr
 BN4UkDIIqTsQtfYAz3DBgG6earBdkREuVM8BN2pF16v/NZAfUfDkIGSABGqejVQx5/AUVMuJUh/
 xGNgUe2lZYJmo/1fRZFEjAwT0XVqYeg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024223_793758_5274A56B 
X-CRM114-Status: GOOD (  16.88  )
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

Add the Kaanapali 3nm configuration for the standalone CSI2 DPHY
driver, including the Kaanapali common status offset and power domain.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 3 files changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 8cd331cfb4b3..ed40934d67ea 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -374,6 +374,22 @@ static struct mipi_csi2_genpd x1e_genpds[] = {
 	{ .name = "mx", .scaled = true },
 };
 
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_x1e80100,
+		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
+		.common_regs_offset = 0x1000,
+		.common_status_offset = 0x138,
+	},
+	.supply_names = (const char **)x1e_supplies,
+	.num_supplies = ARRAY_SIZE(x1e_supplies),
+	.clk_names = (const char **)x1e_clks,
+	.num_clk = ARRAY_SIZE(x1e_clks),
+	.genpds = x1e_genpds,
+	.num_genpds = ARRAY_SIZE(x1e_genpds),
+};
+
 const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
 	.reg_info = {
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0..941f8b920b1d 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -443,6 +443,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
+	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index d6366f809e51..832c8d048b77 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -93,6 +93,7 @@ struct mipi_csi2phy_device {
 	u32 hw_version;
 };
 
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali;
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 154D7CA9EC1
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFtrWDDppu+v1TYybweoCxAVC5QoOwjH4BxFTXLUKw0=; b=v+sDpvKENjIKhp
	pn0wieAcGiM0vGgsKZnC+v9aQ5rPA7qr6fbdzX1ADyMDv0k/YnCBKlTFGg/GKruo+FNA2oMSYwBRe
	zYF4dsB6WY0qG5rgUyreamlwYovrqLBE85KPS+c+N5ukv5RFT0c/dZKPsgOi0YoLXI/RBzWE+ANvg
	+NWMaukhu3cysjSl3LjH7phPZleKFbx+2+GElEPJtSOppp8mozyLawZhob8LvYTYcTlD8Z2gRZyA8
	RGyQoukZK7R4+GPrI61qYTchyPFobsCumufvF/RiotJbkve4S96FCQluiKhuu97MJsTo0IsAdGxrm
	3Wpiqhz4xllE/JtLIFLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVp-00000008F6P-1VYF;
	Sat, 10 Oct 2026 16:01:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVn-00000008F4e-09KN
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:01:29 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69AFPwBP1982546
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=; b=XoEPxQSOXzlZt8AX
	bMjFxRlBzJIsWvtrk4FAEGUr0BXAoxNVSLJaLI+V61pulY+s3WkQjU4+0wobLa6Y
	3bd+/6PGJms1vWYM92ck37fCgU4oORi1H3cIrrJO0pieC+SwMY9VeP58YQMkNHVM
	Au5t+9OWyveLcjImUTX2+/Y6rCHTr7bcD1JWIpM75VELbIsxY+xyIDIuiMWN1SMY
	qGHFfMGaMR5/EcPRUBzJpAv7xcjK2BK+oEZAzaRlOMDZhueVSkqmzsfNQcN37sGG
	5F7P/+XTesN1Vt0FVY8GDT7THpPeHnfja3wbZS5ll399n+1tU1qdWBm7Pu1cF5S1
	0XdwYQ==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7cas9gwb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:25 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-14fed306427so2898401c88.1
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 09:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791648084; x=1792252884; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=;
        b=BDqAmCNdYjOyJf6HxanAWdTjc+uTpJQC6ptydB9HL9wsoPx+hxQxVHoj4MagN6ovxs
         J2ZpmOZzxOQLjuwaJGQPvwCasaznAyDSSib7L4AWcj09MOD8TblmvXV497DJnmpX2Uph
         cbeNE2poVezF6nDn4EcXAPLYb345wiNm8ahdYX39ylS3B2yZ/0GmyVbXxdk7CnUwWTeS
         lYgot62FJjK1iFmT27ws58/wdYSi9mwX+ho9+onmPzE5AEzzZP2Yj9CaDGvsQrx3NXar
         QGRl+aECYsbmfF9RM3QU97f3UbzLT3xQNmQoMoc/H8tasR8Y8LpmSV3/Tuh6G0jpKmsg
         7YHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791648084; x=1792252884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=;
        b=hJTgxww32yeiNy6/qSzDO18VxBYGbOuBT17d+QbsZn2ldW6iR2HnxhSO6GoODxC84Y
         35oZ5wFrnp552MJaNtlqubpQ0t8E1/54U7K2oVliMbo2P7t1xJI5Ypa/eyZC9rJoZWmL
         uX3//bw+WNOynE7xOrH19KlwXRlL4r1YB7b7VPuj5EvfXTgYgO1eE4o0WmmEOBPN3dGi
         trA6w75a2FUN5SiVMIZo3ilGI30Ll47d6MbZqyvyVYDxNS24zsHZ0NToNkKZMn5f03XY
         me/2UmxoMVcr1sGc1UMS5qq7DHK8RU/7+9JjnMq+q5DO/QTHOn4ZxbOD2VpJR6zafmjw
         9Xmw==
X-Gm-Message-State: AFq9FYKCCwADHYThkoPYf6Lt3xcnRBPM6HyuZUmu7AEts2E33cS5re2l
	sCeEBHwNpojYB0u9Cj6QT/d4jcFJ1cOmf2I4Hnm9mPUmjwNSWNFdop51YJK333V0v4dITslUN0z
	rShc+sLZNKbXHJGIdL9ZBxRy6BeriI1HHc/xIXLOqVmcMWzf0axx4zxv0XwzJlQNMbEJPJRzod/
	QmoWE=
X-Gm-Gg: AYBFou3NwAWBok5hPlbSAFtLlEsJbZwDt5sZTWGX4oKAMBEBSP2OSu+1F57srvpXHaH
	m9bhpphuyjl7mvGG0JTlaxbZrlgaWoUqCg9L3u54dCvMzMhfOc4n2I42zoH618S/h4/shtWsEmh
	7N8jyI1fslPi9STbogIkF5E3NEbcq5jwD50TVAU2SpXzpxSXMblBGAsZC0/kY0OaZTX7qwFaVWs
	CWWtbqz5hFn1/qRs5YpFyXKIuC0kZbDpjkZVnwKrWUES5L/1j+8l91rWXxd22Ht5FbCNbAkDFPc
	2AnG1DdgeJvP2OuU/ytcfumcOxRmWRsPbUgWS/PVs0yuaiXpgox+56JJ4NY56Df6CbyqhC4r7WF
	Lj0q49AL0nP/fTeNuPVNMWKRMQSz2/jdP9WqhehgKtvhlNRnn3zyzvlt8XkCXXFU4l94embr3TC
	CUsSgfTDQBPQ==
X-Received: by 2002:a05:701b:4583:20b0:151:9af3:1beb with SMTP id a92af1059eb24-16a5dee12e2mr6475656c88.10.1791648084384;
        Sat, 10 Oct 2026 09:01:24 -0700 (PDT)
X-Received: by 2002:a05:701b:4583:20b0:151:9af3:1beb with SMTP id a92af1059eb24-16a5dee12e2mr6475573c88.10.1791648083488;
        Sat, 10 Oct 2026 09:01:23 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a31f6be0sm30786022c88.13.2026.10.10.09.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 09:01:23 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 09:01:08 -0700
Subject: [PATCH v20 03/13] phy: qcom-mipi-csi2: Add Kaanapali support
MIME-Version: 1.0
Message-Id: <20261010-kaanapali-camss-v20-3-63e98ce9ac0c@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX7nBfBtPhSB+i
 xc1nvEqYiU5LHYYzufRNV7Rfz8Yq22+sbkjm0qigkPnzeNOx509iYJOj40dMoqEnOn8rigerBLL
 SCgrLWjk5QkHIs3pQZRkhWd8RZ9tPHA=
X-Proofpoint-ORIG-GUID: fQaJXxVJBFdBQmF6VfHaoBZNlZH-m8lQ
X-Proofpoint-GUID: fQaJXxVJBFdBQmF6VfHaoBZNlZH-m8lQ
X-Authority-Analysis: v=2.4 cv=eMWGH3p1 c=1 sm=1 tr=0 ts=6aca6155 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1e3Zegj4IIqRqDCgfwkA:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX7s8CzyQIDX0Y
 BPKPoiVIzsDO1y+MdfqSA9K+22YtVDM7TLglc/lzBbnevfmGLDLlwCgiQ5W9icdtJIgS9zHLAmL
 IpMsgVkJ0RqhzVtWPZrjXmt23Mwy13s50u8ocrp8NO7pSIyx+EL6X8Hf3+KKjxiI/7sdZPMJXEo
 YVyOIw79csqQ5Ojlehq1WDo2YIhc+QfkTKV1U/j6arWCRxA2URRfI8c3HwIAhcKCKd4mQDLO4pj
 lHF38Ar7mLb8bJV5d5hxFW4Nlwbz8Mpks7UKWrn1cDi2pUPWZx5K660CIA8umKCBDeDBUw/qL78
 +0Xtl1Rznrz4sDo6tZIIjb9J5OlEM8+wYkbfOwV+TylNe3N7Sql4Cw3riI1UWRcQRQVzQ0C36/U
 SN/f0HZM9Bjzo6zpPAAIdhoSJE3KrlKcBYUlBqI2ed4Ub7bNx9WCwR2yBX1zqOdqwoFhub6Pk0t
 hmQ31Ncf1HKBcAHHhYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-10_03,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610100063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_090127_090214_F6FDB50C 
X-CRM114-Status: GOOD (  15.37  )
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

Add the Kaanapali 3nm configuration for the standalone CSI2 DPHY
driver, including the Kaanapali common status offset and power domain.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 3 files changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 8cd331cfb4b3..658a39463104 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -389,3 +389,19 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.genpds = x1e_genpds,
 	.num_genpds = ARRAY_SIZE(x1e_genpds),
 };
+
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
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0..aff9e66f0352 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -444,6 +444,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
+	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, phy_qcom_mipi_csi2_of_match_table);
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index d6366f809e51..2355a1db9b94 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -94,5 +94,6 @@ struct mipi_csi2phy_device {
 };
 
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

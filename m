Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2550BCCF2C4
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=noLlLph9id8eBWhugH1h1BIxwp8r373lS9rGLYfkz/A=; b=f7PYgDurL3To3p
	YJAjDm+bU6vXmbnYQ+S4ql6tjEWV11UGnFQLYgPy7e9xUHKNkTBEPM0uawJ7XAbULh5QOL9YUeB5x
	KHxQuxlncav/zNf5JDMryybf15IhqK+xD7bJkU+rXAq8pQnvzjQ9jiLFjKv3eElCwCufP55+UPJzM
	cya2+nQ9Vn+9WiAv6YJbUHK9ubnpuIjg61yRavp2BjeXMsFpkSf1xlx+rHf+kk+6JlNTqDmVFW8lj
	njaBUTBb9VUn9W7zyPZOIGWDgZPaxRagjCS6uFQvyNRpi3sCLH19xWplcmQ0NsameKHjCOmN/fIA+
	wjex6YOCPbsnaera0P8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yZ-00000004yz6-3HXQ;
	Sat, 17 Oct 2026 17:13:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yW-00000004yyU-3tRa
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:13:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HG9ns32533980
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CBP5FDgUuNI+IeQ3fpaNQaTXKxFW4xAkNLJmRGA+1TA=; b=EN7Ou5H7e9t8ssm6
	o0/BfNMfdK1jZXxwwLsBRLiPkhqegbihae1z31SMXRARi2ginadODJZuM8ZZ07zg
	gHw7Eip5eK72CoFCVJPpYodvCnL9x3v9jfV1hrTl88C4UZvUYcI56l5S4xzKqOme
	zKE48Dbh8FDGdeGOSRbUk/6oK4YGOB92ugbyWTvUAgVLXuxZqTjE9HBjyC4XD1Gp
	itJMgHvC3+2tWMvdo04N/FuR5ohOPFqQUQl4UuxvvQf59C3PL6C0dxrQIYglsNBF
	OkPB8Ej2uEUK+3vPzbaB3aKzSU5EvjSAcmH+bcV4s3uiGIt5JwNJLNmrcRsQTji+
	9KyZxg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbyys1j93-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:40 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-35c5aef2a74so145890eec.0
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792257220; x=1792862020; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CBP5FDgUuNI+IeQ3fpaNQaTXKxFW4xAkNLJmRGA+1TA=;
        b=bjQ5OkJM/f5x/FAw5cg3na6VtSV0rJzMfpuUUBK9v/ft/J9DsoWtbf4nkyifaDdZc+
         5NaK0zfdN1NJ9Jk3pQOxnLDCVO969T8d/VlKLuVREAF6ALSHSge+lqnablPHWba3N3Zf
         0ed0fVzdad18KNjYesaN2QPH3nybvoBvDOXws0WdzvzOg00Wob7yKQsBwm1iGw05xcvU
         gBPAOSb16srfRLL/IOQ0NMANKP+FLUy4DzVZ/iO/Kwv7Bm2UPUwYz5CQggGUjAL76LMI
         fQT4QWvcXxSQLycpRdsTK6iWWM6k0gHMhpvuwwiHWM7RIx9MJtl0OzEOGSllpAsX6Pre
         +vwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792257220; x=1792862020;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CBP5FDgUuNI+IeQ3fpaNQaTXKxFW4xAkNLJmRGA+1TA=;
        b=uwo/8vAufypjNH2BmkQ2YHlu5R58X9XMs50fdrIZhKi4JBu+aRmbtT3I09513XqVwT
         BU6p2D9xhKAX3MQ6PMfXWJQuO+fGiqd+kkdtp9dGy1LFK0cqpvH7NkhIi9WngJrnoQTa
         qobYzslql5Ux4L9CWaZJAwBTDHRAV2Cu+xO0kfKSrbsO2lIsQUCdH5urpjpXhay2AcMe
         6GBdc5IkL5hDvygVp60ieo7vBU1LDWR+84X/ymJuG/9bKhFAAG8O2HIi389zISWEy6Xy
         9jAfBLCJmg1vjSjxI8CPkn6SFmXP9YX2ClKHFMrFYCbk8a7zGZ+rPnMomTxM6DH/l4v9
         3z1A==
X-Forwarded-Encrypted: i=1; AKwUvBzLJTqRLktoSU4BeFgUkMwDTIwxUH1UMmbKh0XIOy4w098QsHQQGdOyFLsva9Cf2GDyvBNMGw4Xu/Y=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ7TORi1nNMIB+ivwzn8Xw35viJ4/WQ6DrdBWm9xF96iF6Hz+rl
	5UK6lWPL2p6Q4LtlxywbqZdOt554nye8H7oreT8Ze1EVx7Pw3AdVVe5S6MsqPSXkwQbAFebzOPa
	OVSCT7Pxg42fhPCRaFrYHIRkw03FoZ4sS0au9ZS3Z7G3agfuWMXcQpfNYr06yTIuhk9rJ
X-Gm-Gg: AYBFou0K+FdTjtslw9U6b2taY/uAPAJ9mM+d8VnCHA3SPSYWHsVKk3IumjOk/MHa+aD
	pefkWFtS1OqeDCHqF1RqndORY73eysFtn82P16XjQHoz/d8q87+x+Cq32x1meaLcikHHmOfEOtT
	5VrFUaH6awKyYgY7p1dxObPNOlH1s+6WaUUlt2Uoel9ECuyKutD7N5L8j+Se+23UkWeC1ux1OmQ
	2NFmfsftYTCHczW5NiDD/Zfyf1Vs3+guVMP/ygJr8ZlwJFQDhieJ6bPsaG3PlutSEz+c4M3kYWT
	VvkgLmPuHeZKtWlIJct0HWWxJ62GIh/csvUAeO86hU8HwsncNrpZlDb6c1+5nbisAnkIiSX1xq4
	sYBph1QunVYjl3Kd0Zha8CdwPgxsKMA==
X-Received: by 2002:a05:7300:d10:b0:35a:84cc:d941 with SMTP id 5a478bee46e88-361a341c8e6mr6210297eec.37.1792257219585;
        Sat, 17 Oct 2026 10:13:39 -0700 (PDT)
X-Received: by 2002:a05:7300:d10:b0:35a:84cc:d941 with SMTP id 5a478bee46e88-361a341c8e6mr6210263eec.37.1792257219047;
        Sat, 17 Oct 2026 10:13:39 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6e33sm17893966eec.7.2026.10.17.10.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 10:13:38 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Sat, 17 Oct 2026 22:43:10 +0530
Subject: [PATCH RFC 3/6] phy: qcom: mipi-csi2: Split D-PHY register
 settings
MIME-Version: 1.0
Message-Id: <20261017-cphy_support-v1-3-8b0e1237ce95@oss.qualcomm.com>
References: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
In-Reply-To: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792257199; l=3558;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=EI0RYsZ3yOnKefVjSeOVmfm/PmjAgR2/wT5sSGJujcs=;
 b=fpg9uAqqItJW+uBq5bvinDXTzTn5xxS1LHLyIQ57YiIFj/XQiVowd/9ok6xaPAzKa3epF5U3w
 Cjs4AePzRX5BaoAk/paWS290Fb9mDhkOoX6rAo5sg8DVHBHVjHcmABr
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX/U59n32YHrs+
 C220BlwyT3cs9EtSes7yg4DMEOBg4e/aiHYwow3W7iOMQyWKeJQ1Yq5+uULNAuy4qukpc/CriNt
 /ppt+Z5juQEXeZmag1fhHN2qM/4a9/KeBdN5cOS6eSpMwA3NNMEkzPg2MIu4uqWa5TZxfy9rh6P
 V4pCNPGJSCk4jR8SP5/HjAOuCUyYxZOKhe1vwiKar4cbJ56+bywvpN8bIzeyDR6cQEhBr+qGKXK
 t/nAJ5z1y8ucQKq0yLaeC3CrqZ/WbrPTt3NiJc056iz6J4Ru5Wl0d+UKnBAMZiYBIZ7zP4l+GSP
 SFld/B/G2heQA423eFvMzh1iYXfEcC9/6xFYXFF31uAbD718TyXYcStAwRyv9pmNzbJMtAFwX0B
 IKI0xO+hvfhAjRsQsxHsgJHnbJl134Os7EvfEuiFs45fbfoKqAobEnfUXij90DfnBz9H+kkwm3m
 Hlfzgnr5JvKEa8akVWA==
X-Authority-Analysis: v=2.4 cv=W4WtxhWk c=1 sm=1 tr=0 ts=6ad3acc4 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=sk60x3sEPLDaefoj9B8A:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: 2IYkOZQ5Hf7ewSGDuhWY9LX4IwzqR8e7
X-Proofpoint-GUID: 2IYkOZQ5Hf7ewSGDuhWY9LX4IwzqR8e7
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX3MjdapwShUDI
 HRXMpLFDzvBJpaDuutlg2H53GYiofGE3MxWe7mvGdiT+YtzHyrhGzR1GboIqna/vFF99Rva2WAB
 /PmRnCrAzhiLNJsJtIdC//rk3r6YT9c=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 phishscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610170068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_101340_979924_E40278B6 
X-CRM114-Status: GOOD (  15.31  )
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

The register sequence storage is tied to a single init table. C-PHY
support needs separate D-PHY and C-PHY sequence selection without
changing the existing D-PHY programming.

Wrap the existing D-PHY table in a D-PHY settings structure and route
lane programming through a common register write helper.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 28 +++++++++++++++-------
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  8 +++++--
 2 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b21e1a235b8397c4c84b25d869427..79c7fa57d059b29f2f72a0c1208e07115b3fb049 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -241,14 +241,12 @@ static u8 phy_qcom_mipi_csi2_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
 	return settle_cnt;
 }
 
-static void
-phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
-				     u8 settle_cnt)
+static void phy_qcom_mipi_csi2_write_regs(struct mipi_csi2phy_device *csi2phy,
+					  const struct mipi_csi2phy_lane_regs *r,
+					  unsigned int array_size, u8 settle_cnt)
 {
-	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
-	const struct mipi_csi2phy_lane_regs *r = regs->init_seq;
-	int i, array_size = regs->lane_array_size;
 	u32 val;
+	int i;
 
 	for (i = 0; i < array_size; i++, r++) {
 		switch (r->param_type) {
@@ -268,6 +266,16 @@ phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
 	}
 }
 
+static void
+phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
+				     u8 settle_cnt)
+{
+	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
+
+	phy_qcom_mipi_csi2_write_regs(csi2phy, regs->dphy->dphy_init_seq,
+					 regs->dphy->num_regs, settle_cnt);
+}
+
 static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
 					   struct mipi_csi2phy_stream_cfg *cfg)
 {
@@ -369,11 +377,15 @@ static struct mipi_csi2_genpd x1e_genpds[] = {
 	{ .name = "mx", .scaled = true },
 };
 
+static const struct mipi_csi2phy_dphy_rate_settings x1e80100_dphy_settings = {
+	.dphy_init_seq = lane_regs_x1e80100,
+	.num_regs = ARRAY_SIZE(lane_regs_x1e80100),
+};
+
 const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
 	.reg_info = {
-		.init_seq = lane_regs_x1e80100,
-		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
+		.dphy = &x1e80100_dphy_settings,
 		.common_regs_offset = 0x1000,
 	},
 	.supply_names = (const char **)x1e_supplies,
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae00737047f2d0384728a9c98780851eec05..528e80109c2f96b8c66d989ac834e30e7b38c732 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -47,9 +47,13 @@ struct mipi_csi2phy_lane_regs {
 	const u32 param_type;
 };
 
+struct mipi_csi2phy_dphy_rate_settings {
+	const struct mipi_csi2phy_lane_regs *dphy_init_seq;
+	unsigned int num_regs;
+};
+
 struct mipi_csi2phy_device_regs {
-	const struct mipi_csi2phy_lane_regs *init_seq;
-	const int lane_array_size;
+	const struct mipi_csi2phy_dphy_rate_settings *dphy;
 	const u32 common_regs_offset;
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32359CA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 11:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIP90TJbxApx1jE4kCuDzFRyA8cVUVQcwiWZ93oNAnQ=; b=BpiN44C7vnOVP5
	q57umQD7mF/8fjX4Zr0l1VXoQpcqaa4U8kID+J+tCwjxfiqqp1f1XxCaDg8+aS4X/IBGvUqJW3Vcn
	veDfXLeZ5pCOBxuq2/cj2KHm1YMVESejOzlXE/ivuPeTb+U9gNIiaOQyaQW21pdXYA7kqDXdtMcvi
	UHn4Vrk8Qby59E85OYpuBCXlI9T9xrsJzDuqj2eolfaXIvEv1ZPMKFHom2snp+Cns9VmdGdqGOR7M
	axNaEerQSlj3yO4zEAAO+tIbYGw0m54FvT8GlXw5JBPNo37364S1WcrhuLoCZZN8RxtGNNCNK2LAx
	LryHfoZVC9L7Flw2MNPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaIj-0000000CfCD-3fDH;
	Tue, 13 Oct 2026 11:04:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaIa-0000000CfAC-2Cvj
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 11:04:09 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8NFQh302833
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yjjxz+j5Mb/djdiiskXr7pvI3RGq7Uv1B/7Kyj5lXpA=; b=Q/A0BRghoHmUfM57
	ppUraBNvkdVKVAxQxf/A6ktX3uIjSiWPoZ3HEY9pc/ypElv8Vgd2I7ACs7YWo+NX
	yXeSelc6Gws9nlXe/G3H+Ld6cZV/1ZHXntA0X12SNF3pbmeE2tkGWN0hKE6Jk00+
	pAMGbB5AmEI1bzY6OkmwYEvNl0pAtZtavZvasX6DWYywdxe5uV9Z0TavSf1Zwmey
	vRei/PrnbCoogIqrtEIgrAKjzqCWwxfDg4uzJkhexAvGSvFOmpoqEUQI/FJFj2eP
	q+nngJb3I72nExZZHAnrhc15tBfhBKyHzIaIwQbJ7Q0xQvvp/zOo8hbFrZr7jS3b
	k9EaKg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h98sqahj9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:59 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cb11535e6a1so1843854a12.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 04:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791889439; x=1792494239; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Yjjxz+j5Mb/djdiiskXr7pvI3RGq7Uv1B/7Kyj5lXpA=;
        b=jTkPSmjZJAGARhypnOOAYEM8sE14muNrDeJkQKiIBoIx5AkP7kDK053yQQYsyT9rbM
         QMVT8AzIPhbKEuhp6M3922cCZajqRf5ZADVDNw2SkBPhsfw4dhBbx/fOdXIWYxZtRVLd
         zJhid9fotPmA5A3zumKuMlCwjxYvZP/zifLl25y3YjGRlVrjMgHdJXHCpO4yEdA9vb1r
         LNJsvseXISxRUt+VvN61qFXWNzqmpKEi+NNdZ3pqwq0C/dpvUSlDVlmAYaBSxRvHbOtu
         0BEwdtF6KXSsQHHg71XFmC6UVbCF7s9UnHcR1rUPOsWZpFM9gNMx8Ym31gdSaxAGSvGl
         AXsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791889439; x=1792494239;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Yjjxz+j5Mb/djdiiskXr7pvI3RGq7Uv1B/7Kyj5lXpA=;
        b=h7YprQeN7ksbgaPNnkGjysRyPKJtmjXZUykMqxJNAWn0SUVZ2RWaGSGR9PNokkg+YF
         DFZLL5nXgJ5uXAycih50z+5yDJTQDEIjyq3B0jxbrYCPwCxmj2fUMc270t/sYk/Dh34+
         ZdvnaEI+KpxASP4SmLXJ5G0fQEu+N2b8qWjhxcrKENTrvlQQL4JMufz4+HNVZd4GB4ep
         VjE14eDpk1nof5d29r4Q4GSDO3G71S+C9wz+N+uvnuF2x0Fi8lLSdM92RTtnm+iIS395
         UXYQDnwwNtNxrq9it78PBD2wIvbxNynm+95+r4f0hYDTTpSlzLF97XsnhPKNWKijinSB
         24cA==
X-Forwarded-Encrypted: i=1; AKwUvBxFD1qEvGeimHSu8yKtM6AEwi5pouyXDcqzOEVkoANgQpsd88BODgYEVLYG4cyuHnHFdPREa93YYP0=@lists.infradead.org
X-Gm-Message-State: AFq9FYLeQiN+MVG2lwZUu3w36QKmroS+84z5imtJtogsjpvjXB3Vvkrz
	XQiSXj0Lr+i0G8ETeo1wTbWqD2URSTDfrQpBafvkSGjBvAXSzLsGpxOtj2LM1CZyrBdif6kePQb
	AowLP0PXnHoEu5Ugisn2j/H42uZMXvxiQog0/LoqoV1q7IOP+XBIx1DFb8vkhG2yPHJBv
X-Gm-Gg: AYBFou15QVQ8QpS29OFzbx+6StqrtXx6M8xCaWv07EHT8cPG77ZBrfNBrDp6f1CGMd7
	OqvXvPzjjJ/496twG0TwO3aviqWdqsjZ94oBg5jwaFeWE2NMKB9rr9hSET5ZX/PqoL6IMFBoDwN
	3Mi4gzYSo9Pl+MsRVAGrXnUYAGZrMhe37N41bxEin/hfbX2m3yEkioENKzZ+DMFv7yV+oRmEn8x
	yZKu6JcSOI5uX4s+8lYd2ca3ESUeeEVwnzL/0ZLYX6WORXR+XFs1dSnYNa/Q98MXQax2iOXNJWT
	bponPW6WUVnA+XPhowbXN9d1u13FmMUk7+UxxG6aIQ2KSyr9P+2A2X5n9EwreH2Q5/uAKEH4Fiy
	nLS+7UL9nw6Oc6BrnpIkxm1FzELZeiSo=
X-Received: by 2002:a17:90a:10cf:b0:3ab:9c73:12e with SMTP id 98e67ed59e1d1-3ab9c7307d0mr4655465a91.6.1791889438454;
        Tue, 13 Oct 2026 04:03:58 -0700 (PDT)
X-Received: by 2002:a17:90a:10cf:b0:3ab:9c73:12e with SMTP id 98e67ed59e1d1-3ab9c7307d0mr4655419a91.6.1791889437715;
        Tue, 13 Oct 2026 04:03:57 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab36f46dfesm20808403a91.8.2026.10.13.04.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 04:03:57 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 16:32:48 +0530
Subject: [PATCH v2 6/8] media: qcom: camss: Add Hawi compatible camss
 driver
MIME-Version: 1.0
Message-Id: <20261013-hawi-maili-camss-v2-6-fc93222da89c@oss.qualcomm.com>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
In-Reply-To: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791889386; l=2717;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=7pVV9xmzq97y648MJ4HgkX/lIj1aZ5N3IOcjNF/uljM=;
 b=5a7Be2QWHLszRyLNCc4rOnS+d+oFdnXVWhSt3defns9MLGh1bkRINRPsYTg6llQt3UZl+niFu
 KNQXOAXm2i8As6UaKHEqq8USt8zWMr9WnncnDGClaWBE4+ERgJv1Udh
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX6gTbL/Gk8Epn
 ztWlIYHPycSBPio4XjXWwV68GPkn6yx9s63KBgPSRi+CZ06CAgy+ciOt0Wj5moCPS9EfisCa8gh
 znsMlsqeVNhEBwaQT5PuzVlsDfdz7bTcxuf17fcFzAfDDr25dUItwvB6EmLFZfB1xKG4opyc3ed
 5Ig2/u2zCRR/5wifUIuBD/O0sJe+GVUQkeItmXBXiudbpNula76MzgJm7uDTWsDbDcnDdp0rbFa
 Ce9MDQiEuT+L4xLfT+s3ZhqNtXJ3b1o8PWf3buwmIyPeh2JQD1lXc0NebvQApAJ9jzvGqL6UKdn
 GSqcZeKGi0MGuOQzJ7GJs0hk9Taaw8tBTMiNoqtc9LsoE0Mde/nGjxdWRyzKIUKsAPSJ13b2DAc
 P1F7zEE5kCssHJUmDT52+UDTF5aK2cFzZCgtJ8ZNbCjnOH6+vNTDzA2gp/zGlq0D80ZgJ1ceSMy
 ccl4x+KEQcMeODNrmag==
X-Authority-Analysis: v=2.4 cv=JN+uIMKb c=1 sm=1 tr=0 ts=6ace101f cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=gE60Ov1lhapgyOv8Ur0A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX2XIcoVcwNEuZ
 GHf6KWkAjRxaganQ8liLQi4KT2b4OQXv472QZ7iEhAOeEDv7o4E+03L1AEQdfhZyiGYR1mrtBz0
 ZiwtZnfHV30cPZogsuSh/82/ikD0e7g=
X-Proofpoint-ORIG-GUID: tQVSSTC2PbV4fRHIlVj7ad4aNJsm6tyc
X-Proofpoint-GUID: tQVSSTC2PbV4fRHIlVj7ad4aNJsm6tyc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_040407_864822_E405FD92 
X-CRM114-Status: GOOD (  14.26  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add support for Hawi in the camss driver. Hawi reuses the CSIPHY
resource table from Kaanapali and the TPG resource table from
X1E80100.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 25 +++++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 26 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 5db7e12a6f86973df372c0428c15c286d9f7e60a..664237ad5ce60be64806c5386ce88ed2133f0552 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4381,6 +4381,19 @@ static const struct resources_icc icc_res_sa8775p[] = {
 	},
 };
 
+static const struct resources_icc icc_res_hawi[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 38400,
+		.icc_bw_tbl.peak = 76800,
+	},
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 2097152,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_x1e80100[] = {
 	/* CSIPHY0 */
 	{
@@ -6086,6 +6099,17 @@ static const struct camss_resources sm8650_resources = {
 	.vfe_num = ARRAY_SIZE(vfe_res_sm8650),
 };
 
+static const struct camss_resources hawi_resources = {
+	.version = CAMSS_HAWI,
+	.pd_name = "top",
+	.csiphy_res = csiphy_res_kaanapali,
+	.tpg_res = tpg_res_x1e80100,
+	.icc_res = icc_res_hawi,
+	.icc_path_num = ARRAY_SIZE(icc_res_hawi),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
+	.tpg_num = ARRAY_SIZE(tpg_res_x1e80100),
+};
+
 static const struct camss_resources x1e80100_resources = {
 	.version = CAMSS_X1E80100,
 	.pd_name = "top",
@@ -6121,6 +6145,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
+	{ .compatible = "qcom,hawi-camss", .data = &hawi_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
 	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
 	{ }
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 0551211f7948190a7cc2a2e7971e6c549f92ff60..2b0990b95a1fbca8cbc06628223437c24bceb792 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -96,6 +96,7 @@ enum camss_version {
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
+	CAMSS_HAWI,
 	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

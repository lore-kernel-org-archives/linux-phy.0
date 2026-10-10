Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AA28CA9ECB
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIbB5kwZWqdoKwLcoBbVW7IFu+RvzqrOdquUNaJ8l9k=; b=cZzAGsJJvCflRu
	R06SteTKSGp4PkULClGAoWr5q+hKfWXb2DpgurpNu9L2LzENPpe1JE/AKLXx3iFWgGWnBdfKyvrZ2
	e7TM5pXJmhSkqVTcAdXaZiHppZvD1VbuaK3bSaiGqKGma5k6DOy4+TAkEzRY5b2tXooCPyML13qs8
	t+rMSxgPFHsrLZob6fP7pDA2PF/qbZ3OBvOrRZttkbf2UmKABRKwnmpadfwXVmf6XUHQt0eo5UXf0
	RZS//6l3teMkt2/vaWj2+Emrl7R3+qVaHkCZVycoE6xJhHb97I5/PGBr7h/1Cf75OU/U2cG82nEf9
	GiF7PLY4GDWp68WWnc4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVu-00000008F9Z-2W35;
	Sat, 10 Oct 2026 16:01:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVo-00000008F5z-2rml
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:01:30 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69AFQMfa383209
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=; b=R0Uzha9/vgKV7ivq
	v0xrQYGxks2tZH7LDHYAavq390OObotO9tImU5TYniSkj4VXhM3yjUcMlwsqEoRE
	jmiEkZyPoivDU0veoFClMDOenHWJBIotTGRfQAxp6yxyDKEps9Q6ojj1uf5Ne5tc
	SyaKbElMBZbdM53Yuj+K5v1+BI2ibvfLmbSRQdiT6KWBYR/b6is3O4ulrglC9rel
	iB/UQP2P7lQgIrOdKY2u/zCLVqZUIaC5MPgHUuTMolz0HUSIFDDqfDpOLke5+HBz
	W+sA9hnvTUumV4lXtnRaLLK+IwY3OshYqXsQ6bOllfAAM3l0WL6oCtmD3Xb12/lK
	g3JFmQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7e4e9855-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:28 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-14fed306427so2898464c88.1
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 09:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791648087; x=1792252887; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=;
        b=IHOdsvje4uMUGqnzKM6CAv5I8v/5nqNvW2vY2USsTHx12X9JTH/6NrO2Rv69ezd9yU
         2bTVFlQKkfk/hy/UNEsxb5L0fDu2jUAphVwc1/x4+SW1UkIkK8pgQxyv5O+4ovvN2CpT
         6Nuq6q1QiCXg0+Xjav70baFWYOxZ990K90SlBLjA2g4VovqT0vNQ3HdT7KRC3CxjoF7t
         SdquHHTgyNSCLqCBwY3jOlvcEgzvAItLQxctC+RUuzxuu8svN6ZRAGMDG9pXqBROFXXe
         Li8EbI0hc/HEEGOalndjA42QHlADt6JvgOPp9SDyKppGEjGwgCaJHdyT3k/+5XNTZVo1
         Rndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791648087; x=1792252887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=;
        b=s0gpCbX45q5KMM/0Y0tGCYHrqPM0dt0xiWxmmGVf6xQJyyF6ULfGFv1lHKCST2sZv2
         Zg2DPiqj1/fh2hKEyPRoEcmeq9376HeRqtMy8C9ZJH7TxZrmjwBKWKvspM+RApy3Dm58
         udp0nQ5YZgoDBxA2T/gig6l7AfBZ0BSkY37CYPjYyItp3R5GA82v70O6ikJF3Bi63cRR
         +2lQpetfBpp7Sc6DNY9TNpmUnODE6ezu/aj8tpd8G/1glMW8FB3DUFZRvN5r9lVYox9D
         OMAr1SGo8quf6A2SW90JkU7AbDTDn24vpMQlpsA2kZuV6Qy2Qrssz1JQWjOfeNe2LGBo
         rv3A==
X-Gm-Message-State: AFq9FYJ9Kvxo8d2znjrHGC7glsPA1hwaQGeZHZZqjKC05KfEnWLTjiDK
	SuCTjFYcJCcqLy2TG71ysc9wPKTIY5ORtjDadLQxUJNXweCKnqjeNB+T0Eitc+pT87c6RXTXiCb
	S31RG6o5B4MCDQytGKG2UtzqhkJUTh898HxrJ9eLpJi/HcT9GfriRdwBdDXO9r9dS9Y3MFsRTRy
	fHjPs=
X-Gm-Gg: AYBFou2b+HIle4Si8LARhnXbFxPA1KQL4YS6BXZVglE5IcOVufQnvLx49GFrb//A6aa
	jMiXyoEimAsOzwMhu035lF8oQUzf406JMcruLWlO99Z4tMRCgCabSZjZVZhzHhbjQsB4Z5swxF7
	M1m9YJqcjGv7rD7Ds+JlvhDlX2H17zmOKYfsInnN79JLIF8y+pzEFYxjqIqbH7OWfyvSHF/GUbz
	Ac2gaO4UD0xV+AQol5W4Q+iE4DUtOUJ2bd8SnfncBoPWi8dCblrSfZiwM6F/4pN1mJLqQ6l5HOZ
	dx00p1ZPtll97PSFmmCJK11/1qqprgw0sdsWml02lJv5lJ6p13T2MX24w2pOazL46OF5dFlTNKI
	Vj7CFFv7efRjmzgdt+iOrwK12v4mEPEQjTDa/5hoNDq/EJbQ5hjI46igNXVzI04sIG1ySqrHSY+
	RdAXhf4aHxnA==
X-Received: by 2002:a05:7022:150e:b0:163:bee9:b250 with SMTP id a92af1059eb24-16a5ef287c9mr7218626c88.22.1791648087501;
        Sat, 10 Oct 2026 09:01:27 -0700 (PDT)
X-Received: by 2002:a05:7022:150e:b0:163:bee9:b250 with SMTP id a92af1059eb24-16a5ef287c9mr7218506c88.22.1791648086344;
        Sat, 10 Oct 2026 09:01:26 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a31f6be0sm30786022c88.13.2026.10.10.09.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 09:01:25 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 09:01:10 -0700
Subject: [PATCH v20 05/13] media: qcom: camss: Add Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20261010-kaanapali-camss-v20-5-63e98ce9ac0c@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX1RBr32TvM4Pb
 6msYHiE+OBr9UYlPRCHg++4FOHkrzyjE0dPqzWiNyXKpT5x/CPkWDkLZnW18Zo6Yy5fCxmvwYyZ
 lsGhFlYnwWK6DBaBU1dz/gK1Wbbk2ETlV3lUUh+A7zuSJ3Q0Y3/iM3szOAhNinMJnDRUtd9R0Zt
 E4tr6qT5ytH6qd52vQMMGIucM5Fps9gqo76x22V9rEhizw308kf5NY8uZNoHBHmVoU1+AxKnXMh
 NQG6Yk4fmUbszwWuoRw/uwquhpOboErKsPUl0UC9qPs71Y9JGlheRoY/2sY13v+jMlvXZNwMm6A
 fE9fH5Yh11Fi4VZ9Zd4SrZuKmlqwZSb/8D5YHqoWOjsrLNW6SBXAbcmIkDZZIsuJO3oGaM6Ggup
 EtSV1s2sL268xBpZjeYKo9GZ2rFf2d+GPyOYZgfGDcDfY19o+u3GAiOtVRLbLmCQ36qPDxCtWZf
 xphkHxL7afZbYw+GWng==
X-Proofpoint-ORIG-GUID: nv860EOKiNPQpnypyk2AaubFGrZzq-I7
X-Proofpoint-GUID: nv860EOKiNPQpnypyk2AaubFGrZzq-I7
X-Authority-Analysis: v=2.4 cv=W5utxhWk c=1 sm=1 tr=0 ts=6aca6158 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX0BbVd+mNSAmy
 0QK+zsJpljEcWuMIXdh/nJn3fT9tpZKC034Ihffq9QFoK1qFCxf/G2l6B0Eqcn+vLUmgpGQM6l2
 Vpu1GUStZ3xj1p4dQN3wMGK/YVrCo1M=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-10_03,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610100063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_090128_725802_5269686B 
X-CRM114-Status: GOOD (  14.27  )
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

Add CAMSS_KAANAPALI enum, Kaanapali compatible and Kaanapali CAMSS driver
private data. The private data currently includes only basic information.
Later changes will add CSIPHY, TPG, CSID and VFE resources.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index c54185c93a8a..fca3de214a92 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -38,6 +38,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	}
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -5576,6 +5590,13 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -5810,6 +5831,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 7dc2fd9f03e0..0551211f7948 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -96,6 +96,7 @@ enum camss_version {
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

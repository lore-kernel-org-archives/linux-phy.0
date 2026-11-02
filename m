Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D5460A3838
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UNPAQMrs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=jGc2JBXc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=N9jQua8Y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KjIqt5ZwftkGaoJwcjtrl7naLZogP1Z6h27hP37T0mU=; b=UNPAQMrsDRA+iaXe5MBaZawPJ0
	Wyshtph55uUzIlBwVB+aBcCZrJ1e+42PGbKykmVcYE+7o/0OGGjN5gsVAfpXO8UZ5fdCEgqBQKmxs
	kahbWl7QwqprP8HlTIKqUzxloaKsyhNT29seHTOix3b/98UFrHgEkrFCVBcdO8vH8imKtIG5KA5ta
	cT7FV/b3pP6yLL5Q5TRtu9KoWGiZQWc5BDRIjSSwze+dxc8tuBtuEUbd3JH4bQU7Hv7vCvFbDmEaH
	XVbfpKAU74Zg6biAy0SQN7eODF2kSRnVkiFQdFraIh7gwcasOZBhOsRziHCiL8B4KK8aa/QF6OIa6
	fGGv2K8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUm-0000000GCRN-2WhT;
	Mon, 02 Nov 2026 10:42:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUj-0000000GCPK-3Gzr
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AO2e3086537
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Um07vBM3gsqnJtvymP7VQb4GOHOjEPUnXIoHN/ARP/c=; b=jGc2JBXcHRzAaY2j
	M2zTSW1A8OQVIx7MOuSKUVYMzqUJfLubyC6g8QYIJ/sh3rfWfu8OU/MDQe0kIBrm
	2racFMZj/gcYDUov75XYNb9VLNfyYg/J7ESr3Lwk4eVQanGlnDCfhMrUalFP0ago
	sfGaKtvOmBHyE4NuYld4uzPkh6vHfL9sVIg+ns7HQbnV9DvjVgu2eTrzyB3UnpKf
	Qi0mnyiatnym4t2/yuxzMUHQjU3P3KyngNiOqxlMwKgFVsk8L4XzAKqaTmOvR2QR
	X0x5mOhKmPYxeRjN7ZbjhqNdWY18S0Zej3A4L6+xaVdYnCFRkhQ8a33vvkv/NARZ
	DY2Q7A==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpka61d1x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:28 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-85d502ea62cso1292451a34.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616148; x=1794220948; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Um07vBM3gsqnJtvymP7VQb4GOHOjEPUnXIoHN/ARP/c=;
        b=N9jQua8YjElmU8PUNCUoHw9sOF71Vi/2peO6IA0vXUVmku0C/7N12JDP5+wbJH3vFe
         SJZXrg600MWXGiEoZwa1AW6HDVvDtgbcWkRvBmxB0MmiT52e3OHPVH8deppaAkkc9YZN
         wTw4XnbdMEBjPhU3HVM8EoP+eF6ksC8oUSz+yy6U8m64afSzY3PuZ3gMsBbYeQ/tZwLJ
         Z8uGqz4SR48mQQA0cF3SdDerGaqGz+XE5Y7E0Wu4OGHkwQ+wtXJQcUSbiHl2ToPk0nDU
         sRr61qGMB4IXo3rEgxy1wnkcWMOt/NxW7nTUlLWcF95JEckyGVibVE6kGf9+/H3Bdo7E
         UDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616148; x=1794220948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Um07vBM3gsqnJtvymP7VQb4GOHOjEPUnXIoHN/ARP/c=;
        b=JB4G2rl/2beJpbw7WHTtTEu9o713kuTtEVS/fVLUPOQ7+oORv866aFQkzNOOeKyY++
         wa3BDuQYMNFNi3SDeLkF4CS4rpVhvLDzBiU8ydw15LKZtX5Ihau+RCeaZH7xJS0z0Oz+
         XgUtwSVQ6fjwpWwHPVv5L6CCYjCbDhLpivQdR2ex/4sYRGBnUYtkJhOKa+LdI7XixafR
         +9JJgb2w+yn4uEpCP602nzSH8Osn+r7Gen3/2OquU9Ogg4Uq0fPXGLW9uQmFKZ4tCOFX
         D7HH33JwxMKt2P0/qe/a4u6UU7zCtbCJN1vrQ1B626ugV26oeSMdXZ/NtpNXi6NFzvMp
         vVBQ==
X-Gm-Message-State: AFq9FYIQ5TR2iPqgSLUP9cQaZV8+kgrb2x95x5Lpiv+I29EeaJ1RyOpR
	RunYN2O/b7hMiTcaRX/7jnH5SCMZe3AX7U+E5+IYd/nayom7J/OVCzKYT+xZB86JTIE2V35Hjse
	wIpGUZcuGfSjVJ7uO+VPE9kyTAHa7t3TLWmO70eMnmCBRtcwh+ACVA2K8GANdz37+jfyO
X-Gm-Gg: AYBFou1QaBhAC93d0yjpmmh3jIacghsMAlS7KTDTMbLH7WX50bki+jBE9wIuNy1FS+B
	V1fEFHfNih6W2j4181L1EZRKlU0lnJ2NxNCNFmr3Zch/ACbhXQLzfviFxsHMUq1nCPJVzSxX+51
	Ntj+6+tyt1pfXI+N42syw949vPwqWnVh9GCgTT8VFmNtiJkH37n/28D38GGWmy6T7eC3Axnvw9v
	XsquNv1vRH4TZnfqtQowx0n5m2+2WX4/dbbKKk7x5LR90zXkyY2mmeOd/mM1Deo1WkDfMl+wVBE
	tBwRqehXmlWLEiFnbrsXPYg0UprQXB9Rf5PX6VVeJXHdGgoWwBt5UqlV/c8g4hwGyi/uYNnLWG9
	7dFvbVzmObbTuSGgtK1vNfSKsoUHWEPhvA86sGmwj5nsYSSdRT0P3ErR7i2gE1xbnqm/g9M3YDR
	6ePCB/m1wu0/8E0RuAYYzAUAx29hzreOQ27Hbh0cfJA5oJMgzGsWn4VXg7uoo=
X-Received: by 2002:a05:6808:4e0b:b0:564:3fe1:2f95 with SMTP id 5614622812f47-5643fe14f4amr2068865b6e.56.1793616147945;
        Mon, 02 Nov 2026 02:42:27 -0800 (PST)
X-Received: by 2002:a05:6808:4e0b:b0:564:3fe1:2f95 with SMTP id 5614622812f47-5643fe14f4amr2068846b6e.56.1793616147534;
        Mon, 02 Nov 2026 02:42:27 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:27 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:14 -0800
Subject: [PATCH v24 06/15] media: qcom: camss: Add Kaanapali compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-6-d6b8f3f6f66f@oss.qualcomm.com>
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
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-ORIG-GUID: 0OEr3p54vmi33AMrFS4CnSxFmvtGY9QM
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXzNV/xqjkVgio
 HUbEuIVKqQqCvZgINOfigjEEK4iOIXjBsC/ctsvEUUsSSzUhX14g7TdJvXBl8xcmhi7XBOuRKOP
 oyHJHeKJRF+hG685OcLkEqrYjeonXBQ=
X-Authority-Analysis: v=2.4 cv=ZbyIpcVA c=1 sm=1 tr=0 ts=6ae86914 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXxbbaAucJ1fTa
 9UMsbWwq/P53jB8DP1GMzthQ6TObvnI455gwsNRmirtAfY5H8ePpZ2PnjvYAorOK0qgsrWEoMxo
 xMuSK8GWAcEEyw7izyVkJh71I4t+w2zcdQwA7mch/Yi+JE19ieprPBEWgoNwJK4IS3LJCj1zbCZ
 OFlOHhIYP4HFGirReRPPxUpnvEf/ZakAXZv6g8H+iDCFgmVsq1pMbxJtL/Dhu+1REnUPnes+Luy
 EwYhZYNUkTt2Kwap4HEDAWljZlAykkGLfDWDOGgau7B0UTuuzPkGCeuT/IwTluwYa11ONHgkl4x
 /5c5sB/KWnx1FNnWUHdaiA3tzXvKt1uhbSWE3kO9NRjX7Masc3osjy3FulHK6hxd3jsD8/PNUjW
 TAyWAXFEcrVrmNHilgseyYFWEgu/t3/SsxIVulWXW4Zt6sOMglLGjhiL9t5J2v6lmiIH9WaeXt2
 e4LXVqODIKbwRYIJJAQ==
X-Proofpoint-GUID: 0OEr3p54vmi33AMrFS4CnSxFmvtGY9QM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 malwarescore=0
 phishscore=0 adultscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024229_939464_30521E31 
X-CRM114-Status: GOOD (  15.34  )
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

Add CAMSS_KAANAPALI enum, Kaanapali compatible and Kaanapali CAMSS driver
private data. The private data includes the ICC paths and TPG resources
and sets the CSIPHY count. CSIPHY resources are not listed because the
PHY is probed standalone. CSID and VFE resources are added by later
changes.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 25 +++++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 26 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index be58a39f4a8b..385be682e8b9 100644
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
@@ -5589,6 +5603,16 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.tpg_res = tpg_res_8775p,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+	.csiphy_num = 6,
+	.tpg_num = ARRAY_SIZE(tpg_res_8775p),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -5823,6 +5847,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 431afeb381aa..97fec24e6804 100644
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

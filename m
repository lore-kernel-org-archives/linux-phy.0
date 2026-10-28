Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92BE606A31D
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MrC8HTgN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=F+NFIjQd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=btxcw3em
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qX1rnX5LSEFqQOTISXgqr2f03P9rRWYOjN+e/9v4irE=; b=MrC8HTgNysz735B2S2iBFLxLxa
	1+khQhCH58nRe97Rz3uTk9ECgCnHuhn6gN3J9gxWq4sani9mNHAjGbuDTQcurbCIUaG0QLZFPYcUT
	KbPk1F0qd++EEQNFdLhcObIY1il5ZaWYA3b7zU1Hmd8De449iVEce0gqs7unJkXtzyg+o9Cfu1TX9
	n1NImeDZE+sOraRr0vG6VV9F1KqfanBocqHwDFmWJphDRZmtEakL6r4YhvozU90dBLA/TJDepCPKc
	IF7icXE6aC8m3/pmJJtWQvdJ1QRPMekjcmZFPEBs3IkrEKyZTJMzx8POvXiWZu1PlQHOPUAUz+C0p
	jmdfO7KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Sq-00000007KuV-2K9T;
	Wed, 28 Oct 2026 15:21:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5So-00000007KtT-33HC
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:19 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFAZk41458807
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mtyicMFphg8NIVF2KmS0oSGWOULir4B5NzOfXYC1xoQ=; b=F+NFIjQdS2yHtIq0
	XVAfqZLJkJbeyypfqPMoto3ULOCSYsonzYMFk1m7L6oggnOfJrOUO+VPx+Q45x2R
	gskrkkoQ/M3HYqIMW29inufC6KXCHsLz5SS9Uylp+NOcxoAKEujfpyZ+EBJxPRox
	glKj+vL6AcYOMWxplYAktVQHoHWWBPkT71PVgZNGt4w3o2UHmsb6Zxi/zlv3KYaX
	rfTaeUO14fiSwENsSIgvcpp2QbwXQ0DJWEskvLfJLc/kv9l8gPWUgVyDyWj60r/A
	qiytn6nF06/Cx3bWdTW01qYi7eSwYm5xs9CTC1fO4NWLtOV+NM1lpduM4EbQe0b2
	bxbaMQ==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk82ttrp3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:17 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-677c2db10b1so1845929d50.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200877; x=1793805677; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mtyicMFphg8NIVF2KmS0oSGWOULir4B5NzOfXYC1xoQ=;
        b=btxcw3emuBqHBnpeYiBjWfju3hPbKIbslx7ZDS2xcEuWLXHHJhOl9Fk9vakiqEbl3n
         yx1wyUbWn5BX4cs9sfbVfljH2Do9RbXBB0B8T3fHC4qa4IgeIafMVHB3Mj2feviVsT01
         tBb2ur5cXRiKFWzjlAIBP0mcXTjhayfD5UlGACbYTsOzu72st4pjPDPErc0tIHDV2p3l
         exw/YSAG4QYWaeOS0F/MOC5gQxdrJNP5lrBTag+uj+I9icDlO98IGBO+I8F6IXOX67bK
         +7H6OoJvMPyiKAxAy+orPb1BhKuXXH+AbHc8CSz77Z3bsO0cCKIU4afXWo0w6IsfddWN
         PCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200877; x=1793805677;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mtyicMFphg8NIVF2KmS0oSGWOULir4B5NzOfXYC1xoQ=;
        b=e3nGy4/tN7Y+FjPNX31chQXfskINmOCkt7UucRc1X7IMXrQHNkb4F3c7/0bNo/jvW+
         a5u9LyPIkhebVSeM7ufARKHNiAn+HDQUpNwKDv4bg4hKqptRiVJ7Skxa3+t9lC6KEgeV
         ShHecVHl32oqMx6Lx0R9d1fzaazqczbmx2VaYd2L4+LYHYVafKwrDjdnR2KoDxdkz+Tw
         5hf9rVFsCLbG4OhpNNs6fuH1FFI26s+tmrjN/GszT6nBrgjySh1Sy1x8rwf7YqToY+c7
         tAWjpoLLhzrXWPOs8ByNoGvTgvrBA8ZB2JPcbYuOhSHG0vIabkDTxciD2WfZJR0Jc+Hb
         6img==
X-Gm-Message-State: AFq9FYJocB/j43/eEsW7yWJZLA5A6/nQBSxD3JY/NyICqDMBVJTT5tH1
	fjXeQMd1e2lmREaniPMBqGPweXCb+S4pQUfsx1zJ74Hm8A6mWW9kS8IV8Ex+7/DY1LTtKcmVV49
	XlyALFwhJVX1LYAmIzuELmf49uiAnfGwrN0IDrhF1hlliFZv5/3+3GLw3f7nepj8ROQVm
X-Gm-Gg: AYBFou0r9QbPCGSX/aPr4wCtwyUs+uoCT/n7SWzFJXghRF3tAg1/7fhdk3x/OLzJJSH
	dcFP5L11VXofLamXi9uQruMWUMr0p0mmQySKoX+diOLSBp+3+PeFPSJBDot1zf0pelmMMncUZhj
	VBLEUDKlfqwH+jyH8kOTwD2oCT/+1bHF/qLL/pg4oDgyX/9vss7il6H9uLqDX+8GzdwZVrhMiTu
	5m/+6jzLHgXpNNaO6nX8SHfQB9Q6RIS+cvoF0ju6Re2dkRzDklQrTA7NfHIVjkHI3pbAfOfGnK/
	1J28VDrGUWjolrAqh7zNOjv2rnPcBZ7QCxUpp3jcBUtyb5zWkoz60bblHdN/r69sk7VULbxZDpR
	GPHZtbboCsHP1SgSdjrKp9UYUyJxbtFiwR+Ab50CPvcPGraOoP6jXE6j3/NyAOL6sCjtHX8AZMS
	Ldb0d85aEIHIzFHzjIljikhv0L62qie2HXfActGIC2eA18DyZmKfk8awVasr2b
X-Received: by 2002:a05:690e:2061:b0:672:d32d:999 with SMTP id 956f58d0204a3-67a7b9b9f21mr1313086d50.14.1793200876531;
        Wed, 28 Oct 2026 08:21:16 -0700 (PDT)
X-Received: by 2002:a05:690e:2061:b0:672:d32d:999 with SMTP id 956f58d0204a3-67a7b9b9f21mr1313046d50.14.1793200875859;
        Wed, 28 Oct 2026 08:21:15 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:21:15 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:40 -0700
Subject: [PATCH v23 06/15] media: qcom: camss: Add Kaanapali compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-6-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
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
X-Proofpoint-GUID: OkNRKg1AypWE39uPwX6fo0Aunq-515dA
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX6cLGMBqwVoOl
 Reh+I+/VJr4hDgDNl7DWkA4ZBblWXqnHHHhC4FYoE4EI1Gt3hJARlWw0s/YCDJmJDrv81SkKef1
 qwfwVc5/BDRawuuywIyu1WH2Fmwqssw=
X-Authority-Analysis: v=2.4 cv=Tr1zFzXh c=1 sm=1 tr=0 ts=6ae212ed cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: OkNRKg1AypWE39uPwX6fo0Aunq-515dA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX8ygNSg3ZJyIt
 Br2wkSJxnzYySn9d7M2rcy9o4z9brV+gStFxIcYSwm+2eh8lUUgFj4uJPFJQ/oGXxShqvJm0dPP
 DihNGzjSNfjt0fjoZS9ABgLz6as5daPBGYHBez0YiZgtR3piSM6l4T36AQEhlYOs0RVgQ+9elce
 YCU6W+zMdoGDEXzfN7sfIDYHWyilxJGcj6l59za6/n1ejFWlT/zqSwANpUF8mnRdg6GdkDGW1vQ
 nx7OdV/EBndZtN6V0mnTdkRX51ROzVL/AMSSeINWYl/WD/ci0q11wKyyAunyQzZiD34SL3PpmZh
 8ZlPYcXkEGalFYwzvHRwf+20ttxmn6zKLrS+QXLFN6572A+y5LePOxXMiP2T2dxcfANGKhTaTGJ
 ufxCN6YaVWBCnLc4N1J0kLg3znZQ9QXQA5OwFHJcU8G5Y2/gpoeyMtbyyjD9vT3odORksS/Kcn1
 WxOgZpOm/g+Zt1P33nA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 phishscore=0
 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082118_891583_539F09BA 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -1.5 (-)
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
index be58a39f4a8b..98ec23c39fda 100644
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
@@ -5589,6 +5603,13 @@ static void camss_remove(struct platform_device *pdev)
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
@@ -5823,6 +5844,7 @@ static const struct camss_resources x1e80100_resources = {
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

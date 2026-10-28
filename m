Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D811A60A3826
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Wq3Vqeuz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=KRYNh0yF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=cGWZamIa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TzTlB9prn4eOjgoJlSHzKU4cO947kie4gC4vWwxNraU=; b=Wq3VqeuzAaVgROM6q3TIiHs7Cx
	9E20zK/27j0VlcGztOF0xGjwajjALPALT3Q+V1qwlN89yF+JkzKZJFHiPfXfgnaIM7PVCsi7/6hX/
	9Z7tdpZ6KFkGCqNMEU+gDxAiHBnHcdXTSPpzlxYAO1+zW7QdRnMlKAnTpNPbL1ZLwUz8TbZwhmd6A
	3Dwg2lMVt3/LQWpeipTrL0asXmzNvfQKxwXehw6pwQBHv6cycJLKobV8sz+yLKQkT7a3X5eQ60PEZ
	RGoy4dpTUETTkczsVLoMmEY4msoUjQOFieJjule9Tzw4/Fj3NG564eEiJnoP3d/WdFNZ4ftN0cpPg
	jFcFCmSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Ss-00000007KvO-2WGA;
	Wed, 28 Oct 2026 15:21:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Sq-00000007KuK-3RG9
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:22 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFA5Fl1471897
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+GbF0SHSxnQUeknZ/fZb5yRBXRMQ+BnBpWKpFMjS6XU=; b=KRYNh0yFFoU0mT4v
	4JaShUVeJibTvkNfb1NC3dTHo86I8hUZD6Cl+hl9C+3prZiaQzptS3YxxtjFSGU9
	DesKvPo4MXAN2DPWY1zPzjfYu8LYhpuHFnRf9WiXUV7zbhjY0VZCbX2PL+6cs2GK
	yLKD5xo2KFMmMIncqfpgazcS5N7jnpHoo3Y6KupZQl/n2axKtF6icblpRdBib6Cw
	WSkPFJkUTB1LaLIPOQ24U5vzZQYNm7MidcJd4WWA6G6LF3/N5PU4ppR5EucnEFGV
	J/yIAmT6NSPbUbJOm/kIToX5bWujlEAVLq+gmFhGuFxVmkY+MWNX/IErOg1JqQK0
	ly7Rsw==
Received: from mail-yx1-f69.google.com (mail-yx1-f69.google.com [74.125.224.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkfehh484-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:19 +0000 (GMT)
Received: by mail-yx1-f69.google.com with SMTP id 956f58d0204a3-6755fef4f96so1755321d50.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200879; x=1793805679; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+GbF0SHSxnQUeknZ/fZb5yRBXRMQ+BnBpWKpFMjS6XU=;
        b=cGWZamIaYdZY9smprXhkuwljcj+KWKE6NgHvplD8DshLu+Ip4D6bcJ0nbeasQ8T6xD
         20hbrVysmAEc7R4RTjji1TV5zEcU8Ydl0E955HrHQb803YSssiXT0p9/DX5H4XGtCUeE
         njSTrayuavpYoNQ0tPmyGh262p+tBGc4BV6zuqDrlVPBYCzcYwc4E1UJwgK1WEfu1oV2
         Cw+SrAZcOvKk7+KGZ97ibn3xOWylW3Az9sMLXSAdy6i8sqCOtUxtr+Sa6jSB0XF/1xTe
         8JvSiE29w4olFIUVIvX+zdgl/CQyg4B4I9C+7tjMD0CFVPx6q7bwB1QYF959R9wknOLE
         dTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200879; x=1793805679;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+GbF0SHSxnQUeknZ/fZb5yRBXRMQ+BnBpWKpFMjS6XU=;
        b=tkNljQlZRZ2NffkMO5q3QDBxWbYuIqE1VpOZlBMdLvsYPQ0sRsG1h/noQJV1Tqd282
         RXPB8nyC7/n88AdDxh5EFOCHKV/j4vVg6EMN+b+JcwaTLUOstI8kneeQhrqmFBqY1exe
         18z9RUJibfrE4I54tNSxUjyv/GexGkX1piyQyVRo7zW0fze78bFuUJvGzjIkc1qPswap
         1NiDMfnCKqKJXZDudh0CG/NUOwnS1aN856pnUFtZXth5urWJiNLFXtgOgjkGvdy9mSyl
         y9BUz9scZq2RR7h5f2694JoVKwAYwPeoBj4oROA+4xlhStky5vwZWSWljk3g1S7xZL/x
         8ghw==
X-Gm-Message-State: AFq9FYL+AClwJtVby8wFjLmcWnTqxN7uT2GnmVARgG7fzeWECXP2K6vf
	vthC3xWb7WFN3/x62Y7duxHJRdlFntt40s0qtBm+D+2wnX+CZH9YLiaa2psaz4qUMXfFtiGG7Nh
	aXG1yy6ZoiraGIsknM0X7MfNisUzg79umz5jOFFtAneYMdvoSwoW3V4+9M8XbGlNYNeFg
X-Gm-Gg: AYBFou2K3bnswX1HqD6LhSVZFPpI/cBLCFDZnHmuryCOQ1UoVcER8QKJCU1GsITsazj
	UqDw6iWdfB8CPfzTgrJZYsDBIrtu22dwQlpnGulh3MxVVku+8I/Pf0+nDxZ3lh52mxXgpb5IzdR
	2ScSHj5W+TNAMlezGplkRWnoXM5Yo+n00EnEFacJuOxcTIswwX0Uq7HCUOYbxLxrTyUEkO2dZTF
	d+ZXMKHhIYcAPgThrIdzSUy+IyeBT9ADAxAdo0R+W+teLE0EdG7u+5pP4WcETUCnm4FfexXUN5B
	BzKA2RSAL8tGnCWmTGAyi0kTWJenfQMT9Oa7TMDvfp+AjeDiHr0Nb7+Kam1Ho9QONnrSX1sELYD
	r0rxBoHCxT78SLalGPtLD+a9KsBKSX1AaVaylhE2lA8ZTWnATLnlDnIhC4bQtW51GDjoBApwq0k
	H3Ak+VevsoczDw4qUB9n3w0bIzSWlxyACsoX8YH37iFeAwMocUUVXqgH+NszQ5
X-Received: by 2002:a53:d20e:0:b0:679:cc49:55c4 with SMTP id 956f58d0204a3-67a7bcf7ca5mr1298203d50.78.1793200878670;
        Wed, 28 Oct 2026 08:21:18 -0700 (PDT)
X-Received: by 2002:a53:d20e:0:b0:679:cc49:55c4 with SMTP id 956f58d0204a3-67a7bcf7ca5mr1298159d50.78.1793200878048;
        Wed, 28 Oct 2026 08:21:18 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:21:17 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:41 -0700
Subject: [PATCH v23 07/15] media: qcom: camss: Add PM clock definitions for
 Kaanapali
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-7-95f250b18612@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX7DBztjUoqUcd
 NwUx+/dkpqhektXNQXvYMW+dZhc7q7Ui/un46tiKaeWOl0Ivj+uxAcpczGw679G+gaLCsF+tcSu
 KkjytisUgd6vMAWiDR3HXOo5Iiz/oKa+11SzILiHKnEu79D3q1LUCHjbDFpKWpz1cbgIcQ1WosS
 BtdtpdZD56EURprI2k7wa7+qJn74Or07KfZuoxdB8MAGXc81Iowz5VMgiinxQIiwJiz0e2qQ4QA
 zwGGPjPDonNPo56HCSZ8E8Y4Mk6S5RHZjpTfNV/J2GzxelqyhavLSuLI46m7gn9NMhRaYGF0DVY
 P+FHIxmEoTJSj2v1jfGc+SZv+i2K59R41vzTA0KnNzFZQJDlicv5KWji3HbzzTPCl+l28ZZPx88
 m8/y/26Kug7IDYvEDx3m71voBYMxHTLh+3FmcJNtgHGLtjIJ7TtbT5imSefqyY2LBc9ZK7F9LhV
 wWZ55DjwLB8kfOIRp1w==
X-Authority-Analysis: v=2.4 cv=A/T5rKWG c=1 sm=1 tr=0 ts=6ae212ef cx=c_pps
 a=J+5FMm3BkXb42VdG8aMU9w==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=jNWLojqFtH_lE__qK8UA:9 a=QEXdDO2ut3YA:10
 a=Epx66wHExT0cjJnnR-oj:22
X-Proofpoint-ORIG-GUID: XQryKdiaC3R09KIbAgiuHxVnG-5EV93z
X-Proofpoint-GUID: XQryKdiaC3R09KIbAgiuHxVnG-5EV93z
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXyzfERoDO/FXI
 AHrHiQ/KRsDUOzThuU2LTwsNb9uLRi1XWfEAob2ld6Q/tGuuIxwRjftdO0/xtpPgycO0u8ssEzn
 awx+zLRS1CLIvtRGDe3seJlb7xrOSg0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082120_983453_209D74D1 
X-CRM114-Status: GOOD (  11.26  )
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

The CPAS AHB and AXI clocks are shared by every Kaanapali TFE and IFE
sub-block. Register them as PM clocks so the PM clock framework enables
them once when CAMSS resumes, instead of each sub-block listing them and
taking its own reference.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 98ec23c39fda..a64242c66cf0 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5606,6 +5606,7 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

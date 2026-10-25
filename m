Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3039B60A2617
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dEIzlEuR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=hrC9ZTPc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hST4NhiI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nnyQnQJKTkvbhz3Af8XZ85zzkHjRPhN6K1O2O4EHLt0=; b=dEIzlEuRB5kvyrvO50gU294NIu
	OZ/ChSwsgHHJwikEyUSFj4uXNskLw/HrCBWXBpOnhsDA5UC9RXovT5YddmioRg8uqOJfT3BzHJqLE
	0pN2TBNwwuOCXbAtHGRm7e5DKeP8vjyN/Zb9N9BtzCYNYzaUvVZ9+6Zzaj8jhvbX51ijY/A+8M4zi
	VmyEmiWqKrlTYQ6vpOn4iPOpRulr3g3rXagqv3iAhQqP5wco44OynVZcgE9QkyJFLVO7xhrzXcQmT
	+E61N7lQOp0Mdeimb9BBexWbGsHpmgWsPcUK8dm5afJA6dTfdZXVqeRJPSQk4ILkhwWQlB2qPSe1M
	6vJHxR6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojp-00000000gma-3hh5;
	Sun, 25 Oct 2026 03:17:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojl-00000000giq-405V
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:17:36 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69P163is1585572
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vFokErhM9Q2nJQ0re6oLwwnWeG49znjKbOg1X8oBNrw=; b=hrC9ZTPcSZxqR+y/
	4egwq1okUI0CHBzrb847IFersUjlMVzc1DISsIkVwC7W+5XRNnTRAbtGBAstQWph
	AWgFgMvdIC6FkU4gQnGJTFU3I/64bId9CfwFcuiq+rkPxEnmILavMhsUL9hlntwV
	+wqg8MNYwGCM7FX0qBLGnlhNKSWc0JZXgRN+STp8Sp/RJ5Ss1o1LvOl0RpgnWVlI
	5a2yWTbRDVjeb8ejK/KzkRqZW+gsyNlhG7vhJqsoBLX3Z7T5CV5qllobI7ejJMP4
	X4roh+FYMJ/RzJ1l3RztXKjFSPQhRveVHztGwFEtVPpV6KTlntSGOiqL4gRWGEUk
	Iim45w==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgnuka5cr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:33 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30bcb065bfdso3512051eec.0
        for <linux-phy@lists.infradead.org>; Sat, 24 Oct 2026 20:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792898253; x=1793503053; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vFokErhM9Q2nJQ0re6oLwwnWeG49znjKbOg1X8oBNrw=;
        b=hST4NhiIcfHuDqDpkqR+bwZxS75YQjxt97uRJT56KzTR9fycgTPF11h5F7F8u3ykLc
         NBwkOcSo3B5KZQ5QcJdtHbxDY4Jv9cjw0xpXCl1iCKs+Ua1vq0nTNI/u+hou2ZLe5E5R
         wle+GYPouWqDWFyyBw1UPHpLs9TSEwD2chgiFEYUeGSrf2RYruWeidfMYT+5eUK/fNOl
         nCqn7bI7GK4NCAzkMdbQEQfWdwkA/wZ8B8ms1GtozKZ2TgzQVpsl5F6Dn1xUyBHq7JSC
         8m1IyuoqIyOYa+YrwPj8+TP7KvCX56e3q2f6RFVD0riz2w9/w2Ro+Y2sN82Q1djlIVBO
         /TWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792898253; x=1793503053;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vFokErhM9Q2nJQ0re6oLwwnWeG49znjKbOg1X8oBNrw=;
        b=VNq4h74Isl/SOgsZmbdx6s6IHz9dstFgboqaJQECv+KAbRm0SflBFEpmeRve9LqWvc
         B28MZO7raFSA7c3ykW/HJgMpxGa+ZZtifCUF/1HYn3sfuzQWJF2Cz+uv+fxSkW5ArCaO
         +TtC/x1u1XLtNcKa0nF8s1BjGWPpgFt8JZzlozOYaSjuKpoq21VHQ1fva3NI+5PLbJq7
         SJBy5circ2qVbRtKzppbc96GUVBcv2iXsNiC/UG+8UtDWaZiXb+vqwtjRMIb3+WE/+HN
         +L4w0i023iV6X/TKupQ9Gw/N70/5aYwnPlhVJINVNWzkZr5EXbZQ3PfaYb2oi+kXqy+J
         XAHg==
X-Gm-Message-State: AFq9FYIy8UTMleZb5fVYG1pUrSkwv2Hzwrnvmc0FSxj93uoG8O1SahVz
	GF5hNyNBkr0RyEN6oRxgh7Mgc0iSfp3zbPav7mUCJ2aSwzLsGe838vfXbuuJ0+yw+MzRs6dDlUq
	pFcRnIYMHn/XRPY+fO3BiptDl4WmQcKcEyAqahG1Tjr4yxLFlqqBnEX9Otj9uJ8ogTH+3
X-Gm-Gg: AYBFou2kCyAG/Y54d1JAC3j2hIGO3TD5ip5/XofUGMFjNoeL75xCd+UTVKI8N7XtHID
	iBrvyCSao3ikMs3ToH1hAzpRhWYkHBPQXUGb1/lCaif7iCXV7mt4UV5kuuNEyfPxtYhEUIiAThL
	J+551OoknkNbkWOAFrjUj949x3ksU4iWdeM6IFo3yonYCuV+wVouHUuvbFQlZukMA/pIiHlQfYX
	aNvi1mysFpS6XoeDk+iGrtBTZNrtaJtf4HR7VojXkcP/EdEVbxeLsYeWWUq0v5F4tiy+MBT8S5x
	VobBZtS6fpDJoc4ZlLuU4Phy5W0FcFUpQG/b/KgDYGR/jZI45X18C1sYNxsWubBt1LNAjBifGwh
	cCjXbMyTVi5XvBUHCHUm6K/XzWetsgWA/FfLwRAWQqZy3L4uo0e7A61lzkSFrmg+lZpAcNRukzR
	S2qIhmZoom2Q==
X-Received: by 2002:a05:693c:2804:b0:368:40c6:3a01 with SMTP id 5a478bee46e88-369e8362dcbmr5169609eec.2.1792898252794;
        Sat, 24 Oct 2026 20:17:32 -0700 (PDT)
X-Received: by 2002:a05:693c:2804:b0:368:40c6:3a01 with SMTP id 5a478bee46e88-369e8362dcbmr5169583eec.2.1792898252247;
        Sat, 24 Oct 2026 20:17:32 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm24133054eec.23.2026.10.24.20.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 20:17:31 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 24 Oct 2026 20:17:26 -0700
Subject: [PATCH v22 07/14] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261024-kaanapali-camss-v22-7-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
In-Reply-To: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=Z8Z5j3RA c=1 sm=1 tr=0 ts=6add74cd cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=JczS9Y7s0yypmJa40voA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 7aoewglVZOOqR68QMH2Uo79bqss31nxM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX91zndHvJK5no
 9XoolqeAP7bc1KmtZ1cNZA/SjVX7x21J/+i4fHmOOQ9MK2uU3X+rOula2q6EO2R6mINjCrP6qAz
 fDR0xS0CfT67WrEhvS+dwddN14cpbteNAriqvCGSgtML2x3ivVO30GbqqxRPHqH3klIvyHqqsHn
 BQUG6RG8kIDDUc0CmXnTYK+vM0TJzgkkhmRNDODy+GfXdZIxF6nTLlXIbssW4FSqbWwa5BtJBfH
 4sllAV+GAschkMSLzp7P/nx7FInyQ1OnNVv2CMULYutqQENrEvY5beqkLD18snHh+5DkjJcRRfK
 0K1s8ma+D4/ChPS5ChWr52c0LhzyiogSPVovBd0sD9Rbnl9OrH70DGV+OOfJ+kgrzK0GXsjNoWn
 hAwqYdVv6UEOQWluhZXFqSERCcCdrqSIj5MUFEtJ8te+sd3XjD6/j9KBFLaD0t79joOiCPnBXP7
 RIbzuqxMt7U+9MZr6kQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX5Sa7IdiBAqNU
 +p8lcDmYBg/CfiJ96+/bm4Sk+eNTtvYwz7cLbVAtp3MGetsmaD2ai+gbU3cqq2LJ1lyl9KRaOGm
 nJYENii18uaGacAj/RL9aW9skvKf7NY=
X-Proofpoint-GUID: 7aoewglVZOOqR68QMH2Uo79bqss31nxM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-25_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610250012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_201734_026483_1547D211 
X-CRM114-Status: GOOD (  14.45  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add support for the v2.4.0 two-phase CSIPHY found on Kaanapali, where
the PHY is driven by the standalone phy-qcom-mipi-csi2 DPHY driver
rather than by CAMSS. Add the mipi_csi2_dphy_3nm_kaanapali configuration,
which reuses the x1e80100 lane sequence, clocks and supplies but selects
the v2.4.0 common status offset, adds Kaanapali power domain and register
the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 47 +++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 98ec23c39fda..0358ee384012 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -38,6 +38,51 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
+	/* CSIPHY0 */
+	{
+		.csiphy = {
+			.id = 0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY1 */
+	{
+		.csiphy = {
+			.id = 1,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY2 */
+	{
+		.csiphy = {
+			.id = 2,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY3 */
+	{
+		.csiphy = {
+			.id = 3,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY4 */
+	{
+		.csiphy = {
+			.id = 4,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY5 */
+	{
+		.csiphy = {
+			.id = 5,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+};
+
 static const struct resources_icc icc_res_kaanapali[] = {
 	{
 		.name = "ahb",
@@ -5606,8 +5651,10 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.csiphy_res = csiphy_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
 };
 
 static const struct camss_resources msm8916_resources = {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7824760A5BDF
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B/igz9ll;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=p1PJah0C;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=H/HtPCcT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=De/V8FuWShm65NKRIcAIAwBP4ZiFppZHErmHn+LFRZI=; b=B/igz9llmc1WJOv0puR0k11Wep
	LHeghsTK5Wrf9Z1yUxGUJg/0sXcM3o/hSiZ5ltt9J5HJArAjJnz6VRS49RO8TZdzyVOzfIDmmLsJ4
	/FNCelYEvqTexDtMWJGs0bLREf3/P5uxX9bnZ03gzvvUGrVnK+MGPCEN1TecFLlhmKaS+y1qIIqK0
	Ru2/GYHrdLhXSh9JOzYnXg6zi2lkps08K/7r7fQnreV+C9mP6yWSgl47DYf2FfMPXebr0K5erP5ow
	sfhxKa3NlLR9x+4+JR+aX/mt7T//ZNZa4lTkL1K7VTFoXsvGwaprJOKCHimQw2sqIpAq9uyQ295bf
	uAfqqPvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvO-0000000BhMS-08Gk;
	Fri, 13 Nov 2026 05:34:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvL-0000000BhLE-26HJ
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:08 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD57A0V073462
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vtvmwMJ33RWSUNmE5I11asHiWXJILMh26kLEbzoo09E=; b=p1PJah0CEtUdWkpN
	pnByS5I7/mOuo0ZDI7Hvsu9DOG9ukIw3sDDuisGuJmJ0cnM4HgLj3Uz5WEoJKEnv
	GOp3YF7YwlYQpjd6keOPySolviUmZojfgCQZoCWp9nvG+0r6ebEU90I4NiqEaWUo
	VclKAb4oPLBzEmQGClV7iZxVsDzP/IpkESkyhWShzyFpDcBQoeGAkrAtScuy/aAa
	3DiV9LnFZ8eUfihQM4CwIgrE1ioa88MpoZ7NTGbqQod8X+Io5FWSVdN0+2WsjlEb
	E0ulUCmKRoSfSyO3A25Hv8qdJwRdBzMmbL+b+c60cwV1WhIjFsplTXXVW2OXJCLz
	Jm49OA==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwbs03mdx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:06 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-4ad5e0ddc90so740288fac.2
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548046; x=1795152846; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vtvmwMJ33RWSUNmE5I11asHiWXJILMh26kLEbzoo09E=;
        b=H/HtPCcT6jv5KO8FRF2JAboG+y7Kq+zrAsVtco9OlKShkVrYiAUJNafryrZlcXS+64
         QhhMsFra507zIFHzOrAFjGQF0+iqNgnpYh4f5wigUZTMNRx1C16vVU0FrrB7laEeN5+6
         cngmc8QeH2zxsz1etL0FejlyX2XYHqYlSuSWbzt9myR8rU/G9Ex3G/jb+Edvk3P5FFcy
         7PLtrvMZLYXDIRdoASQ1dJN5N6Ula2xnmQYdZvQUFhKuAYfer8VN8ec1fXz82tI62od3
         EYQXXM+PaKG3YUoFdoymeh3H5Rb5WXyG0+AXUp2AeHX+Wny7Q4sPdidPl0eHDQhN30uY
         nmpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548046; x=1795152846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vtvmwMJ33RWSUNmE5I11asHiWXJILMh26kLEbzoo09E=;
        b=CT5el1N5pViNGNWXOmzOIPAMwdzkjtD+UXB09A+VOll0KgtbrbAki4oW5v9P4Gtg3s
         gwHgmAPBVKzdRVS1U39AQQX9KnLg98ZBpLY3Q5afrsCbvy7WMPkdEUPqTBr8El/wpy8V
         BrU1SmMKne5IZT4xAEsRxgzAqEb1Ao0o/kpOi/1A+IiscDEtVAare/JSsMPj0pYccw/M
         Yo6gOXZ0r3PVzndHJhhyGRg0x1gQYH0AKDeHiY4Tqmbgq2+ErS5Xnc9NKFO+B91Lfi1a
         VJeScsCfWBEXX7JQ/aPjUISSI19oh3cxe6rppp78ChM58+FntsXEka7pOp9lWklu1IBK
         wuxg==
X-Gm-Message-State: APuU4Z+9zurWizjDUWZZ0VM64IBogkyhZAF49g1NbNTcz7iTycdHmCGh
	VuYoh+AJe7p+VqC+w4BekKMpZ67ljSUD63CbdnztyWUg+YKjm4FUg/FDsUdcYQgsk5x+U3H6Lu5
	TMti2u+draOB0HlevpCScJOnTYE6X15WRm053+F7nZcRXXq0to73JE99wMkB0tjeNOkcc6V6bYs
	wsngM=
X-Gm-Gg: AYBFou2tlrxghA+XQyl0Xucr7Tyw4e44sMsxQC913KfEKSlfqF6uOIrRYeGe+z+rK8d
	nFE6lpAh0V9amAxfuYZYRe0+J3I1+A1I1cG5CNfrHNDikC2uCwDIqRSW08snFnzryKjIRIlWKjQ
	bWy/Ovh5B73OFhGmpAOVIPNpc22+RYZFu7kXOmMhS5p/B+iG3H7QvTveHJID+aNxBqIvyyYk4zy
	pETIWku1ocJuCyxdFNwcf9WBrQovto6GbbYQNtvSB5TJZlKwQ++XAlpQMJCUo5DcuOriRfg54Ou
	2MDJnLn6EpOkWm7yTP+wc8QSp72xmOl/vurfBDFQZ8+00fKps+3fWGqNh+rpdp6KSuY8APhGjAf
	dNx3pWoULU0UBuoY6bnOXlRFlqUcTcDkRkFhwR6CfEPXfVuod7H83/OhXXQLhZCRfC3fUnhfX4q
	/SblH14UL7ZotNnzq1YwzEoLUmBBLJEi8Tzdl3oizuuJ7JhGPHhhJ3U+0Muohs
X-Received: by 2002:a05:6871:329c:b0:4ad:514d:b19c with SMTP id 586e51a60fabf-4afdf49294fmr1673516fac.11.1794548045779;
        Thu, 12 Nov 2026 21:34:05 -0800 (PST)
X-Received: by 2002:a05:6871:329c:b0:4ad:514d:b19c with SMTP id 586e51a60fabf-4afdf49294fmr1673501fac.11.1794548045271;
        Thu, 12 Nov 2026 21:34:05 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:34:04 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:38 -0800
Subject: [PATCH v25 06/15] media: qcom: camss: Add Kaanapali compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-6-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX4Ec9KiRBNNcn
 FI0arOae5GD1t816cStzDxswNYX+t5UhioIJUAwh6j6CI9hj+IjlR+WNFB6mq9P7WUmHgdWKQyx
 n7Ii/21jlPM15HKDkY7JfuV8M61VyFroeKeYdW/uKyo9aEyCLRC1VzPlQKn3xiOH51GR1670D9q
 iZOIdih4X9v75hUp/CkduYcqdIE70tpxvtF/fyHkZt+Xp+n1sQxqvwhsy4AEdRXe97xwsCbI4ZF
 Fhy1UVKA2SrS+89aAooP0LI8qJTUlBN22IoOhnrZaAf1kJpllVzjrcZ8ZPDL+008UOj8HuRcmlE
 sQojd9XWSwsfg7EtLmort0I722KiAOyESvzdjpliuIBlmVpcBCheshhHHnEqsyfGXIQDbIVK8xx
 xIlkcatPuVMFT8isWL4zk0jcgSLhxitvkqFPfE0D/yxX8Gm2pPhmFAbRxC0u1QRmwBJ0jqjvRW9
 zWxxpjD/ecnGmLg1xiQ==
X-Authority-Analysis: v=2.4 cv=AsF7T+9P c=1 sm=1 tr=0 ts=6af6a14e cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX+YF8GJoZP6WE
 22t9THCxQsY54iOt+GmuxyGDyrLwQzttcJtonwuxS0O6okHdwerYW8KGSJOTRZJjjX+eHCbHmuR
 mNceiksEZsQvf5s8iXRm18VFh8Je5Is=
X-Proofpoint-GUID: KDXyBA4OPORZAkqc-91y63b_oNXjzzb_
X-Proofpoint-ORIG-GUID: KDXyBA4OPORZAkqc-91y63b_oNXjzzb_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213407_671466_74B64A2E 
X-CRM114-Status: GOOD (  14.42  )
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
index 9521301ec972..cd6adf749c6f 100644
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
@@ -5585,6 +5599,16 @@ static void camss_remove(struct platform_device *pdev)
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
@@ -5819,6 +5843,7 @@ static const struct camss_resources x1e80100_resources = {
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

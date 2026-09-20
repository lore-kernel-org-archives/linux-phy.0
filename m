Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F9ECC982DA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 13:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBLoiu+8nE8zMVveOpgkP4Gh/PoXSs5TmAbkPh5BH0Y=; b=zISsjhGrs7qD9p
	IF9Q1bmCPYNB+IThxhSf3J6Bjs46Z8Q/gufIQAN9fcgSFNOqsko4GHWu1tiuw5RBP7owOKuLzdCLz
	I3DVa6mzvuVHIF/Ki1KjQv2EVn/K8ej+ALnTDxijYDlEzFo7lZED/svNdu/zqOFg057Fu5Vg7gseN
	uGZ79nvUWSkyGTbqguFegpXG6NDbv8Mm4ujPNLE1M4GnYpnSoP8zoDJi+ddVEFeHGyiCX5RHUW3OM
	CWtWeL0St0N2bZMJKZqG0UrIwmw6n7Zx/sIRldWinNnmk4Lg9Tv7OuD7prrSioyBIG/rXmShqfvEh
	+E7KqDSIQo2BuRVMIyww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8I4h-0000000HX4o-3GP4;
	Sun, 20 Sep 2026 13:59:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8I4f-0000000HX41-1iB1
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 13:59:22 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68KBo1Qo2761355
	for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 13:59:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o/tjVb+gcb3aLNsO6dqaSasNSlJxZwDGFHHxqBqYmgc=; b=b0D4mucqdjnxFSnR
	idhrnrNVtokvJQ1HMBF0UmjetA35YpJ/N4nJpcRh3RgRQmkohNlscnmpthzrbGAE
	YvFE+XJduvnjeQGOvjqgIfWkiL8WiQXLmd7lqw5INJYd2SqiUdDtNEaJNBG55HH/
	vq8aGpmIPNk7n6Zpf6ALkvSQMREMMpZFehOXNH9VuUdPNRZrI8Y1GpGc9qga4xsq
	c/y0D7dERFqioVWsZilM9HJYPLqDPEF/olLKQkXvegFV9dAyyUtIHik877oMswoe
	QTRdlCUAT2oskcdzUeCxQ+zW54EBAG+k6CgjcJHQny1I/1gjHoGgaMOLzcXHsT9N
	TAkFxA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gshd637bs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 13:59:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-532abbd5a51so36131321cf.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 06:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789912760; x=1790517560; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=o/tjVb+gcb3aLNsO6dqaSasNSlJxZwDGFHHxqBqYmgc=;
        b=fn30TIrvu0i9isqLFhpx6f6upOT3LzI9YFjVjwI2wxhDYSG+MtIJ1WH/0n8CrXey2H
         h2lpvlUNSgESuAo50djuoVoLBzRm3CKjUfhHnDuhmS76/Nv14yhSYrAdWHohtKU5kOCB
         y2MdJpHbCagDDXwqewh2SS5vYAdOOHrniHYPjlmnoehsjRV3YfVVyKinT8zYb5Gwm0Mm
         rBpbz7xo8FagJUvKdwtyGZRDZI4TN0BnQe2mb4RGZBgvkov8ah0LAJuLb07+N6V1dszw
         i0oc5Crv2M1/G53D6OFJT/FZTqOG/ZNL5Q8EkHSo6Ur68T4jqS1dGyEtwDzqJ2jMTn8g
         ewrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789912760; x=1790517560;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=o/tjVb+gcb3aLNsO6dqaSasNSlJxZwDGFHHxqBqYmgc=;
        b=lk5cKaghYFnkW/JSrtCMNxgiRdylbitaphIpLFRD36rUIXiB3RoE8Ng4PgpMvn0veM
         KLRnJCBwcc7YWQ+6Q5YFDwok0DPQcZRwFqEaMG85zTWfi/gfYYQy1ejkBAMQw8AroTmz
         9myTsLNKdlRa55Xj5F3YI+bwX/YoQ+HdHqnsTQ4HKL2S371gUNIWa0ItKNcfOrdbo8Yo
         r8TAgXMs5HxzVdhs+mM8t2WfLVpH9FSFfS959kS6kZAWAPk0YkQPjMvxFVu2fYxLuMzn
         Gs8denOlXVc03SxJQEb6CFhLemdykv8aQdsT+y6NPRUEpMPYsYXKzUpsgm7DwbHaMN/v
         w6QA==
X-Forwarded-Encrypted: i=1; AKwUvByQGLZjCd/8CaIsuV+kM1tVocNfisZOdfQYP6BMU5pI26aDaCeshVS3huniQu/FTTU2uJCyV15pZxo=@lists.infradead.org
X-Gm-Message-State: AFuF++l4R/gH+PwUev1Ot3z4sRSYElD384l45Mk+WkmLNSaLN6dLZzUg
	SuREYHjTI4eaMxDiljkHOPx0I0GBUIsEuweROmDqns7Se/SdCTnUUn3XippYU7SDdc6JgZ2FvM3
	6JHiZLEf8MMIkxKCY6ijH3MPvB5je/HOPeuCqWdKgWcyVSPaeBTHAoDq/fnNsSRgKkcIa
X-Gm-Gg: AYBFou1VydpBpBiEgaBeVOexsPaeQ0TOEzKHBEtyk8hTM8xHzZ0mBmfu6jy+pY5kBjt
	Rdf+2E+yGWcFcTtmb2wO6pmgk5DSDKZArdQfSa9OzMILf4vhPIg4SuWljGey6Nc+LPW8ykTUuCK
	nsqrhBr9HcIKQyQLwoTqVunT/brES10OItMbSJAagUva8Tk0ZtsSBhI0yEJnpbdVoVWrbihhiqP
	pujmtnIv+GV7CZAxu7JKhlYDAxmMVroRJQ2qyOuNPDnlMwui1sMPKvt9bQwevXRpsoWwyFME2g/
	dt6xi5ONgRLuNKwN2AVno7wPsVht+Mf9z5OPtyOKFv89DwRhJCM1ObhyFod9tuCfLwZEho2frUz
	e05ZgLRqzdjYhLozzPHVopkRbYorIy8m7+ulGinrFpMS1b660TwchqTu6URav46KV39IRxVYSTQ
	R69BnMTRFFDpZc
X-Received: by 2002:a05:622a:1f09:b0:531:d52:a271 with SMTP id d75a77b69052e-532b723f187mr64896831cf.27.1789912759668;
        Sun, 20 Sep 2026 06:59:19 -0700 (PDT)
X-Received: by 2002:a05:622a:1f09:b0:531:d52:a271 with SMTP id d75a77b69052e-532b723f187mr64896541cf.27.1789912759271;
        Sun, 20 Sep 2026 06:59:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a607678223sm13620541fa.39.2026.09.20.06.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 06:59:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 20 Sep 2026 16:59:13 +0300
Subject: [PATCH v3 1/3] phy: qcom-qusb2: enable autoresume on Talos
 platforms
MIME-Version: 1.0
Message-Id: <20260920-fix-qusb2-v3-1-c273e75c9fb7@oss.qualcomm.com>
References: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
In-Reply-To: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1371;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ymydSJJMHBeChp4mfLPqb/RHQeunYPQhirGCL58QSTM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqr+ayJOlEfhIDqd0CYd9784R82vVCvlr/+IRDJ
 AGQUxEvcYeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaq/msgAKCRCLPIo+Aiko
 1UViCACuTgB68G6RacTsQiuMj75YQJLMnbve1yLr/aqvhKxtsHmeaUtDvWHtndQuYBq3x1ByTzq
 fWnVDfsFqy7C+MfGn3ZHTplMemU1KJrhWZvdz/+ZPB7oqw5eVtZ9v+dgoDq/kX+0zMJn5LjdzHu
 jl2ml53ej+rTLVU/ZSLiMUs5tkPk3P5CTut61r5YpUEuQ8slaxLKE6D+CFZc9tbzWNwzWnmV4Oz
 F+KlDC19KrXtBOVbWTu5xaMhx4EVj8Bv8P8Tutu22zBBgBXzm/W9aDA6XWcaAHqaxMekJU+3w6v
 wxjKpKIIwSfPp48kvH08Tgmw0nA2w+I2KZ9iN+pdLsbH1TUP
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIwMDIwNCBTYWx0ZWRfXx27guOSpsUX8
 HA/2baBhmYqxY5A2CvqDyRUFUg+Zm+Prir3uvbbVa5Bd3sev5VTLAqCfGS6NX2CCegnrKSRjhxd
 EiZk8GO+88ExZ+ppA1hE6jVs/sqL0C8hIK+QPM2HVhIb8VQuniXH8I/mtY1FTiPS+43nH+BDay2
 yHVit7ZfAT8XPN8HXNLT/NKayaW8bI7oIeoSy3BDl95WamtreOd9j1X9hFlHWhCZdVy/qo4R/P2
 W51Gvhgo85lDHUP9Hq2vn2xJLGSI6QcQyEw0maZrf53jDRhW2tC2gUWXmpkGs1KDOZLbNr/JPue
 uHSYYxCVrkYMhhn8LllblkNlWJhm5RnLKt05XcGNgUJuAcq34CVt4Lo1kAgbB8xEsJRS4WaizpJ
 y5SCid7A600bI9qTuJh18ItaXXb0AxzY6tlEXNhC1soR9wYkEobzRZNZtJrVrhYEngtMdG/vHhW
 aF/QF2siuKNh52vletQ==
X-Authority-Analysis: v=2.4 cv=RMQmjIi+ c=1 sm=1 tr=0 ts=6aafe6b8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=RMCuox9UmI-WzXCaegwA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 0En2Q3EZltrC_zbys8IWuKqd0kc-88on
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIwMDIwNCBTYWx0ZWRfX476a1a4+WUps
 iLPEUjAS00CVPCp0Wdps/YJ2YleL5y8qzb0PHdCzd1sPzmHFLqqHvZEorPeJevvIdchL2PIg9kR
 y1emBcpkcTPAgRjJx46/CQFn6HwtNnI=
X-Proofpoint-GUID: 0En2Q3EZltrC_zbys8IWuKqd0kc-88on
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-20_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609200204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_065921_569765_957069E1 
X-CRM114-Status: GOOD (  13.28  )
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

According to Krishna, having autoresume disabled on Talos is a c&p
error and it should be enabled.

Suggested-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Fixes: 8adbf20e0502 ("phy: qcom-qusb2: Add support for QCS615")
Cc: stable@vger.kernel.org
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 2e5fdb620cb2..fc516b7cf5fa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -347,12 +347,11 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
 static const struct qusb2_phy_cfg qcs615_phy_cfg = {
 	.tbl            = qcs615_init_tbl,
 	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
-	.regs           = ipq6018_regs_layout,
+	.regs           = msm8996_regs_layout,
 
 	.disable_ctrl   = (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
 	.mask_core_ready = PLL_LOCKED,
-	/* autoresume not used */
-	.autoresume_en   = BIT(0),
+	.autoresume_en   = BIT(3),
 };
 
 static const struct qusb2_phy_cfg qusb2_v2_phy_cfg = {

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

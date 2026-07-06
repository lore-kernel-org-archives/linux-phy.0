Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E312C43602
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 13:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+kJMaRDSFhtcmcseqvcIHCCj6pLFv7X6fu8ZAZqKgs=; b=4/zOsl14FpywB5
	Tuz4WVHIlxFeEABZb+OmJ0rw/Hdbdiq3j6v1WyDGANm6GCdmw52H18cS9vDgKNaKSWQUmThfsjaax
	3BkjNUQrTkrazu1rUkGSPl5Ap5UrPSbmu8XHGVcxVa+4UUpQLy1bJRym3U0Gf9QDO0kJBYBbUJ1fL
	KZN2l5x5lLkWKI1ieGjz7Ji6WeMZleq0OtL2wIaCS2wUNVLuw1UpkR4yvrXk7uPRFRp64VA1A5R8F
	RsqZSK7c6WseY1cUAX5i9YwCrmiGwWNb58ZaRxHY3U3wJhB37iJOIkNWdUzJnozXQpIWp8rrR1Pvq
	eRrn/RErG48EhIRiXhbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjlH-0000000CfT6-0XiN;
	Mon, 06 Jul 2026 13:53:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjlE-0000000CfS0-2UPE
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 13:53:25 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666AxJbt316461
	for <linux-phy@lists.infradead.org>; Mon, 6 Jul 2026 13:53:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8NY/1ptN8ormR8uOFUxx1N1opjkl+PTSTOmsJSFl/rg=; b=KZ16cK3ilHN/bSpk
	Z4jB9kKYvs6MPHl3AmO2iHczlxE9Hf0+WJOAhd0C9mWxkig6yB3OMdQv0jgUFvSj
	QCp1k+xdQpqRdmvSULWwti/KqM0ejWEjfYNvdfTecjcgWOcn1InPmcdz+EweoRp6
	VRzNB+5gqfDm0pkMN/RCEyxi5oxkeBOEUG1yzkWidfY6OmVIYWhshuJxau0VONGU
	krUm1HAKfPKbwmtqICaJ+7xii1jQk1aAtxbSZnB2DwJLLtitU93p37kBp/QKdh+7
	dET0TeKCrBpt3Z9qhQkSg+BUZ3zePZ00svvEcQF6a1yUUjh3g3mgHs1NwEiVAHii
	Qqj9XA==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f87q7hjra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 13:53:23 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5be0693d194so1217296e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 06:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783346003; x=1783950803; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8NY/1ptN8ormR8uOFUxx1N1opjkl+PTSTOmsJSFl/rg=;
        b=A+NzdvTz8TGGnIN70R+6lsrRAoD1044zGa2S6Ynv4X685tCM3jkGJIegyNQWuSC2E8
         NF44yqlBXms9xSYMpSBl9+ir5pDi4/gSjlDltvovEy9qjTYAxPDheaELCdzze38H6zjI
         P3Aedfuk2/s0+qMsBKVczgeEkSLNnBK5rvK5C2JTn5QaJs22kJ8z51Xp0/O9eOLCggp8
         C897FHj1/DjDyRMEFCYItM8qxRPqaEkpPwYKQcqzkWXHutDy9O89j+jOO07GLg12OjaA
         JZjBRJ1aNS4OLlG/FIbN8uTmDMZZddTRJYjHsGzjKk6T/69ahMQJip3glPB4Y6jAX6Jk
         f+OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783346003; x=1783950803;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8NY/1ptN8ormR8uOFUxx1N1opjkl+PTSTOmsJSFl/rg=;
        b=X66akaftW90I5p2Yto/oyMWVbHRakmVEanSKf3OukF2ZSlEi8K3Cxsd+f33Ijf9Mzk
         ViCpU4PBeB6A6AgAa4sP6ph/MnRnO5o74IXJ9YQ8NmsLbFc0tLySmOBaqcSaHISqOgSN
         51+UcOdmh1yKCR0Qp5dZA9WyCwMW6UsaRLA/A46YW5FWqMsawg+hl56vtv8DNCfPg+2Q
         +FRkAEwznNLMWLX+nuz12vU8WntPFhUOv+fLxJ4m0mLLkGb6sG8kL3O57QiRCEUITu5a
         3AD6PJp0zCB50q0HmvN4kzJe4YHfIbNpuNmX/Yq0V7O84NeYq69TeI8f+8EM8IxBHcRA
         63aw==
X-Forwarded-Encrypted: i=1; AHgh+RoNCPvxiHdfXmzp1wVUvg819R2ZqQy3iYKlhAxSONNClQw0KiUwTvhzSW1FFukHtPHBCwuRcBT2424=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCJWQ7rdKiQZEDRJ8YIR153V5O9OUfkqoEH6xi4Iybvatgob0Y
	VTkr9hovl5AAWykHOcu0MzAN6ZCPSQgWIvrZKuPAkMcvAk4xVojHmlDBQWEPo6I8qfqy26EWojB
	psR7B2HKsyXo7GNhCgCBPj9CpZG1nXFOw1J1QbzIFkRvYI5d948+OvRV2C+uCs+HfkGDS
X-Gm-Gg: AfdE7cn4m0rnPX3H1WzqSG8tC9ZRgsYvGwUimyq5OlzphkLwiofN0lWhEAqht015Jbk
	ZJ1uOlvtd2QFaS9egD40mMqfAA621fWjU/UEAl3WG0uV/Y1JSKZ5auhc9S84x2aTwULW/Ea4rbl
	2egaI8ty+hZ1Vi0xs0lNUtuAJE9VlLRiYbo79RXTmRJ9pzKQfBTtOIVfsoL8ZPg4HgYhhLeIMPL
	0sQFeBWLyyXOkU1STmWI2M2ubcXjn/8u9NzjGJlsaMtNgPrhiJg8b+RlX+wkFQEC13MZCzknNwB
	o0aFU0snYm8Qb41czb0DtoY9bhxQp4PIa2X1NbJP2yr27CVkIr88GX+lzFk7G1ykKcitvC4C0kR
	HmENFFjAaB80u1RvVpW8abuibGGshd6BmBmtdVVN3q9K7TxZRwFbR1jD4kW9xOaQcnn15GxBEQL
	fzWd8FQB1Xr+WtskSw4/qvnApz
X-Received: by 2002:a05:6122:8b11:b0:5be:2177:70b3 with SMTP id 71dfb90a1353d-5be908cc9c1mr307558e0c.10.1783346002783;
        Mon, 06 Jul 2026 06:53:22 -0700 (PDT)
X-Received: by 2002:a05:6122:8b11:b0:5be:2177:70b3 with SMTP id 71dfb90a1353d-5be908cc9c1mr307544e0c.10.1783346002331;
        Mon, 06 Jul 2026 06:53:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13701easm2932551e87.16.2026.07.06.06.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 06:53:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 16:53:14 +0300
Subject: [PATCH v2 1/3] phy: qcom-qusb2: enable autoresume on Talos
 platforms
MIME-Version: 1.0
Message-Id: <20260706-fix-qusb2-v2-1-8d9cd73b1db7@oss.qualcomm.com>
References: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
In-Reply-To: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1233;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=3AjHvDgnnTcsszFhHhPfPjFQmzqnsj2J02PCxcOc6Jk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqS7NNSwp15TqI/ve0b4Klmq4hywtFwwzd4G0N8
 c3NV3rvk9uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCakuzTQAKCRCLPIo+Aiko
 1fAuB/9ULsXW3j6y90PwaiJSN1E6m6IRWia2WVK65A3+Al7MY0NGP/Nh5bSPuloOjPaQbihil9b
 I7BfcCcKGkPtG54wzemp0jvPjQl0i/sGm2sbFxM2unJH6WNhFBLeNnqKe9zxRVECH+so5wMiY/c
 GMB9Fo7JU/8Oo0bmc17CnaJU1ZDdu/L/TSAlf4t72RLrDe11JPNYe+jjtSTMAr7KEae3a9FiVIx
 OW1oDUjjBrRT/LruRE2qz3i8m9mvu8jyF8YDmnT7rbfKdptqz6R62pBk3RFPqibjFCsoBlEg7hr
 541INcxZVAvf/if4rqjRsxAORj2J1YGF/vLVFJjtxWH+FdHS
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE0MSBTYWx0ZWRfX5xVhiaFadCcH
 srzDWXEyN3A25henCoXmlYvjsbWxgoxGE5NGGY1YeVp6ZxBKjNqYFI7jlaMWZ0E1pOJa/CabWkb
 fqfZuc2nJSgVzjrIKI72NPZBc4b/1MzWR2V9Szchp4sw6ooZhhMJWdABoVSrynClQ8NUK8SabTV
 3eS3WAoZmWJ0m/nzQtSbG0ckiEukh3k8LH6FiPv2JPZRAa5FwHin6GNxPEHHPPISjscUsnNQtwn
 THlc6wHMEAWCfFl3JxMDe/GK+F6FYXlzrkDEVMXUNluzpRF3s4l1Qt3dZZI2o6iyXP1F2+fLIAq
 W+wgC0PrC87mlHSdGXzElDkBVWkQmTCasdkBQdvQCwq2oBpfUx3IjeSGRL3g3fEpcrtCnZiR5Ri
 bBPIYjPD7L5cJSmoCHfsu5NOwqjblFaKoqmUuTS2eGgzHmB/EqG0bpsgvvVwa9SbPiG0qfnJtSL
 VboNGqmPuoboEt3qWUw==
X-Proofpoint-ORIG-GUID: Q7K0i7F4Z1P-Cj_I-alhPpcigrUe3a1g
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE0MSBTYWx0ZWRfX6n/dfHwBwC4q
 ceGK1dE47k02W8ESbfBqP8RgMz8EbLHiX0AqRvDHsR/jOaWSHwfNn9aW6eqBl/JgTuqAO/R+Ffk
 BQ5t+H7YIjzs/ieu1I95nXzRoCW+cFY=
X-Proofpoint-GUID: Q7K0i7F4Z1P-Cj_I-alhPpcigrUe3a1g
X-Authority-Analysis: v=2.4 cv=f9N4wuyM c=1 sm=1 tr=0 ts=6a4bb353 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=R7DzW9ZLaHkN4G92kvMA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_065324_756843_3858D957 
X-CRM114-Status: GOOD (  13.38  )
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
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index eb93015be841..15c36b594c09 100644
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

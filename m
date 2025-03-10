Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98966C282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ZGPQPDR05Y7iQ/IE4r+4o77alFaBjXMICm3GjthhyM=; b=3CeWZAuXCX8jfv
	DQbUsOtZ3RjCWzUsqaXf4xAQYb33v49gXQ1pCFjcXBdmg2pAFBveYyR7Z/3zUP2RJdyNnq+QO8OYQ
	l9IOxzQ4CVoN+cPE1anDYpujH2OBJ3Y68/SDAXlHO5b0RzA5bUk5x7hJA70+qTsj6kM1PGuQLBbK0
	QcZFb944DHPSjoR/CzVNjyT21TLkZB+sgmgb7YO8ynzRAfdfkRjnVAwdQ/qGEdS74n/QppaUzW73G
	ccjBtaeGQ5655n/EeVwDgwOuyCCYRaJ3ja/sM0IuwG6/0LF8rEpfs9rSlNTxSSM5Gh4lnoBm3exql
	nzBUomEcHyJG9/f7YAcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trbV7-00000002SiT-3SzJ;
	Mon, 10 Mar 2025 11:40:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1travi-00000002MsB-1o0K
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 11:04:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52A9ZQrI008276
	for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 11:04:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=7+h0SgCQWbpp2hc08NzZtuUqyuQ4lXLc5tQ
	LmGtbA50=; b=bj2neNPPyGpRSdjTyspYKoXqr14OqsTXVLwiR9JUgqJTZzyZpXX
	d6rdXBVYipzcHPvJkkfveDmRHAt+jCfMBfr/+expJ8k8JEBMb6quwaPVvS3bM05Q
	U9ax+hAhd89Kx2tEmJXMSzepqa7qBD1990jPd63aBdEPBeE5TvU1j50VUcv47qPs
	6K0d+9i4AVpvR1oegcOwVb/dMV7HUfORL+FkmNZ0YIFi0OiUe0PZAeTzTw9qZycz
	ox3rzhe0kIdVE88URT+z/PjGkEYuPcnPBkv0Vg5XUd11WHmUhJ9nuRTq9h8v4PkT
	U+4p74QN3SeXafsdULRBxxAGj5tWvhZ8NqQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ex6vkkt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 11:04:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22410053005so130092115ad.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Mar 2025 04:04:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741604655; x=1742209455;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7+h0SgCQWbpp2hc08NzZtuUqyuQ4lXLc5tQLmGtbA50=;
        b=lbB7GyBIs4BdjGNuP9X+1oR3Rkd10Y1caCvgT5U/riAm6zj+oV3l0UvaTAt3kwWlzt
         2qsg81KL4Geh8LMV1yoborODH79n1IdtNA2gDd8dMg36eCYo+QWuR0L6b94ZAQQ2HChd
         Lw7buDG/XtgjIwnJ+hWzaW2eV3hUOzgNkbrTIUpsOLCOsI6+/kwjtSHyO69AqEq/yl0L
         NjlLGDMq14lC3/naYo4MgMjLKzWjBf49uOn+KRaU+nH51LX93Ctj2u4qsCagVyWGfbJQ
         thHGCM1OF4uVvKbDZ6NRIJsaECawxCzu0qBXhwQzUUy9vxSW98hRVdcCjEEntp0wADzl
         /t1Q==
X-Gm-Message-State: AOJu0YzM1kis/3xtoVLB8h3wK5C3Qq+xTPnMkDBVhpfuU7J7yFOfnMM0
	LAQ+ZoneWKM7mod58gKf+byCSFOENOpENn6L+d11gQ8aPuLc2rq5oEP+sAiCbEfwqWZ0ZLPyOy7
	9v/+/yG8XRV4tQI7cO1H/DwwiDWWKJpDjIZrvSa4hCamvRm5gzvb29jdqhSVF0/xUuhbgENyg
X-Gm-Gg: ASbGncu5dmT//00iQY5CSm0QnA9f8ZLUqayVNE4hLidB+V+8jXJwIIRmcwWkfpaJv1k
	ksmLYseGbLSh7sea7ftHSd46MmTVYhWLoBn8zidoIJP3Gq3cb6fumiXKKtjM4ttUXzpguQ0J/2m
	jWQQNos+QEZItWm4x+sDs2DYBvEsp0Or5S21GCpTu4/EY3fkepCVcGdT0ie9vZg2Oxe1CGah6ng
	rlreG6UoRCQNfzZHsBe6FbnIJx54/dr7jQkAVYc7ks6/REXrd8neOqlWM9P817Y3nwOcSKCY3tQ
	KK5p0odzdKlzQkRV+0yUmvpklvMJcIQq2WFk1GoH/nImDa6XrZ10aA==
X-Received: by 2002:a17:903:22c8:b0:220:f449:7419 with SMTP id d9443c01a7336-22428880305mr190238565ad.7.1741604655629;
        Mon, 10 Mar 2025 04:04:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPpOyafTgqJOPNvJdDELRWWpYaOQqOg/hYct9/Qs6ay7Y38goWmm0TeDagcKLKgA3lGaIYZQ==
X-Received: by 2002:a17:903:22c8:b0:220:f449:7419 with SMTP id d9443c01a7336-22428880305mr190238105ad.7.1741604655245;
        Mon, 10 Mar 2025 04:04:15 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22410a7f8c2sm74902025ad.116.2025.03.10.04.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 04:04:14 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v4] phy: qcom: qmp-usbc: Add qmp configuration for QCS615
Date: Mon, 10 Mar 2025 16:33:59 +0530
Message-Id: <20250310110359.210990-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=G8bmE8k5 c=1 sm=1 tr=0 ts=67cec730 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=GV-Fn4z6lk5qDZWrX1MA:9 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: pWZiqEphiOHubHlqudT6VaJ8jt5fMnGd
X-Proofpoint-ORIG-GUID: pWZiqEphiOHubHlqudT6VaJ8jt5fMnGd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_04,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 malwarescore=0 mlxscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_040418_492389_551C24E4 
X-CRM114-Status: GOOD (  11.44  )
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

Provide PHY configuration for the USB QMP PHY for QCS615 Platform.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Link to v3:
https://lore.kernel.org/all/20241224084621.4139021-4-krishna.kurapati@oss.qualcomm.com/
 
Changes in v4:
First two patches in v3 are merged. Rebasing this patch on top
of phy/next. No changes in code and v3 applies cleanly so keeping
RB from Dmitry unchanged. Also changing mail ID from quicinc to OSS
mail ID.

 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index cf12a6f12134..5e7fcb26744a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1124,6 +1124,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,qcs615-qmp-usb3-phy",
+		.data = &qcm2290_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

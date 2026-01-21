Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29FB0C44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfbea2ehYQVX8ufxCc1VWR8f50cr3rmZMLxeeRRKT1o=; b=zBQy41XnNoAC/p
	y6IjGSqNUzddQN9ru445p2N2kbSnFKO7QkhmKSeQKXtBG6M9SYDPx+r1oUJFMPrP8s49Cmh5S8amE
	y1CI9X47okznNjcKHVnxIj6sUu8H26oTr0rj07FBRwVNzn5/vMgtqkmCT1XZ+ynCTKW/aSDJMQ6k+
	9jQXeDycKHFJeLQibLAt3GFQiqmujkxrUwVZFkq5B26XFgD+8Os5logeFaBq6clRm9BCiY9uxXwjn
	29omZzNwFl9+zeRBCzVrBffg+ZN0I9TD1Tx1M2NlpaeBUbXKNiRJQhksnZhoZl+FARZP+v6DqzV8v
	/mctFW7gzErop0uLgVPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCV-00000005bdk-3U8T;
	Wed, 21 Jan 2026 14:28:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCS-00000005bax-36lQ
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:28:50 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9lKg52840471
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8EOEMAfh5MC
	487Gv1PbmtwtLwVechgULHzYOK424YjM=; b=ame70me8BbcnFXspfiAz39wDbZZ
	2I/4iscCzhOG9zTaJHn3gOgP8hqf/OhwbLLdBUS4Vg7MbT+VbdR5QNYNQUcxZb8g
	11Xf+8RQiYNyS+k0pr/Zo4XleUkMAbE7ooKu/MFuYzdWyXkoiWPgWKwT/v7UO5Wd
	54KgB79ksL4qDTaLUYI+OuWU1El0gk+B7es40u/Zhu5JoZ7qtte+DTikf8Q38Ws7
	FoNTPNwKuzABQ4+VENSGUBlhoSch7TNa58ct6BCWVbnCTFpUJmjkB3OLP36x/0WU
	7LbZp/i7cqhLH6CuwpJGGzxu7NDf6kbavKWeNaB5D7v5m+m6AqtzGShlBdQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqm1taym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bc4493d315so1781057385a.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 06:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769005727; x=1769610527; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8EOEMAfh5MC487Gv1PbmtwtLwVechgULHzYOK424YjM=;
        b=QQPX2qxJKuZq/w9+ELqw35srSb9oxJTf1Epk9jMYpc/24UnsbUC/PA1TZ3dkdo6+do
         PxlQs37XnTUFP36GOTS5h612Phopmnv3Slw/i6DAWdbASGSXYIv30z2TuZPrlIhCxaMt
         sm80IuHg+sQL221G44OibcxdWLm4pyYcFo0dXsJE45nWe07CO3DCohdG33bYGqQ4bvL2
         lRscoJs0WE5qYN8sFo719XXZpR7pwCvBvvqQj1FJMZ6ebseSHjDeUAWrNOkyy7NlRdy+
         ecuOmvLfECzdXeNKDPrHITSxjrNm8MY0RvQIGe/oJjb7T31vpEyIRt8goSf2PeTHrbK1
         VHYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769005727; x=1769610527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8EOEMAfh5MC487Gv1PbmtwtLwVechgULHzYOK424YjM=;
        b=IDx9TLt8R2WxtOFP1Af15IHnTM8LfiJtyjMLmooGswUJFdeoX2pchxAFB757Jdo8bx
         3mPJvL1AR7UrYC9A2KFxeo/Epf8hRLaiHBuMw9kvdet1lzUI82GaFmUAOajuftUFGCm5
         vvXhJZp9DfsXUM61aqpyb1Dgn8JTiTRoLa6OCQYU4Z0B3MUY315sVf0fxhZ1ntWgQ/oj
         dnG5ogfTEeP8XONDbV2g3hrvsfpxh7dsmMEjjaeAUtAGx/cxOTaPo4NJrNViyToIYl/w
         Ztu/1AdvK21L6kEDVlMJeJ0+VNkhxODmLen0PMIDsQoe6wKLrH1Terb4LjnHhVMFcuef
         7RIA==
X-Forwarded-Encrypted: i=1; AJvYcCWFAVD3vrLFqirWI0Bwf9WhHeMDuZV5V0fSQhUt+TKOpu22Bsu9C/8QmsZ1HM9LdJjcKeiyIPaJJZA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1YrNhV1Ft+x6qVCdrtIgTVn9AsjRN7KOm7jM0AOxmukU7gxRI
	ixdsYIHnNoRnDdHD1spF7BELkej0YAFIA+MFE9s75CgugRecxn/4ykoHMB3+1xntJBzp+hEuaxB
	wRWsWEH0/qD2FgRr2BxvyO8YwpcfV6oTSrw9cILyuX/MZoxgRXyKka6gxJK+GIPsYwm+cnMuROs
	ZPK24=
X-Gm-Gg: AZuq6aKjnvyT7SaPQvrEJHFFOkKwsJu6cHXDwhcW7FSj3Y04RFJnDDDbdLJyAwD6XlD
	1st9vIGuaCgun6y2ZABsHFizyTinRAgjldHNgxmTTjSNmmJumY12LcKISLi6zG70CC5zT5PEgu6
	8uRRqixYoXOmp6qg0+vz/RscR2r/GhAD2x/GLOin5cWNFOHjqeARR2bpz2TLQWnflFnlWHvZu7Q
	3sLVYbpKUn5nI4fF/1cZvSmdHXDxQRUwk0/No976EiN9j12X3QvSkGIGcQ5O8ir8ogrrmwd+qjr
	ImR/SVZzdJVff+Plj+U0ZxUDCTkF4OvFDhxsZLnW/tw+qjy0Bd39hKTqf/vx5d+/MBqFjqI60um
	DjIA73FB9zKPhAhGEOlQLZv/uMhXpGq8Onlud+WBE660VW66zb/WtZvUZus9JqUXVf6eK8lWsNG
	IC/EFs
X-Received: by 2002:a05:620a:55b8:b0:8c6:b2c9:1cac with SMTP id af79cd13be357-8c6b2c91db4mr1424130785a.25.1769005726542;
        Wed, 21 Jan 2026 06:28:46 -0800 (PST)
X-Received: by 2002:a05:620a:55b8:b0:8c6:b2c9:1cac with SMTP id af79cd13be357-8c6b2c91db4mr1424122485a.25.1769005724534;
        Wed, 21 Jan 2026 06:28:44 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a0d:3344:10b3:c488:b09f:b54c:1120:95f0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435996540cesm6098180f8f.43.2026.01.21.06.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:28:43 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 5/6] phy: qcom: qmp-usb-legacy: Prevent unnecessary PM runtime suspend at boot
Date: Wed, 21 Jan 2026 15:28:26 +0100
Message-Id: <20260121142827.2583-6-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEyMiBTYWx0ZWRfX+/ED3adnBUB9
 rqgTJEcFnSJnpkXYCg6J7B0jWN+Ug8CpqMQp4zjNeKhybgtPAJ3nRu4RZP+lyiowelIweLGgM+a
 9MGMY02XEjwCUS3663smGkKeUDiDTR6jmnVvX7t2npUfisAsU4IOjo2zBCsx0O+7b/t/Sj+eES8
 Xn9Sa5ruT5z0BqfMUR8A1xGeWihPMfDikNNI03z8obHK4Yr/RnQgeZeZa+LG8vQC0/S5Tn9b+Dd
 x7QcTkndkKm/Y7x07aukDWo5yPESZyWvErq78hVeLRNwT5CC4ApkNwo8MJaDPnXYN0c8grsQMJw
 gQHhL/+cIypV7BQfPFc1US1HD7gQggRopOVhfXCOFCQauvdIANK8pd8EgB5OLs/HrqHJDDDChxk
 Vw9TXiL59o5eB0mo4zX1v5E2M5mnx3tnBHnWPnygGugSR3hlKJpJlwtP2a0YKRGNZsZ+cZmX0gz
 FKk8po5ShoKPi+gqqng==
X-Proofpoint-ORIG-GUID: rY02WchE7N2jVp3rRhGIDh2FrylXIFwr
X-Authority-Analysis: v=2.4 cv=dtnWylg4 c=1 sm=1 tr=0 ts=6970e29f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FmOiMsbJW-36OGxlXE4A:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: rY02WchE7N2jVp3rRhGIDh2FrylXIFwr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_062848_862014_907F7FA8 
X-CRM114-Status: GOOD (  15.65  )
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

There is a small window where the device can suspend after
pm_runtime_enable() and before pm_runtime_forbid(), causing an
unnecessary suspend/resume cycle while the PHY is not yet registered.

Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
this race.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 258e0e966a02..73439d223f1d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -1284,15 +1284,15 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
+	 */
 	pm_runtime_set_active(dev);
+	pm_runtime_forbid(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		goto err_node_put;
-	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
-	 */
-	pm_runtime_forbid(dev);
 
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

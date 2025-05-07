Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5CAFC3ABBC
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiOvuNwY6S/3qfq6fWCdOsDiV77YbB7iHyBAUl9cDm0=; b=XLp5fRk4DDJlyN
	C6Wuwj196DJ6c7BuQS1+29Iz8xzZm1WVh7InSQtMvz3ZL5fFvvrP4pAqgWUmx2S2AJhzXUzN5ruIe
	H/XM4b+0KYF6fZhjVFto1lDREyIZJrGDP62bh9gZkngyiyY9+ux1oPoGdHr9WEqipgFy/O5IULlr5
	TXXBrJrh5M1XR0ZLXy7yfsgNtN59Cetd1BvNewVYSBS5SEYqNj/oDkg1CQJ/ho2uv4wePbe2xkDYZ
	itzDgkGxYlF0rBJs26j/gzHkmBsQd5jBMAxLBiqKylxx7rC5a5mq5e11EGhPsuRfD/0DRyNFX40Y2
	LgCnHLlvLmRmxesogMcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVGg-0000000E3Rb-2vab;
	Wed, 07 May 2025 03:16:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVGf-0000000E3Qo-2Vhl
	for linux-phy@bombadil.infradead.org;
	Wed, 07 May 2025 03:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mBH+GfjC+j4rk6f5spyQReEfLrRh87IzYlgQYCkCLVE=; b=HRPjfRXfHtN8crFaF+FuFBqnUh
	vygVv01pWgMaXiwMNQi7g0E/nPIFkTzdO/f5FQJKQeegk9Ypg0eSwfcoCWeW/RwgVzDANEGaI8ZPc
	AVnnKHGW6tYSamUlbeQh84t6l8cf9ZRUHHB/DWrS2jctmn4fLXQwH6C+UZfDt309ibig1UTiGztAK
	KmLQhFz/kXjTZo4O+0w3KooaAm3GNvK7MkaTEghbQK25CbO/pgcYwZ4tUTTugRwcARctF71VklIfi
	OrAmAvSuf2jfqP77duUBEK/go5tAluNQLSIrSVIAf7ehgV5b2PcOqR6BGfifYdoLttkNNUPhVIMq6
	xGtUCQ6A==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCVGb-0000000Fk8A-3Gdu
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 03:16:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471HA0A028443;
	Wed, 7 May 2025 03:16:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=mBH+GfjC+j4
	rk6f5spyQReEfLrRh87IzYlgQYCkCLVE=; b=miPKMmkE7IUbIRNtQ7ExES3qVRT
	y6VNjiJtvtNmkDONqoq8t3pFbnqsBS6Q07IxeTvet3r9/jjsBtZRMheds1l/mpty
	e36Z1EqANEAL8zevTGkKyy6EvS7Dl8VyyzrzBt5AEiL8cCLZJ4d0pM5T21Ifvq1S
	OBpCKKt6BNjgR4WzAwH/aQNU79tCY6CO02FtJHgAebdlKIGFg+jm8GzwFUg04yId
	ZIomBxHBNwG5MqkRStkS5gg9CwxXPkQ3QWovSTmVGo4bF1ecUCUOzDszx5kotrJy
	CQ3YzOgN6C5LhCcJNXwnLLTpyVg14wwyw7Z/hu8zMFpHus/HXG+haEIxz5A==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46fguujdm8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:08 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5473G6Wh012882;
	Wed, 7 May 2025 03:16:06 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46dc7m60u7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:06 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5473G6Fd012872;
	Wed, 7 May 2025 03:16:06 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5473G5UT012850
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:05 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 6E1DC2F3B; Wed,  7 May 2025 11:16:04 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v4 5/5] PCI: qcom: Add support for QCS615 SoC
Date: Wed,  7 May 2025 11:15:59 +0800
Message-Id: <20250507031559.4085159-6-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=UJPdHDfy c=1 sm=1 tr=0 ts=681ad078 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=esfGit-853AAzAUiwWkA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 3WpzF2Oqrl6K4vRWJJuGu_l1uO9H_uRi
X-Proofpoint-GUID: 3WpzF2Oqrl6K4vRWJJuGu_l1uO9H_uRi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAyOCBTYWx0ZWRfXwquaN+suwMwz
 3T79lXxS3Epo1Xg2nKksU3X9jrwz4Y7oluD9axJgGJSFEoD95q/JXwzJoSkumMCKDvOGDluZloQ
 eiX8s4HnuaXX+PxkamHcNfdEiTzxyYS3xfox5UBu7mPBYJboPOBMGrZ7YyHIGi5eMhiZlbwv5wF
 sOLhlUWS7nI614ZcTZ0Y83MrZa9KAFSAWuCx1PiQCW+IWhPcvrPLwlIOjJRu7nhgjVW6iVLKXop
 hAYtejsHJhWZaU7vbaFTd1CQjGZKVFZ8ZbQVbIGqwJTxZVESVNirjSZqKOPVRJCrpRBF5xUxNZ6
 xlTBrxsNGMfUHXkgtJPvJJBw6n00q/qoVIkFxoGDRYDEqeXiBl9VmtTmnVorx6GZOZ+tzd6xujK
 2mxLk3FtcZrp11+QWBxFySVFLyWn0HFoWFHa3BzLHLt0+Fep11xgAX9L/BM3bj2rcc/D7DnE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_01,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 spamscore=0
 impostorscore=0 mlxlogscore=999 mlxscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505070028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_041618_354054_EF5CE682 
X-CRM114-Status: GOOD (  11.35  )
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

Add the compatible and the driver data for QCS615 PCIe controller.
There is only one controller instance found on this platform, which
is capable of up to 8.0GT/s.
The version of the controller is 1.38.0 which is compatible with 1.9.0
config.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index dc98ae63362d..0ed934b0d1be 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1862,6 +1862,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
+	{ .compatible = "qcom,qcs615-pcie", .data = &cfg_1_9_0 },
 	{ }
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

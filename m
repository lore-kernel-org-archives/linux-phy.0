Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C24CBC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 10:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTyYD8gmvOV8+Wo08U3MiVkDYp7p+wanqIvuaw8nDoY=; b=MgtfZpDaXOrAig
	W8Bh5rxClXCmaoLxcfgn3xeDbN0+woKIILkdYsoXqdOweviwby8v0L/TruacnFvmj/RN1fq98aD3k
	d0ckC/N1/CIwYJFcgGGl8jcvtEoev1giv1e+bpVOS5z61DsyNzIc2FjJxKGYb46aIl5x/DNWOvIel
	TZqayGJ8MKN7GWndpWggaRzvDxfV3YxQ1asEZ582oqaO7z5VY3nI5v0XIgpjJg9uSv0thcEVkDl4A
	drc1nseTPBbLF1GSY01w8RZr/66du8qDsuizqplfs5L7TpoYr7I8cZnMXBZcu1qN9MoFs0kmw4NT8
	XoPHMFGbRQwt7ctXAJUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaOw-002uoJ-SS; Tue, 20 Sep 2022 10:22:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaOr-002uij-Jb
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 10:22:48 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K7xnQ8009265;
	Tue, 20 Sep 2022 10:22:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=bGJ+pKfcVqDIiOFQgrD1m3p0Qty8nksEq/klYn0BIPM=;
 b=XAZsccVcSJYqkb7T+7aVnSfLKuG1feYZpSoA199uGAWHJnOIWgUVn6SyT8RMjIBm+YQn
 081+tZdpXSNRFVCCSrOJlYEDVlG5CNyryyT6J4S2oYYd/H36P7vyVJPSsjheC+B1UfKX
 9waKQ4hUrBR8qAqY5HwT8ddTnCHLZAxrqpaHM6OYtNVrV5+w0nBV+zfzwK1UzDhrC0Q4
 mspw0ckWNanPQG8JfSkdExvKly91NcDFhR0vnzArmwefyA5uqXZgR6CFF/UqcBJVE5j9
 WCabQqFVAhaJU2hM1w69hmRsA3YMFDnw5DhlrMQjglktALXxNRQiB0Nwv0vsk6NXf6dS Xw== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jptw33446-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 10:22:34 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 28KAMVlW016209;
	Tue, 20 Sep 2022 10:22:31 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3jnqrbnbr6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 20 Sep 2022 10:22:31 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 28KAJDH9014240;
	Tue, 20 Sep 2022 10:22:31 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-krichai-hyd.qualcomm.com [10.213.110.37])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 28KAMUcX016193;
	Tue, 20 Sep 2022 10:22:31 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 4058933)
	id 18FE31A0A; Tue, 20 Sep 2022 15:52:30 +0530 (+0530)
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
To: helgaas@kernel.org
Cc: linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        quic_vbadigan@quicinc.com, quic_hemantk@quicinc.com,
        quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
        quic_ramkri@quicinc.com, manivannan.sadhasivam@linaro.org,
        swboyd@chromium.org, dmitry.baryshkov@linaro.org, svarbanov@mm-sol.com,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@somainline.org,
        lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
        bhelgaas@google.com, linux-phy@lists.infradead.org, vkoul@kernel.org,
        kishon@ti.com, mturquette@baylibre.com, linux-clk@vger.kernel.org,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v7 5/5] clk: qcom: gcc-sc7280: Update the .pwrsts for PCIe GDSC
Date: Tue, 20 Sep 2022 15:52:27 +0530
Message-Id: <1663669347-29308-6-git-send-email-quic_krichai@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
References: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: i22Kw6cglr45nfDrZ8fX6cgxsUowuBmL
X-Proofpoint-GUID: i22Kw6cglr45nfDrZ8fX6cgxsUowuBmL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0 mlxscore=0
 bulkscore=0 malwarescore=0 priorityscore=1501 suspectscore=0 spamscore=0
 mlxlogscore=802 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_032245_861230_557E7B54 
X-CRM114-Status: GOOD (  16.51  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Enabling PCIe GDSC retention to ensure controller and its
dependent clocks won't go down during system suspend.
Update the .pwrsts for PCIe GDSC so it only transitions
to RET in low power.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
changes since v6:
	- Instead of marking as ALWAYS_ON setting .pwrsts to RET in low
	  power.
---
 drivers/clk/qcom/gcc-sc7280.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/gcc-sc7280.c b/drivers/clk/qcom/gcc-sc7280.c
index 7ff64d4..e66069c 100644
--- a/drivers/clk/qcom/gcc-sc7280.c
+++ b/drivers/clk/qcom/gcc-sc7280.c
@@ -3108,7 +3108,7 @@ static struct gdsc gcc_pcie_1_gdsc = {
 	.pd = {
 		.name = "gcc_pcie_1_gdsc",
 	},
-	.pwrsts = PWRSTS_OFF_ON,
+	.pwrsts = PWRSTS_RET_ON,
 	.flags = VOTABLE,
 };
 
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

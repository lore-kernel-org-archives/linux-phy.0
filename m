Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16358C6FA8E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 10:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMn3hvlfI3TN6X0NgXq9xcT7ulGetB8VN2WsEM1rmGY=; b=FwMtVzpxOcFBUZ
	Qpz+7OOxyI4fwIuTFdMDr1oIB58LP8K6TVpnITkqR20itm+NZLK1whIRyvTK5IUCrJOilL9/vXMgb
	UgVEK3QTZ2Ca7o5VfrJ0PHyknuV/d9ckBLfiWVewYU66CFXHq5O314wxqZHUlaGQQwTnkpf1ZIHbZ
	EYTbeHYPA5yFt6rGz39o7R1106xnj+Ae5RIbRCIrp3y9rZBPldER84BpS0KrFYGGj6w1F/qBU5z7N
	f/raDWKNH9qQyZA7cImp4J9ANdxuFWIPa0oQiCNiGzxtwagFaMYxqZ+a23AVshOiUzTEVM0Lvfm5w
	EpnZMtibE7QTT1GTcE6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaOw-002unh-6Q; Tue, 20 Sep 2022 10:22:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaOr-002uiT-H8
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 10:22:48 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28KAMYCJ030209;
	Tue, 20 Sep 2022 10:22:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=ei3RTLrelI+vWzWY/UUM1rE2cKcsDhShOMPEsncj94E=;
 b=lUHSmQCKKN6wh3NMsnJ7qVx+ZEyBHVTZZeZuu9PUAf7V9dY/dAF2dCV6MXFzWogEEWWp
 M5PG/TSx3XhkWPAtmpLEbeTBM/W3RR3MuUHCULjHp0+aUD5eR66lYIa4Ot5+oN+u5KM/
 m/RxzkX/qazokbBkGyJBsemtppByKggwR+u6SI023iRt5exzC9Byu8TXIrCdW/AP4AK7
 p+hTUddOca5UjUo4T6qQcnmmH5KCizeDfpm7mOodyUp1K1wGTG3kyRj/roXH87n78Qjw
 BS8PtmSUXQhKobHavxBvvxhDwkP4Px7dMRlQKKTv+6x4xET9tLs5gCMgFnPmQbRuW3rM HQ== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jqa1k8aqf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 10:22:34 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 28KAMUDI016181;
	Tue, 20 Sep 2022 10:22:30 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3jnqrbnbqq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 20 Sep 2022 10:22:30 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 28KAMUG8016159;
	Tue, 20 Sep 2022 10:22:30 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-krichai-hyd.qualcomm.com [10.213.110.37])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 28KAMTb4016149;
	Tue, 20 Sep 2022 10:22:30 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 4058933)
	id 5E18D19F9; Tue, 20 Sep 2022 15:52:29 +0530 (+0530)
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
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v7 2/5] PCI: qcom: Add retry logic for link to be stable in either L1.1 or L1.2
Date: Tue, 20 Sep 2022 15:52:24 +0530
Message-Id: <1663669347-29308-3-git-send-email-quic_krichai@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
References: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: MVX-zVMiMf09preCe-06zwyqS_L4eeRU
X-Proofpoint-ORIG-GUID: MVX-zVMiMf09preCe-06zwyqS_L4eeRU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0
 mlxscore=0 impostorscore=0 clxscore=1015 mlxlogscore=951
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_032245_790552_2FAE11BF 
X-CRM114-Status: GOOD (  22.76  )
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

When link is in L1ss(L1.1 or L1.2), all the clocks will gate off and there
will be no activity on the link. At that point clocks and phy
can be turned off. If clocks got disabled before link enters
L1ss the PCIe link goes down.

Few endpoints are taking time more time to settle the link in L1 substates.
When we check the traffic in protocol analyzer, we see some DLLP packets
going on still. So Wait for max time of 200ms for the link to be stable in
L1 substates.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
changes since v6:
	- updated comments.
---
 drivers/pci/controller/dwc/pcie-qcom.c | 46 ++++++++++++++++++++++++++--------
 1 file changed, 35 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 3f5424a..7a6f69e 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1809,23 +1809,47 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 static int __maybe_unused qcom_pcie_pm_suspend(struct qcom_pcie *pcie)
 {
 	u32 val;
+	ktime_t timeout, start;
 	struct dw_pcie *pci = pcie->pci;
 	struct device *dev = pci->dev;
 
-	/* if the link is not active turn off clocks */
-	if (!dw_pcie_link_up(pci)) {
-		dev_dbg(dev, "Link is not active\n");
-		goto suspend;
-	}
+	/*
+	 * When link is in L1ss, all the clocks will gate off and
+	 * there will be no activity on the link. At that point clocks
+	 * and phy can be turned off. If clocks got disabled before
+	 * link enters L1ss the PCIe link goes down.
+	 *
+	 * Few endpoints are taking time more time to settle the link
+	 * in L1ss. Wait for max of 200ms for the link to be stable in
+	 * L1ss.
+	 */
+	start = ktime_get();
+	/* Wait max 200 ms */
+	timeout = ktime_add_ms(start, 200);
+
+	while (1) {
+		/* if the liink is not active turn off clocks */
+		if (!dw_pcie_link_up(pci)) {
+			dev_dbg(dev, "Link is not active\n");
+			break;
+		}
 
-	/* if the link is not in l1ss don't turn off clocks */
-	val = readl(pcie->parf + PCIE20_PARF_PM_STTS);
-	if (!(val & PCIE20_PARF_PM_STTS_LINKST_IN_L1SUB)) {
-		dev_warn(dev, "Link is not in L1ss\n");
-		return 0;
+		/* if the link is not in l1ss don't turn off clocks */
+		val = readl(pcie->parf + PCIE20_PARF_PM_STTS);
+		if ((val & PCIE20_PARF_PM_STTS_LINKST_IN_L1SUB)) {
+			dev_dbg(dev, "Link enters L1ss after %lld  ms\n",
+					ktime_to_ms(ktime_get() - start));
+			break;
+		}
+
+		if (ktime_after(ktime_get(), timeout)) {
+			dev_warn(dev, "Link is not in L1ss\n");
+			return 0;
+		}
+
+		udelay(1000);
 	}
 
-suspend:
 	if (pcie->cfg->ops->suspend)
 		pcie->cfg->ops->suspend(pcie);
 
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

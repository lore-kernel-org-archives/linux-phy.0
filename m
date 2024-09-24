Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC635CF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 10:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFutr9BcFAGUpk9sxbT9w8tpy7vpxWjcqNGWaVUvUPM=; b=0A+C7/XODTBzO4
	sTMNTQ+74XruwGvzipoZoe9pJsKGrOth3VFXa5yZhusJEBaAZ/+uYtqZWdsk7tkyz3QqgPCJBFQy6
	UcoYQ7DXQdGSKlnkbZ7clUvZlQYrNzqaCMFNXkwGtaoBYGU46iS7U9k0u0hqmA12OQdEiPYOZT0go
	UvxFKWKS+lnwAknYBrSi7DIgUHkg/QMfifz2SGvkwHWyWUHqwJkYZzaxPkwzfnJkhLxSaQRIHv5cn
	RkbMhURxivO5cvqm/Q6xllmPXvASzVc2BptQOFZCOL3lKvvzQRac5R9fxNZZpF9zvKCxncG8TV7Qt
	XjSk3rinAgAMr+KGMsiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st2Zh-00000001xpW-1LyE;
	Tue, 24 Sep 2024 10:15:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st2ZQ-00000001xkR-0uO4
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 10:15:01 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48O9WMOL003198;
	Tue, 24 Sep 2024 10:14:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=deGWBSCQ5fh
	TkgJCHfFl7/mV0HgSSfPyxgjK9ESwV20=; b=pSk8A3+2yATPeRhIqg9XB7Z0h8c
	OI37J/FkbyUk7zaUj/bN2D28/2eavWZTIS9a2uWYBwy+2e0Fl29ZgdbdsKgVPJjH
	d0pmY5om7Ncdxy7RC16WzqWizMF9UbcsnRRqar+AyXltV/balXotv7VTSNKHuQB4
	7WxNeeYDHHSFEk8BLmUF17POM9Op4sPiCju/4RijmHIq+qZ8mIK5fjBxn3uMGpxd
	+OWyPH3ac8TzpBMSq8x9T1sgWg7zPJTlKqHLSYYtoD5HwAUdQsW+U/FxTcz07C29
	ffjSJMjfKsCeywrp80n57x1bxmTa+d6JfSaRZfcuKYzbtUS/jstPXUPi7nQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sph6ra4t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 10:14:51 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA03.qualcomm.com [127.0.0.1])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48OAB02u028858;
	Tue, 24 Sep 2024 10:14:49 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA03.qualcomm.com (PPS) with ESMTPS id 41uq4230sq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 10:14:49 +0000
Received: from NALASPPMTA03.qualcomm.com (NALASPPMTA03.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48OADsG1000985;
	Tue, 24 Sep 2024 10:14:49 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA03.qualcomm.com (PPS) with ESMTPS id 48OAEnZq002220
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Sep 2024 10:14:49 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id 798CD65F; Tue, 24 Sep 2024 03:14:49 -0700 (PDT)
From: Qiang Yu <quic_qianyu@quicinc.com>
To: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>
Subject: [PATCH v4 4/6] clk: qcom: gcc-x1e80100: Fix halt_check for pipediv2 clocks
Date: Tue, 24 Sep 2024 03:14:42 -0700
Message-Id: <20240924101444.3933828-5-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3i98DQq4C72trIuoDrqquJllYjKeOZve
X-Proofpoint-ORIG-GUID: 3i98DQq4C72trIuoDrqquJllYjKeOZve
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxlogscore=994
 mlxscore=0 adultscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409240071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_031500_394912_A1316F88 
X-CRM114-Status: GOOD (  13.87  )
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

The pipediv2_clk's source from the same mux as pipe clock. So they have
same limitation, which is that the PHY sequence requires to enable these
local CBCs before the PHY is actually outputting a clock to them. This
means the clock won't actually turn on when we vote them. Hence, let's
skip the halt bit check of the pipediv2_clk, otherwise pipediv2_clk may
stuck at off state during bootup.

Suggested-by: Mike Tipton <quic_mdtipton@quicinc.com>
Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>
---
 drivers/clk/qcom/gcc-x1e80100.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/qcom/gcc-x1e80100.c b/drivers/clk/qcom/gcc-x1e80100.c
index 0f578771071f..81ba5ceab342 100644
--- a/drivers/clk/qcom/gcc-x1e80100.c
+++ b/drivers/clk/qcom/gcc-x1e80100.c
@@ -3123,7 +3123,7 @@ static struct clk_branch gcc_pcie_3_pipe_clk = {
 
 static struct clk_branch gcc_pcie_3_pipediv2_clk = {
 	.halt_reg = 0x58060,
-	.halt_check = BRANCH_HALT_VOTED,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x52020,
 		.enable_mask = BIT(5),
@@ -3248,7 +3248,7 @@ static struct clk_branch gcc_pcie_4_pipe_clk = {
 
 static struct clk_branch gcc_pcie_4_pipediv2_clk = {
 	.halt_reg = 0x6b054,
-	.halt_check = BRANCH_HALT_VOTED,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x52010,
 		.enable_mask = BIT(27),
@@ -3373,7 +3373,7 @@ static struct clk_branch gcc_pcie_5_pipe_clk = {
 
 static struct clk_branch gcc_pcie_5_pipediv2_clk = {
 	.halt_reg = 0x2f054,
-	.halt_check = BRANCH_HALT_VOTED,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x52018,
 		.enable_mask = BIT(19),
@@ -3511,7 +3511,7 @@ static struct clk_branch gcc_pcie_6a_pipe_clk = {
 
 static struct clk_branch gcc_pcie_6a_pipediv2_clk = {
 	.halt_reg = 0x31060,
-	.halt_check = BRANCH_HALT_VOTED,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x52018,
 		.enable_mask = BIT(28),
@@ -3649,7 +3649,7 @@ static struct clk_branch gcc_pcie_6b_pipe_clk = {
 
 static struct clk_branch gcc_pcie_6b_pipediv2_clk = {
 	.halt_reg = 0x8d060,
-	.halt_check = BRANCH_HALT_VOTED,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x52010,
 		.enable_mask = BIT(28),
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

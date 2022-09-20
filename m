Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 952E6C6FA93
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 10:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2lm3GDZo5xiT+pIbxzqxPib+/eFbwrShR58QkFoQBZ0=; b=3+g+toEMl1ufky
	NLRBocR15fcIISBZGBbp2vXwrNzfUCY5xcGbqHaHfbXpN5hKlHfghW2Zp6HvsuMfu3uNITi8FsP8G
	/uq3yqckhVftV+szugu2w8gDaC7DRL4iamLUw6BW3bXXiCnuTVzMX5Uv+dRDa0YhHbgjkX7xRioQ4
	ma2yWZsylPByEghPEAfyEJ55mBjz/dk8SIPJpuTkOu78/YojZh1i9Y6CXM5TG8JDBL80wD9Hm0Q0W
	hYih/UH1fH+Yaf089hyYyQw67vrY7KqVZfjk4wt0PzPx5U9J/oSzGdLQVrri0AJ674PUeiq+5oCIp
	8KE4Bf+LzXPnw0OSlvYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaOx-002up5-Ik; Tue, 20 Sep 2022 10:22:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaOr-002uim-GT
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 10:22:48 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K804gS013233;
	Tue, 20 Sep 2022 10:22:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=mH6Fwz3K30BlKk2TJCtxVla2r992cpTUFjl1FsBUztU=;
 b=ZxqwOM7D+fTg/0ff4SiN3dJwpez5HttRrbSvCgx0MGSyrU8EQIbOcuDbXfMB0bxwyL1C
 O1CfwEmf02/GLn8tO/AFVWIHtdFhclf6xuTfBDRKMjWXpOYSuf2b4X/Jqle2q4IA6xD8
 zCwKBB3ffeZu5h68iebg5kfV4ETMG+q03BSS7F6vqQeo2SMCwl8gVZX7yFpnIS39LS9q
 YFJr9RPdoJand1+yOTJw9vtxbFUwcvhk65gSxy7Hhak4tTQn/Uhx90a2axF7K0lPpw3f
 1pGbp2iM9i2PhiRoOwSJpgRtQsMqUI23KyWHBxACeL9Pr2E2FRJYrtyhHmz2UXDseSVT YA== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jpvahjss7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 10:22:34 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 28KAMUpu016172;
	Tue, 20 Sep 2022 10:22:30 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3jnqrbnbqk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 20 Sep 2022 10:22:30 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 28KAMUnB016153;
	Tue, 20 Sep 2022 10:22:30 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-krichai-hyd.qualcomm.com [10.213.110.37])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 28KAMTkK016147;
	Tue, 20 Sep 2022 10:22:30 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 4058933)
	id EAD2B19F4; Tue, 20 Sep 2022 15:52:28 +0530 (+0530)
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
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: [PATCH v7 0/5] PCI: qcom: Add system suspend & resume support
Date: Tue, 20 Sep 2022 15:52:22 +0530
Message-Id: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: tpr95SO5zlUUUhoZMHUx5re_yGPDoMYK
X-Proofpoint-GUID: tpr95SO5zlUUUhoZMHUx5re_yGPDoMYK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 mlxlogscore=953 clxscore=1015 mlxscore=0 adultscore=0
 phishscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2209130000 definitions=main-2209200062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_032245_744964_20D96CCF 
X-CRM114-Status: GOOD (  16.62  )
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

Few PCIe endpoints like NVMe and WLANs are always expecting the device
to be in D0 state and the link to be active (or in l1ss) all the
time (including in S3 state).

This patch series adds this support for allowing the system to enter
S3 state (and further low power states) with PCIe Device being in D0
state and with link being in l1ss on qcom platforms.

And to get to the lowest power state on Qcom SoC, all the clocks need
to be voted off. Since PCIe clocks are managed by qcom platform driver,
this logic was added to the qcom platform driver.

And when we turn off PCIe PHY-specific clocks, PHY may go off and along
with it the link also will go down. To retain, the link state in l1ss with
PHY clocks turned off, we need park PCIe PHY in the power-down state so
that it can maintain the link state in l1ss with the help of the always-on
power domain (aka MX).
To support this PHY Power-down state PHY driver has been updated with new
interface APIs.

Its observed that access to Ep PCIe space to mask MSI/MSIX is happening at
the very late stage of suspend path (access by affinity changes while
making CPUs offline during suspend, this will happen after devices are
suspended (after all phases of suspend ops)). If we turn off clocks in any
PM callback, afterwards running into crashes due to un-clocked access due
to above mentioned MSI/MSIx access. So, we are making use of syscore
framework to turn off the PCIe clocks which will be called after making
CPUs offline.

During this process, The controller should remain powered on. For this made
changes to GDSC. 

Few endpoints are taking time more time to settle the link in L1ss.
So Waiting for max time of 200ms for the link to be stable in L1ss.

Krishna chaitanya chundru (5):
  PCI: qcom: Add system suspend and resume support
  PCI: qcom: Add retry logic for link to be stable in L1ss
  phy: core: Add support for phy suspend & resume
  phy: qcom: Add power suspend & resume callbacks to pcie phy
  clk: qcom: Enabling PCIe GDSC retention

 drivers/clk/qcom/gcc-sc7280.c            |   2 +-
 drivers/pci/controller/dwc/pcie-qcom.c   | 163 ++++++++++++++++++++++++++++++-
 drivers/phy/phy-core.c                   |  30 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c |  50 ++++++++++
 include/linux/phy/phy.h                  |  20 ++++
 5 files changed, 263 insertions(+), 2 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

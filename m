Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9627DCCA470
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 07:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BBBL2WFO5jiMhezvM6sWhWK7RDQG40t6vmUp6FrLNeI=; b=J1bDbei1qwprW/
	9yBBRUu1GArtcReBv1SZ8QjNx3yNkw1oa/CQRvRullMM3MaxMdCQ7MU9MOZC4UYA526WMi+tpcNz6
	EeCeRxrqubm6ROBLgpBLtZibETf5Lrp0IIadLpw1Gd0HAK5x6TdLtEBSCfnLwEnTun22S5i0v2YSc
	ZII3GSsSROx3+dvM89DrsyDrWp3VC4pEyDDO128Ga9i+siC5bMPbWqfVvYubzTqcxzAuQVN5aXULF
	BgxXzd1xVVXZ47mM+zm2+T6maRcYUdEhPZqrq8LNu2bSGU5QaUSBBhfiBEoV1A/gXuXq1lY/uhXqn
	g48pGIBjJrXz8RTXra9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6kok-00000005KcV-1XEd;
	Thu, 09 Oct 2025 07:12:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6kof-00000005KYv-2Ra3
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 07:12:00 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EPQA005152;
	Thu, 9 Oct 2025 07:11:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:message-id:subject:to; s=qcppdkim1; bh=PBgSZOSR5fHa
	CLJtGpDCar+N1XjgrHzJg8ZdWv4pkcE=; b=Z3/d6znVqjGrbX3vR2L3zWUOra+H
	VBv0dya+PNyzK3LNJvZQMCzXqsHi5BrewE+d25HJ8AA1YtUUa2xqZZ7Pu27sf8OW
	WJac7a1mOM7LpfF6MlR1oP6oJHeoYYUc+ugH22RzG6aIrxPy8PWxL4s8f03wmgC8
	dKLTwDFvyk1JLN6Eo9pJ/b4MoCiZcN9VaWdAvgLlCtaxyFrr8OgrRxoQXs3UikUr
	uDPGS0NYzzedbboWg7eKjHOhDWFEEWp7hlXj3g123W5UorBL+c7vGAVWzBZwflWo
	kvFwB817QAqrFm+7KVJ+H3sYNzXl7RVrm3+Ldsp4h3BBcdpATyzkwmENfQ==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4u1tx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Oct 2025 07:11:47 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5997Bhg0002157;
	Thu, 9 Oct 2025 07:11:43 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 49jvnmbgxv-1;
	Thu, 09 Oct 2025 07:11:43 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5997BgSO002130;
	Thu, 9 Oct 2025 07:11:42 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-riteshk-hyd.qualcomm.com [10.147.241.247])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 5997Bg3X002129;
	Thu, 09 Oct 2025 07:11:42 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2314801)
	id 96CB55001CB; Thu,  9 Oct 2025 12:41:41 +0530 (+0530)
From: Ritesh Kumar <quic_riteshk@quicinc.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: [PATCH 0/5] Add eDP reference clock voting support
Date: Thu,  9 Oct 2025 12:41:22 +0530
Message-Id: <20251009071127.26026-1-quic_riteshk@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=Vrcuwu2n c=1 sm=1 tr=0 ts=68e76033 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=x6icFKpwvdMA:10 a=W8fnRyYtc_bum-QUD2UA:9 a=nl4s5V0KI7Kw-pW0DWrs:22
 a=pHzHmUro8NiASowvMSCR:22 a=xoEH_sTeL_Rfw54TyV31:22
X-Proofpoint-GUID: zwWDmzhOqW_7qm7Iwf8op00koXptZ8Yq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX7q3DJvU3hqt0
 15E8n7axYll6HAkF3Q42eBhlHwm5PQCgfkHmNwyRgYXrLjEer8MgVnOshNfQiFf5QPwQYTlKEc4
 CRjn6s8EFoHZMyxVubtdvJQPOnpv23D/cSg6PsM0qICgaWW6/1MyRhWkpfgPhY0ulFbO6XiQq4D
 scBHkmmpXK7psMgQidkOikMK9IPi1KsNxIhp5nYuwUeR88kYCCW3k1+1+uC99MVaYgncaCfXmfq
 3gSHuBueMCgQt95tI2pyF59JxKbqAEemxkiQCDgi1eAKvHdt6Ve7aySB6CqmnWFR7kbOT4s6fQ4
 Z2fAp8SLDC2ecnqtMwpZWDbD18qE7DvisJlPSL027rf3TxI/r50ETti5VsuqCIBWC605Pkb+iml
 lR6RrkbgkaCPMrEckiO0IQAkrxWsxA==
X-Proofpoint-ORIG-GUID: zwWDmzhOqW_7qm7Iwf8op00koXptZ8Yq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015 adultscore=0
 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_001157_740989_B5EABB02 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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

eDP reference clock is required to be enabled before eDP PHY
initialization. On lemans chipset it is being voted from
qmp ufs phy driver. This series adds support for voting the clock
from eDP PHY driver.

---
Ritesh Kumar (5):
  dt-bindings: phy: Add edp reference clock for qcom,edp-phy
  dt-bindings: display/msm: update edp phy example
  phy: qcom: edp: Add support for edp reference clock vote
  arm64: dts: qcom: Add edp reference clock for edp phy
  arm64: dts: qcom: Add edp reference clock for edp phy

 .../display/msm/qcom,sa8775p-mdss.yaml        |  6 ++--
 .../display/msm/qcom,sc7280-mdss.yaml         |  6 ++--
 .../devicetree/bindings/phy/qcom,edp-phy.yaml |  7 ++--
 arch/arm64/boot/dts/qcom/lemans.dtsi          | 12 ++++---
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  6 ++--
 arch/arm64/boot/dts/qcom/sc8180x.dtsi         | 11 ++++--
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 36 ++++++++++++-------
 arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 12 ++++---
 drivers/phy/qualcomm/phy-qcom-edp.c           |  3 +-
 9 files changed, 67 insertions(+), 32 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

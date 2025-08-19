Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECA03CA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 23:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RzozN2nfb2quJnLEAriPOJin/BUj3x4pi5xpLlCt9A8=; b=S8XlmNcum3jbyw
	8mWWcAyEhMFG+/FeyP86f/lCaahC8Hq0yce71x5K6zJ+D1EqCj3uORricbwKh1zIlTXHHHqOnopmn
	e39N/+BsXHSk7Lyy4jkqOdQD8VHzjA5rzUte54GYyk46JqE3gm2CfTfaGfL440ZFj0L0EaHeAlr0U
	3mWLKCwl9vzNW185Nmn8wzam5NYWAKmvrfCDQkgM42GIc0jg6WaYJOwQ7frceWPOV0qBp3csZCZN/
	h/CgKHQYokLEA+ZMzAnYgD3m+SUItmu8b3eBV9IzWFwaTAMKxWKHUpBPfOiuYl/jMTOP03FY5zhUm
	p2UL4gDuNeQvSz3LezWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoVyk-0000000Bses-26Ej;
	Tue, 19 Aug 2025 23:42:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoUov-0000000BjWl-0uWf
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 22:28:46 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JL10eb030658;
	Tue, 19 Aug 2025 22:28:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=RPIphcJuk+0nZHZvCIxkLXOCLy6PFMiBqUN
	1q118Plo=; b=c9uELJrLlXfP/VGWP6xvjjzAvCHg5TUQ6+VPqBafZ0+4dEhS09r
	pTQ+Sls+2pyQ8WIbN3G6SfW8pktt2yMVv0GPSqjdYTw2/ZUjnpG11DnVCrR/tdLN
	BS0G9CNhRE/fjfTzEYy+je4KssW7jr/KO2x4UvNVrKVbKK4s28HCI9wpuDNnX2wz
	QlZD/EukfF5a1Svvl5hJeqt9PE8ICOjdhLXqlSrUmHTS3ybO3wFZrNH3PxD+7Hz2
	nfrxE08zLZRbOjhrk2+s+VubKSX26w9OLi8KUuNizHtQappvggKty0SEqAtney21
	fpbt3iAyCn/QK/HADXfdjfwD+m25kD3KDaA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n0tdr51m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Aug 2025 22:28:39 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 57JMSYCb008387;
	Tue, 19 Aug 2025 22:28:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 48jk2krc2d-1;
	Tue, 19 Aug 2025 22:28:34 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 57JMSYeO008382;
	Tue, 19 Aug 2025 22:28:34 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 57JMSY9G008381;
	Tue, 19 Aug 2025 22:28:34 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 87FCC57363A; Wed, 20 Aug 2025 03:58:33 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V3 0/2] Add regulator load support for QMP UFS PHY
Date: Wed, 20 Aug 2025 03:58:24 +0530
Message-ID: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=a4RpNUSF c=1 sm=1 tr=0 ts=68a4fa97 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=2OwXVqhp2XgA:10 a=zxPLyqCQwrrZPiHgX0UA:9 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-ORIG-GUID: Pg2w-0O8izTAGeHJeNWsZKA-95B4k48D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE5MDE5NiBTYWx0ZWRfXxeJFn5d+SUoE
 08C0X84dpYtmQcyCQ1LTOwmK21CRFiIF1WIevMNn9tu8Wdln40EGgP1lwNhptgk4Wihs51t6ya3
 RS7VjWRuZttCRCnsysIN+9MCdyFbxU+5qr2WzUtwK5kYM7u1482TjYOJhQipEaiO4eSgTfBvGIy
 Wi5xAs4KTKpcju1cSfxi7EtbbjXKI8wsNMnWTVbO+0eUnUU+ZdhpG2Vsz+IkvTibloXUTIrJVpT
 yRFz1dSikVzsYGoz3ift/sz+dvLbF13srieIqFpLEDEzuJDsD8Wz0YP7kzdw/Pg1j+jRJjtNbVD
 IT+kkPuSTEgsWTPrvN5fnNzmqMtV08nA6PHJrNqJGfP6iSotD66g5gixgz92y4n2gB1BuItJQHJ
 Bi71wVbmvtJv0GNtaMn6w9jdYkvINw==
X-Proofpoint-GUID: Pg2w-0O8izTAGeHJeNWsZKA-95B4k48D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_03,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508190196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_152845_383758_D0677F3A 
X-CRM114-Status: GOOD (  10.51  )
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

The series improves regulator handling in the QMP UFS PHY driver and
adds load configuration support for SM8650 and SM8750 platforms.

On some SoCs, regulators are shared between the UFS PHY and other IP
blocks. To maintain stability and power efficiency, the regulator
framework needs to know the UFS PHY's peak load, as it determines the
regulator's operating mode.

The first update replaces devm_regulator_bulk_get() with
devm_regulator_bulk_get_const(), converts the regulator name array to
a bulk data structure, and uses the init_load_uA field to automatically
apply regulator_set_load() before the first enable.

The second update adds platform-specific load settings for SM8650 and
SM8750 to ensure proper power management where regulators are shared.

Changes from v2:
1. Addressed Dmitry's comment to replace devm_regulator_bulk_get() with
   devm_regulator_bulk_get_const.
2. inline the qmp_ufs_vreg_init() function

Changes from v1:
1. Addressed comments to move load configuration from device tree to
   hardcoded, per-compatible data within the driver.
2. Accordingly updated commit text to reflect the same.
3. Addressed Manivannan's comment to avoid initialization of load.

Nitin Rawat (2):
  phy: qcom-qmp-ufs: Add regulator load voting for UFS QMP PHY
  phy: qcom-qmp-ufs: Add regulator loads for SM8650 and SM8750

 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 48 ++++++++++++-------------
 1 file changed, 23 insertions(+), 25 deletions(-)

--
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

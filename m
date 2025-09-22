Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84452CAC5A7
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 07:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d9+xKtSoc6D+LjnEB0PknkDgzFYuDQKsgfAf+v4kLcM=; b=OCzhfKcGQouTmu
	IYCvadhBrJq7utnegxtVjB1Y6OO0qulgWgx70g2EDSyx7B7Ez/RyWlCkSwjxPd7Bz4aOX1IVDxpRK
	Fba1+ddQd2oPqat2Li/FjaVem7BS/AUdv0pue9/wCs26qzkZnC7YyZX7igPf8Ous/7IsWWu/fVPF4
	uGlW+uQ5Z3hL1NnoFtColb6oXnrTUfrJAm+wDmGTDBYe/aZVHvCV0Ef1UKeQvAvIIFAC2ZD3Pz5yF
	lR5RtOYpPvwzIrjXr5KKPN2DBfuZojxs4av0zASLVgwqJgEmhaqAwizbLRnG34b32k24FaY2fH8tZ
	iuGzyAFDqbSF2UmuqmoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0bOU-00000009YCo-0vim;
	Mon, 22 Sep 2025 07:55:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0bOR-00000009YBR-3WE8
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 07:55:29 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58LMhs0S013411;
	Mon, 22 Sep 2025 07:55:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=q2TTWfPPdRbtXjNcPVyyM613088qz57a8Kp
	5KPxUQb0=; b=Y4YdA5KaE2nPI45odYRkl5USmKTocGlvU3Gh3ss2FFBLm8Hx85P
	phMGbjVvVgqOrMuW5cQL2CEU30xDMytIV2ERQY8kfRgJ+3yibx25DXo0Lf9Qt0XW
	zljKWBBs9ZcQ9C2uYUiNBpFh9715dJhVgoWgZWz4PYhevieZIxi3tyOem2lGr+/z
	zs8fcp5ncVYYFdsAIxVQFfNpeXGlTyui+Dh2HdXmH4bmSkMgmn8Q+USViCVyRnHU
	FC7VIOygcEvPGelC0OrY8ccZvCWPtbnOudqkPQgtIWfqb5zyZsZkjMEc0GN0CZQ1
	ZBUVPPdkxPsxVmCg8rgwnvR+wLyO5amxeQQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499nekupkx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 07:55:18 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 58M7tGSV022237;
	Mon, 22 Sep 2025 07:55:16 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 499nbm0545-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 07:55:16 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 58M7tG53022218;
	Mon, 22 Sep 2025 07:55:16 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 58M7tFDg022210
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 07:55:16 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 80C1978F; Mon, 22 Sep 2025 15:55:14 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v1 0/4] Add PCIe3 and PCIe5 support for HAMOA-IOT-EVK board
Date: Mon, 22 Sep 2025 15:55:05 +0800
Message-Id: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: P5o3jBsPVlON9C_jr5OKaUoqukc0NLmE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDA0MSBTYWx0ZWRfX1Ja8mTfkmE2v
 egs7vPUa8nGcd2XJX2JlRAMSl6OXJa9daa20UqS72FVPaOJs6BUHAuMBy0RMKzV79Uh2/CUBKcm
 KGXpyLvMWbWNGYsXeXfGz7FKG6uWbl2ZYwPf3WPpvUezZgQxjsCiOMN+UxtUFtuRxsiy4JqHjJ/
 L7Aw4//urSI3KGnsS+EmnBBlulC+CjZyoMI1qRF/C0M7y5HsSMkNjK1R3vlYqtIc43Q45FxZi5z
 09W38QQVYYkLKTd2cMLhSFzNGiChXgeWdfzFu+iaVnDiPjtxTxghqxzWQpAORYe5q8WpEAU+wPk
 1FGyh6my6QgkBC4SzWHF6nMcln4hzyaFSQDMzMOuLBYBVDA8Qw2q7dlvvLYT7/pNStiVYDKPsvp
 +Ut0vt7Z
X-Authority-Analysis: v=2.4 cv=b+Oy4sGx c=1 sm=1 tr=0 ts=68d100e7 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=yJojWOMRYYMA:10 a=RMFkh6N_GHqejj8ZFKIA:9
X-Proofpoint-GUID: P5o3jBsPVlON9C_jr5OKaUoqukc0NLmE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_005527_878975_F57FC4ED 
X-CRM114-Status: UNSURE (   8.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch series adds support for PCIe3 and PCIe5 on the HAMOA-IOT-EVK
board.

PCIe3 is a Gen4 x8 slot intended for external GPU.
PCIe5 is a Gen3 x2 slot designed for external modem connectivity.

To enable these interfaces, the series introduces the necessary device
tree nodes and associated regulator definitions to ensure proper power
sequencing and functionality.

Ziyue Zhang (4):
  arm64: dts: qcom: Add PCIe 5 support for HAMOA-IOT-SOM platform
  arm64: dts: qcom: Add PCIe 5 wwan regulator for HAMOA-IOT-EVK board
  arm64: dts: qcom: Add PCIe 3 support for HAMOA-IOT-SOM platform
  arm64: dts: qcom: Add PCIe 3 regulators for HAMOA-IOT-EVK board

 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts  |  52 +++++++++
 arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 110 ++++++++++++++++++++
 2 files changed, 162 insertions(+)


base-commit: 846bd2225ec3cfa8be046655e02b9457ed41973e
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

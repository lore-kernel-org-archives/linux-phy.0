Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70A85C02180
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 21:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0NIPn50TbIlu2RNGMMonAPA279IBHWOR91G8v60/qu0=; b=D/dGUX2vB/ALw5
	D8DDs/k1FbLI5Y0E9W7kJtpLvO9F2j4vLyYvY/Sdkc869kxtGK1EJgZ789bpkZOzYTNxlF4qpptkv
	QXWwc4gg/1Uc6jMFT+Npkm6KgC8dPDPy6eAtOw0krmOykFGt+B1uahegVnE8++aLk0Q5HPj7meWIs
	7UE/3XZWtwWUx50zZ9H6n8k9K4Dj0O24SSWWSR+4AJLn5mWKxfESpvofqlFmZgRoERQi/9KX1o0tG
	yzS9kqk0H0eVjYdcryc3HJui/lQq35SF0gLVcGuzOR69oWV66ein0T3Y/STB9+9vws7mjoA9j3xD2
	SRlQ+FGQid9gAr66g2mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXSHa-00000006iq8-0wl0;
	Mon, 13 Jan 2025 21:47:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXSGp-00000006ifz-1lz8
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 21:46:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DDWYs8007213;
	Mon, 13 Jan 2025 21:46:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dhvWu87/0R3YAZvNh5uBEJ
	rXLjGOkhMumYnUwn/LIT4=; b=fsvW5+dROvMhkBl1kdUK5Tk0vKNf+jPD3uifRT
	QoSUMEkVcDgl9oUNhupZYJFm0Kxg36iQ2acTgc9zgNJ/QTF3BToZ8ZRCB5taD3Gd
	kOEJdjAbLY4sG8ufXcN3pbQ1LSSyeltDTixbiClwxbTc3KmalFFmvYko8bvpTYBr
	DWjXaaa1hRvXzIAujumVJOlVQxhKhO9yNgnTZ/A4HSNJqWN3GDIVmOGjHZUVbFfs
	iBZjqVXlvbGA5H4nt4klYWsv5RtrBv70yB/XLL32J5O8C11LJpsrAWKBZGZYcadK
	FpvnaeEPznBsQO9FEAZ5yz33+3FPzBJvYM0wR9QuvjI92hHw==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4453tas4qt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 21:46:33 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50DLkWnF011155
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 21:46:33 GMT
Received: from hu-molvera-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 13 Jan 2025 13:46:32 -0800
From: Melody Olvera <quic_molvera@quicinc.com>
Subject: [PATCH 0/5] Add UFS support for SM8750
Date: Mon, 13 Jan 2025 13:46:23 -0800
Message-ID: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAK+JhWcC/y3MQQqDQAyF4atI1g4koo7tVaTIoFGz0LaJFkG8u
 0N1+T14/w7GKmzwTHZQ/onJe46gNIF2DPPATrpoyDArkNA7mypfYLP21kzBFlb3CDkRloR58BB
 /H+Vetn+zfl1W/q4xvdzjcZw84O4zeAAAAA==
X-Change-ID: 20250107-sm8750_ufs_master-9a41106104a7
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, Melody Olvera <quic_molvera@quicinc.com>,
        "Nitin Rawat" <quic_nitirawa@quicinc.com>,
        Manish Pandey
	<quic_mapa@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736804792; l=1231;
 i=quic_molvera@quicinc.com; s=20241204; h=from:subject:message-id;
 bh=hUnnOWugqb4RWlmCrJy6G05aZvBoiDwZ9bY8/w40AW8=;
 b=PiuNkryuy/SikDb172DKfYRkwbTB45YbU/7XwdEw6YlkTGuqU79oiIsKRLwMQdYfVHOJ1fI6/
 7+DhBKbwKD6B6pZuMfi2CuzPUNkBptGrF6NlCveul7Qw4m7EFxWJ10Z
X-Developer-Key: i=quic_molvera@quicinc.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: V1SSnG1BkWwwSfi0iO7KsqE1-EmvSOIJ
X-Proofpoint-GUID: V1SSnG1BkWwwSfi0iO7KsqE1-EmvSOIJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1011
 mlxlogscore=698 mlxscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501130171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_134651_470690_F510E059 
X-CRM114-Status: UNSURE (   8.94  )
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

Add UFS support for SM8750 SoCs.

Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
---
Nitin Rawat (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
      phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
      dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
      arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
      arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards

 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   2 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml          |   2 +
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts            |  18 +++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts            |  18 +++
 arch/arm64/boot/dts/qcom/sm8750.dtsi               |  81 ++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |  12 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h    |  68 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 174 ++++++++++++++++++++-
 8 files changed, 374 insertions(+), 1 deletion(-)
---
base-commit: 37136bf5c3a6f6b686d74f41837a6406bec6b7bc
change-id: 20250107-sm8750_ufs_master-9a41106104a7

Best regards,
-- 
Melody Olvera <quic_molvera@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

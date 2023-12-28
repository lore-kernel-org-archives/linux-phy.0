Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16134C4706F
	for <linux-phy@archiver.kernel.org>; Thu, 28 Dec 2023 05:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5geMVWep5clGiMrAdwtub+5U++pqeFswRSsOcR4krJw=; b=l7VfJHh4hRTLkJ
	eRbfkEH2YzZl2boSpSPbeuX1LY1ETua0vHwS1tTv6TyBTh7SvSSYDps7A92geuX9C5ABz5B1PVZ3q
	QuTZqi8nQKwDo51BdDs4C6M9Wl/y3ZaGtVZbqWPueC4O0o23wmYfflU6baoA8h5xCv62NPbAqfVxh
	3QPst2TE1BfNMUvZBAov9TunzE/kBAOYMrtSKNcXwtknAw2YHrtf7AonAn81v9od86ozl40ufPxlN
	SFG3uuRUmUmemHAHebcCYG7sAjh0nSVvF65XdKvsB13uHGGleP/IgGw4nLrmNPkUhn/Kn9BgqTzZ6
	SJolbDSF2NrhRk+/LTCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIjAV-00GB6G-2M;
	Thu, 28 Dec 2023 05:42:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIjAS-00GB51-35
	for linux-phy@lists.infradead.org;
	Thu, 28 Dec 2023 05:42:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BS4meGo010228;
	Thu, 28 Dec 2023 05:42:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id; s=qcppdkim1; bh=L7cHtVRr9rfR
	8SXFuOKy7X1n94uuMmjGNSVxEowJyis=; b=BHI23pVNY7g6E/JtblK2Py9pvGwz
	7VrSDSadULRuQMYMfDT+pwTN+W/nOHgXzrWSaKV/8O1ZOY4fi4z1TvADCXWguFUX
	mnPi/HwFXIEfdRTIWyUYGZkT6QJ0RgXqLX1CE879MC10bxsCt9ido/Lfzfs5ljz1
	4N7ofNxuKo8P4Iis8a0tv23gngVuunfkUs7u8VWhqvSq2QCx15l7ZGPKqJvydPez
	5Yi3rFjOSZdLnHzfdLFusrYLVV4zOR+AFtkXP7X+u9w4oOnu+j5oNGdIMIInKX4/
	lSb8buTC1imNSSoujdG3TvYf/qRreSfLLGAbqkHrkqHzemzlH755EAmRrQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3v8pcxs95f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Dec 2023 05:42:43 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3BS5geSu010667;
	Thu, 28 Dec 2023 05:42:40 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTP id 3v5rmkp3ny-1;
	Thu, 28 Dec 2023 05:42:40 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3BS5gejL010662;
	Thu, 28 Dec 2023 05:42:40 GMT
Received: from cbsp-sh-gv.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTP id 3BS5gdwf010660;
	Thu, 28 Dec 2023 05:42:40 +0000
Received: by cbsp-sh-gv.qualcomm.com (Postfix, from userid 4098150)
	id BA4B756EE; Thu, 28 Dec 2023 13:42:38 +0800 (CST)
From: Qiang Yu <quic_qianyu@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, quic_cang@quicinc.com,
        quic_mrana@quicinc.com, quic_qianyu@quicinc.com
Subject: [PATCH 0/2] phy: qcom: qmp-pcie: Update PCIe PHY settings for SM8550
Date: Thu, 28 Dec 2023 13:42:35 +0800
Message-Id: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 0Fen_NCLlBdItntuVwUoSmQVTW-z2m6S
X-Proofpoint-ORIG-GUID: 0Fen_NCLlBdItntuVwUoSmQVTW-z2m6S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 bulkscore=0 priorityscore=1501 clxscore=1011 suspectscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=264 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312280043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_214253_127067_64AFABFB 
X-CRM114-Status: UNSURE (   6.62  )
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

Align PCIe0/PCIe1 PHY settings with SM8550 latest PCIe PHY Hardware
Programming Guide.

Can Guo (1):
  phy: qcom: qmp-pcie: Update PCIe1 PHY settings for SM8550

Qiang Yu (1):
  phy: qcom: qmp-pcie: Update PCIe0 PHY settings for SM8550

 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c             | 20 ++++++++++++++------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h      |  2 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h   |  2 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h        |  1 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h   |  2 ++
 5 files changed, 21 insertions(+), 6 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

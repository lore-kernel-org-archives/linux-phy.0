Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB89C4706F
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 06:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vpHP8OgbfCj9LcyF5xorBBS5YYZ+8Sn3yfuoKyfxtOk=; b=ly25W38IF4s3ry
	Hr0ebHKWsCvHmhd5SgVEB+5MGrNbCW5j6Rg+U3A9EsCAledUGim1AW8IKiU+BHuWC/Tt/l9hM3Z7V
	SjQzbdNvNsPO+NqYlsAhr8eJKfaPQbkGs8uQf2k5usRRx9lrF4pnj3IBhkmEihsiFWkEx2azAcNEV
	Y6rkYCdT8zVJwFKLAnVHdwm9tNdzWpAS0GmcRmIuD7Q/W0bgDngy/BOROjUAmh86b323XumdxvKjD
	SDgcDxeTcUDuKdr2ePaCt0D11jxVUK67x/6Hn7cEEHifih00EMJQ04lNBQU9jPFkYwyanCj2B6u/q
	Xu4mLsph0D/XafAQHzqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHekT-00AHx4-2C;
	Mon, 25 Dec 2023 06:47:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHekP-00AHvb-2h
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 06:47:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BP6lSeX015547;
	Mon, 25 Dec 2023 06:47:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id; s=qcppdkim1; bh=IKLgXNv991Vf
	x+bNTtQtVZrVZWVJB4T23nFUdmom0Ec=; b=HBzubLw7S/f+Td8v4HraRpNeBNoU
	Am6TCx5//mCsaYT74vQNX/OjnG9ygwKXO818rXKad8ykOI9V7uacp2/kTN+zQZuW
	wUDw4Xbx2fDc/ERWFcmc/oKz/qYCyAk6UTqiltaPn1AazXGc+Bk9vE39RmB8F+FB
	QowxOBe4oJ1vjBY/THB3Dvzyge+pj2gUE5lkFhuYC3bjYPIsMvSde7i6UZD6AOfZ
	Xgofwil9jm16LatCOmoqwoAjWFQxNmkd71K7ee03WF41k7yAAaS6bS6NllvBjWaU
	HjGTUpam/b+XvAB0Rko/Dt5yQJoc5vPRETP6lHvQNzVS7uU22ym0gBdbfg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3v5rqrb0tj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Dec 2023 06:47:27 +0000 (GMT)
Received: from pps.filterd (NASANPPMTA04.qualcomm.com [127.0.0.1])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3BP6lPcR019278;
	Mon, 25 Dec 2023 06:47:25 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NASANPPMTA04.qualcomm.com (PPS) with ESMTP id 3v5rmktkam-1;
	Mon, 25 Dec 2023 06:47:25 +0000
Received: from NASANPPMTA04.qualcomm.com (NASANPPMTA04.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3BP6lOxf019270;
	Mon, 25 Dec 2023 06:47:25 GMT
Received: from stor-dylan.qualcomm.com (stor-dylan.qualcomm.com [192.168.140.207])
	by NASANPPMTA04.qualcomm.com (PPS) with ESMTP id 3BP6lOd7019268;
	Mon, 25 Dec 2023 06:47:24 +0000
Received: by stor-dylan.qualcomm.com (Postfix, from userid 359480)
	id 9D10620A8A; Sun, 24 Dec 2023 22:47:24 -0800 (PST)
From: Can Guo <quic_cang@quicinc.com>
To: quic_cang@quicinc.com, bvanassche@acm.org, mani@kernel.org,
        vkoul@kernel.org, abel.vesa@linaro.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org
Cc: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v9 RESEND 0/2] Enable HS-G5 support on SM8550
Date: Sun, 24 Dec 2023 22:47:20 -0800
Message-Id: <1703486842-36621-1-git-send-email-quic_cang@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 2zPRn2rpvUKrjsPwtNturvM0F8aOjoHx
X-Proofpoint-ORIG-GUID: 2zPRn2rpvUKrjsPwtNturvM0F8aOjoHx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 malwarescore=0 mlxscore=0 phishscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312250049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_224733_901211_FB94A77D 
X-CRM114-Status: GOOD (  15.61  )
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

This series enables HS-G5 support on SM8550.

Please note that the changes to drivers/ufs/ have been picked up, resending this
series for the remaining two changes to UFS PHY.

This series is rebased on below changes from Mani -
https://patchwork.kernel.org/project/linux-scsi/patch/20230908145329.154024-1-manivannan.sadhasivam@linaro.org/
https://patchwork.kernel.org/project/linux-scsi/patch/20230908145329.154024-2-manivannan.sadhasivam@linaro.org/

This series is tested on below HW combinations -
SM8550 MTP + UFS4.0
SM8550 QRD + UFS3.1
SM8450 MTP + UFS3.1 (for regression test)
SM8350 MTP + UFS3.1 (for regression test)

Note that during reboot test on above platforms, I occasinally hit PA (PHY)
error during the 2nd init, this is not related with this series. A fix for
this is mentioned in below patchwork -

https://patchwork.kernel.org/project/linux-scsi/patch/1698145815-17396-1-git-send-email-quic_ziqichen@quicinc.com/

Also note that on platforms, which have two sets of UFS PHY settings are
provided (say G4 and no-G4, G5 and no-G5). The two sets of PHY settings are
basically programming different values to different registers, mixing the
two sets and/or overwriting one set with another set is definitely not
blessed by UFS PHY designers. For SM8550, this series will make sure we
honor the rule. However, for old targets Mani and I will fix them in
another series in future.

v8 -> v9:
Rebased two changes to UFS PHY to the phy/next tree

v7 -> v8:
In "scsi: ufs: ufs-qcom: Add support for UFS device version detection", fixed a BUG introduced from v6 -> v7. The spare register is added since HW ver 5, although reading the spare register on HW ver 4 is just getting 0x0, to be on the safe side, we are exluding HW ver 4.

v6 -> v7:
1. Rebased on linux-next, based SM8650 PHY settings are merged there, no changes to patches for UFS driver
2. Addressed comments from Mani

v5 -> v6:
1. Rebased on scsi-queue-6.8
2. Addressed comments from Dmitry and Mani in patches to phy-qcom-qmp-ufs.c

v4 -> v5:
Removed two useless debug prints in patch #9

v3 -> v4:
Used .tbls_hs_overlay array instead of adding more tables with different names like .tbls_hs_g5

v2 -> v3:
1. Addressed comments from Andrew, Mani and Bart in patch #1
2. Added patch #2 as per request from Andrew and Mani
3. Added patch #4 to fix a common issue on old targets, it is not necessary
   for this series, but put in this series only because it would be easier
   to maintain and no need to rebase
4. Addressed comments from Dmitry and Mani in patches to phy-qcom-qmp-ufs.c

v1 -> v2:
1. Removed 2 changes which were exposing power info in sysfs
2. Removed 1 change which was moving data structs to phy-qcom-qmp-ufs.h
3. Added one new change (the 1st one) to clean up usage of ufs_dev_params based on comments from Mani
4. Adjusted the logic of UFS device version detection according to comments from Mani:
	4.1 For HW version < 0x5, go through dual init
 	4.2 For HW version >= 0x5
		a. If UFS device version is populated, one init is required
		b. If UFS device version is not populated, go through dual init

Can Guo (2):
  phy: qualcomm: phy-qcom-qmp-ufs: Rectify SM8550 UFS HS-G4 PHY Settings
  phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed Gear 5 support for
    SM8550

 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   2 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  12 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 186 ++++++++++++++++++---
 4 files changed, 175 insertions(+), 27 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

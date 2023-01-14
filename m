Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35FBBC3DA78
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 03:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nj68TLi3pmN0pjI/doMfV5UrRmcjNgZdwmBphbN6+Hk=; b=efBgIWDIX8nfWn
	EoSUZyOa9cXIg50dpaGQyXZ/q5QELDcooDB9sOXNQwffZjiBUfrdmj8auNixbclcXdxszhTz95fE2
	HFhkXjZ29vADciTfHbg8vX03tIffKfLFO8SV19doksT3vb8F9U4K6letSfT39KQzYA/1wJdBV8/U9
	MLC/P4AAD3QJtrejQTsXN7ZS9/kzOHvlL5V45wAv4cnk8OXoYmf+zC59X6Bv4ygYBbRCRsFoSmacF
	V5U6cXxGWqdq+9c+WGRGDH3y11m+UbpvsoPu0yq5esmOEH198CiahpcaRTbgm8/m/QfP74Z59gewX
	yVTWx0wmrYedaqSrDu5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGWt8-00578q-Ct; Sat, 14 Jan 2023 03:07:22 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGWt4-00577M-OZ
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 03:07:20 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30E2wNNT023855;
	Sat, 14 Jan 2023 03:07:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2022-7-12;
 bh=FqBQjREvcACjBzDkIhCAkhf57aXLYf5/WwuqqldkKiI=;
 b=mrVXInI9EN+EES05LTP4C+nza58a0R8xZYXjSwUkoaB7ToaXwxbckIZdf7VxybybU9NC
 LweBF4iDZoaSXWbn2cybWT3jFpUM+gsyTCi0AL27r+e7xDdlvEidieyJokAuHnpnhGo5
 DTULO3MmbO0rtBetqnNXhwWiSnkinJZ6byJBAhXCTrs2JhScjdVCvixlKcr2d5/fML5P
 wLqG3fuhGgg4liegee4ZF2DGT0cbTve62xoScc5gORDy0vwnHdT2B3rI8jXF/dP9AgGc
 Y1A9Dpd/kIoH8LpDqadK1Md0N7rFfDbAjOI8Wcfnhbiy0aP7NsniTL2JU3wymjM6yAUG qQ== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3n3kaa80vy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 14 Jan 2023 03:07:09 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 30E2xIfM018721;
	Sat, 14 Jan 2023 03:07:07 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3n3m3d85tb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 14 Jan 2023 03:07:07 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 30E375hH035466;
	Sat, 14 Jan 2023 03:07:06 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 3n3m3d85sp-4;
	Sat, 14 Jan 2023 03:07:06 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: jejb@linux.ibm.com, andersson@kernel.org, vkoul@kernel.org,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>, quic_cang@quicinc.com,
        quic_asutoshd@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, dmitry.baryshkov@linaro.org,
        ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
        avri.altman@wdc.com, bvanassche@acm.org
Subject: Re: (subset) [PATCH v5 00/23] ufs: qcom: Add HS-G4 support
Date: Fri, 13 Jan 2023 22:06:42 -0500
Message-Id: <167366469091.3069139.11760332738434847058.b4-ty@oracle.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-13_12,2023-01-13_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 phishscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2301140019
X-Proofpoint-GUID: 2Pb_fdYL-h4NF2yuk3MPFoRKBCY-MtfP
X-Proofpoint-ORIG-GUID: 2Pb_fdYL-h4NF2yuk3MPFoRKBCY-MtfP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_190718_826886_8C95278F 
X-CRM114-Status: GOOD (  16.70  )
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

On Thu, 22 Dec 2022 19:39:38 +0530, Manivannan Sadhasivam wrote:

> This series adds HS-G4 support to the Qcom UFS driver and PHY driver.
> The newer Qcom platforms support configuring the UFS controller and PHY
> in dual gears (i.e., controller/PHY can be configured to run in two gear
> speeds). This is accomplished by adding two different PHY init sequences
> to the PHY driver and the UFS driver requesting the one that's required
> based on the platform configuration.
> 
> [...]

Applied to 6.3/scsi-queue, thanks!

[13/23] scsi: ufs: ufs-qcom: Remove un-necessary goto statements
        https://git.kernel.org/mkp/scsi/c/031312dbc695
[14/23] scsi: ufs: ufs-qcom: Remove un-necessary WARN_ON()
        https://git.kernel.org/mkp/scsi/c/a98c2183e81d
[15/23] scsi: ufs: ufs-qcom: Use bitfields where appropriate
        https://git.kernel.org/mkp/scsi/c/18fe2ab79bcf
[16/23] scsi: ufs: ufs-qcom: Use dev_err_probe() for printing probe error
        https://git.kernel.org/mkp/scsi/c/132b027205ef
[17/23] scsi: ufs: ufs-qcom: Fix the Qcom register name for offset 0xD0
        https://git.kernel.org/mkp/scsi/c/7959587f3284
[18/23] scsi: ufs: core: Add reinit_notify() callback
        https://git.kernel.org/mkp/scsi/c/c2c38c573a2e
[19/23] scsi: ufs: core: Add support for reinitializing the UFS device
        https://git.kernel.org/mkp/scsi/c/96a7141da332
[20/23] scsi: ufs: ufs-qcom: Factor out the logic finding the HS Gear
        https://git.kernel.org/mkp/scsi/c/c270986527f9
[21/23] scsi: ufs: ufs-qcom: Add support for reinitializing the UFS device
        https://git.kernel.org/mkp/scsi/c/baf5ddac90dc
[22/23] scsi: ufs: ufs-qcom: Add support for finding max gear on new platforms
        https://git.kernel.org/mkp/scsi/c/2c407fe97015
[23/23] MAINTAINERS: Add myself as the maintainer for Qcom UFS drivers
        https://git.kernel.org/mkp/scsi/c/39beef59128f

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

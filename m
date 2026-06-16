Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26359CD98DE
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 02:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=roVQ9Ni+iABNBI2cq6GEKHlUTrAdavZZomFjfEMBShk=; b=Ntb/ov1q8maRko
	kvcxCrWIra4LHRxOH/wpuOKdKJgUAtX6xxnZfatqQKuKHS5nAGSjS9ifo+uGWmgVUmH8jBam0o7T1
	mWiLWqyYVwu4JDApAVy5oX93E7Va+RqjLWAHpC+OtRML97jvMLVYgL6X0B1fW+vrh+RbLCxkDJLDw
	UXDbEuFSoUWbACji6hHLTpTO7fqVJoFhiUaS/51avFwNAWq0PmunBDFd2TMGsvP7ou5zTnzia9wCz
	cnv4yY4swFYNN3Sgbi7u9gIu3s/cVHqAGL4eC9GXnf4Saq+//YaYhHS87v6Jw+vCvJYmlifR4YdqH
	3vZkAQpBtuSAMiOUl46w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZJVU-0000000F6aN-2Cti;
	Tue, 16 Jun 2026 02:26:28 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZJVR-0000000F6a2-1DfU
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 02:26:27 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65FJrWLg1304448;
	Tue, 16 Jun 2026 02:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=DCIToSqAAuUxIjig/P634q/DCSLKGB/gFfwbWdPS+6w=; b=
	ka1vVPCTeEbWQ5K73cczjxsN64J0fvZL7l0NKJ/cU+0Nm0Lq44ozeVTjjxTdhddV
	kBftqaFx7P8lioOmrCpAlbGNXPOmAu1EqxoHIZn2Dhr/qBm+6V/g9HrHHw1k7bx0
	tzRG9P7ZFHtb8Qw/p7gBzf3ctgpOvio8C8m87WK+J0u6wc/wNEPRUKiJJHEWMM4b
	TcNPp72jxXtj+5nLr1Dzv8n1tWhQHKDE3uTx/1fREnU2DNBxGfTxedH7qvgruNw2
	OlbTz5Ygs22Bt/6eA0v6wn603fYQoYbNzES7lvfMfkE95GfyeCyIG7GCQ9SzQY//
	VhZNTFN8CiGMB3+3w2F9Zw==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4es1q7kn8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 16 Jun 2026 02:26:18 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.7/8.18.1.7) with ESMTP id 65G2NZtA016521;
	Tue, 16 Jun 2026 02:26:17 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 4erwnpnym2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 16 Jun 2026 02:26:16 +0000 (GMT)
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 65G2QE2H023822;
	Tue, 16 Jun 2026 02:26:16 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 4erwnpnyjt-4;
	Tue, 16 Jun 2026 02:26:16 +0000 (GMT)
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com, palash.kambar@oss.qualcomm.com
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: (subset) [PATCH v3 0/3] Add Hawi UFS PHY and Controller support
Date: Mon, 15 Jun 2026 22:26:08 -0400
Message-ID: <178157184615.1899010.4839070160759447766.b4-ty@oracle.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_01,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 mlxscore=0 suspectscore=0 spamscore=0
 mlxlogscore=934 malwarescore=0 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2606040000 definitions=main-2606160021
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDAyMSBTYWx0ZWRfX60L7k1Q6QzuS
 aKbskshzOiKcHLrQdm/6Fkt9t1GYhd2iHDTsntTsiFpYqz0DCoJuY2f463dTIEEkIaWQgfUQDyY
 f8NRlH/hf5IGudFl3OvfN6ErNW6Qd1bnQEGYnc9gHPTJV+RyTi5s
X-Authority-Analysis: v=2.4 cv=e+A2j6p/ c=1 sm=1 tr=0 ts=6a30b44a b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=3cHhxUsnBYRNvqWN0XQA:9 a=QEXdDO2ut3YA:10
 a=5yU3S35YU4bGjq-dph-N:22 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:13723
X-Proofpoint-ORIG-GUID: rQ2UVnJdIHqp6t8-CSMC5uIiauQd4Dai
X-Proofpoint-GUID: rQ2UVnJdIHqp6t8-CSMC5uIiauQd4Dai
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDAyMSBTYWx0ZWRfX3jZYsiqQcEL+
 UOM+W3lW+fKfYsp4wiBCXIyHjP4doLef3uiu7jfE5/vK/FDdSq1stVcUjC1hIfPnvqAGNNIzWLq
 6Byu3qgqBGvh3WYdpmd/Z7KCuR+G15D1pt4eQj0qDSjnWBuin7D8PPpno7Tdxq/l/fOpEuoF4+h
 c9TJJzB7oG1KvEreXFercvqFAqba8N4w6+N2PEvOGAOVC2YWK/iQUhzy6Ob+/oppp72uaXI1t7k
 /dXuOuIUVQ530wVY8A+vyLLtSO5+nnmyt1yzB2vBz7reRNX32fmOSlBfqH15oT5J+Ce52dzQ+iY
 EcYn+MZast46BsN4mDIbt9I8uoQX879L1sQHHgXJc1UYyWeKUjjHm8xfoJNT/v5EMDdeGQpduj+
 JGfLJLMsVk5NeTXQTuadi7pe1RF+w2ME38cFMG41BR4sbxcUU0De6AfuWsqwmdu5n98mcUgCCHi
 4TKowiQIlRxBoQAEocbl6GA70dRvpjpxP2qWY9eY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_192625_336469_A350A0CA 
X-CRM114-Status: UNSURE (   9.48  )
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

On Tue, 26 May 2026 14:39:53 +0530, palash.kambar@oss.qualcomm.com wrote:

> This series introduces devicetree binding documentation and PHY
> initialization support required to enable UFS on this platform.
> 
> 1. Devicetree binding documentation for the QMP UFS PHY
>      used on Qualcomm Hawi.
>   2. Devicetree binding documentation for the UFS controller
>      instance present on the Hawi platform.
>   3. Initialization sequence tables and configuration required
>      for the QMP UFS PHY on Hawi SoC.
> 
> [...]

Applied to 7.2/scsi-queue, thanks!

[2/3] scsi: ufs: qcom: dt-bindings: Document the Hawi UFS controller
      https://git.kernel.org/mkp/scsi/c/63977ab3c6a0

-- 
Martin K. Petersen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38159C43334
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 02:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+vK4dYn3LHzY709QErFtG2xF8rDAKxfcrocEU3MyMs=; b=RA5/PbE5so35DP
	iTCFxzed+65oHnXVIuvM2iYUzgw+5dbhr3fuisdGVXj4R6L4S1Dl4r2fo5n0GAqfw7GDnafgQTwti
	DRjUm8LztM8m1/zipN59a6N3kVeHElTDhVXbXdqWrx/p5JzJxjsjfj/5Jr0DgIxREb80CbKOgzAXh
	jSsl1O4csBO7YM8k1zcxc0LaMM9wdQgpbWk9/u/Jb1qlFqi/4yamJ8HjPZMcRo+8mLYiydZkSYOHt
	zRYCdWpCYj6laOGEKKVv6c85bSoZssADNHsEpzrJnq+2obJF+QEk9ozlnv3Kx72uc7xJ2fcy6fEBT
	pzBP7IBL9wUGGks+Ybug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3pp7-0087sn-Iq; Wed, 22 Jun 2022 02:10:29 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3pp4-0087ri-Lr; Wed, 22 Jun 2022 02:10:28 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25M0J8wm011432;
	Wed, 22 Jun 2022 02:10:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2021-07-09;
 bh=pd/lIFKzWE4I7Kn7X/ukG84VnGOkmKLwAry+/UOI+8M=;
 b=r3F77uQb0ilQCCDUO4J7w4dNJ6iPxZ7EVMKlpFgMCyolLQqHLunkzXl6qEhZr+ghDqnT
 hIVDezfXHVNouRBiaYxst19ZYiybJVQiE1wkcKT8bP3I0VQ9EuUZg3tQlnV3miw7Vozn
 tCWmGLXDZVlDymgTzDSN3oMV5azQc+RBpLUlL9Y9yhhnhhsmEIoJzJYHzuWibRlI+72K
 eln4Dds8//hHuMG6W0WHrYFgo1538WA/WUxZj/2q+CTQF/nF3uA3nmkcXo/ZLEq1N0ln
 bhoy690ex9NUUNeZcMGKrLO/Vylwb7RmYmPPNahBMXJV1uQYtafE6ZXRuoC6yAOh5jqQ yA== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gs6kf72tv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 22 Jun 2022 02:10:19 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25M26YLW038095;
	Wed, 22 Jun 2022 02:10:18 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gtd9usx3e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 22 Jun 2022 02:10:18 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 25M29Bim002724;
	Wed, 22 Jun 2022 02:10:17 GMT
Received: from ca-mkp.mkp.ca.oracle.com (ca-mkp.ca.oracle.com [10.156.108.201])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gtd9usx36-1;
	Wed, 22 Jun 2022 02:10:17 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>, bvanassche@acm.org,
        chanho61.park@samsung.com, beanhuo@micron.com, avri.altman@wdc.com,
        krzysztof.kozlowski+dt@linaro.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/3] ufs: host: ufs-exynos: remove unused defines
Date: Tue, 21 Jun 2022 22:10:11 -0400
Message-Id: <165586371837.21830.10958074240808961453.b4-ty@oracle.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <20220615121204.16642-1-alim.akhtar@samsung.com>
References: <CGME20220615121508epcas5p3a42f8503bb6c6120cb4c0606109fe9c4@epcas5p3.samsung.com> <20220615121204.16642-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: CUCMVEMO4qv7lXOpeiMuW5vVaQr5o8nv
X-Proofpoint-GUID: CUCMVEMO4qv7lXOpeiMuW5vVaQr5o8nv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_191026_758332_9DB501BB 
X-CRM114-Status: GOOD (  12.65  )
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

On Wed, 15 Jun 2022 17:42:02 +0530, Alim Akhtar wrote:

> Remove #defines as those are not used anywhere in the driver file
> 
> 

Applied to 5.20/scsi-queue, thanks!

[1/3] ufs: host: ufs-exynos: remove unused defines
      https://git.kernel.org/mkp/scsi/c/6c6806abd5bb
[2/3] ufs: host: ufs-exynos: use already existing define
      https://git.kernel.org/mkp/scsi/c/cb2bf7c6e544
[3/3] include: ufs: re-arrange addresses in increasing order
      https://git.kernel.org/mkp/scsi/c/c0d93b12f31c

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

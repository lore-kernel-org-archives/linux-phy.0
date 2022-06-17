Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9484C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 02:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAbO+vzURMtoIh9DWMTgz/U4CEnHY9QfENhvuTJnNEE=; b=rHYCG6qXs9ertX
	gJKmevoSq6w9gTnfdnUnv37G3wHX/2XRieJCfwVJwH/1nYvKNp8oIVkyc7DC/6y087IAVIlkByY8/
	DAXJB8qINMEQzgUmWB6Ib93AqPV+BuvqJrYH1EYXJHJj2GGqaLA/bkHoVNPrRyr6u+emqdv2BShkR
	wLDTKTFxV6SsUfb2saY+h3k7VYw2x5JN9yBUwWnz2Wm3MM8c+i1NABLg4ZwsLEqa43JSCq0KjavnZ
	4NqilGBvMnudxhkX9SgnyGSBGN6cuZk9a0g+wm/mhKrdhLKYUUH17p1ZZYbZuRl2VPJgfPVdY210E
	g8V4EcOsZ7zkB0YCa59Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o21cd-0057W7-9b; Fri, 17 Jun 2022 02:22:07 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o21cI-0057Qj-VQ; Fri, 17 Jun 2022 02:21:48 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25H0ZXnF005223;
	Fri, 17 Jun 2022 02:21:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2021-07-09;
 bh=/IDfscGJbigkTQvOBIhJWEmer8zIUjgMWO9p5PQgSQA=;
 b=c+Hn4UMWKOScbRTcOFtwxKFgBLh2TVaTVZ+UpGSuOhFkF7ZgPT0yMXG9RKusN8dnxo/D
 2F9XadrPzyUSAxQQnk734c51g4ZsI2egC59UWlbNjvJVw71rTS49Uam5dhw9T6SEgVLD
 Gvw2EUHCoqiu6XV7qnpuNbYbTz7WAVtGjxzkJezINC2FECsk7QNBt+z0TxPWR9nu3yzX
 jTLNW/tyP1JGXEs94wIZ+dtdOyVb1VVAcklEr3duVu0VjP87Knb0L8sJpXMbmHzJc3WL
 wutrwGcILSIwxk7T7VcKSxq/+wzyUgFoovHI4YHUJXBZ7hIhnTnPVyE8WN5oATkkMFwO lg== 
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gmjnscqr2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 17 Jun 2022 02:21:42 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25H2G6v8029102;
	Fri, 17 Jun 2022 02:21:41 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gpr27jd7u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 17 Jun 2022 02:21:41 +0000
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 25H2LejF040352;
	Fri, 17 Jun 2022 02:21:40 GMT
Received: from ca-mkp.mkp.ca.oracle.com (ca-mkp.ca.oracle.com [10.156.108.201])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gpr27jd7c-1;
	Fri, 17 Jun 2022 02:21:40 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>, linux-scsi@vger.kernel.org
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        pankaj.dubey@samsung.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        chanho61.park@samsung.com, vkoul@kernel.org, avri.altman@wdc.com,
        bvanassche@acm.org
Subject: Re: [PATCH v4 0/6] Add support for UFS controller found in FSD SoC
Date: Thu, 16 Jun 2022 22:21:34 -0400
Message-Id: <165543243408.26207.2708974889131816023.b4-ty@oracle.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <20220610104119.66401-1-alim.akhtar@samsung.com>
References: <CGME20220610104340epcas5p1d6cee31aba4dc2952ef09003c9e67863@epcas5p1.samsung.com> <20220610104119.66401-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
X-Proofpoint-GUID: fsCGy7F8DmoNCfScTqg5Z8WQ6kU3MqkU
X-Proofpoint-ORIG-GUID: fsCGy7F8DmoNCfScTqg5Z8WQ6kU3MqkU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_192147_164162_E0A22FB5 
X-CRM114-Status: GOOD (  14.67  )
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

On Fri, 10 Jun 2022 16:11:13 +0530, Alim Akhtar wrote:

> This series adds support for UFS controller found in FSD SoC.
> The HCI is almost same as found on other Exynos SoCs with minor
> differences. This also adds the required UFS-PHY driver changes.
> 
> Patch 2/6: common change to handle different CDR offsets
> 
> *Changes since v3:
> - Addressed review comments on patch 6/6 from Chanho
> 
> [...]

Applied to 5.20/scsi-queue, thanks!

[4/6] dt-bindings: ufs: exynos-ufs: add fsd compatible
      https://git.kernel.org/mkp/scsi/c/ea83df8e3bd0
[5/6] ufs: host: ufs-exynos: add mphy apb clock mask
      https://git.kernel.org/mkp/scsi/c/daa782a51ec8
[6/6] ufs: host: ufs-exynos: add support for fsd ufs hci
      https://git.kernel.org/mkp/scsi/c/216f74e8059a

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

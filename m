Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 021D9C77B7A
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 01:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbU0seFsH/h1WHnAfEyW8FlCiyy6KP4Il92iWuJM9pE=; b=111RiAo/UGINdH
	6b60r4c1X025SIAvyqhr3GF3b9+HaHQO2J6TzhwgNyaw23linbdy0oX0B1CCEt7J+kG/ixusMIw/V
	uIMIHEdf7roVHNmkOyl1jVBmlXpTWoV6T4FMXPe4aTfBAjZo1S9j9X27LgSGtAFfqgFN40P56lA8x
	rtqhHIQrdfvWVIjHC+gj1/S4532xZwLgfNDDwR3Fx14YeWYzGepepL2hBIln55FsG/hKPn6v+KpWv
	n3ywMq7DhsdhNCA6MnInjooowItu9D+sy5bH40HSh87+PnwzuDOrEDm4nxNi6G+ccBIQxOEtPPheO
	gZmaTPZ/R012fK8BHfhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q74fn-007k1W-27;
	Thu, 08 Jun 2023 01:42:47 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q74fk-007k0p-2i
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 01:42:46 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3580D9jR007991;
	Thu, 8 Jun 2023 01:42:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2023-03-30;
 bh=Q6kM48ESgawSfdxkndrYuouwRVzlr2X8k1kys8tskRE=;
 b=Lh78/h6/RPTZ4eFQKFy7laYD7jYnKljH9M6x4cMSeRZaA4iHJiPJffbTth929RgtJoqV
 VTQiKzH6SkDr1961SX5KET/PrsrWOlcfkMkQngQPw8BzMhLxuJkdpBr3BXlPmys4TTMa
 42+Js0GztdADPE8Z1OQyLb+cAP4J+gSCeouvQqQBXPWClOm2RZZ+6HfhQknT4R3CEuBo
 hTIhVsg2ZnUwe6i+Gk+mvoBmA+cp1feuA3W356jlsZG683Mh6ntdtqm5o1x3NqPrEu2q
 +6gqpHtQ2WoQUWK17WnWA1m8z/h3I2bAsL30fa7v6OSI0A6FfqeBkhGnsoupluMECigb Fw== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3r2a6rk4un-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 08 Jun 2023 01:42:36 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 35803Rij036504;
	Thu, 8 Jun 2023 01:42:35 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3r2a6hyt77-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 08 Jun 2023 01:42:35 +0000
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3581gQUn031871;
	Thu, 8 Jun 2023 01:42:34 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 3r2a6hyt3a-6;
	Thu, 08 Jun 2023 01:42:34 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v3 0/5] arm64: qcom: sa8775p: add support for UFS
Date: Wed,  7 Jun 2023 21:42:10 -0400
Message-Id: <168618844267.2636448.1192247129284766486.b4-ty@oracle.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230411130446.401440-1-brgl@bgdev.pl>
References: <20230411130446.401440-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-07_13,2023-06-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 adultscore=0 mlxlogscore=905 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306080011
X-Proofpoint-ORIG-GUID: dSmpP4gMeJMW194IYgO-0S7W6wARbY-I
X-Proofpoint-GUID: dSmpP4gMeJMW194IYgO-0S7W6wARbY-I
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_184244_996765_64E9A631 
X-CRM114-Status: GOOD (  13.85  )
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

On Tue, 11 Apr 2023 15:04:41 +0200, Bartosz Golaszewski wrote:

> Update relevant DT bindings, add new config to the driver and add UFS
> and PHY nodes to the .dtsi and enable them in the board .dts for
> sa8775p-ride.
> 
> v2 -> v3:
> - fix DT bindings: move allOf: below required:
> - collect review tags
> 
> [...]

Applied to 6.5/scsi-queue, thanks!

[1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
      https://git.kernel.org/mkp/scsi/c/8f0c17bf6bf3

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

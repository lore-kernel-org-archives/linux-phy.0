Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61AACD74EC4
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Do0Iz4JXtW/tq4jsRQxcFYsmrAXVtOJ55J4/S5i5fUs=; b=jVGgyJOiCTcI+r
	WmPj2G/+YOLNvzY7Ee6pBdYtJW99q2Mypjq8sE8AglaJSeOznGfmKM5mMcc5Lwe7MryTzTfQ61T+A
	04Q3c/peo5KF+QXn9/b445gT/d6bAG5GLSWWGXnCBE8gcBc8wGULEisDyBGZtK1SquHsfTh4qURR4
	EGcx7BvarTjfuw1T93ekHX2hLxKkG1bsfl83rsT6A4pY1nZ53XiKQAV9+QRLWh1mMQdrk+V57mhMQ
	DYHsZJ6WDuEb40IrDc3dJ4t6FDtAYlWIQzcXLVCVZ0xwIESmnXQsAuMfO8BB0N2TBTfEnrf3PkMIQ
	5q9eK8Y1CxRvimT+Nr2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjGnS-00000008wIr-3h8y;
	Fri, 23 Jan 2026 13:01:54 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjGnP-00000008wIQ-48jx
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:01:53 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 60NCONl1028814;
	Fri, 23 Jan 2026 13:01:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=SjzL1k
	JakPceUaj7S1H6MzI+kh6xu3kpF6vyjr0DKdI=; b=LqG85AvFl2pE6JOrrB5vYc
	t7FH5eZW1MzMwSnphJGYBiwuqKLUkSPqkLQI+RLGWpWM2AL7GMwXPHAsggpTYsXR
	PU+7wMluRhpbe7JmbLevxqoZCO3hJBRt5nIxA0JUBro2/cEHRhfW9QIWFrprHNRF
	vlil17jjld3N8OAGtZJhnVNPIV5Q33mS2i+rMu+ASbtmc3lB3aKloA15Qaj+7pNw
	lMBas9tMYIz4x34OtlDC+N703ZAYkTjrda7b54DvsFGqEEjOs4MW+YbC301cNvts
	Apd4qSyYBySnLfLpkD72ux5EvSXV/rjFvemb8mOgTnYNkb+dlW/ak09XqZXYsgFw
	==
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4bt60f3mjk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Jan 2026 13:01:47 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 60N9oRhi024575;
	Fri, 23 Jan 2026 13:01:47 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 4brxas7emq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Jan 2026 13:01:46 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 60ND1kVH28770900
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 23 Jan 2026 13:01:46 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 08EE958067;
	Fri, 23 Jan 2026 13:01:46 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0E8F558068;
	Fri, 23 Jan 2026 13:01:43 +0000 (GMT)
Received: from [9.61.252.89] (unknown [9.61.252.89])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 23 Jan 2026 13:01:42 +0000 (GMT)
Message-ID: <b06408c4-86cf-46e8-8740-d968cc12d192@linux.ibm.com>
Date: Fri, 23 Jan 2026 18:31:41 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy] phy: enter drivers/phy/Makefile even without
 CONFIG_GENERIC_PHY
Content-Language: en-GB
To: Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
        =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>,
        linux-kernel@vger.kernel.org,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
References: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
From: Venkat Rao Bagalkote <venkat88@linux.ibm.com>
In-Reply-To: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
X-TM-AS-GCONF: 00
X-Authority-Analysis: v=2.4 cv=WMdyn3sR c=1 sm=1 tr=0 ts=6973713b cx=c_pps
 a=bLidbwmWQ0KltjZqbj+ezA==:117 a=bLidbwmWQ0KltjZqbj+ezA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=VnNF1IyMAAAA:8 a=8AirrxEcAAAA:8 a=N9vyIDjvMmDcvu0NZNMA:9
 a=QEXdDO2ut3YA:10 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: 4KutBShFaPsB7qcJPcuSaOTKIBBvMaHQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDEwNSBTYWx0ZWRfX8EJHz812+tgK
 StlAW/s11JPJs8EyDx2uNgAPGvDQ8X6DRob07zIoCmCD4FDnCj0MLyXnuku6cfbcoZW/lo+lLnb
 FTyQYcbUea7+QRJoSIkuMVHS9eh/hkT5tWqN6EoaYPUaC6VsWSHsCergEAcFpvfwSv/TEJYnp0t
 hdztwfuaO9UzFu0BmFrdhNM3oDCq0xASw1EfTU79rA97kYeqw8JiQtdL/rXo1XyVRq6qtLFnEKw
 dxYCSmwH46xD5u4BFPuUNBY9RFBN2UqcUsuiRdB3YBym0r6wGGrywI47KapwRzfLWWG9XdGqcpz
 3fPMljxU1QbqAcMokmAHnF+rZP5RpdUOCSa+IbcEUmkso6Q1mpRBMNX2jlbV+vAcQ4Zu/WG4eia
 GRTW1sYUmKmu6lfbdDFQqXV5rgmXUtrLka3SmQ24e4b2WIRziJRr9hibqnph1S/URrwMH7xrPzE
 B8jGChmR5/GUR9qaM1Q==
X-Proofpoint-ORIG-GUID: 4KutBShFaPsB7qcJPcuSaOTKIBBvMaHQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0
 impostorscore=0 spamscore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2601150000
 definitions=main-2601230105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_050152_033840_C2368BA2 
X-CRM114-Status: GOOD (  16.43  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 23/01/26 4:36 pm, Vladimir Oltean wrote:
> Kconfig option CONFIG_PHY_COMMON_PROPS, which builds
> drivers/phy/phy-common-props.c, was intended to be selectable
> independently of CONFIG_GENERIC_PHY. Yet it lives in drivers/phy/, which
> is entered by the Makefile only if CONFIG_GENERIC_PHY is set.
>
> Allow the Makefile to enter one level deeper, but stop at drivers/phy/
> if CONFIG_GENERIC_PHY is unselected (i.e. do not enter vendor folders).
> The other stuff from drivers/phy/Makefile except for CONFIG_PHY_COMMON_PROPS,
> like CONFIG_PHY_NXP_PTN3222, all depends on CONFIG_GENERIC_PHY.
>
> Fixes: e7556b59ba65 ("phy: add phy_get_rx_polarity() and phy_get_tx_polarity()")
> Closes: https://lore.kernel.org/lkml/43ea0202-891d-4582-980b-5cb557b41114@linux.ibm.com/
> Reported-by: Venkat Rao Bagalkote <venkat88@linux.ibm.com>
> Debugged-by: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>


Tested-by: Venkat Rao Bagalkote <venkat88@linux.ibm.com>


> ---
>   drivers/Makefile     | 2 +-
>   drivers/phy/Makefile | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/Makefile b/drivers/Makefile
> index ccc05f1eae3e..53fbd2e0acdd 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -10,7 +10,7 @@ obj-y				+= cache/
>   obj-y				+= irqchip/
>   obj-y				+= bus/
>   
> -obj-$(CONFIG_GENERIC_PHY)	+= phy/
> +obj-y				+= phy/
>   
>   # GPIO must come after pinctrl as gpios may need to mux pins etc
>   obj-$(CONFIG_PINCTRL)		+= pinctrl/
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 30b150d68de7..93715ea0d010 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -15,7 +15,7 @@ obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
>   obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
>   obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
>   obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
> -obj-y					+= allwinner/	\
> +obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
>   					   amlogic/	\
>   					   broadcom/	\
>   					   cadence/	\

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

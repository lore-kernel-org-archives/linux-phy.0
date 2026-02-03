Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC8B4E83071
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 09:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Du3i6/B/HKpaKZnA0RcEqeop84NO+Q2HAnFPu4Cw+E=; b=k0I3XkcsoAgtJI
	6YgtpWdIGjJ77ZcVtTRkxHcWCRMbGM20GeDnQ1RAxS8xLN9lwYHXGG/+Bsy2Yb6uZEq8omwL/dSQv
	t8BShcB+F7Im0xE0APUPC9SDTkhxwqSyJQdrQ9adF7dvo00/tnjetfrm4wI8TbrpIhIDlo0NVzwZ2
	O4wjPvP0iCWyCx87UANitTsbjNfzrDB2JCV2iogOUqkJKQXYc1Ozcfl3LqOJTtjDLP3LI2PXkQx1v
	19Gm7fBDtBt0x6/5SCVGBmxFBIQJMDh663soWWeENWm7wcdEihmqHA1RPu8qVNo73C6FF2jd09qai
	HlbFyODj8LD6GzTskaNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnD9Z-00000006Ql2-1HKD;
	Tue, 03 Feb 2026 09:57:01 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnD9W-00000006Qkc-1ekf
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 09:56:59 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 6131scWZ025324;
	Tue, 3 Feb 2026 09:56:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=ql+DEP
	lp5fFK9lwAFt31Q1tcqhvjvE7n0PwRkg3SLOA=; b=D7sKfpOqUQ/CQRSTZfcpeB
	WLiCldmxL7MgLpV9Fmc0N5wvHgbUKrkzKbLinentD7d+GpA/I8XwLYnHTCj3w8ge
	0DdHB2181Pv2dhsvVg159/OvI3I05ykWQ7YGy8336q2tuEpU7J7RL0C8GWKW/+kN
	331B5MbuQxrzsRoqn22uNHW543Ra0Mf8Fekv2z5D3HQIGGBNB0n2TrEtlLu1v7O8
	joUAcGJ7KRjjn6zjIX83x049mXok3JzSafMf3hCkgqgDdPHMN3tSPnhzdVUB7xmV
	uhKF8THzTckTWLRs+GeJDbzC/5bsl1CZwVlp8gHxKP8lhHBiKffYv75EobK6aGMQ
	==
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4c19f6cq7q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Feb 2026 09:56:53 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 6135dlOt025706;
	Tue, 3 Feb 2026 09:56:52 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4c1w2mrkhu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Feb 2026 09:56:52 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 6139up6628967628
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 3 Feb 2026 09:56:52 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D2DDE58056;
	Tue,  3 Feb 2026 09:56:51 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BE3E558052;
	Tue,  3 Feb 2026 09:56:48 +0000 (GMT)
Received: from [9.109.248.127] (unknown [9.109.248.127])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  3 Feb 2026 09:56:48 +0000 (GMT)
Message-ID: <007a2100-0913-4a8f-82d3-8118664fc1a7@linux.ibm.com>
Date: Tue, 3 Feb 2026 15:26:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy] phy: enter drivers/phy/Makefile even without
 CONFIG_GENERIC_PHY
Content-Language: en-GB
To: Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>, broonie@kernel.org
Cc: netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
        =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>,
        linux-kernel@vger.kernel.org,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
References: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
From: Venkat Rao Bagalkote <venkat88@linux.ibm.com>
In-Reply-To: <20260123110600.3118561-1-vladimir.oltean@nxp.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: dqa0YwJcz00rU6QBJE95XkQcdrf1Hdkl
X-Authority-Analysis: v=2.4 cv=drTWylg4 c=1 sm=1 tr=0 ts=6981c665 cx=c_pps
 a=GFwsV6G8L6GxiO2Y/PsHdQ==:117 a=GFwsV6G8L6GxiO2Y/PsHdQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=VnNF1IyMAAAA:8 a=8AirrxEcAAAA:8 a=N9vyIDjvMmDcvu0NZNMA:9
 a=QEXdDO2ut3YA:10 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: dqa0YwJcz00rU6QBJE95XkQcdrf1Hdkl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA3OCBTYWx0ZWRfX5lxuQZobrzF0
 eCbpusseL/0WmoRcWzBXw0b9wgfu+DrEZYxUbQMcwhzIh72nyCuO8+w/L6zpQ2IAdL41X4tr4Tt
 rx0RNESdpRuEYRV5AnrEn3mTLNXTYQGAzI8QEpHPB9gteM7B/0Sham54pW+odQowOeNEiSvqv/a
 PTuj90gCFHOs05pqBAIK+NIsh7zNniuOmaR8Pk1yDbZoeurgva6RJi1dN2tDYRvqnmwyL04l6Ym
 TguoaMDOQTG7MPGHabgXUFT3QaRn9ZoHhGILhuisWnbmz5hU5QTIwZhdZy3RFMDKLpNi1hgWe9W
 Zvgx0+7lkS3JdiOInCvo3Yv+rUXZrmtwVZt9zoMZl4tPkETM5A8u5wiINoRAgB7VipHT3AdSS9D
 O7MiyIiELy2l17h+bOmiGJJ+rn5cghn3vZfN0nU8U0Y6OILBb62Mnp5Jzg3eoV4vkvhZs3Z2dYQ
 YItHZLY9pE84wyqZFhA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2601150000
 definitions=main-2602030078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_015658_444045_4A22DF25 
X-CRM114-Status: GOOD (  18.18  )
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


I still see linux-next build failures with next-20260202. Can we please 
have this patch merged.


Mark, can you please pull this one.


Regards,

Venkat.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

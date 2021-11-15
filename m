Return-Path: <SRS0=nYWN=QC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697B0C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Nov 2021 10:30:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 225E361BFA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Nov 2021 10:30:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 225E361BFA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vZYKxN4RL47HUFlQoy8sPp02nz6iFVRJUKu819Fa1+s=; b=OgZbgDBwB3bTbZ612jf9juYcJU
	jfA4eOP0qyKt8yUk5MO89SmsiuirCjGnYnmGuYovqckbIoxqTSkGz0IeAQBsOYGkyoqyt1YP2q0Ba
	l+aDLQKpb8qf9GDSCvu4DCXZriwV9JCnqj01CWaqssFBxp4WPlggvmAgwzLz802faXYTOvya2P0T1
	frOAwG7iCZVq3vwN62hggS0pxsf6JIT5kfF3DWjPmWK1fmuP2bCRqq7D6DgQRYrL+WcM723p3b//3
	XvTUQPfRNZoBSSsvn3Rv6MNMpQWT+B8EGL0AtkhhqSVOaBirGwRJFbXo9lNu0UYbpYYgSsBgM/OSJ
	5K2zpAOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmZG9-00FCTI-Ba; Mon, 15 Nov 2021 10:30:45 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmZBa-00FBJK-Vg; Mon, 15 Nov 2021 10:26:07 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1AF8sjc7006661;
 Mon, 15 Nov 2021 11:25:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=OBTHaDPVAeUyWjvL19tyCYUzLLTVfgrUYyMf7H/p9Ow=;
 b=nVlBUXxLNUBPS9t4Q6GA2ogtF7ORLFRmgtuAOJYdbR/1Yr/HSlDuKFG+kXWaZkeKruH0
 KJeaJqMl2cSNjrGBAVUOrMAOpjqGW69blIda/p6xpOAcQhfC5p6fGuwkhmTN6BR3tsK/
 BGnn/1hh3SvlCr2F3tUwMpefNweeTDNUuy4duYrQ+8mLrCaG+rbh2otl+a9PNaajWdG/
 jQrY/JC8O/RdPPGwyTB+DDLU8lRpgabhsgrtFcsiLmi1j0h5Q0OTd7ZcdSmQog1TCjHU
 VrymE4bszjBgKhiS+QpHj4uNBObsb+6HwK/eNreU+SPWrhCb+MgqqqgfsgZ3V/BXR+Yx Dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3cbmf40kc9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Nov 2021 11:25:53 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EB2DA10002A;
 Mon, 15 Nov 2021 11:25:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E1CB02291B8;
 Mon, 15 Nov 2021 11:25:51 +0100 (CET)
Received: from lmecxl0995.lme.st.com (10.75.127.47) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.26; Mon, 15 Nov
 2021 11:25:50 +0100
Subject: Re: [PATCH 1/1] phy: stm32: fix st,slow-hs-slew-rate with
 st,decrease-hs-slew-rate
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20211026154817.198937-1-amelie.delaunay@foss.st.com>
From: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Message-ID: <d4e76549-4f27-6043-64c1-411261b8a5aa@foss.st.com>
Date: Mon, 15 Nov 2021 11:25:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211026154817.198937-1-amelie.delaunay@foss.st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-15_09,2021-11-12_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_022603_410661_123A9195 
X-CRM114-Status: GOOD (  20.38  )
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

Hi,

Kind reminder.

Regards,
Amelie

On 10/26/21 5:48 PM, Amelie Delaunay wrote:
> st,decrease-hs-slew-rate is described in phy-stm32-usbphyc.yaml. Then
> fix the property name in driver.
> 
> Fixes: 2f5e9f815a2f ("phy: stm32: add phy tuning support")
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
>   drivers/phy/st/phy-stm32-usbphyc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
> index 7df6a63ad37b..e4f4a9be5132 100644
> --- a/drivers/phy/st/phy-stm32-usbphyc.c
> +++ b/drivers/phy/st/phy-stm32-usbphyc.c
> @@ -478,7 +478,7 @@ static void stm32_usbphyc_phy_tuning(struct stm32_usbphyc *usbphyc,
>   	if (!of_property_read_bool(np, "st,no-lsfs-fb-cap"))
>   		usbphyc_phy->tune |= LFSCAPEN;
>   
> -	if (of_property_read_bool(np, "st,slow-hs-slew-rate"))
> +	if (of_property_read_bool(np, "st,decrease-hs-slew-rate"))
>   		usbphyc_phy->tune |= HSDRVSLEW;
>   
>   	ret = of_property_read_u32(np, "st,tune-hs-dc-level", &val);
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

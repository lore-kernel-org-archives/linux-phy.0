Return-Path: <SRS0=Qy0S=KO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610CEC433ED
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 02:46:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 250DC611BF
	for <linux-phy@archiver.kernel.org>; Wed, 19 May 2021 02:46:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 250DC611BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=mediatek.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:CC:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i+MnERftjm1PczGmm01HvByv3HINXM24Go5I9Qe9jds=; b=a5bqIuLFW9aZhDVW/fooHW9tz
	Pd5YxXBqSST3Zp7r+2RA7+0pkUvYcToBy3bRGaYVJYm3aDr26tKaWVhm46AXtsDSTXl8aVgO5Nvt9
	fXRGaQ+4Ht28k/jOX3DZ1Gil8d4+Dux3MCNxHWJGVklHk8B6wrZxb0kaIeNtBbQbyx6HOQjpJtF64
	96Ms/nPvIfIIbE/h56JenANCG4jqJ0e8y5IXywXLKet3yhafNVSpG5K6NqxXmhVQGDlXhMVzq7GiZ
	iDs/6rdWPKZqwd/yADEIVGu1bEA9J3+dlDwzT9fICzhDmkp2K5QroN+q5HVZIjQvQyMQHovM+Jo4h
	RzNUeHRpg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljCES-002Wu8-Hd; Wed, 19 May 2021 02:46:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljCEM-002WtJ-VG; Wed, 19 May 2021 02:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=VEzORXZXTvU7eYTmk77wtpcjmjFnCZQDk56FWp8DxdI=; b=FPWzOUaVLcxfQg9xaCJhq+ccsU
 8jFqSoybXKyyIctq3/95c/6zVg0KWPdV6VyFZK3h8VBkptGueISptnmE35+4+EQkt4U89W1Gr8YWV
 rAKKoXm0Amjqxly80BFlrQP2PdGztD/yyedapZNB8YmpUrr9ctZNhDv2GJUnA1A9A40izXcvI+ftA
 LRlX2g383OG7SFgL4xMGHIl8HWSsGCseICWtZCXFbgkLJoaislngmjSF6dmMAXaMFImOZ+4BWk3tu
 K8r7Xm1a4u6uUK6zg1I6UwqI1SqCS+LaVUI0gpEkcHhqSgAWzWFrKIdL5XYRdO5fy9sdzlA+PVY9P
 7++CamrA==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljCEJ-00F52J-IO; Wed, 19 May 2021 02:46:40 +0000
X-UUID: 51171cb441e44948ba301b07ed96a08a-20210518
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=VEzORXZXTvU7eYTmk77wtpcjmjFnCZQDk56FWp8DxdI=; 
 b=Odq3teru8Qo22puSd6vNUrfgLCgCWjekKUPuhAe0x2hZ5j1YqoQ8mzvTrfN9eKBE2Sc5gShzfGIhM1dKTt6Ge28pHVQSp4WuuiaH1ikyKQh9qrn8QbN8nxsB7D4pFJN3FpYh89yJzvEAR9o5UwRwyF7tqIKjqDFTotnjFUI6kS8=;
X-UUID: 51171cb441e44948ba301b07ed96a08a-20210518
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 908813488; Tue, 18 May 2021 19:46:33 -0700
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 18 May 2021 19:46:31 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 19 May 2021 10:46:18 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 19 May 2021 10:46:18 +0800
Message-ID: <1621392378.22329.5.camel@mhfsdcap03>
Subject: Re: [PATCH] phy: phy-mtk-tphy: Fix some resource leaks in
 mtk_phy_init()
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <lkp@intel.com>, Dan Carpenter <dan.carpenter@oracle.com>, Heiko Stuebner
 <heiko@sntech.de>, <kbuild@lists.01.org>
Date: Wed, 19 May 2021 10:46:18 +0800
In-Reply-To: <1621257600-15046-1-git-send-email-yangtiezhu@loongson.cn>
References: <1621257600-15046-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 384A46F9F68EB2F10770BDD73B9B15BC7D398B264992835F51000680BDA137352000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_194639_652461_E6658352 
X-CRM114-Status: GOOD (  15.17  )
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

On Mon, 2021-05-17 at 21:20 +0800, Tiezhu Yang wrote:
> Use clk_disable_unprepare() in the error path of mtk_phy_init() to fix
> some resource leaks.
> 
> Fixes: cd4ec4b03dc1 ("phy: phy-mt65xx-usb3: add mediatek directory and rename file")
No need add Fixes tag, there is no da_ref_clk when apply this patch,

> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> ---
>  drivers/phy/mediatek/phy-mtk-tphy.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
> index cdbcc49..731c483 100644
> --- a/drivers/phy/mediatek/phy-mtk-tphy.c
> +++ b/drivers/phy/mediatek/phy-mtk-tphy.c
> @@ -949,6 +949,8 @@ static int mtk_phy_init(struct phy *phy)
>  		break;
>  	default:
>  		dev_err(tphy->dev, "incompatible PHY type\n");
> +		clk_disable_unprepare(instance->ref_clk);
> +		clk_disable_unprepare(instance->da_ref_clk);
>  		return -EINVAL;
>  	}
>  
after removing Fixes tag, 
Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Thanks

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A4A4C54E67
	for <linux-phy@archiver.kernel.org>; Wed, 20 Mar 2024 07:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGI/cm0gCH+m3741NAPlE4ZJsB285Wjlu2p3u6hBoVM=; b=usTEg0bare2bQ7
	mTJaWCUBf8VxrmXVgfS+nxYEG5d11JV34Xg0WQu7LEQp9RawZXcAhyxWUEXlGwZeIjeVI0zaVJwE6
	Be/QRpdDT/lgNcuuXygs5huA3n3qLKSZNBnfD5tK3MFo7Fi9oYf8biP2bKthQcccHtyljYpDa9dtW
	PBF+FrXAi/3Vs7hGR1hJhm/ew19U164NcVRkgb13bLkOd+dd1j7IwcHhEE2URq2i4THhh9wcdaW7O
	7SkYPolKd/IhNUjqwfDge36PpYNHVizua2dswS+4DN1H8M+8hcFJqonj6Wwj3jtiF6HbJyXqV4aRP
	VxVw/WzAGo7jFsZ+taoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmqdS-0000000Fzg7-03nR;
	Wed, 20 Mar 2024 07:45:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmqdP-0000000Fze2-12Kc;
	Wed, 20 Mar 2024 07:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=G30qDNGsYpoAs9e2Fev9q4x3U8X+mKvech/LuR0V5SM=; b=oUp20GkU/hJkWLB2keRwAvt8du
	kloldvJ0HtORNqi7slICrLXzmkY/8ineKtbtEtrJWNoDX8RJosunecaMid6rKTny6pWCipYvUVBAI
	IoBCWVte4Iw/bM7UQfJtL9BL7YvGGPoSZQTIggaJKSUuQHEkPR8qAHc3g2oojT4NoYZPLXWkbvNFX
	jnt3BEusjZgiY7YGovlwaJp4X2p1CHQo30iqdncuK7qKBSNv4WHZ4/rIg2MtBvjfgHD8NII5+m8So
	GMVSk+2OUVGR9feKaGzCug6Lfcr3aZLDzy81npgBHhSY0LSsxKAtiizlIG0CfojK9e1KzjmNLSKRU
	So4WudEQ==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmqdH-0000000DbGK-2KyZ;
	Wed, 20 Mar 2024 07:45:11 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 42K7iXW8064345;
	Wed, 20 Mar 2024 02:44:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1710920673;
	bh=G30qDNGsYpoAs9e2Fev9q4x3U8X+mKvech/LuR0V5SM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=zR4dYbbIOU0T9kSt2VAkyYXxgXqFflmKQJcJc+YRexUebfWrIRTYWDW/9HdGCRAH2
	 2KUlZh22RTmTpHqsFOz+C2TVKTzBC+DoK9AZodPH7VJPCFH79hW1rqqmURZtTPHqsv
	 OyhxsW9BCi0nXXAUXKmJx4XlNhwYmsvj5qI2UeJE=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 42K7iX2x116495
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 20 Mar 2024 02:44:33 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 20
 Mar 2024 02:44:32 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 20 Mar 2024 02:44:32 -0500
Received: from localhost (dhruva.dhcp.ti.com [172.24.227.68])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 42K7iVIb016176;
	Wed, 20 Mar 2024 02:44:32 -0500
Date: Wed, 20 Mar 2024 13:14:31 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Thomas Richard <thomas.richard@bootlin.com>
CC: Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski
	<brgl@bgdev.pl>,
        Andy Shevchenko <andy@kernel.org>, Tony Lindgren
	<tony@atomide.com>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        Vignesh R
	<vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
        Janusz Krzysztofik
	<jmkrzyszt@gmail.com>,
        Andi Shyti <andi.shyti@kernel.org>, Peter Rosin
	<peda@axentia.se>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Lorenzo
 Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?=
	<kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas
	<bhelgaas@google.com>,
        <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
        <linux-i2c@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-pci@vger.kernel.org>, <gregory.clement@bootlin.com>,
        <theo.lebrun@bootlin.com>, <thomas.petazzoni@bootlin.com>,
        <u-kumar1@ti.com>, Andy Shevchenko
	<andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 02/18] pinctrl: pinctrl-single: move
 suspend()/resume() callbacks to noirq
Message-ID: <20240320074431.6yzao3jlyaxuii7c@dhruva>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-2-6f1f53390c85@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240102-j7200-pcie-s2r-v4-2-6f1f53390c85@bootlin.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_074509_037796_B1FF3ABC 
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

Hi,

On Mar 04, 2024 at 16:35:45 +0100, Thomas Richard wrote:
> The goal is to extend the active period of pinctrl.
> Some devices may need active pinctrl after suspend() and/or before
> resume().
> So move suspend()/resume() to suspend_noirq()/resume_noirq() in order to
> have active pinctrl until suspend_noirq() (included), and from
> resume_noirq() (included).
> 
> The deprecated API has been removed to use the new one (dev_pm_ops struct).
> 
> No need to check the pointer returned by dev_get_drvdata(), as
> platform_set_drvdata() is called during the probe.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---

I was planning to do this but didn't see particular benefit to it. Do
you see the benefit on your specific device? Can you help me understand
how? Not against the patch, just curious.

Reviewed-by: Dhruva Gole <d-gole@ti.com>

-- 
Best regards,
Dhruva

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

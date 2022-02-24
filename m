Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F46C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 16:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Resent-To:Resent-Message-ID:Subject:
	Resent-From:Resent-Date:In-Reply-To:MIME-Version:References:Message-ID:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Sender:Resent-Cc:
	List-Owner; bh=U8e9fEIClJBqlO/IE1aLFllsPzQPyTg6ZqLXVVSTNx4=; b=uWfdnSq+rfTtxP
	bmc6uSXmWfPGvRvoB5gxSOrJLx8CfvigOlHHMchwhZKzZSI0RPHAcqtJEMcV9C1jqCgNZIb4TmPh9
	1ynbDlthnP6BA0Kgo56lYDWAfa4g2eQn6nfRlFx8j937oJeyJ77hZKVDUuU1o4sjXFoa80w0otOul
	JzXz91jpBoqXLbUqgjmEdMzPjaixxM04kLkB1QMqykaSpZjFYMBPf8KR0200FmZ8vQlAezu+Ly+w4
	r6uO0OMdkuRRFdYyolPll2Gxey2g4ykmdX63iLuXCUN5tQJ9QV2uMP/r7TIIBYub/v9bjU4h6x7fh
	sSBcOGFC2LC7kOS3RzFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNGXU-001QHP-7p; Thu, 24 Feb 2022 16:00:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNGXR-001QEa-4c
 for linux-phy@lists.infradead.org; Thu, 24 Feb 2022 16:00:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A2D8C6179C
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 16:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6241C340EC
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 16:00:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=srs0=5vjk=th=arm.com=lorenzo.pieralisi@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.kernel.org E04C1C340E9
Authentication-Results: smtp.kernel.org;
 dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=arm.com
Date: Thu, 24 Feb 2022 15:37:21 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> (by way of Marek
 =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>)
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: pali@kernel.org, linux-pci@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Message-ID: <20220224153720.GA5579@lpieralisi>
References: <20220224151718.7679-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220224151718.7679-1-kabel@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spamd-Bar: -------
X-Virus-Scanned: clamav-milter 0.102.4 at mail
X-Virus-Status: Clean
Resent-Date: Thu, 24 Feb 2022 17:00:12 +0100
Resent-From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
Subject: Re: [PATCH phy v4 5/5] Revert "PCI: aardvark: Fix initialization
 with old Marvell's Arm Trusted Firmware"
Resent-Message-ID: <20220224170012.79f40a43@dellmb>
Resent-To: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_080017_291356_8D34A6EA 
X-CRM114-Status: GOOD (  19.24  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Feb 24, 2022 at 04:17:18PM +0100, Marek Beh=FAn wrote:
> From: Pali Roh=E1r <pali@kernel.org>
> =

> This reverts commit b0c6ae0f8948a2be6bf4e8b4bbab9ca1343289b6.
> =

> Armada 3720 phy driver (phy-mvebu-a3700-comphy.c) does not return
> -EOPNOTSUPP from phy_power_on() callback anymore.
> =

> So remove dead code which handles -EOPNOTSUPP return value.
> =

> Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> Signed-off-by: Marek Beh=FAn <kabel@kernel.org>
> Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
> Dear Lorenzo,
> =

> could you please give your Ack for this, so that Vinod can apply it
> with the rest of the comphy series?
> The series can be found at
>   https://lore.kernel.org/linux-phy/20220203214444.1508-1-kabel@kernel.or=
g/
> =

> Marek
> ---
>  drivers/pci/controller/pci-aardvark.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controll=
er/pci-aardvark.c
> index 4f5b44827d21..6bae688852a5 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -1482,9 +1482,7 @@ static int advk_pcie_enable_phy(struct advk_pcie *p=
cie)
>  	}
>  =

>  	ret =3D phy_power_on(pcie->phy);
> -	if (ret =3D=3D -EOPNOTSUPP) {
> -		dev_warn(&pcie->pdev->dev, "PHY unsupported by firmware\n");
> -	} else if (ret) {
> +	if (ret) {
>  		phy_exit(pcie->phy);
>  		return ret;
>  	}
> -- =

> 2.34.1
> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

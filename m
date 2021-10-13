Return-Path: <SRS0=vCLD=PB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F39C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Oct 2021 13:17:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 633DE6109E
	for <linux-phy@archiver.kernel.org>; Wed, 13 Oct 2021 13:17:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 633DE6109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQSHXjAZzNLbVJ+mbkEKNmjoPteabEgxKr9IQyUje6E=; b=FKEXZfVZfFuCuF
	TZhf7cvoiQFO7nAtMqdYFUYI/ETrlY3uBvgmlCRD6z5demWrsMJidUhNJz4jv2swSmmQ0B3ww9j2M
	3jeSe5g4wJtjoapnuogKwyrhU4rgEkp5hH+6T8n8FDnCUqh0XotyZ+Devyjo1sbqH4KtS4JrRmO7X
	RfPyypizLRuJt7YbLvEjtNT2e61Abw3sjEjjroT9MfrNi8oCWfKSax6GoXdvbsHS6CD1fhRI5upHU
	u5lTK03bB13Gxx4enElxvUC5mFTtWfBOYgYMwC04e0iiiXno+avdippoJbsXkk0DHSd+iPCQ9i9E7
	PI/s/lcq6VAo9GjRA4lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mae8I-00Gpbu-Mr; Wed, 13 Oct 2021 13:17:22 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maddr-00GerY-Ay; Wed, 13 Oct 2021 12:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1634129155; x=1665665155;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cm1gOmeq3xJAWm1Z9epWnIZ/SO37pF3g8ipm3SbWxWc=;
 b=m4ryR6jJ8dmGhyy26OIcrEUqz/6x1TEIIkcugjadK7OPrYdvbxPCeeed
 LdQJYW5sYobggjsdd0Z9qKoElNQXvjVtGdu3uJqhx6QnlBCBRrxgIRFJa
 QeN3+1219SwLheW3KE4b7LZ7PQtIXsqD75HeL8wbc7ZcAgwCCkdVqCEzQ
 UW+zvpN+De7OODwfcKoafTTrufcnqJrrwxRLjUMoepOWvnJI8DZcY1ZeH
 ciVTyw3Z7/I8b3eK72FRAfNID3SysWCo8jgGpBEOlKD2Pqmv5jEJU/rDt
 egRPdQ1PfOdXzMVcUSGpII6lVe0lQeVvzorPuOq2Bxi5CbsLkVADD9wQP Q==;
X-IronPort-AV: E=Sophos;i="5.85,370,1624312800"; d="scan'208";a="20023669"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 13 Oct 2021 14:45:50 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Wed, 13 Oct 2021 14:45:50 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Wed, 13 Oct 2021 14:45:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1634129150; x=1665665150;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cm1gOmeq3xJAWm1Z9epWnIZ/SO37pF3g8ipm3SbWxWc=;
 b=PYM0J8QSd/H6boZGWYRbmnbXypA97XA7nTAzojYIdx9s1u6FZaOaTNIQ
 AOIDGf3HCeEI+9i9eVnKQ3LR4KzkMVpXhy4RDGIbYf/68iamZRPZxl/r0
 wiihDD4476O6KYBM8jmEQfC74m1Wm8kWwKyq9fSZmSRoZ+9v/O7CYoLJf
 rBRYd8/kBsslwskT1SJIhcsZvKRUsiLG/4lWUq95ZUqOeHsE7ENCxY4W4
 MHR0Zzl/xR2XELRBNe+ju6LaSswRTJphalm/IUMK7iKsyMSQeU9kRW7bu
 5ZRS16zANnyv2h1M/ayV50sSIu7RaLaI/i0oPNX+Rm2vLDKaFs8wA3NDy Q==;
X-IronPort-AV: E=Sophos;i="5.85,370,1624312800"; d="scan'208";a="20023668"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 13 Oct 2021 14:45:50 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.121.48.12])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 2212B280065;
 Wed, 13 Oct 2021 14:45:50 +0200 (CEST)
Message-ID: <00afb7b8bc6f7ad41cd6770532294992a667f1af.camel@ew.tq-group.com>
Subject: Re: [PATCH v3 9/9] PCI: imx: add the imx8mm pcie support
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-imx@nxp.com, l.stach@pengutronix.de, 
 tharvey@gateworks.com, kishon@ti.com, vkoul@kernel.org, robh@kernel.org, 
 galak@kernel.crashing.org, shawnguo@kernel.org
Date: Wed, 13 Oct 2021 14:45:50 +0200
In-Reply-To: <1634028078-2387-10-git-send-email-hongxing.zhu@nxp.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-10-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_054555_780564_E20727AC 
X-CRM114-Status: GOOD (  16.47  )
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

On Tue, 2021-10-12 at 16:41 +0800, Richard Zhu wrote:
> i.MX8MM PCIe works mostly like the i.MX8MQ one, but has a different PHY
> and allows to output the internal PHY reference clock via the refclk pad.
> Add the i.MX8MM PCIe support based on the standalone PHY driver.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
> [...]
> @@ -1130,6 +1176,14 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>  				 &imx6_pcie->tx_swing_low))
>  		imx6_pcie->tx_swing_low = 127;
>  
> +	/* get PHY refclk pad mode if there is PHY node */
> +	phy_node = of_parse_phandle(node, "phys", 0);
> +	if (phy_node) {
> +		of_property_read_u32(phy_node, "fsl,refclk-pad-mode",
> +				     &imx6_pcie->refclk_pad_mode);

It seems to me that the refclk_pad_mode is not actually used by this
driver anymore, because it is handled by the PHY driver now. Is there a
reason to read this property here at all?



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

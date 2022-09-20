Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 500A7C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYWTLn9/cj9Vuu3Kv29/amZSzfMiMbU1F6VlHfCIbR8=; b=RfcX2x51MN0z9h
	QEDlYm5KBvu0dLZ7zwvSrz16mXNrcz0RBi//TNzq0HpBN1TZdZWfWastvkXzGv4izfJVo5mSkjLXP
	5tb8SH41wdpeYahMAQrCH/EBOPWmVhEtijUzbn2WNuTMneS2Hl9ELoXWWq86e7nhCzUGw1jwZygFe
	2q+3e49W9NkJiylzMtEPZ2fweHvlSohpjvpfYa3z6elnJBzMgLrlTts6+AxrIRv/YmET083ziEFsu
	kENKkfvr+DwwB8nd9Tbt0+gcVd2JABuMNgrlR8AvUpmb4a1xrs6ZUM4SQL5+6Yk5FJFhArDb2tecS
	i4oMbWqH8Lb8WCjSJDZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWd1-000wiL-Ix; Tue, 20 Sep 2022 06:21:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWck-000wh6-RX
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:20:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3FA9F62007;
	Tue, 20 Sep 2022 06:20:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B04DC433D6;
	Tue, 20 Sep 2022 06:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663654849;
	bh=7lUksc1PTJ6jAkhklaSNvSyTxCIJk9ZS22S6ygdZpAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oapCdtEu0jDjcxZ+5cUcJYLImty9sp3r6eaoOSSp06CkFTozUDs+NbP64DkucDm7I
	 F22VPt/CZ4KwQ07+ErU7TjuPyJRIGkDHvMP8GiXRXla8M9unV82LPlEigqqbBs48Ig
	 V9cpf5D8bBHTOQduf8kISVvkqxegn/f5TZsFMs056xspxzxPVw80UxYvV4akhsM2Db
	 6BtTcvyVn90ZseYpIwW6gWr+TiPFD7R1bwJrm6Ag1sb1g8EMPzMK9NgrL2fEqHkePk
	 nd8p5uz+qRj38Rx4B+36esOraOT9PzzU4vV8wQeylQyY9q9RH201NKycWFTjjizcH+
	 8UbTTGmsjjFCg==
Date: Tue, 20 Sep 2022 11:50:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: cgel.zte@gmail.com
Cc: kishon@ti.com, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, ye xingchen <ye.xingchen@zte.com.cn>,
	Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH linux-next] phy: broadcom: use function devm_kcalloc()
 instead of devm_kzalloc()
Message-ID: <YylbvcFX+LHgszaS@matsya>
References: <20220916062150.153104-1-ye.xingchen@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220916062150.153104-1-ye.xingchen@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_232052_746768_004C257C 
X-CRM114-Status: GOOD (  15.91  )
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

On 16-09-22, 06:21, cgel.zte@gmail.com wrote:
> From: ye xingchen <ye.xingchen@zte.com.cn>
> 
> Use 2-factor multiplication argument form devm_kcalloc() instead
> of devm_kzalloc().
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>

Where is this report?

> Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
> ---
>  drivers/phy/broadcom/phy-bcm-sr-usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/broadcom/phy-bcm-sr-usb.c b/drivers/phy/broadcom/phy-bcm-sr-usb.c
> index 0002da3b5b5d..0d393e0cc7bb 100644
> --- a/drivers/phy/broadcom/phy-bcm-sr-usb.c
> +++ b/drivers/phy/broadcom/phy-bcm-sr-usb.c
> @@ -236,7 +236,7 @@ static int bcm_usb_phy_create(struct device *dev, struct device_node *node,
>  	int idx;
>  
>  	if (version == BCM_SR_USB_COMBO_PHY) {
> -		phy_cfg = devm_kzalloc(dev, NUM_BCM_SR_USB_COMBO_PHYS *
> +		phy_cfg = devm_kcalloc(dev, NUM_BCM_SR_USB_COMBO_PHYS,
>  				       sizeof(struct bcm_usb_phy_cfg),
>  				       GFP_KERNEL);
>  		if (!phy_cfg)
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

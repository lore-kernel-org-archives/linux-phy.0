Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24D9AC4708F
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:36:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E3816611EE
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:36:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E3816611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p72bW63dgfuGiIKQbFGUgmzpeSfh9rS7Aubz9CkyrRc=; b=VbHRmbiYObXzNK
	yglGKlz1wwZ7NyA0QzezLrIq5HX/CZF+vg6ifWp1Y99RLk1udm+QKcQMJ2Q5+BDF1u1n4adge0ZIT
	/tWxgY5B08pdDps9N/Cv7EwHE5Q80+MzUhGqvkXCtfdJNo77P/xhGPM9IgB2RPvm0ozVUw4UXW8Zf
	LWGyBel/IZef3tBLsacCWxzNkUUohSCcvHtDoPEwD9IqQ2DbxVfVAXHVNLryuH4FJ7YNA18x9i75y
	vDEZ36Xp9BvbrFovCMMkGIPDSFgkUVOcbEtO8hA9cyw9f3B8AGs0f8TcnAid2skywbBHJE7nxdtUg
	vFeLm8fT1B5r2zJhQNYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndP1-00BTqk-Ah; Mon, 31 May 2021 08:36:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndON-00BTeu-Oe; Mon, 31 May 2021 08:35:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8AFD961186;
 Mon, 31 May 2021 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622450123;
 bh=IRK46P+onnXUcW3yqKhMmjGzMOTmOvOELF+sM6g16GI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ebzXpGuZK57+n+kaoTCkB6EiUMEY//OwlZL1u8m97Rd5WbdGEKbINQxn5AQzHYZpt
 vdqL1sSMKnHNHRQ6hbftgJ9k93g/19rnROMpXeq92LfwY+wL5ADKsJOyY2x9QcLf53
 iplqYdQ7Rvf+/YclQfR532hHh8tpgxHiXG1LqqL35n/29nfNXhEqjyi7aPcsnybSYr
 TBZ0O0s+XSDzgj1wcDd+7K1KBNzD+0HlAniwqp26tttu7nQrJWaDbtBf7ycUc/IiLG
 krqFa2T+RNZPn7ncnW0JuvutNI2unzq2j+boMa6ipTVi6+ZjYTiMBtVSrJTZTrgzfo
 Pb/JCd6bV/2SQ==
Date: Mon, 31 May 2021 14:05:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, kishon@ti.com,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/4] dt-bindings: phy: convert rockchip-usb-phy.txt to
 YAML
Message-ID: <YLSfxzJDekpDVFHd@vkoul-mobl.Dlink>
References: <20210518165658.12764-1-jbx6244@gmail.com>
 <20210518165658.12764-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518165658.12764-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_013523_860696_722F04BC 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
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

On 18-05-21, 18:56, Johan Jonker wrote:
> Current dts files with Rockchip 'usbphy' nodes are manually verified.
> In order to automate this process rockchip-usb-phy.txt has to be
> converted to YAML.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

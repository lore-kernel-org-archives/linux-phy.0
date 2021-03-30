Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UPPERCASE_50_75,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11934C433C1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 14:22:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1A27619C7
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 14:21:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1A27619C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tPtHOjuhuxIw7kh44QYbtTVQDFdIQ1F9VOo1FqGxnN4=; b=fFLP9f9XC/2bGn7CI57vcoMH5
	DB48ymVzh+k3C0U2yIZ++kpEyRQwhwXetH6fPkQKBulKPwFWupXxgHn8aOKN2wGwtoEW/iVEtexYA
	2TsryDN8E2HD1cSW3UaH1qyMpDm+fJbXUirzOScakLpxdBT60qbD9KUVPX8qrGKArJfTw4PLqrmQK
	7uItjS1l0SCUrc/h3aS1qeIfrcDbuTcvQxweT+pJbj17iuTqWlYXzMgCdsFEVYt8Zm5QGXUwmPJVf
	K+o2fZRNr7iptA/X/MFan1rS6CdS/LEJRk8lXLLO2Q2QTsUWn3aFeLRJVGF8pNVZvcO3N+1H5cRHK
	lAbFvoqrQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRFFm-003ys3-0i; Tue, 30 Mar 2021 14:21:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRFFh-003yrn-RD
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 14:21:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 77A65619BD;
 Tue, 30 Mar 2021 14:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617114112;
 bh=hfBkbDAsbghTaZUiNBHUebHsnQ3gcZjaoSkmAROYxHI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UuHKVxyxEX58+BILgiyOe+ui6o6LNMgtlXs3O6ftgk9FkKNyW2VmmRfcIgV54h7pz
 oohmSigHf9n+dfPZiJyPdey0Q7TOsbc7A/ncM1z6tFrYq/OOp+WGmjJ194t28rvzCP
 P+cmJLtLqi/NEznl3RCxIUuW3c3tyjXLTr74xSBov6X+CCKFTsjk2Q/58qm9Ft8u0V
 tJZgDwqjQiPbwCDScPr8T/Ce725kyJIyxJG6Ck8kuxY0zEwXjHn7MkFnzDgQZX2t9b
 1MgBS3HgiCSAPaeMexO8sOidvEX8TH4e2iZzvUouyIhpxrxrd1lo8D3R4UnfJpnaOE
 UbZKYcqx2JHtg==
Date: Tue, 30 Mar 2021 19:51:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 05/13] phy: tegra: xusb: Add Tegra210 lane_iddq
 operation
Message-ID: <YGMz/IgGxBlBBqzM@vkoul-mobl.Dlink>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-6-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325164057.793954-6-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_152154_238756_0465F99B 
X-CRM114-Status: UNSURE (   4.14  )
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

On 25-03-21, 17:40, Thierry Reding wrote:

> +#define XUSB_PADCTL_UPHY_MISC_PAD_PX_CTL2(x) (0x464 + (x) * 0x40)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ BIT(0)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_IDDQ_OVRD BIT(1)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_MASK (0x3 << 4)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_SLEEP_VAL (0x3 << 4)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_TX_PWR_OVRD BIT(24)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ BIT(8)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_IDDQ_OVRD BIT(9)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_MASK (0x3 << 12)
> +#define XUSB_PADCTL_UPHY_MISC_PAD_CTL2_RX_SLEEP_VAL (0x3 << 12)

GENMASK() for these please

With that fixed:

Acked-By: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

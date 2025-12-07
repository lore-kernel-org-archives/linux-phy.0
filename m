Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4ED9D2CE17
	for <linux-phy@archiver.kernel.org>; Sun,  7 Dec 2025 10:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHhZ/MdtrRAo8uxQQ4Aa0X9B8XDd293tMbVp9pUDPrE=; b=WMpqDQQaEtjUSq
	knvY5MU9bn6xvcTdS5sri1oi5UPFcDOIkUjibPBYHy9LYhZvy5Rec7b/r42krBqAMpASTl5oOp2mH
	jRYvUayhVJy3MTxtGmqtSKzxI7/ntm8iJi+tnlaIk7TubbA5B/j1V2Y2sInhF2CSYKtHdCaEWYGkA
	0Eu1JBCxebVYfHn8CwIlz2AQA2D+F0GLqrtii6487vI1+j8vV+MjWi53mxyl0BPw0h5/oySXM0Cq9
	oKMi0C+jr6qq62XSSPUDisOuKkvtci9+tNtgStjXgUK8CIHgzUrYJ8dawkDMRwJibOhN/Wqwspfbr
	LK0vqDP2IRzZ1PGNRA/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSC9X-0000000BfmJ-0OAH;
	Sun, 07 Dec 2025 10:38:07 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSC9U-0000000Bfl8-29yg
	for linux-phy@lists.infradead.org;
	Sun, 07 Dec 2025 10:38:06 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 0BC766000860;
	Sun,  7 Dec 2025 10:37:41 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id 1B9Dpx7YnSAb; Sun,  7 Dec 2025 10:37:38 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 43A16600086B;
	Sun,  7 Dec 2025 10:37:37 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1765103858;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AJWxtI4gCfBR7mMObe5wer/KxRtyUAzfWw+A7UhxlwM=;
	b=Txdp2IUYBZ08pj1l70+nHFNe697eFIh3dJ7NihA/rJ90d6Z/FKx0OrmByop4yJRGPz+4dW
	fHOvLeg7pV6+bEumOJ9UoAOYyvTBUcFBt2iDJDz04MkrwWt1EprKQWK6bMymYc55KLrSNg
	X1kyPaWDvJP6JcAiNbUtuKmuHynQ2eQV2om+6/jAEkIZz7a1wxrZWSFuoJnQgJsjM/Udw9
	ldui40CscTkQu63KIi2IRaWlm1tPmj/MfuofutDUh2txBukCq59xl0bLfONfMUuH07iPUv
	KfWGP20rwQgizWBBptMZKEGAqbxkB2K49q7SZd71eV0OpiteDFj2h4O4MqllDg==
Received: from [IPV6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id C3D18360105;
	Sun,  7 Dec 2025 10:37:35 +0000 (WET)
Message-ID: <b03b9b3e-14b3-42e3-96e5-7ca48d91be94@tecnico.ulisboa.pt>
Date: Sun, 7 Dec 2025 10:37:31 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] usb: host: tegra: Remove redundant
 pm_runtime_mark_last_busy() call
To: Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-1-51a2016d0be8@tecnico.ulisboa.pt>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <20251204-diogo-tegra_phy-v1-1-51a2016d0be8@tecnico.ulisboa.pt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_023804_991873_E2B65DD5 
X-CRM114-Status: GOOD (  12.53  )
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

Please ignore this patch as this has already been addressed in a patch
in this merge window; sorry for the extra noise.

On 12/4/25 21:27, Diogo Ivo wrote:
> As pm_runtime_put_autosuspend() called at the end of tegra_xhci_id_work()
> already calls pm_runtime_mark_last_busy() remove the prior redundant call.
> 
> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> ---
>   drivers/usb/host/xhci-tegra.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
> index 5255b1002893..9c69fccdc6e8 100644
> --- a/drivers/usb/host/xhci-tegra.c
> +++ b/drivers/usb/host/xhci-tegra.c
> @@ -1399,8 +1399,6 @@ static void tegra_xhci_id_work(struct work_struct *work)
>   		}
>   
>   		tegra_xhci_set_port_power(tegra, true, true);
> -		pm_runtime_mark_last_busy(tegra->dev);
> -
>   	} else {
>   		if (tegra->otg_usb3_port >= 0)
>   			tegra_xhci_set_port_power(tegra, false, false);
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

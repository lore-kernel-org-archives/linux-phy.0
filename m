Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5091FCD8CA8
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 16:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhMdFB4PlxlhWH9HzirM6zSAwntP9Ggv+zHYd8tLttk=; b=jS0JYwfVgUfbNG
	BgoimkgB3ByACw49J7stZlu648EM1k9edBai/kE2ERHxIf8RNv45mf0/i1BEleVVc4kE2XSxxT3ZA
	Kvw7YnH1UF/68zMhZqb4kGHAPqPVkkIMYT+vzfISygm8DSUKRnKm0wj/QO+xwc2HA4SLJ/jUtEd51
	mXEYqSrdDIRPp29FzgDvCsGkp0HDdIMH1o51IpXJwS7AZcsu1rprKVMZKFoGrYXxOJhrjGx4sR0qV
	I17X/oRs74nvbQkcPaxSg/JvmtFqjiFtzvkcHlSjwtGFmlQeCQDqTVfvyA19DyFJCZXoH3W2tGfx2
	KlHVyZ79IZ+iqZxJ6nfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJaWJ-0000000ApCn-0IUi;
	Thu, 13 Nov 2025 16:50:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJaWG-0000000ApCO-2xTI
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 16:50:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D745860127;
	Thu, 13 Nov 2025 16:49:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1D47C4CEF5;
	Thu, 13 Nov 2025 16:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763052599;
	bh=jKwcaTs9OGE50tqCMbBmlyCuHrBkn1lUUry6R0uYFMU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nDCka9INhlxX07+ZDkwnA2BjwPRDB17OtwMyUZVrOEBEhyHVb+xmEc1mytZUl6/vq
	 Z7noKS7xpGVkazchihr3BbMzvaqQbqP8pIetPJOrQSsXmuT02ZSz5OhHaNRB2U2gQe
	 fcN6dRUBnzSTOcb+dvdM5St1UnCO6atN1eAQYClN3l6lBU0c5mgTipIHTtClUhn2nN
	 ye4xmZIJnrosr7q2piuE2OI/reh0PnmZNAuDRlU3KoxkiJw5bHZwNOe3+7QIpzbVuy
	 rbwdZwdCFl34DkpUnAgbC8sFaAPlwx8D22NVCh2GYxEZpE14p1aVEsDfRZ3qSbw5xr
	 us7AUkWo3VPUw==
Date: Thu, 13 Nov 2025 22:19:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v4 phy 02/16] phy: lynx-28g: refactor lane probing to
 lynx_28g_probe_lane()
Message-ID: <aRYMM3ZuyBYH8zEC@vaman>
References: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
 <20251110092241.1306838-3-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251110092241.1306838-3-vladimir.oltean@nxp.com>
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

On 10-11-25, 11:22, Vladimir Oltean wrote:
> This simplifies the main control flow a little bit and makes the logic
> reusable for probing the lanes with OF nodes if those exist.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: stable@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v3->v4:
> - patch is new, broken out from previous "[PATCH v3 phy 13/17] phy:
>   lynx-28g: probe on per-SoC and per-instance compatible strings" to
>   deal only with lane OF nodes, in a backportable way
> 
>  drivers/phy/freescale/phy-fsl-lynx-28g.c | 42 +++++++++++++++---------
>  1 file changed, 26 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
> index c20d2636c5e9..901240bbcade 100644
> --- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
> +++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
> @@ -579,12 +579,33 @@ static struct phy *lynx_28g_xlate(struct device *dev,
>  	return priv->lane[idx].phy;
>  }
>  
> +static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
> +			       struct device_node *dn)
> +{
> +	struct lynx_28g_lane *lane = &priv->lane[id];
> +	struct phy *phy;
> +
> +	memset(lane, 0, sizeof(*lane));

priv is kzalloc, so why memset here?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

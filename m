Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92E7AC52D7C
	for <linux-phy@archiver.kernel.org>; Sun, 18 Aug 2024 14:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJMLMUVmP//j4KY+n8pqQVZCzKk/LRs4dlkvcFlPS7I=; b=dUsQCjpkdnkFnK
	jzxJarWZ7qILxvlVtbKYfim60WfVupVusymD1nEHxiaHfHvbVcWnGr8EZAC+jYW6J0RZO3vjGMCzg
	D7WXCh7sLNJ/+L52vMkJaDlPB2M7/Zj3Z17LkLRi898mZnLZemWPLuxT4Z934+/ReVQJBKLUKKZaA
	MLfhVXowAbalvldY9E2qKbrcjdoF6VIEagwGnen3OTs2HuI/usAmR2VOgYTacaHetSOSaCKVbIHdM
	2MtlUloYlSixU0HE19WZUY5PAYYu5NaEGW3HgXXgC3tJ0/zTldgeuwWDOUuJFAXa+MTuo8LvJiT7B
	DLKfeYowN/8OcoY/9VrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfgqM-0000000Gh6u-3Z6p;
	Sun, 18 Aug 2024 14:25:18 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfgpD-0000000Ggro-2VfU;
	Sun, 18 Aug 2024 14:24:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 11D4BCE016A;
	Sun, 18 Aug 2024 14:24:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFE5CC32786;
	Sun, 18 Aug 2024 14:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723991044;
	bh=p3xChge9ucTtWR9EXLrqY/hgcj62+4knZXEk2TA3eQY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xq7IggzJZvSFhjmkhMAzVG4GSJYhuSulvTLRuDNrGl34WSAtAJG7Csa/WXtnTTOSq
	 j12xW3EkfpjsteJm+igFb/YjxL6dWJA3/b3E7Y67Hat14V+YPKBGzYoHo1QaAtsbiZ
	 ip6IIQwmlEYULQmKEPJipIET54djlSTzVySuYQlXP6c7VGwSvfyoo23x40ZNcAckJz
	 pClhBJfTM2CMxEH13Xm2lALBccoY/NdzbJOgXnxL3/36o63I6B2sHXZJE+aw77prR/
	 CMe/dKyvV6ZgGENkEvp+/3bKUtLvY1Cjd+WL9wctN44T7OiKf/NVzQ+9H4eOlWU4st
	 zoqNPLiDa/Hqw==
Date: Sun, 18 Aug 2024 08:24:02 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: aisheng.dong@nxp.com, linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
	kishon@kernel.org, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, p.zabel@pengutronix.de,
	tzimmermann@suse.de, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev, festevam@gmail.com,
	airlied@gmail.com, francesco@dolcini.it, kernel@pengutronix.de,
	conor+dt@kernel.org, s.hauer@pengutronix.de, agx@sigxcpu.org,
	shawnguo@kernel.org, frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org, tglx@linutronix.de,
	dri-devel@lists.freedesktop.org, vkoul@kernel.org,
	mripard@kernel.org
Subject: Re: [PATCH v3 08/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller
Message-ID: <172399104139.23572.10090663935384596561.robh@kernel.org>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <20240724092950.752536-9-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240724092950.752536-9-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_072407_844833_D854F88D 
X-CRM114-Status: UNSURE (   8.52  )
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


On Wed, 24 Jul 2024 17:29:39 +0800, Liu Ying wrote:
> i.MX8qxp Display Controller(DC) is comprised of three main components that
> include a blit engine for 2D graphics accelerations, display controller for
> display output processing, as well as a command sequencer.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * No change.
> 
> v2:
> * Drop fsl,dc-*-id DT properties from example. (Krzysztof)
> * Use generic pmu pattern property. (Krzysztof)
> 
>  .../bindings/display/imx/fsl,imx8qxp-dc.yaml  | 236 ++++++++++++++++++
>  1 file changed, 236 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

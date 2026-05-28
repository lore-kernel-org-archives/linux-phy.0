Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E56CD6E4A
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 07:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8A7RsbG1aJyEc9QdQELplxRFY2dyHmF5doLHAF0CyAs=; b=Hnt2srr11Tj/PG
	NvQoevV7EeaUbnkBiP/nlFToYvSLi09BzucY0mBUUSHqE5bdY7BQq6WLZsYPFwiQrCo4bZpcmPOzM
	RlwxOSSlu81HCv7c7YQ9csuKb9EkzW3gsuJwSTFL279gbMLWikIK4ox6yxKxN0r9c4YAW5Quv1LR/
	dr2qTNTzQcnkNqzl5rZnnpwWAqhmipChAaHKVwm8dbjotu6wU1Gm6uEx8X4BMuiw1GQ1oMXiTrC9B
	v+1LVgOFInVmelO+sisdbSaZX+0w4jNjqc8EweYNDcV6kC1OS/wQUanG0kybX2kUDQ8lq17JZqXat
	fPZKIK7W5LBBuQWwFwag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSVKw-00000005HH6-1yJd;
	Thu, 28 May 2026 07:39:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSVKu-00000005HGI-1Pe1;
	Thu, 28 May 2026 07:39:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DE02844438;
	Thu, 28 May 2026 07:39:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F3711F000E9;
	Thu, 28 May 2026 07:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779953963;
	bh=DSIjaXcduwNYBJCQrGtQKLo8lAav4xOuWF8oe+nqQKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SVp+0DpWalSi7cdfdBP7UfszYqPQZkiQ6CgIvR+C5PufGehp6wsNS7S0VM2rKBmmi
	 UWPJQ3vKqm4RBEeXpGml01oRpLdtxBrfoZE4yUPu42w4GaJ55oYmHGmjzNFf3PGRCA
	 sOW11CJnfQjqtcUV77j8BsSdZ/gqZBY8L9IAILV5OW0GRpy0hOWKZA309StDLK/L4h
	 NUg72vfoIBA6+gHaG31hdWQwRHkL/TT2QMtgb45jKE8hkvIfSc1oHiH8ZKnTOt+WZU
	 PT1RzASgc0m3MkFpvyB4E8THmx3kdhkOLj3wDel4jEsQSSH6UUNCzlfXlf3no34duc
	 tpNlVtxau+9RA==
Date: Thu, 28 May 2026 09:39:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux@ew.tq-group.com, Alexander Stein <alexander.stein@ew.tq-group.com>, 
	Ying Liu <victor.liu@nxp.com>
Subject: Re: [PATCH v23 5/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
Message-ID: <20260528-nice-bronze-cat-19be71@quoll>
References: <20260519-dcss-hdmi-upstreaming-v23-0-5615524a9c63@oss.nxp.com>
 <20260519-dcss-hdmi-upstreaming-v23-5-5615524a9c63@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519-dcss-hdmi-upstreaming-v23-5-5615524a9c63@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_003924_398638_BD13B43A 
X-CRM114-Status: UNSURE (   8.59  )
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

On Tue, May 19, 2026 at 02:42:28PM +0000, Laurentiu Palcu wrote:
> +    required:
> +      - port@0
> +      - port@1
> +
> +  phy:
> +    description:
> +      Child node describing the Cadence HDP-TX DP/HDMI PHY, which shares
> +      the same MMIO region as the bridge.
> +    $ref: /schemas/phy/fsl,imx8mq-hdptx-phy.yaml#

Another new thing... at v23 you should not have major changes to the
binding.

You do not get separate node, just to instantiate the driver and sharing
the MMIO suggests that this is the same device. Phy reference from your
bridge into the child confirms that this is the same device, so one
device node.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DEA0C4828D
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 19:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KBRqXmgHSckKWgeeNTZCq7Yqo8K/QiAqnjE9OU00e4=; b=1XmGIDlNbGE5tB
	LwQ/F0z40ElnuDiT0zMC0kuHQFXMLR93NW26gpM6NnOkigar8lIGCQcq7udLHihl/fLU9qlUpp5Fs
	+VTCBTcpMx8nkbdvt3tNU5lpnslUVLGLw8dBia8iHrWdQdXBH4S8Anyf7pbZPmmcoCumLSj8XBd3z
	nV9PAr7XNx3OPg078/DEVPGtquPEjY8VARQ1nartyiSQDSiJq29+Np0cmlZeT/a1YGzwYk/GS8Fck
	SUnve+P6TK3+0/+3OWWjT1JWyzicYRqw1RFaA5/cIG8TYgMYbzaxgaXC/UueW1sHOEGxe9ky7GlZH
	wscehOgrmA+vl7Q/f3cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rX4Ye-00000004ZUA-3hkU;
	Mon, 05 Feb 2024 19:23:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rX4Yb-00000004ZSu-3ZcP;
	Mon, 05 Feb 2024 19:23:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4032E6126B;
	Mon,  5 Feb 2024 19:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 402F7C433C7;
	Mon,  5 Feb 2024 19:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707160984;
	bh=631bnoI95/4RxTtmJPA8muY0K1qwK11eTM0Wq4Qeiqg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gO2BZ96L12Ko4SirbE6I+iube4OZRYzWisRTKnxXc4PMSk7O3zZe7IXUiIF1IsTLv
	 7Z1dKJffUXWX2Vy4QzfB6mnlry1P2TO/W0wpjluAPpf5Y01JhVRiW8Gd2BC94wD4Ol
	 dTARJ+2AOtehctbstCm3ujDaljymGGc/sIKFQ4GyrN0nWPxXuf4+LmOKtmMHubfw1h
	 cnr2b67n44ONH1ChKtUuLEeD2iwDoWLF9Qb/zy/kCqk7jff4M9tRAEpIaXkLpnJjTF
	 caftyFybrPV4vFLKiy9KgKXDkMTqB7QX1jyzrQ52bjnHt1NrYTDMN2jkdVgSbnSMrQ
	 Qs4CLr2BXwz5A==
Date: Mon, 5 Feb 2024 19:23:01 +0000
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, Robert Foss <rfoss@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	David Airlie <airlied@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
	alexander.stein@ew.tq-group.com, dri-devel@lists.freedesktop.org,
	Lucas Stach <l.stach@pengutronix.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Will Deacon <will@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	Jonas Karlman <jonas@kwiboo.se>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
	marex@denx.de, linux-kernel@vger.kernel.org,
	Ulf Hansson <ulf.hansson@linaro.org>, linux-phy@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	frieder.schrempf@kontron.de
Subject: Re: [PATCH V8 09/12] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Message-ID: <170716098090.168745.4661359468123158581.robh@kernel.org>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-10-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240203165307.7806-10-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_112305_954588_7CE7691D 
X-CRM114-Status: GOOD (  11.03  )
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


On Sat, 03 Feb 2024 10:52:49 -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> core with a little bit of SoC integration around it.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> ---
> V3:  Change name and location to better idenfity as a bridge and
>      HDMI 2.0a transmitter
> 
>      Fix typos and feedback from Rob and added ports.
> ---
>  .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    | 102 ++++++++++++++++++
>  1 file changed, 102 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,imx8mp-hdmi-tx.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

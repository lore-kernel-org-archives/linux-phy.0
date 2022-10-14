Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3BD6C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 12:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wacinpWfPF79KcKu0GQoXEXuLkTE+Ukxa2W2DRV08x4=; b=rfv6s5oqxMX66s
	GZ82V/6SLQIXIr4fL2WabIXSpzlkLGiia25i3fRk6TAx8hqtwEVW9RB86YSL7SVOp2Hsial3a647X
	/svpNPLIVfMws9qYiyBTSCUnDR4tkDAvwNzP0uUcjRv2GKcjP9DIqQO2oTD2emu64oFFpF258BRfo
	+9towLwYbvgGKgNoxXultc/d0TIj4dDiQDiHpEjR1gLdm2V0Hg2p8w1S+yS0KUeTXgR2XewZ5KsVl
	C9a1AejvZN7G4Bi5H3wtnGbTQM8fWEAwvBC5nF29M4e4CtiD5x+VmTXW8LwQKkC5lQSHTevB/M3iP
	DrNWnDEilc4qy+K8Wmjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojKFq-00Eh8w-2N; Fri, 14 Oct 2022 12:57:34 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojKFe-00Eh5W-Mm; Fri, 14 Oct 2022 12:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1665752242; x=1697288242;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ttZNASHnmEqUZ2mopvyLwA6LBCua1EQTWQV3Jt4anHw=;
  b=W5wuJ50UYF8czPYBW/18dm54OZeYYYwcXb4QnYvYBc2PtSfwgRSOsTKk
   oFcHSLs93ha6uhOQpBtedlkjsAno2Z8hAuZE06NT1wXU7brGTSC735QK9
   +/AWcVU+IVeNSoKCpRNVMIZQyDF+DNhfVDaPKnhHKcfyue/+p/+izxLsd
   42p0uocBgOu1jCfmsZvpX7pm0LI8FxqRJsHQHn2dkMvhjSr6ahn3O094A
   lrPaKdJ4lOoFnvnsPQWiJ55rptzLAEJ01Q9NpoV+Wmsgj603HFREnhnRn
   ImQuDVrUkNjV4T2LFlrG45AL3cLCq3SoDljD7eR5WmYEzm7uTeO29ffVl
   A==;
X-IronPort-AV: E=Sophos;i="5.95,184,1661810400"; 
   d="scan'208";a="26760549"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Oct 2022 14:57:16 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 14 Oct 2022 14:57:16 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Fri, 14 Oct 2022 14:57:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1665752236; x=1697288236;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=ttZNASHnmEqUZ2mopvyLwA6LBCua1EQTWQV3Jt4anHw=;
  b=IAXBvXNDBy04Kq+zU54Sv1V9ya9xMnO67D65C2aO7JLqbbf3MQY+DxNG
   6NBcTGwzQIvSU65FKk8i6ebOoLe8WZ7CUk2y9gVu50TCi4K6aeArPHZ5Y
   CN8uDyieyBsQyajK9wEt8UrQV+jzIBXvMeKDr0T3YxsNty9Kq+K3D831A
   jQtILSWOQcYn0TVfltYTw+WWRtbBvVwR+x/pD/zeLo+w0SV389QBkxwOa
   DJ47uZIjeGzrmRs+QOro9xEp6rCTnc3AAEy8AHtOsjf2IFdaUbl5zJ/F2
   jqZGx4vI/YmF+J61mRxM7kDGqZVCsJgHuwgyjwzoh090KMkzg4kOzG4b2
   w==;
X-IronPort-AV: E=Sophos;i="5.95,184,1661810400"; 
   d="scan'208";a="26760548"
Subject: Re: [PATCH] dt-bindings: phy: imx8mq-usb: add power-domains property
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Oct 2022 14:57:16 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 30F78280056;
	Fri, 14 Oct 2022 14:57:16 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, xu.yang_2@nxp.com, kishon@ti.com, vkoul@kernel.org, kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, jun.li@nxp.com, linux-phy@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Date: Fri, 14 Oct 2022 14:57:13 +0200
Message-ID: <3203711.aeNJFYEL58@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20221014095550.2125018-1-peng.fan@oss.nxp.com>
References: <20221014095550.2125018-1-peng.fan@oss.nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_055723_151276_52864485 
X-CRM114-Status: GOOD (  13.52  )
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

Am Freitag, 14. Oktober 2022, 11:55:50 CEST schrieb Peng Fan (OSS):
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add optional power-domains property for usb phy.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml index
> 2936f3510a6a..5ba9570ad7bf 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> @@ -28,6 +28,9 @@ properties:
>      items:
>        - const: phy
> 
> +  power-domains:
> +    maxItems: 1
> +
>    vbus-supply:
>      description:
>        A phandle to the regulator for USB VBUS.

Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

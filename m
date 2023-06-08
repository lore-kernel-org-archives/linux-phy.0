Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A595C7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 07:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSwMDUgvOOo0oiRvjGAqr6JmRrojh72Q6V1oJWhWPiU=; b=Ugp9ReVeqIibVk
	FeUoVuaJ3UGSj90X1ifhtQyT8RBAy5v6xmUZd2rHPZVJbR91aOTE8RyOzIfJkDrFvp6cr6Jqz3YXm
	k7DqQ1J4B/yZoBfVt2lU5ebMbThioaFvFDt8UC6qFS5bB9Hk/ws8g7cyeBv4wfbFyypY2lZbaTHO8
	g3hMAEpWYLNaOJK+4Z9BRFvLZn7+5jpvyl4UYOruuQjdwKe4PLesEwudrtckd80azUXSeH0RkRYNN
	MpmRJBVz01HN1AuSfm7K0PtfMmUEhxik7WCNl0Y5YJesdo5NS7XHHcTnRM6W8OhpV7/TyctGzNgS6
	zKYs20qLzwyzGEpSAaBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7A7s-008P8z-0o;
	Thu, 08 Jun 2023 07:32:08 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7A7o-008P69-2W
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 07:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686209524; x=1717745524;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WZqPqMZn3ipI5H7SNd0QAYxuQSytRbg89zQtF1DAKws=;
  b=Dik7GVcfT44mblgq4LQrB2eL8IDQe5L0V+BhtKnW9geA1NwEpVLgMmlh
   RNMlgWN0Q0rrl9TYSRWn7UKdFlu3cpxMXxigKT76N8b6typJqd/fR4JET
   MxrV6GKbagWMi6JynNM9u/f4Gy1t/kfAFNwoifnZ3hmfWqWoAgdQlX4+H
   BZUUSOf9O16HaaSRt4Sw01innOOGV5v4sd3sgfvVUKOWZvBhGaxIL2N2Y
   B2pVcoEUTwr2kt5xDsY+mK8TwWX6CLuq+IkHQ+vVgYb0b2QfG2pIyEfvn
   Ipdm4mhVt5h1RmlA3WcUoZT/wvBVbseSwoe/CGV6OSWi+sA5e7TKOCnAD
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681164000"; 
   d="scan'208";a="31342720"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Jun 2023 09:31:58 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Jun 2023 09:31:58 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Thu, 08 Jun 2023 09:31:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686209518; x=1717745518;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WZqPqMZn3ipI5H7SNd0QAYxuQSytRbg89zQtF1DAKws=;
  b=ndMZGDU9ccJIvIapNqmw47pXOyCdb7P1dWyxwgyFW0+cnT/3VoaqbOUb
   YNAXdDBiOM9qb+K/WDMLZ6qYNUkgI08uNJ55dBqjNKCZ0RncyEk7TAtbB
   aPT8EcWujWKw+ybIw7L6Qc400JiuW7luBImSGuvEN9e/5EDvcVhkTndHx
   5+Rf+hUa6hAxP2PSjS3U7Oc+8kp7F8oHhyAX+9JZVt2IZuC3sZbqyntfR
   jRO5XuYenAg6QQJQUe7BCrTZnBKbe+N1ToSwHywJMOaDI8PbnnwtQ1Hz7
   dbX7BVLNdFHWEgMMnVVznCm/2Ol8n7vcnMn/eKWAU3IFsoloQl8ES2Vcj
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681164000"; 
   d="scan'208";a="31342719"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Jun 2023 09:31:58 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EEC32280087;
	Thu,  8 Jun 2023 09:31:57 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: phy: mixel, mipi-dsi-phy: Remove assigned-clock* properties
Date: Thu, 08 Jun 2023 09:31:57 +0200
Message-ID: <1855461.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230606-implement-canning-0353ca9afddb@spud>
References: <20230606144447.775942-1-alexander.stein@ew.tq-group.com> <20230606-implement-canning-0353ca9afddb@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_003205_123168_911B7D20 
X-CRM114-Status: GOOD (  20.47  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Conor,

Am Dienstag, 6. Juni 2023, 20:21:02 CEST schrieb Conor Dooley:
> * PGP Signed by an unknown key
> =

> On Tue, Jun 06, 2023 at 04:44:46PM +0200, Alexander Stein wrote:
> > These properties are allowed anyway and some SoC (e.g. imx8mq) configure
> > more than just one clock using these properties.
> =

> What does "allowed anyway" mean?
> And following from that, why not modify the min/maxItems to suit
> reality, rather than remove them. Is there enforcement from elsewhere?

As Liu pointed out, assigned-clock* were considered a generic property adde=
d =

by default at that time. With that support added there is no need to specif=
y =

these properties in this bindings again.
Despite that you never know in advance how many items you will have to add =
to =

assigned-clock* properties, that's totally different to 'clocks', it may ev=
en =

depend on board specific clock setups.

> > Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to
> > json-schema") Signed-off-by: Alexander Stein
> > <alexander.stein@ew.tq-group.com>
> > ---
> > I can't reproduce the mentioned mis-matches in commit f9b0593dd4fc6
> > ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema").
> =

> I suspect that meant that the property was in the dt but not in the
> binding at the time of the conversion.

You are right, given the commit [1]. Which, from today's perspective, is al=
so =

a rationale for this patch.

Best regards,
Alexander

[1] https://github.com/devicetree-org/dt-schema/commit/
c3424745f900e8cf0a0e3acebffeeda83a82f6d4

> Cheers,
> Conor.
> =

> > Since commit 62270eeb2b639 ("arm64: dts: imx8mq: Add clock parents for
> > mipi dphy") imx8mq.dtsi configures several clocks using assigned-clocks*
> > properties.
> > =

> >  .../devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml      | 9 ---------
> >  1 file changed, 9 deletions(-)
> > =

> > diff --git a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.y=
aml
> > b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml index
> > 786cfd71cb7eb..3c28ec50f0979 100644
> > --- a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> > =

> > @@ -32,15 +32,6 @@ properties:
> >    clock-names:
> >      const: phy_ref
> > =

> > -  assigned-clocks:
> > -    maxItems: 1
> > -
> > -  assigned-clock-parents:
> > -    maxItems: 1
> > -
> > -  assigned-clock-rates:
> > -    maxItems: 1
> > -
> > =

> >    "#phy-cells":
> >      const: 0
> =

> * Unknown Key
> * 0xA08262D2


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

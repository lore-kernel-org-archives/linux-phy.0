Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A25CAC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 21:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gyMeDYyIBFVm5q/SA88VuInwBeMcEUns+R5D6J5g80=; b=wVTHfkiqUbDpVK
	EW34KBNug52dW5U5+tPmXtN191n/M+97sWL8Wmsq5T7sS3cgI2Bxfge8IEq9MFMbjxZIjMDYem+HD
	YwKsKujV85LqJ1LXCRBJ013bR7B6fBDaT63nrJ1m+dbW9KKA0au9ZlLYhA2jq2+0u/PPb9q6OOGVQ
	bQNf9dG+J+uTt3n7n80Q7xXLg8y2i3x5m6bgpF8Ed/y4IaCGdrhP2Dm/veQBdxR3NrKaQ0PDIUgHC
	3JYDvDX4iFvvzUrdJv8ok7islSTK9nBPuEaNII08AOyVdp+Rvjmg4Mlo+vZYS7U/oIvafIWGESsT2
	Ybqxj+vqyJ33ZPg8qnTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxc1O-002ove-1I; Wed, 15 Dec 2021 21:41:10 +0000
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxc1L-002oua-7W
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 21:41:08 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 w15-20020a4a9d0f000000b002c5cfa80e84so6315275ooj.5
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 13:41:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=83sefhyi8pLfwQAlKQtsqfA9OtRTB/qMJU5Z9a5pxHo=;
 b=hsa+SfiTTWI8IHEVa0+X8w3YA87TBL4tcw+2Gb6m3HrxG+/aocheoo4anQluCNJubs
 YjbCxktNlSjufC8ucIoCVWU0KkqFlXqZZHtZ0W80lZ0JXHoMEJSNh3iOPF4uoaMx8pqQ
 GdNpGfKllivYRlVWY/nPLCRz5UUR4fFBjPF/P+ojbg0ZMNaUsI5WfDfxKLg1DQaH2liN
 Nu4Luy9pR041zZmbRVySbxKC+7uR8RtXFpZPxUVwOxnib01rpCxTHJ0dVZiD1rGql9PS
 EezTIK/IUxVw89DXNsOoVZImlgl/g3N0cnEZoXHdhWxvn3wnqKXV+aKgfQ7VnuwlV+2y
 B5rw==
X-Gm-Message-State: AOAM530+ASwAvhhqy6ysnyUhCxdKRXQag1znuBeCi3hro23p1NjDdZLQ
 XePgt+8bDV9hIuDMj4OPIA==
X-Google-Smtp-Source: ABdhPJwFH+qsXOdTdC5VvBYP35gdgxLy5NCnQ1+Eo/YD8Ow31Jwmgjt1yekHspFMfe1Nbitvp5plDw==
X-Received: by 2002:a4a:7d52:: with SMTP id q18mr8938275ooe.52.1639604466272; 
 Wed, 15 Dec 2021 13:41:06 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id l24sm655162oou.20.2021.12.15.13.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:41:05 -0800 (PST)
Received: (nullmailer pid 1888423 invoked by uid 1000);
 Wed, 15 Dec 2021 21:41:04 -0000
Date: Wed, 15 Dec 2021 15:41:04 -0600
From: Rob Herring <robh@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: devicetree@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree 1/2] dt-bindings: phy: Convert generic PHY
 provider binding to YAML
Message-ID: <Ybpg8OpVCmWqNOL2@robh.at.kernel.org>
References: <20211214233432.22580-1-kabel@kernel.org>
 <20211214233432.22580-2-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214233432.22580-2-kabel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_134107_297345_B70F40CF 
X-CRM114-Status: UNSURE (   8.69  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Dec 15, 2021 at 12:34:31AM +0100, Marek Beh=FAn wrote:
> Convert phy-bindings.txt to YAML. This creates binding only for PHY
> provider, since PHY consumer binding is in dtschema. Consumer binding
> example is provided.
> =

> Signed-off-by: Marek Beh=FAn <kabel@kernel.org>
> ---
>  .../devicetree/bindings/phy/phy-bindings.txt  | 73 +------------------
>  .../devicetree/bindings/phy/phy.yaml          | 59 +++++++++++++++
>  2 files changed, 60 insertions(+), 72 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy.yaml

We already have phy-provider.yaml and phy-consumer.yaml in dtschema =

repo. Add what's missing there (anything copied from here will need to =

be relicensed).

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

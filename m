Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 149A1C55ABF
	for <linux-phy@archiver.kernel.org>; Wed,  5 Aug 2026 23:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2eoedxDzburBdPoUbE4bhSVY7lBf6Z9hiNvsu1XYXA=; b=bZxB5xfAcpvAZJ
	hQRfZU4qiXpEMdZaQroQBXeMhSda3WAgg25mCVjF6ya4ITLWXr6ymJsrN9kNnHYu33Ghk87zRItpX
	AhQrPAfvGJR+NS3Pr0S6KNueaJXAGnQzrrbYvdXoTwGQuUfiwSSgyX5lZm3oSpvVFeGnOQkuUiHBi
	1G6FDzuaokb4m0puLdPSUGKdG2VHfxPd/rDh1QfCB/6nVK8NaWlcLiipriozj+tieBe4SQhfP4DT1
	CzMK/1b0Dkb2CQA3JoKajE73QI2DR/6Ri0aRFJzmhPRJC861AyPcfj9ClYIiIVnFNS/L52VOfGrSd
	+/doD/SeYl2+ko+uyCDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrkpO-00000004dnF-1wcw;
	Wed, 05 Aug 2026 23:15:14 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrkpL-00000004dmQ-1EbK
	for linux-phy@lists.infradead.org;
	Wed, 05 Aug 2026 23:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1785971709;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jX93A5wJoAu0JKunu6l9UvEvI322kw4iodDAJblYaVI=;
	b=aB7G8zlGi4Cv1fQ5/8fmyoJCyb4pfLo9GRLrPNUQ5XmuX6B03VVUk0RIJTl0KCsCXpqRG8
	5PMiI/+7cNLIYwK3lM7tjWAiZiEbOAFJjPOT1QWFRk+dYjmfm5XoU3FL89zu7VWrCD9a7H
	ouwKSJRmefSwZ5YEuywgnh91/sr8Aes=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-596-GxaiKSnSOkisXF29Wd4kZg-1; Wed, 05 Aug 2026 19:15:08 -0400
X-MC-Unique: GxaiKSnSOkisXF29Wd4kZg-1
X-Mimecast-MFC-AGG-ID: GxaiKSnSOkisXF29Wd4kZg_1785971708
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-81ebb5e11caso42408777b3.2
        for <linux-phy@lists.infradead.org>; Wed, 05 Aug 2026 16:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785971708; x=1786576508;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=jX93A5wJoAu0JKunu6l9UvEvI322kw4iodDAJblYaVI=;
        b=a/65zkpF6eDgdN8drKqq69iviDZgkgB7jB/3V4Pl7wcCPLqPe3pDNqXQlN96wO3ugt
         TPjX6C22DNpTCn4DMysRXr+M7La7+yIQljl1K/10imaY5ZGnYi4Kpn3P+83/pdo4UB9d
         nrFVbSjjGWBbonYrXhDtypRPT5wo1Pdc5AiqQzdTCpebQIoFsIKELkuYZsnuCPXKCa4n
         svuZMPplwI6/I+shypVtdpo38EJWfehmUY2n0XgNzWxWFNXxdx2ZDGb7nEIQgRcOfYpM
         qdJO/mM33quD/QJoNuVKhN8If30CVakKn51sAFImrY67J1JKOLJ9G2glwAtGy44whDoc
         pNNg==
X-Forwarded-Encrypted: i=1; AHgh+RqCkVthRXfoD6B39cUtWZiagL/3vq4Zi9rW/uE9/POlfuDY6/Vf/T8QNs9C4hEc4T45NLql/WvSjwE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQWw6/iTNMbk0Fw2GHuMw9KFgdU8OZD3cDKkfTkYyA2oHF7dNV
	eJtrUY08dX8Ia2dmb934QN5vzh7SSYn3WFqcDKJfTTb3seK26T5cCxTtBwy+9WpS+f69UA9IERv
	ltHYLXPGyWq/xWZyAjTZG/IgMTMKVhrMK77RawL/ye8cnepM8M1YdCMqpnLBCyRQ2cUY=
X-Gm-Gg: AR+sD128WPsHN7prvmyVgxhTRG549A1UtLUwkyII7XvmXkgqayMI4CCo4nEE2jj/H3I
	D9fUEngTPFnPzimsoGjZPB80LVsTpANGZ/+0LvODYw/bVfNgc1iTKu3rS30pya6B+6LPG7Y0wDD
	SJMi9wXVM1QXWVJR6QNDObm7ToQ8mlzdJ9BODcTNNrrYGydT56gKOLCB6CzpsMcn/SXp/SX7GOl
	QmIzTBjIaRox8X1Vk5ZMtz3wdqjXPyKKvbdWjy67LYIS9iLr5D12iXbeH9cAkbP3bTtjwVXILR5
	uMV0koMiWiHscUZfq8QdY1SOX+z55CSE3PoQTH7i6hUHmxKwv3Ml03L2wJgEy6qlQ91qn/ke7L1
	OuKyp4iXc0aHw5q7QmYtx7avGPz1gRbk8NMA=
X-Received: by 2002:a05:690c:4882:b0:80d:c9d9:e1a9 with SMTP id 00721157ae682-820229a0978mr60602327b3.27.1785971708266;
        Wed, 05 Aug 2026 16:15:08 -0700 (PDT)
X-Received: by 2002:a05:690c:4882:b0:80d:c9d9:e1a9 with SMTP id 00721157ae682-820229a0978mr60601867b3.27.1785971707809;
        Wed, 05 Aug 2026 16:15:07 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-820134a9e21sm29018917b3.42.2026.08.05.16.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 16:15:07 -0700 (PDT)
Date: Wed, 5 Aug 2026 19:15:04 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v9 05/12] clk: zte: Add Clock registration infrastructure
Message-ID: <anPD-I9GDyOZSDO7@redhat.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-5-d05530d85d28@gmail.com>
 <anC72Cf1zKcLYWlC@redhat.com>
 <ky2t5IqOTfWMdfZsXE91Gg@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ky2t5IqOTfWMdfZsXE91Gg@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: VmKhqRhDVpKv1hHGkSixP0UPP47UQEXRcOjDrsw5VdY_1785971708
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_161511_402943_34EF4887 
X-CRM114-Status: GOOD (  18.76  )
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

Hi Stefan,

On Mon, Aug 03, 2026 at 08:48:18PM +0300, Stefan D=F6singer wrote:
> I have a long-standing question about tristate/module support for drivers=
 like =

> this: I don't think the driver can realistically be unloaded. I have been =

> testing driver unloading by removing the UART clocks from the DT (otherwi=
se =

> the clock driver is busy) and marking all clocks critical (otherwise =

> unloading/unbinding will shut down the UART (and more) and lock me out of=
 the =

> system).
> =

> I have made it tristate because from early research into clock driver sta=
te of =

> the art I gathered it was desired, even for drivers necessary for fundame=
ntal =

> operation [0]. Did I understand this correctly? It also uncovered some li=
nking =

> errors that weren't obvious when compiling the driver into the kernel.

Leave it as a tristate since that's how most clk drivers are built. Also
think about this from the standpoint from the perspective of a generic
distro like Fedora or Debian. Support for lots of SoCs will be enabled
in the kernel configuration. Some SoCs that may be deemed to be not as
popular for that distro may have their clk drivers compiled as modules.
(We at least do that in Fedora -- can't speak to Debian.) That way they
are available if needed, however the generic kernel image doesn't have
a huge number of built in clk drivers. Some more popular SoCs where the
distro may run will have these drivers set to built in to help with boot
speed.

Brian


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

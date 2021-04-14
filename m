Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8033C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 13:25:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1CFF26117A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 13:25:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1CFF26117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AI5YyO259qH3PFua0m9SRrQ2Wha/7QI4puewAkq2Zqk=; b=mLENo+YqN6w70JhNQjyhcNdWa
	Aaw6pgYTKulecJ6QT7J5GvDeWVIj45PccGdV/m7YXrGCG2NTKtxgzKwfvE3W7seBT1odUS0ohh/H0
	YaOMQO/m716/14tpKY2i1VmV9aac2BObBvr9R0SomW7JEywVgBWYx0dBt4/ao1jC+91SJwXhCad1R
	7WbjqbW/1SSxbHqmqhaPgeookgq3nWjB/OiqKiGDkvigZbbALdrbl9HRe24dO+D3e9SvbsvLBv+7S
	RwQ/8lLixcm9up79ssJ8t9rvi4YnXf27JvfbSFmwaxbmpkXsbqvCEBCetmBa0eFcpbwFidz2QsK6M
	IY/SGNO0Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWfW6-00CjTr-1K; Wed, 14 Apr 2021 13:25:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWfW1-00CjRq-Jr
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 13:25:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SquDUiPngSwrW4b6IjS70OYb7L7/gAGj8BPEFeGyXCM=; b=HSy44sU8j74dBusrJBQlRztq4w
 vWQm5ZY6lKptZZKL2Plbt3ra2zoC6C63JXy8f7N8qzNu/oO3Qycnnbin1XxoezlzMVjJ4KxF3jvvQ
 aKCr1FJuQ9JiqDAdfO07Yt7PeYfkSCLeyuiR7nAl6O31zMCgKZaeiAqYgxlGE299jyx6MVKGyz5QL
 xlhe0bL3beqMXna5yaeATLtn698Z+ZDXwmO2sbTzNpJrxajkeAwfCPEX1CjEFDwN0UBble8nqfSiO
 FK/xzLVJdjvAvHutVF5jNuorX/wvznF9gXTYxyGCxvaPFSu32FZkVd86nhT+40E3QbyUZc2WwLGao
 Ag4YjUTA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWfVy-007nDQ-Dj
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 13:25:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5F5346120E
 for <linux-phy@lists.infradead.org>; Wed, 14 Apr 2021 13:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618406705;
 bh=KsfaSXwOVw8QET+rbrgc/Q2gfMGscvpWJQ5f6uP0bDI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Iks8ZnUzibOCOteCTqLQDc3sO5dWbVeFufkJSHTUyiuVNtcpRqRXS0SLs11jkHmkb
 MM3xrtvIwsBTm4XeXa+KJBW5otpGgsXJdBf1PLWoFl6S+6jknNP+IEbgGHPls7OmuQ
 kHZnazrVjYdMCTbHdbaTM5brZS9X3pnAGdhY44N6GEnw95SrMNdrMDcDwkciMq/Ps/
 ffiJEXI7SmS/tWpFVde8yq8BhxsCkNgrrh030U5t5Z0HuTWY+1VXdnFLwC83BoOBOe
 b0rnWYbgFPS4Xq0+Lz4Jqn8YGEFMv/iS7JktC43lK2k8yNa3ddhxjTHd2GzY/MAK3Z
 GW8y9TNcG0/KA==
Received: by mail-qt1-f169.google.com with SMTP id j7so15373651qtx.5
 for <linux-phy@lists.infradead.org>; Wed, 14 Apr 2021 06:25:05 -0700 (PDT)
X-Gm-Message-State: AOAM533vR1P4VnZo7QEr+pvlRtHpeG/EBpyoY4k6frybfbWEBI9bAF3l
 URtVPvDSwhNzjOEkH9eOwfX//xKjlEKdCjFJiw==
X-Google-Smtp-Source: ABdhPJwJA1ciQB+OakY6pTjV36EpJWrGm4YT0HjQNhSLoyqhAQXeNhsuTJc+12R0uWC9xI3XPGMST7pxg0owMnX4v58=
X-Received: by 2002:a05:622a:8:: with SMTP id x8mr26156855qtw.31.1618406704544; 
 Wed, 14 Apr 2021 06:25:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210409134056.18740-1-a-govindraju@ti.com>
 <20210409134056.18740-4-a-govindraju@ti.com>
 <20210412175134.GA4109207@robh.at.kernel.org>
 <e1c2b752-5a2b-e973-c188-5916d8a2e31f@ti.com>
In-Reply-To: <e1c2b752-5a2b-e973-c188-5916d8a2e31f@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 14 Apr 2021 08:24:52 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ6OW6Pwtj7yTiCguvXDPfMreVpEsxAg59pwfa2qWvqEA@mail.gmail.com>
Message-ID: <CAL_JsqJ6OW6Pwtj7yTiCguvXDPfMreVpEsxAg59pwfa2qWvqEA@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: net: can: Document transceiver
 implementation as phy
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, 
 Grygorii Strashko <grygorii.strashko@ti.com>, Faiz Abbas <faiz_abbas@ti.com>, 
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Sriram Dash <sriram.dash@samsung.com>, linux-can@vger.kernel.org, 
 netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_062506_516724_F40525F4 
X-CRM114-Status: GOOD (  22.43  )
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

On Wed, Apr 14, 2021 at 1:49 AM Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> Hi Rob,
>
> On 12/04/21 11:21 pm, Rob Herring wrote:
> > On Fri, Apr 09, 2021 at 07:10:53PM +0530, Aswath Govindraju wrote:
> >> From: Faiz Abbas <faiz_abbas@ti.com>
> >>
> >> Some transceivers need a configuration step (for example, pulling the
> >> standby or enable lines) for them to start sending messages. The
> >> transceiver can be implemented as a phy with the configuration done in the
> >> phy driver. The bit rate limitation can the be obtained by the driver using
> >> the phy node.
> >>
> >> Document the above implementation in the bosch mcan bindings
> >>
> >> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> >> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> >> ---
> >>  Documentation/devicetree/bindings/net/can/bosch,m_can.yaml | 6 ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
> >> index 798fa5fb7bb2..2c01899b1a3e 100644
> >> --- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
> >> +++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
> >> @@ -109,6 +109,12 @@ properties:
> >>    can-transceiver:
> >>      $ref: can-transceiver.yaml#
> >>
> >> +  phys:
> >> +    minItems: 1
> >
> > maxItems: 1
>
> Will add this in the respin.
>
> >
> >> +
> >> +  phy-names:
> >> +    const: can_transceiver
> >
> > Kind of a pointless name. You don't really need a name if there's a
> > single entry.
> >
>
> This name used by devm_phy_optional_get() in m_can driver to get the phy
> data structure.

With no name, you'll get the 1st one. Looks like the phy subsystem
warns on this. That's wrong, so please fix that.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

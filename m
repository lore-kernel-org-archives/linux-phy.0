Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB93DCD6E7C
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 20:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkd+RbM427eBqpRNk6w8dkwwIFydvDXdebOYyamLznQ=; b=xltIJVymugdW8c
	ldkupmizYNEQ4Q7i+Dbi+p521jShH5jraGHv+RRwNj/uPiAeHVLp+eeJ2qmjVnqNDGuIvHGVpFW5Q
	ZZj5hegOXP2OA6oc9e3iCbIVLVPhVMNDD3dOSCff5gawP7gKxfhAVUVmoS6TT1EC0Yw8NN612nP61
	1Xl3rKc7Qee6U2oLcOrvwcgldEH2wLOTVrHb+8/n5CmwnNtvxAJUcRMTRGnAI6JGb/z9gtHhmMZVr
	FjvLEC7560C7Fa4kjFFQBPS4bK33ablFoYElEr/XO4q2i3Rx9VR8TI4dE8fqjdHOYC5XiLKhdUxzj
	4FlteVf7T6Bpbpehd8gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVb6E-00000001A4i-25my;
	Fri, 05 Jun 2026 20:25:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVb6C-00000001A4B-3gs3
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 20:25:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D8257600AE;
	Fri,  5 Jun 2026 20:24:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 637E11F00893;
	Fri,  5 Jun 2026 20:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780691099;
	bh=AawfnxPkBu+nR18PFrwVItmZPaX3o7vFcdq98RO2TxI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GMk2bsimU+Mb1HFIU6mQvPXsEs8zIOlAwzfX5LYbZe0sM7Til3WaUdFcMAO2A+fvX
	 axiiea11D1JLKzZZ1w9ByNOcmJSz1gAN283rmiSIwgmBbzo6Lip2/lCBcewI9rEjVU
	 Cz5VMonxKOcCruXzurk80jmFIVuLWozz3yrmsH+vGjPTyNeyXCX873KjCK9KlPVwBN
	 O8QSbj+UHwe781TRcknt1PkxrEz4zeGMvjQXDSgS/EtaUUgK7DOmky0OZwzUBX68yO
	 q1s950gU2OYh2EUt+qeB4XBROhCS4l5YbI7Ek6bFuhlU70lEQN6d+sbNnyAz1i3BSV
	 mCleqJVjdUrog==
Date: Fri, 5 Jun 2026 15:24:58 -0500
From: Rob Herring <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Conor Dooley <conor@kernel.org>, sashiko-reviews@lists.linux.dev,
	vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	olteanv@gmail.com
Subject: Re: [PATCH v3 phy-next 14/16] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <20260605202458.GA6304-robh@kernel.org>
References: <20260603132059.503527-1-vladimir.oltean@nxp.com>
 <20260603133350.9FA271F00893@smtp.kernel.org>
 <20260603133825.l544tnmtn2pqfrzh@skbuf>
 <20260603-numerate-unbundle-ef259832006d@spud>
 <20260605083737.yryq2a763zhnkjyq@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260605083737.yryq2a763zhnkjyq@skbuf>
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

On Fri, Jun 05, 2026 at 11:37:37AM +0300, Vladimir Oltean wrote:
> On Wed, Jun 03, 2026 at 04:50:39PM +0100, Conor Dooley wrote:
> > On Wed, Jun 03, 2026 at 04:38:25PM +0300, Vladimir Oltean wrote:
> > > On Wed, Jun 03, 2026 at 01:33:50PM +0000, sashiko-bot@kernel.org wrote:
> > > > Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> > > > - [Medium] The `if` condition for enforcing the `big-endian` property incorrectly matches the `compatible` string array directly against an `enum`, which will always evaluate to false and cause the requirement to silently fail.
> > > > --
> > > > 
> > > > commit 8bd3982a89722b20a3686e42d4ab3b9f0711ae11
> > > > Author: Vladimir Oltean <vladimir.oltean@nxp.com>
> > > > 
> > > > dt-bindings: phy: lynx-10g: initial document
> > > > 
> > > > This commit adds the schema for the 10G Lynx SerDes used on most QorIQ and
> > > > Layerscape SoCs. It defines the valid compatible strings, PHY cell requirements,
> > > > and enforces SoC-specific constraints such as lane counts and endianness.
> > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > > > new file mode 100644
> > > > > index 0000000000000..8cf6027a75b91
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > > > +  - if:
> > > > > +      properties:
> > > > > +        compatible:
> > > > > +          enum:
> > > > > +            - fsl,ls1046a-serdes1
> > > > > +            - fsl,ls1046a-serdes2
> > > > 
> > > > [Severity: Medium]
> > > > Does this conditional correctly enforce the big-endian property? 
> > > > 
> > > > Since the compatible property is a string array in device trees, evaluating it
> > > > directly against an enum always returns false. Should this use "contains:" 
> > > > with the enum, similar to the preceding if block, so dt_binding_check 
> > > > correctly enforces the requirement?
> > > 
> > > The tests I did suggest that it does enforce the requirement.
> > 
> > Yeah, sashiko just doesn't understand how this works without "contains".
> > "contains" is only actually required for validation purposes if there's
> > fallback compatibles and you're trying to get a partial match.

Not exactly. The missing part is the schema is fixed up so the above is 
converted to:

compatible:
  minItems: 1
  maxItems: 1
  items:
     - enum:
         - fsl,ls1046a-serdes1
         - fsl,ls1046a-serdes2

If we didn't do that, the above is not what we want here, but 'contains' 
is as that's the loosest condition and works regardless of how many 
entries compatible has. That's what you should do here.

This fixup used to be a lot more widespread when we used the DT YAML 
format and everything was decoded to an an array or matrix. The fixups 
saved a lot of boilerplate. That's less true now, so maybe getting rid 
of more fixups like this case would be better.

> Yeah, I have no clear understanding of the json-schema syntax either, I
> just copied from another place where it was clear that the intention was
> to have multiple matches on nodes having a single compatible string each.
> 
> But maybe it would be good from DT bindings maintainers to teach LLMs
> where they get things wrong in this repo?
> https://github.com/masoncl/review-prompts/blob/main/kernel/subsystem/dt-bindings.md

Yes, there's a few things it consistently gets wrong. I've looked at 
this and I can go write more instructions (and fix some things that seem 
wrong), but how do I know if it really works? First, I'd be testing with 
a different LLM as that's what I have access to. Second, how do I know 
if no warning is just the indeterminate nature of LLMs? What's really 
needed is for sashiko to incorporate feedback like any other developer. 
Otherwise, it's going to be like some certain reviewers we've banned.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

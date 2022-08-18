Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EDFBC32773
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 20:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIjf+Qe1Zzw278IWTSp7E61kf1SDKpkViqQPMIKiXYQ=; b=XnLY7zf+iLvRxL
	HCctfeNW+RyiCFvgLKLoPyAuIiz/8H8+GGeUts9U29uKYhMSHMyzfrZeHj37TYIJkg2/oSEk9BTuS
	xP8yhwCN7XZFPlja2NK0SiO2qBYiTh9tXD1fjmAty6mtMIBRHBg6PjB6clHS9nf3/anAG2EMf8Lb5
	y4fiaNgCG8l1AgKfPjZxL9aZ7HbzKpiZy2Ywigobfpmbvmx+VsG5vwDLnofJmU1QsCEq0fNkZV10W
	+rFyGyLdWhodjn3O+zHNumIP9K2B2qqKGCSglM/VWMHwe9IQP4ff4Mr5sWU+I9fG905OPmIBXo9LC
	0JlGfjGG+Ug1txmesngw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlxP-0095vV-S0; Thu, 18 Aug 2022 20:17:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOlxN-0095tW-7c
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 20:17:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 934DA61480;
	Thu, 18 Aug 2022 20:17:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 388FDC433D6;
	Thu, 18 Aug 2022 20:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660853852;
	bh=dTnWbyCxLymb2y1IHt7bcbwYUVC/MlbgC6SiikPfI7w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ioOoH70nKp3OLMN+CcodyBGS+0qN5EyYBBGsWnNQurWVhGhj9POL1hxSojRT/aChR
	 R8QCX9ToM2NQffQJ2JcoQ/4L8IYb0BRTCpz7f13XfZqdyrlR/cEqKJ6eJr1wpNdngB
	 f5cB+gPsJofCD8C2tDtCUBYnHlvZG8NcIFBawrCAYeFdRjWbyukWWLcCOxFNFbDyN0
	 qP7fc4kmrmO6UXSw/MTnxdd1uB3n2PBuqZctp225J1HNEUyvK3V3IreWX+CvRibhLQ
	 WvdC0HgutL9lRJ2DeV8KRkXhk48CtHXDOnylONvS2KS7iri3l5ZEF1wF7FFhE5yo9n
	 vmiGU6boi2RcA==
Date: Thu, 18 Aug 2022 22:17:25 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Gregory Clement
 <gregory.clement@bootlin.com>, Kees Cook <keescook@chromium.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>, Pali =?UTF-8?B?Um9o?=
 =?UTF-8?B?w6Fy?= <pali@kernel.org>, josef.schlehofer@nic.cz
Subject: Re: [PATCH linux-phy v2 2/4] device property: Add
 {fwnode/device}_get_tx_p2p_amplitude()
Message-ID: <20220818221725.0601efa6@thinkpad>
In-Reply-To: <CAHp75VeenutmdUZW4Zb6JVz2h5AgwzWmC-okaVtsgRzm99HZ5g@mail.gmail.com>
References: <20220817200335.911-1-kabel@kernel.org>
	<20220817200335.911-3-kabel@kernel.org>
	<CAHp75Vcn1MXEB_+kJuR3qY8qxi6oq0pEFFSFrmKv2-tE-YP-zA@mail.gmail.com>
	<20220818214137.29ccb13a@thinkpad>
	<CAHp75VeenutmdUZW4Zb6JVz2h5AgwzWmC-okaVtsgRzm99HZ5g@mail.gmail.com>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_131733_362951_FBC64B42 
X-CRM114-Status: GOOD (  21.52  )
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

On Thu, 18 Aug 2022 23:10:09 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> Yes, I have no objection to put it there, just that the above
> justification doesn't allow it to be in the generic code (yes, we may
> still have some awkward APIs in the property.c and ideally they should
> be moved to the respective subsystems).

OK

> > > You may count the values and read them all,  
> >
> > What do you mean? Count the values and read them all via one
> > call to fwnode_property_string_array_count() ?  
> 
> No, you obviously may not read them via string_array APIs, esp. one
> that is related to counting.
> 
> Count the vals first, read them all (it seems you need it in all
> branches of your flow). Then count names and compare them to the
> number of values, and so on... Also try to assign "default" only once.

1. there is one branch where I don't need to read the values: when the
   "-names" property does not exist, the DT binding documentation says
   that the value property should only contain one value, the default
   one. So in that case I early return
     return fwnode_property_read_u32(fwnode, vals_prop, amplitude);

2. I thought that I shouldn't check whether the size of the
   "tx-p2p-microvolt-names" array is equal to the size of
   "tx-p2p-microvolt". Rob Herring says (if I understand correctly) that
   kernel shouldn't validate device-tree, that we have dt-schema for
   that...

Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

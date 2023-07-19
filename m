Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3471BEB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 09:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4OJ2zB6/IpkOZ82lP+htwcCxow2gbhkUYPlGBp5tMw=; b=AtKIeahV7rsmYq
	lV1BUIJdt/5PJ2HVJwJQAlxbJ/f/OC7ZNilAC4TpI/WVMD75xeBggWFJN9F5JNTqgrdy0ZWU55ZjH
	Z75u0Nf4U/gcE5cRayi0jLx2H/gaSvMTv1KMCfVmc3VMSNKPv7dzJ+kmVJb/XAR2N7rrY+3a2eaYl
	DgNR1CUDw6KOzNqfIfYSke7dj/ieXTsdVApssPDuGSpnNtujpyy7lg6dNngos3A+EVjapOJIv2kKY
	p18kY00IIgreWuDakBUkV1ipMOISI2ZX+CaB8yM6urHWKTvRwSxdlAgFy34AAm8L5P+teU/FcGBzF
	dOnjD85ORVWxG4fSt3Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM3gZ-006aAF-2s;
	Wed, 19 Jul 2023 09:41:31 +0000
Received: from dliviu.plus.com ([80.229.23.120] helo=smtp.dudau.co.uk)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM3gV-006a7p-15;
	Wed, 19 Jul 2023 09:41:29 +0000
Received: from mail.dudau.co.uk (bart.dudau.co.uk [192.168.14.2])
	by smtp.dudau.co.uk (Postfix) with SMTP id A2F6E41A7003;
	Wed, 19 Jul 2023 10:41:18 +0100 (BST)
Received: by mail.dudau.co.uk (sSMTP sendmail emulation); Wed, 19 Jul 2023 10:41:18 +0100
Date: Wed, 19 Jul 2023 10:41:18 +0100
From: Liviu Dudau <liviu@dudau.co.uk>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: rk3588: add PCIe3 support
Message-ID: <ZLevvl+VKBxe1kQu@bart.dudau.co.uk>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
 <20230717173512.65169-3-sebastian.reichel@collabora.com>
 <ZLarQUvUK3v3m6Cg@bart.dudau.co.uk>
 <20230718160137.sfitnkl6gmyi75jx@mercury.elektranox.org>
 <ZLbqPB5yP7Kn6FT6@bart.dudau.co.uk>
 <20230718210601.6hrmnl5lbtl6vinp@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230718210601.6hrmnl5lbtl6vinp@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_024127_516887_CDB5644A 
X-CRM114-Status: GOOD (  23.43  )
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

Hi Sebastian,

On Tue, Jul 18, 2023 at 11:06:01PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Jul 18, 2023 at 08:38:36PM +0100, Liviu Dudau wrote:
> > On Tue, Jul 18, 2023 at 06:01:37PM +0200, Sebastian Reichel wrote:
> > > On Tue, Jul 18, 2023 at 04:09:53PM +0100, Liviu Dudau wrote:
> > > > On Mon, Jul 17, 2023 at 07:35:12PM +0200, Sebastian Reichel wrote:
> > > > >  	pipe_phy1_grf: syscon@fd5c0000 {
> > > > >  		compatible = "rockchip,rk3588-pipe-phy-grf", "syscon";
> > > > >  		reg = <0x0 0xfd5c0000 0x0 0x100>;
> > > > 
> > > > What tree is based this on? Even after applying your PCIe2 series I don't have the above
> > > > node so the patch doesn't apply to mainline.
> > > 
> > > You are missing naneng-combphy support:
> > > 
> > > https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v6.6-armsoc/dts64&id=6ebd55b3bba383e0523b0c014f17c97f3ce80708
> > 
> > Thanks! It looks like the PCIe2 commit that adds support to rk3588(s).dtsi
> > files is also missing an #include <dt-bindings/phy/phy.h> for the PHY_TYPE_PCIE
> > use, otherwise the DTS fail to compile.
> 
> Yes, that's also already in linux-next:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v6.6-armsoc/dts64&id=34d6c15d8e86256ef2456c604b1c8d8242720871

I'm reading that as: "relevant patch that this series depends on has already
been added to the tree that's going to pull this PCIe2 series so all will be
good". Otherwise I think there should be some mention in the cover letter
about dependencies, so that people like me don't report issues just because
they are not using the linux-rockchip tree by default.

Many thanks for the quick answers and the links to fix my tree.

Best regards,
Liviu

> 
> Greetings,
> 
> -- Sebastian



-- 
Everyone who uses computers frequently has had, from time to time,
a mad desire to attack the precocious abacus with an axe.
       	   	      	     	  -- John D. Clark, Ignition!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

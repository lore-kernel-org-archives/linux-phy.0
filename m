Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA1B9C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 11:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pk6RWykTe9ePpcZVkTB6RZaNbEW3jf2DNtlH01FE2o8=; b=i8Vf4HIeBwhjOd
	6EoXG1OyV2cToadwneMGHqMEyUcWWWdJmAelFoxiE05C1d5g/J4gSZdwpO4LZ4QxRCwljROb3eCJj
	q2A/CVlQSboOSKayNqlpT0IjsXseDxefwu5bcE6qPXYYbmj7L19zWwZeQq+7IVYpxmRpM4J+PkjOG
	SWy5xeSQX6AvWBshRqR8uU8VqiOlpaTdSTyJxrCI/V/D0HSvZbBsN/017Sa9o3LxZhVuF1boQkAGW
	b7qvR2IyOCz/oLgmOobTu8XfAf5I655TSBVLXBaEov/eLOkfg4Al3vqfllzzgR61dIveqfMkTzm0j
	zYXxRceeZZMk3yaDITDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjvh-0007wA-1M;
	Thu, 14 Dec 2023 11:31:01 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjva-0007oo-1I
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 11:30:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3DBF4CE202D;
	Thu, 14 Dec 2023 11:30:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F7E6C433C7;
	Thu, 14 Dec 2023 11:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702553449;
	bh=Fk0lWlyniz2h5a3rEQxROF0ImdCpeMxK4CdTL7O7dQc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V4XPPGfs7RCX22aO8nbSp3XIZux1Lb2jKnmSf9SHDPgFiZMu5zgYkzmzL4PgIOH4t
	 QuZ0eCyXprrpyBJQQgTMltqZ8ZVyWj4uTJDAphoVJ8oFckdNACOC0WGNKn9r04t2oq
	 xltWlehbXiB67ZMAQWnrQoVj+DiZFHN+NBfjuvU1NjyfB2Ddu2aM8iXCgFRBLDoYay
	 g16QEPXF4AC9zWT9gmFiFBsI33WYK0hPLPOcUfOEHPmaactnayJJez1VEVBtwiNR9Y
	 JXNF0ItDpZyc3IIfSo37+EWJEtomFXaWoVDWCwsbw7IKpOoNzZjlXdqVxDxK0o7E4d
	 aB6mka1O0ln2A==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rDjvR-0008HE-0v;
	Thu, 14 Dec 2023 12:30:46 +0100
Date: Thu, 14 Dec 2023 12:30:45 +0100
From: Johan Hovold <johan@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, andersson@kernel.org,
	konrad.dybcio@linaro.org, vkoul@kernel.org, sboyd@kernel.org,
	mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Shazad Hussain <quic_shazhuss@quicinc.com>, quic_cang@quicinc.com
Subject: Re: [PATCH 00/16] Fix Qcom UFS PHY clocks
Message-ID: <ZXrnZeDYOsteY5zT@hovoldconsulting.com>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
 <ZXrVxmxY6wZprbBa@hovoldconsulting.com>
 <20231214103907.GL2938@thinkpad>
 <ZXrgWK5wZz6dAkKP@hovoldconsulting.com>
 <20231214111409.GB48078@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231214111409.GB48078@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_033054_914812_6148992F 
X-CRM114-Status: GOOD (  28.48  )
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

On Thu, Dec 14, 2023 at 04:44:09PM +0530, Manivannan Sadhasivam wrote:
> + Can
> 
> On Thu, Dec 14, 2023 at 12:00:40PM +0100, Johan Hovold wrote:
> > [ +CC: Shazad ]
> > 
> > On Thu, Dec 14, 2023 at 04:09:07PM +0530, Manivannan Sadhasivam wrote:
> > > On Thu, Dec 14, 2023 at 11:15:34AM +0100, Johan Hovold wrote:
> > > > On Thu, Dec 14, 2023 at 02:40:45PM +0530, Manivannan Sadhasivam wrote:

> > Unless the PHY consumes CXO directly, it should not be included in the
> > binding as you are suggesting here.
> 
> PHY is indeed directly consuming CXO. That's why I included it in the binding.

Ok, good. It's a bit frustrating that people can even seem to agree on
answers to direct questions about that.
 
> > We discussed this at some length at the time with Bjorn and Shazad who
> > had access to the documentation and the conclusion was that, at least on
> > sc8280xp, the PHY does not use CXO directly and instead it should be
> > described as a parent to the UFS refclocks in the clock driver:
> > 
> > 	https://lore.kernel.org/lkml/Y2OEjNAPXg5BfOxH@hovoldconsulting.com/
> > 
> > The downstream devicetrees have a bad habit of including parent clocks
> > directly in the consumer node instead of modelling this in clock driver
> > also for other peripherals.
> >  
> 
> No, I can assure that you got the wrong info. UFS PHY consumes the clock
> directly from RPMh. It took me several days to dig through the UFS and PHY docs
> and special thanks to Can Guo from UFS team, who provided much valuable
> information about these clocks.

Sounds like you've done your research.

> > What exactly is wrong with those commits? We know that the controller
> > does not consume GCC_UFS_REF_CLKREF_CLK directly, but describing that as
> > such for now was a deliberate choice:
> > 
> > 	GCC_UFS_REF_CLKREF_CLK is the clock to the devices, but as we
> > 	don't represent the memory device explicitly it seems suitable
> > 	to use as "ref_clk" in the ufshc nodes - which would then match
> > 	the special handling of the "link clock" in the UFS driver.
> >  
> 
> No, GCC_UFS_REF_CLKREF_CLK is _not_ the clock to UFS devices. I haven't found
> information about this specific register in GCC. Initially I thought this is for
> enabling QREF clocks for the UFS MEM phy, but I haven't found the answer yet.

Just quoting Bjorn.

> But as I said earlier, reference clock to UFS devices comes directly from the
> controller and there is a specfic register for controlling that. Starting from
> SM8550, reference clock comes from RPMh.

Sure, but that was only part of what those commits did or claimed. Bjorn
also explicitly stated that those refclocks were sourced from CXO, even
though I now see a claim from Shazad in that thread claiming the
opposite:

	https://lore.kernel.org/all/Y2Imnf1+v5j5CH9r@hovoldconsulting.com/

Without access to docs I can only ask questions and try to do tedious
inferences from incomplete open sources (e.g. downstream devicetrees).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

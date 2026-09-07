Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB4CC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 22:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbB6LayFYORG4HDa2OiFwFzPNReaYpJEYMa/qGi/+/c=; b=c7IXKJvH6bjWY+
	gyFWmEcax51A3x7HjukwkQlTc/9reND6O4tnBaH0zbJg644GGf+2Uj5VrVzjOODc2axk5KXK3/EyY
	EYRqn6togmPuh/2jUbcoFDdcJOrq3opyqZTCXTulEveu009rFi7V74SXu9sCwHIOO1INL/MOkz3Uo
	V7BNODdBH2k+cFAyDyGH/AEo+aBA5tHcleqyYIQkoZMD6YCo+n9Y/slf+jdVfg82TSBftyo4lWujP
	Kf4iHtBmIqD/b2a1CFpQ+/UDIoZ4ZyR04R1/wpoDH8n22Hj7ndIqGbbNRju5+82l2UeDoCjHBOm8s
	WMbgYOl/Z8fuo2syJi9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3hpo-00000007oXT-48yJ;
	Mon, 07 Sep 2026 22:29:04 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3hpm-00000007oWA-28Bx
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 22:29:03 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2d944747d41so41204655ad.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 15:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788820141; x=1789424941; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/MjzhtBXM0iX2iDGhUeHjUxxReJ7nNqiLgIG0FGKsSc=;
        b=I/i81C5upUo+A/qgrkd4j4aB/kgPRDcLL/Z4jNEA+Syoya0vn0X/jBnaGbM6wQRIXL
         ISbhKNew1W9yogpIIkBMfnjMF/WMwxr+6lZEF3Z6BJutdKJBOqBuCmqZsCv758djyYnU
         ag0OfbL6fb5BAM6CmdAvCqPp6XkkUXjlgqNlCxokQjcVottmH/l6Mmbj65NafqbrhJsM
         rnl35OOS6UfWHS7VU/ik7wUYlTcg89lB3734p81+eD3N1VCx5qRQH9xy/g+2R0I4Bbko
         UCTMc6QsjIEnRgtZZFLg7Bp3UF8CVFgIRxTwz15CiqlGkiTd23iOF4PQe2stInqmqwiA
         lBzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788820141; x=1789424941;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/MjzhtBXM0iX2iDGhUeHjUxxReJ7nNqiLgIG0FGKsSc=;
        b=VCHzjWLRMe7a4m+XbSTJnjr4CmOx91jSXV+u5exxcwn5KELTNUNZK/LTbhGiv/paqW
         G1O+fT2ha8gpXdO4N/ET1Xs0KC+1uo8HuslP3OSXBPLt0m7owPJKFCDgxe2QD4MDGIpI
         Lh4N4lPP57vwE0KkY/+qfU/3dV16UyP9vhLWSc0s9dxaxMSe2MR27pjtxnZDbYnDEjMP
         CSx+c1Mjnd3J8xG3DrKLjlxY1q8hyB5h6wzWsdODv02SULmnA1oxHZtMscc0+36J6wSn
         eWG3FmAgIOr/lret3XTm8ME3NPyGIidzOvbYePOQbOTekZpnPHe67bfut9lN2XVkWYE5
         6bIA==
X-Forwarded-Encrypted: i=1; AKwUvBxCmS/wEm/3zQEdjJE1i9dKevAIaZdKaEvK8OujW/RGmFmLakl0Z6NEFvNfDVGIUIhMkdL6wKQaKFA=@lists.infradead.org
X-Gm-Message-State: AFuF++l4/hEMsdDPMO0H0vbpJ8jkwXqIJeQOIMjDLHx6BELGwaReHgpM
	JjdxrFTixMmWXzOMpTqlzLVgd6Ke4oAnWpS679+JkQ8NPQgD20hI2WWg
X-Gm-Gg: AYBFou1CL2El5ENr+mOpwiTDVJ1XH5g8KKEp8YoHOVf07Fyf7u5WBRruBNjT3+nIBCF
	YeyqP8Ce+9QbZp0zuJAMYvNbMlDRyrxKf2tRtqlEsrxUbfk5j5lNwGSNN21bOjQyJy8S7KukA9k
	NaaW0H1r7eMDoqu3CGb8dXRtfZa52BTu3+TjEHtx5j9g1B54/9odj7OjmW5wIDdanpedlAFc4Ra
	Hz02Mh4erP7yDgJWqVYH+2eofahDR6eRA1CBPLg6PIlvdNkvFmz+PJ8wn3JPOqy+nRFGxFW3uAD
	dWU0+e2uUAuNK7HbvI9K7967HBrrqQn6114ExruadFpd40m/VkOcE7VZil3PCenRZtF01GSmWer
	zsWo6zMjDwqA8GYrydU3ZGpkClyICggvpjMLXDhuTtyEjhttSOgcuiPu+Za+tlx3Q+oftM5mK7X
	UIjCUmFITSNqxedSpW27s2IAzZtmz8ocKkgPPpMc1pI2nTKQO6/BOWT/K+06u17ec/bTAhmw==
X-Received: by 2002:a17:902:8a8d:b0:2ca:e19c:97b with SMTP id d9443c01a7336-2db122edd50mr271424715ad.5.1788820141536;
        Mon, 07 Sep 2026 15:29:01 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2db14841054sm50444525ad.3.2026.09.07.15.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 15:29:01 -0700 (PDT)
Date: Tue, 8 Sep 2026 06:28:33 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 0/4] phy: core: Add phy bulk helpers support
Message-ID: <ap86IO78I_1AZbkU@inochi.infowork>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260907102849.w7yn43x6m3f2rnuj@skbuf>
 <ap6fcP7Oct109dkY@inochi.infowork>
 <20260907115712.dg5pw4ajvrtdipey@skbuf>
 <ap6ngAxlztCAFSH0@inochi.infowork>
 <20260907121653.4ajpkjt2i5opmwzc@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907121653.4ajpkjt2i5opmwzc@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_152902_547076_39E56BDF 
X-CRM114-Status: GOOD (  29.28  )
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

On Mon, Sep 07, 2026 at 03:16:53PM +0300, Vladimir Oltean wrote:
> On Mon, Sep 07, 2026 at 08:05:57PM +0800, Inochi Amaoto wrote:
> > On Mon, Sep 07, 2026 at 02:57:12PM +0300, Vladimir Oltean wrote:
> > > On Mon, Sep 07, 2026 at 07:29:49PM +0800, Inochi Amaoto wrote:
> > > > Yes, I have one for it. This is the spacemit pcie driver.
> > > > https://lore.kernel.org/linux-pci/20260907112606.465778-1-inochiama@gmail.com/
> > > > 
> > > > But it only uses a few of these helpers. So should I remove all the
> > > > things that are not directly used, and let others add these if they
> > > > need?
> > > 
> > > How many functions would go away, and how difficult would they be to
> > > reconstruct, if we only were to add them on an "as-needed" basis?
> > > 
> > > If the answer is "many", I suppose you could also leave a note in
> > > phy.rst that links to v2 and mentions unimplemented functions because
> > > they lack a user.
> > > 
> > 
> > In fact I think it is happy. This PCIe driver only use three APIs:
> > - devm_of_phy_bulk_get_all
> > - phy_bulk_init
> > - phy_bulk_exit
> > 
> > So most of them will be removed as only a few are on the path.
> > I will follow you suggestion. Thanks.
> > 
> > Regards,
> > Inochi
> 
> I think you should call phy_bulk_power_on()/phy_bulk_power_off() as
> well from the PCI controller driver, even if the PHY provider driver
> doesn't (currently) implement them. The Generic PHY API is about
> offering some degree of mutual consumer<->provider intercompatibility,
> not just a pretentious indirect function call k1_pcie_init() ->
> k1_pcie_phy_init().
> 
> So those 2 functions should also make it to your v3 patch set.
> 

Good. That's the point I have missed. I will add them, thanks.

> BTW, do you need a stable tag to be provided by linux-phy, to continue
> your work on PCI in this development cycle? You should mention this in
> your cover letter, because it does require a bit of maintainer
> preparation beforehand.
> 

I think I need. The most problem of PCI driver is already fixed so I
think there is a chance for it to get merged.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

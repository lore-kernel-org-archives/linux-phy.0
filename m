Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8AC0CD8C9C
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 16:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CKaCljdK68THyiL6utfc+cYYbcid7fpJzvQDFl5a0g=; b=DPX4YgdL289vSP
	qqE++FghZvNmnUxyFmrPzMK3sN0sC3tWjmSI52nzKXVt7H+iFKbIzCQagyVW6jBJX8MGXteFiSz2q
	tCoKA2PofRQ2TVZn9zIkpcCybjC8+EWd0Yr2KNSWO+CkOQn8gDoL33GavFsIREEWA8CkEWise1aVN
	4aFJLXFJCZCShpO7wreSm5ARNmFloQu2UFkzQTg0QiOn1zQskfa910xWX6kwFZaXrS9AJ3Ug/yKUF
	NgqimFLCSG/FPDBiZKk9PGZkj8rB4dwQCjqFhWvhjTILleU+raP5AGLATYNIHx77lZHG/tRy30jcu
	7Zp9J0Jke0tgyx6rf5Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJaDQ-0000000Ansm-26AC;
	Thu, 13 Nov 2025 16:30:32 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJaDN-0000000AnsN-3nif
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 16:30:31 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-477563cb70aso355325e9.1
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 08:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763051428; x=1763656228; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r3r73UQNqtdeIQLhnX35BjU0Y880UTPCnGX02EQHqjc=;
        b=KjctGRcEC3d+ZOQaVOhkhq5ioW++iXg+l/4k5h47Qp8NX+TzTrroFBTO3GR9/o+AxE
         yIyD+0MWEfUXDfpYFNE25fjQyYRSNTaUhQ7VD/VTQTDYNIfyOCOou3TUrFNVc/o0zkTo
         A7q4S+QJ4Gc5PPvz8/FAPey7ZYKWF43D4FdzXxueQ8EWt/MEipaSg7EAEylAk/6qbywP
         e0NXUqLZ/6ejVXJPvYWBnaS+1p1M/RPPRaseqiXtNwTKxAy9M5rlxaxA2OFB+PQ93hp6
         oinLlPjIXzifLTMChCjRmgqCZ7lyjvxLbh/x204Ngsk15Vc8CmbsWCMcjpbz7uCTdI8o
         o6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763051428; x=1763656228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r3r73UQNqtdeIQLhnX35BjU0Y880UTPCnGX02EQHqjc=;
        b=ASM90BPdL2KPjWpVtaM91JZlQCsrwBElqQ9TKFuXBNingLx2riOS+43piMXClKNWhr
         omQDEjPHxdKFb9Xkq5snRH1fsZ78oslbTUykNnLN/DH8ztOy4ZzfIHogIasGbL+5hR6y
         MngRa9XeQv0IZw+U1Qz8VWGjmJtEKGNzOf1Ds6n0sxKHuO5h7J3ARmQQmAqyNc+euvtm
         dHaNlu2Bquharzg3a2WIQmFgDPbGTCrr59kOajWAUeYgWsb4KsFM0GTJJDkn+z62d7Cd
         nzI4OYb3nDIGLiJnngjXbCOdbSsRbw4yHhnRHrZ6L5MhHu1nQp6Jap466/S0qcWi1abz
         0Z9g==
X-Forwarded-Encrypted: i=1; AJvYcCXyH/bH6vJouakTcHOmNv8b5iwtVllDGk5JXpfF1atiLjbYKyOjLW+hNPRzDQyftknL539ww8Z9kpY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjSscpDzPDjM0egwGcQySzW5rPG3FrKwONCI31wXn1a2SXosg9
	QqP6PMW3BLdRBl4uu2Lfw+Uh/XU/64isL+K3Jj+QMnSh18q2c9nJWMab
X-Gm-Gg: ASbGncvlg1gzfuOfvT3FdHdIFG1rtICv65L4jZj1g2Bytykq3VPiFiFYsG6Z9tbG1n0
	k7sPjaiGHrYRajOrs3Q+eJYmzFUuLsd/dQIq4R+S05ZljaMfy45YOrDxVQm/WB0B5zToN8BXDAs
	QonN6fbbOWwRykX0/1wVdGMk4GPglpjvQmAofzzxHp0Bn2z8z9ZwZ6s/ubk4lGAcofdaGQBu+qq
	8QT80t3XlLXj+wJ65+EuZ6+L1iWLYm3dng7eybN5quA/PieKds+tKxGrP7/BOyNGT2ksaNfbXCG
	oOHojutRU+PgAJFPcm3+G/9RfI1jevYPMz44adqxA3Hz25588X9uNUeGfFomq/NgdD4niGHD5ho
	dKOOdmiDf/KMZr2EFvuk839la/lf2obVMXSxvTkbn+NbhDYgszj7v8n4k1IO0xxPeqbJwuRw41k
	cGLBs=
X-Google-Smtp-Source: AGHT+IGgh7OmYpsm5WrF/6yqCl9whZpB9vMZS5weAAxXcUVQKGVt3MFL8OrudG1F7orP2JILXBJkAA==
X-Received: by 2002:a05:600c:45c4:b0:477:79a0:515 with SMTP id 5b1f17b1804b1-4778fef6feamr205505e9.8.1763051427422;
        Thu, 13 Nov 2025 08:30:27 -0800 (PST)
Received: from skbuf ([2a02:2f04:d503:6f00:5125:db14:ba9d:8fdd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7b074sm4605741f8f.7.2025.11.13.08.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 08:30:26 -0800 (PST)
Date: Thu, 13 Nov 2025 18:30:23 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20251113163023.syl6nxq2mqkxpz4z@skbuf>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
 <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_083029_960992_E605CD23 
X-CRM114-Status: GOOD (  40.53  )
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

Hi Horatiu,

On Tue, Nov 11, 2025 at 10:50:16AM +0100, Horatiu Vultur wrote:
> The 11/10/2025 13:42, Vladimir Oltean wrote:
> > 
> > Hi Horatiu,
> 
> Hi Vladimir,
> 
> > 
> > On Mon, Nov 10, 2025 at 12:05:34PM +0100, Horatiu Vultur wrote:
> > > Allow to invert the N and P signals of the Serdes for both RX and TX. This
> > > is used to allow the board designer to trace more easily the signals.
> > >
> > > Horatiu Vultur (2):
> > >   phy: microchip: lan966x: Add support for inverting the rx/tx lanes
> > >   dt-bindings: phy: lan966x: Add optional microchip,sx-tx/rx-inverted
> > >
> > >  .../phy/microchip,lan966x-serdes.yaml         | 24 +++++++++++++++++++
> > >  drivers/phy/microchip/lan966x_serdes.c        | 23 ++++++++++++++++++
> > >  2 files changed, 47 insertions(+)
> > >
> > > --
> > > 2.34.1
> > 
> > For context, I am trying to describe the lane polarity property
> > generically, and I've already blocked Daniel Golle's attempt to
> > introduce the similar in intent "maxlinear,rx-inverted" and
> > "maxlinear,tx-inverted".
> > https://lore.kernel.org/netdev/20251028000959.3kiac5kwo5pcl4ft@skbuf/
> > 
> > I am trying to find out all there is to know in order about this
> > feature, and I just noticed your patch, so I have to ask some questions
> > in order to understand, had a generic property existed, whether you
> > would have used it.
> 
> Yes, if there was something generic that would fit, I would like to use it.
> 
> > 
> > So I see that you don't have OF nodes for individual SerDes lanes, so
> > this makes your device tree structure incompatible with simple
> > "tx-polarity"/"rx-polarity" properties. Are those something you're not
> > willing to introduce? 
> 
> Do you propose to change the device tree to describe each SerDes lane
> individualy?
> Apparently in the lan966x_serdes we have also the port muxing which I am
> not sure it should be there as it should be in the switch. I have done
> it this way because I have use the phy-ocelot-serdes.c as an example.
> If I change the device tree to describe each lane, then first I need to
> take the port muxing which is fine for me. But there might be a problem,
> if someone will use a newer kernel with an older device tree, it would
> break the things?
> 
> > What about other stuff that's in
> > Documentation/devicetree/bindings/phy/transmit-amplitude.yaml?
> > You also won't be able to make use of the existing device tree
> > properties if you don't have OF node containers for each lane.
> 
> To be honest, I haven't look at transmit-amplitude.yaml yet.
> 
> -- 
> /Horatiu
> 

ffs :-/

The radioactive piece of #### that is my work inbox moved your reply to
the Junk folder, _even though_ you were already in the list of safe
senders and domains. I just checked this thread to see what was going on
and why you didn't respond...

Yeah, the device tree binding I want to propose is per lane, so there
needs to be an OF node for each lane.

I can't easily parse the lan966x_serdes_muxes[] macros, assuming this is
what you are talking about.

Would it be possible to leave the SerDes muxing alone (with its
#phy-cells = <2>) and just add the lane OF nodes as an extra? You can
add new support for phys = <&phandle_directly_to_lane>, but that
wouldn't remove the existing support.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

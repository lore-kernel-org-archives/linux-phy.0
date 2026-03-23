Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91515D58CBF
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 21:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bds0IP/YW5MAlH4n4tl3S9p68Q+uhu6l00qnFAi5EEI=; b=jI+pjvIyl+9v8T
	f2Nyuuq1j07P7z/M6ixDBtm+nHMD/VjytW99mXUSuWZR22ylmZcbkFC7XmJthkHFYs8a+C/dF+2JN
	KFufuaggnp4qVHZ6Gx4FPvKzyAOYSk5jVvCRIC3tspRDaLmaRXfokBECnW+eqRGeQIdgL8HVZ9AT/
	BkqSMEFugKWycKUEE6nVZ64d7/9EOkhxGPq/d6U5YCT8EoTRnwoiWHqScVW06sodsO1u3VJo+ZO24
	2pU0fyToV9WXW9BAkLwdLB7kE6ydY9McBtj6hsiTq1B8g0R4qnLItv8LvbZwG/HPvowXQ2kubmOmH
	J/zpUiNsZTD3OcYApTpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4mzv-000000001jY-1JWq;
	Mon, 23 Mar 2026 21:39:43 +0000
Received: from mail-dy1-x132b.google.com ([2607:f8b0:4864:20::132b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4mzs-000000001jB-1kcM
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 21:39:42 +0000
Received: by mail-dy1-x132b.google.com with SMTP id 5a478bee46e88-2ba895adfeaso730899eec.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 14:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774301979; x=1774906779; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yGHdDoGsiDtOdNrXq7SHzA/I1zh7boK5LF3ZF/OlV0U=;
        b=Yu8xpeQQkTOLDT88FUAcwOEC8p6kmLdYM1Qymups/pllj0sT7WB8PTp2pR2jBF3Fct
         lZ71nXbBZM2JhR5oc09DM8REeyYd92cySv0uXGHR3fdn0dQu86Ee8OJJGeZQRjOkGn8w
         BACDFSx4NqMtLY/A+LCSltbctayK2dsBrF8FKJOLxX286E7hiDzzVKarNOyUYtDGyrWb
         tDHL120Fdouw7fVaf8sTdtz5Z4ymUUCo6DpYa5Cu3o3fdd+6hiAP84ofwR87IrDV1Kj+
         Wjyg7sES/CcjwjrB/aMUpiyo5SKK7LgnwrjRYd5Ba4tEUL5g1h3xpnRo91W37nOrXFKz
         7n8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774301979; x=1774906779;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yGHdDoGsiDtOdNrXq7SHzA/I1zh7boK5LF3ZF/OlV0U=;
        b=aIwMXOsLjBJ5J/jmbbn/38bD4kstZRjAsInLPaZCvDELoYobAcEL1lvqWdekh3UmO1
         u03sWG5c2WnEw9+xuy0wwQ23NjyFbzV38woTpCFzNaSLIGtpgWFm0Ae/qSv0K7CSnbPL
         WnxRG9iPS3CIG2YMoY/9P6g2poA5ujj+2SVwCBg4ljONZ2ae2RM9UOQGYZHrsLBoSjLs
         hTayxXC5bviZ92TcfVU3u4zXa9X1yEtqNdIeE0t6qOr+zyE06xgT8au4J+6yj00gLIUB
         CkaP7QefBOxx5EFv3rXADbdju1vdpav2IZ22oNOPuZjQXYGlB/GNSTNUA71kndN8wkRI
         01Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXS2PNHUxv1tgY1bNqg5WC2U2/lE8O2+mPkQC+Ia+6IR7NK7VVmkrzwQ5kQ1BNN0M14XgK8AYhnN3Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+aDcgRP1iNd7VWgh8JPeojMiXMKW3tFUcB2zE7V8dxqx7moDy
	zOdSkQDZZfC6W8Bbq1+viWeiSgogcD2hzotZoX+JxNnqOX7fUd9iCOeTv7l546xg
X-Gm-Gg: ATEYQzxVxGr1D+Al3JlfE+7rHYExo19jbn21rSKyhDXf8jvNV6XaVRujQFjvtsph+kb
	hUT6hutuCLBFUyboB5UMjCgUymYc44wTfZczxiYvvfIVnoKV7daTa7xxXWqd+PCMCcsUXtmFTpT
	pL8gGnMLT26PBvROUHB9lL6R3+g81kCB8AnMRMdouhuo2JtxwmFFsuF7U1EDvC1WxWT8Z8HeWQ7
	Ehc35PGP17CMk0VJ/WbflsTJ38ZJbhLPp/lVQLo9Os4B7FnMWbuJo2l1DdScHprCP45iRBIF5Cd
	g3ehALhHPjdfiinbVrffSvkVzaYezJuYdBQgJkVNiMuuIWkrqZ+Y2KjQ5wkdb12fp76QkOck/6i
	ItKSY5HWnqPc9mVxM7689E8TIbG1DEKgeYCcs6MQ7wRfteBzDURavdQjakLsypJ6lYL/8aSOxDd
	MviiV29z1TdsxxmJufa3hOP729pxwMfMewOCa0WOiE8CdlS8ITGkbrcMPxwVi1HYki
X-Received: by 2002:a05:7300:dc94:b0:2ba:6819:2e9b with SMTP id 5a478bee46e88-2c1095a5302mr6126697eec.3.1774301979400;
        Mon, 23 Mar 2026 14:39:39 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2d01f7sm13145631eec.23.2026.03.23.14.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 14:39:38 -0700 (PDT)
Date: Mon, 23 Mar 2026 14:39:35 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <acGxgkWiPLy8XePz@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
 <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
 <acGWJf1AGXT1xduM@google.com>
 <55abcc68-747a-468a-abdf-b6340d658c4f@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55abcc68-747a-468a-abdf-b6340d658c4f@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_143941_193942_E3C0ED08 
X-CRM114-Status: GOOD (  25.54  )
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

On Mon, Mar 23, 2026 at 07:58:14PM +0000, Mark Brown wrote:
> On Mon, Mar 23, 2026 at 12:41:59PM -0700, Dmitry Torokhov wrote:
> > On Mon, Mar 23, 2026 at 07:05:13PM +0000, Mark Brown wrote:
> 
> > > I think this is a worrying idea for core code like this, we have
> > > specific firmware bindings for specific firmware interfaces with the
> > > different interfaces having very different ideas of how things should be
> > > modelled.  The chances that firmware agnostic code is going to do the
> > > right thing seem low, and encouraging the use of generic APIs that might
> > > happen to run OK raises the risk that we'll get firmware vendors relying
> > > on them and leaving us with a conceptual mishmash to sort through.
> 
> > Firmware vendors can introduce incompatible DT bindings and have them in
> > their devices too and we have to deal with that... 
> 
> The case that's worrying me is mixing the ACPI and DT design models in
> one system, and especially having that happen to actually work without
> modification purely by luck rather than by design.
> 
> > I think if this pushes closer ACPI and OF schemas for at least some
> > subsystems closer to each other it would not be a bad thing.
> 
> I think we shouldn't be encouraging people to just throw random stuff at
> the wall and see if it happens to run OK with whatever OS they tried
> booting.  The differences between ACPI and DT in areas like the
> regulator bindings are fundamental conceptual ones.  There's some areas
> where things are closer and it winds up being fine actually, especially
> for leaf devices, but there's others where that's less likely.

Maybe we should just have explicit checks with nice comments at the
beginning of the schema parsing stating that this schema is
intentionally restricted to OF (or ACPI) in cases where we ave distinct
schemas? This way it is explicit that it is a thought out decision and
not simply a legacy artefact.

I think we want to hanel software nodes because they do not
form their own schemas, they follow the existing ones (DT usually).

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

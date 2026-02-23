Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85ED5EA4FBA
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 13:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXttXhLnVh3auBZ+LjP2rTdIEYdC3aWzzw717peA6NY=; b=jccfoDiK90hnWD
	B0qstSJnUHoZ3AE++HDNeJdKZSDxeTJQp/az2qhv1Y4WMGAeywxBJZjctDpeTPGCYQbyJvb5TIyyi
	v895y1bdDiMxhzxRssL0OYbUJ4i1xFwdhZsouc3d1lUKUa+kqUUYdqXTUnu2mqyvCcMt16StK8ss/
	cCXxWYxp04BNzBV9HxnD6T7YD6oT+Of4W5L6LN/mLlktQit3nVwp8Uj9eIQawOCShD+zMys4Ak+Wp
	OnBSsqoKwFDHK5BEvUBqk5N2jacbghawhU/F9CF7twK2z7aysIZwfx2wB2TY3RQuyVq19GaQi9nSG
	FYRlLN4uUidxwieBYwig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuVjh-00000000KkK-0cgA;
	Mon, 23 Feb 2026 13:12:29 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuVjf-00000000KjY-09kE
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 13:12:28 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4830b67aa6bso6148085e9.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 05:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771852345; x=1772457145; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zTyRvgzsFp6gxgHmcwTyuSKYelY9uTSe0Y6njaYUk74=;
        b=gK0l87PmTtGE9doYusIn23dXPfTJC9lwqcOsSCelmPIxb+v9CAUn+IBaArXcNFwZWC
         hZzz3D9NEBI/C5LY//nVDyakLK2O//IgtvejmQQQa3htA3Bag7rirz6X7CqLe7QqtkNy
         CF6lh11FgAJJJb3OS2WIy4JXjnnfk9PnhX63oDjTlosnO1pcH0yOpbc4QCO+o4GiUulV
         34b0TCZGWRUKX+1uz0Falj11wJjmdTIaGl1JYi26msZXkUdLV0Vn+tCLP+Fh0HfPg0h8
         +0OU7FeF1urtva0TDv2cG1sGxMUCuL2O/sAEOOIdZX9g/h3ANSjDqMsWuv5i2M1+DE/P
         Q8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771852345; x=1772457145;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zTyRvgzsFp6gxgHmcwTyuSKYelY9uTSe0Y6njaYUk74=;
        b=M0G9O0kSavCIwGDeb5s7qKXLDP9ejLvIJBce1B6116RNkgHLtuN1ybN5F58JjXEQUj
         jbiz2/eQDtWCDZLm9CH9pIpWpUnwCtwMFFEcem8uQ97LP0iNAoiFNWerPD+b+9HfkybL
         iO4F+rscKlBEJzQnr7VDodV2VGLcCEmuCVKlxNvLih5w/woiqKFMr9BNazAs9FqmBh/r
         bOxKZ1Xj3UHL/z48+9dSFbF6j5NKHnmkXeAqwIhTuPJSXbhW5Em+fz97iE9AMLPuHs+T
         iQt8E86fIxZXTt3RgPTF0rDeXUwnVTY4j3J1wAvOEiQO4Aj1tqp9ASAVlPyMPVS7z+At
         5KDw==
X-Forwarded-Encrypted: i=1; AJvYcCVj2HuoX50z3YIISAUINxIpxqGzt2NI0WqpngRanDgS0ib4IUKyWE4LeqzIZ89aD+pd9XVoBv5LLKI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPRIHTlws1iPycRFLUN/QQGbBnoA6HKRgjeOHRHca3iCNVfrYZ
	vtuzOeL5vo5lUiM1VQM1kg+7+JRwsaE7jQ351nq9jAvHiVneX1ELcIva
X-Gm-Gg: AZuq6aK/OFL4r1sflyDki3025d43XlCpDKr/kWznupHbIICBWsvcqwcWKR83EdUuZA9
	hgiX65PKSKKZ3a0DffRM4j3/OtrMmPPKxl3KwEE6aiehTLkAZ6tr/kYvBXsv1VGhZrAEkZD40MO
	GaOtItnm3ZJoGbrw3g1vnwXlLcuRdGEkFYH0Ehj4IXP4PAtjxQ1ML04mJ25IarG6XtwHbe9WFsD
	Pyq97v/wQkJo7+k14MDgluloP7haEovvwf9mSIgiRFkUd+3a1ZvjyfuGOXVcIHZGqC6n7SNpXVc
	7wACRK5Rta0VXAIRi5LyyikIoSGNf6/BXO9YdBNbQYvI14Q7ZdguyJsHEEnZZTq4T2GwLXVXe8p
	0mZKEHsIPgrl+M1DoI9tigfi/0TlDnrF4rG2uLHS76VxYxYcjqlLBC18h8nK3T44I/LkAiyMyOQ
	sCpQkuYs70alJ8wSE=
X-Received: by 2002:a05:600c:1d04:b0:47d:6f12:de57 with SMTP id 5b1f17b1804b1-483a95e2493mr74965915e9.4.1771852344731;
        Mon, 23 Feb 2026 05:12:24 -0800 (PST)
Received: from skbuf ([2a02:2f04:d809:4b00:a289:4e95:a726:c01d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a9b75e51sm195718605e9.5.2026.02.23.05.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:12:23 -0800 (PST)
Date: Mon, 23 Feb 2026 15:12:20 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Andreas Kemnade <andreas@kemnade.info>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Message-ID: <20260223131220.evt33bzga5lafwzw@skbuf>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
 <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
 <20260216092914.kmvl7aep7dantcsd@skbuf>
 <20260216162406.0121dd91@kemnade.info>
 <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_051227_103728_2A159A8A 
X-CRM114-Status: GOOD (  22.49  )
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

On Mon, Feb 23, 2026 at 12:43:48PM +0000, Josua Mayer wrote:
> It would help immensely if there was a way to get the patches renaming
> driver-local conflicting helper-functions very early, before anything else.
> 
> Would this sort of patch be acceptable in linux-next now, so it can make
> it into v7.0-rc1?
> 
> If not then that mini-patchset would be the first one I shall submit after
> v7.0-rc1 is released.

v7.0-rc1 was already tagged as commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f.

Additionally, patches are not accepted directly *in* linux-next. They
are accepted in subsystem trees (linux-phy, mmc, etc) which are then
integrated all together in linux-next.

> 
> Then I can treat the actual implementation of the devm_mux_* helpers
> as a second standalone patch-set.
> 
> And finally patching all drivers with local helpers to use the new global ones
> can be patch-set number 3.
> 
> Any opinions on this?

From linux-phy perspective, I think in this particular case the following
would help:
- submit the patches at the beginning of the development cycle (i.e.
  now) while the subsystem trees didn't diverge too much
- submit the patch series *in full* (to get build testing of the later
  devm_mux_state_get_optional() introduction too, even if that is not
  for linux-phy)
- keep all patches pertaining to linux-phy (the mini-patchset) together
  and close to the beginning of the series, so they can be picked
  without other dependencies
- be clear in the cover letter if you require a stable tag for the
  linux-phy patches to be picked in other trees. You seem to be in the
  best position to be aware of all dependencies.

I don't know what is the exact status with the MULTIPLEXER SUBSYSTEM
which is marked as Odd Fixes and doesn't have appear to have a subsystem
tree. I have no recommendation there.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27A09EE01FB
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 01:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJV7hSHcyhjCvGbUJmAlnB4he7PnEEVzekh042LzlA4=; b=escn7fMbftkxp7
	oHFeIXLCIvxuZVmGd0Adr8iCVaqeX95kYhDenLbXMAg9AyYbTGTr6ketLc45rNJ99SAvQNCaKX44Y
	Xm+wgwJztdZBZBno3GeapBZvlKNfjWa8OmJSqb61PG+J9wtqSAorxYCeN8mlEwqa4PXdreUN0oR4p
	25UXSnmBEU48csrASZ1iY6AqPgc1sdDj2z2iZSBo6674iilu02N3gIVmbo08Q04FBcODLtN5ErYlE
	QeuZLP0SpjWqp7Tj4fTv23Hs57KwHXhQVq/PoxKVXJ360irsGAko+JSOVE885Fz32FTtEwxlyaOXv
	5byHSZHcaYv8RLOyHkxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soC9R-00000007gjx-3hcg;
	Wed, 11 Sep 2024 01:28:09 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soC96-00000007gee-3Nhq
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 01:27:50 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=SSQIc7dQ;
	dkim-atps=neutral
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id F3BE68BA
	for <linux-phy@lists.infradead.org>; Wed, 11 Sep 2024 10:27:46 +0900 (JST)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-205529c3402so81349165ad.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 18:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1726018066; x=1726622866; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=piebQm/1epxkP81mU8tuwXGPc4HtMsCSKOg4ODSsprs=;
        b=SSQIc7dQQrj5p+OeOiUmqnHcTpsOLmkanrbfRkgzeQYa+wpxj2b7ux7VJyJtFeJc2i
         1K/AMN9aNG6Y+32gqpQhbu/aBd3Rg6BjnzAy09mTzq/2/qfxNkI21Xv/VAF2i0l8Y5YK
         ZA2Rt0y+a2K80VS9Pl0ikRhmpSJYoLA2dPA4IWDEYZwGoR8r4rnSPDhoBnL8unWfJEEq
         78CC5VpSQVYISHRCUx+Gq8DngU+ESXvfYjQPzJJzZv8SqmAKjKSAJkIF2OImRXI++Qbx
         qAwSpAV3BAaZxoKTXAELBz7WLEC+sQp3WjSEGrujTPS6oWJnHrYEDjqcNQ5B/Tqt9ws+
         72FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726018066; x=1726622866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=piebQm/1epxkP81mU8tuwXGPc4HtMsCSKOg4ODSsprs=;
        b=xNXDYiyaKcphfESbbOySLAz/pCPIyfMtg5GbFGbg/WZmgSIPW14YleiOG5wz8HbGin
         znLZQcHq7K1FpTttUfLPwrvjEHUsO4dDYyYq7b3zMZO0saNpMRvoQpoKyvDWvomPms5O
         StZHsP7NNV3KbFFDACzLHk6cCH8DqJCzWowG3HNpt+HWhZcQr5dhQ60mmP9vFf0uAAi7
         IkdZo6qw3BjpwpsqnrCmLouh4C+Fj2vgz9QTg+Zmo/+KKIyU+RQbLILZDdV6TKa0zteB
         sXZVJXN7Lhh2bpO5f990mxD3bD0hG/k/Q6OKcSYmbD56TUUFxPv+65Gzxb5stIICFwCF
         Hchg==
X-Forwarded-Encrypted: i=1; AJvYcCWpeLiLWui5guIGlhHlRb4c59Q/yiWYfFp2vc1RBto7MosrlW+Oawn3YaaX8zM1IuKrtxmXzXjho7k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx62sOFqrYZ1v5mSbUhaYhbYpNI8Dg3owOZLGYn4AbgJVTAT/t8
	VT53H7dqikqmWuWIFFoLQPSEM8+jYR7Bv65gWA8RjRMEWlrDcgPxN9sy+2Ukgg35gNEQUOtzoMG
	WOVj2xHMUQ5rbacba89/uNYyokVzxenThHR7pKY8XkTCE0J9OoFBVjCOHopMSgvFm
X-Received: by 2002:a17:902:d511:b0:207:2093:99a3 with SMTP id d9443c01a7336-2074c4c4fe4mr23879935ad.5.1726018065719;
        Tue, 10 Sep 2024 18:27:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGazzt/LaGGBY2DoRrtPEoEdLzev+TuypaNYFEnIn0/5MgpFyaXvG93yy4tnQ/hkAPoU1RVew==
X-Received: by 2002:a17:902:d511:b0:207:2093:99a3 with SMTP id d9443c01a7336-2074c4c4fe4mr23879675ad.5.1726018065232;
        Tue, 10 Sep 2024 18:27:45 -0700 (PDT)
Received: from localhost (35.112.198.104.bc.googleusercontent.com. [104.198.112.35])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710e3368bsm54300225ad.95.2024.09.10.18.27.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2024 18:27:44 -0700 (PDT)
Date: Wed, 11 Sep 2024 10:27:33 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: Frieder Schrempf <frieder@fris.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>, Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
Message-ID: <ZuDyBQ1I2vcGzAqX@atmark-techno.com>
References: <20240910181544.214797-1-frieder@fris.de>
 <ZuDjAwPxHeJTvXAp@atmark-techno.com>
 <CAHCN7xJD8jsqyZX1JkWxrA84XkZ8YYN19hXW6KVe+jkOFugqrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xJD8jsqyZX1JkWxrA84XkZ8YYN19hXW6KVe+jkOFugqrw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_182748_982294_2E1BCCCA 
X-CRM114-Status: GOOD (  27.84  )
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

Adam Ford wrote on Tue, Sep 10, 2024 at 08:16:04PM -0500:
> > That aside, I see no problem with this, just one meta-comment about
> > adding a link to the script in an external repo: I see some other
> > drivers have python scripts in their trees e.g.
> > drivers/comedi/drivers/ni_routing/tools/*py
> > drivers/gpu/drm/ci/xfails/update-xfails.py
> > drivers/gpu/drm/msm/registers/gen_header.py
> >
> > would it make sense to commit the script here instead of linking to a
> > repo that might be lost in the future?
> >
> > I'm not quite sure what policy the linux repo has here, so leaving that
> > as an open question.
> 
> Is there a reason this couldn't be coded in C and used to expand my
> integer calculator series?  With that, we could drop the lookup table.

Quoting a previous mail from Frieder:
> I will clean things up a bit and then share what I have. I hope that this
> allows anyone to calculate parameters for their non-standard displays if
> required.
> 
> If someone feels extra motivated they could try to calculate the fractional
> parameters at runtime. However I'm not sure that this is feasible. The
> numerical computation of a large number of parameters is quite heavy and it's
> probably not easy to strip the algorithm down to something that can be run on
> the target without too much overhead.

Trying a random frequency with the algorithm he has implemented it
easily takes 10 seconds to run on my imx8mp board, so even if we asssume
C is 3-4 times faster I think the current algorithm is too slow for
runtime and it makes more sense to extended the LUT to me (as long as
the values can be & are checked at least once, which we now can)

The current algorithm brute-forces its way through so there could be a
better way of computing the fractional part of the divider, but I'm not
sure it's worth the effort at this point; I guess it's a good
intellectual challenge though so someone might do it in the future.

-- 
Dominique

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

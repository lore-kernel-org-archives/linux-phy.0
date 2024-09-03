Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E39EBCD3438
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 08:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Swm+Zvxdd4A+3QV4/dKJPmFKSTnJaoTfBSBKQ2eDyo=; b=NrBZ79+ATtJi7T
	+n4fUW/SbeLXAQO6znKY85bIEF1vKXYXiffhLS2Vl/5cq3qPZFX4nZlI1lGYgskHr+xlGppvOjh8m
	yzHicg959EkvMnHfXVFrVxxA2njwkwzTgyBW8ers2EWuNi37CIlLqwiBc7/ooL3MFw4fokwc+V53x
	9ZarErfimt0+UTrm2lOauQSF0L8y+A3CaK1PK3A6QYX4zF8x0NdqKghcXSGLpdOeRatN1VtUEzDdz
	KTgBImjmI9+Al28tgrpxRm/254Vy2BIAqrd18moSYp75SzGrdaPJwEqPVGeBU9eCpJKr48BCsObXD
	ZY4xUrAkKC8ZWhsZtoYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOyW-0000000GvB8-2BT0;
	Tue, 03 Sep 2024 08:33:20 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOxV-0000000GusE-0d6O
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 08:32:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0EA55A41B2C;
	Tue,  3 Sep 2024 08:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 751AFC4AF09;
	Tue,  3 Sep 2024 08:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1725352336;
	bh=RIuf/aEL89DX2+EKoF8e7PpiBo6v3Bm+nSSkkwxOHdU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cc+KDwbWX9G8khKq4ZglLTf6b8GWR8okboip7/LWlJvrOdLAcpgKUczNx4Uab+GKw
	 dJilAflccnRZS8rghorICxdB1+IBO/oRkgvXYW5Xz4pQTYVp+5sXrWeJ7oPEKJnnS1
	 Zkop6D7NQ1rZ0xb0xxc7IyrTpOqlUxImjmOkRv54=
Date: Tue, 3 Sep 2024 10:32:12 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Sebastian Reichel <sre@kernel.org>,
	Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Enric Balletbo Serra <enric.balletbo@collabora.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 6/6] power: supply: Change usb_types from an array into a
 bitmask
Message-ID: <2024090308-retying-playpen-cc51@gregkh>
References: <20240831142039.28830-1-hdegoede@redhat.com>
 <20240831142039.28830-7-hdegoede@redhat.com>
 <2024090340-mumbo-worsening-9a55@gregkh>
 <6f4e23ce-2f32-44fc-93d9-ab7d0867b0ee@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f4e23ce-2f32-44fc-93d9-ab7d0867b0ee@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_013217_277159_4351BF48 
X-CRM114-Status: GOOD (  15.93  )
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

On Tue, Sep 03, 2024 at 10:27:08AM +0200, Hans de Goede wrote:
> Hi Greg,
> 
> Thank you for the reviews.
> 
> On 9/3/24 9:04 AM, Greg Kroah-Hartman wrote:
> > On Sat, Aug 31, 2024 at 04:20:39PM +0200, Hans de Goede wrote:
> >> The bit_types array just hold a list of valid enum power_supply_usb_type
> >> values which map to 0 - 9. This can easily be represented as a bitmap.
> >>
> >> This reduces the size of struct power_supply_desc and further reduces
> >> the data section size by drivers no longer needing to store the array.
> >>
> >> This also unifies how usb_types are handled with charge_behaviours,
> >> which allows power_supply_show_usb_type() to be removed.
> >>
> >> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> > 
> > Nice!
> > 
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> I assume this also counts as an ack for merging this through
> the linux-power-supply tree ?

Yes please.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

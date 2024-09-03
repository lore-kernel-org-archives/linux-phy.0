Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70574CD342A
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 07:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOPk/z/9U3YGMlJyvev8bsNqMw3LstBXKn3a+TIHUy0=; b=phUU7N0t+0aDOb
	xH/H/htEJxkNK4fwNeF5YURVL4GcbrbIpuIFpLlteCKfkmGLR1U9GWgzIPClLa2KLddFo4E9frsUp
	+KLXUeVbv8Uf4CKNtMyKH11bWKop6uoNc1hKXzKWg77v5fPPTaE8tPDuQehek73HYKRSsJKTi/rik
	hJ3H6Ed+b5r1EQR/t9dB7G40Q8MbIuUTw7j+hc/ptPo2sHm7p61Tvsxco801id4rsD44cekmzQFNh
	XRDPgZDOXZHyahJatWx3z5LXSBowCAg0GhsFxlOiVaM3yc6Py+hO/dTH1jdfVWl8qQ4bVGTRhIRf2
	GSW/SNoL7DjjDT+dxyzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slNb9-0000000Gaco-0Kn3;
	Tue, 03 Sep 2024 07:05:07 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slNaz-0000000GaaF-0CQu
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 07:04:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F11D3A414F1;
	Tue,  3 Sep 2024 07:04:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E3FFC4CEC5;
	Tue,  3 Sep 2024 07:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1725347095;
	bh=KfpUJwPIkdByyK2eQ8JyzjZah5wqNhIliyGW7R4pti0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wjtvTAJc1Xo+M62VHxjD7poicRHGhMge/exUMWMO+hA/aFjeuvc6b94ebwwS9oFai
	 YLTyEqKqSHsEDs397XoDynvmjE6DBCd1tB+zkAc0JmqYSje8X98CjVOznC+0k4CdNL
	 jFREm1GEf476vvHy4CO9OrtTB/KAq+WXbpPTgVOg=
Date: Tue, 3 Sep 2024 09:04:52 +0200
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
Message-ID: <2024090340-mumbo-worsening-9a55@gregkh>
References: <20240831142039.28830-1-hdegoede@redhat.com>
 <20240831142039.28830-7-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240831142039.28830-7-hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_000457_171694_3CAD84E6 
X-CRM114-Status: GOOD (  10.31  )
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

On Sat, Aug 31, 2024 at 04:20:39PM +0200, Hans de Goede wrote:
> The bit_types array just hold a list of valid enum power_supply_usb_type
> values which map to 0 - 9. This can easily be represented as a bitmap.
> 
> This reduces the size of struct power_supply_desc and further reduces
> the data section size by drivers no longer needing to store the array.
> 
> This also unifies how usb_types are handled with charge_behaviours,
> which allows power_supply_show_usb_type() to be removed.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Nice!

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F367FCD342E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnCneILlgECC/foxbhAMdwF07bSML8bXgo5DBLfR30w=; b=nfAZPxZgROpjLy
	ogqA4yERF2GGgsqm5ADC1441kfE1muduQLkBazpoI2AI+6jdTd2IGvtZp93rUJyF9wo5OhK9U5IWT
	ApMrjMQjB2cIGUPsW+bw8zwiQN1bU1sMBUL59lcNxBwCGOjPEjgJ00Q6zBqOH1gjVXvNfnEBbjwaf
	iI4oZshgP+to1hOG792gQCy+WRMvSYlzoPQXv1DD7rMspz6qu0diFv75X+/DWs2YLJuWIZObnOf0S
	EWnGnmCjDMWtsXCEMFhC+EUXPGGrJM8vI3yPx6C5+nMljZZSkqEYt5hMg5NP+C3Dxu5I33Jdq3bqy
	O3jXZE3FPcQh7PVekhvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slNaC-0000000GaTk-2nkB;
	Tue, 03 Sep 2024 07:04:08 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slNaA-0000000GaSZ-1aTF
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 07:04:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 44656A41469;
	Tue,  3 Sep 2024 07:03:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86AFBC4CEC6;
	Tue,  3 Sep 2024 07:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1725347045;
	bh=Slca8lD1DlvSk2D0BUDJG9aG9GeCUTaKROfks2UHNiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CB6s09fHVKI8KSqLISVCSqr00f49L2O+jAJfDiv/EQPHQH5xaxdvEayXMJ0BtN0xY
	 ACdON3+y+2K70BLZR8oung6+fO1hdye1bUsulUTXLF7x4HtALOZlims/IfFC5kWv2h
	 37YdzRLufUNX7PLRJBJdjk3jwseKo8V8GLy0Ez3o=
Date: Tue, 3 Sep 2024 09:04:02 +0200
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
Subject: Re: [PATCH 1/6] power: supply: "usb_type" property may be written to
Message-ID: <2024090342-succulent-unkempt-666c@gregkh>
References: <20240831142039.28830-1-hdegoede@redhat.com>
 <20240831142039.28830-2-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240831142039.28830-2-hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_000406_498863_3471AFD8 
X-CRM114-Status: GOOD (  14.55  )
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

On Sat, Aug 31, 2024 at 04:20:34PM +0200, Hans de Goede wrote:
> According to Documentation/ABI/testing/sysfs-class-power the "usb_type"
> property is Read-Only.
> 
> For power-supplies which consume USB power such as battery charger chips,
> this is correct.
> 
> But the UCS1002 USB Port Power Controller driver which is a driver
> for a chip which is a power-source for USB-A charging ports "usb_type"
> is actually writable to configure the type of USB charger emulated
> by the USB-A port.

Ick, crazy hardware :(

> 
> Adjust the docs and the power_supply_sysfs.c code to adjust for this
> new writeable use of "usb_type":
> 
> 1. Update Documentation/ABI/testing/sysfs-class-power to document that
> "usb_type" may be writable
> 
> 2. Change the power_supply_attr type in power_supply_sysfs.c from
> POWER_SUPPLY_ATTR() into POWER_SUPPLY_ENUM_ATTR() so that the various
> usb_type string values from POWER_SUPPLY_TYPE_TEXT[] such as e.g.
> "SDP" and "USB_PD" can be written to the "usb_type" attribute instead
> of only accepting integer values.
> 
> Cc: Enric Balletbo Serra <enric.balletbo@collabora.com>
> Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

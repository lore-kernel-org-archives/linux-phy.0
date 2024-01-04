Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 858A1C3DA6E
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jan 2024 02:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wnsucNv+LVmAx23Fm3Ka1GXYPoD4pfUfouO50hXSSM=; b=zBiNk3c/k2O27x
	6cQq7SIQclUQWFYVdKYpg0mUg9WJ6A6ywAohDnjvo/5BUjnSoVG9nKQT6jbUh4Za9oUybS9gZp01F
	Swipng9tBo+OZLNB6xjsB1X7JsBzSPzA/v9CZss96DKowDU1AtPM7vzqjQxecwBsbdEQcg7y67Tow
	teItq84VvCTEMEYLM1UyT6Q5hAY288HlezoRGfBERMSxqZ2og0CbR7bVEkrmxwGkk1oumjA/jl2of
	ZsIjY7oEPAQRTvPNGKuDDKJWrfCEiJ5BrU70A+ar9wuyQsrVblQc083Um1TShReHzlrBsi+ifj4I7
	dXj1FQuQuX5RARTfHkbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLD3x-00CcPi-0W;
	Thu, 04 Jan 2024 02:02:25 +0000
Received: from out-170.mta0.migadu.com ([91.218.175.170])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLD3t-00CcO2-1C
	for linux-phy@lists.infradead.org;
	Thu, 04 Jan 2024 02:02:23 +0000
Message-ID: <820aeca6-1605-4413-2d97-0554443b3297@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1704333735;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=c8kduCbYQOl6J/3e1ntHCE7CtU7jNW9QWg2FRYJCYxg=;
	b=Ow/UutQ2S6Ez5cXEHt93hzSLA7XLoFlhQFdNTP9UX8HDLr45RQEVOwstQr36PG+n4IRoRp
	JwK7ftQrr3gtQnRlEir3rIFopzGaa2mRBetmiBOawUwBAocjXsivyR5QCNGBxBdBElQ4Iq
	eve4n+eevjFiVvFL9bW9V7zqcPYmc+I=
Date: Thu, 4 Jan 2024 10:02:01 +0800
MIME-Version: 1.0
Subject: Re: [PATCH net-next v2 0/2] net: phy: Use is_phy_driver() and
 is_phy_device()
Content-Language: en-US
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, andrew@lunn.ch, olteanv@gmail.com, hkallweit1@gmail.com,
 przemyslaw.kitszel@intel.com, kabel@kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240103025334.541682-1-yajun.deng@linux.dev>
 <ZZVogCGYu9pIR620@shell.armlinux.org.uk>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Yajun Deng <yajun.deng@linux.dev>
In-Reply-To: <ZZVogCGYu9pIR620@shell.armlinux.org.uk>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_180221_817158_771D6E28 
X-CRM114-Status: GOOD (  18.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 2024/1/3 22:00, Russell King (Oracle) wrote:
> On Wed, Jan 03, 2024 at 10:53:32AM +0800, Yajun Deng wrote:
>> There is only one flag that can be set in struct mdio_driver_common and
>> mdio_device. We can compare the probe of the driver or the type of the
>> device to implement it. Hence, these flags in struct mdio_driver_common
>> and mdio_device can be removed.
>>
>> Introduce is_phy_driver() and is_phy_device(). Use them test the driver
>> or device.
> It is not a good idea to post a new series while discussion of the first
> is still on-going, even if it has been 24 hours since you last posted a
> patch. If discussion is still going on, then we don't need the
> distraction of yet another series to duplicate the comments to.
>
> I remain completely unconvinced of the merit of these changes. IMHO,
> it is pure churn for churn's sake - there is no _real_ benefit. It
> doesn't fix a bug. It doesn't make the code easier to read. It only
> satisfies some ideological idea that all drivers should look the same.
>
> Unless a very good justification can be found, I am not in favour of
> changing these drivers.
>
> There _may_ be good merit in is_phy_driver() and is_phy_device(), and
> as Andrew says, that should be done _first_.
>
Ok, I got it, thanks!



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

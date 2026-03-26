Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 585D210A62E3
	for <linux-phy@archiver.kernel.org>; Thu, 26 Mar 2026 14:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njIHRryiGm6zj3DUCPOm7TakpiTfT9YxrDSUkUdkkzw=; b=3iTz2VidD8W8zp
	34E64tNma7MWYmoeXgJYkgAmrWdK3IfTWQMLL3pqoK7rrDPRSv7ohzKm8yex5Nm2pzvwKiGDeQP2N
	E6ppBClpyu21wDRoZoNN2sZ8fC/D7zpj/v5G4rOOYt0BKt88ix66ukxTYtmiV3VOx2xifRvSIbLbf
	+mCFdBo1krkKpjqB5uSYZK0Hi0aZx7iv6Ot0nkWCfjk2fB7TvRx4fKHroSi2HYq4ZRfq7+LOtBNzg
	pBNndHUCngm5NJBRx8Hk3XCuJ+AYzmUi1Zk3zsOM+PV1E1YsP+YGitXiVOg2JFKsTxsYb6MAkfSKj
	D696YCQNTPJpL5uyKCdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5lX4-00000005dB3-3CTz;
	Thu, 26 Mar 2026 14:17:58 +0000
Received: from smtp1.tecnico.ulisboa.pt ([2001:690:2100:1::15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5lX1-00000005dA5-2D4v
	for linux-phy@lists.infradead.org;
	Thu, 26 Mar 2026 14:17:57 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 453936005407;
	Thu, 26 Mar 2026 14:17:38 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id wr8wfvIZqns2; Thu, 26 Mar 2026 14:17:36 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id CF460600541A;
	Thu, 26 Mar 2026 14:17:35 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1774534655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rvQsKEXQhKikL43r2HYSuOkLKDFB3Ln6VwgjO0Zbpus=;
	b=SzQXilufkaGFcdTXbWmAnpt7L3WG3ak/VhAsrAWKhIivce0zdSsPJ3fSmhLbF+sTE3q+CS
	fzGhaYwpLBiDalAesgJ1f7sXJpgLAYgnCu4U2fC10TmPOyDIVON0F9+4VGdUC0RLR/6/7i
	ZMX23wH5TymhgF/6NB7gbgCGEhR/rLzr/UbKF8aDcO1lbQVmZ24lb3LYyDBiMk4shW1cLe
	jfCS0fYT4W/dJ7WCCoSvKDtyyY2DqPeYwKWd71a6BDdCrJ5scOAZNW1XvsK2a235LEyo1P
	s3/SkloqIhxs5fW5oBdPiO8Q40v2sqxTOzNgaj5C0VHWabmoj3LGL/pDxrvCcg==
Received: from [IPV6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 374A9360243;
	Thu, 26 Mar 2026 14:17:34 +0000 (WET)
Message-ID: <00aeda7a-e5e5-4779-b212-6e56c2c5ec31@tecnico.ulisboa.pt>
Date: Thu, 26 Mar 2026 14:17:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] usb: xhci: tegra: Remove redundant mutex when
 setting phy mode
To: Thierry Reding <thierry.reding@kernel.org>
Cc: Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-usb@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
 <20260127-diogo-tegra_phy-v2-2-787b9eed3ed5@tecnico.ulisboa.pt>
 <acJ50sQraVmy4zXs@orome>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <acJ50sQraVmy4zXs@orome>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_071755_993719_776A978D 
X-CRM114-Status: GOOD (  15.60  )
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

Hello,

On 3/24/26 11:48, Thierry Reding wrote:
> On Tue, Jan 27, 2026 at 03:11:48PM +0000, Diogo Ivo wrote:
>> As the PHY subsystem already synchronizes concurrent accesses to a PHY
>> instance with a core-internal mutex remove the driver specific mutex
>> synchronization.
>>
>> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
>> ---
>> v1->v2:
>> - New patch
>> ---
>>   drivers/usb/host/xhci-tegra.c | 4 ----
>>   1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
>> index 8b492871d21d..927861ca14f2 100644
>> --- a/drivers/usb/host/xhci-tegra.c
>> +++ b/drivers/usb/host/xhci-tegra.c
>> @@ -1357,15 +1357,11 @@ static void tegra_xhci_id_work(struct work_struct *work)
>>   
>>   	dev_dbg(tegra->dev, "host mode %s\n", str_on_off(tegra->host_mode));
>>   
>> -	mutex_lock(&tegra->lock);
>> -
>>   	if (tegra->host_mode)
>>   		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_HOST);
>>   	else
>>   		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_NONE);
>>   
>> -	mutex_unlock(&tegra->lock);
>> -
> 
> It looks to me like the mutex here is trying to protect against
> tegra->host_mode changing while we're setting a different mode. That
> doesn't seem to be taken care of by the PHY internal mutex.

After taking another look at it I think I understand your point for the
mutex, but in that case wouldn't it also need to be held in the writer
of host_mode, tegra_xhci_id_notify()?

This patch has been picked up as-is into usb-next so it would be nice to
figure this out before it gets merged in the next merge window.

Diogo

> Thierry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

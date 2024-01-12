Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A6BDC4706C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jan 2024 11:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSPwyXp3o2tKayhtWA2bhZEJsBqiXZ7kw/2hmQNMCEw=; b=23cw6zUOuIVdob
	5wqCpCn2iOcIeEIJP8wbT4x1vd1GrzzTythP2TPYmMjAtoZqGoaRRNKj8Tqd9puNrvyaTQpN90lDu
	aGls4zBJo32PGQTFVsbDWPFv1tbCzPoKXzybX6xDaRsH4GzfZ+zaEtOcSsu9jFHIywA0R7jFVWWvM
	x6SpHi2YVdJeTVQfaPW02wWcEHk6HUV/yjpDJ6sbZIo3lZb4IDyrt5GPmGDTRC0XaZ3auFNsHEVIL
	Hkceyv0nRIu4rv81mCkm61HHgqT++QUSrHPBYCyatu1UXbKjlKjm0QSqOv+vQAX0b7OxTlFOlsmhD
	WEWjnicEWSl9WEoRFyWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOG07-002dXc-3B;
	Fri, 12 Jan 2024 11:47:03 +0000
Received: from mta-64-227.siemens.flowmailer.net ([185.136.64.227])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOG03-002dU7-2i
	for linux-phy@lists.infradead.org;
	Fri, 12 Jan 2024 11:47:02 +0000
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 202401121146493a65397d26456c5f15
        for <linux-phy@lists.infradead.org>;
        Fri, 12 Jan 2024 12:46:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=jwFkMf/yFaZb1IFUb1fdxY2YROUvz1UsFSbX6ha3kc8=;
 b=DanPW/6rYHMehKg4uGRaMYFIzlcghVP/CP7dOuoVbcMmDlKf4hphSmBzQVTd08+naeXLOW
 EHAoxvv0EEA83dJifjG37hhJ3qTukTNumthFuF5lUAeWp3Jy4u1ZiUv6a9x09JBlzk8FKkmp
 /AHdsClrVbJL7Vx4iVIud2KaIG/lE=;
Message-ID: <1cce86b1-b309-40e0-afff-45baeb013e1f@siemens.com>
Date: Fri, 12 Jan 2024 11:46:46 +0000
MIME-Version: 1.0
Subject: Re: [REGRESSION] Keystone PCI driver probing and SerDes PLL timeout
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
 tjoseph@cadence.com, linux-pci@vger.kernel.org, ylal@codeaurora.org,
 regressions@lists.linux.dev, jan.kiszka@siemens.com, diogo.ivo@siemens.com
References: <20240111141331.3715265-1-diogo.ivo@siemens.com>
 <2024011246-corned-disregard-7123@gregkh>
From: Diogo Ivo <diogo.ivo@siemens.com>
In-Reply-To: <2024011246-corned-disregard-7123@gregkh>
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_034700_596124_AE546B9B 
X-CRM114-Status: GOOD (  26.91  )
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


On 1/12/24 07:57, Greg KH wrote:
> On Thu, Jan 11, 2024 at 02:13:30PM +0000, Diogo Ivo wrote:
>> Hello,
>>
>> When testing the IOT2050 Advanced M.2 platform with Linux CIP 6.1
>> we came across a breakage in the probing of the Keystone PCI driver
>> (drivers/phy/ti/pci-keystone.c). This probing was working correctly
>> in the previous version we were using, v5.10.
>>
>> In order to debug this we changed over to mainline Linux and bissecting
>> lead us to find that commit e611f8cd8717 is the culprit, and with it applied
>> we get the following messages:
>>
>> [   10.954597] phy-am654 910000.serdes: Failed to enable PLL
>> [   10.960153] phy phy-910000.serdes.3: phy poweron failed --> -110
>> [   10.967485] keystone-pcie 5500000.pcie: failed to enable phy
>> [   10.973560] keystone-pcie: probe of 5500000.pcie failed with error -110
>>
>> This timeout is occuring in serdes_am654_enable_pll(), called from the
>> phy_ops .power_on() hook.
>>
>> Due to the nature of the error messages and the contents of the commit we
>> believe that this is due to an unidentified race condition in the probing of
>> the Keystone PCI driver when enabling the PHY PLLs, since changes in the
>> workqueue the deferred probing runs on should not affect if probing works
>> or not. To further support the existence of a race condition, commit
>> 86bfbb7ce4f6 (a scheduler commit) fixes probing, most likely unintentionally
>> meaning that the problem may arise in the future again.
>>
>> One possible explanation is that there are pre-requisites for enabling the PLL
>> that are not being met when e611f8cd8717 is applied; to see if this is the case
>> help from people more familiar with the hardware details would be useful.
>>
>> As official support specifically for the IOT2050 Advanced M.2 platform was
>> introduced in Linux v6.3 (so in the middle of the commits mentioned above)
>> all of our testing was done with the latest mainline DeviceTree with [1]
>> applied on top.
>>
>> This is being reported as a regression even though technically things are
>> working with the current state of mainline since we believe the current fix
>> to be an unintended by-product of other work.
>>
>> #regzbot introduced: e611f8cd8717
> A "regression" for a commit that was in 5.13, i.e. almost 2 years ago,
> is a bit tough, and not something I would consider really a "regression"
> as it is core code that everyone runs.  Given you point at scheduler
> changes also fixing the issue, this seems like a hint as to what is
> wrong with your driver/platform, but is not the root cause of it and
> needs to be resolved.  Please look at fixing it in your drivers?  Are
> they all in Linus's tree?
>
> thanks,
>
> greg k-h
Hello,

I see the point that this code has been living in the kernel for a
long time now and that it becomes more difficult to justify it as
a regression; I reported it as such based on the supposition that
the current fix is not the proper one and that technically this
support was broken between the identified commits.

If this situation is incompatible with a regression report then it
can be dropped as one and we keep it is as a bug report for which
we are looking for input from the community.

I agree that this needs to be fixed in the driver since all other
drivers are working fine with e611f8cd8717, and yes, all of the
drivers in question are in mainline, where we performed the bissection.

Thank you,

Diogo Ivo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

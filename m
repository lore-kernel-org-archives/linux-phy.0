Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86458CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 15:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkSFZ9xbpdxmS1a5N/WrPN9RVGPFeo81nZbHIG2zFWA=; b=LNgzv7NOKlubs+
	aF9NDUxvXhXKFIBkF+dAbnfCJsl1bant6rfuUPL080oQFSogg0Vw/k8EtBYLkAFXc7vhSuoOq4Hph
	PjeUbIpWlHEuoVN8gsDCig21CjeB1WjS29qVqaQOCkqLheElA82wLZ2en4+Toin91vNItyCFrRSLJ
	n42QV1mbzK/7+JDDiTYnZqckwbL2rk/ktsHctN7uTyqBYBv0YZGGCcPIkj0R7RkTq3oHWIVjbAHUc
	ClLJ6lUBKvQQhhcxYBPZ9EixCp7Kn8lyGmgC3ek0JaZfNmzYKoXoW1nbJRgYNsk/WjoOD0L0qERK9
	5dZ0cp2sAesPixGfXZHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzdAb-00000003MeV-0xuf;
	Fri, 19 Sep 2025 15:37:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzdAa-00000003Me4-0fmY
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 15:37:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C37A36013A;
	Fri, 19 Sep 2025 15:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2991C4CEF0;
	Fri, 19 Sep 2025 15:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1758296226;
	bh=xyJKsvc0j5co7gCX4zKZ8pNCOTw4jF2Tw20isUfWHrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UJi2x2Kz0tOs8xaJZPDz37rTz9jEt33mJvVtKKq7/cIMf6TjK3Jzn04Rzx8CQJ2CY
	 UVmAeyhxs1yriV1zQ9rcOG3NmKPHZbNNhcwYdVnZoDo6zhMwRDqiDT/mhatajgNTiI
	 HZU6XL8c4r85dNfL3Vg7KEFwCw03qtMMgB1D6LjI=
Date: Fri, 19 Sep 2025 17:37:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	sboyd@kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	andy@kernel.org, arnd@arndb.de, srini@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org,
	casey.connolly@linaro.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <2025091902-dwelled-calculate-c755@gregkh>
References: <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
 <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
 <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
 <2025091925-thirsting-underuse-14ab@gregkh>
 <f16ea5eb-cbda-4788-956b-d41c2af51745@baylibre.com>
 <2025091918-glancing-uptown-7d63@gregkh>
 <8702fd35-945a-4d20-bc37-410c74c70da6@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8702fd35-945a-4d20-bc37-410c74c70da6@baylibre.com>
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

On Fri, Sep 19, 2025 at 10:20:29AM -0500, David Lechner wrote:
> On 9/19/25 10:13 AM, Greg KH wrote:
> > On Fri, Sep 19, 2025 at 10:05:28AM -0500, David Lechner wrote:
> >> On 9/19/25 8:59 AM, Greg KH wrote:
> >>> On Thu, Sep 18, 2025 at 10:00:29PM +0300, Andy Shevchenko wrote:
> >>>> I,o.w. I principally disagree on putting MODULE_IMPORT_NS() into the header
> >>>> file.
> >>>
> >>> Yes, please never do that, it defeats the purpose of module namespaces
> >>> completly.  If you don't want to have module namespaces, don't use them
> >>> for your subsytem.  Don't use them and then make them moot by putting
> >>> MODULE_IMPORT_NS() in the .h file for the symbols as that's pointless.
> >>>
> >>> thanks,
> >>>
> >>> greg k-h
> >>
> >>
> >> Could someone suggest some additional explanation to add to
> >> Documentation/core-api/symbol-namespaces.rst to explain the
> >> reasoning behind this?
> >>
> >> Right now, the only part of that document that say _why_ we have
> >> module namespces says:
> >>
> >> 	That is useful for documentation purposes (think of the
> >> 	SUBSYSTEM_DEBUG namespace) as well as for limiting the
> >> 	availability of a set of symbols for use in other parts
> >> 	of the kernel.
> >>
> >> So I don't see the connection between this explanation and and:
> >>
> >> 	[Putting MODULE_IMPORT_NS() into the header] defeats
> >> 	the purpose of module namespaces completely.
> >>
> >> I am guilty of putting it in a header, so if I need to fix that
> >> I would like to actually understand why first. Andy has mentioned
> >> something about potential abuses, but without any example, I haven't
> >> been able to understand what this would actually actually look like.
> >> Or maybe there is some other reason that Greg is thinking of that
> >> hasn't been mentioned yet?
> > 
> > Let me turn it around, _why_ would you want your exports in a namespace
> > at all if you just are putting a MODULE_IMPORT_NS() in the .h file at
> > the same time?  What is this giving you at all compared to just a normal
> > MODULE_EXPORT() marking for your exports?
> > 
> > I know what it gives me when I don't put it in a .h file, but I think
> > that might be different from what you are thinking here :)
> > 
> > thanks,
> > 
> > greg k-h
> 
> Up to now, my (naive) understanding was that the point module namespaces
> is to reduce the number of symbols in the global namespace because having
> too many symbols there was starting to cause problems. So moving symbols
> to another namespace was a "good thing".

Yes, it is a "good thing" overall, but by just making all of your
symbols in a namespace, and then including it in the .h file, that does
the same exact thing as before (i.e. anyone that includes that .h file
puts the symbols into the global namespace with that prefix.)

Ideally, the goal was to be able to easily see in a module, what symbol
namespaces they depend on, which requires them to put MODULE_IMPORT_NS()
in the module to get access to those symbols.  dmabuf has done this very
well, making it obvious to the maintainers of that subsystem that they
should be paying attention to those users.

For other "tiny" subsystems, it just slots away their symbols so that no
one else should ever be using them, and it makes it blindingly obvious
if they do.  For example, the usb-storage symbols, anyone that does:
	MODULE_IMPORT_NS("USB_STORAGE");
had better be living in drivers/usb/storage/ otherwise I need to have a
word with those offenders :)

So it's a way of "tidying" up things, and to make things more explicit
than just having to rely on searching a tree and looking for .h include
usage.  Right now, you are kind of defeating that by just allowing a .h
to be included and you don't get any benifit of being able to watch out
for who is actually using those symbols overall.

Hope this helps,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

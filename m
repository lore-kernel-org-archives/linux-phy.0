Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 590C3CAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 15:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4R4Ca0nSj95tK6XVGeCZ5F8/xnswWaanhffnrUWp4Nk=; b=ZK/E6pAdxkfUdl
	n84QqreGlcrFSweAyLDmnmwHW22YYBOCdJ1U/0SGxZxqonJ5mbBeb0efu1kR23sI3ax95rW/7pPEh
	HMy2LJUwc8MbuxCEbkcAASSxUS8TCZ+LCLlnQOeLMcfrpIc1fvMKvsIVXihA2XK4F5eJ58LKKzUuS
	U8G/N26tWlJoJbsSYEX/App40DCHyfc+A9wyu5bxXLOwAEEpnc+qghItsaEcke0cL7QgBtxPv1+LG
	SWUlQMhvzK/HvJoC7tIFot/cZ57/8KL9PhhGY5Z0KUXraHZ7iBstMphaeM4Q5v2boy6ytUQGGMPD7
	5Wdxar2ozMtnMdORI+Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzcnt-00000003ICB-0B6l;
	Fri, 19 Sep 2025 15:13:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzcnr-00000003IBS-1MY5
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 15:13:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AA92C43D97;
	Fri, 19 Sep 2025 15:13:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB2F5C4CEF0;
	Fri, 19 Sep 2025 15:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1758294818;
	bh=3XR30WLTOOqaLDbQmwjt+NVp8deJQN0osgjpiVmNnyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xTfvrNp2EpA0VDTIMQAhvZAqkMQJpCWmHPPKwJP0RoL1Ho+v2yhtr3ErFgKCdGXej
	 ophms+3Jqw3/kW2jkY3g9luVTt290bFLA004KoV7R4SVXiabJOI+46q2DYJ5f8M4b0
	 lLdBK12vZX4leiABXom7gT+SiSHdaB+PFVsTk3eo=
Date: Fri, 19 Sep 2025 17:13:35 +0200
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
Message-ID: <2025091918-glancing-uptown-7d63@gregkh>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
 <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
 <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
 <2025091925-thirsting-underuse-14ab@gregkh>
 <f16ea5eb-cbda-4788-956b-d41c2af51745@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f16ea5eb-cbda-4788-956b-d41c2af51745@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_081339_415310_D36CEEAC 
X-CRM114-Status: GOOD (  27.07  )
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

On Fri, Sep 19, 2025 at 10:05:28AM -0500, David Lechner wrote:
> On 9/19/25 8:59 AM, Greg KH wrote:
> > On Thu, Sep 18, 2025 at 10:00:29PM +0300, Andy Shevchenko wrote:
> >> I,o.w. I principally disagree on putting MODULE_IMPORT_NS() into the header
> >> file.
> > 
> > Yes, please never do that, it defeats the purpose of module namespaces
> > completly.  If you don't want to have module namespaces, don't use them
> > for your subsytem.  Don't use them and then make them moot by putting
> > MODULE_IMPORT_NS() in the .h file for the symbols as that's pointless.
> > 
> > thanks,
> > 
> > greg k-h
> 
> 
> Could someone suggest some additional explanation to add to
> Documentation/core-api/symbol-namespaces.rst to explain the
> reasoning behind this?
> 
> Right now, the only part of that document that say _why_ we have
> module namespces says:
> 
> 	That is useful for documentation purposes (think of the
> 	SUBSYSTEM_DEBUG namespace) as well as for limiting the
> 	availability of a set of symbols for use in other parts
> 	of the kernel.
> 
> So I don't see the connection between this explanation and and:
> 
> 	[Putting MODULE_IMPORT_NS() into the header] defeats
> 	the purpose of module namespaces completely.
> 
> I am guilty of putting it in a header, so if I need to fix that
> I would like to actually understand why first. Andy has mentioned
> something about potential abuses, but without any example, I haven't
> been able to understand what this would actually actually look like.
> Or maybe there is some other reason that Greg is thinking of that
> hasn't been mentioned yet?

Let me turn it around, _why_ would you want your exports in a namespace
at all if you just are putting a MODULE_IMPORT_NS() in the .h file at
the same time?  What is this giving you at all compared to just a normal
MODULE_EXPORT() marking for your exports?

I know what it gives me when I don't put it in a .h file, but I think
that might be different from what you are thinking here :)

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

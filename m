Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89936CAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 12:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjdZpNiuUn67XjXPrt9rfrnck49PJQFu3TIGfYahHB8=; b=DKZdYnC/h8D2VN
	WcAqaOY3zhzS2EEWOCPeawF18N+kJOFCQsLFk0t7qWGwRMa6M70mY71Uu/rZyVcn+nbYobVOePkwt
	e3wzjwX0EkllZgfGLOJZN1Dq1qH6aQmhslR/P23SrTlPMydQpnlqVuGc4/Xr1muzn9pVU7BBlK/lW
	WxvDGGypuhp4uK0V7qX/6YkPi4jojs7g+Xlg++UX7yPBCCoWbxpTzK3IAfjmqtw+NQqaC5e/Xk9bi
	fzMbi+lVXjaxe3Hqu2uhFwgp1Lb7D7ELUckQApjUbcOYPevwSTvTY3BxzHx9QBvlwMyX6zPlIYmh1
	ZVAKlKL3opRF73XU0QTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Og4-0000000HQ2U-13hx;
	Wed, 24 Sep 2025 12:32:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Og2-0000000HQ17-2Xav
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 12:32:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EFC2C60053;
	Wed, 24 Sep 2025 12:32:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0214CC4CEE7;
	Wed, 24 Sep 2025 12:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1758717173;
	bh=z64hXPjSDDrR9mWwhXNbJvORU06KaAiEuX3IuDczyoU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ULRDCf0qblHajIl5tMOCqW2QlrTPNPQxs85zLgzDM0altTMvFrpfJiVKa3scmEJ6F
	 rCALDgzahIaRlrKPRDQnFYEuBFYEmZIeu6WvcCI2UepX2/oBj7xUfZrTV4I8bLuMlR
	 tV65w8AVQ1QduJfuEeknS96zdO4DY0YoNMPRa1Cg=
Date: Wed, 24 Sep 2025 14:32:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
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
Message-ID: <2025092451-immortal-synopsis-51fa@gregkh>
References: <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
 <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
 <aMxWzTxvMLsVWbDB@smile.fi.intel.com>
 <2025091925-thirsting-underuse-14ab@gregkh>
 <f16ea5eb-cbda-4788-956b-d41c2af51745@baylibre.com>
 <2025091918-glancing-uptown-7d63@gregkh>
 <8702fd35-945a-4d20-bc37-410c74c70da6@baylibre.com>
 <2025091902-dwelled-calculate-c755@gregkh>
 <x5ot622jqzz67imvswtdacqeeclqaw7my3pj6ne7tureec6ufg@fuzltifrkcae>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <x5ot622jqzz67imvswtdacqeeclqaw7my3pj6ne7tureec6ufg@fuzltifrkcae>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Sat, Sep 20, 2025 at 06:41:57PM +0200, Uwe Kleine-K=F6nig wrote:
> On Fri, Sep 19, 2025 at 05:37:03PM +0200, Greg KH wrote:
> > On Fri, Sep 19, 2025 at 10:20:29AM -0500, David Lechner wrote:
> > > Up to now, my (naive) understanding was that the point module namespa=
ces
> > > is to reduce the number of symbols in the global namespace because ha=
ving
> > > too many symbols there was starting to cause problems. So moving symb=
ols
> > > to another namespace was a "good thing".
> > =

> > Yes, it is a "good thing" overall, but by just making all of your
> > symbols in a namespace, and then including it in the .h file, that does
> > the same exact thing as before (i.e. anyone that includes that .h file
> > puts the symbols into the global namespace with that prefix.)
> =

> I fail to parse the part in parenthesis. The symbols of the pwm
> subsystem are defined in the "PWM" namespace (using `#define
> DEFAULT_SYMBOL_NAMESPACE "PWM"` in drivers/pwm/core.c). In <linux/pwm.h>
> there is a `MODULE_IMPORT_NS("PWM");`, so a consumer (say
> `drivers/regulator/pwm-regulator.c`) only needs
> =

> 	#include <linux/pwm.h>
> =

> to import the "PWM" namespace. So pwm-regulator.c puts the symbols
> into the global namespace with that prefix. What symbols? What prefix?
> =

> The thing that is different is that the pwm functions are in the "PWM"
> namespace, so a module without an import for "PWM" has a smaller pool of
> global symbols and so loading that module is a tad more effective,
> right?
> =

> I agree that for the consumer source it doesn't make a difference if pwm
> is using a namespace or not. I'd count that as an advantage of the
> "import in a header" approach.
> =

> > Ideally, the goal was to be able to easily see in a module, what symbol
> > namespaces they depend on, which requires them to put MODULE_IMPORT_NS()
> > in the module to get access to those symbols.  dmabuf has done this very
> > well, making it obvious to the maintainers of that subsystem that they
> > should be paying attention to those users.
> =

> For me as pwm maintainer it doesn't matter much if I pay attention to
> `MODULE_IMPORT_NS("PWM");` or `#include <linux/pwm.h>`.

I think this is the primary thing here.  It's easier for some
maintainers and reviewers to notice the MODULE_IMPORT_NS() thing than a
simple include line.  Especially as includes are often hidden in other
include files.

So sure, as a maintainer, you are free to do things this way, it's just
not really what we thought about when namespaces were first created.  We
assumed that an explict MODULE_INPORT_NS() was what would be used, not
worked around :)

> > For other "tiny" subsystems, it just slots away their symbols so that no
> > one else should ever be using them, and it makes it blindingly obvious
> > if they do.  For example, the usb-storage symbols, anyone that does:
> > 	MODULE_IMPORT_NS("USB_STORAGE");
> > had better be living in drivers/usb/storage/ otherwise I need to have a
> > word with those offenders :)
> =

> All symbols in the "USB_STORAGE" namespace (apart from
> `fill_inquiry_response`) start with `usb_stor_`. If you grep for that
> string you find all the (probably illegitimate) users of the usb-storage
> symbols, but also those that define their own symbols with that prefix.
> =

> Do you actually look out for such offenders, i.e. have a lei mailbox
> with `MODULE_IMPORT_NS("USB_STORAGE")` as search string or a cron job
> grepping your tree for that?

Some maintainers do just this, yes.  I think the dmabuf maintainers do
as an example.

> > So it's a way of "tidying" up things, and to make things more explicit
> > than just having to rely on searching a tree and looking for .h include
> > usage. =

> =

> For some reason in your eyes grepping for MODULE_IMPORT_NS is superior
> to grepping for an #include. Can you explain that?

#include files are often included in other include files, and can easily
be "hidden" in the chain of what is needed by what .c file.

That's it, nothing major here, if you want to use namespaces this way,
that's fine, just feels kind of counter-productive :)

thanks,

greg k-h

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

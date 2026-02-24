Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16D42F4BB6F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 18:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRbSV+3uDbMd++2uEM1pm4ugOzpSpn4ATVm9rxaxpjk=; b=s49CWBE379YHFM
	C2memrsVA5LvABiCw7HB82LF2GWJREgzKvcLpZDq5gHIcAeA8ghzyjn9RogAelKkN9QDBf5fRIydP
	WIM8xdplvHeiOwyF2Qjotpde6Ux62PeOQh3hjLSjKwow77N5duUvBAHWRqcxDcu9TcMoo4JiHalcN
	JO/1wUpX0GNDhSDqx6/HiEOgshVIsYcyPou+DZIWWAKAnL1NYvDzXtAl5Dk3XBhL1FOxez3JApfbW
	je+Wl9iNkCCGRxTi4i7rwlo+zsZX8ZlXURVLe/aeT+8qqupuC8VxXZOF7YoRTkLPNbf6otluS1bVs
	/TSTUtM7+pw1ztAvD6+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuxAg-00000002daJ-1kYy;
	Tue, 24 Feb 2026 18:30:10 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuxAc-00000002dZv-0tQi
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 18:30:09 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4832c8f9d87so6825005e9.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Feb 2026 10:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771957804; x=1772562604; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vy6D+hE2xhOiRI343jCC4Oy3zlTR5Sfyp5vbNl4FLck=;
        b=gNgsxnRvgKcFZge3W4jfFGlv5ax8MtrPsIaXuJtwaELpuo0BhROD9sbFR+PvHhxpXr
         lr+Z1T/I5/+45oEqP3EP6slgViBRSfXcDy9fxpYVZuzX9QpHD33twk2YkV52eQOAAbyg
         lHgcZuRP03zb9SxjDLItKIj3IKTvEU3zAPVGi0MFyft+cOSpG/uxJdG8CqUC2FW2VOAD
         I9dRuQJLbKG956uE/z23dGMpQIOnHp1BwzAH6ywn7biFscMkmaWQQ6PV9z2UsKpVmSqu
         n7r9oo1IXu4OgJabBtc5Z8lMwAVbzSOvljkS+XtMPACQa2VK+7haCnHyUyOYcffRcUAe
         6KLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771957804; x=1772562604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vy6D+hE2xhOiRI343jCC4Oy3zlTR5Sfyp5vbNl4FLck=;
        b=GNCJYLGcIV3vHJ6nR/6QVtkr93oxLF7WEqscTfgkAvglVdRJ+aLvpxZLjJlKP/ROlr
         krZVEp6PmtFZbxNV+QEaotH1bShikmP12BZDfzJIJgBeZKFxzU/CAd3wVhFVFx8ZzH1L
         ZYEvTsFrdO6N1oUSAfOIqpBsWCsOcbo1Z04wGQe5HGLaxTgZfkxc7ah7TZMwxmNbZIlT
         lix4jFk4UNjm9+AKTk25bmGp2E0SxhrZ0IUvdNvfQSyvklwP3tZEtRFzrj3z+/Re9W9E
         zruZFmBLLWdkJaQcVqL2znoLbWALGEzg7a0lIZ2BCIRCvSF9ZLpufce7zsRC/PRAO00s
         C3PQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzewAO6/vZxff85rjQ8flrsePkGpeS8P5++dW4E/lBnvUKs5d9rQlU3sGA2H6v+LMmK0rlZtZhiv4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2YBuI9dHqy9bo8je0HHxsBnUg4fwqS99n8Bxfk+C/el1IJ/9f
	Q3BMaJEwes1gZbqDGEOJpvnHwt+bi2qZ+29CkTSyUeD0aavgG5yY1tj8
X-Gm-Gg: AZuq6aKh38yttd/AxKRT1ac31xuGU5g3rCKTKyldCdupzTrTD4Or4n/7LAlLT+bgE4q
	bfs6Y1u5WIYsU6bJaPpMHpqdEz6UnLVYjfjffYXCpSlAhkA+KVf3KvB0aC7buE9YFhGzy0lTobS
	JwOK0QApN/rK022olzh1dYo1T2Rp4Kyd90JyFoE1wdgNQS9V84enOoXDskN9YcIWk84km2AABJK
	J+uUzfxakmPqZg7d3lq7Ji/jCuCC3fP7GduC/R93NhJENs4O21Vtpf0F9kciW7q5MC3QPgqCdE2
	sXjLnbaykgPEyU5sBS6cxYoKNFocuqvG4L/joPv1i2ZTWxxhgmyUtezKgTjeY74JjA3MSj4BDbL
	gGqZCNF5x6rzV+GDjZ2/RNkVvsjqprqVaaePPDAdEzvXQwFZ/Fl7iDk8hvB8zWHoOF+g8V1ckri
	jElJFc3onm++BiQRk=
X-Received: by 2002:a05:600c:470f:b0:483:7d93:9fb7 with SMTP id 5b1f17b1804b1-483a95ec6bamr135887715e9.2.1771957803799;
        Tue, 24 Feb 2026 10:30:03 -0800 (PST)
Received: from skbuf ([2a02:2f04:d809:4b00:7cd9:3431:5b61:7303])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483b89095a7sm22695185e9.24.2026.02.24.10.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 10:30:03 -0800 (PST)
Date: Tue, 24 Feb 2026 20:30:00 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH v1 1/4] phy: phy-can-transceiver: Convert to use device
 property API
Message-ID: <20260224183000.txlazzyw7z34nhsj@skbuf>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260219202910.2304440-2-andriy.shevchenko@linux.intel.com>
 <20260224162606.spnzzedvmvp2h7xd@skbuf>
 <aZ3X2J1rBq1pMkae@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aZ3X2J1rBq1pMkae@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_103006_293425_F9B97A96 
X-CRM114-Status: GOOD (  30.36  )
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

On Tue, Feb 24, 2026 at 06:54:48PM +0200, Andy Shevchenko wrote:
> On Tue, Feb 24, 2026 at 06:26:06PM +0200, Vladimir Oltean wrote:
> > On Thu, Feb 19, 2026 at 09:26:19PM +0100, Andy Shevchenko wrote:
> 
> ...
> 
> > > -	if (!of_property_present(dev->of_node, "mux-states"))
> > > +	if (!device_property_present(dev, "mux-states"))
> > 
> > There's an entire saga with this function - devm_mux_state_get_optional().
> > Josua Mayer is preparing to move it to the MUX core, which will be a cross-tree series.
> > Would you mind not touching this, to avoid complicating what is already
> > a complicated operation? It is going away anyway, and from what I can
> > see in Josua's last series, its implementation from drivers/mux/core.c
> > is already using device property APIs:
> > https://lore.kernel.org/linux-phy/20260208-rz-sdio-mux-v9-2-9a3be13c1280@solid-run.com/
> 
> Basically you ask me to postpone the series until that will be in. Since this
> file is a mess in terms of OF/fwnode API use in exchange I would like whoever
> is doing the other part to speed up a bit if possible.
> 
> I prefer to see cleaner solution to be applied sooner and last in a long distance,
> that's why I see either mine first but soon, or that first but also soon should
> be in. Can we try to achieve that?

The idea is that Ulf already expressed the availability to take the phy-can-transceiver
patch through the mmc tree and provide back a tag to be pulled into linux-phy:
https://lore.kernel.org/linux-phy/CAPDyKFrtTaJ5fqqbGrE_K6SAdTZYUfp-BycGjtWs4SabwBysKA@mail.gmail.com/

If linux-phy takes your patch first, there will be a conflict when pulling the
stable branch, and it won't be so fun, plus we can't even build-test Josua's
submission on linux-phy, so that's obviously not great.

So yeah, I'm not requesting you to postpone the entire series, just not
touch devm_mux_state_get_optional() and don't let it appear in your
patch context.

Somebody will have to remove "#include <linux/of.h>" at the end of the
whole process, but that's minor.

> ...
> 
> > > -		phy = devm_phy_create(dev, dev->of_node, &can_transceiver_phy_ops);
> > > +		phy = devm_phy_create(dev, NULL, &can_transceiver_phy_ops);
> > 
> > It is not obvious why you replaced dev->of_node with NULL here.
> > It doesn't appear correct. You seem to be breaking OF-based PHY lookups.
> 
> It's the default. Yeah, I probably have to explain this in the commit message.

Ah, ok. Found the "phy->dev.of_node = node ?: dev->of_node;" assignment.
Sorry and noted, but please add it to the commit message too.

> Basically all devm_phy_create(dev, dev->of_node, ...) for clarity should be
> converted to that approach. Or even better, a new (agnostic) API should take
> default fwnode from the same device.
> 
> 		phy = devm_phy_create_simple(dev, &..._phy_ops);
> 
> // name was quickly chosen and may be not the best we can come up with

I agree in principle. PHY drivers shouldn't be given a function where
they routinely have to set one of the arguments to NULL, but a simpler
function without that argument.

But the phy-core.c doesn't support fwnode at all yet, it uses OF
throughout. I think it would be preferable to leave this change to
somebody who has business in that area.

(are you interested in PHYs with a fwnode for any particular reason, or
just because the API is more "generic" just in case?)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

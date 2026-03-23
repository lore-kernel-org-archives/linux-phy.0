Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9252CD58CC5
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 05:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOxRWb37dAddpxtXTrTYmzm+zFnJPujGQu/N7TP1Ljw=; b=ucUruYPJd/13uw
	9RTl1YDzFtJXboW102kRZiEwq9Hj5jaqprjyt01h9fXtkPQzX0CUwZENHLkHqNiGe/lETpyUw9IVz
	lSPNEZ6DkI8hU3Y1u0aUt5cMeET7OHhoP4jVy9BpYD/3sBI/Xbx/M9up0Ydi9zBUvkA1VjS7Txk0I
	26DRSidIP+bP0ofVr/YKIybPts/um7DcjavgMmFUj9k6XRVBvOp36uLOOP9sc7ujHIGFr8Rc9ekre
	jn18BM7hok2xWvrjax9zYclQTHK2vsI9NAqMGZWkXcCt5OFfmvUL9yYoCxwYbnoprZlDyIsjcHxOj
	hZ7eUI2si0mhS/cE6vcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4XfI-0000000G3lU-0Qd4;
	Mon, 23 Mar 2026 05:17:24 +0000
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4XfF-0000000G3l2-1hTt
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 05:17:23 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-2c107ef474fso4641779eec.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 22:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774243040; x=1774847840; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1Jpqkfz7hZUs+vzaN1OQd+jtBYhuxG1ZULSLXTe38VI=;
        b=DJGoBxZ5smyhKsPkRCrGDHh4LTxXN14QDhvvMYtxSAtlf8Rr4v0gskn7uhlK4eYNFN
         y9dl4dDlsaRzkTV5n+yIXfbjh8WJ4LSZ5TMXyVeIIsLAFEdIrnbmCWTlVn3MN+fPVFkv
         55v6ihETWSYEI8SF83fp/mIcYtAcRn8r2GYn8w3zl7nUpcjGNCwKhmBmt0IW+A7Qh88P
         M3hXcYUCsTa/fKdgGKqzdUfazh08crAEmElvrGXVzve54SvOuGAkqzsF/R3jZWbJJ1ug
         sfYWbjkKHMJxIVo3Hn0Gl24x5FYm2ij2+FoJphhoib5QaRK2o4s1Pnw7SZMgON4GUO6Y
         rXDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774243040; x=1774847840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Jpqkfz7hZUs+vzaN1OQd+jtBYhuxG1ZULSLXTe38VI=;
        b=idnbn7pNUqouGg6Jc1j+RmM6lhjlPnpY0Vxjxkxc7ajXRN/oelAdowNtkNB/8UgihX
         z3xL5z0tVi2tlYEam95Rerv8nqObPwCx7jSrtWUwaLcfHJhnw4Ur7Rivr5oTpjJ6T2vH
         5A7T8D/v2fe3pg5i9lLpMn/0WJZ8Q7rYwBTfbQbVnFyMf4a5VvqQc234P6/m+kbiIr+x
         g3M+5v+M0c7uEGCfIcKkBsmrrRc2Twqk/y/vDT2tsImCQ1TZabeEr66L0cQkr9Y9LVVW
         wUy266E7JusoDG6+0ZrEk78HaprY/3PlroND0HzmNYnhwSo4b2NW1rtwDRkftRSjrshH
         P0EA==
X-Forwarded-Encrypted: i=1; AJvYcCXFBZjvKST6CkOyN+wMWsAiUVL09/aJbJRKAR1V5xpS8r7rXjN7VPKRAw5hggUDY42Tf70PASwGF4k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9HaRx10S6T4txTTXYPZdIAFAAxRH74aXOitviFi+239hdhI0d
	IUYqjtodvSvrjSCmoF3yjSeD01/+hnLuHGya5uhTvDBikRfz9FRkS68S
X-Gm-Gg: ATEYQzzXb6FQTwYOnmi5ayPzHuLnQDrJFiF4sB8DxeDAdcbtjChqSUJChOxOI+H9XZX
	5Z6TKG0E8bMm/xkNaktups5n1ZDrdvi5ndAClk3lkJNC6u84DnnJlKXlUJQSnBEIUzGtsZ0CfMc
	J8heLEt/pdqDIxyN8Up25ZUoXGB/8n+LFA8yWHZjNeRpP36k0mH8iofAxlaSCtD9SdJhEX292LL
	lDsFqtf0UaoQQm/ISVtXfiZvziQ64fshLJ36XU5ZFyR6vdY7NkdfiD+gpkx3sgrwI4CJOb2mN6C
	QtFIqVTrW9YtnBZmvxdsGAWfvNdzHny1mx0YaSIm6f/Qo9fBIHgxJWAK+jG9NpJQ3brqDjVmJ/c
	0t7viFtSEex2Hsmccz1y4SWk34FdpXM+4DEuUQuiUna5J8ME2P7S/FMR6U9+cXcGfUoFsCVQvad
	60FQCZTIJRWHnOZbCL8/pFz8xlCfe/TpvxNef7lYKuI0pLpLJSOwaUbgxi9yWQxqLx
X-Received: by 2002:a05:7301:4198:b0:2c0:c775:a46b with SMTP id 5a478bee46e88-2c10961ef1bmr5539127eec.8.1774243040114;
        Sun, 22 Mar 2026 22:17:20 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2d673asm13470084eec.24.2026.03.22.22.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 22:17:18 -0700 (PDT)
Date: Sun, 22 Mar 2026 22:17:15 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	Peter Rosin <peda@axentia.se>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, 
	Tom Rix <trix@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, 
	linux-leds@vger.kernel.org, linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH net-next 07/10] net: phy: switch to using
 class_find_device_by_fwnode()
Message-ID: <acDLzK8vpptTUMf1@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-7-b72eb22a1215@gmail.com>
 <32679fc0-c388-4cd7-a030-5f5ed5abab78@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32679fc0-c388-4cd7-a030-5f5ed5abab78@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_221721_444511_02952BDB 
X-CRM114-Status: GOOD (  10.40  )
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

On Mon, Mar 23, 2026 at 03:54:09AM +0100, Andrew Lunn wrote:
> > -	d = class_find_device_by_of_node(&mdio_bus_class, mdio_bus_np);
> > +	d = class_find_device_by_fwnode(&mdio_bus_class,
> > +					of_fwnode_handle(mdio_bus_np));
> 
> When you look at this, why is it better?

I think we should move as much as possible towards firmware-agnostic
APIs and use fwnode_handle instead of device_node or software_node or
ACPI companion. To discourage this I think we better remove
firmware-specific APIs where we have firmware-agnostic ones and
eventually clean up drivers that use OF- or ACPI-specific APIs.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DC3BC982DA
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 09:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9lIWpH3MlljTLUyuWF1FZwo6TiRuSurDyYcna9KdPk=; b=EfIGFhmbEjwNHn
	iHo2vrCYDTUlD5mNlWySpzgAhxbt+54ZH/zGvf7zhHKZs/soEh3irgLpD37/spzIsAdE9jPxdD28f
	EbFGBZE0NoShWVid5WqXc4TetYNlkdWU8c5NY5uvtoHoUsbLVASBNIS6I+7QU0U8sZ24yuo67J75/
	gt/aW9SIvbymU/phet/eWsNve5cBGDilsslJ4YbAFYfhvxyHhFnmcYGlE7BPDDYqXPo1I3wDJ4pGA
	9ww1Y36OsvdxJlTBneHS3KoTvNc9RDByr7E3HYIcCMDyR619jvy1lZT6sdD1jqxunNZXBPqPcsjGk
	jkRO+K4HynySRyc30S8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7UdG-0000000DtsU-36EL;
	Fri, 18 Sep 2026 09:11:46 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7UdA-0000000DtoL-2p33
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 09:11:42 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49c5a927a1fso143695e9.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 02:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789722697; x=1790327497; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yZ/vqBSgFHqCJoAqatA3IE2jvlq836FlV9wvuCTBolI=;
        b=eteVM4DkX2YdJStF8RN9lDBRWoKHT22ScfaP9vhGkY0UguBsFmgxKL0LFMpwUp6Bj1
         ps3xCDy0HxFpHis08xgsyjutMryP2SuamgnHdIbVnPF+86tq8lYDK12wagzhY9GLAcdh
         u3PuRN6MCEtGWIVic1R4ilpQMvjqlFz9Iyk+Kw9W9zb6tAXnospEX6dHh2kj3u6qqxba
         OFIBJKmZB33aU0jHis0i7/bzdfcmAjJY6gR5CyDXTN42Y/hrpzBZyU3YgoJ4Twtphzms
         vmY+gkraw63QHwzpROZmCIyzK1lxnbqBtDL1KJQoxJRfKkgQ7n1+XgboBCy8n7mkviPp
         cjHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789722697; x=1790327497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yZ/vqBSgFHqCJoAqatA3IE2jvlq836FlV9wvuCTBolI=;
        b=P2aEef6VWzdQnCC9qSRIC+dkn6f5td89+HFUKbKdEz+tzuDpjgEtwMAKzAD2lDvDvs
         w8+ujlU3A+hxmt65NtyOLsUzHFYppyfFGY/94yJ4CrVzISGpWZ+uyAnfzMIuOE8HAtzb
         Tr6SlVxp+NmkAUTIVfiUO6UBAo5Mjw2+pDHv3rd69VuPAJ3rZhnP1Q9e4zRkKwqb2cWz
         Ev58BNL9kapwLe+zuyV4BZxxkN5ZFcgTRmBYwxG4LtAvUuok5oz2iXjjtT0wKKcxEOcN
         xwM+ec8xIW8xtguXiBR2DEu/FZEMGQmgWHWoTPFqYaByMHHE/ZYdADd+JrRo3dajjc4P
         BluQ==
X-Forwarded-Encrypted: i=1; AKwUvByI9OZcf+UZfXSUNOvgtVrI4j3GtoM/Dq0vSQQas0c6MeQ1Ssc2pLHk0M18BxYym8FYzkylW7zGX3c=@lists.infradead.org
X-Gm-Message-State: AFuF++lX6kNGW9KMg9ieKspZvlBIdIrN9JH75c56KiDaG5A59Oau5Ysv
	VvXLxPW1hvVXJ01d0NDjkx0h003YxnZm1m2ua+g1MqKiCATfPecCAG1w
X-Gm-Gg: AYBFou06U8lhlkmpmfqRpjc4jy3tUndFhDp8e+4zS5VQ8hu98ZissFs6MUndHY8KZBx
	qnfWGcJz9LmYveXyga+a6gWzQQzx+Mpsg44zm1S6iFsoWfvFXf9pTlTtHFrZ84Zj4raNypy/1uE
	zhZCPNDKURPoxJOzX3zm/uKxeVBVm32x0Bub70TJstG0nw4ru55vQVo/1YrtrKqiZK95YmFHdDd
	XWT76G4rIA180p7N53PekCotcgyEYybxRlOwCxoZYdeG2U+cJYQGK4xgBbbSKMtE0qX3cDv60hF
	XzPiyXBpGOsHdpFFv0LQKOvJy1yn9WYr04uvWzWXxk3WiCZ6uzJk94wBbMWm5+ZjpzykVShVIqC
	u0+E4WlFZUEDroDGLfvAmITiBws0UX4swFI6uIMOwNbO8y+NBtKvXNTzASp/XwfTByFeI6sau6f
	htXn3HrYjvtbLbHDteJA2g4fzSeTbkoNRnhgfpuRKNlf0HdH7GTJnI2NyZH+B2FUQj2dvx10a/z
	yjTLZRx1/8H8KxtAJXQSPKiChiX86y7VFRz2sgGv4caagQlHDj7jdMxAFJHuf8V1uuHojdjraRI
	kFX/
X-Received: by 2002:a05:600c:609b:b0:49c:f9b8:bae0 with SMTP id 5b1f17b1804b1-49fc7f2bdc8mr18281725e9.2.1789722696430;
        Fri, 18 Sep 2026 02:11:36 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B829B006E521A2A508563A3.dsl.pool.telekom.hu. [2001:4c4e:1b82:9b00:6e52:1a2a:5085:63a3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fc7cfd1dasm37167425e9.9.2026.09.18.02.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 02:11:35 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH 5/5] usb: dwc3: rockchip: fix USB-C reconnect in gadget mode
Date: Fri, 18 Sep 2026 11:10:32 +0200
Message-ID: <20260918091032.15593-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_021140_750259_E7DD7135 
X-CRM114-Status: GOOD (  11.16  )
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

Hi Sebastian,

With this patch applied, the series fails to build when dwc3 is
host-only and USB_GADGET is either disabled, or a module while the
glue is built in. I built it on top of v7.3-rc1 for arm64 (allnoconfig
plus a fragment, gcc 13.3) with USB=y, USB_DWC3=y, USB_DWC3_HOST=y,
USB_DWC3_ROCKCHIP=y and USB_GADGET unset:

  aarch64-linux-gnu-ld: drivers/usb/dwc3/dwc3-rockchip.o: in function `dwc3_rockchip_set_role':
  dwc3-rockchip.c:(.text+0x270): undefined reference to `usb_udc_vbus_handler'

With USB_DWC3=m and USB_DWC3_ROCKCHIP=m, modpost reports
usb_udc_vbus_handler as undefined. With USB_GADGET=m and the glue
built in, the link error is the same. With patches 1-4 only, all
three configs build.

dwc3_rockchip_vbus_handler() checks dwc->gadget only at runtime, so
the call to usb_udc_vbus_handler() is always compiled in. That
function is only built with USB_GADGET (drivers/usb/gadget/udc/core.c)
and has no stub in include/linux/usb/gadget.h, and USB_DWC3_ROCKCHIP
does not depend on the gadget side.

The same test run also shows that the two EXPORT_TRACEPOINT_SYMBOL_GPL
lines in 4/5 fix the modpost error I reported on v14. With them
dropped, dwc3=y/glue=m (the v14 case) and dwc3=m/glue=m, both with
tracing, fail with the same four undefined tracepoint symbols.

This was a build test only; I did not run anything on a board. An LLM
assistant wrote the build script and helped draft this mail.

Igor

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

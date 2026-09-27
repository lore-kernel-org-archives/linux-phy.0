Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29638C9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 12:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uOSJSsbaF/YZKPwf6SRwYnmGQIAH4R35S24fEi6Ogs=; b=gczhg3UNk30BIt
	R+QNktqWvQ/y0B8ViNLlqlhmRnMhAU9boLJRX/tMKWJmvIThzLZVhTqoSjdB+WFv6Gi6cIAjDJydC
	m3UVSrHt94Lm2lnuxLTqbZvFioveSPit+eBTJICKzqQfwzTW1yoUfIu/PguTbW9pqDB3RbTD7d8m3
	E8u/56JhClCxBdtvvmnBe8TPrsiMR+g3Q6C17YjTv3Ijj44jbJnpoPEQkkBBjr7Sx9meq93yey+2x
	MmBaPBKFTFgkB2AAl94hvHJtnBQ6v9/qUhLDuy1X9JOa0S6uS6HK7k8PKbYOgjIeqXOI9t+zDnsI5
	es60VqzDRi8PSHyQOrdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAnax-0000000GHcP-3AVe;
	Sun, 27 Sep 2026 12:03:03 +0000
Received: from mail-wr2-x0f.google.com ([2a00:1450:4864:30::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAnav-0000000GHb5-22QZ
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 12:03:02 +0000
Received: by mail-wr2-x0f.google.com with SMTP id ffacd0b85a97d-48879b94823so207869f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 27 Sep 2026 05:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790510579; x=1791115379; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Z+V9unX6aBDFJuuH1gIxp0fin+EUilc5XMo2mblqJ30=;
        b=lq8A3EYeE/vl3dZYV9s3QF26GsxwJ7TgqcBE/Jq1sb5AqhzJIAmtRAky4dTjEUNW08
         sepp658isBPnP4Xw702J9Q4cmrwX25pJ1U5eS4MnFhxEZm43k9SHNg3uC1GE8Q5Onkmv
         oI9beTi3IGWNJ/Ix5auMCcPjlAgL/nNl7nqvmd/TEN4hkVZ9vmvOLvVkiIV3sRbnMZ8N
         IWObcR93IAioDW5ug9bIzi6HVajbsNWFyzK9jfmiMrRVPCZLQE18XWsxBJ4ukWqpY8gS
         F0GG9CjmgHR4oz75kb0ZpZHzlmTFCd9AN8nnaaJ0RWyS47PbvCyV5TX/aS4VYn9ZXp24
         +LHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790510579; x=1791115379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Z+V9unX6aBDFJuuH1gIxp0fin+EUilc5XMo2mblqJ30=;
        b=PqW5cLeHmFeeU3A0GR/infxpHVcfyVBcFstnEg3TfS8DOw/8Eh1tX1QNGCoxDi3gKd
         VGhcGMshmyZ+gnUg5t9O8FDBIVsoAkrQrxVD/hKnnv61CGyIEbwoav4UDrC/YiVxAPSd
         mbovaB+ffxt6tcclpBXnhN/N7W7Heg9fAKnjOAmCRsXbAwyS52+h9/U4TAXFteMyKxHv
         BqHDnRkL8zt0HnYNoZ233DWpghSkJbnRG9S+kyfLCg3WJI0qZRQIN2ZPG5KsH8SGZV0t
         5k0iE9t90QtvGp/us1gM+HkNZfAY721SEIZDQusI44GiVGcF65ocWnTJCxFaXH2mqYOi
         1lew==
X-Forwarded-Encrypted: i=1; AKwUvBxI1SdKJDSD1HApCWtPqSYNoeE8cWN3BSxQxP8nbFSaavQ0U480SzH10JWhT5jiJzrFoxiIOPaLj/c=@lists.infradead.org
X-Gm-Message-State: AFq9FYKZrGn2PQjzlzNugZMebnI6UoLOhS6vy/qmvynXCEBDOpbQxnZh
	+mcYS3BFiqN+blV6hZpmXLwHDRmaILJ7kCzd8zNTt1P2aoriF3C/7gX0
X-Gm-Gg: AYBFou0qnTU0PJgcwjGIDEM31Dz9FHxqC30Igc9R9JquUQAcbBryZlXcc217eseZTw7
	vNco8A7jxsvEeNJTHeTdT7/UpG+EY74SbhqDSXjL27CLo2kSaKBEYGrcYeHzJgFbrfRg0i9yURO
	iNZ8pin52Vwltz7bdir9CZv1njdc8h5tkR5IkJRg84K9HFqKPvYMGtTU/qYSvmfIM5CdKSz7Gov
	lQ9k1fd4L8f30/fd6aFvt9X2aZhe2y3SnQy42Bmw1+d0Wb6P6Ui8+iKvSt3utkzlaDxwnPCRa6c
	Y44mVcx98B4GPj9BMMyQAew7NjEB9byZnMhdQLDsQce7YoMvCjSPYUo6o43xXWsdLWMLt//jUOe
	rLc+WmfJ3cfpCcbCjDqXYKbj2nR1ViosiPXFqgkDOxZwiI36blZLkGfx37m4yPV+MlmXKAViPvt
	FIzBMcDTeQ6fzo0AIuiHOhl3ubBKUIPdPag9evKY0SwRAVrGK7U6pNGjXeipOCmyt3kslGAfMNK
	FlIZldLOusUK8ZUfZzd+7EScaG+dnONSd/Mk0+ZkzMlAcoQq6pbh1wZYAwRhdDDgN9/mQr6DZZg
	Xhs=
X-Received: by 2002:a05:6000:184f:b0:487:fa3:7630 with SMTP id ffacd0b85a97d-4887acd8844mr13892557f8f.6.1790510579294;
        Sun, 27 Sep 2026 05:02:59 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B89A9009A7C72AB6C68D3F9.dsl.pool.telekom.hu. [2001:4c4e:1b89:a900:9a7c:72ab:6c68:d3f9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a74538asm19548417f8f.34.2026.09.27.05.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2026 05:02:58 -0700 (PDT)
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
Subject: Re: [PATCH v16 6/6] usb: dwc3: rockchip: fix USB-C reconnect in gadget mode
Date: Sun, 27 Sep 2026 14:02:47 +0200
Message-ID: <20260927120247.9807-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-6-126a2e9133c3@collabora.com>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com> <20260924-b4-rockchip-dwc3-rockchip-glue-v16-6-126a2e9133c3@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_050301_532885_E426FC5F 
X-CRM114-Status: GOOD (  14.94  )
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

I tested gadget mode on the Orange Pi 5 Plus with the same v16
kernel as in my reply to the cover letter. The board was an ACM
gadget (configfs) on fc000000.usb, with the Type-C port set to
port_type=sink for the test, connected with a USB-C to USB-C cable
to a USB4 port of an x86 host (Ubuntu 24.04, kernel
7.0.0-30-generic).

dwc3 forbids runtime PM by default, and with power/control left at
"on" the controller never suspends, so the case from the commit
message does not come up. For the test I set power/control to
"auto", unplugged the cable, waited until runtime_status was
"suspended" (about 6 s after the unplug; autosuspend_delay_ms is
5000), then plugged it back in. I did this 12 times, 2 of them with
the connector flipped. Each time the controller resumed and the
host enumerated the gadget again at SuperSpeed; where my script
timed it, the UDC was "configured" 0.9-1.5 s after the Type-C
partner appeared. Apart from the message mentioned below, neither
the board nor the host logged USB, Type-C or PHY warnings or errors.

On sashiko's question about the early return [1]: I have ftrace
output for 6 of the 12 cycles (the trace of the second run was
lost). usb_udc_vbus_handler() was called 12 times, once on each
unplug and once on each plug, always from dwc3_rockchip_set_role()
and never from dwc3_usb3_phy_notify(). The PHY notifier ran only
inside the runtime suspend and resume, twice each time, never while
the controller was suspended. In each PRE_RESET
pm_runtime_get_if_active() took no reference and the VBUS call was
not reached, so the early return does happen. On each plug the
resume was started by dwc3_gadget_pullup() from
usb_gadget_connect_locked(), after the VBUS update from the
pre_set_role hook, and the gadget reconnected.
About 50 us later a second resume request came from another worker;
from the code this looks like the pm_runtime_get_sync() in
__dwc3_set_mode(). I did not trace that function, so I cannot say
whether it alone would reconnect the gadget without this patch.

Not tested: the board without this patch, data transfer (only
enumeration), sashiko's other three points, system suspend, and a
host with a dual-role port. On every unplug dwc3 logs "request ...
was not queued to ep1in", also with runtime PM forbidden; I did not
look into it.

In one of the 12 cycles my script first marked a failure: the
board's Ethernet link dropped while I handled the cables, and the
script checks the host over ssh. The host's kernel log shows the
gadget enumerated normally in that cycle.

An LLM assistant wrote the test script, analysed the logs and the
ftrace output and drafted this mail. I ran the test on the board
and did the cable pulls.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus

[1] https://lore.kernel.org/all/20260924174014.366B21F000FF@smtp.kernel.org/

Igor

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

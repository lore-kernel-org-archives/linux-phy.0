Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAECBC9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 12:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6XyokIfblZqcYoklgN4CjlHjsSMuLZQW4AGmTXqcp8=; b=TG5vTqDQ6RxnEM
	ZuVVebKI2Kqg9PolgjpMxdjQ4rU57WI8/+yH1Q8M2FVSIO1VF9pa/yMgeuciMpS/eN4l2yKu8vnai
	isFpWLMEByTle9RHJis8J8MCUbveYuG+1DPsbBWAjEOdAFGdnMo08se+8ZTecJ8z8GjjJ4AxKmy7j
	TGKP4XMozSIt6B2TLkByHItOK6UIBrwXKg+W2NGlOMpI9nkQaCW7/j03vsDq0D4N0w1qJGOLOIDi8
	LdpP/OF2XwJ2wd3NUdyypZ+fUlvkbUK1NJaQan74gzS/xdqntfJh0AemXwp6/+OCpIhz5zMe3stB1
	88JbnMSLiXGz3g7e7UMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAnad-0000000GHWy-1nTM;
	Sun, 27 Sep 2026 12:02:43 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAnaa-0000000GHVy-37rV
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 12:02:42 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843af75de5so209777f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 27 Sep 2026 05:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790510558; x=1791115358; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=01429hMeoTXrkDg6gix/EcLJWWvM5W0z994eSFJkqXY=;
        b=s0CPq+ih8a1WkM+d9jTRSaExJXN+j9VXAAcidRtPJ5WiQC0qwc1jqLhg9EkE6PiVYe
         LFCQQV3SQkCBSBM+f1zHnSDg3iI1Nsv4TXulPxrCeyOHTI+n0GqXBAnQGPnIDRdo0pvw
         EXXpskGR35PmKGgV24aL1Rhk33KWXZfO7ngadWxKDkHT4dT7BJ5lUWzDXZJDMwaa1/d+
         roYKSQCUmNd+gVWYHdfrjjg0LP96u5t4eSOcXZ1PklGs0iTve5ITzdsd+zrPp88bGK/W
         9pT+C1xpVYV/TY7NAf7rhPSBYxwGnOdWEkPfmmp9qvk3kb4dMlgW8FX/wFaIaD3VLE3i
         4wHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790510558; x=1791115358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=01429hMeoTXrkDg6gix/EcLJWWvM5W0z994eSFJkqXY=;
        b=vqj3cS31ShrHw+PPa6mjEGxbaEiGEFPpmtLzTk7jLVEDsy39U6tFWtlYwi1KNTQtB7
         Oo4dyZuCKoicuEdrJLIEGmCmcTg4kDK4WSargEwN99MtuxFFZzhjkPfCcUBTKUJ6n4nH
         hkG9/nkrDcAJ+e4uDRgsDHHumn9DjtQknBYGUq5XyKkyL/1k+/gZcOcXxXUgUurc/jut
         EiptXNxrwsUo44892U91xmPM/QOSBQa+WgycHA+N+RLbfIsk2gMjewbN5JYy3CdZFpwn
         Fk7BJGWdAK4nUosVxWbmD1J80ZUgLC4JoxDI73O//bmiKZm01HvRmkin0+On1EHqJ1/h
         8BDg==
X-Forwarded-Encrypted: i=1; AKwUvBzwyrhyFTdy36Tj71ac8rEzhCePZbyKcYLOkZ5GYnHzoWX5xSIIm1MJJVpAwgNoUNEqxjICyTqVaqE=@lists.infradead.org
X-Gm-Message-State: AFq9FYIr6hzeLuJzq/+AnRQt14O5NFHoy6Ghj6aEYilsTVnKW01MYVAH
	8TagsG/+3XdQl1gNuLo7Vg3Y+PcOArdKZBfaR8NPi+EIFCSB52P/9CPT
X-Gm-Gg: AYBFou0hlv5W53EHgmFskYBcMXF9QMS8Y4nVabo7qvo3mkZ3YVEtUkd0QuKPzHnVFRK
	WcXMW/ULHXjp1Btzcmx8w8sFwZOSij69KUsNhn+10Tr3Aa/PF0SB0ysac3mCCrhKe5b7u8it2RO
	HPfSWJSHhpNNGx5OGN4xeH+Du8FRyFfr0eBJYjHIciY/YVSK+gTUc7AlHWVb+bponK7HgqbQjNp
	uP/VOMW5EwwKVMCHkOqOmv5DIOIWuKsYMiGA4O89QjDNYVQFeYaSuM+mFa3i9RKSAk81325crtE
	euMpjpor9eVgfMF05GeQdjASGFuafsFtHpzAwi5tDqXs2GtnDz2IYs7tHy96DvRXP/BkuS+owoq
	KseHQdyzSYl2cjYySbcAP3Yrbdj6Wb8KI1WutOIGzJO4hV2kFHzKrjkN0U+iD+7UY1mfyrtoQHy
	UzucHQEoLbl741T0N+n39c+bX1e9JEhWiU/yWjGc5D5XoXt95Tfr3dDsV6EG2AZ9biUmtHPlh9E
	HFy2RcN2C83WY9sJCYwM4uxQIAQbaQ2nAruPh52M9MN9ZnSBoRRIhhkEXkFZLt5Fip0UHjUuR3p
	/m4=
X-Received: by 2002:a05:6000:481e:b0:485:8df0:dca with SMTP id ffacd0b85a97d-4887abb09d2mr14521475f8f.3.1790510558071;
        Sun, 27 Sep 2026 05:02:38 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B89A9009A7C72AB6C68D3F9.dsl.pool.telekom.hu. [2001:4c4e:1b89:a900:9a7c:72ab:6c68:d3f9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a6456f8sm19655495f8f.26.2026.09.27.05.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2026 05:02:37 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v16 0/6] usb: dwc3: introduce Rockchip glue driver
Date: Sun, 27 Sep 2026 14:02:29 +0200
Message-ID: <20260927120229.9664-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_050240_805704_77E63735 
X-CRM114-Status: GOOD (  14.56  )
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

My tags on 1/6-4/6 are from v14. Since then 2/6 changed its PM ops
(v15 and v16) and 4/6 gained the two tracepoint exports, so I re-ran
my tests on v16. The tags still stand, and 5/6 plus the Kconfig line
in 6/6 fix the build failure I reported on v15 5/5 (posted as v1)
[1].

I tested on an Orange Pi 5 Plus with the same base and the same
local DT as my v14 report [2] (rockchip-devel at ea51774c5c42,
7.2-rc7). The v14 glue patches were replaced by v16 2/6, 4/6, 5/6
and 6/6; 1/6 and 3/6 have the same patch-id as in v14, so they
stayed. The glue is built in, with PM and USB_GADGET enabled.

The sink is different this time: a Dell 2408WFP at 1920x1200 on a
USB-C to DP cable, not the Epico converter into the Samsung 4K120
from [2]. This cable also has a GsCooLink chip (VID 0x3679), and its
DPCD (1.2, HBR2 x4) is newer than the 2009 monitor, so the link
partner is most likely that chip, not the monitor.

I ran the same test on my daily kernel (v14 glue, plus a locally
patched tcpm module) and on the v16 kernel. Both gave the same
result:
- dwc3-rockchip bound to fc000000.usb and fc400000.usb
- DP alt mode active (svid ff01), link trained at HBR2 x4
- cable unplug/replug, and replug with the connector flipped
  (port0 orientation changed in sysfs): DP-1 connected again about
  2 s after each replug
- the xHCI on fc000000.usb went away on each unplug and came back on
  each replug, and the cable's billboard device enumerated again
- no messages from dwc3, dwc3-rockchip or the usbdp PHY

With this config, none of the v14 to v16 changes alter what runs on
the board. So this run confirms v16 on hardware, but it cannot tell
v16 from v14.

Build test on v7.3-rc1, arm64 allnoconfig plus a fragment, gcc 13.3.
Host-only dwc3 with USB_GADGET unset now builds, with the glue built
in and as a module. USB_GADGET=m with the glue built in can no
longer be selected. Without the two tracepoint exports in 4/6, the
v14 modpost error comes back, so they are still needed. All builds
that passed had no warnings. They all had PM_SLEEP disabled (PM
itself cannot be, ARCH_ROCKCHIP selects it), so they also built the
new PM ops in 2/6 without sleep support.

Gadget mode (6/6) I tested separately; the results and my tag are
in my reply to 6/6. Not tested: system suspend/resume, a 4K/HDR sink
on USB-C this time, and USB devices in host mode on the USB-C port
other than the cable's own billboard. 5/6 was only build-tested. I
am not adding any tags to 1/6-5/6 here.

An LLM assistant built the v16 test kernel (reverting the three
changed v14 glue commits and applying v16), wrote and ran the build
test, wrote the board test script, compared the logs and drafted
this mail. I ran the board test and did the cable pulls and flips.

[1] https://lore.kernel.org/all/20260918091032.15593-1-royalnet026@gmail.com/
[2] https://lore.kernel.org/all/20260815121608.64818-1-royalnet026@gmail.com/

Igor

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

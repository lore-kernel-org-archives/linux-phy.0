Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DE60C982EA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 09:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EE5DLQKcTg7iVEcAwU6NCsw2tADcMaDDMd8G0wVxi5Q=; b=O0LcFVc/tOCRmJ
	LWMU78VXEjZZeeyc3nGUfZX9iYtCLq860zZ2/qX2GaRQKYOJHRH8+z9hwaTbVyuIFLJPJ2vhPCULZ
	BRc4BlkdHKl6Bf7HwklIoWq/lRIIG02KReq35uOpVFmJuvstL/cxcf2g8mgy+R2QCFFkt0B0tdv35
	6MAIdnY+ADjXQnMuUX1igLT5Nl6BFCCZnAGfZy348H7wss65uPe/A+2908ymwqAi63x0n8jCmlJb7
	sWEZpEP+hcNhV7v6w9s66JotP0exqw0SQPcSmmbqGtNl3cQzvBedfwdmY9DXOx66P2mZxjr+Jky8l
	tnXGZ0SNJqiQgtThUs/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ipm-00000007dl8-3cNm;
	Wed, 23 Sep 2026 09:00:10 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ipi-00000007dj4-4ApJ
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 09:00:09 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49d1331ce1bso283815e9.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 02:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790154005; x=1790758805; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FbzAJg9KFAd0XK3d8yi6dKFFaejwIzukaaxckgS1/bE=;
        b=iRmB+tzAyB94AQUfD+nnHRv5vysnF38dNL8ToTM9pmk68ZeE1wsfR2I4hbbKv6eH8W
         mRNC9KwbgvIzVNwf3zE9XP6zK01ymFD76T8VHymDy4f83cwNvvI1+CytEquuK2miS2+P
         pl/XIdCkwSIgjNXYq85nvhRw4NRfth7MSWW5Rn40cuAvpIEfJ6bxHQLtjAuzf4H204kF
         6TjaDLFLLNY6ZEy83rVXvw1Zy6jW7mr3qFze16Ntf6pnkVxYFUwPomN0a8tQSXlLPDnl
         VJx1oiAhQ44xYadJ/Ue/Rf4M6Y725lK0eDoNPiFb7942kLSupEJOgZSeFzmclRoZ922n
         CLoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790154005; x=1790758805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FbzAJg9KFAd0XK3d8yi6dKFFaejwIzukaaxckgS1/bE=;
        b=X/5jtEpU1qBMjU127WHDYYFOnpSQIRXfg9wFlz7oLzUL09wBvS4HcgPiq67R1q9FW+
         YEBd96s7neqQxWxg+6dAuyH3h9FZS0mGmcrzFru3tt19bS1/7W+8q3algzCt4T64KZaw
         qX6QKM/KAEZIMQKIparLrKUBWx53X3Lw7tmQC/tHvE8FmVWDwdG4d+mysihVaemYWcdH
         z4M2ytUedw3JxYzlY8cKc4vt7/waBbP8eNSgxvjHO3Me/xIOAJ7C3kEJjau5S5eXpVvI
         xpBx3jx2E+w/ggnJL2OPybyM+/o3N0pL5BCRznY1F8Ima+LQgh+BmHEPBQJjz7XEGE/d
         q0nQ==
X-Forwarded-Encrypted: i=1; AKwUvByA0oiTXy4GbwZb3rf4gT//YcNk7HLNgT2+UzmD/rZJApYePHtfhiLHG6U6ta7afnnEIdyjBpArsoc=@lists.infradead.org
X-Gm-Message-State: AFuF++nQ//1/KTDLdihqUQ9Mvqan6+Lpry4Jcy+jdgE6t2QVYZIhpoNW
	MLJMRnHb7Mlrqkn55TiB2jPDedG87C1aA/3U9oz/FHuyvbjWrHQwwz/a
X-Gm-Gg: AYBFou0oTSS46zYrEBi73SGp4QUpxo1/2EP4xKVDgwirt9rAP2G6AxpxsAaXFCwAPhN
	+Z0BLOWknZhe+W3HBKU/Hoj+ezy6Sr0r7ziwXYTs9xf2OVso6tPT5f4W3cIrcb+8vngoRC9FCCN
	ZzIuavBtAMiCOke8QXkLomO4wNvobSeBylkgZh9bx+fFCQpVja36jxVb/F5Ud5UOt+IaKUkuLmR
	x42sAuoxzhnc4phfkjDihQrP7x+hQnvzJvLwPAuvsM5GXIRmtCBZnMNV+iwnHoNkYuWOXjclP0Q
	7avXvVVZprOd9BCF6Z2s4GzPB1pfv2IxrtrqXszTKPVXHzaz6kBkJjsqQ4IO/tA69ToFP2HhzfM
	BWYxrE7gMBnaFwOaCU66eGOvJykxG7tF1JbcFRDmXoPj5MHyoXnKrVUJpViKQNq2aPrKKmo9W40
	/gpZZsHrRjPg7+mtb7HTATVF2ziJxBsDxMzA1ifoljHdRF9DQ+sAAkE0ZRADkJ+RRdR0Qafi9Np
	4o9QbuhEnJZH80N4vlCVuVxX/7x/XTvhQVIiTD1b/0vnNZ05ygvdy2zlCtSiWAB
X-Received: by 2002:a05:600c:4f86:b0:49e:6683:d227 with SMTP id 5b1f17b1804b1-49fdec5dc40mr23139865e9.0.1790154004654;
        Wed, 23 Sep 2026 02:00:04 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8F4500D949869966507951.dsl.pool.telekom.hu. [2001:4c4e:1b8f:4500:d949:8699:6650:7951])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fde197466sm56190915e9.7.2026.09.23.02.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 02:00:04 -0700 (PDT)
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
Date: Wed, 23 Sep 2026 10:59:41 +0200
Message-ID: <20260923085941.16418-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <arMyLlcFKgtlwW_T@vbox>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-0-763bb546824e@collabora.com> <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com> <arMyLlcFKgtlwW_T@vbox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_020007_080553_D78B7A5A 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
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

On Wed, Sep 23, 2026 at 01:58:19AM +0000, Thinh Nguyen wrote:
> Acked-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>

Hi Sebastian,

a heads-up before v2, now that this patch has an Ack: the build issue
I reported in [1] is still open. With dwc3 host-only and USB_GADGET
either disabled, or a module while the glue is built in, the build
fails with usb_udc_vbus_handler undefined. The dwc->gadget test in
dwc3_rockchip_vbus_handler() is a runtime one, so the call is always
compiled in, and include/linux/usb/gadget.h has no stub for it.

No new build was run; the result is the one from [1]. An LLM assistant
helped draft this mail.

[1] https://lore.kernel.org/all/20260918091032.15593-1-royalnet026@gmail.com/

Igor

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

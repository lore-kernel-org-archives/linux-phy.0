Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A901DC55174
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 14:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFax1X3Tn23SVGLDJJ3CRQiiFwOmNh4pa6QwjG6tAoY=; b=IwHWC98iQbQGN6
	MF6zwW1EurvE/A22RYUHo1iuY/IRoisjYtvlTODsfi4rWFEexKygs9tPUeQOdRCHjzXQ63IHl/R2h
	S/j6MyjCaizvSnMX64vBs30cz6N9khMvxo2s7MjMBw3icw3BdFyiIR2cWWfneIootAC1JGqb7tVWC
	lRcEw18RZHmLQpieFngXOZMD8f3ZI9ARba8D3yjCdZhQzF9/glq5NB5y97PH2bCJcbHTb6uLCzfbS
	PX0modx0kYYcObdUPIKqrJLZoPXJmUNbq8R+6csaq4iftlrK1CHBkt3O2lGBx1pAruk8XBfff9ZEf
	pvN3w/h+biIeVt/VxZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wshom-00000009RQM-1X23;
	Sat, 08 Aug 2026 14:14:32 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wshoj-00000009RPi-3hfq
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 14:14:31 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2ce7ac92dfcso4972205ad.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 07:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786198469; x=1786803269; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cRCYRkrqsjrsSzRNFotYZZ98meWVRPcoRMuLiucayfo=;
        b=GPdeNM9+2mvsqviu7qFz3LsNv7LjUsnTJtMFGeBc7IcZAZBLkdrIwgVfIrp0kK2QYB
         XSDBB1+WqtEOkPMDmXP5gRusWF2lUfks659X3n0UTKoyC1VI8Ccu7AQ5aLfkx0eYQIfj
         fsOg9BaGMCXDOg3bnmvFaaRoK3U1/mT4o0wzKOF/rUKXuKpzTT6/1L9HKnqdMv8Ut+yI
         WzaBKyKQRxArmxZx+lfAqBGouE0jUzDJVRa1YqPm0YrD9cv/Q+ll6qtZmTbP9M7n/Oi7
         setgE6eu4gVMCmlXyfSn9JEU1FI2fUF7QJS87CCRg+VpL3dwCzWmnaQ15AdiG6lMche0
         1u1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786198469; x=1786803269;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cRCYRkrqsjrsSzRNFotYZZ98meWVRPcoRMuLiucayfo=;
        b=OmOVcHwL8lANcAbG8PSPmGWzCH/J1uIHLohjwPHoLP3nGqDV/Dy/ZDLEHVuPCoRsjX
         CPwd3LiH98fDIEZRc9u8uCAVf8gbGDuxh2t7hge1h1b41+1OduWbxH4jItAcH988bG33
         3xemt8RHPw6exXRx/9sKRUkDA3V9gps3Gk9jRkB9AiPS2jtQZGiZNRPBstVbiEzJMI0r
         wadPBsNO8V+hAIrs3Vy7PHdLQSroGcU7syYUEqjHRhtfuB2cI261znLT/6Bvrx+b/+6i
         Xvd541At/RARXqJ8RGudGak27LxJQfpuUdTu6R7jnlEUziKb4z75UnO9iMkC0YRhpACN
         vmOA==
X-Forwarded-Encrypted: i=1; AHgh+RqqbexUAbQWiYC6NvXIAtA3+5qu55epHptdI0mYn640+h1ocksZ6/SaoP2/eShGenc8URhwtLcFLmU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3v5WqQx+qyBzqE1bLBM7datIRLdqD/GfTxiuIYUaKWT5NZc8L
	3XRZrxGiIgzg4geQwNhswnvNyiW/GVWL61q9IcVoCQzs3kbxOkfZHrg9SJg/Uj60EuWHAA==
X-Gm-Gg: AR+sD101wQNOvAsjFoYWz5nbPtRE6J/jh+7esyIp8pC61dmczE+5teB3OysVDo8UsvW
	zf/tmVIra3qx9qXsViBuev6wl4KTWClHMhR3ccocL6kScxKMT0PlukQq6WBeDfvXRmdMLbogOIp
	R0T+Qav+jxam01C++bLiiewAJVvnOEC68oRfyEkCIml/63WiLBwcxeR7GI8hkqnzz01k7TgAeF1
	hFsckm+NqMLl0I3cs4uyZHpmBfXF28DQtTSLzKpVwOiqS1+/QD2RDF9up2bifM0bh4IX85GyrHk
	OPeLapXv9GTSJGM71oEdLAXXsMdhuGDWIiETHM39R2SGcK1Fu2Y9cnGJlrejr5MtGAlLffYEErc
	FTadLAuofGeggv4uzANVGF8iaqXQa7q/QQQjUdx/fZIr6oXvm2+M11qHduQGB+npWOu5ePPOSw7
	SJ8dmfiSFF2MT3KVXuSxPMVxJVVtTfmNwL1X4apdU=
X-Received: by 2002:a17:903:f90:b0:2c9:b2c1:13ec with SMTP id d9443c01a7336-2d294c225a1mr141926765ad.11.1786198469018;
        Sat, 08 Aug 2026 07:14:29 -0700 (PDT)
Received: from localhost ([2403:2c80:17:1e::20db])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d14dbeaa7bsm19180265ad.41.2026.08.08.07.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 07:14:28 -0700 (PDT)
Date: Sat, 08 Aug 2026 22:14:25 +0800
Message-ID: <16421007bf6b2a251ccf51cbb5bf3694.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH RESEND 05/17] phy: spacemit: add Innosilicon DP TX PHY driver
In-Reply-To: <amnzTxDYtSBojHdY@monoceros>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-5-6de34d80e86c@gmail.com>
 <amnzTxDYtSBojHdY@monoceros>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_071429_919903_BACD39E2 
X-CRM114-Status: UNSURE (   8.29  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgVXdlLAoKT24gV2VkLCAyOSBKdWwgMjAyNiAxNDozNjozMSArMDIwMCwgVXdlIEtsZWluZS1L
w7ZuaWcgd3JvdGU6Cj4gSGVsbG8sCj4KPiBPbiBTYXQsIEp1bCAyNSwgMjAyNiBhdCAxMjo1MTox
NEFNIC0wNDAwLCBDb2R5IEthbmcgdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4gKyNpbmNsdWRlIDxs
aW51eC9tb2RfZGV2aWNldGFibGUuaD4KPiA+IFsuLi5dCj4gPiArI2luY2x1ZGUgPGxpbnV4L3Bs
YXRmb3JtX2RldmljZS5oPgo+Cj4gPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPiBhbHJlYWR5IG1h
a2VzIHN1cmUgdGhhdCBvZl9kZXZpY2VfaWQKPiBpcyBhdmFpbGFibGUgYW5kIDxsaW51eC9tb2Rf
ZGV2aWNldGFibGUuaD4gd2lsbCBnbyBhd2F5IHNvb24uCj4KPiBTbyBwbGVhc2UgZHJvcCB0aGUg
bGF0dGVyICNpbmNsdWRlLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBXaWxsIGRvIGluIHYyLgoK
Q29keQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==

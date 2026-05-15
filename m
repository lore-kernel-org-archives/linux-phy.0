Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B14B7CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 16:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nI8oS553Y9D0Zf2JpRB5dOlu2NhLToG+sJ15H1ABOg=; b=pXqQVbA8B5EHTW
	olnchQXqw9tW79pmTTQSDiXZUrLysESgjAR6wlpt7li9olEsVjgtrsi6SNB/d5YXDcfNC2my12+eL
	MJno5RFMMyvDixvtuIF0D73z1e5YHKN9UFNbWvBAuklZAmslfmXd+ujghB0K7/8txYVxvBjuh+U5f
	RGnX6884nodnobx/QTMSdWEXrc1lVT8PlXHfbeRqMEmr4WYPjAZKZJN+v3FCaOHfvyhb5q5Lh52+y
	6QdRXHdpXURO90LqStJ+2Pd5QVwKtK6GTu9D+KyhUvmWHn+kEvNAtaztjLwB4pe+hDFVtb6zISiso
	1CqWU6wDZAgV18/rYfjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNvJ8-00000008qjb-1OWm;
	Fri, 15 May 2026 16:22:38 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNvJ6-00000008qix-0fqs
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 16:22:37 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-488af96f6b2so118145e9.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 09:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778862154; x=1779466954; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zflw/LLGrplI4taggf610iOiOzrA3g56bliHf6APE94=;
        b=CLg/dOubGF8Wc/Q0bPBq4OLKB2zoRD/nbCWT68CGvw46NkGv/y7si6W5ZXtYj1PSt8
         gLbz82Xo2pOFh7x+VArZxDGmJmjivd7RzdHnfuFgLSPQJRQKgF2GbcRQ0DeyZIGZn2eM
         d7IR4HHN31JgKl8dyllEXzbOHiAtsavOovvoF2ovrxnNVnZM4rM5wr6Bw+ViGjp3Tmik
         7XrpCZH4ws2Fdmev/Ku59wrKopvvCtqarlZQREKBGcGyvuAQP6n/Vf/SYxg8yhqQ9BGE
         CyGlkF30B/NcyoPKWX2K13iUAriEg+Q1aQUNUKMFbEkz/8d6T7v7IZ4gYyqrmNMs+DWc
         u1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778862154; x=1779466954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zflw/LLGrplI4taggf610iOiOzrA3g56bliHf6APE94=;
        b=lpvS6H1YPOms+WLv9eSf4b00He+GJ4QyiFBP/qr5s4hFJslmjo107Ei+r4JZSodlUP
         Z1025x4fbp1wxYfjYPAX5VRsAjKK8B1VCedYVofi5q/aoSB64fXgcu+m1w9YDocokWZ7
         PtmpByck1dT37PfQV07v74zXZ3qlelARBQnmn5S8+JTYXcTKTDvQzMdSVRmRXNXb/KUT
         Qx+HZA9YtRzNshmENSmjhRLO2BYA5mMOFMAMJ7+e5VlvdjxzcoQg/4P5tqqf6FAGYVZe
         4TtiZqEeTTXII7N3rYo4HmV7h/WXTTcd3U0Zw/Aw+dfSLB2c1XmIquBx2bXDXu+6hyqH
         JU9Q==
X-Forwarded-Encrypted: i=1; AFNElJ888CuBdLXmqDWOcs6yx8eRtZyHJzLMUMR0dBOvUSh15q+BKJuNYScRBsokZpgmMYxncB2DroI1+vw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxw8cC2x7gixRxwXVxgBY+ohnGMSXT/vaEGl5cLDTHO8kprMcci
	vtgiJvKbeBx043slUy7oHXpmJMoJkax75rDFUwWh4F7uLf34QgoRI/2Mt7T/G25K
X-Gm-Gg: Acq92OFZCXhXC98TSpsuvP60lmu5GPf94U2uTFPppUlPJTPxLUg1Py2u8jwX4qAk54a
	xpDDGEVx8wPAZWXqh637f9yGhGA+QC/8ZT9rAJOdkhApLlKrqpy+aZrgTyBUmgmXMdZU4kug8pc
	Zfd4JLc6ENkIe33g0vQW/q7vBKtYowSYOdIUynysKVJUKx1+sKPLWKwc86sp9fzeLe4g0jPMnMu
	z2nxZH2Oo+MIkr8UCiPl9Z1lpZt63yx4Z2K6mBcL/BiTFNgpreXdFeXwYwJRjrtas1qM6bHB0+V
	Rw2YhloY3A9s/Uq1Go9gDgC87W+9JWBRU7WpnMhG5w1piJ4zSveWLlz7GpEnIncrCjWBl+i6kHu
	2FIUXnpCPPlyEMP/eaAgd0KnOjC0LIeHGwbLJl6BS7pj6zGvmjl7i4oXjjDlOHdu2yM5/K2ZNRI
	5hFQT7KNSxiyIraRSB6GCZvfczSp/MvvXv54nEwXogFXlkk6Ax7otHUSFqus9tUzUUJw==
X-Received: by 2002:a05:600c:34ca:b0:48a:7676:30bc with SMTP id 5b1f17b1804b1-48fe60ee4c7mr70816615e9.14.1778862154203;
        Fri, 15 May 2026 09:22:34 -0700 (PDT)
Received: from localhost.localdomain ([87.236.194.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe4862209sm72891535e9.0.2026.05.15.09.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 09:22:33 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: andrew@lunn.ch
Cc: netdev@vger.kernel.org,
	bjorn@mork.no,
	linux-phy@lists.infradead.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: Re: [PATCH] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c
Date: Fri, 15 May 2026 18:22:32 +0200
Message-ID: <20260515162232.23758-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260515161834.23628-1-petr.wozniak@gmail.com>
References: <20260515161834.23628-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_092236_203942_FBD632E7 
X-CRM114-Status: UNSURE (   4.04  )
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

SSByZWFsaXNlIEkgc2VudCB2MiB3aXRob3V0IHRlc3RpbmcgaXQgb24gaGFyZHdhcmUgZmlyc3Qg
4oCUIGFwb2xvZ2llcy4KSSB3aWxsIHRlc3QgYW5kIGZvbGxvdyB1cCB3aXRoIGEgdjMgd2l0aCBU
ZXN0ZWQtYnkgb25jZSB2ZXJpZmllZC4KClBldHIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

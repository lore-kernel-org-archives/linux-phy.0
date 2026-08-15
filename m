Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F3DC5DF6E
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjhN4XwQlJQPSPfElBnzb1PDADWSWVszRMWdhWplT/g=; b=E8BwOBL2ck5ihb
	WJknJvHhmmlXRGgAmmvVMQm8GCL57EDbGFhN+vF1U2yX+7K9f8Z6BMigBPpDVwEO7rD1JH78alTvt
	aMLdWCjJSQ2/7xq8j+T3PGP8OEjxzhgfZ9txmvGRvbg+7nWp7neMq7TS7znvELxTnVQ/796qHWsl3
	e35nKStLuTQqidXnLsa56WW5046mXV3MIh4JipjwmfTAIJCw3v87oScGnUmRC6UQLKLR+CRhqgPRZ
	OvH4SdEr3ENuvbUqMWmFulM0rAoHwqS3TM6X5ZJcLBKd5rqOBuvq73sSYXFZYu13CfxJbEg4v8fVr
	RSGgOfNb6hTAcnwYbkSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPf-00000003oZN-0Izv;
	Sat, 15 Aug 2026 12:22:59 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPb-00000003oVK-0Ylw
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 12:22:56 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-4706f016316so100471f8f.3
        for <linux-phy@lists.infradead.org>; Sat, 15 Aug 2026 05:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786796573; x=1787401373; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=TirLXIkL7LnIScBUrSArng9CTkRR+rBC+k3EPl6uhAkoXN4Srlp+4dh6RCJxjKr8S8
         7oHpyjFTjvxVnG4Qr4TZCzvWtc3r7ijz5p9xMWHevoOfDxyaj+gJ91CyjAoQi5kLUitJ
         ISyQJfySEZQBQg/SZkuuE4Ac8Uz2BwEwJiIMyks4c83HJ3Y15rJ+g/u/hsYCrGxX6v7d
         R0ZHPXHrpznvFn9t5MvGaddeJ76ncgH+u3mXiCtWPogJvmZtc2CQiEKyglKhX2nqQYFQ
         WCXYVI4ZB4u8Qp7SjvfiPY2dxFM8MnUD7DWgg4yWyVVFDy/BRJNTbwmBXvFrEK/GzJgt
         5JGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786796573; x=1787401373;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=fKn2aea65BdnQCYkfncWuw0dP1AZRrNjgKV+7EBOlq4IzwmLROurSFApxEEAdF/iyT
         z+2glnbDOvh64o36TY67gCVhRB/3grSw4QN3ZDVs164Q9Gs5xgfpirFb/6oP5BEQ8WLO
         UA9Zv+9LQcT/ZXB2gTnSTI0Uigc9Ep+/uuxph+TDb868eTV1StAlB8YqJ/WbljRnRRBJ
         vWCa6V+AEx8CEKJgq8b0eZRuHKqb7rlqtDk1wjprB6MOnJH91DuFI6NtnAMOBfRmMhje
         IpPKQg/u38/zasMxQJ2Kd/9FWmuQB03hzjSzHG1+RJ8KEGNzgRTBTgn6YVsFlspwuuIt
         UiFw==
X-Forwarded-Encrypted: i=1; AHgh+Ro/EdeqvA94diJEU8Uwe6O6pEaq3TP9lgNMDdBzmpjIh2l3GTm1qVYTTx/nbQ7RvF6fAZjujgvRHlQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjzqoS2fPyjwhqxnFSGFRFpdxPHdBbLT3bkXa4yWRejz3JZuQC
	o39WVUNB65NYuzCo6I7WEIdeRiiv3RiVSucNdWz7S2eYzaqO0CurG0cE
X-Gm-Gg: AR+sD131tAOlRUzTD9oi84kBtvbbSgcVXNJR3sdYulNNBCjo4snh70Xokj+WfEMT6iU
	jcf72l+JnOT+cCXSWpyI33SZm6TKw/OAWNtXG5S9j+EQS/QkZ7XjhsYqUmt++UurkiMhFz33dQJ
	t32kidHKpeZF5Fb/PdRsVyBenk0Ji89Aqh/TEhERXiExYXxied/AcrcEeKxsQAUwuh2djSkx380
	HcThr0qYmq98QKOhY6FEEiMjAsWFYLTBq91zFzyjEQcRXw/Wf1pHRr8XJ08/WS/OGtzZDv3gCKG
	AhYoz43ceddl30nczuI98AZAuFUWrrLueOylAX36FDPNFKnOkilkAOdEkPPVWraOaEuKtAxwNuI
	D4CCyG8U3S01FvKN+L7DOuPRwTo1F4KkLlqpwW59Sl+jUUuKbAgKRFtXrWIjCb2U3nb1rs9aZBN
	tMf6kfjXbj/Sru8VTpI8h+XxH1hXO99E6oXPsEZ3DD6FVpXmjKDUjG3V5/UV8qozbd+YEl1uwpt
	q93WO0PvlKDzQWiQ4NzItl6CA1b/E+fgZavbAnFm6YDc001RSa+mmqEGB7Y5D6tdEN53Q==
X-Received: by 2002:a05:6000:2585:b0:46f:7d90:8124 with SMTP id ffacd0b85a97d-481607738d1mr8826047f8f.2.1786796573266;
        Sat, 15 Aug 2026 05:22:53 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B932600BF05B505F15B0ECC.dsl.pool.telekom.hu. [2001:4c4e:1b93:2600:bf05:b505:f15b:ecc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f1fff25sm26930649f8f.3.2026.08.15.05.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:22:52 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v14 31/38] usb: dwc3: rockchip: support PHY reset notifications
Date: Sat, 15 Aug 2026 14:22:34 +0200
Message-ID: <20260815122239.65405-4-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-31-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com> <20260813-rockchip-usbdp-cleanup-v14-31-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_052255_179860_15730339 
X-CRM114-Status: UNSURE (   4.47  )
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

Tested on Orange Pi 5 Plus (RK3588), 7.2.0-rc7 from rockchip-devel at
ea51774c5c42; details in my reply to the cover letter.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

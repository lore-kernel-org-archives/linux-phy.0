Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DE99C5AD5A
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjhN4XwQlJQPSPfElBnzb1PDADWSWVszRMWdhWplT/g=; b=Vth3rb+N0/iFPI
	MWkkqLqmRxTKCYAkql6HwBXX38bzZIkI7Tlmth35kldV0SsPVXOFXffye1YOBRL7NGcNFbfqYKsGj
	IxgzhijgeuVsJ7EFlvFpejqB7tP7uuzgfB+Q7Y4uhvS4GtcolUtKTGMEWD59lwlCwUQKc15jPzNp1
	Dpj/Em4ay0Nv+X84Q8vNy3pzl7UNQaswUm0Vr54ltqjCsCAronr97Vg4dtzLmrHdDpxfWdsAcoOIQ
	19tu9nzmhu9EY5UxRSJ5Y3ElnQodKdiR5h/tl5EYWnb8RVIpArFJwtzYqavzDkB2PWSRx5TPmBDgn
	vXEtvBdSCxrkXwVHaZ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPe-00000003oZ3-470P;
	Sat, 15 Aug 2026 12:22:59 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPZ-00000003oTk-1h0R
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 12:22:55 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47f502ff678so221398f8f.0
        for <linux-phy@lists.infradead.org>; Sat, 15 Aug 2026 05:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786796571; x=1787401371; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=GCfQiR8NUckIryEqLKUwjqn3BJTWi51kmc3ql4N0FOKqd8R0F/wc4jdeKHILo3fn8+
         +qGTt1aU7EXiPQ4AeF+7EJZSG20lnMmjhTrkkKK6rb65fdrK4GXa4DhrokoW4JW359l9
         S5RNJT7ZKm1SNjpvsS+QgNfqI3ys/kjlTFhuOdOaol4eGu2lOOsxdKgfeFQ0OUUf9+Dr
         4ZHKigDdu1LO1bDZlVVKzbtLJqZESeL4UkGmnNPpj+u+QwKsdpKLZYZwkl3XBZTwF3B1
         cxzv+xHQoIZDsF/H2GZk9RwH3a/POQEul5lMgjt9DOo1LDBDRWx0cCeHNE3ZlG8czagO
         PKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786796571; x=1787401371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=cDXaDfBhawfIXPMAWeoc2c9QdRKADwd+NKYRLdx1ZNSis0AJ4w9mxUoc6J+7L5bM+q
         BThp7gKC2PdxH6HH7RCWF3Lt+xggvllXpPFJwRKZZAvE9bwWx/zUMIZne+ylj+0dt5jS
         D3qWqeJQeGWxj+qZd7arwDi0H37wlkyts7T1zOT71QdVjuIJSlMfAngUJehWt6e2cTNV
         e1BcOwf0LVarb8glM7EG1vd6DcIIwG9toCoKFjd8Z5siQpTXF2uYJ5kGWY7kVByTr8ka
         bZSApkuBr13D/dcAmnJiSR/Yrzm0C1CEE5MgZ2RWpIjb5aGaHeRKfAZRE4DHbolk47Lh
         BbSQ==
X-Forwarded-Encrypted: i=1; AHgh+RrQ91SuB0wN4OWd606eguHZj17IyFXt+Gs5YrxTajANrvt8jgnmzJey9KDZ0nsnillkui55h3Qyprg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr95w0XbQuJ1NlqzDb7Bq3hVDpClG7a/NVQeK9OlljXah7ySE+
	u3XOzxKs7iT65ojr4lRCCEFGKyQC9cqVY4hbQcVNX2j8KzAkLVqWIQoa
X-Gm-Gg: AR+sD13LCLjQfDz68gCC5IUCSkTS6GTJxEIFMGl5dDu3dfn/nVYe6ELzwJV+gzw9eN5
	+yX6r20AyUcOAaFn8QeaaVM8ev8ozukZM2POjAjZXdPwDw90hTlG6GBxHDMk9upYovQRZmCshcf
	sDkKRemtZHJhT+MdztkgZM4CYOr56LKACLZELKIp4Zq+4CWXW8zQYq0WUQ5nCbklQlE2QHGp3ZW
	kd4nTfSNqVgid0RE1As01KXLuI26Exbq3GySeN6NG/fSFpB48bKJ3CZ0F5bIgtRjcnMW1fzjmYj
	ZByVJH2gDrfltr+IAuxZtpVs04hoHHJGm1+s9fg4rcrkXHGsxz6AsO2Btk4w2FVCJpGXlNM4l4s
	pP1yQW1BPmuoI1xEluSYjUt3B4sbMF0hIBRGpUKyOKOzPKX4340R1eL8JFMf9rZ5gQgs1RJoaQx
	mpSabtex00YxCNgcCSOsz866Jqa00BPcl9GmLXhKzIUZPQdHdOC/tMX6bT6jAAqhZbsvkecIPw+
	u1dKX1NGrT0N+jyyjy/o/zQ8q1k/xinVAKyiRCONmKu9mJRa6xwfFOey5aBbJc1gZaL
X-Received: by 2002:a05:6000:1446:b0:47f:959f:d5e with SMTP id ffacd0b85a97d-481606984d0mr9483486f8f.0.1786796571543;
        Sat, 15 Aug 2026 05:22:51 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B932600BF05B505F15B0ECC.dsl.pool.telekom.hu. [2001:4c4e:1b93:2600:bf05:b505:f15b:ecc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f1fff25sm26930649f8f.3.2026.08.15.05.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:22:51 -0700 (PDT)
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
Subject: Re: [PATCH v14 30/38] usb: dwc3: core: add post PHY registration hook for platform glue
Date: Sat, 15 Aug 2026 14:22:33 +0200
Message-ID: <20260815122239.65405-3-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-30-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com> <20260813-rockchip-usbdp-cleanup-v14-30-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_052253_604320_2CDCAA90 
X-CRM114-Status: UNSURE (   4.54  )
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

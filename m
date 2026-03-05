Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9452FF30922
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 10:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6ZLZSb5YggqGH4nDQS7j+23+eD1bZ3Y7dS9oFLRcQg=; b=x9cIfxzI5vwlxh
	S2HzlzXJ0jumYdQUKg6zgTwme3QykyZ3YgSb7ws5eYtZUI6zXWdkwTvj8DRVhkz18pIAEbGSqTIXb
	58jju3CIvAgfdhmfwzpPaBne3Yr96+4xZu21csZj8sYSlEfyrXlwkBWrk5rrdEf3hwCMxi9fHcp7m
	vN9ecayl1tadYbXn5bTgrxskBcf0U0DQU9HmhAjHc9uxJ3oaZA63MK8OI4rMTBN3kD08bv2xOQnFl
	2sHlRivc0/aTm78r902PDD8kznva0pAP4ZwcHfahBbcxN9ExHjcZz3QYjiRRWGake1RhvDqk/LX6R
	E/qm0Ac0wZToJHpw3ABA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5XK-00000001Uqq-1BkD;
	Thu, 05 Mar 2026 10:02:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5XG-00000001UiR-2Yab
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Mar 2026 10:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=PLN3jU+WSp15lmHsKDg7F21c9tIpGoZokDbnzqxSsGE=; b=VqrQ+vEETWVjwsmTqMOoM0R/05
	0++YbyPv/Peg/tnmVj/skMvrv4MJDKI1yuQ0w+r8c97bdIaO6MkH0fFRoU02CnccFGhlulegymU6m
	x7hE2tA82SXF5V+o0d7Ckowi8Vah1rGMxOW+LyhV9GSDUjpOHcbj7KalmOZCj+mJPR1R3TKcaVd/a
	8tBZHJAd6sGmo2tJZykMuI85OtWA6MckQTlPEupE+AOPQY6I+5n2OeHmgkQNdw8rjTpDL2tpgoLrV
	yDkXBxqOHnxvTpgwE7kq2vkyQZ8p21fAVxCgDxJZeAYQpvJ6prMH/8Y1L89A7FpIxFmItaiIAV3Qz
	eGFDzv6g==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy5XB-00000006QKh-3rKO
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 10:02:25 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-483a233819aso77125915e9.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 02:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772704940; x=1773309740; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PLN3jU+WSp15lmHsKDg7F21c9tIpGoZokDbnzqxSsGE=;
        b=UHBNqox5xeZikJqSm8QmS4wtXg1G38GZ+PnBAuzXRfRytdhe5a9idPZRkDlMQMFIPm
         Z+tywU4A9mo1vQlCT7EHhr0lXuE+DxX3kO56uXUZjmrVyPAWLDPHkWhqM7tlbZkFfZBK
         Fcy9V9t+/+hJoBaNgY7crLL/e6jiDBQ6vdTmpm5tDvJWWJqflC0cJ/p33VTpjUzZVE8q
         syoPYCwmCMZNQS2uY9hRwhnnC0tg0XJNy7hlpgIHVLVUp6gU0yoZsJiY797OpZU9PcUW
         5ZsD0ZypA/wKnI8Sb6fvAX6XKifNWe8lJGh2+fbgXMTOKtdklOTZLC7wDnPWvicmb+Cq
         oTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772704940; x=1773309740;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PLN3jU+WSp15lmHsKDg7F21c9tIpGoZokDbnzqxSsGE=;
        b=S5T/ZCTwpNEXSNn789RpNEi+RXXjMBu6JRzjK4SVcsuIopJNwl+34+9WXjkGRNCPWs
         Kev7iXB4IQY9D5NrTIaeAaFW8cOvA177e6wA1iywUaMt9jusgYdSrB5YWcVRLAH3muoF
         VbVeOeeuHjxSL9tYa/OmxXg+oTebdW/2VWV5U7wNxXW2VtMgSUNx8bgUOGWEGLeC4ad9
         /qQCgYPYvZ5WxG08utgtHMf1W1spoEb9X7V0yqevW8Ej3tWc6L+5ylsDEeiuMIdQIMFD
         yVNyncN9sjfW8OjdkEmVMkpr34F8lUOclTQKOqMg1xFFUH83AxAQSos482Gr24/pwBjs
         lHyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtuNda2dj/wVhQRUuj+7T6dDy0iJ/mAJRfkWkD2ToB5YEV9vJLOc7fBcMCamv4rGvOjc9P11IExVs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6I2PE5vhqJ52UhmMOvbJ0dBFsJQEkyVY/SY8n7asoiUiFRtEs
	CUbTmbsQzsNkOeqLJKVxpYKMLqtrdDw12gkHV3CtcCVnGXjWg4zQ3PpAuMW//nN/MxFhQKhgK86
	ybqxxV9Eueg==
X-Gm-Gg: ATEYQzzxVdQqRsiL9P1qDRWbIHS2GBKInsVgm9M4x9gPZzMxAjWcq/dzQjwh46Wn0Dt
	SVGTGPaQq17RAmB+NbTWcHC9qxy0yO+ivZcUdmy8sF7MfSiKEU/AkjNz6NWFrYuk7WefXTj/gIm
	jZBQ+UZkUjd4cX+WhlHSrY8cdLp0yD9p3ZA3axelTHxMz9C0RYVhs3MOuLNraSUma6ovEjO0sXv
	JCerRSGE4E0ASgl9ulshbJOendckRW1W7j75pO7MCLrcc7d4fcuXZNWrJPKJ20IQMu5T15pOCyi
	dFWUXo0ixVf4rSsoHyszQSML5UiIZyqpu+7qTLUG+UWQWK6aZWqqFOugx0gDJqska8CcYfEtORI
	iWp08kDIDZvWgwsPW/FMyJug8wkeSe4sb4+Jhh9oyV5ro0HHeeTRdQYCzstkAxiQJfQ3a699pVH
	VuyEGpGubKif0jqcmIfyRco/sXuU2/
X-Received: by 2002:a05:600c:a07:b0:47f:b737:5ce0 with SMTP id 5b1f17b1804b1-4851988f31dmr86977045e9.23.1772704939633;
        Thu, 05 Mar 2026 02:02:19 -0800 (PST)
Received: from salami.lan ([212.129.84.244])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fade9fdsm59453655e9.4.2026.03.05.02.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 02:02:19 -0800 (PST)
Message-ID: <030737fd255a49288349f06e8c1217a126ea9081.camel@linaro.org>
Subject: Re: [PATCH phy-next 05/22] phy: add <linux/pm_runtime.h> where
 missing
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, 	dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, 	linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, 	linux-can@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
 netdev@vger.kernel.org, 	spacemit@lists.linux.dev,
 UNGLinuxDriver@microchip.com, Peter Griffin	 <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Heiko
 Stuebner <heiko@sntech.de>
Date: Thu, 05 Mar 2026 10:02:16 +0000
In-Reply-To: <20260304175735.2660419-6-vladimir.oltean@nxp.com>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
	 <20260304175735.2660419-6-vladimir.oltean@nxp.com>
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_100222_033629_823DCB3C 
X-CRM114-Status: UNSURE (   8.11  )
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

T24gV2VkLCAyMDI2LTAzLTA0IGF0IDE5OjU3ICswMjAwLCBWbGFkaW1pciBPbHRlYW4gd3JvdGU6
Cj4gSXQgYXBwZWFycyB0aGF0IHRoZSBwaHktbWFwcGhvbmUtbWRtNjYwMCwgcGh5LXFjb20tc25w
cy1mZW10by12MiwKPiBwaHktcmNhci1nZW4zLXBjaWUsIHI4YTc3OWYwLWV0aGVyLXNlcmRlcyBh
bmQgcGh5LXJvY2tjaGlwLXR5cGVjIGRyaXZlcnMKPiBjYWxsIHJ1bnRpbWUgUE0gb3BlcmF0aW9u
cyB3aXRob3V0IGluY2x1ZGluZyB0aGUgcHJvcGVyIGhlYWRlci4KPiAKPiBUaGlzIHdhcyBwcm92
aWRlZCBieSA8bGludXgvcGh5L3BoeS5oPiBidXQgbm8gZnVuY3Rpb24gZXhwb3J0ZWQgYnkgdGhp
cwo+IGhlYWRlciBkaXJlY3RseSBuZWVkcyBpdC4gU28gd2UgbmVlZCB0byBkcm9wIGl0IGZyb20g
dGhlcmUsIGFuZCBmaXggdXAKPiBkcml2ZXJzIHRoYXQgdXNlZCB0byBkZXBlbmQgb24gdGhhdC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBWbGFkaW1pciBPbHRlYW4gPHZsYWRpbWlyLm9sdGVhbkBueHAu
Y29tPgoKPiDCoGRyaXZlcnMvcGh5L3BoeS1nb29nbGUtdXNiLmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfCAxICsKCkZvciBHb29nbGU6ClJldmlld2VkLWJ5OiBBbmRyw6kg
RHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

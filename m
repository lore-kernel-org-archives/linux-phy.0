Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466D5606A325
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 11:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=umzrAgUm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pardini.net header.i=@pardini.net header.a=rsa-sha256 header.s=google header.b=Q7anUxom
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2CrBb3cMweM+ZscJlV81f1k8MD9FNYnSdGTO5iNAB2o=; b=umzrAgUmjXg5o+CO7hh/hbXFQE
	V01BgYoDmc77MB45AwjbXqdc9P6EG85448/VwTq/a9GOCyO7QxWBwKY6bQUwRFGy8fUlv5ieSxPWX
	tAyFuEvkN8pfX4P8Ih2SViSHXG3OppFptA/kDZEoJKR1AhIgZIfddNEhUA+bJByLwo9RXTprdnU7K
	Q/KuwbZj7lYTdjB0YYJ+we99yqXmH5q0oU4c+cy83STXygU8wkloyD/R+4KInqXbeafXOrf3cP0PM
	OlxLDrlc10OW0rF4fbJKQm9olwRNNkKkgjC1rPEmg8o/ANeqFYFqRRLmEoH3qnY4/XJ9y7JXkQg/R
	JiwfJptQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjPr-0000000H6Gs-2MXm;
	Sat, 21 Nov 2026 11:37:59 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjPo-0000000H6Fh-2joh
	for linux-phy@lists.infradead.org;
	Sat, 21 Nov 2026 11:37:58 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-6b887ca9f5cso2450462a12.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 03:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1795261074; x=1795865874; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QWBZ24J2L01VeEpwZsAilZvLBxGps9oMKqAOB5tV14o=;
        b=Q7anUxomp2wdVcLWRSgo2MpWhn+rAO24OR7mTkgPTeUMtoSGuUKiT9D7ndKbAhkCRd
         G2L1siAqg3wQapPKTRXOGHrGq5Gm13fAutZI4cDycxWTnEhRwMv1pWsLYVlMY2HhGsum
         Z/RAiDk3xCCz7zFYG4zTN0KR6CAai33oruGV5PgS4LW9272jn0jywH02mAFW2cLo0Kpb
         +ms3WHx5jU6jGLNC8GtNk86+CcPd1dGVxxcFnD7yZzXnsKNOhhrnp/Z8uw+d/aApIPAZ
         xn3ZUjHQa76OabFyWWRyp0JepSeQTXCpP+TJstcty8CN0EX/udXZKpyTWUgq4HNDv6Be
         QgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795261074; x=1795865874;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QWBZ24J2L01VeEpwZsAilZvLBxGps9oMKqAOB5tV14o=;
        b=pPx1fo1VyB1knw7J4MZlDUvuGCrniiCOYPafby66c5pUk4v0EzstQZ7i9jiXsV+LMe
         AR0pQioj2IBPSvbn75EI1qbalf2j9U6ehKEUj9G0kfPnWGj4gzzrcLiWl3n1OJmj3I6M
         tqkDKsiHbxXzeLxMGB+gaoviWsrX8YzrqWGKN5brEuFVJwwMtzJOxkPPcrjfFXPLEMII
         gvNfSAnPZh4lVrUEKLJngS4je1NottYNnIfg/ai1WWp98uP4bG39hp1s82vJWHAYj++z
         gN+7weh891WS+ZhTnXzwn3q/xt4xUqq6Gsmf+Gh4WQKrOFXp5HAYBaHbOnplYGA8M5EU
         Zftw==
X-Forwarded-Encrypted: i=1; AL+hErH1grnMK5ZqRAe11lsY1EX0SosrhH6dYF3yQoYbLQ98to1rSuBv5oCxanCn8nqod8hXUrR/9+TBRe0=@lists.infradead.org
X-Gm-Message-State: APuU4Z/49oU3XDdK3q7ZoKU0oCXt0C9HeqgVVFXs9TZEcm9T1uxAc+KN
	RhBO8+GAW5B3K5y5VovaCH3MLqOUZjhRu8a4GEGsGzjeoicRePra1w22nkNK1cxn9Q==
X-Gm-Gg: AZFdTZfBzmKFXfyylt53+RtIbHVjQFED+9mBkq5mj+QWbxm1NfWT/G2iz+KmCF2yPuK
	8RVXp1K3iGroDJewetXDzv8lYd8a4lnxvMKU5ahNhdN6TivXYW0unSDIHDO+ZWFAoc8a2EJhkV/
	8s1/qcoQWXFIqbQTpmvZhR60YmxaAAGHcVdXYU6XgPBMS4nfffBivG7QxKLXNuMqFvfSGq4AXKc
	ql9EEjO8DHmVbAUnNxuNGSZWhQhFQf15or+Ws74pPHEctnKf6E03x41siVxe+aBkFfDUBNqqeZe
	9kUGIPR6OOWngICUvGaMYRwBeWcTtS0h7RkdFWZEYadsI4+DNRh6/qmN973aEx3BET0K2EYWCqG
	CXHNBYgqvyVLDMGH0qySIxh0IiNeRP3Hl37WBuTKGMPG95p6AD0oA7/CUXuauLBt/pmnNkpoM5z
	yrVEtNuTnw+GOscHsxy+/eO12E6e02LYvKbaydM6oEwwDY40RrYvdPfx8ee7RqZxIhk6gzAofFS
	aVHQ2EDBti2LZZMHnT2uwTssY5wO34yXdyX/smK8vQbwYX+BQgHtXFNEzgf2FRTLEH8pOIvtvzT
	zuoUOfYo1P7bdA1F4tgW7WNusOov+fd7bG/1dFYX8AvV+bzSZiC2PZD0+Z3ih8UaNlXrzbMm/94
	S2ZJUUCJqauDVge8vM7hAS6bFKNGHLoMXjxWA+6I45iEmKmsl8GjxpL0YzMjmgLTDdWTdVw4mi6
	vD
X-Received: by 2002:a05:6402:1cc3:b0:6b8:7816:8735 with SMTP id 4fb4d7f45d1cf-6ba37cc09f1mr4099511a12.3.1795261074138;
        Sat, 21 Nov 2026 03:37:54 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:409e:13f1:8f3d:aa19? (2a02-a466-4d7a-0-409e-13f1-8f3d-aa19.fixed6.kpn.net. [2a02:a466:4d7a:0:409e:13f1:8f3d:aa19])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ba370e91c3sm2202346a12.19.2026.11.21.03.37.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2026 03:37:52 -0800 (PST)
Message-ID: <1cf0e772-e5ab-485f-bd6a-d1088e01ad1e@pardini.net>
Date: Sat, 21 Nov 2026 12:37:52 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 0/6] usb: dwc3: introduce Rockchip glue driver
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Igor Paunovic <royalnet026@gmail.com>, Alexey Charkov <alchark@flipper.net>,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, kernel@collabora.com
References: <20261114-b4-rockchip-dwc3-rockchip-glue-v19-0-b79fb5f4b42a@collabora.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20261114-b4-rockchip-dwc3-rockchip-glue-v19-0-b79fb5f4b42a@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_033756_698388_31C56109 
X-CRM114-Status: UNSURE (   4.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 14/11/2026 02:01, Sebastian Reichel wrote:
> The recent Rockchip platforms have a combined PHY, which does USB3 and
> DisplayPort as well as muxing the lines in arbitrary order.
[...]

Thanks for the series! Tested on a Mekotronics R58X-Pro (RK3588,
FUSB302, source-only Type-C) on v7.4-rc3, with usbdp part3 v18:

RTL8156 2.5G USB NIC, flipped (reverse, normal, reverse): 5 Gbps every 
time. Before the series, reverse needed a dwc3 rebind.

Apple USB-C Digital AV Multiport adapter (A2119): a SanDisk Extreme Pro 
USB 3 stick on it reads ~220 MB/s at 5 Gbps while DP alt mode runs, in 
both orientations.

Tested-by: Ricardo Pardini <ricardo@pardini.net> # Mekotronics R58X-Pro 
(RK3588)

mvg,
Ricardo


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

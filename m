Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC8A606A32C
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 11:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pfs041jz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pardini.net header.i=@pardini.net header.a=rsa-sha256 header.s=google header.b=f8wpEOph
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZRNL4huo5D5z6LzMzEHcIO79M3xmias7hJp7Ebx4vpI=; b=pfs041jzpUNVHRl3olnwxul1pN
	Z31LxNXiKLkkn+V00U0Tem+AucVymh9ttTG3K0VxAjYwETVJunhKuZSU3q0ogb/0xw7XG4pO5XK7x
	c9TXI99Wcnk1exjsfWkF6zvBZtWU9uahGnhacbgqpnhnn3MUVkegaTT1/sILP05+Qle+4sQD2CUsx
	blCXwJGXCrElaW2yhNXW8FyelT64ABOLYliWFHI+ryWmsXf/IYDYBQm26uHAV1WfOWv4iNlOq9Vlk
	1lhPw2LTJUq2tH11gVmEpBLOZYiSBIMQxmN1DG98Bc2leKt5ebeVrge174yHHhbkJ1UrRulq5kbC5
	cIHCcB9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjTF-0000000H6fp-3tFr;
	Sat, 21 Nov 2026 11:41:29 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjT6-0000000H6aC-1Tvb
	for linux-phy@lists.infradead.org;
	Sat, 21 Nov 2026 11:41:22 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-c5126505cb3so241816566b.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 03:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1795261278; x=1795866078; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=V/4tBO2K3lzOYZl1l77yELe15RR3PgBFIIRphRTzGfQ=;
        b=f8wpEOphHkD36NcsU/LllGELe6wVv6azWFB4F55DYGd9enYheqVC4x0HsLNhJ5DD3M
         NoWI5E9ndPK63AdVI7TGBBi3jJ8xBeNuh0MRppXowoUbG5ulgQBXStna3g8XJozoU7tj
         lVdiJK3B3N1jt1YSmMBzgmSqem7o+/h0hSoirRYDsT2Vqspor1LEWWJLA//bfOWPmyzT
         TIJWMfl1pmP6yryZK8APGr20A5P2S6QqYUP7C3/uhmwP+o20MYV6EqycxaldNPuSs0sO
         jz1NWig9lTsrBdjMMJl1TFsq+ULgBnWRkemVeTTXgdsy6LN12ywB/NoqluEwW8s8l7sE
         zn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795261278; x=1795866078;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=V/4tBO2K3lzOYZl1l77yELe15RR3PgBFIIRphRTzGfQ=;
        b=l3iLlHRuJJ9yv/YElM/N1PhByQZ4etfseVU4+u5YKtjoCR6AUxWSioXcD+xykUKGHn
         hhbMjD3BSa0uU3P1uG+nMCYuQFbQ88e4ZdlGWF1ZUn7Vekk9RC3PMYXpTI+OkmCYBk3M
         KjCMTVgjGxihYafE/XOBn3FgAddFHmdH8b4xCKKh/+gcecnlfQ+alP5LhrACTI0aFPQO
         uaWyV3nqiFynsoc6ah5d4Ebo2el+mB4DpY3fwug/gGgl9Vt8mPpfnuc4MEAUFBgP4NOA
         3kILlVtW/YT3L4wK5vSGTX15B0T3/9TDMvQxzUN2ygzB1bmfQavC8BAnKiutiDTHzxV2
         O3Kw==
X-Forwarded-Encrypted: i=1; AL+hErEeXNRXI8EPpfoicBqup3KFn2dD6Lah4wP7aimybP+sn3vhlt8vcky4e1QFamKZymnAEfg4q/f3HzA=@lists.infradead.org
X-Gm-Message-State: APuU4Z//jaU9k8W9fZsJLajkisMHuJklWaOmQIZQWW8JXMVrsGSMRZ3d
	BbRcXEPZR29A60TIkY4iFowy82dMEtLHuG8Gg6Fea9JeNH4qwc9IfLx5UJrXreiagA==
X-Gm-Gg: AZFdTZcoQs8nr0oAFHGuqKVZJl1uIe1CRWtcdFtTnbjsWUxw89M7CaW7FQ015rf33vb
	EVfFtnnRC9ivnJNRvsY4tPoUvgeLirhrtoimU/eQhRIaV1rjMRlZ0/tJgFtCJD6pA7D25KuN5EV
	8v/bOBe682Qm7kvB2bysQbwWABjqiELbU24K5UZKYBi2wOW0TtNrxNKNfOwv5Vk5mduaToyaNni
	QnHrktChr3+FxPqPtUMODP2SllEIbo/nfct2mp5ZliF4IfyFmpYFE6/LYfNDqgctulouuDFBk0O
	4KdP2wpMFWZn6EepTLGEMHdQ4MlDBwjPcoazsYGmNJsKT6DRrF39zX1u0RHczI6h16f05oHqq76
	H6DyyjuW4mYMFJYfHwObPev0Vj/ep8yNMJXtZdpnE9251Hx6cRMAXUuYBMPj7Z+rFy2hDrywBDZ
	K/YEXRVK44dGV1cnTLA/JmCUzML3aN4qd1zjb5GjkCWsMbzyOjkqu49jMkKpqCmHcWQY6AyXjjb
	AthU7+IBnighnnk7JpeyOlbnaK/u+gePCe4V+qr1GxTeRkURcmhMsHD5XJd1JDOL4fNw19PEKAt
	bLEW5rnANt1xV4nB51mrdnGkZ8tgh1K8xaltw6uy3BIg8zMOuJLazW8oGUY1yAXY277AGZRsBEh
	9ipJQMpyu9Fpat14gIXIuHdARUQTtnyyLoVmXemjZRGjW1xfevujcL/nEOXUpX/c0+8zU/9T/9w
	xC
X-Received: by 2002:a17:907:c17:b0:c4d:31ad:9dd5 with SMTP id a640c23a62f3a-c513ac86e26mr558143666b.42.1795261278496;
        Sat, 21 Nov 2026 03:41:18 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:409e:13f1:8f3d:aa19? (2a02-a466-4d7a-0-409e-13f1-8f3d-aa19.fixed6.kpn.net. [2a02:a466:4d7a:0:409e:13f1:8f3d:aa19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513ae688f8sm195387666b.25.2026.11.21.03.41.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2026 03:41:17 -0800 (PST)
Message-ID: <8588725f-9758-4261-8766-5af518ec4f3b@pardini.net>
Date: Sat, 21 Nov 2026 12:41:16 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 0/7] phy: rockchip: usbdp: Fix runtime muxing between
 USB3 and DP
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Zhang Yubing <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Alexey Charkov <alchark@flipper.net>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Yury Smirnov <yurymonzon@gmail.com>
References: <20261119-b4-rockchip-usbdp-cleanup-part3-v18-0-fb325e336494@collabora.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20261119-b4-rockchip-usbdp-cleanup-part3-v18-0-fb325e336494@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_034120_416281_BDB995FF 
X-CRM114-Status: UNSURE (   5.21  )
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

On 19/11/2026 20:40, Sebastian Reichel wrote:
> This (final) cleanup part depends on new DWC3 glue driver series
[...]

Thanks for the series! Tested on a Mekotronics R58X-Pro (RK3588,
FUSB302) on v7.4-rc3, with dwc3 glue v19 and dw-dp v12, and with
mode-switch + orientation-switch on usbdp_phy0:

- RTL8156 2.5G USB NIC: 5 Gbps in both orientations, also across
   flips while plugged in.
- Apple USB-C Digital AV Multiport adapter (A2119, pin assignment D):
   DP on 2 lanes plus USB 3 at the same time. 1080p60 on a small HDMI
   monitor and 3440x1440@50 on a Dell U3415W (its HDMI maximum), with a
   SanDisk Extreme Pro at 5 Gbps on the adapter. Works in both
   orientations, and the picture comes back after a flip.

Tested-by: Ricardo Pardini <ricardo@pardini.net> # Mekotronics R58X-Pro 
(RK3588)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

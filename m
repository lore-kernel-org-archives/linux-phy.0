Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B83AE1061B29
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 23:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C173+9/rzSEZqo6RxShBbpslDZnbSOIQlxHfwVzwDG4=; b=qauVniIH4GI+xi
	CEWkOWCXocLMYe2Uu5xNYG8v57pWE+BYc91bx3nn/ABRU6dAPdBT2SUNWqZ/YyHil59rUCJeQDZia
	+RyJJz5TqPB0V2ndvsHWKJBnQU9P3D7Zbaw4QO5AEBG/w6md5RO6EMjkmy9YkztDAxWErs/8t2CqO
	/hCSiI4ilV1kumPZLKmMDP8v7JVCKv3uRlLgVN+y7FsfagsitXiwetl+dh6sVwu+UDxTFIgVgRsck
	PtDMG/Pgc7Ly6volLxrOsOYHn55ln/4RVWoRAT6301p7q5QR0xCV3CDJuqYxdU6bevr3A2xrjFpU9
	frLZ9WFPMbmQUS5gbpOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7M8z-0000000C1vB-40VM;
	Mon, 30 Mar 2026 23:35:41 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7M8x-0000000C1u5-0x82
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 23:35:40 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-43cf7190580so123667f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 16:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774913737; x=1775518537; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t45tnYDWZsG1khbHgAc45VhFz8HmN2CnAvvZjkYxjlk=;
        b=f6wv3PKQWEuY/FCjs5JXvzInz50u2tCzp7LcpK/lorLk7dV3PRxVsJ6/3uu97utixT
         ySIUoScSvKIgrC0dnj9cge/bGOhqJohQbWe2hrSRvCgaI+mXs5LOXKj3lUAI104DGU6x
         mEpDYIDhDdnGSLgAsn5QPRUaIB2pVEvpISj7gT+X0H+fLmAJ0xq8wXCdaNZdcokiMXOm
         FSzk8mJFwRAfvmaNojkbcaPN18NhtCnh3kWrGiAK5Hkc7N10vm/N8P0m4P/tf9VKpMdX
         MuxxzlV7Xf10RdJru8kPTE5jylTfoC8tXEeHRicjZeMoAAse83eSCx03cq48eLPq3P8J
         tWIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774913737; x=1775518537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t45tnYDWZsG1khbHgAc45VhFz8HmN2CnAvvZjkYxjlk=;
        b=JQvA0fAkAApioDec1L5hm2UHs+jjiBtkXUHVNqezKPE2XHQYE0y05A9a3fLlim++6U
         Jp61gVINAdJl4SWHEL8VRy6OkpJTqQJwyQSEGR7y/wzxhkGSAutF2C2esJsFmnHAYAJI
         p+II9nQOVHpphH5U/EVVDSmAdqe97W8xDCFJJV26N7AZbuBnLQD4Vlfp+U7DM/gVEYRS
         O3WpmlXANlyWgkZ0nEllDJb0uaeffctvGB0tgDvUd1fQPibVMfntUDnVf+98COdYzdHu
         s2ynWVAKpx3f7D9XQ/10l+lMBaCEfBEbRzUYSSbDUb6IhGpfNf9oTJ+2RPe4oRKkAZmr
         5eEA==
X-Forwarded-Encrypted: i=1; AJvYcCUOQ1aOZ/LavRI0JXTHGE++CnIMU4/LcmegKSGwpS4TcSmWp92DdPvRz76bvv7opugV/OMxwAGuA0c=@lists.infradead.org
X-Gm-Message-State: AOJu0YzS4zbNgEVFIacHqLQnQ+bTWt2J22/jokQ2ai2pss7jgeJQB1Hf
	uCXtRhhQN3xauvNgVZnmnxLzDBVES9aAnZM+Lvc+SzAklGWVdPltkY0w
X-Gm-Gg: ATEYQzzwBca2lbTTjx7kd6r1edt418/W+nc9TSf0PXTqztYcQ4kqiQY5Pair8Hk/zpW
	Xn9NE9v5d4a8b2Daq/SuG0WjIFT3b1fRs5ccJyC2YgmAnlPQYibywpaFVwl3boMC2L9f0QAz4zA
	sOQVTJAX2MJQ6+iyvUuHjlICsi+EPZt2EXKhc2ult8GDHVEdBPScHSMxcQeRbCFJF4z6zmfNkvM
	H8UvxaxgcuUEhIe1mpZJ3kjnNbR/3U8WnPmjAKzuF9mI/Teg42/ALLih4712tsbYGRNq+WvtUTx
	cTbPdebxzuyYA9i0jM/HUoXB/xkwUcK82dcW9O31MyCOjUecQ+zTlgkiMv28/BFZxJi6j6vj4rb
	k4WHz4Yn3eE1s82kWjazSPMKCz9DYketQU1AoB0f/pI2VJBhcNVpNz9evU0TE2w2nRLR9RDVU/r
	RbfwJcapNgn7AK2UdWoEoKJBKflw==
X-Received: by 2002:a05:6000:70d:b0:43b:45d1:f42d with SMTP id ffacd0b85a97d-43b9ea2bd01mr10281733f8f.4.1774913736851;
        Mon, 30 Mar 2026 16:35:36 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:fc92:d05b:3301:b722])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf247102dsm27956754f8f.27.2026.03.30.16.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 16:35:35 -0700 (PDT)
Date: Tue, 31 Mar 2026 02:35:32 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] phy: hdmi: Add FRL TxFFE level control
Message-ID: <20260330233532.ulnqiqrogezswht2@skbuf>
References: <20260328-hdptx-ffe-v1-0-53ebd5dea20a@collabora.com>
 <20260330085723.4rewkbs76lz3scum@skbuf>
 <f2827d9f-ddba-4fbd-8d1f-a1a2d1b94708@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2827d9f-ddba-4fbd-8d1f-a1a2d1b94708@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_163539_284246_4DFFC7FE 
X-CRM114-Status: GOOD (  17.50  )
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

On Tue, Mar 31, 2026 at 01:56:32AM +0300, Cristian Ciocaltea wrote:
> On 3/30/26 11:57 AM, Vladimir Oltean wrote:
> > On Sat, Mar 28, 2026 at 03:54:53PM +0200, Cristian Ciocaltea wrote:
> >> ---
> >> base-commit: f7b64ed948718290209074a50bb0df17e5944873
> >> change-id: 20260328-hdptx-ffe-a89c51e66904
> >> prerequisite-change-id: 20260227-hdptx-clk-fixes-47426632f862:v1
> >> prerequisite-patch-id: 5c1d442fae39103bb758f54738aff33d2491401d
> >> prerequisite-patch-id: b86f30292308345387d2a6b50949ad040b931592
> >> prerequisite-patch-id: b1335105db9177cb10c64ed1bf0867832e6aac2f
> >> prerequisite-patch-id: 83db6603d13e19f239e89fde2b26366eb0106b7e
> >> prerequisite-patch-id: b534395ad315811861f11859a3946f65c90c631a
> >> prerequisite-patch-id: f9637e57c902f35218cda658397416f84f7285cb
> > 
> > Sorry for my ignorance; who is supposed to act upon this git-format-patch
> > base tree information and in what way?
> > 
> > As things stand today, the build infrastructure we have in place will
> > not be able to apply and test your series unless it applies directly
> > onto the linux-phy/next branch.
> 
> Oh, I assumed that since b4 makes managing series dependencies straightforward
> on the preparation/submission side, there would be similar tooling support on
> the build/integration side as well.

Sorry to disappoint - linux-phy doesn't use b4 to build-test patches. It
gets them from Patchwork directly (as you'd get by clicking the 'diff' button),
then figures out whether to apply to the next or to the fixes branch
using the git-format-patch --subject-prefix string ('phy-next' or 'phy-fixes'),
then posts the checks back to Patchwork.

I can somehow imagine why no one rushed to improve this. While sometimes
somewhat useful, I can see the risk of such feature getting abused to
create a giant cobweb of dependencies that is suddenly no longer the
developer's problem, but passed on to somebody else.

In the future, please submit as RFC the patch sets that you know don't
directly apply, and mention that you're only posting them for early
feedback.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

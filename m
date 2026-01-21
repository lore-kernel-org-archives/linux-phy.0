Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F63EC44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 22:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUKMy1Iquc24uQOG2mNFu5c5k84J3Voli9boetfjDmc=; b=zasK4RZe8jmzLe
	1qfV9yurCpONlA7Eq7aycwskVx0mELS7Zjsjhrrv+w7eV+Y7ufo1KmUFlH9ws/D2iVNXRBMuOyrVa
	iiwMrIwIjXuudUi3InTevxhabXrP3Qzz1F+JJWpjAhYuFGVuOcOESdL/PfTgyl0hKxu90wBBynCr+
	Qtxaevrvcfgwci4BoW2lBJ9Yi8yc/Tc5kyjz/0YDmmuERiHU41Jp8He6qU418nfBglAul9N3VemJ3
	/qUe93ZhUpxLSgbSHV7KTi2NmfcEoPkIq64AMTX0Z+nvs13n5t8UMFbOP6NzDV/soqTinrRte1KPP
	3gg5Bos8sBMbE2CnCbdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vih5K-000000068GM-2zJd;
	Wed, 21 Jan 2026 22:53:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vih5G-000000068FF-1RzA
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 22:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769036033;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UiEPj0ZcSawildEgR+9wJ/AtCxMbPbzcmfyb7UYIQ4E=;
	b=QvKmKZ3e6uwEInWsxGrDTI30CVCEeTRTJJoUAp4RrNnVJeNyXsHOmEMwYWJh5hcG6uP6+1
	OHR24BvjHcmeny9QfbaQDVz2Mhmr1Ur6hAaVL25WOGQfZt/bLR9zQsWIhF0z5p49jb7kj6
	x1cT6H2/RODPArNY4D7n0yktsjELIrw=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-665-KEhXmeSVOrSBfLJGj7BFdQ-1; Wed, 21 Jan 2026 17:53:51 -0500
X-MC-Unique: KEhXmeSVOrSBfLJGj7BFdQ-1
X-Mimecast-MFC-AGG-ID: KEhXmeSVOrSBfLJGj7BFdQ_1769036031
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5014d8b3ae0so8896801cf.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:53:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769036031; x=1769640831;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UiEPj0ZcSawildEgR+9wJ/AtCxMbPbzcmfyb7UYIQ4E=;
        b=OZKKh9YmDNnf5VE0CRxSTRvOOIv0aAlkHaRm9OHsJf0hnOkf//LEmJH63dNB+GkAwd
         RwymPArp/vBCrV5i8QXmlf+1Hj+D/SfU/S7LZ57CgtnhyMYgtpl5c3g4NhG0fK5DclT1
         l0wyjYBFGLL0bfllncL/uDAJyav7bkQXMFFYj4LGNCJ+XY2YW80sf3NtGdEIzoW/aNiB
         ybnoUy46BKZ6ez369mNBA+ar7+AjN124wqq3IXZMM5nkerU6L2xpzk4M+LNNu2/2sc7O
         iv10am4gFuz0bmM2waosjvYGjfwSFNBli5HTLB+z/qDb+5EmxYdCY63bELGCMgo0CQSy
         HNAg==
X-Forwarded-Encrypted: i=1; AJvYcCUJBLYGqIQTvgyEVIRqKbkVA76hHw0hmhAxn5k0UQlqU9+Bq/PNjib9gnhQrUNU7VIJJEz5ghxFymU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwAc6ssgxsnUvuZUNl0ODIdks/5GxJ/0kUSLJ7TwmHODGG6fq/
	lXcxMPniT/JEK+jpXhVV4MQBKpLqcsuVXVNdJM86t+WfC/Qt7wlaAzuGV/qsnx6lkDCTEt8odJo
	wWvq3Mp9aCSx1XZfEMZ3a+ltCSHvKBdSXKXsNRbI4crUsPjC2TA/bwOPPgRC6bUuHs/c=
X-Gm-Gg: AZuq6aLOLz16gzacFZ4UiPybe9bn98jFmm0CBYok4OTwswJOHuzzJc+rrghGUVgLMzj
	VO/X0fC7StKBHgHWmqvkiDp7GU0BLh1CaC1DZHsvl8g3s+Yp9f3C/OTXYm+6z2hpeFEZ1AhgA1x
	g7VKq7+OpqWo7vYl+VWlneHzheX2ktJYRoVj8yz1ecvCCrEu5LrTOPI0uaCE5b0VOGklv8+UccC
	d2zglbBnEw+YXzeEghTBzwoyXIp9WjULWdz7RLr2TdgW5VT0fD19qIuoDErDJEj5eMmt+cxFckU
	N1ttRxbEPt9S9d43ws0DVH540keoQEEy2jNZLZ9F6BJSgwh8Uk7dMqcP33fOjHAB4o5ESSiC64D
	TUkUvE6Sg
X-Received: by 2002:ac8:5fca:0:b0:4e7:2210:295f with SMTP id d75a77b69052e-502d84b0ca5mr87957441cf.13.1769036030820;
        Wed, 21 Jan 2026 14:53:50 -0800 (PST)
X-Received: by 2002:ac8:5fca:0:b0:4e7:2210:295f with SMTP id d75a77b69052e-502d84b0ca5mr87956771cf.13.1769036030338;
        Wed, 21 Jan 2026 14:53:50 -0800 (PST)
Received: from redhat.com ([2600:382:8125:73a8:e201:8ac3:bd7d:6acd])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1f1abb9sm117138811cf.30.2026.01.21.14.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 14:53:49 -0800 (PST)
Date: Wed, 21 Jan 2026 17:53:44 -0500
From: Brian Masney <bmasney@redhat.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>, sophgo@lists.linux.dev,
	Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <mripard@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	linux-rtc@vger.kernel.org,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-actions@lists.infradead.org,
	Keguang Zhang <keguang.zhang@gmail.com>, linux-mips@vger.kernel.org,
	Taichi Sugaya <sugaya.taichi@socionext.com>,
	Takao Orito <orito.takao@socionext.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-arm-msm@vger.kernel.org, Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Michal Simek <michal.simek@amd.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 00/27] clk: remove deprecated API divider_round_rate()
 and friends
Message-ID: <aXFY-FxqeBv4BsHd@redhat.com>
References: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2lHMJ9cuioLekBb2cD1xrsQw1rq98JKprwEVAVaDmeg_1769036031
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_145354_488880_7B127596 
X-CRM114-Status: UNSURE (   9.59  )
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

Hi Stephen,

On Thu, Jan 08, 2026 at 04:16:18PM -0500, Brian Masney wrote:
> Here's a series that gets rid of the deprecated APIs
> divider_round_rate(), divider_round_rate_parent(), and
> divider_ro_round_rate_parent() since these functions are just wrappers
> for the determine_rate variant.

I sent you a GIT PULL for what can go to Linus for the upcoming merge
window from this series:

https://lore.kernel.org/linux-clk/aXFYU324yQ6uBmk0@redhat.com/T/#u

Thanks,

Brian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

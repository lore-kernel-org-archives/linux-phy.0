Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11747C5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 13:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jE4QLnmhQ/mpkWItKUAdANt/0B8d+pYE4xQwVkBIIwU=; b=lq2tfFGkk/3Sbx
	kOuAViptcbV74NGMy3X8PpTc5tXghvFpT0Sk7ECZPwjr1SuQ2NWViVAtyhthN0rOFkUPCjADbSCIe
	/HJMIyIVb1p9784x+P8P24OMdtKpwFM2AlXbjm+7XRrofJe2jnYNZgplB8CDYhnbo+HXxP9uZeUSh
	ZmsJTujQUQPa7WRAee67zJWCgRBYMS1xeiiS1D5T8uMGhIt/c6YuHE6fy0f3RMJXUhtlTW7pSp7nT
	GaoXaFzJfpkJLSEa7OtxzLkUHnh3ZGLe9rgF1n5Hq/HUzwhm1jRIFTi7BqoOU8tKcAxDThD5cuhUU
	2BF+YFGckn003xq1i1ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9OT-0000000GKZe-2TyM;
	Wed, 12 Aug 2026 13:53:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9OR-0000000GKZY-0VX9
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 13:53:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DAB7F41311;
	Wed, 12 Aug 2026 13:53:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABA591F000E9;
	Wed, 12 Aug 2026 13:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786542798;
	bh=lscjbvhu4sZY3Vq6UVhR28UHnVjIyganW1V7Q5v5k50=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DsBBYIi4YlKKemyZgZt10pE6owlC543boMsGE/3SZ171NrzLYeKNxXJRB8FfTa9W3
	 Euae2i4B4rI4SW4nh+JuR8IoIl6iCcgq3dyYPhEgRCQzyZ/s/8K/fHb9l5Zs1La9iu
	 UHiG9tE41njuRc2Fc594N6amZOW5JLNzTmUaVYvedBS0eaDbB7OevQnbmuEzSzaR2o
	 AEZqtpF9OVX2gnwhXgtvxUhLDCQBrBfn0nh7Bt/PPWeRCdlM/WLdpI2SpwCdcfx9Fk
	 0bdAFh75DnI8A9NcHFwTHys5khL9jW/SSnqQkvZX7zf80Zx70n8mq7kpDvpn6hkXnm
	 pKulT/tkgPYhw==
Date: Wed, 12 Aug 2026 15:53:09 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v9 4/5] phy: qcom-uniphy: add more registers from display
 PHYs
Message-ID: <bhvd4pv765rbog6wnj5i3log7dzqggtlibjnqeakj7rqibk4bg@wu2asltvxsuu>
References: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
 <20260513-fd-hdmi-phy-v9-4-ca98c72f1f9f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260513-fd-hdmi-phy-v9-4-ca98c72f1f9f@oss.qualcomm.com>
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

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMDk6MTQ6MDdQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBGcm9tOiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFy
by5vcmc+Cj4gCj4gSW1wb3J0IHJlZ2lzdGVyIGRlZmluaXRpb25zIGZyb20gMjhubSBEU0kgYW5k
IEhETUkgUEhZcywgYWRkaW5nIG1vcmUgVU5JCj4gUEhZIHJlZ2lzdGVycy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4g
UmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+
IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1
YWxjb21tLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

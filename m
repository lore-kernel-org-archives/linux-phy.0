Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3A2C3DA4A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Aug 2024 14:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkbGqgO/ZVcYCLBebttjGNIbwlYvnNOpw7rXV90IeHI=; b=t1fO3rMZQf0QWx
	FkeBrVyMYqhIZZ2AhbjK6eJ+Vqno6aJpTQgHZkc6UUzloPoCgzD6hGHS8wFVlRvmy4OBepCJ4sdsG
	hyYf+o0gRbeyqQCkb5QbBcNi+ff+YsUYSk0tm1NCQ1wpJr5U9AqAXwVbLAf8m6HMjIAIvFY0RwKUQ
	xxri1jMpNv5QothY8EB+QMXV6vxsXC1DLDZEC57XpTBhLAvdJHnSD2nSC0cTUjQ6e5XvYB4NUl5uF
	pzOTvodY7Ob2J1jUSceziPo0sBaNfYqlZid8TcsIfc+eDcU+ML4Wooi3Iahi2nvJ25LkiEz4CcjAd
	3R4GrAlCXu+kAdWHxO/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seFKA-00000007Mcv-34kg;
	Wed, 14 Aug 2024 14:50:06 +0000
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seFK7-00000007Mc1-36Cl
	for linux-phy@lists.infradead.org;
	Wed, 14 Aug 2024 14:50:05 +0000
Received: from phl-compute-02.internal (phl-compute-02.nyi.internal [10.202.2.42])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 469111151AC4;
	Wed, 14 Aug 2024 10:49:59 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Wed, 14 Aug 2024 10:49:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1723646999; x=1723733399; bh=aXCB4HFOam
	529ahXCl29lsxxGkiRww5P27fIzD/jqlg=; b=T8+uKAwyDA3f5VLtNuISyHwzfw
	hXVcoFD76BX6hy6Gx0meqeETEbnZRhRa1Mzib4faoS9bjck+jYQZIZB9L0EslfjL
	u/2i6c9WQt/ndamEktF0luAHIi8CDG1uSUXkLo6zeofjX+EwhqKeBV7oeMZC4AE8
	gfS4VsZy5Q95ohEWc/SCAzSGTyqNWo7kv3HuCMNRT+JqD/uY17Cj0whiQHW8hCwu
	Cb68TvMjyBBeIOGpxvtU11xQ1rWjMsyaH3568m0FkZIsKPoz+Ylh8cmwRsvLGYig
	sCCKzYFEL0x+ON5Tx/7zFY+G+6fizVdiQRHia3onep8M7DuB/Tw+H64J+FQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1723646999; x=1723733399; bh=aXCB4HFOam529ahXCl29lsxxGkiR
	ww5P27fIzD/jqlg=; b=i9hs8IQ/0GjERXDFnPKvcXkn/+Jc+kkP+b9izrA9v4MT
	P36kBGXJoO/dFA5V+fPz5Va3EAttXiaVQYbzeo39jvEEcs4PtlGLQNptbPUdbX2z
	ShZgUQjBUlURC6Ht3gA2+DQUhGUcKqOaMdH9ISBBzlr72lFCqdv3Htu1uXcP2Y40
	nUEbgQV391ZgDh7hcfWYfXs3MGrdwUmhCKHuPMXgMza4uVzsGdlcj6Or3SvOfLzq
	WkNGPGWHWAIZ1mANC4Ad/Lf0iVZLRk+KILQikbbR9CQSm95wiOZhIOZkPENvZYVY
	F3Yo2DzxjNG6lEAd6kkaj34Qt1UMtxQmqXAY8/Jdfg==
X-ME-Sender: <xms:FsS8Zr_SsSEWOCDdoympLVVBH7mfR3B7aK-5YogLr1-XsjOydFepUQ>
    <xme:FsS8ZntxGE5sLYtwFEv4wwIajSzyO10DhFHOp9XN7C6FufBJP0ig0PpQNVFJilnu6
    mbEHSAWPzVvsQ>
X-ME-Received: <xmr:FsS8ZpArIXVgruZSpDrk1NASDpctrnL6aIG9kzU_1GiB3Tp4bG_7px6V1DyILUbARGGIaPqqZtaqIfWyJa2k8k4Xmmk39WX1qJK4XQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtgedgkedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
    ucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrf
    grthhtvghrnhepheegvdevvdeljeeugfdtudduhfekledtiefhveejkeejuefhtdeufefh
    gfehkeetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epghhrvghgsehkrhhorghhrdgtohhmpdhnsggprhgtphhtthhopedukedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtohepmhgrkhgvvdegsehishgtrghsrdgrtgdrtghnpdhrtg
    hpthhtohepvhhkohhulheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhishhhohhn
    sehkvghrnhgvlhdrohhrghdprhgtphhtthhopegrnhhsuhgvlhhsmhhthhesghhmrghilh
    drtghomhdprhgtphhtthhopegrghhrohhsshestghouggvrghurhhorhgrrdhorhhgpdhr
    tghpthhtoheplhhinhhugidqrghrmhdqmhhsmhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
    dprhgtphhtthhopehlihhnuhigqdhphhihsehlihhsthhsrdhinhhfrhgruggvrggurdho
    rhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrd
    horhhgpdhrtghpthhtohepshhtrggslhgvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:FsS8ZndY5vkRgfmmAwnOAA_sea-Yu7TIhwJubO4hmojHB3vCWSU_MA>
    <xmx:FsS8ZgNZhlZr7TEKLLKP-1mquZ8g7x3Z8ER9R2AW7qR4ICSireJaqA>
    <xmx:FsS8Zpk017SnqFS5wQrh_l1ooigZfbw_CsTUFnmbQIOQvH4xBlLZYg>
    <xmx:FsS8ZqtsjPYin1b1m0EtwKu9w5QfIAAEn5avyHwJ_QPrd6Dm9u-cgg>
    <xmx:F8S8ZrH0CbcgWDon6AYMN2l07FVDVbjOUnXHEV27j_naolyQocNExvbn>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Aug 2024 10:49:58 -0400 (EDT)
Date: Wed, 14 Aug 2024 16:49:56 +0200
From: Greg KH <greg@kroah.com>
To: Ma Ke <make24@iscas.ac.cn>
Cc: vkoul@kernel.org, kishon@kernel.org, ansuelsmth@gmail.com,
	agross@codeaurora.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: qualcomm: Check NULL ptr on data
Message-ID: <2024081448-garden-module-40f7@gregkh>
References: <20240814141125.50763-1-make24@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240814141125.50763-1-make24@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_075004_239166_DDD0398E 
X-CRM114-Status: GOOD (  14.11  )
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

On Wed, Aug 14, 2024 at 10:11:25PM +0800, Ma Ke wrote:
> Check NULL ptr on data, verify that data is not NULL before using it.
> 
> Cc: stable@vger.kernel.org
> Fixes: ef19b117b834 ("phy: qualcomm: add qcom ipq806x dwc usb phy driver")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
>  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> index 06392ed7c91b..9b9fd9c1b1f7 100644
> --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> @@ -492,6 +492,8 @@ static int qcom_ipq806x_usb_phy_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	data = of_device_get_match_data(&pdev->dev);
> +	if (!data)
> +		return -ENODEV;

When will this ever fail?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

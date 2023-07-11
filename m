Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1FAEB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 06:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Wq2oHj+Dj10tcvOSUG94xNgRlhi4jUgwSOsnFk67Yo=; b=ciel9KdSS6JU9K
	R50GPBTY7xPMBzdFzTxxjkTkwzZSeL6MGqhQIH16dlfexXnqfHsO+ZCPqpxOAq3Cp94xz06saAear
	e4IidvfOhdDUUzmn68b/S+d9UNVE3kmUPSqb64bNRh95j3Ayl+7s3gn+oKYRqS2DJzlRVR1Zm05m8
	+LLY6xkTPUQ7FNI4t7vN1MC8Oh2GbJUKhXy5FRQedulJdj063dt40+4GJaFxcnTXfbjWioFS/oNww
	/9sPPxXzWfpWcCk7Ta335ZyHqjJccRBXc0PJ2OHTtpEcYWbCm1b3y727oDO0qSscX8Xqfx3L3/mBf
	AOfO7ixxV1j9DuYWLxeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ6pp-00DsLX-07;
	Tue, 11 Jul 2023 06:26:53 +0000
Received: from mail-vs1-xe36.google.com ([2607:f8b0:4864:20::e36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ6pm-00DsJw-1H
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 06:26:51 +0000
Received: by mail-vs1-xe36.google.com with SMTP id ada2fe7eead31-440afc96271so1927233137.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Jul 2023 23:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689056807; x=1691648807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=14zvxAU7eiVc9OsMFSTax2qAuXB3wquFjwuS7Lf6Tlw=;
        b=gEslKzmGi76sa3HPix8sv8lFIKh/IchSUQMngoaBtGjwNKvRZZp7VmMQTbc6e03YKU
         +ms0jiXPFnyWAn93cwscaBrQJBEE5YyK7Had0AR5R7C7z4NNJnA1RAOtVTenOX0jiEmz
         kw4RrrPaVEyn8FpKME8aRqtX/eaGQyUwYV4uE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689056807; x=1691648807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=14zvxAU7eiVc9OsMFSTax2qAuXB3wquFjwuS7Lf6Tlw=;
        b=G3pYEpVMosZTtDpRt7zboCua4voE8cjHM1eGiFLN8Q9KQSTZI0HJFSIdIeelC/QOYe
         2CVqYlNB0Klr+QE5P3wNhYXp9oMWXMFwubJRkDDoSZ+l5dMzxVwDtBwhaS3RAIrw/5lA
         3XXFr0JvjxITPZ+xUWaPetEHFMPthamiezcRz7HjeOroJDkdXr7sc9ASgfV595zQnJYE
         uF7KznIUA2kK7WbQthBIMxPmMDqEunkAruow8HRqA3kjnZMUAolq/kObMuLyJ84q76cb
         WMO65bCDvEGffoVNDRnmvxmDhvhEu4tCvJewXiv5Q7A2Ids6bOxNp9n6a7rov0c7uIyx
         zcjg==
X-Gm-Message-State: ABy/qLYCwpal/eBW009xt27XSep+liPhEUsBSnQWvMYl5kPGAozWokJP
	2c9u6eVz6pV2qCvZ71XEhrfDlGDQ4bBihyQe7S7iVw==
X-Google-Smtp-Source: APBJJlHMaEnbxmt4E425Igz5HGD3wCNh0BoMyvBAaMvai+Tv83dzAu4AeO63cdOGIykZU4jOxYPixceOqCzy6e8qkLQ=
X-Received: by 2002:a67:f851:0:b0:443:66c5:a4e3 with SMTP id
 b17-20020a67f851000000b0044366c5a4e3mr7465305vsp.15.1689056806767; Mon, 10
 Jul 2023 23:26:46 -0700 (PDT)
MIME-Version: 1.0
References: <3c699e00-2883-40d9-92c3-0da1dc38fdd4@moroto.mountain>
In-Reply-To: <3c699e00-2883-40d9-92c3-0da1dc38fdd4@moroto.mountain>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 11 Jul 2023 14:26:35 +0800
Message-ID: <CAGXv+5FcBapQSOQUU6c00Jirx+Zn9KADP2cEj9WZSs_ABiCm9g@mail.gmail.com>
Subject: Re: [PATCH] phy: phy-mtk-dp: Fix an error code in probe()
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Markus Schneider-Pargmann <msp@baylibre.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Bo-Chen Chen <rex-bc.chen@mediatek.com>, 
	linux-phy@lists.infradead.org, kernel-janitors@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, Matthias Brugger <matthias.bgg@gmail.com>, 
	Vinod Koul <vkoul@kernel.org>, Guillaume Ranquet <granquet@baylibre.com>, 
	linux-mediatek@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_232650_433294_26231791 
X-CRM114-Status: UNSURE (   6.91  )
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

T24gVHVlLCBKdWwgMTEsIDIwMjMgYXQgMjoxM+KAr1BNIERhbiBDYXJwZW50ZXIgPGRhbi5jYXJw
ZW50ZXJAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBOZWdhdGl2ZSAtRUlOVkFMIHdhcyBpbnRlbmRl
ZCBpbnN0ZWFkIG9mIHBvc2l0aXZlIEVJTlZBTC4KPgo+IEZpeGVzOiA2YTIzYWZhZDQ0M2EgKCJw
aHk6IHBoeS1tdGstZHA6IEFkZCBkcml2ZXIgZm9yIERQIHBoeSIpCj4gU2lnbmVkLW9mZi1ieTog
RGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPgoKUmV2aWV3ZWQtYnk6IENo
ZW4tWXUgVHNhaSA8d2Vuc3RAY2hyb21pdW0ub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D1C3D65553
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 06:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51+Wf9MgkOmOv27xKiQzX2JzDJHBw4CP1+OmjOwr/3w=; b=IUBjLGdhU6zJ7x
	Cb1qxX+PXn5RbnU263sY0HmSBWaOToQ/u45MUNEaDqIYdC0QzXL61UGYDGR/cfgBuaQisl9wBGqAX
	YSAimkry6nYyqguvq8bR33CVLsMBRtGgA5WQJjqz6BeEsgUshPXgb8KQW5nhF5kaOQvrfQi75f1d9
	LF0PJjyjd3KwTuzHMiWUxbfr4xvjbYffj1QC9a6ypUkaiUeJjRlohtDZIMM26f+5b1IUd2CjItgZ3
	+YAxCD32l7LHwM16cSEBf1fwaNHEIfNz4k+PfOsLOAUXdtO2seTdUQMa9iTBPl9NX2PnHCZEdJkGa
	7z9airARYFCWgqI/WWTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGXy7-0000000EnVS-15BD;
	Thu, 28 Nov 2024 06:25:39 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGXy5-0000000EnUb-06bt
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 06:25:38 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-434a8b94fb5so2714515e9.0
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 22:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732775135; x=1733379935; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=dYPE4ZNCJFy6FX0sE9ClVhGv4Cf/dafDkKNJVsMswuI=;
        b=iGZ5UgMoF02FHi4dZ/fGzkwHyBHo+b6euxEMco6qZbMpAlE4YQozw65i1awvMIdjZh
         Yfa8Tw2rt8sNmBSRlZz+5YpOi0CDw1VEfmxfEsHTtr2w6/dTGbP+0prT4ZHOhn41qMfS
         QuYjp7MtFxLEEGCpvGvH61ni5RbwcgJel0uwHuJ0DNbR6zak+HtYihO4eyeyQAOLoUmD
         gAvMOXwQJxJVTE2eraKke5k0QHV4tHuqCohQVfegoAEVlSNg/hLNI3xbHNriGfkh86Qy
         9UhhD5Vgn+iA3Pz94qgXC6UhD9SSvUPlHDNgQ+J1bFnL0+lhmM/R5aubKE/HERNUrTNo
         C9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732775135; x=1733379935;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dYPE4ZNCJFy6FX0sE9ClVhGv4Cf/dafDkKNJVsMswuI=;
        b=Yx8kf4q+u2bFweJm73shOYriDzwqFbuHapwxOaNhxarSBh78Lxb5bzzuM9WBPBGSiw
         9QRwBxhQDAHeiSkEvnQgt9+ZP41+eBavmf3D5N9mRLIUDMJVYoEWnj9+uVbJN0LdBQ9y
         ZKM45aZ57oUNHmVFjBvpof8h20evioQMtAeMybSo0q5UTgH4qKq8xYkIdy6YHZ3wvcAF
         2QmNqESYR5gr4yHNTZpLUHE4MOq26MrxPtWQZ1IkQlfsjinkuHU9Tiv49nOptuaDjRVo
         8IUsMfWLjUC5jeIvIehhVvcBnbL2+iyssisSg08nKucc0PRY7lnXwycQT4fEUwaY1NM7
         eNuA==
X-Forwarded-Encrypted: i=1; AJvYcCWHCzpuqWZitUwLUVqq3UG9fpFyWmWA8zP2cncE0Eyuc/tfMsApnBJg9/P9yQ7IogO+VhvhOm5nmLs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQ2S2iGAq0vlsUM6Zobn+JhpuzdZzWXSrkRFsNKayieulDEAEv
	luuA/jeR1STMUgsp+OrEFF5R1yuBBt20ZlW5uqju7R498w7mnk94YO3NQqdoYNM=
X-Gm-Gg: ASbGncusloFiRveFhMd4/iZOpHs9m+nrGrd+4O8fmA5u1cpNLusVvjRBNIVzCLnrF68
	1UgcbyJJzcul5LYlsudwAj4YPF8BBtFfc8GkVGgJTuzsNnjn1LRAiTCiytKMR7x16sp5jl1REDd
	IsJnwoKHq6aOzBQJ8gac7jL2zsbGE8pcBO4u5NVsrvODg6lUyY/IXlrZ4ADCJGdA1K0OzlZhW1f
	kUW09iubAWqEs9I2kQL/msMwG8MxfejK7xUq+Jk9joT2SUAUlejU8s=
X-Google-Smtp-Source: AGHT+IH6Ml7J+veNZgcHRluAVpujI8NQLzYAgYOdmWcaTC51mp1SAFlDYpCulVDkM5fF9/EPeYf0EA==
X-Received: by 2002:a05:600c:1c0a:b0:434:9fca:d6c3 with SMTP id 5b1f17b1804b1-434afb9efa7mr14137785e9.9.1732775135356;
        Wed, 27 Nov 2024 22:25:35 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd2db0bsm775126f8f.2.2024.11.27.22.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 22:25:34 -0800 (PST)
Message-ID: <8e11e1c92d81fa39a2881086dc58f6262dd719e0.camel@linaro.org>
Subject: Re: [PATCH 6/9] phy: exynos5-usbdrd: gs101: ensure power is gated
 to SS phy in phy_exit()
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I
	 <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Szyprowski
	 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org
Date: Thu, 28 Nov 2024 06:25:33 +0000
In-Reply-To: <82f94ea4-2533-4ebd-a9e5-96ed64bfbc05@kernel.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-phy-v1-6-1b7fce24960b@linaro.org>
	 <82f94ea4-2533-4ebd-a9e5-96ed64bfbc05@kernel.org>
User-Agent: Evolution 3.52.1-4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_222537_119982_E84CD5F3 
X-CRM114-Status: GOOD (  10.86  )
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

SGkgS3J6eXN6dG9mLAoKT24gV2VkLCAyMDI0LTExLTI3IGF0IDIwOjQyICswMTAwLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDI3LzExLzIwMjQgMTE6NTgsIEFuZHLDqSBEcmFzemlr
IHdyb3RlOgo+ID4gV2UgY3VycmVudGx5IGRvbid0IGdhdGUgdGhlIHBvd2VyIHRvIHRoZSBTUyBw
aHkgaW4gcGh5X2V4aXQoKS4KPiA+IAo+ID4gU2h1ZmZsZSB0aGUgY29kZSBzbGlnaHRseSB0byBl
bnN1cmUgdGhlIHBvd2VyIGlzIGdhdGVkIHRvIHRoZSBTUyBwaHkgYXMKPiA+IHdlbGwuCj4gPiAK
PiA+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5v
cmc+Cj4gPiAtLS0KPiAKPiAKPiBJIHRoaW5rIHRoaXMgc2hvdWxkIGJlIGFjdHVhbGx5IGEgZml4
IHdpdGggY2Mtc3RhYmxlLgoKV2lsbCBkbyBpbiB2Mi4KCj4gUmV2aWV3ZWQtYnk6IEtyenlzenRv
ZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KClRoYW5rcyBmb3Ig
dGhlIHJldmlldyEKCkNoZWVycywKQW5kcmUnCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

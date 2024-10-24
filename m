Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78CC7CE8E96
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 16:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNeWUg8unUlNf4aA615iTO+dyvFE9xsxkgCdGaBWVmc=; b=msY380KvXdMyZk
	uqkL8uej/2BFUirBqli57yquHf0Ep+paNHvt+vUs1aJoe/6ZkNNpKOITpADddUt5UeflZLBzE4XrY
	z2JKD3WObOZrvqmBZAkhITCIGF6nSDPYAg+cztvFG0FtJ7bTi2J/FbzFsfN+cKpv9xGAtRmsY6NN/
	5kzYs8qs0/vLfXRg8B1E7v1p0hzfXckiUd08KOUrljIrt+SQ9VluOFP/mJrH7uUL06k+1vq4/MJbR
	pvlaDS5UUasXeK2bRsJTWN2REYjPnygCBYZ/RFIlv1EV9G9qoJTPdU0zgbSg3j+puTDG+G0+BiBn6
	TXTL+yCgbFE6aJZoA8+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4139-00000001AUQ-3B49;
	Thu, 24 Oct 2024 16:51:03 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t40y8-000000018va-33l7
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 16:45:55 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-71e93d551a3so839636b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Oct 2024 09:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729788351; x=1730393151; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sbcx/f+avMo0nfnfoFrvHy0s7zMVYb5RcXeOKVfhBB0=;
        b=kAmEBD32H4nk51HvIdrW0PaqB+CI41/mad8dzHciF50dDrihiFZFYDktN+yJkG7Z+C
         F/WYa0xp2SPvdX+42dn0rplsfV02+WiXakbS5gbdJ+dW2rgV0WKoVkGNr8u4knNmh5Dg
         oZpEOkli4U8xJXzCch8quoepD/n8x6Q2Xc2Zt37mcEUYZV1ZawxEhYcs7hWcFHFzKnYd
         Hmcd6hSFaAYNCAngNQaTzYfeORgV8XyBDz7jbn8dyVtVHsm85LvIF3owIgE8Mza5vNGy
         YyHBcOyN9HmXWmkyoP6RvVfRZYdk2/PPFPXX5Phx1kKC3C8upooILvNg3dCx6tCEIjhG
         Nqjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729788351; x=1730393151;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sbcx/f+avMo0nfnfoFrvHy0s7zMVYb5RcXeOKVfhBB0=;
        b=CKalaFyuoLjcvXbw5YHzZ2H2YqyBuaIYnvGGoDQii1NEiqUnirQh6rTbmSI7k3/dqh
         xLPEXMH05NVqPIjkxWBTXblGi+algCLfuoWOK9l5XgsuBFIaySYcZ3E53k5/lU1gBxve
         +ppfmGqfGcnn7hhNPvZpTzAt76HMbg7+VnRDHJjizkZdCDYpjrYaCs7/61BXkGdwbeCK
         3GPs5q3w/iZoYpFRdd6BVKilbF+rBVts+CO6AJeyv8OIWd4X6A+u/dUG4pM83TEOW1G3
         /B/clTn2xEJiujffQ7rkHW7QkKIiPtsEsKLyIE5ao8NEOLsDnrxiL4bFUIccOHf8+ya9
         tYiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWc1uvLoFRq2AgcGY5QCeLm0y6neXOb7z+E2JKzg439qb6YCiUWpz+Ze0KM2lDK4ZYAhsPOJ1V1030=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3s0UMDAb7ba65pao1plTtQN/kjAZruuRQmm96hICO79DiQK16
	XSa4+x4IvdUDe3uAo6cUjkUmLkjmxko4IaiFwlp+DBetx6FUJwuQ0LTC0clA77ksy68mNE0T7Yd
	+Ws8eEpWD88x1JtA0De1T4MtUXkU2/ZeVlJ5L
X-Google-Smtp-Source: AGHT+IGyVGhrIax31DbYyaNPPps689qKUUGZ/dBmIonlf0Ms5Q31B+FIXf7PnrvX0k/Y2NDzzkEVUzrdywoXgv6bmrc=
X-Received: by 2002:a05:6a21:9d91:b0:1d7:1277:8d0f with SMTP id
 adf61e73a8af0-1d978bd6450mr8093124637.48.1729788350739; Thu, 24 Oct 2024
 09:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <20241024061347.1771063-1-saravanak@google.com> <2024102457-manager-counting-ff68@gregkh>
In-Reply-To: <2024102457-manager-counting-ff68@gregkh>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 24 Oct 2024 09:45:10 -0700
Message-ID: <CAGETcx_BD_G3oOHvT7aRr98Ag7-XvrMX=NW_wm9Cx9M5+qr-aw@mail.gmail.com>
Subject: Re: [PATCH 0/3] A few minor fw_devlink fixes
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	=?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_094552_782739_64AE09B8 
X-CRM114-Status: GOOD (  18.06  )
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

T24gVGh1LCBPY3QgMjQsIDIwMjQgYXQgMTI6MDjigK9BTSBHcmVnIEtyb2FoLUhhcnRtYW4KPGdy
ZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPgo+IE9uIFdlZCwgT2N0IDIzLCAyMDI0
IGF0IDExOjEzOjQxUE0gLTA3MDAsIFNhcmF2YW5hIEthbm5hbiB3cm90ZToKPiA+IFByb2JhYmx5
IGVhc2llc3QgZm9yIEdyZWcgdG8gcHVsbCBpbiB0aGVzZSBjaGFuZ2VzPwo+ID4KPiA+IFBTQTog
RG8gbm90IHB1bGwgYW55IG9mIHRoZXNlIHBhdGNoZXMgaW50byBzdGFibGUga2VybmVscy4gZndf
ZGV2bGluawo+ID4gaGFkIGEgbG90IG9mIGNoYW5nZXMgdGhhdCBsYW5kZWQgaW4gdGhlIGxhc3Qg
eWVhci4gSXQncyBoYXJkIHRvIGVuc3VyZQo+ID4gY2hlcnJ5LXBpY2tzIGhhdmUgcGlja2VkIHVw
IGFsbCB0aGUgZGVwZW5kZW5jaWVzIGNvcnJlY3RseS4gSWYgYW55IG9mCj4gPiB0aGVzZSByZWFs
bHkgbmVlZCB0byBnZXQgY2hlcnJ5LXBpY2tlZCBpbnRvIHN0YWJsZSBrZXJuZWxzLCBjYyBtZSBh
bmQKPiA+IHdhaXQgZm9yIG15IGV4cGxpY2l0IEFjay4KPgo+IFlvdSBjYW4gZG8gdGhhdCB3aXRo
IHRoZSBjb3JyZWN0IHRhZyBpbiB0aGUgY29tbWl0IGFzIHBlciB0aGUgc3RhYmxlCj4gZG9jdW1l
bnRhdGlvbiBpZiB5b3UgcmVhbGx5IHdhbnQgdG8gOikKPgo+IEJ1dCB3aHkgd291bGQgdGhlc2Ug
bm90IGJlIGFibGUgdG8gZ28gYmFja3dhcmRzPyAgV2hhdCBjaGFuZ2VkIHRvCj4gcmVxdWlyZSB0
aGVtIG5vdyBhbmQgbm90IGJlIG9rIGZvciBvbGRlciBrZXJuZWxzPwoKRGVwZW5kaW5nIG9uIGhv
dyBmYXIgYmFjayB3ZSBnbyBpbiB0ZXJtcyBvZiBrZXJuZWwgdmVyc2lvbiwgaXQnZCBiZSBhCmJ1
bmNoIG9mIGN5Y2xlIGRldGVjdGlvbiBsb2dpYywgZGVmZXJyZWQgcHJvYmUgYmVoYXZpb3IgY2hh
bmdlLCBldGMuCkFuZCB0aG9zZSBwYXRjaGVzIG1pZ2h0IGhhdmUgb3RoZXIgZGVwZW5kZW5jaWVz
IHRoZW1zZWx2ZXMsIGV0Yy4KCkhlJ3Mgb25lIGV4YW1wbGUgb2Ygc3VjaCBhIGJyZWFrYWdlOgpo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDEwMjQtZml4dXAtNS0xNS12MS0xLTc0ZDM2
MGJkMzAwMkBtZWRpYXRlay5jb20vCgotU2FyYXZhbmEKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

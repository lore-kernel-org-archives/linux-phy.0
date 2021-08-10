Return-Path: <SRS0=zCth=NB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C583BC432BE
	for <linux-phy@archiver.kernel.org>; Tue, 10 Aug 2021 13:27:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84D2161058
	for <linux-phy@archiver.kernel.org>; Tue, 10 Aug 2021 13:27:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 84D2161058
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnL6ac2rhBSXi9pwGE8vzij1JTN6h+VmT/kZGdk7Gto=; b=bONmKgUJt7vs9T
	gg3q0sAVyDQVtlD/WmBGIeoaKp8h3N5r+WpfOV7rYzPpSTvVSe/XEzA5p782pmiQXAwRmkEjX5DX8
	Fle5iCZwwafjeJHfyiQYnixlg4Sfd8lIKgmEeHB8c3DY9ni087X7b6TmVeA6fyYSrkLdclVmB962q
	/2AyMegNumJsn7st4K0am3HEKjyFbwsVBJ0OtvPd2MwaY1ShXB0L3GK0fHuVocSXmmorHQtdw8Zr5
	EpBfmUyT8e7dCcjyIdNX1wnMIfJ3YhfURV/V4cOIRPbZmC9s4VLy9ojsy+oOG4LrMrV+f6MXTFbTR
	w7Jj2Z44/IWLF9tHZ+UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDRn3-003xo2-UU; Tue, 10 Aug 2021 13:27:33 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDRmy-003xlx-N5
 for linux-phy@lists.infradead.org; Tue, 10 Aug 2021 13:27:32 +0000
Received: by mail-lj1-x234.google.com with SMTP id x9so27102160ljj.2
 for <linux-phy@lists.infradead.org>; Tue, 10 Aug 2021 06:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pF6V8VR884m9lXXeStRNQD2bGZpEx7NkDPcYVysjhp8=;
 b=KacULvs7Gu39X4aVuaAJXdO3DXrjG4oS+2EpZc1lDyoaoWfuNfRTvT8zZISfFMYGmP
 4uU03/er7SfPLLSJ+vvI4AtJ+VgSS5Qxdob/NDspowXDSBBd+NiZrccN6tZmOSw4zDkk
 cL8mH3a18bdrhqwla80xiRVOROi5Uvu8w2etXNmB3aoWIi/goqFs9lbQqFImz7y1uVAq
 d/iqcSXCqC9eB0w5AMhY/rnaPCijGtILa6CDw1JfR3o5n1E7Y7WIKM+/uHT7W47PWsuI
 2doXFF/XI1xpTYPXIUWf2tBfkNH94xdg2sT0mCqENI9vRU9aKFz2UydyKT23owQSehU4
 n5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pF6V8VR884m9lXXeStRNQD2bGZpEx7NkDPcYVysjhp8=;
 b=k15jSGgutrRUj1whkexcmMA8POzXcgQfYeDRStA05RwsoQyEGOlaZgbh9Tm7gQ9oSs
 AUa035jCm18yTXyNc2dr1cYErkHH3XqqTH1y5a6DsB6+vBrQH7LJVVdFdWtWfj9s+6v8
 5Y+0Egk4fUHfLTYeqWuhESXX4eEMqbM3RW1IGBWBIeG6ahM9SdfSXXEs17xrWMIJl9Sl
 on8ij5XRcmCBj3tPsdavMnqOjS2a61V6toeUn91VG1WCqYhfXSw57Z/KnEUDTpdMeCuA
 bxu/tA/sfFNEqvdBYCN9mCzhPKZvxO2tJV0Ip7NNhC0EncSZ1bSm4vtJeCfbsQS+ikJI
 SXkA==
X-Gm-Message-State: AOAM533AP2DZPuXPCy6tSFh13N8SoD+WVTli3AqmYCWM8ObitUrdCQ2N
 k1zcHLOajGfFjnYKH1EnXoM1nzjxWGc9sZucEWI/zeqCmQ8=
X-Google-Smtp-Source: ABdhPJyvjj3KxX7v1w+P5zqdN+YPQt4DlGffAink3HMU1FfLlBQDLLhxd/EdjbMGVZ2Pui9bq3uJ5c93ohZxQv3mEto=
X-Received: by 2002:a2e:a804:: with SMTP id l4mr12623209ljq.273.1628602047152; 
 Tue, 10 Aug 2021 06:27:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
 <20210627045631.2882-7-jiaxun.yang@flygoat.com>
 <CACRpkdZkvSg___ZxdE639SMbTs5rJbjHBq-HkTCuv0e645Rssg@mail.gmail.com>
 <c7de97c3-196b-6bc3-a8b1-d6c6e6ab583d@flygoat.com>
In-Reply-To: <c7de97c3-196b-6bc3-a8b1-d6c6e6ab583d@flygoat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Aug 2021 15:27:15 +0200
Message-ID: <CACRpkdZjdNasty5g1K5nL+fztN+LPgwYog91bi-UvVH39TXMkg@mail.gmail.com>
Subject: Re: [PATCH 6/9] pinctrl: pistachio: Make it as a option
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-phy@lists.infradead.org, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210810_062728_796205_124ED16B 
X-CRM114-Status: GOOD (  10.56  )
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

T24gU3VuLCBKdWwgMjUsIDIwMjEgYXQgNDo0OSBBTSBKaWF4dW4gWWFuZyA8amlheHVuLnlhbmdA
Zmx5Z29hdC5jb20+IHdyb3RlOgo+IOWcqCAyMDIxLzcvMjQg5LiK5Y2IMTI6MTMsIExpbnVzIFdh
bGxlaWog5YaZ6YGTOgo+ID4gT24gU3VuLCBKdW4gMjcsIDIwMjEgYXQgNjo1NyBBTSBKaWF4dW4g
WWFuZyA8amlheHVuLnlhbmdAZmx5Z29hdC5jb20+IHdyb3RlOgo+ID4KPiA+PiBTbyBpdCB3aWxs
IGJlIGF2aWxhYmxlIGZvciBnZW5lcmljIE1JUFMga2VybmVsLgo+ID4+Cj4gPj4gU2lnbmVkLW9m
Zi1ieTogSmlheHVuIFlhbmcgPGppYXh1bi55YW5nQGZseWdvYXQuY29tPgo+ID4gSXMgdGhpcyBz
b2x2ZWQsIG9yIHNob3VsZCBJIGFwcGx5IHRoaXMgcGF0Y2g/Cj4KPiBJIGd1ZXNzIHNvLCBidHcg
SSB0aGluayBpdCBzaG91bGQgZ28gdmlhIE1JUFMgdHJlZSB0byBhdm9pZCB0cm91Ymxlcy4KCk9L
IGZlZWwgZnJlZSB0byBtZXJnZSB0aGlzIGluIHRoZSBNSVBTIHRyZWUgdGhlbjoKQWNrZWQtYnk6
IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KCllvdXJzLApMaW51cyBX
YWxsZWlqCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK

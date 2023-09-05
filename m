Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 870E8C83F33
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HUS9KUgGtWvOirEuL0rlZNFSUnW+ekT6ejnuXUGgX0=; b=qRI/dZrHvOVLge
	7Li+Ch6a/JZXH0/jARRO8La+oPOEC5ZaoEHMP/vomTemikhxBtQMTVDJBIUsCCT/epgl7fn7VtG+V
	Azr6znNqAC0KAxUxg67lImJ0DFWvMfN/tkzbOX84K3eVL7MBpuMB2J7dAoGyz6ItX6o4KUWr+HhEh
	R4M6TDx7LdLdeHLkiATT8TVrUAI0Yug4MXLz285bp+6z6/I2eUhXmo3NJWI8+fd/JExq+5UQ7Ylrh
	i6cIUwoPVForXtWuBmFz595NhAPHOZ5GDBbsUD841y7nlo5Axe+IJdqD8P6k6gDOGdzgoLcTOg8Gy
	ZcW0+thzQtjpJGVkyNXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdTM6-005np9-0p;
	Tue, 05 Sep 2023 10:32:22 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdTM4-005nii-0o
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 10:32:21 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4013454fa93so23413435e9.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 03:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693909931; x=1694514731; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/OQBvJoch509LjspQeiUDjA39PXpbuvgijH49h9PaH4=;
        b=pZHcWhxbBQCes+NWQiB4CeF+FBMyrYvXGwxQOUWezjIFPnkfllBxYbI3+RPrm+DeV+
         miCfkrn/jtGJ9t6KGjXF4WNpdSkcmUk9kO/uD8fuJdpYOMf3GFZy87FqGnqqENQ0C/Xb
         CT7u67FI7laeEhaa9zsumxHFlrmuxI0rftJLjjSjO6HC+fC2m58MqTvrCoGPV/Ub27O1
         OMCp0wCuv67nh4s8MJxxzgjBPhF2t6boGYLAlsinA7XoitpZe96+BzWI6PN2OqXN4R/k
         4be07mFAyqe98qAGv0WxTBtanCLjGsGa8bdNa6KI1hKdErplAgXKgOfjFvlss8aAawa0
         N6qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693909931; x=1694514731;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/OQBvJoch509LjspQeiUDjA39PXpbuvgijH49h9PaH4=;
        b=Kd85FSEHp9Ang62xScIVU/7wjRWYeXvEQmGuDlUhi1OY8ivauk68bZbAljs+N4RnRX
         dZd4EtmcdA0uPYu46JEQIfjvPWMqIif2JcATfyG+ZDui2CvyEGCFFb5oXr8rC0GquLrM
         6DVTVP0cCLkTYh3lFxxvaB/qkf162MushNGQ2BKmTT1FwHn2K7Fxa75ZgQllSVlDnaxj
         nZKfMZNgNxc78sHk/sH78MlrXzAAomoF+tqqJclkTDuIR4xREOXH0mhMfKMW01eMvuYi
         +XMfq/pZRuGnztmlzpqe8dkLWoDpX+T1LbNJuMCzdipj9oYayn6z/Z8eSxZih7BSKcpY
         ptjg==
X-Gm-Message-State: AOJu0YyPOE1v7PyimnoPceoJA3C62pmAQCdIjTA2RLQRGj0DhGubWil/
	ze5DFS+hUGd0aFhv2z+vaHhpZw==
X-Google-Smtp-Source: AGHT+IEYlIuD3hm2wYNbYHvhWP97jISs6NsenOmr2XcKoguKkZOXo5z9CJuucBGE/1Kuq5gWR+1nnQ==
X-Received: by 2002:a05:600c:22d7:b0:3fc:114:c015 with SMTP id 23-20020a05600c22d700b003fc0114c015mr8218926wmg.39.1693909931598;
        Tue, 05 Sep 2023 03:32:11 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id n26-20020a05600c3b9a00b00402c0a8a084sm11134162wms.17.2023.09.05.03.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 03:32:11 -0700 (PDT)
Date: Tue, 5 Sep 2023 13:32:08 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
Message-ID: <e1a5eea0-33a0-4a58-912a-9548d249ea5d@kadam.mountain>
References: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
 <20230904005855.658819b3@slackpad.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230904005855.658819b3@slackpad.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_033220_353613_93FA674B 
X-CRM114-Status: GOOD (  16.40  )
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

T24gTW9uLCBTZXAgMDQsIDIwMjMgYXQgMTI6NTg6NTVBTSArMDEwMCwgQW5kcmUgUHJ6eXdhcmEg
d3JvdGU6Cj4gT24gU3VuLCAgMyBTZXAgMjAyMyAxMjoxMTowNiArMDIwMAo+IENocmlzdG9waGUg
SkFJTExFVCA8Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+IHdyb3RlOgo+IAo+ID4gV2l0
aCBnY2MgMTIuMy4wLCB3aGVuIHRoaXMgZmlsZSBpcyBidWlsdCwgd2UgZ2V0IGVycm9ycyBzdWNo
IGFzOgo+ID4gCj4gPiBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jOiBJbiBm
dW5jdGlvbiDigJhzdW40aV91c2JfcGh5X3Byb2Jl4oCZOgo+ID4gZHJpdmVycy9waHkvYWxsd2lu
bmVyL3BoeS1zdW40aS11c2IuYzo3OTA6NTI6IGVycm9yOiDigJhfdmJ1c+KAmSBkaXJlY3RpdmUg
b3V0cHV0IG1heSBiZSB0cnVuY2F0ZWQgd3JpdGluZyA1IGJ5dGVzIGludG8gYSByZWdpb24gb2Yg
c2l6ZSBiZXR3ZWVuIDIgYW5kIDEyIFstV2Vycm9yPWZvcm1hdC10cnVuY2F0aW9uPV0KPiA+ICAg
NzkwIHwgICAgICAgICAgICAgICAgIHNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInVzYiVk
X3ZidXMiLCBpKTsKPiA+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXn5+fn4KPiA+IGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3Vu
NGktdXNiLmM6NzkwOjE3OiBub3RlOiDigJhzbnByaW50ZuKAmSBvdXRwdXQgYmV0d2VlbiAxMCBh
bmQgMjAgYnl0ZXMgaW50byBhIGRlc3RpbmF0aW9uIG9mIHNpemUgMTYKPiA+ICAgNzkwIHwgICAg
ICAgICAgICAgICAgIHNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInVzYiVkX3ZidXMiLCBp
KTsKPiA+ICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4gCj4gPiBCZWNhdXNlIG9mIHRoZSBwb3NzaWJsZSB2YWx1
ZSBvZiAnaScsIHRoaXMgY2FuJ3QgYmUgYW4gaXNzdWUgaW4gcmVhbCB3b3JsZAo+IAo+IFdvdWxk
IHVzaW5nICJ1OCBpOyIgaGVscD8gQWZ0ZXIgYWxsIGN1cnJlbnRseSB0aGVyZSBhcmUgb25seSA0
IFBIWXMKPiBtYXgsIGFuZCBpbiBnZW5lcmFsIHRoaXMgaXNuJ3QgZXhwZWN0ZWQgdG8gYmUgbW9y
ZSB0aGFuIGEgImhhbmRmdWwiLCBzbwo+IDggYml0cyBzaG91bGQgYmUgcGxlbnR5LiBBbiB1bnNp
Z25lZCBpcyBiZXR0ZXIgYW55d2F5LgoKR2VuZXJhbGx5IHVuc2lnbmVkIHR5cGVzIGFyZSB0cmlj
a2llciBhbmQgY2F1c2UgYnVncy4gIEkndmUgYmxvZ2dlZAphYm91dCB0aGlzIGJlZm9yZS4gIFRo
ZSB0aXRsZSBpcyBhIHByb2JhYmx5IG1vcmUgbmVnYXRpdmUgdGhhbiBpdCBzaG91bGQKaGF2ZSBi
ZWVuLgoKaHR0cHM6Ly9zdGF0aWN0aGlua2luZy53b3JkcHJlc3MuY29tLzIwMjIvMDYvMDEvdW5z
aWduZWQtaW50LWktaXMtc3R1cGlkLwoKTXkgYmxvZyBtZW50aW9ucyB1OCBpLiAgSSB3b3VsZCBz
YXkgYXZvaWQgdGhhdCB1bmxlc3MgZm9yY2VkIGJ5IGFuIEFQSS4KCj4gSXQgbGVhdmVzIGEgYml0
IG9mIGEgYml0dGVyIHRhc3RlLCB0aG91Z2gsIGFzIHdlIHNob3VsZG4ndCBkbyB0aGlzIGtpbmQK
PiB0eXBlIHR3ZWFraW5nLCBlc3BlY2lhbGx5IG5vdCB0byB3b3JrIGFyb3VuZCB0aGUgY29tcGls
ZXIgdHJ5aW5nIHRvIGJlCj4gY2xldmVyLCBidXQgdGhlbiBub3Qgc2VlaW5nIHRoZSB3aG9sZSBw
aWN0dXJlICh0aGF0ICJpIiBpcyBib3VuZGVkIGJ5Cj4gY29tcGlsZSB0aW1lIGNvbnN0YW50cyBu
b3QgZXhjZWVkaW5nICI0IikuCgpZZWFoLiAgVGhlcmUgaXMgYWx3YXlzIHRoZSBvcHRpb24gb2Yg
anVzdCBpZ25vcmluZyB0aGUgc3RhdGljIGNoZWNrZXIKd2hlbiBpdCB0ZWxscyB5b3UgdG8gd3Jp
dGUgYmFkIGNvZGUuCgpZb3UgZG9uJ3QgaGF2ZSB0byBldmVuIGxvb2sgYXQgdGhlICp3aG9sZSog
cGljdHVyZSB0byBrbm93IHRoYXQgR0NDIGlzCndyb25nLiAgVGhlIEJJVChpKSB3b3VsZCBvdmVy
ZmxvdyBpZiBpIGlzIG1vcmUgdGhhbiAzMS4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF28EEDF159
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNQgowc1X0m96dAf+blbYp5E4atvOnskaIv5gGd3NQM=; b=ac0HR7+UbGSfnv
	29KZ5lkKgG0T3VAsxZ9Uxq2PE5pRP9kCXq+Xvxn6/j7p5k61aOAGjHtfemb2zteKcCGvh0qAHhV6Z
	BEufpIVKzAdSFkUkOeHc6FYQLQdCmdYFIkFKJQzc+V224czwTFWRnUH531ZEq76wxdwVWr6QtWlBT
	hP8AqURAiSZvSvUi3x5uzOjJfYMRhSGPuDiRV3ou/oP31tArXD7n1GxAJ9A5xqNPxNAsaOgn0biq8
	x7VOO685t8/NDVnk0/m3YuS4DFb6sB9P9Ha3F3zjhONrHObTPeFiYeJrsuILEwOJjH3gVsqG8vVA2
	u/DHeq13RZZXDLH4oydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqsVF-00000003SYi-0xUN;
	Fri, 13 Feb 2026 12:42:33 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqsVC-00000003SYM-14gG
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 12:42:31 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-59e5ed7303cso63438e87.3
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 04:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770986548; x=1771591348; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r7nT78nIm0YLmarabSYPD2yv/puF0ssCbcpZBWsZgYU=;
        b=JsFSu0SdeQbB4fmVYJxRv8S2RoVBUd1Q9FJ1jnJI0JO+Whluo+1CgvPB1uLaPJQilf
         9uIt2C2XoRJ590HunKvd+CC/IBS5RMLJ/4Ifw9S5aw06pu0qzMbqGU2NWCqhc75U+CZ7
         3NJDT9etE78bpP2PpOtbnHHM/caxjTjskVyUdMLnZkRdUsV86QB2sI3y6pFveIJBxbfI
         9A0tmxPJYIwviGO1bu9CktRDgtX2cj/m5kGpcR52oF2KdamWEgqWb9DAyOIlpolzETwF
         pcsfO6/+uMBvlMFAoGaUxfLPqBZ0QKBpoOgDdtbKCAPm7h36TARhoj+lLHSftvOKlCdh
         f3Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770986548; x=1771591348;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r7nT78nIm0YLmarabSYPD2yv/puF0ssCbcpZBWsZgYU=;
        b=P3W+bHDgetj6n2DkXfB6Sp8hpWKl5VLcvt2e25HSeJcW8SpcdJeip11ZQyl92LJaIj
         wBkGr+oUQ+30wcZ4w3ot23f/ZFz2apXD+8QVul6J9t2d1YGtPoDfs5hLggGEoQKasVyL
         RpYHkDX8ySUU6zbU2hEDwK9cDsItxnrqeVbNszswUShP22WHQNVot+FhGZ/Ac0h3zBZa
         z6yXXsTxpnhX+7q2epJSOcPtbtj+NkIKQc45che5/imoajxwUcOAXFwSe8kcg4Oj02dF
         KjFDiZKGgcQHieHQhUJo/rM6xkGE1tbecNljhwDtc+UinLEJ0dGxYh63a+xGkHs8cRK8
         AF0A==
X-Forwarded-Encrypted: i=1; AJvYcCVRBued1gxzgP7F/cpVZhetvh1d5pZMyzvwcGh15Kad2MUpu3virKTuFtAm34QN1xigl2dROfgoJow=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcM9vNQXlZGcOLCmOviFpeNino5iLjd+inr/JaGLYcnoXfGV04
	zqoxlXe6+wHjaGN/gRmtSFSHV8FkmYVWm+d4YTL/r9lWOa7vTZ6I6lEbpj8bug==
X-Gm-Gg: AZuq6aLh9Jojm7QenuVABlTPLqbFVVRjkLRaUs/0rWnKRyCjsw6rElpI7yQsA4zi/yr
	vGD3AhLC4/++5mgaP8QvL7ibsimOhgnEi/mt8jebBY0P+RuLwmO7/Sp3BeLWInMKuTDZhkbSgFt
	z6UNxOBYPqYdbbBmAthZl/L+kIp5XtpsaJz6d9jFTyMNoxVMdZvuI9/Yb1aE18aPbLLyzQVqggH
	wTLvtpQI/TBhqWHQ/BW3QJCjHgJKK/cjVTXgQk2AQ4rTNIfet7FwTA9Ojej9UMyzVW63fTfxXS4
	fk6JpFNmE7E1vYkT8XTu0J3NJDxNyTWSiRyagm0rpQJadojK19fZNagzPhZlAHd2eeRMT5CVS9t
	uJWNduDaTzoTyRjAZjc2ZREAiROSxths9InBxwakxeiAEplofBiACgFIP0Z9HjqRwnQZDzm71w3
	SPOIvv3u0L4cNhQBQGGVx5jOfSeg==
X-Received: by 2002:a05:600c:4448:b0:47b:d992:601e with SMTP id 5b1f17b1804b1-48370e2b6bemr23412015e9.2.1770979593031;
        Fri, 13 Feb 2026 02:46:33 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:419a:75c9:94a4:7ac3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d82a4c4sm444065575e9.10.2026.02.13.02.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 02:46:32 -0800 (PST)
Date: Fri, 13 Feb 2026 12:46:29 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Felix Gu <ustc.gu@gmail.com>, linux-phy@lists.infradead.org,
	Jyri Sarha <jsarha@ti.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH v2] phy: ti: j721e-wiz: Fix device node reference leak in
 wiz_get_lane_phy_types()
Message-ID: <20260213104629.q5pwqpsuficmx6qv@skbuf>
References: <20260212-wiz-v2-1-6e8bd4cc7a4a@gmail.com>
 <ffafec42-8d5f-429a-92b5-1b92c7643642@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ffafec42-8d5f-429a-92b5-1b92c7643642@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_044230_313100_28D7E40D 
X-CRM114-Status: GOOD (  12.70  )
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

T24gRnJpLCBGZWIgMTMsIDIwMjYgYXQgMDk6MDk6NTVBTSArMDEwMCwgTWFya3VzIEVsZnJpbmcg
d3JvdGU6Cj4g4oCmCj4gPiAtLS0KPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiAtIFVzZSBvZl9ub2Rl
X3B1dCgpIHN1Z2dlc3RlZCBieSBWbGFkaW1pciBPbHRlYW4uCj4gPiAtIExpbmsgdG8gdjE6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjAyMTEtd2l6LXYxLTEtZmRkMDE4ZDAyZjMzQGdt
YWlsLmNvbQo+ID4gLS0tCj4gPiAgZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgMiAr
Kwo+IOKApgo+IAo+ICogV291bGQgeW91IGxpa2UgdG8gY29tcGxldGUgdGhlIGV4Y2VwdGlvbiBo
YW5kbGluZyBieSB1c2luZyBhbm90aGVyIGdvdG8gY2hhaW4/Cj4gICBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9E
b2N1bWVudGF0aW9uL3Byb2Nlc3MvY29kaW5nLXN0eWxlLnJzdD9oPXY2LjE5I241MjYKCldoaWxl
IGdvdG9zIGhhdmUgdGhlaXIgcGxhY2UsIGhlcmUgaXQgc2VlbXMgc2ltcGxlciBub3QgdG8gdXNl
IHRoZW0uCkZlbGl4IHdvdWxkIGhhdmUgbmVlZGVkIHRvIG1vdmUgdGhlICJpbnQgcmV0IiB2YXJp
YWJsZSBmcm9tIHRoZQpmb3JfZWFjaF9jaGlsZF9vZl9ub2RlX3Njb3BlZCgpIHNjb3BlIHRvIHRo
ZSBmdW5jdGlvbiBzY29wZSwgYW5kCmluaXRpYWxpemUgaXQgd2l0aCAwLiBBbGwgdGhhdCBpcyB1
bm5lY2Vzc2FyeSBjb21wbGV4aXR5IGhlcmUuCgo+ICogSG93IGRvIHlvdSB0aGluayBhYm91dCB0
byBpbmNyZWFzZSB0aGUgYXBwbGljYXRpb24gb2Ygc2NvcGUtYmFzZWQgcmVzb3VyY2UgbWFuYWdl
bWVudAo+ICAgYnkgYWRkaXRpb25hbCB1cGRhdGUgc3RlcHM/Cj4gICBodHRwczovL2VsaXhpci5i
b290bGluLmNvbS9saW51eC92Ni4xOS1yYzUvc291cmNlL2luY2x1ZGUvbGludXgvY2xlYW51cC5o
I0wxNTctTDE2MQoKVGhlIGNsZWFudXAuaCBBUEkgZG9lcyBub3QgZXhpc3QgaW4gYWxsIGtlcm5l
bHMgd2hlcmUgdGhpcyBidWcgZml4IGNhbgpiZSBiYWNrcG9ydGVkLgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

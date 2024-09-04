Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C71BACD37B4
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 13:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1HyDdTUYJn/FTMyqoY0KM8WTd35z5VPjJlkLLf612o=; b=2acwqP6DVuNntD
	aIIqs7YlBfsbGpGeWyD6YKZgw9KAEOio+0M8SCkOkjJLQMvJfo6DFdiUwaXstV04Ivo2qr8t0JCIW
	qumEMFPogWACg9hfcv0ZabMvZwXtXB2YgtlHHSyjVxlUhqpt5RmhPqxl4R66DHGUcoF4wnOScMvy3
	DhvFR2IAE9Q8I3aGvAWpTa9tXLY+Rbj90HgeijNGdczoBTTB1NwThDHbjEyagJsuChHTkbsaCsS+T
	86gy8MVdSAlyh2QX6lMPCjzihI8baykKjQ/SJg7p006kt3RtCh/mKxv0lgETMh13uKP50FffX3XT2
	XRxGZkMXJN2Ox4eqAO3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqXK-00000004fCI-1Hpg;
	Wed, 04 Sep 2024 13:59:06 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqXH-00000004fAs-1DAY
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 13:59:04 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-6bce380eb96so3751792a12.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 06:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725458342; x=1726063142; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HzuwZB67ZbwvVWHFNySgXsna3DJdJL1ydfHKd6Q8NCg=;
        b=Okr+uN0q51gbIJ09f5/eyWkBr5GOyX4t1wjmaM0ICamDAEvu7WrR9jut3GOUR0XHd1
         cKgHGEo/4DAJ2OjmKgM5q7nonHUIJr6nA0bE5s5XK74Ga4JHTlN+NLCIA5l7Qk9WNhN9
         CuuUaZrkxZC7SL86vEVsSUUrO3SoGl4ZRd0tLGeP+pYKUDtcYtVKvJXdkDfyD3TeT3qa
         ySWtNPh65R9ck+r3WRcEFrk6Bzm1LlmjBvU6uQQr2naqbjwgHFe6CQEFIUwrMre6vjzm
         bn6MNqq18Xog0UaCf/8aOIFWwAnu+4K/fQNYDDGS/HLYO5/UpkS5og6cUjBV/TOacT1Y
         l8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725458342; x=1726063142;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HzuwZB67ZbwvVWHFNySgXsna3DJdJL1ydfHKd6Q8NCg=;
        b=DbNEbkD+WDGUno8MPT1IdGfjtnFGWIaEa/Yd7FOMR2ls+Y0N11usx5ukxKS/nvfWJQ
         EPG/MjopH6m9wPYSHecHLA8kNzp0mc/iTi9TFTbuOs0JhxcXO6r/UxUHAM+XOb2jlV/Q
         mPt0F1BvtnoCVthcaFsRwZFIwXzZ0n5q8FYtLJd3bgdOKrrgXzRMKW646E54l54pCJDn
         TL2CQ7kjtAGq4txwHQUTMuvplRKo/4I2zqfRcI9SdHDGCzLUOBfHIBs5JWAzleI5q2O1
         sbEuSjfId0or87J2A5p+Xqs549PDLRFZKvKiHyMbXsySDXG1R33bjbOA06EsY5zI2Ns2
         /Aww==
X-Gm-Message-State: AOJu0Yy/yzAPvCXmbYG8c8BRzK3fzyUPdc0vXfz2Aq7pEwN0HpggOrkD
	5aeYkOKF6iQItWTCm/KaE2F5FdHaBhad4LQjY5BB8HVT2LIS55GFQlO3HEugsnEyrRcHvAmx787
	tXuHQotiStqN8Pf0lCh5Ld+12Ack=
X-Google-Smtp-Source: AGHT+IFGaTS6SArCxsht9wBh1wBBVhXDuNFvzg032SF31OvneM8th456sv9jYelC6Dp4w0RZDRBdpp7MFDBCEaz5R8Y=
X-Received: by 2002:a05:6a21:4603:b0:1cc:d4c1:29c5 with SMTP id
 adf61e73a8af0-1cece4fcf0cmr15357342637.12.1725458341812; Wed, 04 Sep 2024
 06:59:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240904023310.163371-1-aford173@gmail.com> <20240904023310.163371-6-aford173@gmail.com>
 <727803d7-2b0a-449b-97bc-b18fe2378a38@kontron.de>
In-Reply-To: <727803d7-2b0a-449b-97bc-b18fe2378a38@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 4 Sep 2024 08:58:50 -0500
Message-ID: <CAHCN7xL1rgnD_Amebnf+Mx4RrSkGM4+0LxbPSYqwVWT0VHAc0w@mail.gmail.com>
Subject: Re: [PATCH V5 5/5] phy: freescale: fsl-samsung-hdmi: Remove
 unnecessary LUT entries
To: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: linux-phy@lists.infradead.org, dominique.martinet@atmark-techno.com, 
	linux-imx@nxp.com, festevam@gmail.com, aford@beaconembedded.com, 
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_065903_347118_DB3E1931 
X-CRM114-Status: GOOD (  13.18  )
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

T24gV2VkLCBTZXAgNCwgMjAyNCBhdCA4OjQ04oCvQU0gRnJpZWRlciBTY2hyZW1wZgo8ZnJpZWRl
ci5zY2hyZW1wZkBrb250cm9uLmRlPiB3cm90ZToKPgo+IE9uIDA0LjA5LjI0IDQ6MzIgQU0sIEFk
YW0gRm9yZCB3cm90ZToKPiA+IFRoZSBsb29rdXAgdGFibGUgY29udGFpbnMgZW50cmllcyB3aGlj
aCB1c2UgdGhlIGludGVnZXIgZGl2aWRlcgo+ID4gaW5zdGVhZCBvZiBqdXN0IHRoZSBmcmFjdGlv
bmFsIGRpdmlkZXIuICBTaW5jZSB0aGUgc2V0IGFuZCByb3VuZAo+Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXiB1bm5lZWRlZCB3aGl0ZXNwYWNlCj4KPiA+IGZ1
bmN0aW9ucyBjaGVjayBib3RoIHRoZSBpbnRlZ2VyIGRpdmlkZXIgdmFsdWVzIGFuZCB0aGUgTFVU
IHZhbHVlcywKPiA+IGl0J3Mgbm8gbG9uZ2VyIG5lY2Vzc2FyeSB0byBrZWVwIHRoZSBpbnRlZ2Vy
IGRpdmRlciB2YWx1ZXMgaW4gdGhlLAo+Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBeIGRpdmlkZXIgICAgICAgIF4gdGFibGU/Cj4gPiBhcyB0aGV5IGFy
ZSBhYmxlIHRvIGJ5IGR5bmFtaWNhbGx5IGNhbGN1YXRlZC4KPgo+ICAgICAgICAgICBeIGNhbiBi
ZSBjYWxjdWxhdGVkIGR5bmFtaWNhbGx5Lgo+CgpXb3csIEkgbXVzdCBoYXZlIGJlZW4gcmVhbGx5
IHRpcmVkIHdoZW4gSSB3cm90ZSB0aGlzLiAgSSBwcm9taXNlIHRoYXQKSSB3YXNuJ3QgZHJpbmtp
bmcuICA6LSkKCkkgd2lsbCBmaXggYW5kIHByb29mLXJlYWQgbXkgY29tbWVudHMgaW4gdGhlIFY2
LiAgOi0pCgoKYWRhbQo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNA
Z21haWwuY29tPgo+Cj4gV2l0aCBjb21taXQgbWVzc2FnZSBmaXhlZDoKPgo+IFJldmlld2VkLWJ5
OiBGcmllZGVyIFNjaHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+Cj4gVGVzdGVk
LWJ5OiBGcmllZGVyIFNjaHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

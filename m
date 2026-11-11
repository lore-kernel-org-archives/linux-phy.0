Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B73E606A324
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 04:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GYiAu2aQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ni7juo5/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=j/TRUeT4L/wgn7mpC6huMprMmBKuY3lrREdAhqj550A=; b=GYiAu2aQJVq/Wo1WGgr9zN9bBr
	iCQil5mLx4NLNZGYNgW1nviTDO3JJ09dkfc2LZrChSLo7zS1FdjUrcUNhNoZ1ufsf7RSUYaI3RlQu
	I10ZzCWgoRzfbR4X62JZsWauPwycudbN+9y3XfoaxuqQqjm+76u9w4FEv9u+UsX9rlt2+Je2J4DB4
	nlElk9u+ic4IowxA6rX5jFW5lj1SS0cOKGo/DFRGbPf4E+SxysvbwogdWuKopFzj4uZpzHvhS76k1
	UYoqMQ9qH04OHaJhMyJ6+GabFwCBobg9BY5TQ5XHf9LccX3qTQU4Y5iVi/u2VohY7iFaS2S2X5HjD
	QCJi+MEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQzuv-00000005bzz-3InY;
	Wed, 11 Nov 2026 04:26:37 +0000
Received: from mail-dy2-x08.google.com ([2607:f8b0:4864:36::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQzut-00000005bzA-1mwS
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 04:26:36 +0000
Received: by mail-dy2-x08.google.com with SMTP id 5a478bee46e88-3678f64d078so3312492eec.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 20:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794371194; x=1794975994; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=JkuS+mUk2RH2MSK3tXztbBdwGQB9HnQXtlhnX94SlQA=;
        b=Ni7juo5/y3YFEXZYSbpVpCJ5V0VHzYSjr9MmBpJSXKTY39LRIXSBtqTMTBHOJTIfTy
         soVQOHkLpKHWnTYUws+y2QFtD06gR+KVEa/RvYR88M3mct8NUOVUClS2qAe2RUFVZLqt
         nNof3gLN+S3afx0pKkkVesf7W+gNEjBz07A6zn+FyFQF+rfE0cR1HwbMpek5dSA2aTLm
         xJFSzokqmuLiSfmHwWxgYHmPPzIy8Ua9w0mPJR4xyH7yOqshAVX1EPaU5LeEltVxAlUw
         bRMH2imoZS2pTrqqGWr0gG3fqHVQbMrYeaDsP2iTa2VwWEa+MjulqGDdS8PFcj5QDgPG
         s5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794371194; x=1794975994;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JkuS+mUk2RH2MSK3tXztbBdwGQB9HnQXtlhnX94SlQA=;
        b=o7PFPij7o/jROeriwFv86ZH90gp9LIau+ClKl5HO3GzLjOEn/EYTh9qnp/QK1jMrK6
         lc88DfNfuKKtWepQvJSKfknHhnQfCkzQmgYWobm2QJdzkiVNH4gDYv1reYHJ0ByENPLB
         dp+ZFmUIayRc42jwmhd2VUOk53ho8rY0GNMCFAYvuUxav+K5LEF5sBLn+5bkGNY9TkQp
         qcmxS1F6wc3jEbonY4iJRh1GiVrAGmRzXdPrf4DRq/2S3/xW1/tr8+5nNboGTHGvDeTI
         O0XmZutKiYazoEvN0IdQpq4Nut3RICTD3tw5lfGlBD6TZEQrb6ygHD/fsQ+CjS1GMZaI
         9tig==
X-Forwarded-Encrypted: i=1; AL+hErFfqQHVSVkwl0WXTtn/jbpwxVRU3m8njfPr6BmdQ1VIsUGjYRcjY1TOODvWRCbQFvxjnMuQ84+pcyU=@lists.infradead.org
X-Gm-Message-State: APuU4Z/T3FIasGFRXZgE+rvnqSbMouBi+ZCDaIhNUlR4i0Xr8VF5p6eH
	ZnH80KWLLZ9+pm8Ubf3O5hFDO9+SPXcpbYdTWEdUejJoMybEL75zuQFe
X-Gm-Gg: AYBFou3mJGUtL+Ab8V+ZW0y+zvySQI0YmiJztZSVBrWKuq/dsncvVZq2fyknIAlTfSt
	KxpuHPw0nuBOHVVC8KZsvU2p3H80F3Q3DecF0eWrab/wP7qb8DHEysjkM15iibGz31NB1WKExNf
	kpOkbZvzpDzyx+DJ9/HZdAtx+dx01d7Of0pOThKFak3J8tCuOzW52b8+Sv5+9Ern1SGSz89622S
	YEfWmT3U7KNNnvkEjm2WJWKQjuVS6zBYyxXhlIDlkZcPf//zSCG85ATc155S/Cn4pYcYYg4Mhx/
	GANkxIrW2DYfrKoCB/+uoXpGE8Ld1XBid2pAdAwHzTq6tJ7ess5BSc6D+iMXMgHx6vR8r8X6h7n
	p8Jubd9bI/SUVifOK1gqdbK346XoMlO78qhuydBUrcKGSQRGZPSNZiX4cs056cYEtx5ALouW6kX
	KSZdLVkysXn/+UPw/3ONynJx184VgfxJ8pgN9OM4hiwKpl2OjcTqkQvoDPD9QazgTCU5v4SU/C3
	VrBuK4RG2HK06QcWC/90OIi6MOyUJB3HYM/hosipAifgl/1pgnKnF58ieHoSujQZZ/7E0+pUJkO
	lX4=
X-Received: by 2002:a05:7300:c382:b0:376:bcc4:774b with SMTP id 5a478bee46e88-376bcc479abmr1028837eec.23.1794371193980;
        Tue, 10 Nov 2026 20:26:33 -0800 (PST)
Received: from localhost ([2403:2c80:6::10d9])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-37520cfdfc6sm13018714eec.17.2026.11.10.20.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 20:26:33 -0800 (PST)
Date: Wed, 11 Nov 2026 12:26:28 +0800
Message-ID: <0d340a99e07dfba7ea1fba6d9529a1a6.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Guodong Xu <docular.xu@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 06/17] clk: spacemit: k3: parent eDP/DP pixel clock to
 the PHY PLL
In-Reply-To: <1jwls975nh.fsf@starbuckisacylon.baylibre.com>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-6-327d7910bf71@gmail.com>
 <1jwls975nh.fsf@starbuckisacylon.baylibre.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_202635_460570_2FC1D82D 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSmVyb21lLAoKT24gRnJpLCAyNSBTZXAgMjAyNiAxNjo0Mzo0NiArMDIwMCwgSmVyb21lIEJy
dW5ldCB3cm90ZToKPiBPbiBkaW0uIDA5IGFvw7t0IDIwMjYgYXQgMjE6MTQsIENvZHkgS2FuZyA8
Y29keWthbmcuaGtAZ21haWwuY29tPiB3cm90ZToKWy4uLl0KPiA+ICBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGNsa19wYXJlbnRfZGF0YSBlZHAwX3BjbGtfcGFyZW50c1tdID0gewo+ID4gIAlDQ1VfUEFS
RU5UX0hXKGxjZF9weGNsayksCj4gPiAtCUNDVV9QQVJFTlRfTkFNRShleHRlcm5hbF9jbGspLAo+
ID4gKwlDQ1VfUEFSRU5UX05BTUUoZWRwMF9wbGxfcHhjbGspLAo+Cj4gaGlkZGVuIGJlaGluZCB0
aGlzIG1hY3JvIGlzIGEgLmZ3X25hbWUuIEJhc2ljYWxseSB0aGVzZSBhcmUgeW91ciBEVAo+IGlu
cHV0IG5hbWVzLiBZb3UgY2FuJ3QgY2hhbmdlIHRoZW0gYXQgd2lsbCBsaWtlIHRoYXQgYmVjYXVz
ZSB5b3VyCj4gYmluZGluZ3MgYXJlIHN1cHBvc2VkIHRvIGJlIHN0YWJsZS4KClRoYW5rcyBmb3Ig
dGhlIHJldmlldy4KCj4gWW91IHNob3VsZCBub3QgdXNlIHBsYWNlaG9sZGVyIG5hbWUsIGV2ZXIu
IE5vIG5lZWQgdG8gbWFrZSB0aGUKPiBuYW1lIHRvbyBzcGVjaWZpYyBlaXRoZXIsIGZyb20gdGhl
IGJlZ2lubmluZyBpdCBzaG91bGQgaGF2ZSBiZWVuCj4gc29tZXRoaW5nIGxpa2UgInBpeGVsX3Bs
bCIgb3Igd2hhdGV2ZXIgeW91ciBkb2MgcmVmZXIgaXQgd2l0aC4KCkFncmVlZC4gVGhlIG5ldyBu
YW1lcyBmb2xsb3cgdGhlIGRvY3VtZW50YXRpb246IHRoZSBLMyB1c2VyIG1hbnVhbApkZXNjcmli
ZXMgdGhlc2UgdHdvIG11eCBpbnB1dHMgYXMgInBpeGNsayBmcm9tIGVEUDAgUExMIiBhbmQgInBp
eGNsawpmcm9tIGVEUDEgUExMIiAoUE1VX0xDRF9FRFBfQ1RSTCwgZmllbGRzIEVEUDBfUElYQ0xL
X1NFTCBhbmQKRURQMV9QSVhDTEtfU0VMKS4KCj4gImV4dGVybmFsX2NsayIgaXMgbm90IGRlY2xh
cmVkIGluIHlvdXIgYmluZGluZ3MgQUZBSUNULCBzbyBhdCBsZWFzdCBpdAo+IHNob3VsZCBiZSBm
aW5lIHRvIHJlbW92ZSBpdC4KClJpZ2h0LiBJdCBpcyBpbiBubyBiaW5kaW5nIGFuZCBubyBkZXZp
Y2UgdHJlZSBpbiB0aGUgdHJlZSBzdXBwbGllcyBpdCwKc28gbm90aGluZyB0aGF0IGZvbGxvd3Mg
dGhlIGJpbmRpbmdzIGNoYW5nZXMuCgo+IFRoZXJlIG5lZWQgdG8gYmUgYSBkdC1iaW5kaW5nIHBh
dGNoIGRvY3VtZW50aW5nIHRoZSBuZXcgbmFtZSB5b3UgbmVlZAo+IGFuZCB0aGVuIHlvdSBjYW4g
c3RhcnQgdXNpbmcgaXQgaW4gdGhlIGRyaXZlci4KClBhdGNoIDA0IG9mIHRoaXMgc2VyaWVzIGlz
IHRoYXQgcGF0Y2ggKCJkdC1iaW5kaW5nczogc29jOiBzcGFjZW1pdDoKYWxsb3cgZURQL0RQIFBI
WSBQTEwgcGl4ZWwgY2xvY2tzIG9uIEszIEFQTVUiKS4gSXQgY29tZXMgYmVmb3JlIHRoaXMgb25l
LgoKSSB3aWxsIGNoYW5nZSB0aGUgY29tbWl0IG1lc3NhZ2UgaW4gdjMgdG8gYmV0dGVyIGFsaWdu
IHdpdGggdGhlIGxvZ2ljIHlvdQpkZXNjcmliZWQuCgo+IEluIHRoZSBmdXR1cmUsIHBsZWFzZSB0
cnkgdG8gZG9jdW1lbnQgYWxsIHRoZSBpbnB1dHMgb2YgeW91ciBjb250cm9sbGVyCj4gaW4gdGhl
IGJpbmRpbmdzLiBFdmVuIGlmIHlvdSBkbyBub3QgdXNlIHRoZW0geWV0LCB0aGV5IGV4aXN0LgoK
TXkgcmVhZCBpcyB0aGF0IGNvbW1lbnQgaXMgbW9yZSB0byB0aGUgb3JpZ2luYWwgY29tbWl0IHdo
ZXJlICdleHRlcm5hbF9jbGsnCmJlaW5nIGNvbW1pdGVkLCB3aGljaCBpcyBub3QgZnJvbSBtZS4g
QnV0IHllcywgSSBhZ3JlZSB3aXRoIHlvdS4KCkNvZHkKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

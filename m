Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35DC5C9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 14:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljZkrcmIaqtzScjeGYFMqm5FJWdUe6tSY2jj9Brwyqk=; b=jXfPvN82A2VL+U
	IxccBfBUx6nyaDmpAOzzL7tDNAe79lagzhoZUfsDWRQ98C84qdt6/qe4ZQjEfVc0/hXWX5hi9CyFG
	Zky3K9eRc6aAPcX8HgTRC9nH6PgFPqujNmTkyXOTCUaBv8WglcexOL1jvUExdZzVBOFOURuji8CNt
	Pdy+hkYUqPVKYsL51UGjTH0ktQUOArLG3yq9pp80qSMzOg/nXtY/kwHAxlQuzKwdN0HjW+HXMylAI
	ZxirZ38ML/3h2sIqA82Evkp0QrzDLejAkhZZz9hFAAQ9oBf9PgAJayov5WnG202KvC+qsFsuXo+hl
	LgXsTmH+AgUqMqV2IGmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA79X-0000000Dd2k-30WF;
	Fri, 25 Sep 2026 14:43:55 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA79U-0000000Dd0v-1DbT
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 14:43:54 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49b91369d18so6876115e9.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 07:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1790347430; x=1790952230; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DtEfZGf6pOZoZKp7BZybV8NV7US5hG1rb4KkghHs3uw=;
        b=lCA2udjPwjPc9I348g363kftzOqRYNIPemAwhjtZkiUOm89+P21hOFbcrbqaXaEn34
         Sk/dAkvlM1jaLLLwZCl1za3RR716gDQ/BXsCdby4GGlsC7T0mOFdfaX/YjD6YfhjeBfr
         MLWo4dHQdJoHTcrYkzKEwgwiK1kvemMYBosVcG9AGX4bgBAVIK9atikw6rzXSBEI+DWu
         Foo42RvfPHc4menlZG9kdgxodfAElo9JdjAdgpKKbBhjgDcrTFcvzkgYMlY4VDkOXQWv
         ogd3UYgHrCJEwTyFOhRCujMKKjQOGiU5PY9VbUM5MmYh3RZkQEgufmvab4OGtffww/nZ
         OzJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790347430; x=1790952230;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DtEfZGf6pOZoZKp7BZybV8NV7US5hG1rb4KkghHs3uw=;
        b=xgFeaczPrO920BJk/QVPj3xa9pzTN3pxu43SLV73K7wrP6FQ03doxjD8F3hcd9IlF/
         PDBErASbe1y2+VW6xriC+489yQRYlujp3j2CAdaONak2Rze+5tvDlrRTZiqRYvnqTnsu
         2PQykHvSYuFZ2G0+6bK3kb9cB7tKD/tD//rZXsZz6YcOEGZsVd4yHLzn1KZ4VdzvSuMx
         9EgbjbdXtc4fXYHaJgpE8u0rSd4usIYdTcBjdBMGRD4IaseOTIXbkrnT77cfG2FrH0uM
         wWJuhQ1mHetoIJnED76+oNoY4UfbiOUiX97iTWNkfyfD5RfcOr9vwsyxqzA9crPswpYo
         PtJg==
X-Forwarded-Encrypted: i=1; AKwUvBx1i7853hqJnU5PzZHRGOu/6j4F8B7jXRGp0LBdfWslkFAGJjU4R9p8Fg6oBgFc2YKP78FrsZFMNDo=@lists.infradead.org
X-Gm-Message-State: AFuF++lb9l3aaLByBQiF8M45vxa7oSUN9729Wdq4gPAL0Kv0/1M8DwQY
	v/I0P353m/tlnXnc66X3Xr4cck0ebqG3OFMqrJbSMQzhzQNnE2h5rfY6qzU+Gx2D+jM=
X-Gm-Gg: AYBFou0NS3ZqutgyeLS4QTXJ3G3MY/omHIW0ijf3sX38y1IcILmeADAGThcgG1t3yW4
	P07XwG+ebGdjHW5GZMJrc93x917VsUiP8DUt+OPNeNShLXFMoAnnoLNthrveFWd38H4vQE0Ir2L
	6TWm1Bhmc5bsZs7Vf53cMZguSMuJv8hMGNDyXVcZk936yOPoZi6LKu/BS+nshX3NjC0mO06WHKl
	v2Oe2BGHGMV5gP3o31eF4mBgkgS10d4t744oz93Jqq3M2itO3Ypv+5ZBl0DlDrOr8EMCwM8fUQJ
	0vGl1lnc/OW2rlVJnwFgyfIvqXV3j1WXMmE8E0mvOKZraevKLPdO+UnqRIUByB4NsfxEWtbtsDD
	l7VFV01qyDi8onx9UCcz4ENX0twV2+mb2/JS0Iy8SSoQFiSQCsrj/y9pzpED7kSm7uQGOuN2GAx
	0qO3mxuluocJJiJcmThOEq1t1digx5x/ZXEFHftTYOrXuwby9O/UrNSEB9EG9buSBLJbO5AMBGt
	QxEiGosFdA6Dy8bbA==
X-Received: by 2002:a05:600c:c8f:b0:49c:dc14:d681 with SMTP id 5b1f17b1804b1-49fe66bdf3bmr105928135e9.3.1790347430286;
        Fri, 25 Sep 2026 07:43:50 -0700 (PDT)
Received: from localhost (82-67-6-57.subs.proxad.net. [82.67.6.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a35607bsm7104435f8f.16.2026.09.25.07.43.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 07:43:47 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Cody Kang <codykang.hk@gmail.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, Vinod Koul
 <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Haylen Chu
 <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti
 <alex@ghiti.fr>, Yao Zi <me@ziyao.cc>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <u.kleine-koenig@baylibre.com>, Guodong Xu <docular.xu@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
Subject: Re: [PATCH v2 06/17] clk: spacemit: k3: parent eDP/DP pixel clock
 to the PHY PLL
In-Reply-To: <20260809-k3-display-v2-6-327d7910bf71@gmail.com>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-6-327d7910bf71@gmail.com>
Date: Fri, 25 Sep 2026 16:43:46 +0200
Message-ID: <1jwls975nh.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_074352_344811_9DB5577D 
X-CRM114-Status: GOOD (  21.27  )
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

T24gZGltLiAwOSBhb8O7dCAyMDI2IGF0IDIxOjE0LCBDb2R5IEthbmcgPGNvZHlrYW5nLmhrQGdt
YWlsLmNvbT4gd3JvdGU6Cgo+IFRoZSBBUE1VIGVEUC9EUCBwaXhlbC1jbG9jayBtdXhlcyB3ZXJl
IHBhcmVudGVkIHRvIGEgcGxhY2Vob2xkZXIsIGJlY2F1c2UKPiB0aGVpciByZWFsIHBhcmVudHMg
KHRoZSBEUCBQSFkgUExMcykgZGlkIG5vdCBleGlzdCBhcyBjbG9ja3MgeWV0LiBUaGV5IGRvCj4g
bm93LCBzbyBwb2ludCBlYWNoIG11eCBhdCBpdHMgUExMIGFuZCBsZXQgdGhlIHBpeGVsIGNsb2Nr
IHJlYWNoIHRoZQo+IGNvbnRyb2xsZXIgdGhyb3VnaCB0aGUgY2xvY2sgZnJhbWV3b3JrLgo+Cj4g
U2lnbmVkLW9mZi1ieTogQ29keSBLYW5nIDxjb2R5a2FuZy5oa0BnbWFpbC5jb20+Cj4KPiAtLS0K
PiB2MjoKPiAtIG5vIGNoYW5nZQo+IC0tLQo+ICBkcml2ZXJzL2Nsay9zcGFjZW1pdC9jY3UtazMu
YyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3NwYWNlbWl0L2NjdS1rMy5jIGIvZHJp
dmVycy9jbGsvc3BhY2VtaXQvY2N1LWszLmMKPiBpbmRleCBjYjBjNDI3N2Y3MmE4Li5hZmJiYmQ3
OTc4MjZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3NwYWNlbWl0L2NjdS1rMy5jCj4gKysr
IGIvZHJpdmVycy9jbGsvc3BhY2VtaXQvY2N1LWszLmMKPiBAQCAtOTM3LDEzICs5MzcsMTMgQEAg
Q0NVX01VWF9ESVZfR0FURV9GQ19ERUZJTkUodWZzX2FjbGssIHVmc19hY2xrX3BhcmVudHMsIEFQ
TVVfVUZTX0NMS19SRVNfQ1RSTCwgNSwKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2xrX3Bh
cmVudF9kYXRhIGVkcDBfcGNsa19wYXJlbnRzW10gPSB7Cj4gIAlDQ1VfUEFSRU5UX0hXKGxjZF9w
eGNsayksCj4gLQlDQ1VfUEFSRU5UX05BTUUoZXh0ZXJuYWxfY2xrKSwKPiArCUNDVV9QQVJFTlRf
TkFNRShlZHAwX3BsbF9weGNsayksCgpoaWRkZW4gYmVoaW5kIHRoaXMgbWFjcm8gaXMgYSAuZndf
bmFtZS4gQmFzaWNhbGx5IHRoZXNlIGFyZSB5b3VyIERUCmlucHV0IG5hbWVzLiBZb3UgY2FuJ3Qg
Y2hhbmdlIHRoZW0gYXQgd2lsbCBsaWtlIHRoYXQgYmVjYXVzZSB5b3VyCmJpbmRpbmdzIGFyZSBz
dXBwb3NlZCB0byBiZSBzdGFibGUuCgpZb3Ugc2hvdWxkIG5vdCB1c2UgcGxhY2Vob2xkZXIgbmFt
ZSwgZXZlci4gTm8gbmVlZCB0byBtYWtlIHRoZQpuYW1lIHRvbyBzcGVjaWZpYyBlaXRoZXIsIGZy
b20gdGhlIGJlZ2lubmluZyBpdCBzaG91bGQgaGF2ZSBiZWVuCnNvbWV0aGluZyBsaWtlICJwaXhl
bF9wbGwiIG9yIHdoYXRldmVyIHlvdXIgZG9jIHJlZmVyIGl0IHdpdGguCgoiZXh0ZXJuYWxfY2xr
IiBpcyBub3QgZGVjbGFyZWQgaW4geW91ciBiaW5kaW5ncyBBRkFJQ1QsIHNvIGF0IGxlYXN0IGl0
CnNob3VsZCBiZSBmaW5lIHRvIHJlbW92ZSBpdC4KClRoZXJlIG5lZWQgdG8gYmUgYSBkdC1iaW5k
aW5nIHBhdGNoIGRvY3VtZW50aW5nIHRoZSBuZXcgbmFtZSB5b3UgbmVlZAphbmQgdGhlbiB5b3Ug
Y2FuIHN0YXJ0IHVzaW5nIGl0IGluIHRoZSBkcml2ZXIuCgpJbiB0aGUgZnV0dXJlLCBwbGVhc2Ug
dHJ5IHRvIGRvY3VtZW50IGFsbCB0aGUgaW5wdXRzIG9mIHlvdXIgY29udHJvbGxlcgppbiB0aGUg
YmluZGluZ3MuIEV2ZW4gaWYgeW91IGRvIG5vdCB1c2UgdGhlbSB5ZXQsIHRoZXkgZXhpc3QuCgo+
ICB9Owo+ICBDQ1VfTVVYX0dBVEVfREVGSU5FKGVkcDBfcHhjbGssIGVkcDBfcGNsa19wYXJlbnRz
LCBBUE1VX0xDRF9FRFBfQ1RSTCwgMiwgMSwgQklUKDEpLCAwKTsKPiAgCj4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgY2xrX3BhcmVudF9kYXRhIGVkcDFfcGNsa19wYXJlbnRzW10gPSB7Cj4gIAlDQ1Vf
UEFSRU5UX0hXKGRzaTRsbjJfbGNkX3B4Y2xrKSwKPiAtCUNDVV9QQVJFTlRfTkFNRShleHRlcm5h
bF9jbGspLAo+ICsJQ0NVX1BBUkVOVF9OQU1FKGVkcDFfcGxsX3B4Y2xrKSwKPiAgfTsKPiAgQ0NV
X01VWF9HQVRFX0RFRklORShlZHAxX3B4Y2xrLCBlZHAxX3BjbGtfcGFyZW50cywgQVBNVV9MQ0Rf
RURQX0NUUkwsIDE4LCAxLCBCSVQoMTcpLCAwKTsKPiAgCj4KPiAtLSAKPiAyLjQzLjAKPgoKLS0g
Ckplcm9tZQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==

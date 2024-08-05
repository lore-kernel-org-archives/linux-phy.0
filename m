Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E44BAC3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v56vQ/zwkeis+YUgm+PnJMezAN7SeFRwUXMNu271az4=; b=I4QorZVr5bYWNc
	8sKXxmH3KfNs//aKkgQmnnU62HwTpL2xLSsyqkkfyXkJMzNU99rAwi+AIdZk/ZDpsIoG8y9rLEd6z
	ILdVeiCkLRu6Z2mhJI1gyIKfKwIVphZQf7pbDCpxPeXxFZ/PDtbPgYTINJ9oxCc5pdAF6gXnRZznK
	AquQAx+NhH3stVlVLuLH0E8tnuVIJSa4NT9geGH1YuiiASaPPXL9n2qAwu7dbgDvXyMIdFdhm/2D5
	wG3B2buHfIov1obp7L+O2KeukkksAEh90+2VWkiInTCnAUX/Cg4X6FXykwSqxllz4bGg7if8Q9IJ4
	+M27tnAwcrPE8W4qOcaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sax3J-0000000FpFm-0GeG;
	Mon, 05 Aug 2024 12:43:05 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sax3G-0000000FpEY-0poO;
	Mon, 05 Aug 2024 12:43:03 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52f04b3cb33so22562902e87.0;
        Mon, 05 Aug 2024 05:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722861780; x=1723466580; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YW/qg94iZPhUR0tp0hVHRnEk+cNH6Dflx/IRgbrrdEg=;
        b=lwOmDBiP+fGE7xSjYCbYXhTWTnmNSrlkKzx/sZI94HGQVefje/fK+yxcZXIag6Xgff
         kTGKZD+qzsX60ZIT8cs4I1VrAmsfuQqOjoEz/2tOLoqplkm5uBlQ/YZrHn7LLPXsTBW8
         nu/Sf3a+dc9OpAwc5lmvDtOScQuEa+JfdSiSxSaVzG8by/m9F6/Nq7Yss82TnnRmRFXZ
         8P6hCe+zjtwfHSO/Dc/mIrTDw5QTaPsFI/MncIx5INFsaYYutDo9ZmAFhdEb4ceCXdTO
         crrAhgXfUpBpV/jnKq7UmTELsogfHot6ukLCU//AKH9zYj6a1o0tM3cKTPSMFvP36LIG
         pIbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722861780; x=1723466580;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YW/qg94iZPhUR0tp0hVHRnEk+cNH6Dflx/IRgbrrdEg=;
        b=kmSJruRo8jpZIDsg7GSQHdzjCi2aSAvJEo9/9HZiV5rN0FRMXA/q6mqagdl6mqC952
         dM2s1sOraOpv/47bE6vGgmfHlJ+0vH2dnV96bw0yJcubXqjNrsam+SqPzCXMXNXDe/A4
         OATVtVFrBYSiZHGcNdCbSUk4XCvYcDMRN9i8aYauu3nae1oVxuI5d3aq8z6p9Wn9j+GD
         HX4zHgqLqb4a2yo8peVvVH4ytOmxGPubfcZU7CMtN2FWZzUGcbsHHOogMZ7CHaxNrfZ4
         4OFKk2S456NKIEtMUiPWRH9sMkV46MYjDhj31Xd0x/0RrSjUo8qzivZWS1H7UCJW6KR5
         BP0g==
X-Forwarded-Encrypted: i=1; AJvYcCVEPoA2RNqRitLRFeom38oKzKYPEwmkpgLIwAa0FcVzyLv/XRLUh6EeRkgbKj273gNvJZIc82tcOvfO/ptw60PI6qJtQ5zhNjJbG2PFXsf7MmeKd88=
X-Gm-Message-State: AOJu0YyxXjIS29PogZ/5GnDzKZKph7SW3CmmDugglDTqz7nHPrdJ7vU/
	9t9cMQHNDcVELzqRQ2CMcYmOxBF7fIGenr0LpjAdYf0qv/aztJg+
X-Google-Smtp-Source: AGHT+IGrn/fiiMQfSHP2zwcfkB4NJ3UgsNTVBkuKqly9QoxA5DBgXyicWcuWmKSOBQoaeHciBly7ag==
X-Received: by 2002:a05:6512:398a:b0:52c:df83:a740 with SMTP id 2adb3069b0e04-530bb38cfc7mr9005249e87.30.1722861779774;
        Mon, 05 Aug 2024 05:42:59 -0700 (PDT)
Received: from ?IPv6:2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78? ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9bc3d14sm447805066b.22.2024.08.05.05.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 05:42:59 -0700 (PDT)
Message-ID: <5af8048741215bdafa5d8f7bf6ab8dec3cd7aed0.camel@gmail.com>
Subject: Re: [PATCH 06/13] clk: samsung: exynos7885: Update CLKS_NR_FSYS
 after bindings fix
From: David Virag <virag.david003@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,  Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Thinh
 Nguyen <Thinh.Nguyen@synopsys.com>, =?ISO-8859-1?Q?Andr=E9?= Draszik
 <andre.draszik@linaro.org>, Peter Griffin <peter.griffin@linaro.org>, Sam
 Protsenko <semen.protsenko@linaro.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org
Date: Mon, 05 Aug 2024 14:44:01 +0200
In-Reply-To: <bd7c76a6-b7a5-4f8d-8081-95b6cdb39186@kernel.org>
References: <20240804215458.404085-1-virag.david003@gmail.com>
	 <20240804215458.404085-7-virag.david003@gmail.com>
	 <bd7c76a6-b7a5-4f8d-8081-95b6cdb39186@kernel.org>
User-Agent: Evolution 3.52.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_054302_264169_16EF6410 
X-CRM114-Status: GOOD (  15.58  )
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

SGkgS3J6eXN6dG9mLAoKT24gTW9uLCAyMDI0LTA4LTA1IGF0IDA3OjQ5ICswMjAwLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDA0LzA4LzIwMjQgMjM6NTMsIERhdmlkIFZpcmFnIHdy
b3RlOgo+ID4gVXBkYXRlIENMS1NfTlJfRlNZUyB0byB0aGUgcHJvcGVyIHZhbHVlIGFmdGVyIGEg
Zml4IGluIERUIGJpbmRpbmdzLgo+ID4gVGhpcyBzaG91bGQgYWx3YXlzIGJlIHRoZSBsYXN0IGNs
b2NrIGluIGEgQ01VICsgMS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRGF2aWQgVmlyYWcgPHZp
cmFnLmRhdmlkMDAzQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL2Nsay9zYW1zdW5n
L2Nsay1leHlub3M3ODg1LmMgfCAyICstCj4gCj4gVGhpcyBuZWVkcyBmaXhlcyBhbmQgQ2Mtc3Rh
YmxlIHRhZywgc2FtZSBhcyB0aGUgYmluZGluZy4KCldvdWxkIGl0IGZpeCBlZjQ5MjNjOGUwNTIg
KCJjbGs6IHNhbXN1bmc6IGV4eW5vczc4ODU6IGRvIG5vdCBkZWZpbmUgbnVtYmVyIG9mIGNsb2Nr
cyBpbiBiaW5kaW5ncyIpPwpPciB3b3VsZCBpdCBmaXggY2QyNjhlMzA5YzI5ICgiZHQtYmluZGlu
Z3M6IGNsb2NrOiBBZGQgYmluZGluZ3MgZm9yIEV4eW5vczc4ODUgQ01VX0ZTWVMiKT8KCkknbSBn
dWVzc2luZyB0aGUgZm9ybWVyLCBidXQgdGVjaG5pY2FsbHkgdGhlIGxhdHRlciBpbnRyb2R1Y2Vk
CnRoZSBwcm9ibGVtIGFuZCB0aGUgZm9ybWVyIHRyYW5zZmVycmVkIGl0IHRvIHRoZSBjbGsgZHJp
dmVyLgoKRm9yIGtlcm5lbCA2LjEsIHRoaXMgZml4IHdvdWxkbid0IHdvcmssIGFzIHdlJ2QgbmVl
ZCBhIGZpeCBpbiB0aGUKZHQtYmluZGluZ3MgaW5zdGVhZCAocGVyaGFwcyB0aGUgZHQtYmluZGlu
Z3MgZml4IHNob3VsZCBpbmNsdWRlCnRoaXMgZml4IHRoZXJlKS4KCkhvdyB3b3VsZCB0aGlzIHdv
cms/Cgo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCkJlc3QgcmVnYXJkcywKRGF2
aWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=

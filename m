Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01AC5D690F8
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 10:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJfIr517hqZCyvBA9rf5mVXmEO4KQuEmJL21ES4AVbw=; b=xWxx2xi4m+RL9t
	T1g8ig2XHrOGRSGw52Qg6N9atVxj1IOa/XH5c/6bCUALXKpIAX0dMqsUCz+pmskwgq02ycZ66Qc+Y
	LGprvnNhOnU8JNgXgXUm9Sey8feAn3zTJ7n5KdiwC9UGh/PiKBM6xy9aWUzK0/7pXi2BVAgeGblhL
	cZD/wKoImb5ruarQc3U2pJCGglmIsWBzBOT+0Qs7N97eu86qBbjdT8HY6lPtxdh4wFCaNA2IX6zZn
	Ny9Qz6URpaLv5v+FUEmbervWkwaNjhedmXAufj801PjzTgh0E2wAVejRyJi7HtrBq8qSrfAvx2KPY
	QnmWwIc/RFL5WO6Lkhjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGcAi-0000000FItB-1bTZ;
	Thu, 28 Nov 2024 10:54:56 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGcAf-0000000FIsO-2UVu
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 10:54:54 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-5f1e560d973so378317eaf.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Nov 2024 02:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732791292; x=1733396092; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ehekiZACHQTnSExEqnoLJzOhJU4i7ihd93wvSZd3eI=;
        b=jCjISWjStnHniYAUj6b2rc4U1k79QK5aM+OClHO/xx/cYyOEocrUXrKbc8VSV1UTQT
         ODvRgkhcoqYA7ZhCPMV27GEHE+CByn7HfQSElPQBboA4YqrowxsaxV02eaNxq3KnCf/2
         8PEcbSdia7w359LlrlyHYNoWjh4MQcFWCXfkVMEak1PieVDRrHe0lf6T1qpquxc5DVTL
         5/FRunSVBUPNrbyzfvAaULDXS+6jnYFF7CAD543OAU/Q8gRt5LNcjGPAAgD/qGpCmpiL
         HtSkZlh466z71jsvp3nyPd/bvpAMchHhXd+fjp2eEmTbhjehqHFtYzMFc2iEZPWGZrdi
         OEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732791292; x=1733396092;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ehekiZACHQTnSExEqnoLJzOhJU4i7ihd93wvSZd3eI=;
        b=q8ljlX2rVhIH4gk9vJypypSoOF2/NcXNFsGX2Nc53v3g2Fd3vUr/fj7EpP+lHs0glG
         QR4N7OgePn+iUBepw246J6KAaHCdqMwuVbxs+SrddXddA8ytZxXdmuE7kM+mGqsaGzx0
         YKp3+gOmvFn34UNfV9k9tTqnO69kiG+8VfOHJT2CVyUXPOuvNWbKwvqRmhd71I+duo01
         B7JuTuXvYEL2J05t7OcJB+gfus0eCXahoPdJhnZ6bcBVMkVL3BcXAZt7LWxjD3iprxMO
         wlXYPDkL0aO16EM4iVCTSZUYc7h+aLgOMrheNjWgHCVfE034gHBo2hDrq8rGciW3yI11
         jcUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXckkSN1yzfdGW5oqEeyYFfOJG0ZDBCefe5/f86cqGM7pB7t7qLLpNsf9ekHFeUFjf3cZtPTu6pM0c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxO7VHRhgq26bk0oH23PCNTkaDmTcjrOHEBiT6TDXTbQLGMUI4I
	p2HPyl/8neteQ/4xr7Ip3SMqAcPng57Z4Ke+25v/L8AMZwo5TJqsC+nCmEzF5ogFzW/Dox8vVlz
	vwHX7hCKENewjTH1uWyymD50g2mALw3Bw937eoQ==
X-Gm-Gg: ASbGncu4xDCJzco/Qr2+t1loRWi5RIoo8H88+3kkLsqE6qLxc9Id2y/mrloDfNrEUCn
	1fyjVD4IoS90EX7tOlWt28SvvxP3P8NSV
X-Google-Smtp-Source: AGHT+IFRspzNKnz4//d6oD1niqAfNdEx+VyAphVEPqsddVm2R+EgqYzGwfP+qAkW+vpL9icCdahFMF+IE7WYtI+pC5c=
X-Received: by 2002:a05:6820:50e:b0:5f1:dc89:fa85 with SMTP id
 006d021491bc7-5f2179fa1eemr1438491eaf.3.1732791292366; Thu, 28 Nov 2024
 02:54:52 -0800 (PST)
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-3-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-3-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 28 Nov 2024 10:54:41 +0000
Message-ID: <CADrjBPqWh6z=1+9svYw8H=DZSpo+93rhO123LwFOAMOHMraLkA@mail.gmail.com>
Subject: Re: [PATCH 3/9] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_025453_639126_2846A588 
X-CRM114-Status: UNSURE (   9.40  )
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

SGkgQW5kcsOpLAoKT24gV2VkLCAyNyBOb3YgMjAyNCBhdCAxMDo1OCwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBUaGUgVVNCIFBIWSBvbiBnczEw
MSBuZWVkcyB0byBiZSBjb25maWd1cmVkIGJhc2VkIG9uIHRoZSBvcmllbnRhdGlvbiBvZgo+IHRo
ZSBjb25uZWN0b3IuIEZvciB0aGF0IHRoZSBEVFMgbmVlZHMgYSBsaW5rIGJldHdlZW4gdGhlIHBo
eSdzIHBvcnQgYW5kCj4gYSBUQ1BDaSwgYW5kIHdlJ2xsIG5lZWQgdG8gaW5mb3JtIHRoZSBwaHkg
ZHJpdmVyIHRoYXQgaXQgc2hvdWxkIGhhbmRsZQo+IHRoZSBvcmllbnRhdGlvbiAocmVnaXN0ZXIg
YSBoYW5kbGVyKS4KPgo+IFVwZGF0ZSB0aGUgc2NoZW1hIHRvIGVuZm9yY2UgdGhhdCBieSByZXF1
aXJpbmcgdGhlIG9yaWVudGF0aW9uLXN3aXRjaAo+IGFuZCBwb3J0IHByb3BlcnRpZXMgKG9uIGdz
MTAxIG9ubHkpLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6
aWtAbGluYXJvLm9yZz4KPiAtLS0KClJldmlld2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5n
cmlmZmluQGxpbmFyby5vcmc+CgpyZWdhcmRzLAoKUGV0ZXIKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

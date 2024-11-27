Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A39D6ACF2
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 16:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSjKeEz/iITHkMZVQVRCAYafppgAqgzxU4qhj0HiVGc=; b=xpEz7KhXdnAZNL
	PTtAI7rQhWdsgKV2HJBr2p5eJGD79EWoZEWv+m2IbibqHFmaZrQItS9NkBzXUdhlnUPasQNumUIuY
	UZmsJsqMPn5f9ZDyAYw5vzehAUXVUwCS1d/6NpLwzia72919Oz8oinyZYP2Q8helFXXHp/g4hCEgR
	ijZRZ/8FFB4QtSg8RGUQq4zzZSrvyG8gsU+LxQkpjRW1DA1t/16BWeapC560Bv1sbYvQtttum6kXK
	hQy2lwo8JiCieBEWBBfBpF8bFlx0Fy53NryE7uw1b6WNkCNrjf4CKHMXHI5NHX2cJ/4Lj2xpK2/9z
	VwPy0kyKOW++ShsK/CsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGKqf-0000000DcbE-30V1;
	Wed, 27 Nov 2024 16:25:05 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGKpo-0000000DcQu-14jh
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 16:24:13 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-434a0fd9778so28602255e9.0
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 08:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732724650; x=1733329450; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W3ci6YCIiDufTlH6QWOH+RcWY/SBARvhjUkFISOP+Eg=;
        b=V3nEd4XJRV6j/AFZJ4DTMTsYt0EXOHgueegtl+j4f7IfCgyE3Tj9ouYtqE0rVqpT5P
         XjPP5iWU6JKQXUhYYE4nzt6xG/aXF/hO4KaFW+g1SRw9N2PEhekpY+JKYLMBw+Rmk/2M
         uwq53tiLszjQyIqsddi23s5uLQtw1xJ0rrh0MvRy+RKovZcVyHtowi/npAWO9PgmkQ7U
         GMdyK0RLZjEXMhBVZUP7BcgNMU+7mjN0Al0eet1ajRmFS79PtTAk0eXNAkSKiFU/qUix
         eZdCOCWV7naPtJ3twt8A4yjgp94FDZ87JKLXxRfsG6QjwGPSFfvApdn+Eogae9dBMq8Z
         K27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732724650; x=1733329450;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W3ci6YCIiDufTlH6QWOH+RcWY/SBARvhjUkFISOP+Eg=;
        b=a5Wlgxh+UGxzbNAfdDuR+uUOHMEiyLT0BzlMJ+cnT9EqTXdYWqO96n6VH+FZwOz5zc
         dypC1iFtaguGbowjOsXOk5Q3jo23uP+Ge+/pKD0NfTpGfjvQmEqe+EZ+6NBYte/Y3eMQ
         8/mf61u9JJB5VNPw4DWWDu8PlKKzfqeOTK2G7p1fXguE5fEeyPUbWghdGfs5BfQwqh9N
         Q268RAP6rI6s7iM6UTNgvDQHlMeAX2bpXnp7IzsTooKyASpyzzgMvVlyp5HuqjgQWpkA
         ZupIRwk4fYZs5nEahNYspnYZ6Gp5G1Ung1JAPHWehFGUb6Fqhid9tlJM5x1bO2iv38SK
         wnYg==
X-Forwarded-Encrypted: i=1; AJvYcCUf0tD5Fhn0P8QuN+wbXO9kj1rTFy/vhL086ciITQHGBbQuKu+j17I27VdtKghcAVAPvHYoKAr5svk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWhBZPFzcofP/Or1qBluCi01YEIXD9nJZr5gX9Xw13L3eMQPyb
	NIWfSnkbdeqmpekQUUPfFma8ZG6AcYCcDUrduRL2JBiWzYYDEIOnmDFeyjgueGg=
X-Gm-Gg: ASbGncugD6njYklezXb6wW7l9sXwp6pMR4WJt1QRgJ8FV95IxxsGDDzsrV/Z38YbjsK
	nfYumCIwP8PyM7oupVDYT675aVVVOgUWZ7qH/ndyMIMadl+HhxplwKTUdRP8z7dlLz5CSNIi6t3
	ohOAb3KaHJSq3gTyR8TwCKGJN3IRBhuN86dazvuesSBAODmz+NdWI7rlfRx/GQSguL3zs6wUMkT
	kvkhSqtL2R4dff6qj59iXV0LTIAZItUmjg1j55rG42gF9+vKsR1AQ==
X-Google-Smtp-Source: AGHT+IGDZztPo405KuhE/5HQpdEcc6G4U1hi5a0UqN/AZl+cMPyQNrZOeFD27R5rS38JBrkH0dwofA==
X-Received: by 2002:a05:600c:354e:b0:434:a684:9b1 with SMTP id 5b1f17b1804b1-434a9dbbfc6mr34223735e9.4.1732724650556;
        Wed, 27 Nov 2024 08:24:10 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3defsm17311830f8f.70.2024.11.27.08.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 08:24:10 -0800 (PST)
Message-ID: <813713d8ac62be0782bcf36d1d23bec5f4a3c08e.camel@linaro.org>
Subject: Re: [PATCH 3/9] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Marek Szyprowski
 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Sam
 Protsenko <semen.protsenko@linaro.org>, Will McVicker
 <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org
Date: Wed, 27 Nov 2024 16:24:08 +0000
In-Reply-To: <20241127-majorette-decorated-44dc1e7dd121@spud>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
	 <20241127-gs101-phy-lanes-orientation-phy-v1-3-1b7fce24960b@linaro.org>
	 <20241127-majorette-decorated-44dc1e7dd121@spud>
User-Agent: Evolution 3.52.1-4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_082412_284593_DC46969C 
X-CRM114-Status: GOOD (  14.49  )
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

SGkgQ29ub3IsCgpPbiBXZWQsIDIwMjQtMTEtMjcgYXQgMTY6MDAgKzAwMDAsIENvbm9yIERvb2xl
eSB3cm90ZToKPiBPbiBXZWQsIE5vdiAyNywgMjAyNCBhdCAxMDo1ODoxM0FNICswMDAwLCBBbmRy
w6kgRHJhc3ppayB3cm90ZToKPiA+IFRoZSBVU0IgUEhZIG9uIGdzMTAxIG5lZWRzIHRvIGJlIGNv
bmZpZ3VyZWQgYmFzZWQgb24gdGhlIG9yaWVudGF0aW9uIG9mCj4gPiB0aGUgY29ubmVjdG9yLiBG
b3IgdGhhdCB0aGUgRFRTIG5lZWRzIGEgbGluayBiZXR3ZWVuIHRoZSBwaHkncyBwb3J0IGFuZAo+
ID4gYSBUQ1BDaSwgYW5kIHdlJ2xsIG5lZWQgdG8gaW5mb3JtIHRoZSBwaHkgZHJpdmVyIHRoYXQg
aXQgc2hvdWxkIGhhbmRsZQo+ID4gdGhlIG9yaWVudGF0aW9uIChyZWdpc3RlciBhIGhhbmRsZXIp
Lgo+ID4gCj4gPiBVcGRhdGUgdGhlIHNjaGVtYSB0byBlbmZvcmNlIHRoYXQgYnkgcmVxdWlyaW5n
IHRoZSBvcmllbnRhdGlvbi1zd2l0Y2gKPiA+IGFuZCBwb3J0IHByb3BlcnRpZXMgKG9uIGdzMTAx
IG9ubHkpLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJh
c3ppa0BsaW5hcm8ub3JnPgo+IAo+IFdoYXQgaXMgeW91ciBkcml2ZXIgZG9pbmcgaWYgdGhlc2Ug
YXJlIG5vdCBwcm92aWRlZD8gTmV3IHJlcXVpcmVkCj4gcHJvcGVydGllcyBhcmUgYW4gQUJJIGJy
ZWFrIGFmdGVyIGFsbCBhbmQgSSBkb24ndCBzZWUgYSBtZW50aW9uIG9mIGhvdwo+IHlvdSdyZSBo
YW5kbGluZyBpdCBoZXJlLgoKVGhpcyBpcyBob29rZWQtaW4gaW4gcGF0Y2ggOCBvZiB0aGlzIHNl
cmllcyBpbgpleHlub3M1X3VzYmRyZF9zZXR1cF9ub3RpZmllcnMoKS4gVGhlIG5ldyBiZWhhdmlv
dXIgaXMgZ2F0ZWQgb2ZmCgogICAgaWYgKGRldmljZV9wcm9wZXJ0eV9wcmVzZW50KHBoeV9kcmQt
PmRldiwgIm9yaWVudGF0aW9uLXN3aXRjaCIpKSB7CiAgICAgICAgLi4uCgpXaXRob3V0IHRoYXQg
cHJvcGVydHkgKGkuZS4gb2xkIERUUyBvciAhZ3MxMDEpLCB0aGUgZHJpdmVyIHdpbGwgYmVoYXZl
IGFzCmJlZm9yZSAobWVhbmluZyBmb3IgZ3MxMDEgaXQgd2lsbCB3b3JrIGluIFNTIG1vZGUgaW4g
b25lIG9yaWVudGF0aW9uIG9ubHkpLgoKRG9lcyB0aGF0IGFkZHJlc3MgeW91ciBjb25jZXJuPwoK
Q2hlZXJzLApBbmRyZScKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK

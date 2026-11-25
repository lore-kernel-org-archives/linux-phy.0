Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73669606A333
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sOXTkTqw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=E1vZt4bz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SXlLYIs/odhKZ/izQd4s7V1cmJNc9Cio2AYg0jjGj0w=; b=sOXTkTqwbLlszicztitOI93+m2
	XU5IBx7RcWLaC5xXmeqo+j82jl7Zak6zeTJlS7ZwBrBes6X0LMiuQka3LuP3WBdBGH2vq0O7Rg6wc
	c/Kh/Yzr6PfNIxranISl1a8W4Tc+XPQq6U79X5Ssf8/zt0sv7vygOaWL3yzZaibWbjRjgemxyH0l7
	bvWIwWSAMHr9AmbJ3R22lQzvrwuy0hauuoKJP5/YEGSMhp7q2pNtrCXJNmQLD88oATZVZicfrlltP
	6XIt3FSyQxZSlNBguRRK38DqjZxF7SkHUxy++nQ5IxfrtFPygyBwcJFzI6Y79drZ72tjIjiyqH3eo
	+gZnt9Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWHUD-0000000Ay2I-0vHD;
	Wed, 25 Nov 2026 18:12:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWHUA-0000000Ay1v-3Sqz
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 18:12:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 13B1062169
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 18:12:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD7681F000D3
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 18:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795630369;
	bh=4jTbRTZRitaWiCSV09T/AEZ1U865c63Eb8AZUxy/ufw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=E1vZt4bz0JhSxEtEeTI7AoUtNANPm+CYHwBUNqhHgFr/iJU34ypA4gyvEobRGVVWG
	 9sNy2Kp4eRirU984KbHPbBQwRxAMBw0cF1sENozuKbbGNZb/O50pacgvRU6EFJnoFB
	 e0663LxDQsaZnwh8If5SheyJM/1JF5a1ioNQQWnt8O1SqtINZLxt7JmM8TIBcYnl70
	 fj0eds0EpB+nRqjdBY8K3MX2wK2PshqxZbTAerzI0E9u/sPsDPNFFX/ITT7JCW9mrz
	 FhC37POqO+y8cdgD/Fld0E0zttEIf8yVuZhvk+yS4l1Nym+PDNrT+ZV1zf/lgrACLN
	 IfMhEfOT1UEmA==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5be3ed646a5so8092993e87.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 10:12:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErH2haBwEP+N4ygvm4HfzcAs5CcxrVFbMjcUMlISPVfCpYN6pJDGzGcep3XujHFYfKAwG+3l7jNL5AI=@lists.infradead.org
X-Gm-Message-State: APuU4Z8TnTG+0dYnH8XgjKozEByg6rYHMPvEkgwj+wOPXnJ6GEZ9HWI3
	VksfmGIgoUp+fcaA6tfuFKr4vMZI/FK8kqEqhk1a+aTXRQkB5pUQQsUUVQaKYW9y3l+E9jDOaje
	dN0tvtB5CSaVFqHCcbkPLx20tCS5lItE=
X-Received: by 2002:a05:6512:b86:b0:5bf:ce24:2d20 with SMTP id
 2adb3069b0e04-5c1bc7bc30bmr5709392e87.22.1795630368568; Wed, 25 Nov 2026
 10:12:48 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261106230746.21954-1-wahrenst@gmx.net> <20261106230746.21954-4-wahrenst@gmx.net>
In-Reply-To: <20261106230746.21954-4-wahrenst@gmx.net>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 25 Nov 2026 19:12:35 +0100
X-Gmail-Original-Message-ID: <CAD++jLn3Se-NzQDMatXN__8+xFQUjVr2DJbigjFfy=PE20266w@mail.gmail.com>
X-Gm-Features: Aa3M54rzEawPDtXAOeD0tX6yiM-y94vFsxRv9P0IIXZxjhuCad4qET9fZgXDR1Y
Message-ID: <CAD++jLn3Se-NzQDMatXN__8+xFQUjVr2DJbigjFfy=PE20266w@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: gpio: mxs: Allow gpio-line-names to be set
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Vincent Mailhol <mailhol@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de, 
	Fabio Estevam <festevam@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU2F0LCBOb3YgNywgMjAyNiBhdCAxMjowOOKAr0FNIFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0
QGdteC5uZXQ+IHdyb3RlOgoKPiBEZXNjcmliZSBjb21tb24gImdwaW8tbGluZS1uYW1lcyIgcHJv
cGVydHkgdG8gYWxsb3cgRFRzIHRvCj4gc3BlY2lmeSBuYW1lcyBmb3IgR1BJTyBsaW5lcy4KPgo+
IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+CgpSZXZpZXdl
ZC1ieTogTGludXMgV2FsbGVpaiA8bGludXN3QGtlcm5lbC5vcmc+CgpZb3VycywKTGludXMgV2Fs
bGVpagoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==

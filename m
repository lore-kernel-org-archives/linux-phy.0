Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B535C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 21:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WrGNGwBrpWFdBL/cZOk65wKuISwN9h+jnmtYV5TzY6I=; b=2X+AwQ5XLEAA8WYT5wiWPhGmWE
	JjHhcO03NiqaWASQ15L4QgPgAucbU0NBNVEDF2Ky9MkMbuTkuAi7V63oVTXeYy2H/nFrR/vyghNoK
	2DWjjzGGrn3d3WnWyszCo/3uid8WwcjMMXMRL4eCljWuev/SxrL08V/bjkxzuLMyMzo1blbz+0v5m
	gw8HhwCuNNvIBxpIELbkh/mhrAa62kqpItQ1EBcyRsxoJHn71XxKtYxS87qUcbwHvRxSHh/nl0sy+
	9aGPpf6RmMM2Kh7XeWGK8NalbvyjmTpAQ2dpVTdpXNroNdnNCYULu6KwzXeYdptPDzmXn/Bcz2q/F
	MeH6pAOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wopJB-00000006Jsq-3lVC;
	Tue, 28 Jul 2026 21:25:53 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wopJ6-00000006Jq7-3jS6
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 21:25:52 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4956869750eso2102045e9.2
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 14:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785273947; x=1785878747; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1dUKZYq5xkF+c+j8L2UCzb9nPYl48cxNMgRgY7fYgmE=;
        b=lsTOm87rn48E9atRlWChU2fp+1pRCg9w6xQTqh4Jm8BOQAf4Bxv7XjBOyRXtrnUzvV
         yAnhcp8yxeZSVqPpfdR0+YsE/6qFsJ1+V8spbvBa/+brtjvKdRilQx7cET+0EOhlFpp8
         225qxNgdzuxgSBW0m1vIuUIVkYEobSQWRngIujgX0R13rIytVnTj+iHkHrw2WsaX6D5A
         nAGNPrgVi9HARb76mUkTWe2UXtLlPcYD8F/jUP9dqSdacCX0Vvgnu/O1pQiKZarJmySq
         xxEi4TOrBm9PQPhPrTF37RWQF51Nuy/nq8pmEV9gvKyqvI3JyQu56nsXoSSMMjZo8W/v
         wPkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785273947; x=1785878747;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1dUKZYq5xkF+c+j8L2UCzb9nPYl48cxNMgRgY7fYgmE=;
        b=llLy6UrItpbVJ7huxH5tnEMnMEHZJjtg1vIcYVlwvwRE9WltOA4rW2EM7wRXduz82L
         5PDdHrSpSk1qbNXCwnO7zpJ0DiDbDi8c2ljsAs8/B8HweBn0jrg4pstOQSAPeL8Pfu7r
         X0qRTFgFpq0rQ0s5izu4rnh424LT4dGfGFvuYvsFRZWPoEwp91b3Du+uEhRpteo7MALC
         qxbaj/ZmJuQR0rKp97KWDjJH6YxBnj6vn4aowwx5cM31aAF/nugIvdor9NfufhreMq7N
         XKMviygMFWsrk6jh5L0cyH8z/q0pMzvQzwMfOztOZ/Pb1GXmMY3LvsYsItgvuJMIqQC4
         iPug==
X-Forwarded-Encrypted: i=1; AHgh+RqxAP19PEg0mYPh3d+27IzZPUFA6nv6nCq3wg3gVzovb542CUnI3peQt3EcycUrTavKrA+YVGb+ing=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxpVh8KDMZ8oxatN7nbCzXV3b/ap9EI2Tdg5KTF6++rmRM8Pke
	O0RloR/ZhZRYw2Wtu+202Syy0vFR+feDMrjJ53Rh2oRc4Xgn4W0U+MOs
X-Gm-Gg: AR+sD10xmfWmhj1UZ2V7A6gsCKnBWACKvspXYiORroFyAvJYIYw5vQQhC3A9dz7B/vS
	TvtSBS9LaX+Ebtemg83k8aEgfsCmyLGu19Mdvn3iz/Hxi0o1lS/ynjZCLwNr6/+EZQC3w1B+D21
	DLjLPkw2iRrFuNEbRM6cxtS1xFDgpJTE9znoOHR8u0aUBiIL4joiA5xDK8gjGq+lJIuXurFjuap
	AA3GAOLndymMG0rBnpxZq1wJVeI1g8Kr6PF59M0kuvUr+E1zb1+oUn6BRht7BbpABRb5zSqzxrK
	sdoXhS8I75EnTGXAxh37NWCAnCM/cVwPJ5iD07fVC6y6e0heA40CEPyH7orGH9ekYRNAuppBG6J
	xhbthSTcLhn6pTUo31S9WGBRjeVC4lEUJFAfVMfapwkSm1y4qy5hIeIxq7VVAjHvvk/YELu151V
	TO82K/2QGWp4zx76mnQtg7NyxxTiAiEAqUFQvbwZlAcAO6g+uIZi8EdhoTnLMGF9a6rWtYKKw=
X-Received: by 2002:a05:600d:844e:20b0:495:5375:2510 with SMTP id 5b1f17b1804b1-496c6568a37mr33118015e9.24.1785273946598;
        Tue, 28 Jul 2026 14:25:46 -0700 (PDT)
Received: from grey.localnet ([197.250.51.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-496c45c297dsm103054375e9.7.2026.07.28.14.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 14:25:45 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Brian Masney <bmasney@redhat.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v8 05/12] clk: zte: Add Clock registration infrastructure
Date: Wed, 29 Jul 2026 00:25:34 +0300
Message-ID: <MwDLqBgXR7G6dGkTtCaRrQ@gmail.com>
In-Reply-To: <ami0TaY84IslWZyo@redhat.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com> <amiw7mfPfSPjLHLH@redhat.com>
 <ami0TaY84IslWZyo@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_142548_943140_F627DD8F 
X-CRM114-Status: GOOD (  15.51  )
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
Content-Type: multipart/mixed; boundary="===============4309406386448540847=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============4309406386448540847==
Content-Type: multipart/signed; boundary="nextPartYxrm5NhARqO7C27MMFWz9g";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPartYxrm5NhARqO7C27MMFWz9g
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Brian Masney <bmasney@redhat.com>
Subject: Re: [PATCH v8 05/12] clk: zte: Add Clock registration infrastructure
Date: Wed, 29 Jul 2026 00:25:34 +0300
Message-ID: <MwDLqBgXR7G6dGkTtCaRrQ@gmail.com>
In-Reply-To: <ami0TaY84IslWZyo@redhat.com>
MIME-Version: 1.0

Hi Brian,

Thanks for the review!

Am Dienstag, 28. Juli 2026, 16:53:17 Ostafrikanische Zeit schrieben Sie:
> Looking into the other patches. There's more mixing of the clk provider
> calling the clk consumer APIs here. It looks like this just takes a
> reference and holds them. Would moving to parent_data address this?

I think so. parent_data::fw_name is indeed something I have been looking for 
and didn't stumble across myself. And I suspect when you say "use 
parent_data", you don't mean "use parent_data.name everywhere".

But it raises the question of how to handle internal clocks, e.g. foo_gate-
>foo_div->foo_mux->clock-26m. Only "clock-26m" is passed through the DT and 
found via fw_name, and only foo_gate is exported.

For the other clocks I currently rely on the string matching to resolve the 
parent named in the static init data to an actual registered clk_hw. The 
alternative I see is storing the struct clk_hw * in a table by index and pass 
it in parent_data.hw, but that'd require managing the extra indices. Or build 
a clock-local name->clk_hw lookup, but then I am just reinventing the old name 
matching.

Am I missing something obvious? Is there a canonical implementation somewhere 
that implements modern best practices? I learned that looking at existing 
drivers isn't always a reliable guide.

Cheers,
Stefan
--nextPartYxrm5NhARqO7C27MMFWz9g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmppHk4bFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoirHYQAJP3CdwusoH3pkXKfPo4
IsHXR5HpSkcfs8UCWKbXUiLjzTOXi23M6YRSjmwFG3d1x7/tF3zuRiRB7UoTbPxi
Dpcjy4P38mBhhj5ViTMPZEDb1+yGlH/55A3Q13yyGUZAYrWBvjlF1+CeyejwGj3i
MVs7cQGfnjS5eKxnSlMeu6YES3/GMT1FEr87RSiK1tIR7l5Ly+ZlVUeFL6j/QR5c
0fRWrLVaRuf40Z+Br0mTqVYameqPi3Y2txNe/WB5/6G3h+Pwgr8fa18n7kss1CR4
PLy4xOCkdwBhFr3V1XAwmLR903mrts0OzyiU2WEgelU4aIvO0g+IY/QpVCb4Tc28
sIFnx1o9RB82nrHOGyZ+tE3Td9Z8jdagf7NCcynDF9OBNO8d2p2VHrytuTO05BU0
6WTcRZf3HNTRavdGicG0D+UZLTrVSeATG7Gn84xOtEcqnNQgqGw+7FFrbYL3uvnB
zJpQ0g3TxhaSjw9l5WYghaypuxgBUI3vsXsNBCFUi9/LHutvv7c2UFoB9pGMO+0F
agh+s3+qnrEIuyCa6gMNO0ARQMjjfVWPCMn+QO0W6LDHLm9V862PI8/fSAHIJtBw
8YniFVm03EcJNgSelHRlZO20sDNBbjjcJdMzKez23UwFsD+debYrdpQOo4Z1MVqr
o4X7ofieFY9lg1CnhuLk+OK+
=e+iT
-----END PGP SIGNATURE-----

--nextPartYxrm5NhARqO7C27MMFWz9g--





--===============4309406386448540847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4309406386448540847==--





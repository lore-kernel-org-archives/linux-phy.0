Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC80606A31A
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 04:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rZrk/CMV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=K/sHrGmF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WDvKHDToMvaMi9jUtOcdJh6/C4aCN3ErVadBBZ/Saro=; b=rZrk/CMV0+IJzLsUta2x+cAwKl
	egcmn9hhMHmoBUVCyB8dFwG2u+aRpX8SA7X0xwPxoh+djVsTJGcHILDxpfXFI/V8V5Cw9acseczLm
	6hakm9y3oYhqcVJ8eYSh6eMAnaNnA6adK+pTECI5SyWx+dn6nzAWZrg5BknLem5fY42TeDqHdwUTh
	CKHPUzbCq2d8WKGhgvgxVVsMA1QtTMiVq8IAen5zqsyXMfw14qOeIJbtmaF3yU1fNAsUAJSy3rk9Y
	izyeVsUxvkIwRO4z9RAM0B/zKkLjgaXkGvjeFL9PZpFUTg4rsWz0AdMrUDc+2kWoesJK3gdXKVaFP
	+Dm6Nd6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLCSG-00000001hkt-3k8R;
	Mon, 26 Oct 2026 04:37:04 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLCSE-00000001hjm-0Vbc
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 04:37:03 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-c33700b6435so44322766b.1
        for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 21:37:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792989420; cv=none;
        d=google.com; s=arc-20260327;
        b=II60lF7rO/6GqmFOjDRXGgSUT3RyXThQk5+Ky6o8xSjjjOFPQM0CQuX2BjYVU4QtFe
         fKEf5bOSqGPmCjVbk1VbNBOPa6DNOLBDgQvayX+kk7bBhiqsw3b+DmXEOeodHuqgS/3X
         4c1467kXXk+LB0r8m4vq9pzmP4pp8ZV+kfsxShTYx0+I8jYB7z3W3YccfzKLHf9HPcXS
         MEeKLKK2GEkssTP5Ii2OoEo240Rnsttm8C7Gz9EtHrETA2SqsHBvbX19pnGgMCMN6Fxx
         ReaIW0PoGzz8kDainoeqxrld3ccNV8D7g/QhymOAUpJ6z3RRlznG2TqEQDa5/yFH7C25
         rkBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=N9wqBNwFeUJDyujtnIyKOyjh4O7kEuJC5I05KW0Mx10=;
        fh=Brf0riJiFCFkxodu7i7pW+RqT18N0ajZV0c8/olUHFM=;
        b=SgtsrggTormN8FfatRAb04P3i+a02MIPGUpCVweNn30Yn84QwxIH/kvpphN9xV24nx
         j/Aoyy/IAn7pQRRqc5hsGtRZjLIZg+5EiOEHWfSJ1t6dfJhz4VfCfk6xKi2aMnerJgct
         uzRmPaBFFtLFLIciOXwGIik1ecmcqE4ObOFqkbUT/BF2UFAYomXUptDGmyBeW/B8twmg
         gyM7ovb7b+0bYgR5QAasnFnxbjpiqyy5248wwD4AHk876Cc67AG18O1Vx6dKumfBxYmp
         4qEiG9uX8pBXFA1sAu3lblMX0Y4cFhclodZw+7QucE2Nmh9olf9EeAjRik0GhBddG1mP
         TGag==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792989420; x=1793594220; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=N9wqBNwFeUJDyujtnIyKOyjh4O7kEuJC5I05KW0Mx10=;
        b=K/sHrGmFl55Bh3VR6T3+j5V7c6A9Rit4kq7dRsppLOC+0MtvGa8YOqgiGwtGhs8pq1
         hp6bK25VGQFcjaQbGbr25U9nTQK80wxi1lSza0MeGU0EPDWUWTf5lA0MVtr1tnqGmASP
         51GOoSAdPJwDsXnjYZKzLwhoj58V+VASxeBLzQym0SpkFfHAQhqgH6bcwpbkDyXoGIq3
         4jj/3qdqeGEZkXjswhaZIHgkiA9OddOPtbPNSlOBI4tas+kMysnLpiWyV6tuBIexmJ6o
         gyIxepWIQV10QkuL5r19Xzy2p/DDgU4GZlCK0BJ7s/DvEkVX7u1Z1MILRTOrfoPPnGjU
         qwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792989420; x=1793594220;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=N9wqBNwFeUJDyujtnIyKOyjh4O7kEuJC5I05KW0Mx10=;
        b=YFALvyJZFjtQeQ40ZMkrMYggAR6QIPpiZEvP/+8bOILOAyrgojzj2l3CbEZe2IwaJo
         th3olppWVXwjgkXuPH+B2jYGPSY6cpchh12LoZfKcLf6OAiM3e+QcS2deSPqfOJ/ONxv
         Zi7sLeOxgzbpXiKjBmFGsA0yMbxBXG2SiUszCJiTbcIA6AeNNapuvc0J7gXdOJA2rsXm
         rvz5smCgfBXfKTYMIsGhiBfqKzUV+szXdyvXcowdrQ6EGsfRR8qoYSyRfxtkI90FNwIY
         wVbTKVtSwQgjtR89smx7mZV/jbuNrsQTXSkYMS1Rc5UbwkFx72v/Tj3Wv2h4GTPbKtvs
         lF1g==
X-Forwarded-Encrypted: i=1; AKwUvByviff7gn+eZTs8DbvcvKfe/y5OwtHaRx6kdexTgs7pQg7oO5X+TJ8Rzik3Erglg7op8g1Hs0uqxWk=@lists.infradead.org
X-Gm-Message-State: AFq9FYI+oRazxRmUiDWfh9ecXXwV7yLZTwOhUmAJO0XaB8rJZyFw+qWF
	0wqFoVouZ4cSFHdvrNWSJqc2pWJX2VPyl9vHA+EFlcq+D9vlf17SGxCJr6NBIHja6931jADJ8U5
	E+/dGUkHuoDbXEc4MS9x4jEwqIJs53/Q=
X-Gm-Gg: AYBFou3zomjOGf+EuycFdkUts2QlU8QY/2Xq6+l/LIwdDI3J1K2wJuYryLeh81ZagVc
	CilcktQgI3y4TWgxmP1dZmltZBd4/0QIOpXg5h1NtjUFasQd58WFzUjBbbz4rU83t6TFsnKRt/a
	kptskPeLfxvbRoj7O0YGFcNlpro/1ykEHd3iTnn7R1hG4PuO6D2nSC7v3W9sjjHfKTxpqzVpdID
	1K8ABaG7D1gfVkOZYogzI9zk2whoKq3v0qnNk2Wugb7xbjZzgK+tGyVs8VA4mDrGsZD7uLOsTdX
	jcRwC0GbgYyYZeivVj38zr+auw9AAr3lcGFLxGNVm3sLXa7dDgGonSU3o6z2jFkHa6uCplVxl9X
	lo5dizDjWU0ePx3LUP/SlSBcpks+lCKWKGNi8
X-Received: by 2002:a17:906:100a:20b0:c25:3ec4:9e43 with SMTP id
 a640c23a62f3a-c46bd90669emr681750866b.0.1792989419265; Sun, 25 Oct 2026
 21:36:59 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-3-e63b49eabe2d@gmail.com> <f9b60989-e58b-4ac1-81ca-f0d37d4143b4@linaro.org>
In-Reply-To: <f9b60989-e58b-4ac1-81ca-f0d37d4143b4@linaro.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 26 Oct 2026 12:38:40 +0800
X-Gm-Features: AclHuK8vZ0KWZhabRgBdGgKek8QAVY3LLhkkHh4HIG41oJjGA-gl75AkOIcoHmw
Message-ID: <CAPwA33LZRPs4O7ihinyorahAQiWY69C1pxWnhVE-gTUA556MYQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_213702_184935_0495D5C1 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Bryan,

Sorry, I missed this one.

> Would you not be better off scheduling a work job when you know both
> blocks are out of suspend ?
>
> That way you always have a known sequence out of reset ?

The two PHYs share the BIAS block, but each can be used on its own.
For example, while DSI is running, CSI can start and stop streaming at
any time, so we cannot know when, or whether, both will be in use.

So the block-level setup is done in runtime resume. The runtime PM usage
count makes it run only when the first user comes up, and a second PHY
coming up does not reset the one that is already running. And in this way,
I don't need to maintain a refcount in the driver.

The order is also fixed: the phy core resumes the device before
calling init or power_on of either PHY, so the block-level setup always
runs before any per-PHY setup.

Best regards,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

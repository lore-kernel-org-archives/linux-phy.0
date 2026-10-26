Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48647606A337
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 08:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0n4GDYWI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mg-crea-com.20251104.gappssmtp.com header.i=@mg-crea-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=MR2xpfw+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=m2hKzgFora5P5Z23b/RAMT5i/S8xFI5LM3CYJZsLdL0=; b=0n4GDYWIDME55fqHzsPWeoFpKX
	e3NvwTKX2JBkCFk57ap2jB6X7cEw8K2ENEd+lizoHwNYD3f4+qQg670RX9EA5zTc1BJDugAF4TtM8
	nvWqiSgrHLrVt1T93wigTi6sbAm8TswWRP0YAJNzQw4NbyRIPpRbKwkWqczx7RAJ9tPOc7FWUSf0D
	/3aBWclxDd+QIrold/zCY45is+D98gTgp/suj/VJO3KPs126N2G73SoDHVpgnEmn+L8izoAxCWf0y
	7YyWk90/29LB52+nReoP+kypTjfZ/RDKiT5A0HWn3Jx2HcsbAIFVucAviabyqIC/72l5vWRudtPIK
	y/p/viLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLGBj-00000001xcm-08HA;
	Mon, 26 Oct 2026 08:36:15 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLGBg-00000001xcB-2TFq
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 08:36:14 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4a4d7ae1ae9so10272425e9.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 01:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mg-crea-com.20251104.gappssmtp.com; s=20251104; t=1793003770; x=1793608570; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RgXmha7CcSQWW68lEObtrAB+EUYAPG7XpUlj/LZ3mcs=;
        b=MR2xpfw+eGTuJXNe6uNiaQR0jsQKhr/gHBW7h0MO7r0oubKKP5pL+i7IFtnjcTDVrp
         a1uUl5pTJipllrGrPexr7JKRUP4N34KhA26GBtArOGEWi0b+PD74gihtA2gABiIOtps7
         CR/69H8+/KztMnjiRMgpmLk1suc0WVjATWK53R4FeWChfEIMHRRjKL4Jv/udZtIjmcPO
         7HyaZPZKvy0HuzVKpx3M6S0BSv4gHUYo3kOf+yPHJ2tGYvC2ZV2fKOgKGXJUDifnaIb3
         6z+Ac8dGgf4/7VDdwczJ4dyeEqi4+FqEwS5homdok0x9mlu0xR4VI7yx9UAXXcxIaQum
         WFYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793003770; x=1793608570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RgXmha7CcSQWW68lEObtrAB+EUYAPG7XpUlj/LZ3mcs=;
        b=z9uKBP2CDpPhvynMg6h+bQsieRq5354OJnebjskyJkWcab0ECmkNtiH+6gDkdLHZy5
         X3hQAlnMu7P8mccDjjN3GiQQ28ksAon8wgKKe7CRDF7NmHzLKjnMiVen7P/Nv9XxMpUT
         axsSPlv5jmhLT50uDAwI2rDHzQIxzxGCqZwQ+YLtNe3kP5QtQHvd16SRUhaKRGtOkdZj
         hdkL+wmGrjRpMzAz3jWtoyC8AFjl1uTkeBJ+VpxZOBPzD0cwAOpb8hZX0nd4/5sfT6kM
         e79GuYeWO3QTXVBhYXNMWbE9+ebJoOwiLbWuyR9czKwXK7hzafE7PdUnCFJKGK7+bp6I
         geWA==
X-Forwarded-Encrypted: i=1; AKwUvBw5ZGrTxjIo3IvX/LHRydbB5CUSNgc65YuHgyJaWGQg9jet3aUOnw31a+QgiL8d3W320Kq2g73h2oU=@lists.infradead.org
X-Gm-Message-State: AFq9FYJY956OSc4RPLbUH2I+LiwcR7BdE+jNVMPlUxP0BLIxbuANx8pj
	ucYKVDZ5UbLN2U7GOLBTtOUk30n3GlrEOwN5QHCudk0Xn/gwc/0RQvzbUjsabTXTAhk=
X-Gm-Gg: AYBFou1ZNcy92zFfnvd5C/s4ANk322XfliBu2ALsCCkhUrkwDg7nTbZcPYjVSJwfuHe
	mbb6mjo3HmCq87NWmLajuaB4jKUNDe0VCcNpVwvChWitICjcM7RQZDTPOi7wEXI9IZRpeFl0XJq
	AnL87FPwUnaGKi2W5D57Xv30Vx2Qtlg9ujtV20XQ1DXE2h4LoKBGT+KdKJewKcM1jWbdRQsZg42
	k2cdjkLDcKcd/q6D+PfxHD8f7lfAyXudqD1EWumy0anqFhC8/FVDywiZ2gc66OnKnn4+4b/oMYP
	+KhczGogBzxPtCYPtW/mDXXYaafYg9y9IcttBpKl9GGq1JDW2082ExSRzYiDtr9KpC642Ix5H/k
	dbsfX7w8BPhpamp/lvXpDWmDrw7h13j1sV1LGZ1ooC0ag8L31EnDaNIKgnlH5Cn3zZuEe8qCGW4
	qCv1eDFgVZydZTMQw6AaC4PpTNs1C3AQp8K2jhWedMfV2GBdFauVDoDmKWZq+cVDFmiqR9LnXAG
	8QlTdXZajqs9JrKb2W3q3elnulQfXskvKjWSY0UEEjADDv29ELgcMb7f5a+p0669HioOZ0GsqZZ
	Qn2IzZnAUeVSjA==
X-Received: by 2002:a05:600c:3e8c:b0:4a2:392:9de2 with SMTP id 5b1f17b1804b1-4a35acab6cdmr93617695e9.28.1793003770060;
        Mon, 26 Oct 2026 01:36:10 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:9d2:5a71:6dfc:5715:ead7:7540])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a35a59d998sm186175175e9.15.2026.10.26.01.36.09
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 26 Oct 2026 01:36:09 -0700 (PDT)
From: Olivier Louvignes <olivier@mgcrea.io>
To: Vinod Koul <vkoul@kernel.org>,
	"H . Nikolaus Schaller" <hns@goldelico.com>
Cc: Paul Cercueil <paul@crapouillou.net>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
	Paul Boddie <paul@boddie.org.uk>,
	Andreas Kemnade <akemnade@kernel.org>,
	Olivier Louvignes <olivier@mgcrea.io>
Subject: Re: [PATCH] phy: ingenic: fix unbalanced regulator_disable() warning
Date: Mon, 26 Oct 2026 09:34:54 +0100
Message-ID: <20261026083454.29787-1-olivier@mgcrea.io>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
References: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_013612_900221_1045FF5B 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
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
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Vinod, Nikolaus,

I sent the same one-line fix on Saturday without finding this one first,
sorry for the duplicate:
https://lore.kernel.org/all/20261024051756.79342-1-olivier@mgcrea.io/

Please drop mine and take this one, it is the same change and it came
first. It still applies to phy next.

Tested on v7.3 on a HiBy R1 (Ingenic X1600, dummy PHY supply): without
it the unbalanced disable warning comes at every dwc2 probe, with it
there is none and USB still enumerates at high speed.

Tested-by: Olivier Louvignes <olivier@mgcrea.io>

If you want a Fixes tag, mine had:

Fixes: 31de313dfdcf ("PHY: Ingenic: Add USB PHY driver using generic PHY framework.")

Thanks,
Olivier

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

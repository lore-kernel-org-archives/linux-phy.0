Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA99E606A32C
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 16:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4/112Hvd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=mORWcICL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gXs6k1i9E6KOE8RzpWjU04OTOLKaGBH1KMG7TYCizG4=; b=4/112Hvd4IuT9ftztHbSgdP5PI
	/9+Sk8Cf85/PJ7+WJ23qwgdNAnij1l4DH474fvP40oUWQDJ7lWsbR3kJ7lyC6EglJIejxrkv7SPhC
	xHrdOqbV4/TFygIYOps0xXcVVm5NSRL5CvsDhOxmBN7vSv1J3uZ3gVMfHcVQoPo1zKIv31wG5/w8h
	QCXo5tR6JhxBD8NjDTpq99wAMWgrlQvDW1KyJomBJ/fFfHy6nlRAJE9+cfd3uwZiZT6Hh9nz1hHiy
	9ImErkUHi+RSfJZIMuFHrZcssG23YESDnqUOpaO5fJNWdyrqv/nwZA3g5w8Owc5zVa4QkSq3LUNUo
	F9v8uvqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVAGs-00000001L4y-1arb;
	Sun, 22 Nov 2026 16:18:30 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVAGo-00000001L4J-2Jkv
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 16:18:28 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4bb77a462c6so26414165e9.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 08:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795364304; x=1795969104; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8ZiEeOYhVKS03CHr35HdwHPjYPpUXJNlNyaUVNFPqXQ=;
        b=mORWcICLLnFGT8PQ4pzwkcStiW4XU6FzKxwigWijSvXyqaWl+aKITJ1FpbJF0W6HXc
         jAWS8JB30MoKr1X/Zi0RPy8JjtV36eCfJ01LiC0yeSS4E7khIU4xfkpQRAJUL3GCdlz2
         gAOS9v1T/doayupfjpFTKcCKk6B0BC8ortrmGsUVg3SvSSYiKTRZiTMGt1fCvxjtDXya
         utCHA/9llQoUEAsaOoY6DDYxZbkxLy5nyWz1EDGtImiiaACXrmz0mYCzqaj5lWUMjyS3
         +TboO4ArOvnTwVXWLG2o21YNEhl/BUxUyTtm1NUgM5bRB1cmb/N2JGz/G7aaYoDeHoQS
         ISvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795364304; x=1795969104;
        h=content-transfer-encoding:content-type:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8ZiEeOYhVKS03CHr35HdwHPjYPpUXJNlNyaUVNFPqXQ=;
        b=XwApMY9jceOj1X45TXMOuPTcR2yinETt4yCIDFkNfLqSbZfeQnfUUhrI8u7zRCPZ4p
         zmxYp2wDL1MR3ZzJw55wIe+4cDns9T42L0J+XtuZfILql2RUD28n1BScwq0vyI6+NDy/
         4Py6lzctfOZDE7A7d4lqKimlHkIKX1h/WvP73PvYwjzFBK8Go0bPJW9+j85Vh7OGuSut
         zeYwVMm55+d0yKEqtcZqylmXsgfpfYHZT54qCwh6XefD9lxeh0ohzil63XE1mh7yA2Vi
         nKt1JLLf2+9+Ev5Djyt21BmSTZkCj+ksEoGdiKU/qLf0dfJRdQ/M1nmPEwzztnjsDfK8
         VXKQ==
X-Forwarded-Encrypted: i=1; AL+hErF0IxwLgRHh7ONgY7/bKBIIPXfiP9og+gRaJowTeOXV+1yir2vzHTZ2FBJ4/gSx9U5rPDs2g3pKv8U=@lists.infradead.org
X-Gm-Message-State: APuU4Z/MIZnkYfKQTNFIKkWjni91fUwSoa3gxZ3zM0xwyPn+Ird0s/AS
	TSCDEo5pplIPA+ogT2+PMtOcXasnos5sylg66LmO5Sm8bkjU11S7NcieFgA8P98IaLk=
X-Gm-Gg: AZFdTZfGvLUF3BbdpbjfzkT0ELoAZ8kDP5zB5tSINy+YJxITXwisjc6x8aFHv/0Kzwk
	JZio0klPvYLDzQSrQsIBeoh2Yn4STd0kqRH/XSQ/5UjOxjJ7F9jJk7Bd81y2S6uR+pzCnouSl+i
	vXR7/3ZUmqvqUw1MSkPzHxUpv2KG+mxrYwmyLwXyU2l/4phDagXnbkbSzD28nDajqjJ0RcZj+Rh
	sDGfOilMupuBcmCVlG4eBWC2flIOgI3dQ7W0nIaUQc6LurcM/JXCdAIfccWpD/Xz+fo5l4InzsW
	w6G6jiTvLLgDUG4qaGxsx3sFJAy7P47LSGItvjzf2coBsV4p+5UGfJrSgKFkfchjg4H+YAc0Mni
	1eyx47WWGgdYJTSv2FFFhnTAhaE6y+C94rGeBiDuuqVehPBxvOyozIt9G8TneeCKyhcDVXjzJ9C
	r79LRXnTMqwFCRNXqXHyDyUF1M/w+1lv09no6xQ1Hf0+yEXeCezqlMFR+pz3j1GiRK2Sj2TDPr5
	elN7S2oChwAN8ZrPXjoWjkyGNvaFQJwZLxL2mJbjMwvz6nRHccY5tiYNwVTt3b2umqtuKE4+5vP
	m8TOnkt6rMtLfrC9kRu3Corsh8RU4YirWKcgGak4rVPcsAP5
X-Received: by 2002:a05:600c:e553:b0:4bb:9457:3c93 with SMTP id 5b1f17b1804b1-4bb94573c9amr46862925e9.2.1795364304705;
        Sun, 22 Nov 2026 08:18:24 -0800 (PST)
Received: from localhost (82-67-6-57.subs.proxad.net. [82.67.6.57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb8d4f9aa8sm226037545e9.4.2026.11.22.08.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2026 08:18:24 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Haylen Chu <heylenay@4d2.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yao Zi <me@ziyao.cc>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 Guodong Xu <docular.xu@gmail.com>, Icenowy Zheng <uwu@icenowy.me>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, 
 Sarah Emery <sarah.emery@canonical.com>, 
 Ze Huang <ze.huang@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Cody Kang <codykang.hk@gmail.com>
Cc: Cody Kang <codykang@vsit.ai>, dri-devel@lists.freedesktop.org, 
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
In-Reply-To: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
Subject: Re: (subset) [PATCH v3 00/17] drm/spacemit: add SpacemiT K3
 display support
Message-Id: <179536429642.2728475.2044119204203952258.b4-ty@b4>
Date: Sun, 22 Nov 2026 17:18:16 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=207; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=v3hfU9UHf+Kw6j8mPInDkRCmcdQcn/tFYuhWer9PVLA=;
 b=owGbwMvMwCW2VtK+WnvWU3HG02pJDNnMouffLtac7bcg5TPvFslVKz/IiM43L2d2W3La8FzzF
 i6bCx9Xd5SyMIhxMciKKbLUcFeLv5PU+jJrus5tmDmsTCBDGLg4BWAim44zMmxxe2hesHqmrEzE
 C5a4iu+CTLL9sfqpvwrzRPpPFr2X/8XwPyhe6sxK569/On8WiM9u/vRjfl5c4ZyfsjXJvPYlub7
 z2QA=
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_081826_632655_5B2AAA34 
X-CRM114-Status: UNSURE (   3.85  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Applied to clk/linux.git (clk-spacemit), thanks!

[06/17] clk: spacemit: k3: parent eDP/DP pixel clock to the PHY PLL
        https://git.kernel.org/clk/linux/c/dd010f2b662d

Best regards,
--
Jerome


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

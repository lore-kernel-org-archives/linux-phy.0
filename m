Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0425606A329
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 21:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=em9KBXXd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=MZIH5mL4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Krp1fcYb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0uRTZvfUkKS/0XPP0iKL24ZH0G7ROgCZHo8nxMou7sA=; b=em9KBXXdnkWeGMpzx1ADdH3NhQ
	ius6KLGgIQn9vZgVCpEa73t6Q3Jie+K32z67e+kkJI+fvOFIA6zebCQBvKc9sve7AbZHmSVjwj9RR
	7HlmzfbIilu+YUbHA6r6wuMU7TlJpminQrJhxe4Ts2fMjjENCxX1egx6Uq4ktP1ucZIvJ4vJCY4YB
	659tiQHatAcq/28mwwxzlWBUdDK0BO/HSE0agoo7+E8l5/MHIAavFzNALaUtdzzgy4qEv9s0MQ6PW
	5lQHzkx/T2yOheAIfUl9PLn1eXkrGQ+gedT6eNYriwx0JtLOmhxbsYC9bRK4TrrcTSqhiTQhHOmeC
	qI7u14hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWhHA-0000000Ea41-2DiO;
	Thu, 26 Nov 2026 21:45:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWhGw-0000000Ea06-2GWj
	for linux-phy@bombadil.infradead.org;
	Thu, 26 Nov 2026 21:44:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Subject:Cc:To:From:Message-ID:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UYJTRpYCZNTbQQiix5R88SQ1NUZI9ZYUAhpcRTfR3qA=; b=MZIH5mL4uzx3VPuMvKOFL8r+tD
	0kcQeiPA7eMhAYSQ9Ty9uyEHJp5hTWaTf/BuD7Cg1TIhP6mmdYtLVLW5i7TzGST5sH+4B8ufAaI0z
	g/D0d+61cjw4mrfS++XQJ8qLvDOR58Jw/jqR/h/xMrFSNFRNva1NedvUaLzUGnUBBY64z27ZMi2Zk
	+keWbv2tzcX6RTM4Krlki1j1D58eDROdRikkpDNZZXmhN4YJANc10gtlPWkvFP4tEt0nGWdOAY3nt
	LvqZYv4PpuVgboeMgHW88ESBgYwisjFwCjiD1i98BqMKrcSJmrWCL+NeWLYsuR426Jx6jSvQBr9Ay
	8HqqC13g==;
Received: from mail-dy2-x07.google.com ([2607:f8b0:4864:36::7])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWhGr-000000074dR-1g5h
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 21:44:52 +0000
Received: by mail-dy2-x07.google.com with SMTP id 5a478bee46e88-382afece6d8so1527368eec.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 13:44:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795729481; x=1796334281; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UYJTRpYCZNTbQQiix5R88SQ1NUZI9ZYUAhpcRTfR3qA=;
        b=Krp1fcYborP9rxScIwHasyS8Q+oOABp0NoDB8OpBH7ULy8nU5T3BNNydhu5mw3Tfwu
         hltCYp85emmWpRHQeczGciOsEILOtyIglGdKdi0o2pPw+xqI8uLGg4SaCrAIMiW/wyZu
         o03wSKNT96EzxJ263gAACYqpEqu1O1K3WjcrK1FesFKQM9uGTq/ZLbOVR7DHxZn/WUDI
         EIN2ZsbKZ8+x+dwPddU9tft6MoDWm0XChC2rBQpkkp/W8A6K0/hsIVEPvJNvTVy0gRvL
         jqQJ2a1Jbd7nw0GU2G4iyuP6Li8/nTefS952uKjDYYoVVsPCWN+/Uff5hOmAY1+03mnG
         yONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795729481; x=1796334281;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UYJTRpYCZNTbQQiix5R88SQ1NUZI9ZYUAhpcRTfR3qA=;
        b=cLozewQQ8Tq4H66UgzhOH1Rbs178uscmNvrTBnOjmyOZlQcOqqeUhd+/LGhp7ulZGU
         7qpMDYBFTZVvZXgFRjO1AwLH44zcKq5G4NzGZ7wL1uMTOPSAEzCj2x9JGp2iH3ZNK0vE
         1nzmpXmELm8H5zsI47WnUGeRoh37rHGvoctryK8Qu2EXYL8joFDnEP6+upP7cLorL38S
         PqpQXKobyDaIjks8D5KIKc49fVG6XrEov3x80y/kbCuisGXx6e3Qs0lRjT5gyoqv3LFi
         tRhcI3/GBMDrLjiD9P01cD1NC8kqi7alqLb5ua8bLKtsD9oU7G6Qq4X8YWzFrpCj4gJm
         1t1w==
X-Forwarded-Encrypted: i=1; AL+hErFj16tUQBoAJg6A3kREQjIJGwKnOlDlDhe7BmP9/vhOT/LCSG/L5HmNBm1qefq267pDGIgLQ+5rATM=@lists.infradead.org
X-Gm-Message-State: APuU4Z/DEyVNwPMzRUi5sMzzTywscF8ZkCx1i++3xVY5aONlbAdZVAjP
	I3BXoTTLX5+O0GAv4rtobl45QRDyMuQQEP6d5Mmai0zpuKEecJ3HOt2b
X-Gm-Gg: AZFdTZenA75FXKy8IJ2dr2/aXvmC2bVgTaN2n2IP+bZdmueWGRGktr4wP8IN+kzvw/O
	LX5qQ4Xf5qs1nMbNLIexJ/wc5/+9to1t6yFCOxIvdKZ+53MVr42i5H4Fu7RHR/kRE3dIYWFWGUC
	sAUqnzNGrr+6RFB0TW4zlEERabNedWLrldx/nVJbqCleCZVtvN8r0Dq7hREpk46sYFCyciLimfP
	fIzxQmrRXfLdSLbdcGJ9lZmAeWs77P80uHo8hWUWtpLiO/IlK40Zrzh0NszuV6mb/be6JCWDbVW
	kDj0857Fs54WXB/ZQUcrg3Gmuga18+VXh93FZA8p5cKxa261X02z1oYz4EhNlPKdgyJc6DctyVh
	D3Hb8uZkJrfviA9U/XBhcMJaw2TOCRmn0auTSWPzuMEUESeziqPkOADip6A+TMXVaGY8Sq+sk1+
	N+Dfr5psvWrXCjYfbNRWNyDQKSPwVRIYQ+FAWuUfnPrrvvjXcYxrLrIID25namzehVRq+pwhUpm
	DL2P0Sntrt52add8F5GyE7ZH0Fp5lUECnQgHHP/cjIaAQXHdtVPQWms5jXJxTEl7AT4TAVabRMl
	gwCq8JXjvQwfZPg/T82DlNTNXlC7X+pR5QKxYbo5chc/TJcD8MSJz2dg+DdEkVo=
X-Received: by 2002:a05:7301:c089:b0:372:14fb:2573 with SMTP id 5a478bee46e88-3856fd5bf76mr21960944eec.20.1795729481384;
        Thu, 26 Nov 2026 13:44:41 -0800 (PST)
Received: from localhost ([2604:a840:3:1e0::1080])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-385665f21aesm79578155eec.4.2026.11.26.13.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 13:44:40 -0800 (PST)
Date: Fri, 27 Nov 2026 05:44:37 +0800
Message-ID: <73f6ebde526f60ff64064ef602e0cae9.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Guodong Xu <docular.xu@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Haylen Chu <heylenay@4d2.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney+clk@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Icenowy Zheng <uwu@icenowy.me>, Jerome Brunet <jbrunet+clk@baylibre.com>,
 Sarah Emery <sarah.emery@canonical.com>, Ze Huang <ze.huang@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Cody Kang <codykang@vsit.ai>,
 dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 12/17] drm/spacemit: add Innosilicon DP/eDP controller
 bridge driver
In-Reply-To: <9ec2f818084f2e723e8b82218a302258.docular.xu@gmail.com>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <20261121-k3-display-v3-12-ec419e8e96b8@gmail.com>
 <9ec2f818084f2e723e8b82218a302258.docular.xu@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_214450_304944_B3243144 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
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

On Wed, 25 Nov 2026 20:16:25 -0500, Guodong Xu wrote:
[...]
> I noticed a corner case when testing module unload on v3.
> spacemit_inno_dp can be removed while a process still has cardN open
> (say Xorg or kmscube is running and somebody does rmmod
> spacemit_inno_dp), and the DRM device then still holds references on
> the bridge. When that process closes cardN later, the kernel oopses. On
> a CoM260-IFX:
>
> 	sleep 20 < /dev/dri/card0 &
> 	rmmod spacemit_inno_dp

Thanks for reporting this. I can reproduce it.

[...]
> Other DRM drivers with the same structure, rockchipdrm for example,
> put the bridge driver and the DRM driver into one module. I think doing
> the same here (add spacemit_inno_dp.o to spacemit-drm) is the better
> solution.

Agreed. Will fix in v4.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6C360A2606
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 21:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rnh1vNdi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ftBNg38y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AyP1Knd0cuxeVpRGqK7tYuLdmcQEnikQPVFJEbK//Kk=; b=rnh1vNdiLg+aG4c7d8nTaH2ydF
	GlbOfKSEQ6gXbrtSC/r3NWc0Lb9xcf5vz7KzouV9sZPeoYmnxxUB0qBvjGrKGtoy+OrEAE8s5Citj
	++KAShH4D6COSlsIhwk6a0M2b07gURKzm5ezCqc7aH0ZSnlxwDd+q7btUItm3/phdnpF6rOnMHwVy
	rxU22yJdnk06r9WFOPze9NByKmacIpSw2r6w5d8cwqiuCRDRvPQN/5RKGrYIRK8HbWDzOZSE1uVr5
	pWv1ic2WPJjLVdM/PRhq1CLK54Vhjh+/wMLO0rphqtD75Z2q4nY8g8dymCEGviuJ1Xm4EloDXOxSX
	QNhozrmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTmok-0000000AGzw-3vwC;
	Wed, 18 Nov 2026 21:03:46 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTmoh-0000000AGyt-3t22
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 21:03:46 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-3b094d5f1b4so285042a91.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 13:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795035823; x=1795640623; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=AOYoHqd+TEhq9YYSZd05JTs9KMcPqQTIbqKvDzsDrNA=;
        b=ftBNg38y6a/EtPGsyMENJlwKArws1HZJR1DsckUjvbRJH9T8ncQUZOv4XRGsGBwxRk
         dmcwqu1DbjO6jaIuJQz7S5t1w0pyG410lvrwGybqUbU/4QVuQqAPmmylRCF4VkB7Jmfl
         nKLsxo1mgV+NA8mnTM9bvZe9Mes92G0v/+6Fdu3wlqdESJiEg+TxnNUU4XmFaIuEcDUJ
         KvAUZcUg01oPUGJLjpN0gjN2HKW99JutI7wHAptgVbo8yph344MF0l5Ozi1qwoC6baQy
         LyLWJsqe4ZdHSz1NZQGA1BN7VQF9hARud5z+/mRwTHnZk+JvAKBP2yGy8o5eu+qa4+ua
         5+UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795035823; x=1795640623;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AOYoHqd+TEhq9YYSZd05JTs9KMcPqQTIbqKvDzsDrNA=;
        b=JnLNfmtwjAsxnoKjAz++yNueqv4zJzTZl3DrfURT1j0xVKDBJvgKC4DwPfR1lzy4St
         S2L0AySJrBY3svePmCR4HWkXdYXJRw0CCwf5U0QSeKNPRN8jwSh73wkKipg1EbPQUPpB
         YzsN/+ai/VgcYOrhF4EWHzNX3tnNHvcKoZRWp5pSQp5BwTo4zPjDnoW9rcYj1lb7T1F4
         9B91KLOq7h0/22Gh4qlHIEyQJ62F/pw3wH/o0gCFDgHbmQ+W3iAR6qDA8d3z7SP5HsRU
         Wlf+gui3TZ5c/XizPlGf/Uk+APCcLJQx+7NY+61mF+Dn/5viFD9fOqhv3KSOtlNJNf74
         3Ang==
X-Forwarded-Encrypted: i=1; AL+hErG7bvU6OFojy6qHnisT7p4v9QHSGvePdKqDV73xnDsHliRkaqkW0xCipThypJIl+/Bz/bYpGQIjN+8=@lists.infradead.org
X-Gm-Message-State: APuU4Z/S9q6XKz9RHn8dgIM6AQ8BrZQN4Sppg10GqJKuidYz2pGXXE2d
	6p8+iVIakhS3yCkHSCJKCyDFwTces3f7RMjQVQ6IcIRV/znTH7V04pep
X-Gm-Gg: AZFdTZdjo3Vf1DGEZ2PYZBIG6iUGkvT/O0ELbN0QU3R8WVPyV0Pwp+vyFs3RMDK9pfU
	RFDwpR9KAJ7JkAe9Phwq6GAM1GZ+qgKfq1ZM85JAh+4CdDk4iBFNdkPjy8gmWwtfj+2vO2Ktjlf
	8PEYWQZkaN56y1pr/yX/a6c3CY5cJqKbDNCFBz/ruLQ+yPCZztYX7IXlqAkr6MFVb3oN75TKqgw
	A3VoM43B7mvHJkUGmiD01HF9rBhDqb88ghUiYzb8DX8uJ18X+X8cvuKqv0ahhaAkxtGde6cyEWf
	jWvBCULzEVYTxCoLfEJQuO/8xgKhn4uexLOnpLm633HIV8cU5p/kfSovLWyKL80BMvzUT5neXcg
	keF/6ToH+e+ZX2fY5Me8OnnMvvbmIwj5UnkhbFX0DCks8Bkpr/yunTrCqhBpCjq2pOx0F2IYfIu
	ZpzwhZa85dml7R8j0iWBYXT+4nLu+azAPuXYKQ0HHYfa19uS52oGLTCtSo3mdJQLWqDjFCsgO6b
	n6mOlTCgLu3cs0j84EJv86E9y6gcBAnBJ04wmODvZpeNCs+OqxDDBo/KbpOKCKn3svoGMDy3cTj
	3YM=
X-Received: by 2002:a17:90b:3c81:b0:3ac:80dc:f419 with SMTP id 98e67ed59e1d1-3b3d07aa355mr3694363a91.25.1795035822845;
        Wed, 18 Nov 2026 13:03:42 -0800 (PST)
Received: from localhost ([2403:2c80:6::107b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b3f7066ef3sm865257a91.11.2026.11.18.13.03.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 13:03:42 -0800 (PST)
Date: Thu, 19 Nov 2026 05:03:36 +0800
Message-ID: <5167ad548a578a23ed8d5172196b36f0.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Haylen Chu <heylenay@4d2.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Guodong Xu <docular.xu@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 08/17] drm/spacemit: add Saturn DPU core types, cmdlist
 and display MMU
In-Reply-To: <0dc12950-68e7-4c30-9138-23539e676e1a@suse.de>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-8-327d7910bf71@gmail.com>
 <0dc12950-68e7-4c30-9138-23539e676e1a@suse.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_130343_972288_882517EE 
X-CRM114-Status: GOOD (  12.83  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Thomas,

On Mon, 14 Sep 2026 16:10:25 +0200, Thomas Zimmermann wrote:
> Hi
>
> Am 09.08.26 um 15:14 schrieb Cody Kang via B4 Relay:
> > From: Cody Kang <codykang.hk@gmail.com>
> >
> > Register programming of the Saturn DPU is batched: the driver builds
> > per-module register lists in memory and the hardware command-list
> > engine replays them at frame boundaries, while scanout buffers are
> > mapped through the DPU's private address translation unit (DMMU)
> > rather than scanned out by physical address.
>
> I've looked through the code in patch 10. How does a plane interact with 
> the hardware? It apparently has its own command list, but there's mostly 
> code for the CRTC update.

Thanks for the review. A plane programs the hardware through a
command list. Its atomic_update fills the list with the registers of
the plane's read channel, the driver points the command-list engine
at it, and the hardware replays it once the driver raises
config-ready.

In v2 the plane only fills its list; sorting the lists and handing
them to the engine is done in the CRTC update, which is why most of
the code is there. v3 will move that into the plane: each plane
builds and submits its own list in atomic_update, and the CRTC flush
only submits its own list, for the composer, and raises config-ready.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67991606A331
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 04:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2UtH/+/Z;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=gygBdelJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ivmA1NYdy1RaX/3Xse2Y824jXq1f6whJgxLADke6wIs=; b=2UtH/+/Zlcmh7zq5Jobg/JVZg+
	9QFFBWx2eDYBjueoUtRqti0Swjcl7rjVUSSZ3JRlX2pUjuJZI+rPoUTStxM6XtJL51fVkSWkirBqF
	vKvEyHttogwHNcPlhruIafb7Mth/h4sn7xDkVD8YLu9zwC9uixXcI+Aj7EWgoq8pdcm4GzCJBgUZg
	Tg48TNOogMms9LJKz5+c8/01xN/NaiEOv6IUX5cKEEZ0aagjrW8dKaUButFUlbsEzksBhYPFfg4Cw
	zK1wN6Z+QSMwTVqliEh/EbhjKXDtfHKPw2aDjWstNnqhNPihLHvcNXO9SDR1t6Dpxvogxh2KMPask
	rH1YkagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR09t-00000005dFg-3plY;
	Wed, 11 Nov 2026 04:42:05 +0000
Received: from mail-dy2-x07.google.com ([2607:f8b0:4864:36::7])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR09r-00000005dEt-2m9J
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 04:42:05 +0000
Received: by mail-dy2-x07.google.com with SMTP id 5a478bee46e88-36f2f262b19so1948458eec.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 20:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794372123; x=1794976923; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LBWMkcN1tef9AYjk2Bp3If0hhjn0Q863wdyvj1dL6Dg=;
        b=gygBdelJt0YZEtcwZ0ZTsr8ykxuGLa+V5nKduKzq7cys3BPxXzjd8aR23DE/kxwNmD
         A86CpxgXzfZNdBtz7NbMA+9qoptot0Sc6+2WaS2oB5619plYPFyV4MZbx8Mm6MFTdIVK
         8w/mhSHEslzuYIOfRL94uwQJ5TotrSoMlrSQS4WASZgiQxAIWAsWeg1seDSeDDkcee5u
         qUjszygoNc6HSg8ax7wR9lPdv49wgmmKd6GY7kOQjrVKHxIjzlZF/ru7LyIDSweevJ51
         vVHMmdLKXdhGSOyVCl9oWZqBepskMc5Ol/TadGku/DvOAAY66G1/ZZ9mhm1m9k5HhhTD
         Ev6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794372123; x=1794976923;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LBWMkcN1tef9AYjk2Bp3If0hhjn0Q863wdyvj1dL6Dg=;
        b=cnVn9DnhLzFN6oFEykG41TOjYRdc4bKckSqkmF1/10moyo3bWf5cic1tnn3v1BQZPI
         Rx5de7t47Bj0Nwfiwg/oTHmajxKNuEdv2GbnvCfKuyGryvAACleZpfz7yxxKPIIxFr54
         fgrUXTMn90dEzBZ2oc3mJtIgcXEwRpzENi/itq6u71ZIShI0kdf/Ea9zkfhom9BoG4VB
         DbgtmzFLSBxloeUQ40wc31Sz0cqy6KHH+CVnO5i9YkBdSM7r1OQr2f6Id7XxuBhxgALP
         eOaBLMKUpSVyI+vN2FVzS/LOgg+7bDyBf5VZ4EEjwrmU5OyWSC2YMXBZr+9onwoMhSK3
         ZAKg==
X-Forwarded-Encrypted: i=1; AL+hErG0RTzVBfuS9nWh225CxFXVqHb7VBbLmGHsJmHbYboBSSAUKpCgwDgYH519B0EyRVDzoC5hFdU8ngI=@lists.infradead.org
X-Gm-Message-State: APuU4Z/M4A7vi10mcvqg2aIoCRYrB3i3O6uLppz0j5h/5ax+NptkXh7V
	cNqu6NcslwJ5U6yVFh34EfhEcFpnfEUZbQzyYn6BqRrsm18Sam0ep4z6
X-Gm-Gg: AYBFou306AmWBSbw2av+BBJg0mXv/GVufErgj5pEgL0etYnhPNDFNObCoRegfuXQJUa
	23B9nniBe22dUsivbGiCcRop6kczo2VE8aYI6DfbATiD3A9a/9+T580b/TWUnJKbdcHmmt2kU6N
	fR4/J9TqKzkl9QFIlwUhxWsEGlXRgL5cdBtHWz1YyQ7AlXPplxZ4jym9YaImOYaocQ+vn209I0w
	mn92gX18BddvyGSEu1V3e1zS/Ugpc3oknxt72EW7L63BWw44zTvgiPiywgiqZm1IvT2kZejgnJC
	/MYCf05kBPmEprFs2f438SRzVsbGOiHlDiFzC1o00GKWgD4JORHGglUVdq7KkMUvlbX5sIpH+aP
	SRY5lpUZ53FPNhK0HwyA86WcYGqpKlitsJJGsDaFUBkepLvkv4Ve65iUYUP1YOJkMJyF4mHjLJA
	Bt6gQN5V/U3gdYmFmUAtUGHQJTVPg514McMasXZtAFm+ogd6wt0J5IqBOIpqDLEKmBAyebksuFb
	oVvjEGKdGmeFAFCq8I7R1ADVKQitqEGYsVVP2CmZMkErjh6f6pTZfw/hwJv+yQoJwbxGCttjgHE
	p7HMyrr3P0Rmp9srft/k0K60
X-Received: by 2002:a05:7301:4184:b0:36a:1f4f:3e9 with SMTP id 5a478bee46e88-37685d753c3mr2904495eec.20.1794372122835;
        Tue, 10 Nov 2026 20:42:02 -0800 (PST)
Received: from localhost ([2403:2c80:6::10d9])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-37520512ec1sm11023535eec.12.2026.11.10.20.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 20:42:02 -0800 (PST)
Date: Wed, 11 Nov 2026 12:41:58 +0800
Message-ID: <531e628a379b6733632a25d998337d77.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: Sarah Emery <sarah.emery@canonical.com>
Cc: airlied@gmail.com, alex@ghiti.fr, aou@eecs.berkeley.edu,
 bmasney@redhat.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dlan@kernel.org, docular.xu@gmail.com, dri-devel@lists.freedesktop.org,
 heylenay@4d2.org, krzk+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-riscv@lists.infradead.org, maarten.lankhorst@linux.intel.com,
 me@ziyao.cc, mripard@kernel.org, mturquette@baylibre.com,
 neil.armstrong@linaro.org, p.zabel@pengutronix.de, palmer@dabbelt.com,
 pjw@kernel.org, robh@kernel.org, sboyd@kernel.org, simona@ffwll.ch,
 spacemit@lists.linux.dev, tzimmermann@suse.de, u.kleine-koenig@baylibre.com,
 vkoul@kernel.org
Subject: Re: [PATCH v2 11/17] drm/spacemit: add Saturn DPU DRM device driver
In-Reply-To: <546efd00-ddaf-47f4-9387-2635785a1bf5@canonical.com>
References: <20260809-k3-display-v2-11-327d7910bf71@gmail.com>
 <546efd00-ddaf-47f4-9387-2635785a1bf5@canonical.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_204203_734305_CCE9A77B 
X-CRM114-Status: GOOD (  10.02  )
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

Hi Sarah,

On Tue, 10 Nov 2026 18:02:42 +0100, Sarah Emery wrote:
[...]
> I'm sending this here in the hope that it will be useful for a future 
> revision.
> Is there a v3 in preparation?

Thank you for the fix, and yes, a v3 is on the way. I am working on it
with a friend, and it may be posted by him rather than by me.

I am glad you brought this up here on the list. I had already noticed
your work: the series, with your two fixes on top, has been running in
the Ubuntu 26.10 release on the SpacemiT K3 boards.

I would be honoured to have your Tested-by once v3 is out. Thanks
again, and thanks to the Canonical team.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

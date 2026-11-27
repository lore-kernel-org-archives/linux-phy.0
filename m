Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F466606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 08:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VkTuay8R;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=D/9Y1QJN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0E0W8t8fwgi7MUUDZ5ZF33cZ3cbYPZAXN6pOUhJDRuc=; b=VkTuay8RkuQPfHRR/jzvofub6G
	IIjYzsHnfPyhao6SeUh6VHocHgsF1VUQszMmwNT8TcjAso2XIDGkMvoV5CdAh3m3fZ34aV6OO2daJ
	9GoFi1dOtTq0rKqZVoC2cBs6hLuoxMlVQiMSoCCbrZg2Iuxndzfo1eIK5a5G1GYYRnn9ao0MTGo/1
	oKGVvp/PIx2w33a/e7LIIsYvwjFAMqzDy2Qv1gDikbSyoSmTnC/wvcosjKqIDyBmkmmtHDw+jLBTG
	zUZf5/pWCjx6XoGPSlbJ7441IkgLSYvI2spWtV9aeROZcZe75ZvSUTttKnl/3sOgkJl2zyJygxqKh
	b2fj5d3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWrRR-0000000FGfF-3w1n;
	Fri, 27 Nov 2026 08:36:25 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWrR7-0000000FGKI-2Ocn
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 08:36:06 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6ba863fc3e7so580989a12.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 00:36:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795768563; cv=none;
        d=google.com; s=arc-20260327;
        b=qPOhzqN9+4asIRclf/PhUvxqQALYyxVUetFs35BRwUe/CR8q+Xf899ZZrOQPJPMyRP
         nfjqZs/ZznnyTDqE8orQwHlPgmmlIAd9W9eArLqsf9Peeu8fD6xItv7mkYK1XnjS/1gN
         mM5BgqbNlgXLITiGm2SGvPQ2A0WmD/uPsVtQigsjyPP8sq0nl19dQxAUKliuoKQkVJT2
         FXnl0MNdMvafuIWu6oR3xuulfHAE6ZOA+a4noJX5IxSv52rdg05vJHnD8RzrqdEgz0Jq
         rz61IrcXqmt/v+xkmgyXBuKwkpApkF5u0fLPQsIl9dIH/WQCd5uXOpCLgIsTmtNDwkQ6
         dSTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ej0zu0sGtkHApVwWa1kXVFV7LIDw/KTsfibG0hxrVG4=;
        fh=JqFMAEs2tdcP9FnU0Fo1YfGBktg5tpfx+cmVBNV6aoY=;
        b=msdBSPI4b2HA+cCyueW0YTFJnDpqCCOIgf+LY2vsU8G9b7D1IyuqZG/gvlgToa+/fO
         AHEdLOtdZS9WcAxL5adOrFfqRBPB/I78DVbSt04hYKI8+x8RwLpFQg20OE4B3oRD2ASd
         JzQF3h/mlIOdPitpeHralnNjHk/+b1kjPOZhoQkVbYAOH5plD8uVjF2TOxfch/KfWc9+
         5ew/OBtXFY0TNRfXeXL8881FvL3js+PKkNe0gj6OxjnKG9k/3eDyB80olgBbzM7d7pfz
         qyiJgNv8OMfKcxLPcsuo+EhAuv7eGAbX8FX+8cbnA5NeOB/3EO3JIOnPOSt0Dapa7NwB
         Z4PQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795768563; x=1796373363; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ej0zu0sGtkHApVwWa1kXVFV7LIDw/KTsfibG0hxrVG4=;
        b=D/9Y1QJNvcV2s4AwfogUeuhBsM5s1QJDncaMz5+dk4aRLHqgRccA/OOJRRbusCI3TT
         ckLX114OWwGa05jHsC7jnOWD5bPhNyDhBDuZaJbZSAeL6GnRoqVMIEfw/zHNUS/SprL5
         X2kkiAtv8Siu7smSVW9KMmI0oeNsAMFnvAoyh8kaoPbxPNRn5M65wVAuwlRsn9q4CoCC
         k1v30cspyUzxIP/NE3Nl///u/WiEuLqcrWHkXv90KIJOpkU2TaIoW/KQktfQwlKibR+9
         MfYx031DCjxF/YLDfPIIXawsiOqpf0+amqD/u6gwyX17YpDrjAz7cSrB+tdw+JVT9rGn
         WWKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795768563; x=1796373363;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ej0zu0sGtkHApVwWa1kXVFV7LIDw/KTsfibG0hxrVG4=;
        b=JcnWTqfGIGA6EkHKPtYemjvQFUoaDT1ifkIPP7mHKdAlqhfcryQ+98bHOT74K8F5nS
         IJXUqP1WK0duL/vr7hfehOM5426qelnHlMeb4bPlRhbPwmywbHhfq905vpHomL+5uPIW
         DE9Ls4BzIpSHQqEOeXc9zN34iGjXJbV6KDkYS3Hr8HyMH5fBBo5sdNlDjhWYkITFLCtT
         EH1YcKH5AZyzZAb9IK4+NgzafSDh5HNMvpsoEPbB8FRMXKFcoPlc5evhucAxOA+DUUeF
         rq/uGQjrVwBiWkzX4faj84BGha7QoQPw9M8pirDeK6ZaJNrMFUhF0rDDe5xXOF0n1qoz
         BUiQ==
X-Gm-Message-State: APuU4Z8nAnxPArkt0wz0YPwrrPQxTF9R/j/gibCfzhViYNOIcwAQ3eXx
	IWrYoBEcxQtBu0ua06fnzhhAV64DPURInrsdASH1GVo9n3hTittRRP7Cg9EzCz93VWTFt1eTfVd
	46xoq63+FQq29KQknQGPzehFEzhhZ+n4=
X-Gm-Gg: AZFdTZdYyvkur8e/z4VbXSDMb9QXRK46GNCh8kkDhujAyruTj4s+mgcrQtjilzUBie8
	/MxJcFJia+1T7i9dRVR/2EzAhyltD1+kEzN5lmZBCIGcLoFnphoeKd5uaDuAcnfqRrT4gYLS4nf
	CZyQXuvvJgtKRp1rcv8R/6kbevcRPQWSuWhUTadM4rXv9VSLYHG65gCOJjLDxs/3zRfSHuH7GZa
	qWUvRP+wFk9bzVC1v3Tlc0GCk7AhzDEf4DAbAXpZXM0rCIcPhH10aeWpcEwxDELnQBqI6wZ+NT2
	zBpS9sy229xL2eep4tFfUYwS/4AxI2if3U3E7e4EoJ9o7s09oQNNaMYTI8H85KVKhx3PfIAI0TW
	y6txpZkfZvU9FYQHyhojl5E3bzvi4fhgNJk+jTGrpiwsIzSGE54L4Xvx6XZSDKMer4KZT7gI=
X-Received: by 2002:aa7:d349:0:b0:6b4:602d:f1f2 with SMTP id
 4fb4d7f45d1cf-6ba37d52e9cmr15809735a12.3.1795768562917; Fri, 27 Nov 2026
 00:36:02 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
 <20261127-dcphy-rx-v1-v8-5-9ddfef99221d@gmail.com> <sashiko-outbox-236847@kernel.org>
In-Reply-To: <sashiko-outbox-236847@kernel.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Fri, 27 Nov 2026 16:35:50 +0800
X-Gm-Features: Aa3M54ovM32g7V-SSPNRX95l4DBsAa-yp18pNqVZFJQDxNZ-uXS7aZWkl2Kvurk
Message-ID: <CAPwA33J87MAF7hLvBE3_03_jQU=CrKB1ppc6QqLkksuQTB2Q7A@mail.gmail.com>
Subject: Re: [PATCH v8 5/9] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, 
	olteanv@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_003605_658038_B65343BE 
X-CRM114-Status: UNSURE (   5.14  )
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
X-Spam-Status: No, score=0.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> Can removing the APB reset from samsung_mipi_dcphy_power_on() leave
> spread-spectrum clocking (SSCG_EN in PLL_CON4) enabled when the D-PHY
> transmitter is reconfigured from a rate above 2.5 Gbps down to 2.5 Gbps or
> below while the device stays runtime-active?

It stays enabled with or without the APB reset: pll_calc_rate() has
never cleared pll.ssc_en, so pll_configure() sets SSCG_EN again after the
reset.

Unlike 3/9 and 4/9, which fix problems that moving the reset would
otherwise introduce, this one exists without this series, so I leave it
out of this series. It can be fixed separately.

I also cannot test it here, as my panels stay below 2.5 Gbps per lane.

Best regards,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

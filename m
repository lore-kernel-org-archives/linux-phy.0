Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1309EC25B41
	for <linux-phy@archiver.kernel.org>; Mon, 23 Oct 2023 04:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHkU+trQcL/egwIzHI1wLfX/2LM368HoQRy/irT49VA=; b=ocTYUt2aD8aX84
	lKChrlMG3M+Y+DkUiLpi3blG9hhHOLe+dFV0Ci2gf3gbwv0l4AzoecPw1sooTGVJ9Ea7dH6P6dzek
	p/FL7ZyHCRXQeGFb16jS13oRlsU44JXi/AlYsA2CP5przLGuEiqNjEqlRqzO6iAjy2oLDOyfKDh9O
	vYMfydNRyXJK0jwAU9g4Z+EgOXs74v5NQFRzWuxGGhu8TWVaEo97BnEQULIDckPy+6fREKVjo6kqA
	oP0DP+dr9YQQIoNSpJMXinz1/pCkHdN1gtv43qTUYw5/SZlNQweMYn7KkSY2rmQ0medfVVtbBL5Iw
	ULPFVcbKx2tTfUeRqVlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qumsS-006QiP-2a;
	Mon, 23 Oct 2023 04:49:20 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qumsP-006Qi3-2o
	for linux-phy@lists.infradead.org;
	Mon, 23 Oct 2023 04:49:19 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1dcfb2a3282so2174533fac.2
        for <linux-phy@lists.infradead.org>; Sun, 22 Oct 2023 21:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698036555; x=1698641355; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SxPaFEHkN2GDdgDwBKgSaVnPaX2nDRtfg0nlj1uSc1Q=;
        b=HB6BrvgB5Gcmt4pGTSoB+Mi9pzL9C9+aFGJWFOK6ymLsqDHot3SkdoGX0c8ya8DjIT
         f2IQn15mhnuMiA56jq3szRkv3Dfuyh3FXx+k6vEp90C0bvizLFgvrXRwuK/1XdaE6q4J
         cZCF+YGG+9cAt51PUbqGGksVYV5ySZGatKZi7HiVikFyx4Wja+5y4UCxt2aG+q8aaUFA
         Sdc4HvZRLJJ/rxUEeIUkBS9tZdpdoZeyC9ldpDKJ12x6brZinU7Z51s8l1//via5UXxW
         rJ+uV5CLi5bDZY5jaqX6rruEomIfUg77omSssBYxEO8A+U7BKlSB9F8LQycGE0j0/1sx
         i0VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698036555; x=1698641355;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxPaFEHkN2GDdgDwBKgSaVnPaX2nDRtfg0nlj1uSc1Q=;
        b=Ek6O4/cvg9PXlto2cioAjtiCCkNYg0wDOP8ttapW2q+7mvIWdI5kxh+Z0RcXTCnXZm
         ce/u7VHE2H3nk880g9+DCrlvQPFztkQduYd1L2Ot8Uj8iRwR2T9PLk36ZpQyEghgWdhS
         9wGO6eccLbNWyXs1Bqblwz66Mupt/7Pq9aGCldkQfEzjhNxojh7PeWtJ21Xs82pFXHx+
         vOZHE1SY8/tbDa61zqGGQSki7DtMJjOMzWOtSyUGdKZrzENV+XZawdDWdxt6XZicX3uF
         2TrQ3Go737B8onnRtGn5M+1EA8Xs2OxMlChn7OQBGfmBg28V11ZyEnT6xQ66KgVDyoaA
         UxwA==
X-Gm-Message-State: AOJu0YwJie47H+qhRtq0+9MVKEMBX8jeLYdLVvUnuW43DuOTJ6s2DIXt
	go21E+HBkMZ+x2RGGJvCTtarSKDjnn1ZbUiEeXU=
X-Google-Smtp-Source: AGHT+IFkk9nGKKxsfM2C5d0hR9EDQje2xJBgkluo3WMKyPwX7Agu5S6em1v6mPWAeUB+rfbbXPJuxNvLi9kHqqd7nBM=
X-Received: by 2002:a05:6870:3d97:b0:1d0:d78b:982e with SMTP id
 lm23-20020a0568703d9700b001d0d78b982emr11653745oab.35.1698036555076; Sun, 22
 Oct 2023 21:49:15 -0700 (PDT)
MIME-Version: 1.0
References: <20231022163006.803800-1-sergio.paracuellos@gmail.com> <ccd29f0e-2c94-45bf-8fa1-12a88b475fc9@linaro.org>
In-Reply-To: <ccd29f0e-2c94-45bf-8fa1-12a88b475fc9@linaro.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 23 Oct 2023 06:49:03 +0200
Message-ID: <CAMhs-H-R-9ADNgr6LxK-7ATBuc7SB=LgJzxWC-bpYiX0jNarAQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: phy: ralink-usb-phy: convert to dtschema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_214917_919852_1F5A8BC9 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
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

T24gU3VuLCBPY3QgMjIsIDIwMjMgYXQgNjozN+KAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiAyMi8xMC8yMDIzIDE4
OjMwLCBTZXJnaW8gUGFyYWN1ZWxsb3Mgd3JvdGU6Cj4gPiBDb252ZXJ0IHRoZSByYWxpbmstdXNi
LXBoeSBiaW5kaW5ncyB0byBEVCBzY2hlbWEuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogU2VyZ2lv
IFBhcmFjdWVsbG9zIDxzZXJnaW8ucGFyYWN1ZWxsb3NAZ21haWwuY29tPgo+ID4gLS0tCj4KPiBS
ZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5h
cm8ub3JnPgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgoKVGhhbmtzLCBLcnp5c3p0b2Yh
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

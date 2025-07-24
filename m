Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC159C87FD2
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 10:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4dz3nphJBLmYJQ8yK8BSHOYY2MYDI6HJAs/eD5reo8=; b=2KgwkdaNeievpl
	5Z3aDmTm8DX6gdqvKboHrKZAwz79aRUQQbHZHnc9IBqypR7vbEK0MfLInPzqwpRFLbrHWOjBWGE6/
	IiGeGoti2EZJqim6YhPl9HcxtHo48cdqMNosCLYB4SbH9n5+RxmP5qza3t8JxvCp8csM2BNOhb0S0
	mCxfSEK9j1t9dRESEl2aQ2TJhylLik1kSC/PmSf/O4SSpVhoBDHs02VlpC95ttKHTz6+V4gS5Ty0f
	c4SvYjaNk8G+QSv4z5AZza1CiArTmzhqaaS0abuR6WDypKP5yHC9geAviv4zN/2vwfRNP2EyQb05/
	f7n5xtXRPo03i9yAI11w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uessu-00000007ATR-2LVR;
	Thu, 24 Jul 2025 10:09:08 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ues4W-000000070eO-1Oyf
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 09:17:05 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-553b584ac96so777068e87.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 02:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753348623; x=1753953423; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PzAImXvw7ltOkAeF9aE1vYSBycD64FXcVdqDkDZASUk=;
        b=APxndZadbKvZaYe6jldkZ5Ckq5P4Tnm2fM0y5loQmieM6evmM+qrnxVDHWiRZlCTA8
         hqUtT5S/VmiCUDCNagUDLRrteT5xs58BtjumhC4c0DG/T/V/7lAKKwojG1aDg6mFc645
         5YK9VXeFuli7v+0fWCrhlAfOXljlGZH7zvZKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753348623; x=1753953423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PzAImXvw7ltOkAeF9aE1vYSBycD64FXcVdqDkDZASUk=;
        b=KWwWb1hFcvQUpAvDjdpUDui0W1AMaen76KcgQc6P/P9qL3+uGBxQzSLx/+0kQumKYC
         WZL4FRlmc0rJ8vuJgHKQn4R6a+dUCmfDiEF6V9Zk5JWvm+ny/k5BjISfoKqwVCyzfQC/
         E+3yPcQ70W58XYDytn996bASwsfVlvtCWcprEQBh9y5bMReN0NET8KnkWIBZKOSe61wS
         Nvm2TRRTQjB9L7PSgvd3I1erS7aCa1SwMpzorvf0wU5rMZ5HOn6/PD9FJ2RAh9X7Zly0
         H/KsBifCsMHYoFoSczJdQWg1OfAaSW43orbqjWzr6EBcunjVKln+NCfFfV2mOd06kmPE
         MXLQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7cdWPU34+bRcKXIhOEthEAjV+LzyQKTSzNr4DC4F7SW7GBwVPzl55ykH8sjh8qozEuHjrQX0W5pE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzL/sQF/9ibkkLwPegBVpEX5xyoTS0Jfvv/9xPbmLt9yQLFzy7J
	TWC/sPrLbZD4luuSthNbLyWSHawuNXuljPcgHSnYkI6Gz5UsXbOGqAzvme2yOq0+ECN17uTh2Ha
	HiPOrPQ2d7qaIs9ZVp/eR6xVHMe9m6l19Hh4bFBzY
X-Gm-Gg: ASbGnctKFIqEMtwTD8JWdmZB4j1jqoevlz6i5FgIozjxOq9Cjt9zLtOlhdy/xUVI6zK
	ppd6M8SXVy48yO91+oRFE6cJfBCmnp3PvyQT0VIBbcC152oFoZ9mxPYUV6H7t/t1doAbv3NVrch
	ZSGIGNG4xPuBkRiXcD6PupLWlhjey/rr9NaWhAvVF3fDtRytG4/vSRNqaIhx2AK91mJjJoDT+wc
	EPY4VDxDmHALhp+AVV39GZDbjf/W4G2uQKnfYwLYmJxoQ==
X-Google-Smtp-Source: AGHT+IGEMdfa/7pI/vtQhZpE9t+GCiAKzWTtoHMGXUrvfqlTr4xGM3G4p6O55TyjazqugJ0Dpoksr/xy8ncvPcXnu9I=
X-Received: by 2002:a05:6512:3a84:b0:55b:57e8:16a5 with SMTP id
 2adb3069b0e04-55b57e81981mr94240e87.32.1753348622453; Thu, 24 Jul 2025
 02:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:16:51 +0800
X-Gm-Features: Ac12FXxEOfXERpbm54RTrpt_sFAe6oyRhPRCsENRyO12HQ_K_abqIUXAGxmi264
Message-ID: <CAGXv+5Exb0X-6V=bdJefaz+m=eXSrrw6_SgWY6vDF3rF1RmVBg@mail.gmail.com>
Subject: Re: [PATCH 02/38] dt-bindings: display: mediatek, dp: Allow
 DisplayPort AUX bus
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_021704_378889_4E2FDB17 
X-CRM114-Status: UNSURE (   5.56  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNDozOeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
TGlrZSBvdGhlcnMsIHRoZSBNZWRpYVRlayBEaXNwbGF5UG9ydCBjb250cm9sbGVyIHByb3ZpZGVz
IGFuCj4gYXV4aWxpYXJ5IGJ1czogaW1wb3J0IHRoZSBjb21tb24gZHAtYXV4LWJ1cy55YW1sIGlu
IHRoaXMgYmluZGluZwo+IHRvIGFsbG93IHNwZWNpZnlpbmcgYW4gYXV4LWJ1cyBzdWJub2RlLgo+
Cj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2Fj
Y2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBDaGVuLVl1IFRzYWkg
PHdlbnN0QGNocm9taXVtLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=

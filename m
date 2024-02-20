Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02553C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 11:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aydyhxyQ7TMR/K4u3q2kgw8oaTpWcfXkiwTSUqNXwWM=; b=xAPe4Ge5SkCVCy
	rK/VozOiY+xJZDZGoNJd0dLFzW4ieZ9chztMoPh4hhGbMOuJYvgTWD3bboCfrmw67CaHcfHY+J/a4
	fVMfbO6Jyn4Y8cJ+wIfhiEu2UFA4XROaD4Vup9iYZcNf3UbWq9BiTn+1GRCpkai3Jpq2Z7hhTC/UA
	dFnlTMun7SWs4mximjDWfhosZfi9W90rPhAho3uljakWhztVtXIF7g/2dyNFZWhs1xW2aqDijVBeI
	hMzAjEAAb8qPRaZUkBOX+yzl0buqpAq+Ts2TXC4lay4VNmGFFvmn4pVetEscIE+zCavIgYsR/UEU7
	ncaA65RPFsPDUwozZ8wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOj8-0000000EYiw-0AtP;
	Tue, 20 Feb 2024 11:55:58 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOj3-0000000EYem-1Tw0
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 11:55:55 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-dcd94fb9e4dso5396173276.2
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 03:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708430152; x=1709034952; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uumLRt54NCf1C2r2Jw813VJ80gZwOfopdqyWnHS9j/Y=;
        b=bjmjt4548H0tokhoUrk4Mmy+VnZSdiUahedOHSM/WlFQvn+E6Z1LTW1t07Fg4bYUc8
         YerqC8EwTNck/4cqJVWGiVrZprBUhbGuduzUirheP3B3H23R42Hcp6u4Ennhds/OMDCZ
         /jIqsTvWjte+zzNXq4H61aucRhCyaKSvzYkG7vohd+lrCZxt9+40ZbUxQK3qG9pDwwzN
         foUZS3ich9CzSXtisbNl93l4MVXwH+RzF3Up9zEt9+qg+STMJn5sGZgjY0XMrZjCm7JA
         bxjVMy6+52LdjltVgH0dWGGaFAPc5Kn/w5YQrtXl3uq7zkd/RHlVCyPOdrXSPkcD4LDO
         kGZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708430152; x=1709034952;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uumLRt54NCf1C2r2Jw813VJ80gZwOfopdqyWnHS9j/Y=;
        b=lh6XzX7SxgJ0ljsm6dU7i8IZkVicGbQjAUvIrJGXDF8XfOjjEVhkCOroQFFeZtD8oL
         Ndf06iv4RbANy3xAX65blQCwQTyYCCVoCLDmc15Czr6QK4v7+FILtTsLvwtFNZN75bJ6
         IWYanWogVasj2Xu7zS1ZkhsvKwSKDP7nKmM9QB7kgoUGmvj65IWkAOpNo0b75o4HrsjA
         BPpG6EBXR7AR/0Tz8QsNtnd8qHfAdolHRmPq6eJ5xPt/6p7P3BUfuSIjDrb8vg06CrM0
         q09mnwyuGc4oYn2Nab2eFj4EXZC9VBy13Io4g360Fr1A8ZavqGWHU5hMx7zdwIlWkKtd
         UQDQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0Mb1XJ69JGTMDBstb1wF1o9xx8vX43oMhqf2GrZfk/3BMek/DMU20YGaBMModUHzp7TH7a7Sl5DEi6yFK/455LFipghHF0o4DGRjkzA==
X-Gm-Message-State: AOJu0YxVL1LyVRWU2+4m8uo+k2QIi86kzu2tHZqTFrqdf1kLadbVytRc
	knDSN9Um5xleBK7Jg+skQzy5BU1q7VvdVaf9SI43ikSTCs3xJgsW1CzukKsxF2Tu2KZvFPOmMaG
	wGIxijsM0Npl8awZGptlia83luOB4OEcGvJUsVQ==
X-Google-Smtp-Source: AGHT+IExpvpD8AgXA3aIHbCHCE4RqNcFOBxn35EoCinO8Hpk+aekmgbnXIo/496q/fTFdU86koAVpAivWwXL7BwqeFo=
X-Received: by 2002:a25:8d0d:0:b0:dcb:ef22:3869 with SMTP id
 n13-20020a258d0d000000b00dcbef223869mr12986540ybl.16.1708430151780; Tue, 20
 Feb 2024 03:55:51 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-2-johan+linaro@kernel.org>
 <c95f5ff3-8dad-4302-9384-92a9b83f7bdc@web.de> <ZdRTx2lmHBVlcLub@hovoldconsulting.com>
 <1afc87c-2c1f-df10-a0c8-2a267d44122@inria.fr>
In-Reply-To: <1afc87c-2c1f-df10-a0c8-2a267d44122@inria.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 13:55:40 +0200
Message-ID: <CAA8EJppH9ey97yKFUccNLHhMKs3eUS55+rY0tXm_a6KGp9jtug@mail.gmail.com>
Subject: Re: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Johan Hovold <johan@kernel.org>, Markus Elfring <Markus.Elfring@web.de>, 
	Johan Hovold <johan+linaro@kernel.org>, freedreno@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Bjorn Andersson <andersson@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Vinod Koul <vkoul@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Rob Clark <robdclark@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_035553_463469_71DF72DF 
X-CRM114-Status: GOOD (  20.20  )
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

T24gVHVlLCAyMCBGZWIgMjAyNCBhdCAxMzo1MiwgSnVsaWEgTGF3YWxsIDxqdWxpYS5sYXdhbGxA
aW5yaWEuZnI+IHdyb3RlOgo+Cj4KPgo+IE9uIFR1ZSwgMjAgRmViIDIwMjQsIEpvaGFuIEhvdm9s
ZCB3cm90ZToKPgo+ID4gT24gTW9uLCBGZWIgMTksIDIwMjQgYXQgMDY6NDg6MzBQTSArMDEwMCwg
TWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4gPiA+ID4gVGhlIHR3byBkZXZpY2Ugbm9kZSByZWZlcmVu
Y2VzIHRha2VuIGR1cmluZyBhbGxvY2F0aW9uIG5lZWQgdG8gYmUKPiA+ID4gPiBkcm9wcGVkIHdo
ZW4gdGhlIGF1eGlsaWFyeSBkZXZpY2UgaXMgZnJlZWQuCj4gPiA+IOKApgo+ID4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWhwZC1icmlkZ2UuYwo+ID4gPiDigKYKPiA+ID4g
PiBAQCAtNzQsNiArNzUsOCBAQCBzdHJ1Y3QgZGV2aWNlICpkcm1fZHBfaHBkX2JyaWRnZV9yZWdp
c3RlcihzdHJ1Y3QgZGV2aWNlICpwYXJlbnQsCj4gPiA+ID4KPiA+ID4gPiAgIHJldCA9IGF1eGls
aWFyeV9kZXZpY2VfaW5pdChhZGV2KTsKPiA+ID4gPiAgIGlmIChyZXQpIHsKPiA+ID4gPiArICAg
ICAgICAgb2Zfbm9kZV9wdXQoYWRldi0+ZGV2LnBsYXRmb3JtX2RhdGEpOwo+ID4gPiA+ICsgICAg
ICAgICBvZl9ub2RlX3B1dChhZGV2LT5kZXYub2Zfbm9kZSk7Cj4gPiA+ID4gICAgICAgICAgIGlk
YV9mcmVlKCZkcm1fYXV4X2hwZF9icmlkZ2VfaWRhLCBhZGV2LT5pZCk7Cj4gPiA+ID4gICAgICAg
ICAgIGtmcmVlKGFkZXYpOwo+ID4gPiA+ICAgICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOwo+
ID4gPgo+ID4gPiBUaGUgbGFzdCB0d28gc3RhdGVtZW50cyBhcmUgYWxzbyB1c2VkIGluIGEgcHJl
dmlvdXMgaWYgYnJhbmNoLgo+ID4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ni44LXJjNS9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtaHBkLWJyaWRnZS5jI0w2
Mwo+ID4gPgo+ID4gPiBIb3cgZG8geW91IHRoaW5rIGFib3V0IHRvIGF2b2lkIHN1Y2ggYSBiaXQg
b2YgZHVwbGljYXRlIHNvdXJjZSBjb2RlCj4gPiA+IGJ5IGFkZGluZyBhIGxhYmVsIGhlcmU/Cj4g
Pgo+ID4gTm8sIHRoZSBjdXJyZW50IGNvZGUgaXMgZmluZSBhbmQgd2hhdCB5b3UgYXJlIHN1Z2dl
c3RpbmcgaXMgaW4gYW55IGNhc2UKPiA+IHVucmVsYXRlZCB0byB0aGlzIGZpeC4KPiA+Cj4gPiBJ
ZiB0aGlzIGZ1bmN0aW9uIGV2ZXIgZ3Jvd3MgYSB0aGlyZCBlcnJvciBwYXRoIGxpa2UgdGhhdCwg
SSB0b28gd291bGQKPiA+IGNvbnNpZGVyIGl0IGhvd2V2ZXIuCj4KPiBJIGd1ZXNzIHRoZXNlIG9m
X25vZGVfcHV0cyBjYW4gYWxsIGdvIGF3YXkgc2hvcnRseSB3aXRoIGNsZWFudXAgYW55d2F5PwoK
SSdtIG5vdCBzdXJlIGFib3V0IGl0LiBUaG9zZSBhcmUgbG9uZy1saXZpbmcgdmFyaWFibGVzLCBz
byB0aGV5IGFyZQpub3QgYSBzdWJqZWN0IG9mIGNsZWFudXAuaCwgYXJlIHRoZXk/CgoKLS0gCldp
dGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A530C4345F
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 11:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23driZPle/mUYpos9QQmS0u1ZF7Eyt844HYu+Tz7qns=; b=pDzQAONuGYgXZG
	xnckI7Oh41EFa2YpL5LEef9JG1CeH4U94mwa2B8rhUxG79SiIJ7TQMGzeh2+kCBOiH38iBMmM8Fha
	VNfA+v6a0g9V6wDbaH/5mRs+0bf4j+cEDuK2X3cRDxN/2OKox+q5SXHq8LgrF/B39lRx2WWnsjgim
	oO/9TrxZ8jjySdoQhOtyYyBhoAI6W/qzDtB2O7fpgQfd0xTujJCA1sq59l1o4wyjVBzszwlrizN36
	prsLKJwJoqTrTzP+0mYtAk0R87z724OTftwaTd45EHGB2M9+JnRGdBVKkjc/WeQPaPEoDQPANHUNI
	1AoKLop60GYDNtdsE3EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxS9-000000082Bh-2xyk;
	Thu, 25 Apr 2024 11:39:49 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxS6-0000000828w-1upm
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 11:39:48 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-41b42ce6cc2so3141775e9.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 04:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714045182; x=1714649982; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lx1UMZxQ7GI3jnCiWDSMDINtorN1nVNDmR/Gckd3Kyc=;
        b=MO4OP+AAP9AqLPldAhpED6ISDJaSbRnZ+mi4SDbZe9Y/2pT3mu/IpxzlLXNbj/9Ekk
         vC6f1/kf4AePc8MKHLreKDO/dsafm35OJ1LQerMvFrwfYrVbE8inChSSAEUqidYxVo1G
         gafpyfLKHgGv2/yz5kVgs8YgpVmjN9NB7tuolO0Xuu9iK+kbU5XARDozMW7WEZII5Us8
         nAzeO8O2DJa8ndmS5KIU0h3bvrR/mJnmJj5cBj2jJNI/phwP8ReXRGLd4EaZxTS3TMJx
         yh+alwrtkN0PiHHJkOWj4NSbn7wqPzayaHzwNf9mW/aYG7Grik7B+ILV6uUSA48GH+qk
         FwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714045182; x=1714649982;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lx1UMZxQ7GI3jnCiWDSMDINtorN1nVNDmR/Gckd3Kyc=;
        b=H5KTE+lHO1LPiqB4R5EGy3xfa8Iq4ownabZQjkgnEFFPrx7vF5eGMhRTR0ve/uN2S3
         8SZYcrVAfrhOz3JXdVcgftcvIpV/SqGk3dTyvBbwHRFELVpQgzqHFvDzgfPChnctpBig
         /KEwGg4HFwhXH0lL5xMZIqFLdVTvsaLNKqh+upTJoqGGQfvhYYn2g1fcNVehM6bUFQOw
         WuMwrWLcvjW9qikQQkgGmVToZss5zE2y1LkYOhWjCD+bFmIj537BtXiCS6seNCyc3ZCW
         m6kMPzL7J7PHbR2SL+f0Bd4/SYF0G2JSiTM5Go6Ehff83Gg9NmGWRpbRz9MAzkh2/rvq
         nnyg==
X-Forwarded-Encrypted: i=1; AJvYcCV2Ic1QKU9NriCanRsjVEvn2wxGPx3dWn2p+fAlwupFZWUeEIbtOiQIxyErxfmxR3/CCJ3PukQSHyePkGtmKU9VwVbuXmBTceWe9nK/6g==
X-Gm-Message-State: AOJu0YwwQhcFduDqEMyZq61DoH1Mx7cL336N//ZLiZXB4g4gT2gMZ9WK
	3dQ6OrthxO6EbCDTZsGsXmF9NVkYzVKvDPkyTwxvZDU7pCopIaq3HcAfXmSqg2A=
X-Google-Smtp-Source: AGHT+IGq82OhzsAz74n/xOWFujdowqxi2tmMG3tUKmEgRbvC6V2sRAwNbx7JTrE2QD+khqp3ZW/xjg==
X-Received: by 2002:a05:600c:3ca6:b0:41a:4623:7ee9 with SMTP id bg38-20020a05600c3ca600b0041a46237ee9mr1851362wmb.10.1714045181717;
        Thu, 25 Apr 2024 04:39:41 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id l23-20020a05600c1d1700b00418f99170f2sm25007939wms.32.2024.04.25.04.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 04:39:41 -0700 (PDT)
Message-ID: <7b10292dcc2f538c8d5c27322206507130a6595c.camel@linaro.org>
Subject: Re: [PATCH v2 04/14] arm64: dts: exynos: gs101: enable cmu-hsi2
 clock controller
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com, 
 James.Bottomley@HansenPartnership.com, ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Thu, 25 Apr 2024 12:39:39 +0100
In-Reply-To: <20240423205006.1785138-5-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
	 <20240423205006.1785138-5-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_043946_696251_EEF25DA4 
X-CRM114-Status: UNSURE (   6.44  )
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

T24gVHVlLCAyMDI0LTA0LTIzIGF0IDIxOjQ5ICswMTAwLCBQZXRlciBHcmlmZmluIHdyb3RlOgo+
IEVuYWJsZSB0aGUgY211X2hzaTIgY2xvY2sgbWFuYWdlbWVudCB1bml0LiBJdCBmZWVkcyBzb21l
IG9mCj4gdGhlIGhpZ2ggc3BlZWQgaW50ZXJmYWNlcyBzdWNoIGFzIFBDSWUgYW5kIFVGUy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+
CgpJIHRoaW5rIEkgcmVwbGllZCB0byB0aGlzIGJlZm9yZSwgaW4gYW55IGNhc2U6CgpSZXZpZXdl
ZC1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58353C4345F
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzyAcoKrv7QPHV81uLe4e2UZh7boLjGqX/YO1Rdu4Aw=; b=GUaUHPzuhXYc9P
	OyBb2F6Hwzdhbvp/mzAdrK9imyL3fpd17qmt8e4LQACIrOQ0n92ZB+Ihkv6uFewnrEiY2TOg1nJud
	6IQj7bUk9U7he4JG92O1xjUeSedIM/15g/qbqr0+74qAOuE44tjh6nhTvy+ZpVb5iReT18DoPDYb3
	vQqvOB1VRTAjoxaxQ7lINS8GRCnCtnRxlMjBpS+LKFwI4FUEmGTCVuSI+qiHHCv5qlzj54Lk760RE
	jITvwNbhmEXIj9AoStogVdasvxcmxioG6YxOmqbA4Hm0952QoUMa2p0Ah5foCFWK6BGRZEmiiqoaG
	u2cgxsbSjMlSCX8DBJ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxcW-000000084QA-42JR;
	Thu, 25 Apr 2024 11:50:32 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxcU-000000084No-2zHT
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 11:50:31 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-41b51ee24f9so2370435e9.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 04:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714045822; x=1714650622; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6X90SrMENmPj2F8E+j2MRnzGgHoMOcwnFY9jZAuri3U=;
        b=c2BAKdBhIRgocQgBAkdwDCy4jAZHfb1mmY6KivkgE6Qr+pevrmC1Hb/XO/a7vPHNlw
         hwlaIKcMnZ/kGlACBV9O2Azy2ybO8uzHtx7zbwrbweRL0SHKHPVZZM6uHZxISz18PQYz
         CMbghOkTJS1KjRSeO3eomZYq1uxsmvimoQMhpAxUkpWWgkjbj0AF5LaFwgU8Hskqdjb4
         A9vxAiZapvn87WtQ+PnLFcCxFX7lcUErvIUO9XdaFlsnz3UfF37hjoiwzEqFrZc7WIwB
         8Wm3ctuvUyczy4u9K1D7yM05Uyi57/Q4Q3/G7+EHLX+DfYaka7RBRB3zMXZhQSZDOKdk
         ndBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714045822; x=1714650622;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6X90SrMENmPj2F8E+j2MRnzGgHoMOcwnFY9jZAuri3U=;
        b=jnS6mQJsdEdAVXIhq71eU5LNyL2xgds+5pNhvBmuzDKsF3MEih1UvCsNcGI/aymBTh
         dpI3H7lWf10GJAcBmUa1ViluE/hOGi0C9P0aNjhwQSZmhSu5GQGwH141izWz8Vvql5JF
         Tdjldjh1L94ClqpG+IGS/fh+xUUea/EplZWqxWKsaiy7b2X3OFPjrCFa5MXCrgpLaVCs
         yr9LR4kSXfN1lC9fJUJBaP5lb3Rd2prcTF5kK5ch13MCld1ADJF4ZD1lrJP9lqIeM7X/
         rXIxqooYynC5FM+7FBBKJtd14NvvTkXSRTYsFCj9zIG63ErQCIPaCNa3/5vmzBDMcA5d
         zeLA==
X-Forwarded-Encrypted: i=1; AJvYcCUhUSjNZfw0tV/zGsMG5QtEOpDWj8SIQsfH9jFnw6jqpzk/0LHL8OU4H6si36BDmULAPpN6lgCe29Ia1+JnID1tCpayc3Xa92TBC//nbQ==
X-Gm-Message-State: AOJu0Yygbd4eO7T45QRjpY7vLcZho1xdxg+8i42hfiUMKNxcJhYKfPBj
	NtyVRPFq69TUlKb10mUP17nkNjjYH4I21kIh4uvoiPzveZDdDA+qFox4tNjiXDo=
X-Google-Smtp-Source: AGHT+IFd3IUrl2RhAWqNwz+jhkozMToyJuHkmRsv7L8RtAZdqq/rmyIrab8etOh0MMSjsigMRTo70g==
X-Received: by 2002:a05:6000:789:b0:349:bb17:6e60 with SMTP id bu9-20020a056000078900b00349bb176e60mr2805121wrb.2.1714045822352;
        Thu, 25 Apr 2024 04:50:22 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id he5-20020a05600c540500b00418e3c5bc8esm26152587wmb.18.2024.04.25.04.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 04:50:22 -0700 (PDT)
Message-ID: <db857c14d2463f643dc602012329b75df8146c0b.camel@linaro.org>
Subject: Re: [PATCH v2 05/14] arm64: dts: exynos: gs101: Add the hsi2 sysreg
 node
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
Date: Thu, 25 Apr 2024 12:50:20 +0100
In-Reply-To: <20240423205006.1785138-6-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
	 <20240423205006.1785138-6-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045030_769366_64FF085B 
X-CRM114-Status: UNSURE (   5.53  )
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
IFRoaXMgaGFzIHNvbWUgY29uZmlndXJhdGlvbiBiaXRzIHN1Y2ggYXMgc2hhcmFiaWxpdHkgdGhh
dAo+IGFyZSByZXF1aXJlZCBieSBVRlMuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR3JpZmZp
biA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKUmV2aWV3ZWQtYnk6IEFuZHLDqSBEcmFzemlr
IDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

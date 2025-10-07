Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF0E2CCA470
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 20:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Df/ZRJ4C42yqobhrWn9t2kCPNNU6m9L5FMxe/DJOX3Q=; b=d9dQlUxgDcoO6u
	mVVhLEkuNDitxTIjc+4TqizltAOUU9BwslLTxPRXeeFGdPggX0m05OcQOsGclD8Zv+DFDEOtL51zt
	zcYRhyUQjizfY4Npma/eKAQpzr3ZyBxUBwOfwOZ0/L/D6+F9HYlApF4mS3/Yd6ttWXCk2UTeATJl6
	gEbO5htC3XAUsXaH5JILXK+vRa0uQS2lbP/Au+ChSCBWlj3fxXp2MqwQ6jLSiUt33GxJYC8rI/HP4
	LrFwdmvdUS/ejML/MkDQD3h5q4zikA81YuM1W42RFN7e6cMkwxoOY89KMMOEVEJi+HlOZuDRcykjn
	6rP5+rlND++9WifcLUSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6EC9-00000002kLn-1xVj;
	Tue, 07 Oct 2025 20:22:01 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6EC6-00000002kLB-2GOt
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 20:21:59 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-373b7e07182so4057647fac.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 13:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759868517; x=1760473317; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsR75QuYzDtr3bjoJhD52nZ9O3aIRwzpredTmac7Uto=;
        b=rcQCObnOTHiihK0PxpFd7U5VgECjhVVbaBGgo1helfrPiUSSZ5Ej0ppp8RUMme0w/7
         8+7WX/x7AwoCqsjmrvM9oYvNya0HmWyRCybXa+kpgPhHOx6qc6rM48O/XSVRIWewcNR3
         lez5bsMjed0HskrTrDRlXlaCXX2yPLhRX4GIBA5f1YNQ20mWeJBYU4ju8JMPnbyY6Y73
         K9P88I/mPK/Fmrq1ockx7Y6JrcWqsgcuNZ/hlGj9BPnc7cQ5ug1bt1sDV8PJNpZ4xymV
         eqwbDuiE3sgyuQxyp1n1EMFZKmP7aza7UTC+EcQ5lonrvUjph6sdhVa7cKJoAcb5mOVC
         g4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868517; x=1760473317;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsR75QuYzDtr3bjoJhD52nZ9O3aIRwzpredTmac7Uto=;
        b=F6D1ASNFulLRBvZXuLEJ2oB+hsWV8WuXWE3EgaSrq0OkqujFsEJ+R44Ru4kxYj3s/F
         vfAqTMnTeh7eRG3l44/kjvpcx3MnhPYsaFIbW71WgJ5HEXA4INnt7zF9R/X5Zf8X1pbw
         qMLp0scT60JxWDmvkolfMFhH3cDDGc15VRuMjqHQzT0UelcVOqzraTtxK/UNcgObnoag
         P+Kbz7CxZYN8H7zueYV5o7b6WnJwXZAEcYqeSrLKVeW+2QY5ypfs8AAsNbozuU3/yYGo
         lY16/Vd0aE8QNOvT7ib5auQyJ2TtIEkbys8KmBoPE3Zay76E9DW2joldQGOk3Ux//jW6
         xs+w==
X-Forwarded-Encrypted: i=1; AJvYcCXx81S5IWN+/gzE8lDd/p+AcdvU2wuxaPmuGBMtbs2grpvpPlV1oBwk5nmwV8PC1FpFV0e4Ezwi6s4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5MjRx++4oeTOJQivApyYH4ZLPHSzuc1NYZeMSQ2ny0a0YJ6jI
	Qq49jAoZMMgIpbpInzP9mPhU2TGkzhDzB8dR9Ls5BRYicu7hKvSqiSevajNPcg3cWpLONsqIwd0
	ovvKp4kWaklb4y3U9YJjvIQun8+1kxZrc5gCvqzI1kQ==
X-Gm-Gg: ASbGncs1PrHN0TNCMZl3UEL8ADUErCp02gFaNY4ieiD5vzfKsVfjWZaTFnNW5Siknoz
	bcvT460qM/Me9CnvILuBD0RKye/GsfmOYnRuza5hCBOAeexYUxPWvoUha/oP6u/3tInbt6EQ1c1
	ZMNMT+9GC8G6XWH73plSHKrzCsGuvU4cFRfX7HX61LGG7mUYWNWmeUKqkmRRhZDl6YY3+13FupH
	rpmIjMQysEs2sTOsyYm8uotDPqOAybJp89IUA==
X-Google-Smtp-Source: AGHT+IFvtcyKjlupXR4jzZXFoUiymzWiqOCATc5gJjSvgUyoKVMUYlajN3Vs3NoiPv+/rIeXC9ZrtBcQe+GkyueiNcc=
X-Received: by 2002:a05:6870:d88f:b0:35a:cf5e:fc5a with SMTP id
 586e51a60fabf-3c0f5c131e5mr532073fac.3.1759868517577; Tue, 07 Oct 2025
 13:21:57 -0700 (PDT)
MIME-Version: 1.0
References: <20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
In-Reply-To: <20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-v1-1-d9030d14af59@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:21:46 +0100
X-Gm-Features: AS18NWDCwphF6RRiccVd74rxfHhTkLJzBEXIn28O6vitl2Y4s82jYqPTESZUVEI
Message-ID: <CADrjBPpCLcaeLn+SB4K0gPzQtT97SDw9xsszw6rtPO2Ue5kYNQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: samsung,ufs-phy: add power-domains
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_132158_576138_8519D02D 
X-CRM114-Status: UNSURE (   7.62  )
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

T24gVHVlLCA3IE9jdCAyMDI1IGF0IDE3OjAxLCBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3pp
a0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFRoZSBVRlMgcGh5IGNhbiBiZSBwYXJ0IG9mIGEgcG93
ZXIgZG9tYWluLCBzbyB3ZSBuZWVkIHRvIGFsbG93IHRoZQo+IHJlbGV2YW50IHByb3BlcnR5ICdw
b3dlci1kb21haW5zJy4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5k
cmFzemlrQGxpbmFyby5vcmc+Cj4gLS0tCgpSZXZpZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0
ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==

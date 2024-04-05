Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE337CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7k6ZOvOxmy+RBdyYapV4UxzGckaUKeE97uph+WqTKFs=; b=Mq0zlFSJtPdMWe
	em94KbiYgQr7BTeNxiyR4ukaou9VzJ4m76N+w7WGUKTthwoSun2jDvJScYH0NT4Ns4uwKruieJXxj
	7hrkkSQAFdnnW9tpXfOT1RvfYZXkEbBNkKY1zMngnXHh7fUf12DfeP/UoaXwVUIF4n2LQ/MijVSrD
	o0xrTtq+sBhsUrL94zBQ76fMdPpS77JHn8Q46jlnYO+VqibB8mbSD0YH9bH24f9y2Wn//U9mWeVAx
	jW7pIM+C1D3DMlpdKiRuLwGjb3L17KYgiC5IBRq3+n1GQv4pLGTnidWojLvI4Cxgw7z5n7XLazVrJ
	WJ1wYe6EqHfiJfb1VI9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsdrU-00000005daD-21Aa;
	Fri, 05 Apr 2024 07:19:44 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsdrR-00000005dYQ-3vqa
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 07:19:43 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4162b7f18b6so9452745e9.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 00:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712301578; x=1712906378; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wLAttUaMHKCtdPX1WWBnpNXpXFsqBqC4m05I7O08oiU=;
        b=BTtw6UehVw1Rj7NrVvsllOUZgGm4IUvABbRjph9UM/PgtbdI2ewaclq+dH/gtEoDPn
         ldo8dVd/ANA+qSE9lT32DHT7s/H6DNE7Oe6yYZUWnjZ4zY8eLUUIoi3rWb2Jz9KmGXmM
         hAmLKSD9VVtaB9WU4E7NEO4B3idjCNZ5SbKFpNs7g7/tAyxS05WWt0vxELW8XyDu+jd8
         3KHlLwveJyNWyzPU0sAoGIzVTIQWV3t+jx+hB23IulYzU7GOHLtr75A9vcvz2sJlO/EV
         R7YwqpDB8Do/XsmZzbeGFXipWKKMDwmgzXy3XvIbN5IssmlV+1fE7GsDWxEvamYNwJbT
         nIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712301578; x=1712906378;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wLAttUaMHKCtdPX1WWBnpNXpXFsqBqC4m05I7O08oiU=;
        b=Zm3PVwkSbyJE0KLo28CxTgsEFx1q8X/qBf6hnSiI2PnMO3m6ttIi44V9Y7Z1Xlbhm3
         VApF0I7XdzjSm3XJkN5zY1EeOAQ1wFtWAO+UAdu3jrcLeqPrRPCA5Zqf7cjKjqAxOBMu
         Xxazi6QsSmQ2q1aOenWimLdIS/r3LzUEJpYVWeKooa3dEdu2ebHLfbsSaXYZhnvHZfpM
         bXpX8mLbZ2krOqHUfaXqnZHZl6Sg6oBgALsC1lj44OzXn0Y7kMdij3t3vwa6c3N6Z7iF
         H4Oj1+Qkk6dAnD74yHIbS/4u7yQFKDI+jRmmiDVIQftufULAa/0dtrtJ8hUi6GmIYvRo
         N/NQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXhyZNzVKIk+WysAV7zY4qdnorpPSap5C5xioqUsHF5AFzurQvA1M33MEdJlEnn9YvAwL0dgU3pkgHlEpTeoMvr2t0/mkFnhwp/PtTQw==
X-Gm-Message-State: AOJu0YxKc/hOZWJsPjSHpRAH0enjiIf+Jw4KWR/P1UJEMLJfp/ASiRfE
	PnYKY1s4tE7pV0ZCOYvQWDdv8QRe4helE9tetRKOJ+CACucN+CrXYC2/v/9dSlMGe1kvrJHNfQh
	U
X-Google-Smtp-Source: AGHT+IFbrCW33dSXgPiQ+eoAkzDxZI2m/BJwNp+mTFmhPeWQoinz7PCnNwEKOC0Vi6S+DLAAdKT1nQ==
X-Received: by 2002:a05:600c:3486:b0:416:321d:5a47 with SMTP id a6-20020a05600c348600b00416321d5a47mr63398wmq.0.1712301578095;
        Fri, 05 Apr 2024 00:19:38 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id h12-20020adfa4cc000000b00343668bc492sm1295285wrb.71.2024.04.05.00.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 00:19:37 -0700 (PDT)
Message-ID: <52f97f540725a25893e0ca35ddd5b637a83c31b4.camel@linaro.org>
Subject: Re: [PATCH 02/17] dt-bindings: soc: google: exynos-sysreg: add
 dedicated hsi2 sysreg compatible
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Fri, 05 Apr 2024 08:19:36 +0100
In-Reply-To: <20240404122559.898930-3-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-3-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_001942_011826_A2013C32 
X-CRM114-Status: UNSURE (   5.94  )
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

T24gVGh1LCAyMDI0LTA0LTA0IGF0IDEzOjI1ICswMTAwLCBQZXRlciBHcmlmZmluIHdyb3RlOgo+
IFVwZGF0ZSBkdCBzY2hlbWEgdG8gaW5jbHVkZSB0aGUgZ3MxMDEgaHNpMiBzeXNyZWcgY29tcGF0
aWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxp
bmFyby5vcmc+Cj4gLS0tCj4gwqAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvc2Ftc3VuZy9z
YW1zdW5nLGV4eW5vcy1zeXNyZWcueWFtbMKgIHwgMiArKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKQoKUmV2aWV3ZWQtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlr
QGxpbmFyby5vcmc+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==

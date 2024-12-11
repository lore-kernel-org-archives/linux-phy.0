Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2219E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 09:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ei2gAcZKgLP6miv8FanWnuKCjh/sI4vwu1iqbISr1XU=; b=USKpScKRc2LMFE
	zy70vFNqZ5E2Hbtm084aYSmTRAs/vXStQQWYVTLHspexmt3mk5yXxndVtR4P1I2MJWWqBHa1p6gnB
	UJwWYvfl0sCXvTL9dRczxk6jZWlsAyC34/JA1EY0nRr2OWHX1MGbWp7JiC34wSlM/vpyo55SluadI
	nr9XZGY3wj+rqnOugubNsugLdDJFM/JWusCX9Lo7NZ5Ezei9PKG0ilFd20Q1Pv6so+ziyBZDae4hs
	VUK5c7s/86nb3SBu8RDXNMDPdAR8JlKdCeW51cNd5iPwDS0EGOAEk8o21e57Ci5wgsDDulNSPMxdp
	0GUUd+JmErcbbIYCfHXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLJ7Q-0000000ERNQ-3wr8;
	Wed, 11 Dec 2024 09:34:56 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLJ7O-0000000ERMd-19S6
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 09:34:55 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-725abf74334so5376374b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 01:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733909693; x=1734514493; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cgqV/JO6oR6aFw7Aik89l/GQyuFFq78Hr5VL5rEr7CM=;
        b=jH2dpiMLBSV0CbAguDgrcN2DszRWV8jAbtW4Cm+Tx4v53TXtE3yKIy8u7yXyGAb/o/
         WAnPcA18vN/zlUUoW0mYsw1aimKhAaaQCVG4D6k5SSO09Cc9Yykxwxl4wr+AVBde58dQ
         PM00z1bXbfonZaLhOvdUULXzL1uofC2zap3alu66BOJnvbVHgF5CwpZqA/phCEWa1d6a
         wHm1o/1m1qUH7/Uq2HrSKzn1oHHQiSKJd2wBGIALERkqNNbB6OwJ76MVxie2prtx+EUl
         1TTjltQgYMHPna3R58v7n/NzN/QOjX1pYGi4Ef3DjFKFsm2gG7h6ZZXhq9azAmHJCVz+
         Axcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733909693; x=1734514493;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cgqV/JO6oR6aFw7Aik89l/GQyuFFq78Hr5VL5rEr7CM=;
        b=qWV1EYyHnqxSEar7BPbF10XvTv5ybnnflSZHy0n2OTbsd33AhpShlPf8HFqc08pppR
         ZBZTFxomRtrjNgSnru/qMN+4uy03TA8Nglpy6bJq36RDWzuZbhXECrHgm852Q2A58all
         pjYf7+r6Aa/1KUafuG7xdSjoTe95X8XFP2vNHJk5GbHCmVwikKTaCypnpV88V+3BeRaV
         VBvwLKnld/OshoARb1P4DjoW95c1tnW8gbTpxrtABDhNdomlj/F80lVBPZPCRwyYVWvC
         OeOOwYa3kEiJPxu8K7yOUUNJaf5AwbrRO+aeMhqqTulJf+r8q8F8WDS4y3dYSybmjGSl
         0nag==
X-Forwarded-Encrypted: i=1; AJvYcCXqxZPfr5Iz61+SwgOCyff6Uh00Tjq9+24nc5cqmKDyDpKgMcHsvcSUN0UNZTRbzO9s8oN9wdq5WZQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWyjvqZ7Fsol2XIOTNrDn8P/m8EIxj+NcQGlJONDLO6xC9vpi+
	iq78Na4DKRzmSW5l2uLnrWAQqbBaS6QverekjppwQzfBxWPiXfgjzPpLhdNbHA==
X-Gm-Gg: ASbGncsm5YxJsIHfAcmEZS3E7env8J/oz0J6nTedbaA+XznD/3IG7qHMMZYIJx3yJX8
	qI/cEsUjOhcouzY2UMd2Ilz3LbnIQBINz35WXmMxUlfCoOGBdyvyzhTSPO55LOwxf8U5xwMFGwI
	HkGVboDGxAPx1qpEDSvZzRNiwxmqdWFCGc7FNpQodxVDq5/QCUI4I4uO4jUi9PPpxB/G+X91Ek4
	XQhW9/SddK+UDfUGI5PHQGV0Cb/JCXqgJmvMBWF3Ah36znuhpi71+GSWPHgQlA=
X-Google-Smtp-Source: AGHT+IH07+qa/4yb9DxmiZHmFWco0nSmlHI3Wipl6jd6BWnIU+MGk8r8cehLwq5q837AcEZzgzZO4A==
X-Received: by 2002:a05:6a20:cf83:b0:1dc:37a:8dc0 with SMTP id adf61e73a8af0-1e1c12df490mr3814479637.21.1733909692958;
        Wed, 11 Dec 2024 01:34:52 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fdde228459sm2593605a12.40.2024.12.11.01.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 01:34:52 -0800 (PST)
Date: Wed, 11 Dec 2024 15:04:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Praveenkumar I <quic_ipkumar@quicinc.com>
Subject: Re: [PATCH v2 4/6] pci: qcom: Add support for IPQ5332
Message-ID: <20241211093445.ykmr23zameie7si5@thinkpad>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-5-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204113329.3195627-5-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_013454_312904_010950B2 
X-CRM114-Status: UNSURE (   9.96  )
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

T24gV2VkLCBEZWMgMDQsIDIwMjQgYXQgMDU6MDM6MjdQTSArMDUzMCwgVmFyYWRhcmFqYW4gTmFy
YXlhbmFuIHdyb3RlOgo+IEZyb206IFByYXZlZW5rdW1hciBJIDxxdWljX2lwa3VtYXJAcXVpY2lu
Yy5jb20+Cj4gCj4gVGhlIFF1YWxjb21tIElQUTUzMzIgUENJZSBjb250cm9sbGVyIGluc3RhbmNl
cyBhcmUgYmFzZWQgb24KPiBTTlBTIGNvcmUgNS45MGEgd2l0aCBHZW4zIFNpbmdsZS1sYW5lIGFu
ZCBEdWFsLWxhbmUgc3VwcG9ydC4KPiBUaGUgUXVhbGNvbW0gSVAgY2FuIGJlIGhhbmRsZWQgYnkg
dGhlIDIuOS4wIG9wcywgaGVuY2UgdXNpbmcKPiB0aGF0IGZvciBJUFE1MzMyLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFByYXZlZW5rdW1hciBJIDxxdWljX2lwa3VtYXJAcXVpY2luYy5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogVmFyYWRhcmFqYW4gTmFyYXlhbmFuIDxxdWljX3ZhcmFkYUBxdWljaW5jLmNv
bT4KCkFzIEtyenlzenRvZiBtZW50aW9uZWQgaW4gYmluZGluZ3MgcGF0Y2gsIHlvdSBjYW4gdXNl
IGZhbGxiYWNrcyB0byBhdm9pZCBkcml2ZXIKY2hhbmdlcy4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

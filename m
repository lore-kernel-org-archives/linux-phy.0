Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF58BFEFB5D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkybPfkQ5rpvR837sa8GxxOCL25q7xh+7kzd/J+Uy5U=; b=XJ1Dd3Ry58JF9/
	TSEiAO+0kV/jOJY+YBp0xjj0ec9auetRBezCeztRDB4iVzcXLpSud6xGrRiOF//VR6LHCE+0tkbbl
	RZgqrwXxi7kHqNvLP01XurPur1K/r23ub11zu7KKyXvre+/dIdtKtoAQ8tory/zkh33rNCS0XQ82o
	YXvK5dtdyi6b4G59AkwzemirQDq3RwuY3WOfZnMw0rKrv1lSwDZaJyJ5TubJbQTgcXQ3QFx0Dp/7O
	o9diclKeK44NzfYNOgZsuiIopDN72ZwzCcQMI85ccsXLhfiP//GUnbU5oQwvUrN069y9UxTWebo+k
	+Z4WDsJ5gpvD3998h84A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzkK-00000008cXs-2MIX;
	Fri, 27 Feb 2026 15:27:16 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzkI-00000008cWK-0F4S
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:27:15 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-483708b697cso2864045e9.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 07:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772206032; x=1772810832; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uI9S2P6c8egIXJKKMSmeFGi+qUnJg7oBI+XRfv5Q1so=;
        b=GrdJCmCV1yKRC2y5sMWNVOkDYxUDgoPIT8XqI/nWzkr9c/ihfewGsWBPJi5iGIXySP
         GEI/+ztgzr44eDYMq1KZdaJQ9SGeNcxkHRIjZHt3UVf51y6OiM8MEo1XU90iklZR8tsf
         w2KvG8mEzya2JkEvBUtrw5u91ozktMIekSiCE3VatGxLXTRiV7Q1PbQ0Jy2yYBY6sAB+
         mxLt5eByV9HYkEZQJ576QRTJY52CONmOqztTiaOJeryVasPoWQWeFMx9PA2AkmiZoz+L
         QN69EmilReIumL3VkCH1Tl0RCJfSl+fK91xxYBSmE9QPpf9V0X1KSrYXDuirtAECczWo
         wRlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772206032; x=1772810832;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uI9S2P6c8egIXJKKMSmeFGi+qUnJg7oBI+XRfv5Q1so=;
        b=Wkxc7m7p3ByxgE3R/gxn16cPGgeOh1jbBQl3+8EgamUNpLTGtjJq+mNpko0dIc5dKb
         +BVY7ZKHXxjL/nfG0z0toHhVFtkhUDO3YQOiKJTfHeGEwhn9pLd7xcxLOxgkRBKIp9bJ
         K0ud+ZcGfO/oTcnQCTMvCvYHaVwwaOxlEtprkqrrE28xlBD+ucylcijqvQnv8ZOS5pwK
         rr5+Ba0s9gNBM8SRmJYDXoP76g4piuTZ4jgkcP4FlfmYUUHQqu/qj1eyvkp/SDaFMShc
         utQKiAcPt1XudvhC3Ih0DKnZh2K/F7lHcQtpdsU10V8s51vfWkNdxZtQf/xb/irTsFyw
         u/eg==
X-Forwarded-Encrypted: i=1; AJvYcCWxbZtkScpwqvZkZ1WfBdPVKhjKBo+jRrbKr9ULUH6+m111kzwwJN54qq3v73xpqX7SNiKzDcoFEPo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzaPx6I1T+lyXa/H2jkWxo4UOlcujNveE6djW0/mChXouOGRFvQ
	Ox3WphMoMyQu4lsJIbqGcODSlAaMfY3lT+ZBx9DTr/Xq0yh0CpFGhNgP
X-Gm-Gg: ATEYQzwsmVlNjdIkYwQW9WFQ2wXZQfvEmd8KhrDPxkCGfTJ+xcVdhbhQKKMEByNV6lp
	hyuUoa8y0HA6mVxj9HJEpX+Baa5CSYZNj7h4nx1QJdr7bscKJj73OykjfvdOe6uW9k8QA+qVJUV
	+HU0H3g3JULxTt/c3s5R4vtJQ4cTBHuMn7dVNJpZLvF8FVT5YOtdIcm68X9tN7KPTwmQIDM7zTg
	hCr+U9CkL44h+H6UGkEo2ySMjZu6spZ4zdhZPTNBj2BLVGmTMu0YgLUHvfdbCZZ6rCD5MUyk/wO
	peDZzu6HoihTUdGzQEVJxMvSnnwmBvT6/Tln9HoVt4FNpYyJaMcKCdBovfhxJR82UliYochb1ZZ
	aEjftuqCtK4WBZEK9YaufDW8NWKWHWEYXxy9jVi1d1cA4d6iPdKYuczG+kzwaR80C1z/IOhUdEp
	qgJkH9Bval0lcZjIa5G7yOyMVG
X-Received: by 2002:a05:600c:444f:b0:477:a6f1:499d with SMTP id 5b1f17b1804b1-483c9c1bbdcmr27647755e9.3.1772206031724;
        Fri, 27 Feb 2026 07:27:11 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd68826asm360231605e9.0.2026.02.27.07.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:27:10 -0800 (PST)
Date: Fri, 27 Feb 2026 17:27:07 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 0/9] net: stmmac: qcom-ethqos: further serdes
 reorganisation
Message-ID: <20260227152707.k5lobznug3xxxc7h@skbuf>
References: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
 <aZ66uXCwGgH7B_A-@shell.armlinux.org.uk>
 <aaGgWUpM2A5y11Wh@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaGgWUpM2A5y11Wh@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072714_110834_D71CE518 
X-CRM114-Status: GOOD (  17.41  )
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

SGkgVmlub2QsCgpPbiBGcmksIEZlYiAyNywgMjAyNiBhdCAwNzoxNzowNVBNICswNTMwLCBWaW5v
ZCBLb3VsIHdyb3RlOgo+IE9uIDI1LTAyLTI2LCAwOTowMiwgUnVzc2VsbCBLaW5nIChPcmFjbGUp
IHdyb3RlOgo+ID4gTm90ZTogb25seSA4IHBhdGNoZXMgaW4gdGhpcyBzZXJpZXMsIG5vdCA5IGFz
IHRoZSBzdWJqZWN0IGxpbmUgc2F5cywKPiA+IGFzIHRoZSBzZXRfY2xrX3R4X3JhdGUoKSBwYXRj
aCBiZWNhbWUgcGFydCBvZiB0aGUgZmlyc3Qgc2VyaWVzLgo+ID4gCj4gPiBPbiBXZWQsIEZlYiAy
NSwgMjAyNiBhdCAwOTowMDo0MUFNICswMDAwLCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgd3JvdGU6
Cj4gPiA+IFRoaXMgaXMgcGFydCAyIG9mIHRoZSBxY29tLWV0aHFvcyBzZXJpZXMsIHBhcnQgMSBo
YXMgbm93IGJlZW4gbWVyZ2VkLgo+ID4gPiAKPiA+ID4gVGhpcyBwYXJ0IG9mIHRoZSBzZXJpZXMg
Zm9jdXNlcyBvbiB0aGUgZ2VuZXJpYyBQSFkgZHJpdmVyLCBidXQgdGhlc2UKPiA+ID4gY2hhbmdl
cyBoYXZlIGRlcGVuZGVuY2llcyBvbiB0aGUgZXRoZXJuZXQgZHJpdmVyLCBoZW5jZSB3aHkKPiA+
ID4gaXQgd2lsbCBuZWVkIHRvIGdvIHZpYSBuZXQtbmV4dC4gRnVydGhlcm1vcmUsIHN1YnNlcXVl
bnQgY2hhbmdlcwo+ID4gPiBkZXBlbmQgb24gdGhlc2UgcGF0Y2hlcy4KPiAKPiBUaGlzIGxndG0s
IGNhbiB3ZSBnZXQgc2lnbmVkIHRhZyBzbyB0aGF0IHdlIGNhbiBwdWxsIHRoaXMgaW50byBwaHkg
dHJlZQo+IGFzIHdlbGwKCkkgdGhpbmsgdGhpcyBzZXJpZXMgaXMgb2Jzb2xldGUuIEl0IGhhcyBi
ZWVuIHN1cGVyc2VkZWQgaW4gdGhlIG5ldGRldgpwYXRjaHdvcmsgYnk6CgpbUEFUQ0ggUkVTRU5E
MiBuZXQtbmV4dCAwLzhdIG5ldDogc3RtbWFjOiBxY29tLWV0aHFvczogZnVydGhlciBzZXJkZXMg
cmVvcmdhbmlzYXRpb24K4pSc4pSAPltQQVRDSCBSRVNFTkQyIG5ldC1uZXh0IDEvOF0gbmV0OiBz
dG1tYWM6IHFjb20tZXRocW9zOiBtb3ZlIGV0aHFvc19zZXRfc2VyZGVzX3NwZWVkKCkK4pSc4pSA
PltQQVRDSCBSRVNFTkQyIG5ldC1uZXh0IDIvOF0gcGh5OiBxY29tLXNnbWlpLWV0aDogYWRkIC5z
ZXRfbW9kZSgpIGFuZCAudmFsaWRhdGUoKSBtZXRob2RzCuKUnOKUgD5bUEFUQ0ggUkVTRU5EMiBu
ZXQtbmV4dCAzLzhdIG5ldDogc3RtbWFjOiBxY29tLWV0aHFvczogY29udmVydCB0byB1c2UgcGh5
X3NldF9tb2RlX2V4dCgpCuKUnOKUgD5bUEFUQ0ggUkVTRU5EMiBuZXQtbmV4dCA0LzhdIHBoeTog
cWNvbS1zZ21paS1ldGg6IHJlbW92ZSAuc2V0X3NwZWVkKCkgaW1wbGVtZW50YXRpb24K4pSc4pSA
PltQQVRDSCBSRVNFTkQyIG5ldC1uZXh0IDUvOF0gcGh5OiBxY29tLXNnbWlpLWV0aDogdXNlIFBI
WSBpbnRlcmZhY2UgbW9kZSBmb3IgU2VyRGVzIHNldHRpbmdzCuKUnOKUgD5bUEFUQ0ggUkVTRU5E
MiBuZXQtbmV4dCA2LzhdIHBoeTogcWNvbS1zZ21paS1ldGg6IHJlbW92ZSBxY29tX2R3bWFjX3Nn
bWlpX3BoeV9pbnRlcmZhY2UoKQrilJzilIA+W1BBVENIIFJFU0VORDIgbmV0LW5leHQgNy84XSBw
aHk6IHFjb20tc2dtaWktZXRoOiByZWxheCBvcmRlciBvZiAucG93ZXJfb24oKSB2cyAuc2V0X21v
ZGUqKCkK4pSU4pSAPltQQVRDSCBSRVNFTkQyIG5ldC1uZXh0IDgvOF0gbmV0OiBzdG1tYWM6IHFj
b20tZXRocW9zOiByZW1vdmUgcGh5X3NldF9tb2RlX2V4dCgpIGFmdGVyIHBoeV9wb3dlcl9vbigp
Cgood2l0aCB3aGljaCBpdCBpcyBvbmx5IHBhcnRpYWxseSBvdmVybGFwcGluZykKCkkgZ3Vlc3Mg
eW91IHNob3VsZCBnaXZlIHlvdXIgQWNrcyB0aGVyZSBhcyB3ZWxsLgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

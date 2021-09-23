Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,FSL_HELO_FAKE,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27DAC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 20:06:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77F1061107
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 20:06:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 77F1061107
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12rot5OqRbt4V9h33/x7+MQt3R/0XKbzXwrPFqHRdao=; b=NfTpGus1VdKgB7
	muyHlCFZyCrFaZOhcgd0b44XeZxdQjSMnEqGjKVep572dxCY1xGRCZ5gfSTFWggDhY0ge0vSeNyxY
	vMzhuJyiu9a2BlkePOoP7biQ6QjLZh4hwDuXMVSe0P/RVXyYpM7Jo9MHWWKkKt9GY0FKAria2vN4k
	KV88wdRw2FwmVHTNy7QMm4V0xKbPnRkAGkNMUcWz/w/eFPC0mKuGdnShHDGWnMVH8NP2vEX+g8x8C
	KaZQt96XXFKQ7uCgBtkDKPz39/BsASgP8gFoV86j9/VPAk6IPurvSLrnzzTx7jFsPMIhmr6gn1Tzo
	eC/6/YVvdfwv033hFvxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTUz5-00CXdR-Vn; Thu, 23 Sep 2021 20:06:20 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTUz2-00CXd2-Bw
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 20:06:18 +0000
Received: by mail-wr1-x42b.google.com with SMTP id w17so20424085wrv.10
 for <linux-phy@lists.infradead.org>; Thu, 23 Sep 2021 13:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=+fr9Gy1AQEubiTK5cHPDCJrxGwSlissv4q4mqqhp4ls=;
 b=WsfssnVldxNLG/cAcrkuCW5oovIGpRMiOEeOfQ/1RAD+iVH2X35FG098OmMS/FzoJl
 uCmS9rweN/VUqtwntLV386eXFMaYDIfObDUx/I5cJBMloSSEj0jeB+9WZqfGwBIXVIHl
 w6nIUmRSVaWYZNANx9Q3iJswpBeQsMZg3XPKgfWx5ISirs90dCVU6ifNSLm4jke5dRsk
 nzWdMVKezJHYoOyW/ekgzRcdX1PyOIzmkRZtxVywP10AePlOuuQBUWqPMQIP5JjxZE6D
 U40vjDeH41H0AvqEkczNmYLko2CPKtZCaINLc6PHQoQOV2NeighKqG390nF83s6U5FOM
 QOZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+fr9Gy1AQEubiTK5cHPDCJrxGwSlissv4q4mqqhp4ls=;
 b=QZzVK8TCtIHj0xH3FeRuMYasxxaxwjDdKk7zx0Inzfd3aeg+IplgGNPSBgNU+UhkCb
 ylSsd+/VPOsRVZ0XgwkrgVvXLWgkX9JXYraPDo7gGFbt5XworC8yXS9ZPM5oA0EEA7Ac
 1W0EewHhnZ51D624NGOmTrr47hh9aH+py0sBAvEUrJsMVRAv7QdDTukgvNmRH1RAe4a0
 hbkDhntwRTi13PCvFDI1kNCrNtJm6uqy3eadMk+ld1ENrvD8bq0gljv1Cnl2u8WElUQ+
 5N0QfXAju9onE+dx3WubAtabwSofjIFfzQvT07ZWL0AlTouimBfDjeYYGZDX1U8SV1sW
 4TLg==
X-Gm-Message-State: AOAM5318XWuTY3h/llGywqAY4axDwSrDzBixEOO7UAMUmCz1iknuMeW6
 9KvVXVK5EgG855SKN6niObOrqA==
X-Google-Smtp-Source: ABdhPJwGuflioho+kw1LeePLr5Wotw/ASdcSJIOLrT/gJMjicmoFxsvl6fBQPE1J+ytwi/9v7eKwPg==
X-Received: by 2002:a7b:cd0d:: with SMTP id f13mr18103521wmj.183.1632427573456; 
 Thu, 23 Sep 2021 13:06:13 -0700 (PDT)
Received: from google.com ([95.148.6.233])
 by smtp.gmail.com with ESMTPSA id h15sm6061862wrc.19.2021.09.23.13.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 13:06:13 -0700 (PDT)
Date: Thu, 23 Sep 2021 21:06:10 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
Message-ID: <YUzeMqVTw62dM/6R@google.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-3-zajec5@gmail.com>
 <YUriBVIH/n0p2H+D@google.com>
 <CAL_Jsq+a9nKvMwzTPxCvF421cGw7CtAqHZxT=E6oO1twJ41d5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+a9nKvMwzTPxCvF421cGw7CtAqHZxT=E6oO1twJ41d5Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_130616_846711_3F2BA7E7 
X-CRM114-Status: GOOD (  11.80  )
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

T24gVGh1LCAyMyBTZXAgMjAyMSwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE9uIFdlZCwgU2VwIDIy
LCAyMDIxIGF0IDI6NTggQU0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gT24gTW9uLCAxMyBTZXAgMjAyMSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+ID4K
PiA+ID4gRnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+ID4gPgo+ID4g
PiBOb3J0aHN0YXIncyBVU0IgMi4wIFBIWSBpcyBwYXJ0IG9mIHRoZSBDUlUgTUZELgo+ID4gPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4g
PiA+IC0tLQo+ID4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL2JyY20sY3J1LnlhbWwg
ICAgICAgICB8IDE1ICsrKysrKysrKysrKysrLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBBcHBsaWVkLCB0aGFua3MuCj4gCj4g
SG9wZWZ1bGx5IHRoaXMgd29ya3Mgd2l0aG91dCBwYXRjaCAyPz8/CgpXaGF0IGRvIHlvdSBtZWFu
IGJ5ICd3b3Jrcyc/CgpJdCdzIGRvY3VtZW50YXRpb24uCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzm
lq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFj
ZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==

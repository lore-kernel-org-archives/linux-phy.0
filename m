Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C7E2C6FD18
	for <linux-phy@archiver.kernel.org>; Wed, 19 Apr 2023 13:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L2NE8Ld1XzF252iskWR7XUpZkLnl5vYM7erTZ+bnD1U=; b=V13Tdmq+sNAsc2iV7abQ3nZ7qT
	cNGYOjH6SD0PSjDFs1MSpUBFztunG60yenp8QALqtx1OO5Tgt+IG+arENVeqe+aoMLfbs0KBUcDsJ
	f5Xej55FOkNQh8wh0qi0DiPG94IPziuI1pBc1Zgh5Zd75zJU0xXROZjrwf1XwUkE8A/FJsS0ifdCU
	tpAG0tcpfj0bAKcPsKGexv147ct74SX6puXSE78/GwVbkSxcmDU3VkRFyGAtmsiLok5t75w5fxVwe
	bxVeWqhsaSKzZMNM9x0YIvKeXUUmx/UTXO0W+i0XCReAYVs2xVh1QniXyMLDed6uuG1wUcZQDIytm
	eYWe5eXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp8Em-005ZOu-2p;
	Wed, 19 Apr 2023 13:52:44 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp8Eh-005ZMR-2h
	for linux-phy@lists.infradead.org;
	Wed, 19 Apr 2023 13:52:42 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id js7so13204841qvb.5
        for <linux-phy@lists.infradead.org>; Wed, 19 Apr 2023 06:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681912357; x=1684504357;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:in-reply-to:references:user-agent:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FPjrLq9D2NGXVQL2kIu0v3AaBsn7YPrZkOXYspxigx0=;
        b=fi3j63QI2hRJJqEPPrC0RFh2ARuCl2lLAooXulavHnWokQVzUGIWqjFHEYBPcJ1OTi
         wfnbfYwrLToEwwC8cMmIyPQgnCSgawqdR/wo/xo8Ri63rtB9WB0skau7BMYm9igb40+n
         Il7yCzWrJKYa9+FtJBykUsfYCDg5ZR23Whx46r41NGYKp8oxRFAYU7cP1ppCNEARQ6p0
         TSj9l0FZ34cztLvvNcJNGXUMoO/6AOIg+slZn7ytIodY+WO68mV1JVeu8/ppb0MBIsNN
         v86q1naPa6AtheeVYvy1i51MaYf5miOUx4TBrB5k9I0K0mowEiEcUygWDp1RyQZt/4xv
         YlGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681912357; x=1684504357;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:in-reply-to:references:user-agent:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FPjrLq9D2NGXVQL2kIu0v3AaBsn7YPrZkOXYspxigx0=;
        b=daJbdHXogakuSTaPKGPmohQKQMr5/pO4z0siMmv1RFsTtdvdL8dQ/UM4Yq08KDfjTK
         9i1JcvRfjKO/F5Q094xOPM2Dpso/0Vdvx9D1V9xa6Z53ZGgODENCB4AvSTRRUInI2tmh
         3GVgbnpVlZjt5dMDCCob2tFZK8Y8MYi5KY+hHGFmrEk1luU+6IwN6HKcpU/zor8EFuq0
         fMXGj3Y/mljL8NAaF5JrhZqEDGVv/dXfiPwcCXYVmXTp7yNuDJLP/oTP+6fiyECTo+yw
         4JLWZL2y0vkwCYJBnkwM2fGIZilQ2pNA4bJMjIc08vHGUqDV4ToONNJvYe+7B9S73TcL
         8rOA==
X-Gm-Message-State: AAQBX9eHvNyRB2hqg3fn9A77zCwpZDhRDgUpV4e80X3OlUaAFdXGw71W
	Z+XX98bw5nVk376v11crz2Ftj37GgwGcu4LSHnjeRA==
X-Google-Smtp-Source: AKy350bqSRMHi7mtCynvIyCs4PEfhJSxOVP7yhnmkrSs9ps3OwCrZt5hBXC3DVgKOCg654JGHtMmNafIr7aQqM2fbKs=
X-Received: by 2002:a05:6214:1c8a:b0:5ef:4ae4:4da6 with SMTP id
 ib10-20020a0562141c8a00b005ef4ae44da6mr22429745qvb.31.1681912357324; Wed, 19
 Apr 2023 06:52:37 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Apr 2023 06:52:36 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20230419122131.2167122-1-thierry.reding@gmail.com>
In-Reply-To: <20230419122131.2167122-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Date: Wed, 19 Apr 2023 06:52:36 -0700
Message-ID: <CABnWg9v_1PuQ5w7+=mAWL-T8j=taF8L63Q0Xa268PvjK1yW_Eg@mail.gmail.com>
Subject: Re: [PATCH] phy: mediatek: Avoid floating point constants
To: Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Guillaume Ranquet <granquet@baylibre.com>, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Jonathan Hunter <jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_065240_092252_87677BAE 
X-CRM114-Status: GOOD (  10.29  )
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

T24gV2VkLCAxOSBBcHIgMjAyMyAxNDoyMSwgVGhpZXJyeSBSZWRpbmcgPHRoaWVycnkucmVkaW5n
QGdtYWlsLmNvbT4gd3JvdGU6Cj5Gcm9tOiBUaGllcnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEu
Y29tPgo+Cj5XaGVuIGJ1aWxkaW5nIHdpdGggb2xkIHZlcnNpb25zIG9mIEdDQyAoNi4zIGluIHRo
aXMgY2FzZSksIHRoZSBjb21waWxlcgo+c3R1bWJsZXMgb3ZlciB0aGUgZmxvYXRpbmcgcG9pbnQg
Y29uc3RhbnRzIGluIHRoaXMgZHJpdmVyOgo+Cj4JZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10
ay1oZG1pLW10ODE5NS5jOiBJbiBmdW5jdGlvbiDigJhtdGtfaGRtaV9wbGxfcHJlcGFyZeKAmToK
Pglkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmM6MzMxOjIzOiBlcnJv
cjog4oCYLW1nZW5lcmFsLXJlZ3Mtb25seeKAmSBpcyBpbmNvbXBhdGlibGUgd2l0aCBmbG9hdGlu
Zy1wb2ludCBjb2RlCj4JICB9IGVsc2UgaWYgKHBpeGVsX2NsayA+PSA3NC4xNzUgKiBNRUdBICYm
IHBpeGVsX2NsayA8PSAzMDAgKiBNRUdBKSB7Cj4KPglkcml2ZXJzL3BoeS9tZWRpYXRlay9waHkt
bXRrLWhkbWktbXQ4MTk1LmM6MzYxOjEyOiBlcnJvcjog4oCYLW1nZW5lcmFsLXJlZ3Mtb25seeKA
mSBpcyBpbmNvbXBhdGlibGUgd2l0aCBmbG9hdGluZy1wb2ludCBjb2RlCj4JIHN0YXRpYyBpbnQg
bXRrX2hkbWlfcGxsX3ByZXBhcmUoc3RydWN0IGNsa19odyAqaHcpCj4JCSAgICBefn5+fn5+fn5+
fn5+fn5+fn5+fgo+CWRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYzoz
NjE6MTI6IGVycm9yOiDigJgtbWdlbmVyYWwtcmVncy1vbmx54oCZIGlzIGluY29tcGF0aWJsZSB3
aXRoIGZsb2F0aW5nLXBvaW50IGNvZGUKPgo+Rml4IHRoaXMgYnkgc3dpdGNoaW5nIHRvIHRoZSBL
SUxPIG1hY3JvIGluc3RlYWQgYW5kIG11bHRpcGx5aW5nIHRoZQo+Y29uc3RhbnRzIGJ5IDEwMDAg
dG8gZ2V0IHJpZCBvZiB0aGUgZmxvYXRpbmcgcG9pbnQuCj4KPkZpeGVzOiA0NTgxMGQ0ODZiYjQg
KCJwaHk6IG1lZGlhdGVrOiBhZGQgc3VwcG9ydCBmb3IgcGh5LW10ay1oZG1pLW10ODE5NSIpCj5S
ZXBvcnRlZC1ieTogSm9uYXRoYW4gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KPlNpZ25l
ZC1vZmYtYnk6IFRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Cj4tLS0KPiBkcml2
ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMgfCA4ICsrKystLS0tCj4gMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+ZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYyBiL2RyaXZlcnMv
cGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYwo+aW5kZXggYWJmYzA3N2ZiMGE4Li5i
MTBhZjI2Y2FkMmYgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhk
bWktbXQ4MTk1LmMKPisrKyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgx
OTUuYwo+QEAgLTIzOSw5ICsyMzksOSBAQCBzdGF0aWMgaW50IG10a19oZG1pX3BsbF9jYWxjKHN0
cnVjdCBtdGtfaGRtaV9waHkgKmhkbWlfcGh5LCBzdHJ1Y3QgY2xrX2h3ICpodywKPiAJCXR4cG9z
ZGl2ID0gODsKPiAJZWxzZSBpZiAodG1kc19jbGsgPj0gNTQgKiBNRUdBICYmIHRtZHNfY2xrIDwg
MTQ4LjM1ICogTUVHQSkKPiAJCXR4cG9zZGl2ID0gNDsKPi0JZWxzZSBpZiAodG1kc19jbGsgPj0g
MTQ4LjM1ICogTUVHQSAmJiB0bWRzX2NsayA8IDI5Ni43ICogTUVHQSkKPisJZWxzZSBpZiAodG1k
c19jbGsgPj0gMTQ4MzUwICogS0lMTyAmJiB0bWRzX2NsayA8IDI5NjcwMCAqIEtJTE8pCj4gCQl0
eHBvc2RpdiA9IDI7Cj4tCWVsc2UgaWYgKHRtZHNfY2xrID49IDI5Ni43ICogTUVHQSAmJiB0bWRz
X2NsayA8PSA1OTQgKiBNRUdBKQo+KwllbHNlIGlmICh0bWRzX2NsayA+PSAyOTY3MDAgKiBLSUxP
ICYmIHRtZHNfY2xrIDw9IDU5NCAqIE1FR0EpCj4gCQl0eHBvc2RpdiA9IDE7Cj4gCWVsc2UKPiAJ
CXJldHVybiAtRUlOVkFMOwo+QEAgLTMyOCwxMiArMzI4LDEyIEBAIHN0YXRpYyBpbnQgbXRrX2hk
bWlfcGxsX2Rydl9zZXR0aW5nKHN0cnVjdCBjbGtfaHcgKmh3KQo+IAkJY2xrX2NoYW5uZWxfYmlh
cyA9IDB4MzQ7IC8qIDIwbUEgKi8KPiAJCWltcGVkYW5jZV9lbiA9IDB4ZjsKPiAJCWltcGVkYW5j
ZSA9IDB4MzY7IC8qIDEwMG9obSAqLwo+LQl9IGVsc2UgaWYgKHBpeGVsX2NsayA+PSA3NC4xNzUg
KiBNRUdBICYmIHBpeGVsX2NsayA8PSAzMDAgKiBNRUdBKSB7Cj4rCX0gZWxzZSBpZiAocGl4ZWxf
Y2xrID49IDc0MTc1ICogS0lMTyAmJiBwaXhlbF9jbGsgPD0gMzAwICogTUVHQSkgewo+IAkJZGF0
YV9jaGFubmVsX2JpYXMgPSAweDM0OyAvKiAyMG1BICovCj4gCQljbGtfY2hhbm5lbF9iaWFzID0g
MHgyYzsgLyogMTZtQSAqLwo+IAkJaW1wZWRhbmNlX2VuID0gMHhmOwo+IAkJaW1wZWRhbmNlID0g
MHgzNjsgLyogMTAwb2htICovCj4tCX0gZWxzZSBpZiAocGl4ZWxfY2xrID49IDI3ICogTUVHQSAm
JiBwaXhlbF9jbGsgPCA3NC4xNzUgKiBNRUdBKSB7Cj4rCX0gZWxzZSBpZiAocGl4ZWxfY2xrID49
IDI3ICogTUVHQSAmJiBwaXhlbF9jbGsgPCA3NDE3NSAqIEtJTE8pIHsKPiAJCWRhdGFfY2hhbm5l
bF9iaWFzID0gMHgxNDsgLyogMTBtQSAqLwo+IAkJY2xrX2NoYW5uZWxfYmlhcyA9IDB4MTQ7IC8q
IDEwbUEgKi8KPiAJCWltcGVkYW5jZV9lbiA9IDB4MDsKPi0tCj4yLjQwLjAKPgoKVGh4IGZvciB0
aGUgZml4IQoKUmV2aWV3ZWQtYnk6IEd1aWxsYXVtZSBSYW5xdWV0IDxncmFucXVldEBiYXlsaWJy
ZS5jb20+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK

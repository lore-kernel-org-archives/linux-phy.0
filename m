Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA890C6FD18
	for <linux-phy@archiver.kernel.org>; Wed, 19 Apr 2023 12:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cDLlnYgN8VTQruGIPvUodlw7O7Y7DDlchDc28Ywyv/A=; b=wnZKolAjxyqu6W
	KrTmJFXsr0sIAsPWHTZAuCIYi0a62/CNjDswOE7kyN8cETSKoB0aeHAoAGJ4JTRl6cqQ2gniJJ3oF
	Q4AaPpmXxYvkg0pPLzA9a5Au1wkApxrcmPt8TLDlA27DNa+Ddk+C7bWuoAsaXx41w9qL1AX3cl87M
	aav1DThrTn9GWSep5YVF+Wa5NYUL10h+pCxM/HqKk9b5UO7yXdTvm2qelAp5YBjqa595Tv3WvGp4a
	WsBYH3KJ6Y+DHNrgx+94H7kqePWoFv4MORcNAfPQ2aUPjaAn/K4DIbYjiEsX6MJad7C/6fO+sjPeA
	oXQ/1y3HCrioCYDZlpMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp6on-005KrN-0H;
	Wed, 19 Apr 2023 12:21:49 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp6od-005KiP-2y;
	Wed, 19 Apr 2023 12:21:44 +0000
Received: by mail-ej1-x630.google.com with SMTP id kt6so42977798ejb.0;
        Wed, 19 Apr 2023 05:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681906895; x=1684498895;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ikj7vNEeHwYqr2Sk7V2uWjly1AUS+w1dHEa9aKVsIKM=;
        b=J0WEgBeH3AuzjTRnY6ZMAG+N2rXXBrZyAUVHDGkCg8XMJg3kPYmEZgrl8woiQWbSKh
         nmMR2xLDudD6Js9Xv6FiFugNVUnAoes4bVBkYwLAWJlEoEQJ9MTUyBrigihKJk7Q5OF6
         pW/Z6pWzYoxgWsGgZpsJTrS068RSJ1yHtPSWLICYYIJ7V5Ozov5wb5+cH8ahPC6mZUab
         uMFxC6RmGEMq6Gqp+fl59jLcNW0UXM7N4Oynkam5frnH3Ol5hdwUXX80rLHKMrWE+ff+
         b6oTsATSAPpAsMuOCtjhUX7M1+/Oiwaa/HvdD3/+nRsnsuXzR5VjtbjdKC1Vr1JNiEuO
         lqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681906895; x=1684498895;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ikj7vNEeHwYqr2Sk7V2uWjly1AUS+w1dHEa9aKVsIKM=;
        b=BfhKoyxX0ZL9dQ/0W4XJDUnh6WDqw2vRT+xEkAh8520wHjgEtG8JzFuFWZ/+hJxLW4
         RJmCvdDpNbTtFq1/pdLTyrSHlV7lq8NDR70W1kpAtMkQf7WS1ajVfxePtwTWYsKwD313
         +Cvd315atX526zmBdxSvgXy4ehP03DYu3VAqMk9X6den7XiKHye4bIhugI7KPEwnCJqR
         jnvynCkEOLAtBN4r5Vk6SNiurvB2GaMj9VuzwveD+ibAlB7pajeXvxoSjlwFRGEOwR9h
         MLR3x+/nvcyA03TI+ctKWioujnHqC3CMePxvpEyEcV57f/9QSASVtB3JXtYiq6J+RlfG
         fzwQ==
X-Gm-Message-State: AAQBX9d2B5bs4Z6B3WPKAZc7c0pxkCKLY0wHXYg2BBw70+CEYQPsbfMH
	yBWgVugcIHno7HQ3drzJIB41ropruq4=
X-Google-Smtp-Source: AKy350bBzkE95kos0q33LINUgkdtibn6mLbBpYxYOmoVIVcQa18X2jgahr1RB6ARihB/OGEiyt7aTw==
X-Received: by 2002:a17:906:dc1:b0:94a:474a:4dd5 with SMTP id p1-20020a1709060dc100b0094a474a4dd5mr14037623eji.9.1681906895099;
        Wed, 19 Apr 2023 05:21:35 -0700 (PDT)
Received: from localhost (p200300e41f053a00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f05:3a00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id mm14-20020a170906cc4e00b0094f507aa0e9sm5208323ejb.19.2023.04.19.05.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 05:21:34 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Guillaume Ranquet <granquet@baylibre.com>,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jonathan Hunter <jonathanh@nvidia.com>
Subject: [PATCH] phy: mediatek: Avoid floating point constants
Date: Wed, 19 Apr 2023 14:21:31 +0200
Message-Id: <20230419122131.2167122-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_052139_964080_8A9668C3 
X-CRM114-Status: GOOD (  13.11  )
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

RnJvbTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4KCldoZW4gYnVpbGRpbmcg
d2l0aCBvbGQgdmVyc2lvbnMgb2YgR0NDICg2LjMgaW4gdGhpcyBjYXNlKSwgdGhlIGNvbXBpbGVy
CnN0dW1ibGVzIG92ZXIgdGhlIGZsb2F0aW5nIHBvaW50IGNvbnN0YW50cyBpbiB0aGlzIGRyaXZl
cjoKCglkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmM6IEluIGZ1bmN0
aW9uIOKAmG10a19oZG1pX3BsbF9wcmVwYXJl4oCZOgoJZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5
LW10ay1oZG1pLW10ODE5NS5jOjMzMToyMzogZXJyb3I6IOKAmC1tZ2VuZXJhbC1yZWdzLW9ubHni
gJkgaXMgaW5jb21wYXRpYmxlIHdpdGggZmxvYXRpbmctcG9pbnQgY29kZQoJICB9IGVsc2UgaWYg
KHBpeGVsX2NsayA+PSA3NC4xNzUgKiBNRUdBICYmIHBpeGVsX2NsayA8PSAzMDAgKiBNRUdBKSB7
CgoJZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jOjM2MToxMjogZXJy
b3I6IOKAmC1tZ2VuZXJhbC1yZWdzLW9ubHnigJkgaXMgaW5jb21wYXRpYmxlIHdpdGggZmxvYXRp
bmctcG9pbnQgY29kZQoJIHN0YXRpYyBpbnQgbXRrX2hkbWlfcGxsX3ByZXBhcmUoc3RydWN0IGNs
a19odyAqaHcpCgkJICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+Cglkcml2ZXJzL3BoeS9tZWRpYXRl
ay9waHktbXRrLWhkbWktbXQ4MTk1LmM6MzYxOjEyOiBlcnJvcjog4oCYLW1nZW5lcmFsLXJlZ3Mt
b25seeKAmSBpcyBpbmNvbXBhdGlibGUgd2l0aCBmbG9hdGluZy1wb2ludCBjb2RlCgpGaXggdGhp
cyBieSBzd2l0Y2hpbmcgdG8gdGhlIEtJTE8gbWFjcm8gaW5zdGVhZCBhbmQgbXVsdGlwbHlpbmcg
dGhlCmNvbnN0YW50cyBieSAxMDAwIHRvIGdldCByaWQgb2YgdGhlIGZsb2F0aW5nIHBvaW50LgoK
Rml4ZXM6IDQ1ODEwZDQ4NmJiNCAoInBoeTogbWVkaWF0ZWs6IGFkZCBzdXBwb3J0IGZvciBwaHkt
bXRrLWhkbWktbXQ4MTk1IikKUmVwb3J0ZWQtYnk6IEpvbmF0aGFuIEh1bnRlciA8am9uYXRoYW5o
QG52aWRpYS5jb20+ClNpZ25lZC1vZmYtYnk6IFRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRp
YS5jb20+Ci0tLQogZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jIHwg
OCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1
LmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMKaW5kZXggYWJm
YzA3N2ZiMGE4Li5iMTBhZjI2Y2FkMmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L21lZGlhdGVr
L3BoeS1tdGstaGRtaS1tdDgxOTUuYworKysgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRr
LWhkbWktbXQ4MTk1LmMKQEAgLTIzOSw5ICsyMzksOSBAQCBzdGF0aWMgaW50IG10a19oZG1pX3Bs
bF9jYWxjKHN0cnVjdCBtdGtfaGRtaV9waHkgKmhkbWlfcGh5LCBzdHJ1Y3QgY2xrX2h3ICpodywK
IAkJdHhwb3NkaXYgPSA4OwogCWVsc2UgaWYgKHRtZHNfY2xrID49IDU0ICogTUVHQSAmJiB0bWRz
X2NsayA8IDE0OC4zNSAqIE1FR0EpCiAJCXR4cG9zZGl2ID0gNDsKLQllbHNlIGlmICh0bWRzX2Ns
ayA+PSAxNDguMzUgKiBNRUdBICYmIHRtZHNfY2xrIDwgMjk2LjcgKiBNRUdBKQorCWVsc2UgaWYg
KHRtZHNfY2xrID49IDE0ODM1MCAqIEtJTE8gJiYgdG1kc19jbGsgPCAyOTY3MDAgKiBLSUxPKQog
CQl0eHBvc2RpdiA9IDI7Ci0JZWxzZSBpZiAodG1kc19jbGsgPj0gMjk2LjcgKiBNRUdBICYmIHRt
ZHNfY2xrIDw9IDU5NCAqIE1FR0EpCisJZWxzZSBpZiAodG1kc19jbGsgPj0gMjk2NzAwICogS0lM
TyAmJiB0bWRzX2NsayA8PSA1OTQgKiBNRUdBKQogCQl0eHBvc2RpdiA9IDE7CiAJZWxzZQogCQly
ZXR1cm4gLUVJTlZBTDsKQEAgLTMyOCwxMiArMzI4LDEyIEBAIHN0YXRpYyBpbnQgbXRrX2hkbWlf
cGxsX2Rydl9zZXR0aW5nKHN0cnVjdCBjbGtfaHcgKmh3KQogCQljbGtfY2hhbm5lbF9iaWFzID0g
MHgzNDsgLyogMjBtQSAqLwogCQlpbXBlZGFuY2VfZW4gPSAweGY7CiAJCWltcGVkYW5jZSA9IDB4
MzY7IC8qIDEwMG9obSAqLwotCX0gZWxzZSBpZiAocGl4ZWxfY2xrID49IDc0LjE3NSAqIE1FR0Eg
JiYgcGl4ZWxfY2xrIDw9IDMwMCAqIE1FR0EpIHsKKwl9IGVsc2UgaWYgKHBpeGVsX2NsayA+PSA3
NDE3NSAqIEtJTE8gJiYgcGl4ZWxfY2xrIDw9IDMwMCAqIE1FR0EpIHsKIAkJZGF0YV9jaGFubmVs
X2JpYXMgPSAweDM0OyAvKiAyMG1BICovCiAJCWNsa19jaGFubmVsX2JpYXMgPSAweDJjOyAvKiAx
Nm1BICovCiAJCWltcGVkYW5jZV9lbiA9IDB4ZjsKIAkJaW1wZWRhbmNlID0gMHgzNjsgLyogMTAw
b2htICovCi0JfSBlbHNlIGlmIChwaXhlbF9jbGsgPj0gMjcgKiBNRUdBICYmIHBpeGVsX2NsayA8
IDc0LjE3NSAqIE1FR0EpIHsKKwl9IGVsc2UgaWYgKHBpeGVsX2NsayA+PSAyNyAqIE1FR0EgJiYg
cGl4ZWxfY2xrIDwgNzQxNzUgKiBLSUxPKSB7CiAJCWRhdGFfY2hhbm5lbF9iaWFzID0gMHgxNDsg
LyogMTBtQSAqLwogCQljbGtfY2hhbm5lbF9iaWFzID0gMHgxNDsgLyogMTBtQSAqLwogCQlpbXBl
ZGFuY2VfZW4gPSAweDA7Ci0tIAoyLjQwLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

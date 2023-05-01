Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83786C77B73
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 02:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r7Jz8zc57WMXfeH/9WE+a2j6NasjlOyWx6ETLtCCTWE=; b=sc7/cLePPVBqQl
	WhX2b+i70B7VZoc9O/aQ+1vZ4uOVxH5WP9XFAX2cOlUO3ok1B/1yBg+QlJlBZbyJt8MxWFba1f2v4
	l6uzseYaa3OJgAq2QlM+3wyAIApqZU22pRnV8Ntq86fgpCmws2CSfi7mcdYPnmRE9ANQdFbRA4Qb2
	QI4P8R+06kZlnSWifPRRYGk+ADf4WCY1zbjZr6EnP0U7UsINErDlZDwB2YeljKXCydqDWPPBNaiGh
	iXSikJ1IWyPRmREwNGCe6tPL/E6gxqCDxxhAwd/n/RY7OkrYtocFPRHx1lJOIsYOdUveRniCvCwpe
	9lSjbJuoKNOUND3IT0kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptJjC-00F44D-0V;
	Mon, 01 May 2023 02:57:26 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptJj9-00F43B-29
	for linux-phy@lists.infradead.org;
	Mon, 01 May 2023 02:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682909841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=T0ZkpApH9Uyl/XYPLTJH+Oty+sLxkUjSVHrKn2yb7ns=;
	b=COMFe4VyR+AuULFo/o/q2buVnJhO4ROuY+OSpvRJG+l1tyl0yoR6QRGzekUmaGsQq+wDbd
	4vE75NjXq2NQBpnikoBwEKNOOtl6ylpNY3Vrt9irvHMA/VNvEXpf7pPexQ8MQZLjq1ZMKm
	2TqZozQklLeGITZtBETZqc2DmRix5bo=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-634-D0xkPCE-MQWMqyawFqe0Vg-1; Sun, 30 Apr 2023 22:57:20 -0400
X-MC-Unique: D0xkPCE-MQWMqyawFqe0Vg-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-5ef8c84cae4so33650506d6.1
        for <linux-phy@lists.infradead.org>; Sun, 30 Apr 2023 19:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682909840; x=1685501840;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T0ZkpApH9Uyl/XYPLTJH+Oty+sLxkUjSVHrKn2yb7ns=;
        b=gQUwcHmx+R+iYthCYEpWmOfm1a/IrqqlIYmC5Rf73LBqqPcZEOzHnImybu+4hQ2OLq
         frukrggXrDdW8FUdZRTxaATsc5Sh3tWSL3Dh4PwSe4QZ/NzlXmUwn2oyGDlvpiwjRnfw
         3dkgLzFmakH8BhPDINv7FN18b6yzONi5JbtLEkD/++/AZCZDoaXhOEJKBqMpQtveFtbW
         6rmv0P49+craEGQVv8eAg/Q3ZeeWVPicRdt5A4ZfJNAyKMXdC7q8SuLfcwe4Qb0T9zy0
         IELfqizKW6FAYTMBVtrh3jV2bw5c273osGKEdA9nIXftsONGl3mR5uA0QQ/BETPAvFmm
         ic5A==
X-Gm-Message-State: AC+VfDyiAHpanlJacxa9UfarOoxzgonRJWDIjl2BfOD/3UfjoUbhkvcD
	llgQourmXDIbwlhVhYQuCEp1MSfouX/zyGhCWiRE92NsHgEBafaU4jx86S3rZvKjYvyjUOEwZKI
	qy8coeVuJFLSfP2/KIRap32Jn1g==
X-Received: by 2002:a05:6214:c82:b0:60e:98be:8694 with SMTP id r2-20020a0562140c8200b0060e98be8694mr16050595qvr.46.1682909839909;
        Sun, 30 Apr 2023 19:57:19 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4/ljLsU87nCmXWBl5vPSzg7xYiesizXksCYmzOcSH/wrxt2VTaDcOJnMVYcKodfsqf+KRBQA==
X-Received: by 2002:a05:6214:c82:b0:60e:98be:8694 with SMTP id r2-20020a0562140c8200b0060e98be8694mr16050578qvr.46.1682909839687;
        Sun, 30 Apr 2023 19:57:19 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id i7-20020a056214030700b005eedb5cebd1sm8307482qvu.130.2023.04.30.19.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Apr 2023 19:57:19 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] phy: mediatek: rework the floating point comparisons to fixed point
Date: Sun, 30 Apr 2023 22:57:16 -0400
Message-Id: <20230501025716.2905609-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230430_195723_792386_8AECF013 
X-CRM114-Status: GOOD (  10.97  )
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

Z2NjIG9uIGFhcmNoNjQgcmVwb3J0cwpkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWkt
bXQ4MTk1LmM6IEluIGZ1bmN0aW9uIOKAmG10a19oZG1pX3BsbF9zZXRfcmF0ZeKAmToKZHJpdmVy
cy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jOjI0MDo1MjogZXJyb3I6IOKAmC1t
Z2VuZXJhbC1yZWdzLW9ubHnigJkKICBpcyBpbmNvbXBhdGlibGUgd2l0aCB0aGUgdXNlIG9mIGZs
b2F0aW5nLXBvaW50IHR5cGVzCiAgMjQwIHwgICAgICAgICBlbHNlIGlmICh0bWRzX2NsayA+PSA1
NCAqIE1FR0EgJiYgdG1kc19jbGsgPCAxNDguMzUgKiBNRUdBKQoKRmxvYXRpbmcgcG9pbnQgc2hv
dWxkIG5vdCBiZSB1c2VkLCBzbyByZXdvcmsgdGhlIGZsb2F0aW5nIHBvaW50IGNvbXBhcmlzb25z
CnRvIGZpeGVkIHBvaW50LgoKU2lnbmVkLW9mZi1ieTogVG9tIFJpeCA8dHJpeEByZWRoYXQuY29t
PgotLS0KIGRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYyB8IDEwICsr
KysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5j
IGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCmluZGV4IGFiZmMw
NzdmYjBhOC4uYzk1MDFhM2Q5MGE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9w
aHktbXRrLWhkbWktbXQ4MTk1LmMKKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1o
ZG1pLW10ODE5NS5jCkBAIC0yMzcsMTEgKzIzNywxMSBAQCBzdGF0aWMgaW50IG10a19oZG1pX3Bs
bF9jYWxjKHN0cnVjdCBtdGtfaGRtaV9waHkgKmhkbWlfcGh5LCBzdHJ1Y3QgY2xrX2h3ICpodywK
IAkgKi8KIAlpZiAodG1kc19jbGsgPCA1NCAqIE1FR0EpCiAJCXR4cG9zZGl2ID0gODsKLQllbHNl
IGlmICh0bWRzX2NsayA+PSA1NCAqIE1FR0EgJiYgdG1kc19jbGsgPCAxNDguMzUgKiBNRUdBKQor
CWVsc2UgaWYgKHRtZHNfY2xrID49IDU0ICogTUVHQSAmJiAodG1kc19jbGsgKiAxMDApIDwgMTQ4
MzUgKiBNRUdBKQogCQl0eHBvc2RpdiA9IDQ7Ci0JZWxzZSBpZiAodG1kc19jbGsgPj0gMTQ4LjM1
ICogTUVHQSAmJiB0bWRzX2NsayA8IDI5Ni43ICogTUVHQSkKKwllbHNlIGlmICgodG1kc19jbGsg
KiAxMDApID49IDE0ODM1ICogTUVHQSAmJiAodG1kc19jbGsgKiAxMCkgPCAyOTY3ICogTUVHQSkK
IAkJdHhwb3NkaXYgPSAyOwotCWVsc2UgaWYgKHRtZHNfY2xrID49IDI5Ni43ICogTUVHQSAmJiB0
bWRzX2NsayA8PSA1OTQgKiBNRUdBKQorCWVsc2UgaWYgKCh0bWRzX2NsayAqIDEwKSA+PSAyOTY3
ICogTUVHQSAmJiB0bWRzX2NsayA8PSA1OTQgKiBNRUdBKQogCQl0eHBvc2RpdiA9IDE7CiAJZWxz
ZQogCQlyZXR1cm4gLUVJTlZBTDsKQEAgLTMyOCwxMiArMzI4LDEyIEBAIHN0YXRpYyBpbnQgbXRr
X2hkbWlfcGxsX2Rydl9zZXR0aW5nKHN0cnVjdCBjbGtfaHcgKmh3KQogCQljbGtfY2hhbm5lbF9i
aWFzID0gMHgzNDsgLyogMjBtQSAqLwogCQlpbXBlZGFuY2VfZW4gPSAweGY7CiAJCWltcGVkYW5j
ZSA9IDB4MzY7IC8qIDEwMG9obSAqLwotCX0gZWxzZSBpZiAocGl4ZWxfY2xrID49IDc0LjE3NSAq
IE1FR0EgJiYgcGl4ZWxfY2xrIDw9IDMwMCAqIE1FR0EpIHsKKwl9IGVsc2UgaWYgKChwaXhlbF9j
bGsgKiAxMDAwKSA+PSA3NDE3NSAqIE1FR0EgJiYgcGl4ZWxfY2xrIDw9IDMwMCAqIE1FR0EpIHsK
IAkJZGF0YV9jaGFubmVsX2JpYXMgPSAweDM0OyAvKiAyMG1BICovCiAJCWNsa19jaGFubmVsX2Jp
YXMgPSAweDJjOyAvKiAxNm1BICovCiAJCWltcGVkYW5jZV9lbiA9IDB4ZjsKIAkJaW1wZWRhbmNl
ID0gMHgzNjsgLyogMTAwb2htICovCi0JfSBlbHNlIGlmIChwaXhlbF9jbGsgPj0gMjcgKiBNRUdB
ICYmIHBpeGVsX2NsayA8IDc0LjE3NSAqIE1FR0EpIHsKKwl9IGVsc2UgaWYgKHBpeGVsX2NsayA+
PSAyNyAqIE1FR0EgJiYgKHBpeGVsX2NsayAqIDEwMDApIDwgNzQxNzUgKiBNRUdBKSB7CiAJCWRh
dGFfY2hhbm5lbF9iaWFzID0gMHgxNDsgLyogMTBtQSAqLwogCQljbGtfY2hhbm5lbF9iaWFzID0g
MHgxNDsgLyogMTBtQSAqLwogCQlpbXBlZGFuY2VfZW4gPSAweDA7Ci0tIAoyLjI3LjAKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

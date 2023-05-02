Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CD85C77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 14:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3xo9YA4RBvyPbM6/gDeObPV5oWGxFlISif9nRgiZDbU=; b=hRIMAeuKoof+UH
	GFrefAsWXFlOsgzPIZdZO/rwNdeGTQAze7HzIdneH3fWn1xytVctwVN5kxsdiAQjskwQees5rF5kk
	iqZYo3P1I7pg4CWdHSOmRZ0AA4lrmN1+JpOQmoDQey/Z5HRUVlpx3hyYY9jA7DpgtlC84nhuS1lPt
	EHN6Ej+IlPA3V0Ta67fss88IOGMC4sMkady3Maw9kL36CcR9z3RSe8soWlBqosGK5gTtdXVjkGo1z
	PutbE01ee859/kABuN+gzxVOcBoHgdH6Dy/FQPtx7quqo63rH5uwfggsLsLrDOtB9FN/GwZ5cB8kK
	XNKT+qHMdLlyAnzzFpGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptrKt-001rfF-0O;
	Tue, 02 May 2023 14:50:35 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptrKp-001rdn-2J
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 14:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683039030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XhmeR7C2zfghm/IL/as+Y+pN51ISJ3AaRZIBkHirVVA=;
	b=MW9c6QbT+K2SwEofhsFBvoyIAlkomDWVsoltZmbc38ZxDHjdkV+UEp5pz5ICp3KAtWa7wS
	5yOT7rLiqGBQcBljPsxt3a5TLNSOfRsQnCfDP/0AkLATU4pjksZs/Y8negXCJVp4JZA2T/
	OnIY9pKdKyxWJSdW5oLEaJPXG+3eOC0=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-445-s0NEXZosNqmCGmFm4dxBKw-1; Tue, 02 May 2023 10:50:28 -0400
X-MC-Unique: s0NEXZosNqmCGmFm4dxBKw-1
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-3f0aa5fef57so20914521cf.3
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 07:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683039027; x=1685631027;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XhmeR7C2zfghm/IL/as+Y+pN51ISJ3AaRZIBkHirVVA=;
        b=gb6isNnnZHdie5us76Dxo0P0wux04YfcXJNIZ2MFepNzQwuYW5dA2fK3amjrDwmGxp
         qWhJpMSF6eUQ9sTMMj9LYExekvh03Aa6/3+Za7A3n2s5yAl7fDxUlGVKWB5c2YQNA2CI
         j+aIbY2sZ2lTJjm080SRreTOo7iIwNct0aoqKTlPEz8xBuVb6rdL3KEhINcEhpZSEgwf
         RdfltYFbAZ6CL1O38QBS3OthRqg+cxR1hO4MblU4kfuld0f3RhDJzakmFm+ANWDd6P+x
         9YKHbc8r04wE1CpQ/NIuN9FJxEXUbhXeKW92bo2XUUB/axG+tw4BgSB99VglZQKVFF27
         SHeg==
X-Gm-Message-State: AC+VfDzecZuDfa4SPlJqC+iCmEwfXIP7lCeLQWrQpbQzw620F6oNazHc
	wtn+JsCISIvZKxbNYJRlxMyrUld9j6Zc6ZqXMOH34zkj2n7uBtOpF7I1EOZAAS51ioVReOJ9Jyi
	1L5F+064R4ktD1hRIgcBoAToltw==
X-Received: by 2002:a05:622a:143:b0:3ea:bec4:ef57 with SMTP id v3-20020a05622a014300b003eabec4ef57mr28954476qtw.13.1683039027454;
        Tue, 02 May 2023 07:50:27 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4dHp9unnIVk0+Doy1XuqLSB0Po7DZSJ94Ylm3eZ5tLIvbR2wMADu2J7HkOiAWMy91uB3Mwgg==
X-Received: by 2002:a05:622a:143:b0:3ea:bec4:ef57 with SMTP id v3-20020a05622a014300b003eabec4ef57mr28954428qtw.13.1683039027172;
        Tue, 02 May 2023 07:50:27 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id g7-20020ac81247000000b003ef3bbd242asm10343812qtj.32.2023.05.02.07.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 May 2023 07:50:26 -0700 (PDT)
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
Subject: [PATCH v2] phy: mediatek: rework the floating point comparisons to fixed point
Date: Tue,  2 May 2023 10:50:05 -0400
Message-Id: <20230502145005.2927101-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_075031_847789_51B7349F 
X-CRM114-Status: GOOD (  11.60  )
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
PgotLS0KdjI6IHNpbGVuY2Ugcm9ib3QgYnkgY2FzdGluZyB0eXBlcyB0byB1NjQKCi0tLQpkcml2
ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMgfCAxMCArKysrKy0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYyBiL2RyaXZlcnMv
cGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUuYwppbmRleCBhYmZjMDc3ZmIwYTguLjA5
M2M0ZDFkYTU1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1p
LW10ODE5NS5jCisrKyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUu
YwpAQCAtMjM3LDExICsyMzcsMTEgQEAgc3RhdGljIGludCBtdGtfaGRtaV9wbGxfY2FsYyhzdHJ1
Y3QgbXRrX2hkbWlfcGh5ICpoZG1pX3BoeSwgc3RydWN0IGNsa19odyAqaHcsCiAJICovCiAJaWYg
KHRtZHNfY2xrIDwgNTQgKiBNRUdBKQogCQl0eHBvc2RpdiA9IDg7Ci0JZWxzZSBpZiAodG1kc19j
bGsgPj0gNTQgKiBNRUdBICYmIHRtZHNfY2xrIDwgMTQ4LjM1ICogTUVHQSkKKwllbHNlIGlmICh0
bWRzX2NsayA+PSA1NCAqIE1FR0EgJiYgKHRtZHNfY2xrICogMTAwKSA8IDE0ODM1ICogTUVHQSkK
IAkJdHhwb3NkaXYgPSA0OwotCWVsc2UgaWYgKHRtZHNfY2xrID49IDE0OC4zNSAqIE1FR0EgJiYg
dG1kc19jbGsgPCAyOTYuNyAqIE1FR0EpCisJZWxzZSBpZiAoKHRtZHNfY2xrICogMTAwKSA+PSAx
NDgzNSAqIE1FR0EgJiYgKHRtZHNfY2xrICogMTApIDwgMjk2NyAqIE1FR0EpCiAJCXR4cG9zZGl2
ID0gMjsKLQllbHNlIGlmICh0bWRzX2NsayA+PSAyOTYuNyAqIE1FR0EgJiYgdG1kc19jbGsgPD0g
NTk0ICogTUVHQSkKKwllbHNlIGlmICgodG1kc19jbGsgKiAxMCkgPj0gMjk2NyAqIE1FR0EgJiYg
dG1kc19jbGsgPD0gNTk0ICogTUVHQSkKIAkJdHhwb3NkaXYgPSAxOwogCWVsc2UKIAkJcmV0dXJu
IC1FSU5WQUw7CkBAIC0zMjgsMTIgKzMyOCwxMiBAQCBzdGF0aWMgaW50IG10a19oZG1pX3BsbF9k
cnZfc2V0dGluZyhzdHJ1Y3QgY2xrX2h3ICpodykKIAkJY2xrX2NoYW5uZWxfYmlhcyA9IDB4MzQ7
IC8qIDIwbUEgKi8KIAkJaW1wZWRhbmNlX2VuID0gMHhmOwogCQlpbXBlZGFuY2UgPSAweDM2OyAv
KiAxMDBvaG0gKi8KLQl9IGVsc2UgaWYgKHBpeGVsX2NsayA+PSA3NC4xNzUgKiBNRUdBICYmIHBp
eGVsX2NsayA8PSAzMDAgKiBNRUdBKSB7CisJfSBlbHNlIGlmICgoKHU2NClwaXhlbF9jbGsgKiAx
MDAwKSA+PSA3NDE3NSAqIE1FR0EgJiYgcGl4ZWxfY2xrIDw9IDMwMCAqIE1FR0EpIHsKIAkJZGF0
YV9jaGFubmVsX2JpYXMgPSAweDM0OyAvKiAyMG1BICovCiAJCWNsa19jaGFubmVsX2JpYXMgPSAw
eDJjOyAvKiAxNm1BICovCiAJCWltcGVkYW5jZV9lbiA9IDB4ZjsKIAkJaW1wZWRhbmNlID0gMHgz
NjsgLyogMTAwb2htICovCi0JfSBlbHNlIGlmIChwaXhlbF9jbGsgPj0gMjcgKiBNRUdBICYmIHBp
eGVsX2NsayA8IDc0LjE3NSAqIE1FR0EpIHsKKwl9IGVsc2UgaWYgKHBpeGVsX2NsayA+PSAyNyAq
IE1FR0EgJiYgKCh1NjQpcGl4ZWxfY2xrICogMTAwMCkgPCA3NDE3NSAqIE1FR0EpIHsKIAkJZGF0
YV9jaGFubmVsX2JpYXMgPSAweDE0OyAvKiAxMG1BICovCiAJCWNsa19jaGFubmVsX2JpYXMgPSAw
eDE0OyAvKiAxMG1BICovCiAJCWltcGVkYW5jZV9lbiA9IDB4MDsKLS0gCjIuMjcuMAoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

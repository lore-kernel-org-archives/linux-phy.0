Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA67BD0BB61
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:References:
	Mime-Version:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=40/UnIWeLTa0TAoUnvMWcwUGsrAyDJptNdjU386k0w0=; b=3B3QdJ+p/pjBAKbt9EhqajCgiK
	IRW1YLcVWB/MPh8pBOnLYsjmKfGgLekjAzRrrbIYp4Qx1xNTCV54DlDJk91H/DNtlEl/kzqnbvvJn
	KrRAhMmsx94DK6tvf9OF9fIw+AiG6k2wRIc9MZvEhPaxlmSQ8ymxFLqCrxGdJqlbvXd3d3Dn+swNb
	0qg8bS0q2qWWgqCdy6pCKJEEWjzOhkzzqfN1Hc3Udkd7KFXhTJPt+yRDFN6Js2+HejJ9WdPqyvkMT
	w5P+h8i6t7wd+JIPcrvd9NwWXDYImREQOW1B3Afdow3w24r9OqcmOl1rJmO18GOm9xtBAlQ2gTVpC
	jeE5/5Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3r89-0000000Gstn-2jpT;
	Thu, 24 Oct 2024 06:15:33 +0000
Received: from mail-yw1-x1149.google.com ([2607:f8b0:4864:20::1149])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3r6b-0000000GsRc-2amq
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 06:13:59 +0000
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-6e3705b2883so11402387b3.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Oct 2024 23:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729750436; x=1730355236; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ULy+zyN1BivKyLwzuPRCl/8UJCnpTGDPYrNtb9eDcL4=;
        b=S5iA2AnUVrc0O90c8bMEmAoqaAOjPdur9H2qrQVSoQPNOjbEexy5sCUCwqc4eTOhpe
         ZPFy+svQphhU7lltTDVlvc4HvNm0eidlgMKQ4ZAct7ZctrPEuWQmZZBYRf4yYtXwlcVD
         LdQMCkMY7lJdn0Rbc2AS+hD9mA8TEodr0VZJgqru62zChy1s2Fez42w1A8Tt8mEZElmr
         00Exta0e/vWfsdejyxKdiKHi56O4056WRN6E35SveeXlOpt0j14n2bdYpyaGnw8abDJm
         ykppa4LlGcGdd3J2Wt8do63Q9hwHTv2hnNrjcbU5hHshsGaJzQMWfKz2kIDfcQ3+gu5y
         HeWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729750436; x=1730355236;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ULy+zyN1BivKyLwzuPRCl/8UJCnpTGDPYrNtb9eDcL4=;
        b=Y6r+XY5SZT1sJqsPGbqF9LzlxitKlpARLpLpLF404u8WSnHPWbyKvURSD5e6cSbs6K
         AA35dPIXjJC/g6XMblZuSHzuHGMHHem/XB9H796upnTtVNKh8vmZ/gZoh4KwuumqsKGj
         p/Q+pW81B9pnezCsG3NnBzOsdhUO2MHa0Rshk5v3/XI0L5EzrP2kP5tdBmZxnU9exxfr
         je0EEmzFsC8Y3RVJenxJPQV9rEaemwGgTg/5cTcmwdtESDWhv0zte7R0rSzC886P+/3W
         17OoF+Z5gSgNGt5esFqt1LrCNVXaQ3qOiJfqolgXv7jz+zw7DkuzICbM+xxTgGlw5cDQ
         0glw==
X-Forwarded-Encrypted: i=1; AJvYcCU3ymNt1UG5Jyagq5Vo5hdtr8ahIuM9bNzpr5Uz5j1SLudPE1bfcYV5v8LbSaljFPEoTs2qXouO3X4=@lists.infradead.org
X-Gm-Message-State: AOJu0YydrJyK1mPP7lgvR4ozy4qW/3jqSC9S9rzWYhFMNe/eS9tsKUMS
	3dZESI1rJVc8uJLLLlebXQnHJ5JslwWzDJ/iG8mgxKWhKs+8D3eNnDM5z+Px03/JMW7Xo/cN9xe
	fNdipfH8xjicnJw==
X-Google-Smtp-Source: AGHT+IHCEMkQ2RfyYdNtjaLmn7Q1IV6vv3d2IoDuURVXiH0KtdFNDJTv0BNk9TxANKxuJUTxCoodn7NIA1qQz7g=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:965e:f81d:c9fb:b352])
 (user=saravanak job=sendgmr) by 2002:a05:690c:6811:b0:6e3:19d7:382a with SMTP
 id 00721157ae682-6e85813d7f5mr589267b3.1.1729750435897; Wed, 23 Oct 2024
 23:13:55 -0700 (PDT)
Date: Wed, 23 Oct 2024 23:13:42 -0700
In-Reply-To: <20241024061347.1771063-1-saravanak@google.com>
Message-Id: <20241024061347.1771063-2-saravanak@google.com>
Mime-Version: 1.0
References: <20241024061347.1771063-1-saravanak@google.com>
X-Mailer: git-send-email 2.47.0.105.g07ac214952-goog
Subject: [PATCH 1/3] drm: display: Set fwnode for aux bus devices
From: Saravana Kannan <saravanak@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Saravana Kannan <saravanak@google.com>, 
	"=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?=" <nfraprado@collabora.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_231357_684243_01B05953 
X-CRM114-Status: GOOD (  11.17  )
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

Zndub2RlIG5lZWRzIHRvIGJlIHNldCBmb3IgYSBkZXZpY2UgZm9yIGZ3X2RldmxpbmsgdG8gYmUg
YWJsZSB0bwp0cmFjay9lbmZvcmNlIGl0cyBkZXBlbmRlbmNpZXMgY29ycmVjdGx5LiBXaXRob3V0
IHRoaXMsIHlvdSdsbCBzZWUgZXJyb3IKbWVzc2FnZXMgbGlrZSB0aGlzIHdoZW4gdGhlIHN1cHBs
aWVyIGhhcyBwcm9iZWQgYW5kIHRyaWVzIHRvIG1ha2Ugc3VyZQphbGwgaXRzIGZ3bm9kZSBjb25z
dW1lcnMgYXJlIGxpbmtlZCB0byBpdCB1c2luZyBkZXZpY2UgbGlua3M6CgptZWRpYXRlay1kcm0t
ZHAgMWM1MDAwMDAuZWRwLXR4OiBGYWlsZWQgdG8gY3JlYXRlIGRldmljZSBsaW5rICgweDE4MCkg
d2l0aCBiYWNrbGlnaHQtbGNkMAoKUmVwb3J0ZWQtYnk6ICJOw61jb2xhcyBGLiBSLiBBLiBQcmFk
byIgPG5mcmFwcmFkb0Bjb2xsYWJvcmEuY29tPgpDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC83Yjk5NTk0Ny00NTQwLTRiMTctODcyZS1lMTA3YWRjYTQ1OThAbm90YXBpYW5vLwpU
ZXN0ZWQtYnk6ICJOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyIgPG5mcmFwcmFkb0Bjb2xsYWJvcmEu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5ha0Bnb29nbGUuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF9hdXhfYnVzLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfYXV4X2J1cy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2Rpc3BsYXkvZHJtX2RwX2F1eF9idXMuYwppbmRleCBkODEwNTI5ZWJmYjYuLmVjN2VhYzZi
NTk1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX2F1eF9idXMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfYXV4X2J1cy5jCkBAIC0yOTIs
NyArMjkyLDcgQEAgaW50IG9mX2RwX2F1eF9wb3B1bGF0ZV9idXMoc3RydWN0IGRybV9kcF9hdXgg
KmF1eCwKIAlhdXhfZXAtPmRldi5wYXJlbnQgPSBhdXgtPmRldjsKIAlhdXhfZXAtPmRldi5idXMg
PSAmZHBfYXV4X2J1c190eXBlOwogCWF1eF9lcC0+ZGV2LnR5cGUgPSAmZHBfYXV4X2RldmljZV90
eXBlX3R5cGU7Ci0JYXV4X2VwLT5kZXYub2Zfbm9kZSA9IG9mX25vZGVfZ2V0KG5wKTsKKwlkZXZp
Y2Vfc2V0X25vZGUoJmF1eF9lcC0+ZGV2LCBvZl9md25vZGVfaGFuZGxlKG9mX25vZGVfZ2V0KG5w
KSkpOwogCWRldl9zZXRfbmFtZSgmYXV4X2VwLT5kZXYsICJhdXgtJXMiLCBkZXZfbmFtZShhdXgt
PmRldikpOwogCiAJcmV0ID0gZGV2aWNlX3JlZ2lzdGVyKCZhdXhfZXAtPmRldik7Ci0tIAoyLjQ3
LjAuMTA1LmcwN2FjMjE0OTUyLWdvb2cKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK

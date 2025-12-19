Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB25D78798
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 16:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYthwBGA6RAoIBoQT9BZIs3QpM1ProWF7g7Hr/77324=; b=cdcyuEt94my5vU
	8xBAza1Z7p8avV5tyiVOng4gYITDmnfx/5a//rrOd9utrn5s4PWN3SZmIDvjeCDVsmsRhqpdlWgh6
	vTR2yevNXjeXvAnJ9Luw/n/wKnjrTBMab54VQKPdCaM4cxp6IVqQYGhr6wEeojWDsMhuGyOWAxyVm
	dEdWyYWrseOSSwATAoQ+PcpRnxHCYIxP9b4HukcCzh/0GaV8ng25htz3dW3W/GZVizMvU3be7/OYZ
	mNzqXBaLqoo8KTA3SsMe2/NiPPTWIHcMSDI10ki6tc82/u5W58kai3SvIKjeFElobsX9zGvcrEqzv
	QzK5KyTjgx/Hd94RUaxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWd5r-0000000AcuR-2wsy;
	Fri, 19 Dec 2025 16:12:39 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWd5p-0000000Acu8-3Txe
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 16:12:38 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-59445ee9738so1431392e87.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 08:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766160755; x=1766765555; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sv6Zjml6kSRghdP/4iiqcZXG6aBPgbn7q1pI3KNaqeE=;
        b=GhakW5ztAO/+nJZiQgzfF4PmKJBoGJAq4t18VmuhQP5gMwKKze9cUqObg93vLlvIRA
         TM3ByVu0ycGs/Hp1GAsroPPeDcOZrCCLQohBliX9VYQNpatCQfrFbLvJIA7GbUwV6Fqf
         RMFlpTTTq3IPqUykb31Qc9ydl0f6YyRAk0JWtMeVpkUgWYdQ1AmdBPyKVviQdJvcs272
         6tuzFehcPQhhGgP1B9nLpw72zeAlQE+wV08N9Hdq9/zqJvthW9T6D+4CV9ZkVlUYauCT
         mRcyAKxgVpnh8jyecEvS58SgXeRF2RRHK02JZij+4oYOe6Uu14JBAC55bEyWQsBp96DG
         7R0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766160755; x=1766765555;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sv6Zjml6kSRghdP/4iiqcZXG6aBPgbn7q1pI3KNaqeE=;
        b=bhJ7xqTwN90+xx/vyEZ7r9BWMR8rtta+n7bIoSNunNJJqARhw7hnXZJqexcqoDgq2V
         M9kNcQEeyHd8ZmZK5AClRZ7ZDJ7X7cBD96kjn+Q5N4JwdIl5bG8KXNk6gqDgtBTmZAg8
         +p9dHkZ8IkTfCAmVy1awnYINpLqfMDI1H1g3+85KhQrE6G6wQn850T3KlmQ6So8UqBZ4
         8mfS/INT3PnGzbI82U6JWgRyeE7Zx06EKM6FaTj14T/CcFH/qz4NBHNdQH05MlkZ7jxo
         zWXCnjT4RV7XePrqvpR/J5fWkdPZzGgyzBMvGlZeQ0BiQmuF2a5MLvnPV4OPGlMmbL6j
         UQug==
X-Forwarded-Encrypted: i=1; AJvYcCVzjD3BJcpL/ce81YrpjiDHeQZqml4ymqBkPt9cMmaCW++0o4kprR1RQMURbyHB65Pmm14qWaJxoP4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdICSxW32gpxJ6Mt43W782Rxr5M0qHwSv0Lk1VcIa8hVcktDE7
	09AV+iR3HkRURUQTOmDHeAHEtfqaPwbLHklzlC2DlMXjtIaTQ/g9sXNu/jsCT12WBlduENy6MY0
	Agjph6DblBM45jhtrycogMfReKEm/0Z8=
X-Gm-Gg: AY/fxX4uaBH0GEIKmgL9E/byxl3zpl88J36Kvqwz3ga4J0Fem81FhrRYBsBfglv3c2i
	cLko1fqYkSCaff82dNnnbmIo7JXqamm8xvPRy5gWmK4HXfu4AIp6D39cXkM2pk5Hvs/UAjKYXIU
	oiU3K6ATPjTe+6dqhIFxcj+v04lHTYKEUFb2MOMYrj4GmqkXn2VmkC8tWVoyD4FVYSj7pktT2uP
	mI1ga4GgeZMorPc+KEk/ZBTUEulSaNPOQuaHgPQBbG9PCNuUTgM7kQe2X5Cogj6Eat8EXRZUQOR
	cZ4BnXewiKJj392G7zxewwYSS2g=
X-Google-Smtp-Source: AGHT+IFobDJ/xmNIuBnlV91Afp+RQyO63zft36FqmBHS7NFSzYyCFJVjtvVsSpBZ4BEgaErptY3zx2JPBw13nUd7wwI=
X-Received: by 2002:a05:6512:398b:b0:594:3a5f:4e36 with SMTP id
 2adb3069b0e04-59a17d67ccbmr953433e87.40.1766160754637; Fri, 19 Dec 2025
 08:12:34 -0800 (PST)
MIME-Version: 1.0
References: <20251219160912.561431-1-stefano.r@variscite.com>
In-Reply-To: <20251219160912.561431-1-stefano.r@variscite.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 19 Dec 2025 13:12:23 -0300
X-Gm-Features: AQt7F2ri9IGuEvUhYZkj_tNSXd8nfyjSIkQj2CvvMpfIf6M6ZYJ8GQ_PcDG9l-E
Message-ID: <CAOMZO5BojiZe=KdNAtgc0iVhGENdbd4s-PKk8RPGo31KBkOnLw@mail.gmail.com>
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: Clear the PCS_TX_SWING_FULL field
 before using it
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, j.zink@pengutronix.de, 
	linux-kernel@vger.kernel.org, xu.yang_2@nxp.com, jun.li@nxp.com, 
	Frank.Li@nxp.com, haibo.chen@nxp.com, linux-phy@lists.infradead.org, 
	imx@lists.linux.dev, Stefano Radaelli <stefano.r@variscite.com>, 
	Leonid Segal <leonids@variscite.com>, Pierluigi Passaro <pierluigi.p@variscite.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_081237_876880_A966DD89 
X-CRM114-Status: UNSURE (   7.25  )
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

T24gRnJpLCBEZWMgMTksIDIwMjUgYXQgMTowOeKAr1BNIFN0ZWZhbm8gUmFkYWVsbGkKPHN0ZWZh
bm8ucmFkYWVsbGkyMUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gQ2xlYXIgdGhlIFBDU19UWF9TV0lO
R19GVUxMIGZpZWxkIG1hc2sgYmVmb3JlIHNldHRpbmcgdGhlIG5ldyB2YWx1ZQo+IGluIFBIWV9D
VFJMNSByZWdpc3Rlci4gV2l0aG91dCBjbGVhcmluZyB0aGUgbWFzayBmaXJzdCwgdGhlIE9SIG9w
ZXJhdGlvbgo+IGNvdWxkIGxlYXZlIHByZXZpb3VzbHkgc2V0IGJpdHMsIHJlc3VsdGluZyBpbiBp
bmNvcnJlY3QgcmVnaXN0ZXIKPiBjb25maWd1cmF0aW9uLgo+Cj4gRml4ZXM6IDYzYzg1YWQwY2Q4
MSAoInBoeTogZnNsLWlteDhtcC11c2I6IGFkZCBzdXBwb3J0IGZvciBwaHkgdHVuaW5nIikKPiBT
dWdnZXN0ZWQtYnk6IExlb25pZCBTZWdhbCA8bGVvbmlkc0B2YXJpc2NpdGUuY29tPgo+IEFja2Vk
LWJ5OiBQaWVybHVpZ2kgUGFzc2FybyA8cGllcmx1aWdpLnBAdmFyaXNjaXRlLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBTdGVmYW5vIFJhZGFlbGxpIDxzdGVmYW5vLnJAdmFyaXNjaXRlLmNvbT4KPiBS
ZXZpZXdlZC1ieTogWHUgWWFuZyA8eHUueWFuZ18yQG54cC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEZy
YW5rIExpIDxGcmFuay5MaUBueHAuY29tPgoKUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZl
c3RldmFtQGdtYWlsLmNvbT4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=

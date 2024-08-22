Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0A8BC5320E
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 10:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJdVmOg29csho2CXZeX90wWMscfFTkc5KslubAMC18w=; b=4IcT6iDmcyR4cW
	t/Wdvt5ZLWATz6es+hXv1H/EAZAv/14qiAJG6h6d5LkgoV+BiH2KMSSVFDD9U7PA21vOTlz4Vour+
	kvN0hiufkea3W1QS7+UnyY2a3IzWSgfKdsH3TlwyWyc9x6aq+KBdCwiWAz62XTSdGrjQbYuWk9AuA
	d9r8g1sXyZCCivBnvH3WBgJCn6J2kpXS+1HC77sHqKbkbo4wkyBV/HietwPXRhhg/NVnKb/XWe89z
	KVJqNYQW1BFecnHKHSx5ZG7aztJMWvl/zsGGLhxiTU9rFes+s8zh0jYobCOoD4MPAuviCb6uJDprr
	jbxDfbdNb8ZAOrVJZD/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5Qr-0000000CUHD-10Xj;
	Thu, 22 Aug 2024 10:52:45 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5Qo-0000000CUGE-2c85
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 10:52:43 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2f40a1a2bf1so3209081fa.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 03:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724323960; x=1724928760; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DxWPUFOwZqCM5Kx8t3Y3dLzbYEJ4j8qYd64u0k3UgAI=;
        b=YKgdgMHc+V1LXoahiXJ78rvy0TGSk8x7Fbya8phMWbqem77m1fy89g8Y4QH8wNEasK
         YPcc6ev0f59sZRPsJ/kf+xZyEbT7A9A7P6lj1LlFmjxFPvC5uoT8rZmfdeJHLlMTsgat
         7tu7cLPYvqoYeL/6Ej8NLWybDFja+DKuwrfJVn5NVQ3ghg0IaZ+mulQ/qemllxEqYKbZ
         JRnnBhZyxTdcZNz/Z1oPagBDyDKtdeoK562p24a+zl5w8kTO0noVw/9slttLAuAyECw2
         d92MWffQMvh+7/4TP+z6WGimji5NEx4m68hopQYozQO3HWu8fN3rRcUW0F/RBvBFr9xQ
         zd5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724323960; x=1724928760;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DxWPUFOwZqCM5Kx8t3Y3dLzbYEJ4j8qYd64u0k3UgAI=;
        b=WsF9qdiVHMbERJg/xJjLFS8SzjUZ4iJgSDnfe8y3gc3kZWmmq17h5m8HIX+N4HtxO+
         Jsh0bdsxyk22oDS/qVlyMGP1HYLwAZl36RHcx+bBcuurhpj0btP1qSWMD295SzI0yABV
         xZTs4OJGLw7W76j5+yhq/WBj0NIICy3bEPA2x+0ENE8yHRfYS0Ono6V9gnnO487G259l
         ow91HLubuFY11rLJWDQl51C9TKbmrkq+VgVfc7oSkjueOXejr9udwBJYihJE7Xb7He34
         sFBytmE1aoQTLTxuo//RrdknUmc9xV8JI0dmF24KJiV1t96hyn6kDOlpUinPai50xqpX
         Ht0w==
X-Forwarded-Encrypted: i=1; AJvYcCUxDpcYWUD83PtTRaxd4IJWRdXhFTz6+iBwOEJxZY3rdVCP5aVf2Et5tsvx5qFYqNOcLJhiFyfm4x8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHd/kRvL79HhPO3kXs1cXB0tn69rcnx0V8aTmei/5UU3DiPerQ
	Axyaai9iIhLRtwrHflg+jQFxHOSFPUsU9VfB01Rpfnb2JGKmjSgO
X-Google-Smtp-Source: AGHT+IFL5+T2KdDfE/H1idX5/DG/etl+eJ+S4fyildCMF78SV1DFt2sCcYtkbFL82gnNt1ofEt9fpA==
X-Received: by 2002:a2e:8450:0:b0:2f3:cbc3:b093 with SMTP id 38308e7fff4ca-2f3f8b57b41mr27764931fa.43.1724323959744;
        Thu, 22 Aug 2024 03:52:39 -0700 (PDT)
Received: from ilordash-vm.mshome.net (95-26-8-211.broadband.corbina.ru. [95.26.8.211])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f4047a4f59sm1886261fa.13.2024.08.22.03.52.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 03:52:39 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ilya Orazov <ilordash02@gmail.com>
Subject: [PATCH v4 0/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip
Date: Thu, 22 Aug 2024 13:52:37 +0300
Message-Id: <20240822105238.213019-1-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_035242_682186_BC9196D1 
X-CRM114-Status: UNSURE (   8.44  )
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

SGksCgpJbiB0aGlzIHY0LCBJIGFkZHJlc3NlZCBLcnp5c3p0b2YncyBjb21tZW50cyBhbmQgaW5j
b3Jwb3JhdGVkIHRoZSBjaGFuZ2Vsb2cKYW5kIHRhZyByZWNlaXZlZCBmcm9tIENvbm9yLgoKdjM6
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA4MDgxOTE3MzUuMTQ4MzU3Mi0xLWlsb3Jk
YXNoMDJAZ21haWwuY29tLwoKdjI6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA4MDcx
ODAyMTAuMTMzNDcyNC0xLWlsb3JkYXNoMDJAZ21haWwuY29tLwoKdjE6Cmh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNDA3MTgyMTAzMjIuMzc0OTItMS1pbG9yZGFzaDAyQGdtYWlsLmNvbS8K
CkZpcnN0IG9mIGFsbCwgSSB3YW50IHRvIGFwb2xvZ2l6ZSBmb3IgdGhlIHNpbGx5IG1pc3Rha2Vz
IGluIG15IHBhdGNoCnByZXBhcmF0aW9uLiBJIHdhc27igJl0IGF3YXJlIG9mIHRoZSBuZWVkIHRv
IGluY2x1ZGUgdGhlIGNoYW5nZWxvZyBhbmQKcmVjZWl2ZWQgdGFncyBpbiBuZXcgdmVyc2lvbnMu
IFRoaXMgaXMgbXkgZmlyc3QgcGF0Y2ggaW4gdGhlIGtlcm5lbCwKYW5kIEkgYW0gdmVyeSBleGNp
dGVkIGFib3V0IGl0LiBJIGFtIGVhZ2VyIHRvIGdhaW4gZXhwZXJpZW5jZSBpbiB3b3JraW5nCm9u
IEZPU1MuCgpJIGdyZWF0bHkgYXBwcmVjaWF0ZSBhbGwgeW91ciBmZWVkYmFjaywgYW5kIEkgd2ls
bCBkbyBteSBiZXN0IHRvIGFkZHJlc3MKYW5kIGZpeCBhbnkgaXNzdWVzLgoKSWx5YSBPcmF6b3Yg
KDEpOgogIGR0LWJpbmRpbmdzOiBwaHk6IHRpLHRjYW4xMDR4LWNhbjogRG9jdW1lbnQgTWljcm9j
aGlwIEFUQTY1NjEKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGksdGNhbjEwNHgtY2Fu
LnlhbWwgICAgfCAxMyArKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQoKCmJhc2UtY29tbWl0OiA4NzJjZjI4YjhkZjljNWMzYTFlNzFh
ODhlZTc1MGRmN2MyNTEzOTcxCi0tIAoyLjM0LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

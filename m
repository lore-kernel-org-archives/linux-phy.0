Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1401BC35FE7
	for <linux-phy@archiver.kernel.org>; Sun, 15 Sep 2024 14:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJdVmOg29csho2CXZeX90wWMscfFTkc5KslubAMC18w=; b=hIEOoRuKnUtjdF
	KdPLVl34MnUR4yKYDmuIiVuLmc79zM/qMS7iWy0xZj3bJtsDNPVPXYySzlLB6FVuZ9RQrkoDRLKC+
	Xy7axlokiNPOQZJjfRPAtDUVtbcF39UCK0xhy1JH9kIcBF0tCSQmp+GSZoTXpeidCpVDVThmNc5d1
	ARUoIkkleUd/8E5PWbOOPpm47MgIzH47EffvWgOHCGLfsmWuwMLgtH0DTf26PUr81YZb5d2+S2Mmq
	viYgstsQxA9d6PoMOdUjNXJDZH7yqfuohudkL7uAQ2LMnVJmOwi+1M9FMi5isB3PRwp4bUG19/aCL
	ZUHtVvObFfbfnGlJuXYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spq2H-00000002BTw-2gfn;
	Sun, 15 Sep 2024 14:15:33 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spq2E-00000002BT2-0aob
	for linux-phy@lists.infradead.org;
	Sun, 15 Sep 2024 14:15:32 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5365a9574b6so3430034e87.1
        for <linux-phy@lists.infradead.org>; Sun, 15 Sep 2024 07:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726409727; x=1727014527; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DxWPUFOwZqCM5Kx8t3Y3dLzbYEJ4j8qYd64u0k3UgAI=;
        b=D3DcSRvjK25mg7NMWimqMnIae8OYjNBReEjqDQQb1aG/Vrf8LbKB/+hCANwiisrTv8
         8HBjuhY6eU6UiK4n2kmbHhK89TygSmDgNzkctwQgdtu8EAjG58qGphJ5CXMKtIQO94DM
         SsU6sjYNy9/165GqKqYI0/eobuF0kNoYQ62bxKspUkINkaKsQ+83Tu8NyvC5CAekkNuY
         BfWLHMet7vI7QS6/zo120feyp6C6a/OgnGd94wLfMkksGoRwDhIpCIHEX07a93ctP/52
         6PtM6minrHFf67Yewx4fZknLdO5c3Ah/7CW0oqHyiN2VeczhSDg8V/FcE/309ETwEd+S
         bV6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726409727; x=1727014527;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DxWPUFOwZqCM5Kx8t3Y3dLzbYEJ4j8qYd64u0k3UgAI=;
        b=Avad676KIqHGBgm/sQJz+6uKK+WFdQT76fPspcHOPCUSPwkhx6GLoEkiz22giRLSa5
         j+5IxuEhp49UaAq7jpRUrLge6ydAzWH6EL1xD11jt3StlU+CbaSPARbsqpBsDjKlMla9
         jwQCh5tJH7qOwkEqVvLWpijaCk5m3EAt5vxjGtLXWU7AThNa3/SvQ2FB8yRgnZG9pEB2
         AXRJfBKofjlbw1/XLE1cfjSiuAJrq9JRzoUtU4qGA+VR511UFm4io5Zz3Nwii4BzF5zj
         +Ycg1qQsb59T6Nj7uB6vNO39BJg/Jz1GKjSy/PN4Ii68YCvNDMq7TlGdXs5JHJwLXu5Q
         Pe7g==
X-Forwarded-Encrypted: i=1; AJvYcCU6UEWsSTgly4VfjQBDslksk2eYH1CRyzxgWcGo+5YA8VVBatp9EjJot9gk9z12R/2ZVtiQX/kDkuk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwwIyc5+TTLg6m5EQoVRsd8/Q95PrATRIIU2SbfLvn4MEKV9a9P
	I91e/d0jRBewXBNEE2tbEKu0wz0Eq8tz+ZMMJnCOzv/TWgQelS13
X-Google-Smtp-Source: AGHT+IEJ+njp+cA+9w7K2cq2tMEHrF7kJ65e7YQB/kgbpx48q1bhw0G7hdbCaMTdy8mggLDHBQM9mA==
X-Received: by 2002:a05:6512:238b:b0:52e:932d:88ab with SMTP id 2adb3069b0e04-5367fee25a8mr6036044e87.23.1726409726478;
        Sun, 15 Sep 2024 07:15:26 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-5-228-117-203.ip.moscow.rt.ru. [5.228.117.203])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870968d1sm565255e87.175.2024.09.15.07.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Sep 2024 07:15:26 -0700 (PDT)
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
Date: Sun, 15 Sep 2024 17:13:39 +0300
Message-Id: <20240915141340.2802953-1-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_071530_200205_C2421930 
X-CRM114-Status: UNSURE (   8.39  )
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

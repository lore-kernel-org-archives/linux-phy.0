Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9208ECD6E5D
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 05:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmKwH+fIp0sb7jH2L02KoyN4Hh2V1clGTUlnvZDypL0=; b=3gJfawpRp8ofS8
	/060Y6hr4HirAqS1eG8jgzUz9JeAuOpAH6y6X4bZ2Eru0sHN05WWy8MmmLQ/0uWaREWWDG4vqESk2
	LBPt8lbFa+3TWGvI18ngG9pJpep4EWF8Xu2R/Kif1qkyRqEKguW2PY8JoyGxFuATlcbHTx8h2uVoC
	UzBrTJKHsAIYqPcE15mgY8hgWSODsk8gLybIsur+hwrk3lu+W0OBjTw7zh2JNqLP/e4ns/dt/F1NT
	fBI746rx+JQ25Z5cCdEzY0arXPWaTdv6e7mc8Y8v3G3nFVkVZNnnsb3FsKIjbG3VeF7CsThJUZioC
	6xt4GAHHcixPNHLzRv2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVNC8-000000006qI-18el;
	Fri, 05 Jun 2026 05:34:12 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVNC6-000000006px-0wNe
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 05:34:11 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-460166910e6so793049f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 22:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780637648; x=1781242448; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sjXzyZnNDhRfEEmts9pWPcuuMg/BpffNpvk3G1fwCko=;
        b=FgTIq1sToAuenDzszn43ufqXPXsXwIDFsC39SLzxEM5vH3+04LtDqUa6rxRPSo3GHX
         iFTW8aonUIk2gYCN/NV7jiuopzd4ud1uCrcN54P5Gu/IkwWfzeqMdyE6yOmUUgmTWZ8r
         A7iAQJgra7HvE1gfguUvv9lDjZ8tW8qCiK8siYtSzT5dujlPCgeT+Nc8MBw+avFatHM+
         hQTeWLKgclVHGbOtf1lK5OGu9Vw/pWqMLsJFOKM4qBj9MNGhAo/8e6bNIjpNPc1sp8xL
         leC+BPe1E8l8a/XznSX/ihU/AMWUr/F44DJcpe1KjJHAY5cnVlThXjgKcuazwPe0qYZg
         y5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780637648; x=1781242448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sjXzyZnNDhRfEEmts9pWPcuuMg/BpffNpvk3G1fwCko=;
        b=U0wIbkA6ueAPOLnWkA/28NEYafo9EwE4E4WK75Lo616hnQXmBVpfWLfNM/PZ2M2/qp
         FucSSTaQZkeBPvs2yzrO1Y9tLC99DNYYtZIji4McHREf64FBchx787a8uC3ctKwH9oeK
         Dpzq5+5/kBex6cb02A7G2YADmFhiC1AiR7oGtkg46W1DKfzLN+J2WhqTzW0JN9iihakI
         69I4qCeQyeYN1AcxXnEtbQGRNHZygSer/H+b3AQmDdIU6GOHq9VwyAPcTi8MlpeN12aU
         Xibgnem/0vTdfmXtCpGbA4ZIuLeeXqal672RIZOSSpzB2Ep2SOGz12pCIaduEyNv11jK
         Yz5A==
X-Forwarded-Encrypted: i=1; AFNElJ9HVOi6ndUUTfoXdhAdsx7x0Kz9tPejIyb/9+xv/ZvooEhuAs/SBofvZKRf6dT0cJ3MtzlDYFrUupU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyT2+e2dPNcWHS45x4U8rv42kmIEUCjQnotrbbUbBGiMn6y287e
	J52xsvGHfUICwv4k+fIrRpSGkxhlDm/6Of4Nl9/IKuyQhgDaq4JRf8/I
X-Gm-Gg: Acq92OFem8mD7LfAuSZE8/HJNzawsAgGViaNipWvCxB5BoHRmVOGOJ/COLXYvSmoWR2
	s/KVWOHqyH/BjqZJygduIvp3u5DzZIpcLDtzEDejUgNywB7n3X8TX2IXr7MfMZebAs5vBNP54AH
	/cD7oLTQNOhDFOldAF7ZDrRr8SyFp59SWpgT5I52XwXciNqy/bXenB+E3zNO4hO1I4In2QXYPb+
	rlcTlJ1zeu11tqjMPkzmIndQovIZq51NRbOyXufR2QOX6gRQz329h49a2MXJ0CPmGZRzF4EA/iC
	acBIzvs7ITaaXppPVdQc9+sEoPLe/0dLTq0KPTc/RQgdhvUAcgMKLIssjZTAb0s8T/tFH3kd6IP
	BE/hvh8DL1EUz9DGWvfPNgQNgxDV9B02gofD/XbtEB9ESIaP89aUvzTkpMI5/IpUAzjfEEmdOi4
	EXeVr04Ffxl8H7jncMA0VrRAENkAesbi/3V+gFRW9x2EgKDYRGsUOkR+GjXZvAD1EwyL8N4Y4Za
	rnVo9F4kH8aH4jPFUxDi1vlB3Xv
X-Received: by 2002:a5d:4e09:0:b0:45e:ea68:523e with SMTP id ffacd0b85a97d-460304fe066mr2555737f8f.21.1780637648182;
        Thu, 04 Jun 2026 22:34:08 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f35fd33sm24383821f8f.35.2026.06.04.22.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 22:34:07 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: maxime.chevallier@bootlin.com,
	netdev@vger.kernel.org
Cc: kuba@kernel.org,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bjorn@mork.no,
	olek2@wp.pl,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: Re: [PATCH net-next] net: phy: mdio-i2c: defer RollBall bridge probe to PHY discovery
Date: Fri,  5 Jun 2026 07:34:05 +0200
Message-ID: <20260605053405.2019-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <19e947e08e51987b@gmail.com>
References: <19e947e08e51987b@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_223410_292919_611F958E 
X-CRM114-Status: UNSURE (   8.11  )
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

SGkgTWF4aW1lLAoKVGhhbmsgeW91IGZvciB0aGUgcXVlc3Rpb24g4oCUIGl0IHJldmVhbGVkIGEg
Z2FwIGluIHRoZSBjb21taXQgbWVzc2FnZS4KClRoZSByZWdyZXNzaW9uIHR1cm5zIG91dCB0byBh
ZmZlY3QgYm90aCBib290LWluc2VydGVkIGFuZCBob3RwbHVnZ2VkCmdlbnVpbmUgUm9sbEJhbGwg
bW9kdWxlcy4gQWxla3NhbmRlciBCYWprb3dza2kgY29uZmlybWVkIHRoYXQgaGlzIEZMWVBSTwpT
RlAtMTBHVC1DUy0zME0gKHdpdGggQXF1YW50aWEgQVFSMTEzQykgaXMgYnJva2VuIGV2ZW4gd2hl
biBob3RwbHVnZ2VkIOKAlAp0aGUgUEhZIGlzIG5vIGxvbmdlciBkZXRlY3RlZCBhZnRlciA4ZmUx
MjU4OTJmNDAuCgpTbyB0aGUgcm9vdCBjYXVzZSBpcyBub3QgYm9vdCB2cy4gaG90cGx1ZyBzcGVj
aWZpY2FsbHk6IHNmcF9zbV9hZGRfbWRpb19idXMoKQppbiBTRlBfU19JTklUIGdpdmVzIHRoZSBi
cmlkZ2Ugb25seSBhIDIwMCBtcyB3aW5kb3csIHdoaWNoIGlzIGluc3VmZmljaWVudCBvbgpoYXJk
d2FyZSB3aGVyZSBicmlkZ2UgaW5pdGlhbGl6YXRpb24gdGFrZXMgbG9uZ2VyLCByZWdhcmRsZXNz
IG9mIGluc2VydGlvbgp0aW1pbmcuCgpKYW4gSG9mZm1hbm4gYWxzbyBjb3JyZWN0bHkgcG9pbnRl
ZCBvdXQgdGhhdCB0aGUgY29tbWl0IG1lc3NhZ2Ugd2FzIHdyb25nCmFib3V0IHRoZSBzdGF0ZTog
dGhlIHByb2JlIHJ1bnMgaW4gU0ZQX1NfSU5JVCAod2hpY2ggZm9sbG93cyBTRlBfU19XQUlUKSwK
bm90ICJiZWZvcmUgaW5pdGlhbGl6YXRpb24gZGVsYXlzLiIKCnYyIHdpdGggYm90aCBjb3JyZWN0
aW9ucyBpcyBhdDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjYwNjA1MDUzMDU2
LjE5NzctMS1wZXRyLndvem5pYWtAZ21haWwuY29tLwoKVGhhbmtzLApQZXRyCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

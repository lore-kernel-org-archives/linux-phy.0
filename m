Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E567C44512
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 21:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/M1ZmQ7MMeiHNJaCeLqiB3ta1zxOFF1BhAi+VfRNfY=; b=5E1WzKQQOeJtLu
	8/EbtOmOm+susCmaVEOaMDQUfK4EapI+PKNQgiK6YOsIVwKBs4/9bHXiDbkW2muJ3mWkYU0Aeq5Mx
	eBKsgzLVCNfXiUalYfNaWtXE3gkASKNnmcdEIV/41eZaI34JqfCjXgOCNF/zqMpPlVZ6hKoh1ogIS
	xxj6rA/MI3rgcZuD2VkgNJwz7mgSKaCDq181GYi+3CtHdwjO17sHt15DpeE7Lz6+oBMwe1Fgj4ImR
	UFMxGlr3lcgzi+UYZ+5xOp4XNskxZeB30Z1MWf/IMhXK4V3tHiU9pMbXqMCoNKja/KrK1tMMFThs1
	H6QT0Fi8P64IT/pKKiwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkTkP-00000000e5B-04F9;
	Thu, 16 Jul 2026 21:36:01 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkTkK-00000000e1D-1Dsz
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 21:35:58 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-493b779003fso30720675e9.3
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 14:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784237754; x=1784842554; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1Cbd7RpSigAze/UtmT1+z+tOpgI5gcPixymoRHCvScg=;
        b=pIyMCoHu3ADEsXFJDzvanofKZNoysMyM2y9+ckKByq5cVeIlO4VHbWw6fYN1s8Wyoz
         pEYnw1Zo1K9b9Q1YUYuARZjssZ/c3a+BJ0aOtbnD8DCN6Qvs7ZNe/HEpZfer5u2bU4HY
         eQbHQ6O4OuOKVpuO+dqgrHcFJQrLxmaW8TXbUhADv1qhxNMV0cBIceJJl8iN9qJlUpZU
         B2UdzNVL2dy3FdxOlc7Qprg2F7k6CAnrjBQ2mWRdp8andY5lns+GF31O/Sx0mQi0X0Ie
         u5eGHNeBXa3KNS+z0E5Fnl7/3SuDJ33qzqa76YKlG2C/vrbiKsmy4a2QbFBsQH+ow4KM
         2fqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784237754; x=1784842554;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1Cbd7RpSigAze/UtmT1+z+tOpgI5gcPixymoRHCvScg=;
        b=QysNwmubNfCJG0EyMajqCKfRrg0l/k0LTl82NGmZYWQUpaAJYYrBpIlbml0TdzVA9E
         LGN72srFNqHkmMlQlkw4TGDMyT8w+2fNCvlwvxpmPMqM+5oQ7QJPBaLvyBVKDgMQmWo/
         iLf05rfMluaCBQ/kiU6nH4JbYaeUE5xRkxO0myVrsUpAD9zqJjan0Vlha0kJvIC9w9h6
         pkZ6yzTOmnbdWcO2b6w+Z25bixYdaD7nrbEqXoBUCY/Mwt/qAila0wStusWBpHf6fLCU
         sLIzJiCv9fyby8M68YTWqON+u3T9Ues9SOkwQv/7kAAq6xA56Cl5mGNMxrVq+xDMWSlU
         rRNA==
X-Forwarded-Encrypted: i=1; AHgh+RqmfH/dtDYIdLuUbDCq9ygjh40KmFqiclg0b0dBjHYXAJXxNL8iyeNndD/sHWgu7TWzw1eKBQI0Mhs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRIPO5I3aEixaWUC41f+EeZjsJ+KlrCzcJ+q166X5/CpTg026t
	mREMFh+bkt7S71TbkN4QD4UeSk7KCaD7iLSIKo3/sX7pklkaMfiWPy99
X-Gm-Gg: AfdE7cnXrrd0paNUyny2Y2oAm6yTXqUWbvoPvZMBA30pEhkQaCA8jU4+kDeqCU3Dqft
	C5vanW+lwW59s6ZUw5T+vS1klz16FGu3k6VH0/BcdNucWr+JGA8rUs8ePkktUUHZBz3dKmNOarG
	BfNzjHD+owDlEcW7DFqD7qXVukpo1YYwggaNFzIZ8Fr4p6qmD4vPmJoAdm02evEWetDuNFG/N8+
	QkWQN2PsK0yfw3EJfAZgHdmCFCWli0TCw+uOnA9pijeeGT0wP9eVIMe6f3urbF8Dq4tgsbvxPUM
	VYvxUJ585Ts90p08nlpSkqVe69lPRt4VAzY/tDVkbX1UbV1QlTlv4DiN6UZcJxQopHWJi2bRP4+
	ZicnwE7FW61lfbb7WgNNu2mhBsncBxCorYTXV/ttY1kztX6N2WAaPqbQkeznz82C8qVe5+cphJ7
	TFN84RhrfVfePg
X-Received: by 2002:a05:600c:6217:b0:492:4363:e7d6 with SMTP id 5b1f17b1804b1-49538cc1510mr144373665e9.37.1784237754220;
        Thu, 16 Jul 2026 14:35:54 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.51.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f464b7f09sm27517548f8f.26.2026.07.16.14.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 14:35:53 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Fri, 17 Jul 2026 00:35:37 +0300
Subject: [PATCH v7 01/13] dt-bindings: phy: Add zx297520v3 USB phy
 documentation
MIME-Version: 1.0
Message-Id: <20260717-zx29clk-v7-1-408411cfcf36@gmail.com>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
In-Reply-To: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Russell King <linux@armlinux.org.uk>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5153;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=MWgeMQguSvX0yNa9AkilnGzLi/Gpu4RxxeyumH/X22g=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBqWU6xcWZOmOXtOLohhzgy+hM6oOkxf17Sa7bRM
 oer1RlHKaCJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCallOsRsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiKD6w/+MJmxYIyepRX+FyR6Y2BS1xstCgAxbVa
 V2LfZHa60uXTnOQjweIZny/aZvtk9oG1fmQcB29kMUwDm50sZITCqWBMWRL2E+xjVH9r55CG47a
 csbwc6VvJWAohr4URm4L+nTQarehBpqczIbo+wh0HVKczceIp7areXGL/5/eYHfNCCExjcxzvyr
 84/h3Bq82p+gHYpmtOTWvezhrV5LXVS6nG0+y0wJBOs1xLcUJj5YiQjr6PnzVDswSIYVz4gP3N3
 bOwg8Nk2+pd+Uxjdw7+AbIiR8BaaFwwRcvQx1zr/3TdU2aCn5cNzoAFd64ZjJrIW3jHrlJBRfpA
 Om0s+tWSwC2XMqxF5epTfzM5P7uo2yC2QxbCG2GmDa5kek03rFQVL36ALPJX500QQthmvGttASu
 GqOG7LEUA52ljXfs8kLRU3QL1pde2ZN4QP6kyFl4yT9+8KlF22hGWc4BV0Byk82CY9nnteMzj5Y
 NehEK9+olrStownN5eU1Y/XRUOBdsr5yjaiUlnGfB2w93dUe7GNJdPDm427SQ62gAQ2p0P2Wv3t
 dUOpqRXXJTdKaL//MCZ3rw+QPL5AegBy9YyKISXQGBoUjg50L2aH7pdLNS15x1c43zbNmwDKhYh
 oOTzG68KamAIZoheKX+RVCRcs+Xm8gO3gwdge8ZC5xHGJOIc27to=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_143556_368513_58FFAACC 
X-CRM114-Status: GOOD (  20.48  )
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

VGhpcyBiaW5kaW5nIHdpbGwgYmUgdXNlZCBhcyBhIHN1Ym5vZGUgb2YgdG9wY3JtLCB3aGljaCB3
aWxsIGJlIGFkZGVkIGluCnRoZSBuZXh0IHBhdGNoLgoKV2h5IGlzIHRoaXMgYSBjaGlsZCBub2Rl
IGFuZCBub3QgI3BoeS1jZWxscyBhZGRlZCB0byB0b3Bjcm0gaXRzZWxmLApsaWtlIGNsb2NrcyBh
bmQgcmVzZXRzIGFzIHdyaXRpbmctYmluZGluZ3MucnN0IHN1Z2dlc3RzPyBCZWNhdXNlCm9mX3Bo
eV9wcm92aWRlcl9yZWdpc3RlciBjaGVja3MgaWYgdGhlIG9mX25vZGUgdGhlIFBIWSBwcm92aWRl
ciBpcyBhZGRlZAp0byBiZWxvbmdzIHRvIHRoZSBkZXZpY2Ugb3IgaXMgYSBjaGlsZCBvZiB0aGUg
ZGV2aWNlLCBzbyBJIGNhbid0IHB1dCB0aGUKUEhZIGRyaXZlciBpbnRvIGFuIE1GRCAob3IgQVVY
KSBjaGlsZCB3aXRob3V0IGl0cyBvd24gbm9kZS4KClNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7Zz
aW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgotLS0KCkhvdyBkbyBJIGhhbmRsZSBl
eGFtcGxlcz8gSXQgd291bGQgYmUgaWRlbnRpY2FsIHRvIHRoZSBleGFtcGxlIGluCnRvcGNybS4g
VGhlIGV4YW1wbGUgbmVlZHMgdGhlIHJlc2V0IGRlZmluZXMgZnJvbSB0aGUgbmV4dCBwYXRjaCBp
bgplaXRoZXIgY2FzZS4KLS0tCiAuLi4vYmluZGluZ3MvcGh5L3p0ZSx6eDI5NzUyMHYzLXVzYi1w
aHkueWFtbCAgICAgICB8IDk2ICsrKysrKysrKysrKysrKysrKysrKysKIE1BSU5UQUlORVJTICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKwogaW5jbHVkZS9kdC1i
aW5kaW5ncy9waHkvcGh5LXp0ZS16eDI5NzUyMHYzLXVzYi5oICAgfCAxMiArKysKIDMgZmlsZXMg
Y2hhbmdlZCwgMTEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3p0ZSx6eDI5NzUyMHYzLXVzYi1waHkueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvenRlLHp4Mjk3NTIwdjMtdXNiLXBoeS55
YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uOGJhZDkzNjVkNWNj
Ci0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS96dGUsengyOTc1MjB2My11c2ItcGh5LnlhbWwKQEAgLTAsMCArMSw5NiBAQAorIyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCislWUFNTCAx
LjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvenRlLHp4Mjk3
NTIwdjMtdXNiLXBoeS55YW1sIworJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEt
c2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBaVEUgengyOTc1MjB2MyBVU0IgYW5kIEhTSUMg
UEhZCisKK21haW50YWluZXJzOgorICAtIFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdl
ckBnbWFpbC5jb20+CisKK2Rlc2NyaXB0aW9uOiB8CisgIFRoaXMgUEhZIGlzIGZvdW5kIG9uIHp4
Mjk3NTIwdjMgYm9hcmRzLiBJdCBoYXMgbm8gY29uZmlndXJhYmlsaXR5IG9uIGl0cyBvd24sCisg
IGJ1dCBpdCBkb2VzIHJlcXVpcmUgYSBjb3JyZWN0IHJlc2V0IGFuZCB3YWl0IHNlcXVlbmNlIHRv
IGluaXRpYWxpemUuIEl0IGNhbgorICBwcm92aWRlIGludGVycnVwdCBub3RpZmljYXRpb24gd2hl
biBVU0IgaXMgY29ubmVjdGVkIGFuZCBkaXNjb25uZWN0ZWQuCisKKyAgVGhlIHBoeSBpcyBhIGNv
bXBvbmVudCBvZiB0aGUgYm9hcmQncyB0b3Bjcm0gY29udHJvbGxlci4gVGhlIGhhcmR3YXJlIG5l
ZWRzIHRvCisgIGJlIGRlY2xhcmVkIGFzIGEgY2hpbGQgbm9kZSBvZiB0aGUgenRlLHp4Mjk3NTIw
djMtdG9wY3JtIG5vZGUuCisKKyAgVGhlIHJlZ2lzdGVyIHNwYWNlIGFuZCBJUlFzIGFsd2F5cyBh
Y2NvdW50IGZvciB0d28gUEhZczogT25lIFVTQiAyLjAgT1RHIHBoeQorICBhbmQgYSBIU0lDIFBI
WS4gTm90IGFsbCBib2FyZHMgaGF2ZSBib3RoLiBJZiBvbmUgaXMgbWlzc2luZywgdGhlIGNvcnJl
c3BvbmRpbmcKKyAgcmVhZHkgZmxhZyB3aWxsIG5ldmVyIGJlIHNldC4KKworICBUaGUgImluY2x1
ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS16dGUtengyOTc1MjB2My11c2IuaCIgaGVhZGVyIGNvbnRh
aW5zIHRoZQorICBkZWZpbml0aW9uIGZvciB0aGUgUEhZIGluZGljZXMuCisKK3Byb3BlcnRpZXM6
CisgIGNvbXBhdGlibGU6CisgICAgY29uc3Q6IHp0ZSx6eDI5NzUyMHYzLXVzYi1waHkKKworICBy
ZWc6CisgICAgbWF4SXRlbXM6IDEKKworICBpbnRlcnJ1cHRzOgorICAgIGl0ZW1zOgorICAgICAg
LSBkZXNjcmlwdGlvbjogSVJRIHJlcG9ydGluZyBVU0IgY29ubmVjdGlvbgorICAgICAgLSBkZXNj
cmlwdGlvbjogSVJRIHJlcG9ydGluZyBVU0IgZGlzY29ubmVjdGlvbgorICAgICAgLSBkZXNjcmlw
dGlvbjogSVJRIHJlcG9ydGluZyBIU0lDIGNvbm5lY3Rpb24KKyAgICAgIC0gZGVzY3JpcHRpb246
IElSUSByZXBvcnRpbmcgSFNJQyBkaXNjb25uZWN0aW9uCisKKyAgaW50ZXJydXB0LW5hbWVzOgor
ICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogdXNiLXVwCisgICAgICAtIGNvbnN0OiB1c2ItZG93
bgorICAgICAgLSBjb25zdDogaHNpYy11cAorICAgICAgLSBjb25zdDogaHNpYy1kb3duCisKKyAg
cmVzZXRzOgorICAgIGl0ZW1zOgorICAgICAgLSBkZXNjcmlwdGlvbjogVVNCIHBoeSByZXNldAor
ICAgICAgLSBkZXNjcmlwdGlvbjogSFNJQyBwaHkgcmVzZXQKKworICByZXNldC1uYW1lczoKKyAg
ICBpdGVtczoKKyAgICAgIC0gY29uc3Q6IHVzYgorICAgICAgLSBjb25zdDogaHNpYworCisgICIj
cGh5LWNlbGxzIjoKKyAgICBjb25zdDogMQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisg
IC0gcmVnCisgIC0gaW50ZXJydXB0cworICAtIGludGVycnVwdC1uYW1lcworICAtIHJlc2V0cwor
ICAtIHJlc2V0LW5hbWVzCisgIC0gIiNwaHktY2VsbHMiCisKK2FkZGl0aW9uYWxQcm9wZXJ0aWVz
OiBmYWxzZQorCitleGFtcGxlczoKKyAgLSB8CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lu
dGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3Mv
cGh5L3BoeS16dGUtengyOTc1MjB2My11c2IuaD4KKworICAgIHRvcGNybTogY2xvY2stY29udHJv
bGxlciB7CisgICAgICAgIGNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtdG9wY3JtIiwgInN5
c2NvbiI7CisgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OworICAgICAgICAjc2l6ZS1jZWxs
cyA9IDwwPjsKKyAgICAgICAgI3Jlc2V0LWNlbGxzID0gPDE+OworCisgICAgICAgIHVzYi1waHlA
ODQgeworICAgICAgICAgIGNvbXBhdGlibGUgPSAienRlLHp4Mjk3NTIwdjMtdXNiLXBoeSI7Cisg
ICAgICAgICAgcmVnID0gPDB4ODQ+OworICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA0
MiBJUlFfVFlQRV9FREdFX1JJU0lORz4sCisgICAgICAgICAgICA8R0lDX1NQSSA0MyBJUlFfVFlQ
RV9FREdFX1JJU0lORz4sCisgICAgICAgICAgICA8R0lDX1NQSSA0NSBJUlFfVFlQRV9FREdFX1JJ
U0lORz4sCisgICAgICAgICAgICA8R0lDX1NQSSA0NiBJUlFfVFlQRV9FREdFX1JJU0lORz47Cisg
ICAgICAgICAgaW50ZXJydXB0LW5hbWVzID0gInVzYi11cCIsICJ1c2ItZG93biIsICJoc2ljLXVw
IiwgImhzaWMtZG93biI7CisgICAgICAgICAgcmVzZXRzID0gPCZ0b3Bjcm0gMTg+LAorICAgICAg
ICAgICAgPCZ0b3Bjcm0gMjA+OworICAgICAgICAgIHJlc2V0LW5hbWVzID0gInVzYiIsICJoc2lj
IjsKKyAgICAgICAgICAjcGh5LWNlbGxzID0gPDE+OworICAgICAgICB9OworICAgIH07CmRpZmYg
LS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCmluZGV4IDg3MjljZWE1N2MzZC4uY2I1
MGMyZTNiNGVhIDEwMDY0NAotLS0gYS9NQUlOVEFJTkVSUworKysgYi9NQUlOVEFJTkVSUwpAQCAt
Mzg3OCw4ICszODc4LDEwIEBAIEw6CWxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZyAobW9kZXJhdGVkIGZvciBub24tc3Vic2NyaWJlcnMpCiBTOglPZGQgZml4ZXMKIEY6CURvY3Vt
ZW50YXRpb24vYXJjaC9hcm0venRlLwogRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS96dGUueWFtbAorRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS96dGUsengyOTc1MjB2My11c2ItcGh5LnlhbWwKIEY6CWFyY2gvYXJtL2Jvb3QvZHRzL3p0ZS8K
IEY6CWFyY2gvYXJtL21hY2gtenRlLworRjoJaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LXp0
ZS16eDI5NzUyMHYzLXVzYi5oCiAKIEFSTS9aWU5RIEFSQ0hJVEVDVFVSRQogTToJTWljaGFsIFNp
bWVrIDxtaWNoYWwuc2ltZWtAYW1kLmNvbT4KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGlu
Z3MvcGh5L3BoeS16dGUtengyOTc1MjB2My11c2IuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcGh5
L3BoeS16dGUtengyOTc1MjB2My11c2IuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAw
MDAwMDAwMDAuLjhhMGEzY2NiZGQ2MwotLS0gL2Rldi9udWxsCisrKyBiL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvcGh5L3BoeS16dGUtengyOTc1MjB2My11c2IuaApAQCAtMCwwICsxLDEyIEBACisvKiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpICov
CisvKgorICogQ29weXJpZ2h0IChDKSBTdGVmYW4gRMO2c2luZ2VyLgorICovCisKKyNpZm5kZWYg
X19EVF9CSU5ESU5HU19QSFlfVVNCX1pYMjk3NTIwVjNfSAorI2RlZmluZSBfX0RUX0JJTkRJTkdT
X1BIWV9VU0JfWlgyOTc1MjBWM19ICisKKyNkZWZpbmUgWlgyOTc1MjBWM19VU0JfUEhZCTAKKyNk
ZWZpbmUgWlgyOTc1MjBWM19IU0lDX1BIWQkxCisKKyNlbmRpZiAvKiBfX0RUX0JJTkRJTkdTX1BI
WV9VU0JfWlgyOTc1MjBWM19IICovCgotLSAKMi41NC4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B25EC44514
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 21:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h8AgvtDBgRO2URI+PpnCkN7GOaejOlZ5BsJWC83yiEs=; b=gBApszIYdvUOS8
	jGe5PG5QDyPFK9NMo8klnmmQ5iUIqsDlf7KRbdmgUk6x/eL1s5k4v4n91nKtWjlwGRQLKq422XXAB
	DgBVAKm7Cy/9Ta4kvwPdkv1tvG3arfhM/4b5qNbYOLTJo0JR4eaXJkLxJMIqubfzwEu0h2Y6JQfQW
	N+3H/5tNTVXZkB05JfQ35fGk+ZFo3bqcbNgsij5m/NWvx+6+6Hi+Q0XGvo6gWvlACcDkjQQejXmiq
	vmm5RT9AH3sj57pNWphu84HyRSGurYSfBngoXr0veoof1EX0XdVA1Xj5XjNYuwhbbX4tqDOSYBbTm
	JQglDWkgVmNVFyutWeig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkTkK-00000000e2A-2XtM;
	Thu, 16 Jul 2026 21:35:56 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkTkG-00000000e0D-2L9x
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 21:35:55 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47362928f65so6426320f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 14:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784237750; x=1784842550; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=uQEvJEB4AGM+jESVICUyrbKRk3wOsaG9/wEamJsJYaI=;
        b=h3mG0xu+vJmWutSGfAJ0Eaz198EFRWeOSr7wGwM8uEqWHcdQjfuTly5w+tc4vtWi/Y
         bIPV1Vh6hCZxQ8TsesgwJR9Q2SnDZuK32JOvP7pKZrqcfRY95O6zx8ih2+p6HtLKWbT3
         Awn4WrjonD7DTIVZFE3/mHmhvL7WScKWPF5/hAaWa8CFfxdwQYL7Hlqp4n+A5TN2Hm+C
         ceOb7roEuIJIiEbh3chHR2FkPk2pmQK+HWABk3WB4+GZC1eVsoyxcsBslf31rDe3yUTN
         iNQ/LvtsMuEurF5zWcZHPSPTPweRT7x4rGE7dX7oX78vi+AG/71fzqBr3w20rhephKNe
         vlDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784237750; x=1784842550;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uQEvJEB4AGM+jESVICUyrbKRk3wOsaG9/wEamJsJYaI=;
        b=SXAwchPnDmw4aSJPR8zAuPUuEdSbZ6dANIjp0p+L74Vr1Ny5c4OofpFXYO/MhqDPgh
         BqbvncreDNPYofnjtcp8aaZ+lL83wYgCjy7t9w2nQdX6oGOy6UG6Ckb2pv6NhC5A4HgH
         JetF+ENYq5XTqOVXJBvjdkmVSfVao7Ebbioj3CFcR8mwxoeII+d53E71dftz6INfXNQS
         llZcDndfiDSw4i8+HTjCtBwQ7F0SMaCoR/XfaC6rIK1GitKwPY6W5sy7NXtQDE+u0ZfM
         xHUY2la6bAQhArQeEF0SKpBwSX+OAJtaNbYJhwPwy9PtAbIwsK4EEtqmPXceGaPdjR9X
         yfgA==
X-Forwarded-Encrypted: i=1; AHgh+RryGQUKtSCtxKKB9DG8jhj/olaaxdlk/0HFsdTUg7O2gLYRnZTeVdLCA4QKNyL5OrQbiN2YmrFGHxA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwO+9RU1/bIwtj13DoovG4TH5OLlVEx1dpWM12ipOlAJR3Te3k6
	gfAzm0L/eM0dmCM4jouiGtkWedXpXc3NtdL8qugmcNHLW90YRBUQzClj
X-Gm-Gg: AfdE7cmK8VG9n7cwl1joGeZb2/C8OtXuZmamZMbus4LznScMUU5RzKwJJajv9IhAn4L
	LmK1V3bAnAZpSQM59fLLdLS1vU3AZNsXJpJenY/Ta87Ezjbarry/Xb6GWVxR3M6WS7sqFREtVhx
	eZ/loF0tb+wcAdYu9I/8wlsaE3/gnuNtMi82Siphn63dDBgW3JuZwaKSZHReG55m/zVjTZwly8Z
	34JuImybyZd3BMhzRF1Us8FQSoNcW963TwPmBOUlmea2fioefprOLoohmx6qdplIMBtZBG1qxpl
	5Ezbir+BESVfRNERr66nPgiPRoVqg/88pxOHynnCrARaWqHzMn0GvvkWWTjiEngGs24h0BICMS8
	wMJAa27uE759mLQHznTf/HknvQcty9EbA4En/afP3wJmmcsxMRS3dX+zZc6MFRhY9MTKxJafJOx
	SQavU3TLDjbgQJ
X-Received: by 2002:a05:6000:26c3:b0:472:8343:7f5e with SMTP id ffacd0b85a97d-47f4884879bmr15868041f8f.5.1784237750230;
        Thu, 16 Jul 2026 14:35:50 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.51.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f464b7f09sm27517548f8f.26.2026.07.16.14.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 14:35:49 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Subject: [PATCH v7 00/13] ZTE zx297520v3 clock bindings and driver
Date: Fri, 17 Jul 2026 00:35:36 +0300
Message-Id: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2XOy07DMBAF0F+pvCbIHr8yXfEfiIUfM60FbSEpU
 aHqv+OmC0dheUc+1/cqRhoKjWK7uYqBpjKW07EG/7QRaR+OO+pKrlmABCetkt3vBTB9vHdAJms
 kraBPor7+HIjLZW56fXvkgb6+a+H5cRQxjNSl0+FQzttNJPJOZ8vaqIiY2HgITNHKPhvse3YQX
 ApK3Lv2ZTyfhp955KTmsn97JtXJjlQMiZkJnX/ZHUL5eK4fzh0TLJ1qDqoDZEk5aSnZrp1eOMD
 mdHXJM1lDQdfBa2eac8o1Z+4uIJqYAQjz2tmFg745W51HZmkMGYWwdq45L6E5V532PnppuJfJL
 N3tdvsD/qAbBgICAAA=
X-Change-ID: 20260510-zx29clk-2e4d39e3128c
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5926;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=OqSvMIGXqGDRrDVMBFCV9DvkyFArR9V1QJOx9PbTKFw=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBqWU6sx909B2OK3LvHZa2W8bjRks7EvSNHQfCfb
 4VeLVRCzQuJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCallOrBsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiKc0RAAjQN2lwgYHAQBZL7rveeOP/TT6H3XslA
 SpTbp3oL3yc/OdWBz5+NpjNtdX3YGASJXrb75RUVjQpvW0iSkbQs016tI859Wv17TVlOaE4M96H
 2ZU4C7GyAfnGrqSLm2frMAOYl+hCBqeVQdpT5JTVnt8W69dUD9wYxAfToGF+0W05/8X9ruj9zAJ
 Z9YASSiz+fwGGnN1+qEAj8Gh0u6tdgteeqqfbn43p1At24SeP7EvTOxZZK6/rdGTj/++/WoksBI
 NXlUci9mhMXvjkRKqkfuK+XFolVqvigvrcwNcgPIVLdCai9OVOQW8jk+2TT9dlCCE5NUju/A4iR
 ZXkLMmnv3d8INocIaP4qSSUSvXaED5i/TS+n8wF4kwpgB52EK1c5vdJ5zn9JEUjK9TGP1OrT28Q
 ALIYwp83WCysDzCIQcvaIHD1TZfhStAuwTPVCzBOIRq3YwKtYkWbpOi/5i/ByBFjJFZn7728TS0
 F74RAYUe8z9usUpUWrPGgrg4BpomGQf2v/1DUZoG/J2WHNTVWKQwQCo3kEI6DV59IevJ75WcBYt
 TSnQTAlSrF63v7jtHRSYFk78t6tSR01XrET7sjr62vVJk/y6KjSjlwilb+lWXWjhLmA8P/Z6mcN
 Y1yUv7mClZWHNeNqbGsxRZXX2Zt2sVVO48o/157vtEuE3QmAmysA=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_143552_625827_04B5D985 
X-CRM114-Status: GOOD (  18.20  )
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

SGksCgpJIGFtIHNlbmRpbmcgdmVyc2lvbiA3IG9mIG15IHp4Mjk3NTIwdjMgY2xvY2sgcGF0Y2gu
IFRoZSBtYWluIGNoYW5nZSB2cyAKdjYgaXMgdGhlIHJldmVyc2UgZW5naW5lZXJpbmcgb2YgdGhl
IFBMTCBpbnB1dCBhbmQgZm9yd2FyZCBnYXRlcyBpbiAKdG9wKzB4MTQwIGFuZCBhY2NvcmRpbmcg
cmVkdWN0aW9uIG9mIHRoZSBpbnB1dCBjbG9ja3MgaW4gdGhlIG1hdHJpeCAKYmluZGluZy4KCkkg
dGhpbmsgdGhlIGxpc3Qgb2YgY2xvY2tzIGluIG15IGRyaXZlciBpcyBmYWlybHkgY29tcGxldGU7
IEl0IGlzIApjZXJ0YWlubHkgYSBsb3QgYmV0dGVyIHRoYW4gd2hhdCB0aGUgZG93bnN0cmVhbSBa
VEUgZHJpdmVycyBoYXZlLiBJIApkZWR1Y2VkIGEgbG90IG9mIGl0IGJ5IHRyaWFsIGFuZCBlcnJv
ci4gSSBhbSBzdXJlIHRoZXJlIGFyZSBzb21lIGNsb2NrcyAKbWlzc2luZyB0aGF0IHdpbGwgbmVl
ZCB0byBiZSBhZGRlZCB0byB0aGUgYmluZGluZyBsYXRlci4gQWZhaXUgYWRkaW5nIApjbG9ja3Mg
aXMgbm90IGFuIGlzc3VlLCBidXQgcmVtb3Zpbmcgb3IgcmVvcmRlcmluZyB0aGVtIGlzIGFuIEFC
SSBicmVhay4KClNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdl
ckBnbWFpbC5jb20+Ci0tLQpDaGFuZ2VzIGluIHY3OgoKKikgTW92ZWQgRFQgYmluZGluZ3MgYmFj
ayB0byBjbG9jay8gKEtyenlzenRvZikKKikgQWRkZWQgYSB1c2ItcGh5IGNoaWxkIG5vZGUgdG8g
dG9wIHRvIGV4cG9zZSB0aGUgVVNCIHN0YXR1cyByZWdpc3RlcgoqKSBBZGQgY2xvY2sgZ2F0ZXMg
dGhhdCBjb250cm9sIGlucHV0IG9mIFBMTCBjbG9ja3MgaW50byB0b3Bjcm0gYW5kIApmb3J3YXJk
IHRvIG1hdHJpeGNybS4gU3RyaXAgZG93biBtYXRyaXhjcm0gaW5wdXRzIGluIHRoZSBiaW5kaW5n
cyB0byB0aGUgCmtub3duIGNsb2NrcyBpbiB0aGlzIHJlZ2lzdGVyCiopIEFkZCBERFIgY2xvY2tz
IGFuZCByZXNldHMsIGFybSBhcmNoIHRpbWVyIGNsb2NrLiBUaGV5IGFyZSBtYXJrZWQgCmNyaXRp
Y2FsIGFuZCB0ZWxsIENDRiBub3QgdG8gZ2F0ZSBvZmYgdGhlIGFmb3JlbWVudGlvbmVkIGlucHV0
L2ZvcndhcmQgCmdhdGVzCiopIFJlbW92ZSBzeXNjb24gZnJvbSBtYXRyaXhjcm0gKEtyenlzenRv
ZikuIFRoZSBERFIgbWFpbGJveCBzeXN0ZW0gaXMgCm9uIGEgZGlmZmVyZW50IGNvbnRyb2xsZXIg
KHNvY19zeXMgYXQgMHgxNDAwMDApLiBaVEUncyBjb2RlIG1lcmVseSAKY29udHJvbGxlZCBjbG9j
a3MgaW4gbWF0cml4Y3JtLCB3aGljaCBkb2Vzbid0IHJlcXVpcmUgc3lzY29uIG9uIHRoaXMgCmNv
bnRyb2xsZXIuCiopIENvbnNpc3Rlbmx5IHVzZSBkb3VibGUgcXVvdGVzIGluIGJpbmRpbmdzIGFu
ZCBmdWxsIGluY2x1ZGUgcGF0aHMgCihLcnp5c3p0b2YpCgpUaGUgaW5kaXZpZHVhbCBwYXRjaGVz
IGNhbGwgb3V0IGNoYW5nZXMgaW4gbW9yZSBkZXRhaWwuCgotIExpbmsgdG8gdjY6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNjA3MDItengyOWNsay12Ni0wLTM3N2I3MDRmODBjNEBnbWFp
bC5jb20KCkNoYW5nZXMgaW4gdjY6CiopIFVzZSBNRkQgZm9yIGFsbCAzIGNvbnRyb2xsZXJzIC0g
SSBob3BlIGJvdGggQ29ub3IgYW5kIFBoaWxpcHAgd2lsbCAKYWdyZWUuIEkga2VwdCB0b3AgYW5k
IG1hdHJpeCBiaW5kaW5ncyBpbiBzb2MvenRlIGFuZCBsc3AgaW4gY2xvY2svIAp0aG91Z2guCgoq
KSBDbGVhbiB1cCBpc3N1ZXMgZm91bmQgYnkgU2FzaGlrby4gSSBwb2ludGVkIHRoZW0gb3V0IGlu
IHRoZSBpbmRpdmlkdWFsIApwYXRjaGVzLiBUaGV5IGFyZSBsb2NhbGl6ZWQgZml4ZXMgYW5kIGRv
bid0IGFmZmVjdCB0aGUgb3ZlcmFsbCBkZXNpZ24KCiopc21hbGwgY29kZSBjb25zaXN0ZW5jeTog
Q2hhbmdlZCAiengyOTc1MjB2M19sc3AiIHRvIHVzZSAiLSIgLCAicnN0IiBpbiAKZHJpdmVyIG5h
bWVzIHRvICJyZXNldCIKCkNoYW5nZXMgaW4gdjU6CiopIFVzZSBNRkQgaW5zdGVhZCBvZiBhdXgg
YnVzIGZvciB0b3AgYW5kIG1hdHJpeCBjbG9ja3MKKikgTW92ZSB0b3AgYW5kIG1hdHJpeCBiaW5k
aW5ncyB0byBzb2MvenRlCiopIEdpdmUgVVNCIFBIWSBpdHMgb3duIHJlc2V0cwoqKSBPdGhlciBs
b2NhbGl6ZWQgY2hhbmdlcyBhcmUgbm90ZWQgaW4gdGhlIGluZGl2aWR1YWwgcGF0Y2hlcwotIExp
bmsgdG8gdjQ6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjA2MTYtengyOWNsay12NC0w
LWNhOTk0YmQyMmU5ZEBnbWFpbC5jb20KCkNoYW5nZXMgaW4gdjQ6CiopIFVzZSBzeXNjb24gYW5k
IHJlZ21hcCBpbnN0ZWFkIG9mIHJhdyBJTwoqKSBNb3ZlIHJlc2V0IHRvIGl0cyBvd24gZHJpdmVy
IG9uIHRoZSBhdXggYnVzLCBidXQga2VlcCByZXNldCBhbmQgY2xrIAppbiB0aGUgc2FtZSBiaW5k
aW5nIGFzIGl0IG1hdGNoZXMgdGhlIHdheSB0aGUgaGFyZHdhcmUgd29ya3MKKikgR28gYmFjayB0
byBoYXZpbmcgbWF0cml4Y2xrIGluIGl0cyBvd24gZGV2aWNlIGJlY2F1c2Ugc3lzY29uIGRlYWxz
IApwb29ybHkgd2l0aCBtdWx0aSBpbyByZWcgZGV2aWNlcy4gTGlzdCBhbGwgUExMIG91dHB1dHMg
ZnJvbSB0b3BjbGsgYXMgCmlucHV0cyB0byBtYXRyaXhjbGsKKikgU29tZSBtb3JlIGhhcmR3YXJl
IHJlc2VhcmNoOiBGaWd1cmUgb3V0IHRoZSBwYXJlbnRzIG9mIHRoZSA0IHBvc3NpYmxlCkdQSU8g
Y2xvY2sgb3V0cHV0cyBhbmQgZGVjbGFyZSB0aGVtIGluIHRoZSBkcml2ZXIuIFRoZXkgYXJlIHVu
dXNlZCBvbiAKdGhlIGhhcmR3YXJlIEkgaGF2ZSwgYnV0IHRoZXkgc2hvdyB0aGF0IGFsbCBQTExz
IGNhbiBiZSB1c2VkLgoKLSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIw
MjYwNTI5LXp4MjljbGstdjMtMC1jN2ZlNTRlYTM4OGZAZ21haWwuY29tCgpDaGFuZ2VzIGluIHYz
OgpNb2RlbCB0b3AgYW5kIG1hdHJpeCBjbG9ja3MgYXMgb25lIGRldmljZQpBZGQgUExMIGRyaXZl
cgpGaXhlZCBhIGZldyBpc3N1ZXMgZm91bmQgYnkgU2FzaGlrbzogcmVnaXN0ZXIgbG9jaywgc29t
ZSBtaXNzaW5nIGRldm1fLCAKZXJyb3IgaGFuZGxpbmcKCnYyOiBGaXggYnVpbGQgaXNzdWVzIGlu
dHJvZHVjZWQgYnkgY2hlY2twYXRjaC5wbCBmaXhlcyB0aGF0IEkgZGlkbid0IApzcG90IGVhcmxp
ZXIuCgotLS0KU3RlZmFuIETDtnNpbmdlciAoMTMpOgogICAgICBkdC1iaW5kaW5nczogcGh5OiBB
ZGQgengyOTc1MjB2MyBVU0IgcGh5IGRvY3VtZW50YXRpb24KICAgICAgZHQtYmluZGluZ3M6IGNs
azogenRlOiBBZGQgengyOTc1MjB2MyB0b3AgY2xvY2sgYW5kIHJlc2V0IGNvbnRyb2xsZXIKICAg
ICAgZHQtYmluZGluZ3M6IGNsazogenRlOiBBZGQgengyOTc1MjB2MyBtYXRyaXggY2xvY2sgYW5k
IHJlc2V0IGNvbnRyb2xsZXIKICAgICAgZHQtYmluZGluZ3M6IGNsazogenRlOiBBZGQgengyOTc1
MjB2MyBMU1AgY2xvY2sgYW5kIHJlc2V0IGNvbnRyb2xsZXIKICAgICAgbWZkOiB6eDI5NzUyMHYz
OiBBZGQgYSBjbG9jayBhbmQgcmVzZXQgTUZEIGRyaXZlcgogICAgICBjbGs6IHp0ZTogQWRkIENs
b2NrIHJlZ2lzdHJhdGlvbiBpbmZyYXN0cnVjdHVyZQogICAgICBjbGs6IHp0ZTogQWRkIHJlZ21h
cCBiYXNlZCBjbG9ja3MKICAgICAgY2xrOiB6dGU6IEFkZCB6eCBQTEwgc3VwcG9ydCBpbmZyYXN0
cnVjdHVyZQogICAgICBjbGs6IHp0ZTogSW50cm9kdWNlIGEgZHJpdmVyIGZvciB6eDI5NzUyMHYz
IHRvcCBjbG9ja3MKICAgICAgY2xrOiB6dGU6IEludHJvZHVjZSBhIGRyaXZlciBmb3IgengyOTc1
MjB2MyBtYXRyaXggY2xvY2tzCiAgICAgIGNsazogenRlOiBJbnRyb2R1Y2UgYSBkcml2ZXIgZm9y
IHp4Mjk3NTIwdjMgTFNQIGNsb2NrcwogICAgICByZXNldDogenRlOiBBZGQgYSB6eDI5NzUyMHYz
IHJlc2V0IGRyaXZlcgogICAgICBBUk06IGR0czogenRlOiBEZWNsYXJlIHp4Mjk3NTIwdjMgQ1JN
IGRldmljZSBub2RlcwoKIC4uLi9iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My1sc3Bjcm0u
eWFtbCAgICAgIHwgIDEwMSArKwogLi4uL2JpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLW1h
dHJpeGNybS55YW1sICAgfCAgIDkxICsrCiAuLi4vYmluZGluZ3MvY2xvY2svenRlLHp4Mjk3NTIw
djMtdG9wY3JtLnlhbWwgICAgICB8ICAxMjMgKysrCiAuLi4vYmluZGluZ3MvcGh5L3p0ZSx6eDI5
NzUyMHYzLXVzYi1waHkueWFtbCAgICAgICB8ICAgOTYgKysKIE1BSU5UQUlORVJTICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxMCArCiBhcmNoL2FybS9ib290L2R0
cy96dGUvengyOTc1MjB2My5kdHNpICAgICAgICAgICAgICB8ICAgOTIgKy0KIGRyaXZlcnMvY2xr
L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMSArCiBkcml2ZXJz
L2Nsay9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDEgKwogZHJp
dmVycy9jbGsvenRlL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDI3ICsK
IGRyaXZlcnMvY2xrL3p0ZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
NiArCiBkcml2ZXJzL2Nsay96dGUvY2xrLXJlZ21hcC5jICAgICAgICAgICAgICAgICAgICAgICB8
ICAyNDYgKysrKysKIGRyaXZlcnMvY2xrL3p0ZS9jbGstenguYyAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDE1NSArKysKIGRyaXZlcnMvY2xrL3p0ZS9jbGstenguaCAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICA5MCArKwogZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMg
ICAgICAgICAgICAgICAgICAgfCAxMDQ1ICsrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2Ns
ay96dGUvcGxsLXp4LmMgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1MjAgKysrKysrKysr
KwogZHJpdmVycy9yZXNldC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
IDEwICsKIGRyaXZlcnMvcmVzZXQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAgMSArCiBkcml2ZXJzL3Jlc2V0L3Jlc2V0LXp0ZS16eDI5NzUyMHYzLmMgICAgICAgICAg
ICAgICB8ICAyMzcgKysrKysKIGRyaXZlcnMvc29jL0tjb25maWcgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICAgMSArCiBkcml2ZXJzL3NvYy9NYWtlZmlsZSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgIDEgKwogZHJpdmVycy9zb2MvenRlL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDIwICsKIGRyaXZlcnMvc29jL3p0ZS9NYWtlZmlsZSAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMyArCiBkcml2ZXJzL3NvYy96dGUvengyOTc1
MjB2My1jcm0uYyAgICAgICAgICAgICAgICAgICB8ICAgOTkgKysKIGluY2x1ZGUvZHQtYmluZGlu
Z3MvY2xvY2svenRlLHp4Mjk3NTIwdjMtY2xrLmggICAgIHwgIDE0NCArKysKIGluY2x1ZGUvZHQt
YmluZGluZ3MvcGh5L3BoeS16dGUtengyOTc1MjB2My11c2IuaCAgIHwgICAxMiArCiBpbmNsdWRl
L2R0LWJpbmRpbmdzL3Jlc2V0L3p0ZSx6eDI5NzUyMHYzLXJlc2V0LmggICB8ICAgNjMgKysKIDI2
IGZpbGVzIGNoYW5nZWQsIDMxODcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKLS0tCmJh
c2UtY29tbWl0OiBiZWU3NjNkNWYzNDFiOTljZjQ3MmFmZWI1MDhkNDk4OGY2MmE2Y2ExCmNoYW5n
ZS1pZDogMjAyNjA1MTAtengyOWNsay0yZTRkMzllMzEyOGMKCkJlc3QgcmVnYXJkcywKLS0gClN0
ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

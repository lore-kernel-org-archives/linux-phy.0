Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D17E606A33F
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 19:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jX2zHTj3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=i4wt1GUh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VzGSNF50VHEEml1+xbw4BmHeB+vQ5hAaBTzpQbr9P8E=; b=jX2zHTj3ceZQMa1LCprr1Oneku
	EaWc68qqaK3FrEmeCGVzCb/u+q+iIv1BCSGjtM8NXQOFxOB4OVRDXzbn3agFzjm0EmjePIZixT5Ah
	oiBdALwAxDJpdQH11ib1362cILJxru69m4y18OpLuqX+B9+n6RFjAZjLkS9fJSkvkGdh+iGGVs1BD
	hUQKBa/JoSABHCCSrp+JAniEIgPTSM13UTxGdq/0G8KGhNp2OcVZlQI8m2Ts52cxfOlkMGniLZFkP
	iPiGv3KBUUfJcu+sFxVvvoXru0fp1h7wG6ZPS76yIS1GTkFbxYgcJ1D8EoXZp8VViAKFiyIxSJ7Fv
	YOcSudBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUBA-0000000G42h-0ZLY;
	Fri, 20 Nov 2026 19:21:48 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUAi-0000000G3tW-04ql
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 19:21:23 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-4a3e706b5dfso894262f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 20 Nov 2026 11:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795202478; x=1795807278; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=M1PD8j6SB5PHO7xYIjTJBlDsua4DeMv0pZZa5raCSBY=;
        b=i4wt1GUhMZNgHyxOEhg/v4qqLM1n5zwSyPZSUk04YzIcIRlPh7XlQUPhVyZx4Za5mv
         0OB/KXZXo9ilvkPkIumskG9BcEKjUkontNKVOkxCZrHkOIPaj/d4801wIz+8t8neXwAS
         YogLJLXr5uDAAbXs8oUWwl7D5cL6W/sr4f6L3U6wHxFvvcS1XVAQgI7wvbOAMJLEgdNT
         4yY6PcFd+ym7J38+Y06dPVIq4IMpNd4f2FYv5EabW4xqMI01SJnPrRuFkgPSexrc99nW
         s38YUwnupXRVWh7ECMuNrSTgv6Yas91hPAO5bczP2V1LE4lAfvpnexGpTnU21tfVECZ6
         puEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795202478; x=1795807278;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=M1PD8j6SB5PHO7xYIjTJBlDsua4DeMv0pZZa5raCSBY=;
        b=pCpe36jE4/7UMOgiQ2Leq6xCFWQfekYKKEA4WSCIyPwJ5ZQyTCAyJSI430J15AJcxq
         Z1UFmXwEUOdKPhtN5RdoYCH1tkST/zgXDHSTSV7O2+B9y4iQnT/+cwhd0QGuk9xFCpYg
         b+lrGFaTmB2eKt/8+TTqcDJCT3ybiRMmleM31Sg3c/Yk/oOU7uLIWUqfzmNeBdrsXGvI
         JOA0b5KK/IFqKtgo5HcMMEzHts7AmAyoBUfu20qWyKEQfH1cPJNh/+6J3sQysMG2HVoh
         OVNTrB0DtNM4/kA3N32jcyWJWmXRGLEPPQtQs/hOxVN8CfJR+fuoFZoHACcCGlBLrBOa
         LxDg==
X-Forwarded-Encrypted: i=1; AL+hErF1e3+87o14s/zrwNMvkX3IALjIDj9eEM1BPkJEBAIrvhk02WU2VqbVCIY1qd9MSX2JcYBvqBB+fag=@lists.infradead.org
X-Gm-Message-State: APuU4Z9kZxBtvEwacG4forfG1f5vYIrC2pquALp94wZ6BMLJ2fweTAIx
	6hwBC3Cx8DzNo484yoIIvp9ei1RvySfS3xTUnqzjW2JhO13ZbqsgVKGN
X-Gm-Gg: AZFdTZdVKFzozb1gb3h88IHZeuD+lNsWPnLy953ckVQuV5FH9oJsBxiya+YPgNyyTrj
	nDBztCkzbQ7PRyCIqaPds1dWsO+icj4c8vkY5Ym0oCvtMqBOJ3zN69xLwSAzE8FQb1fTxr4cckK
	vCxOiuYkw4mduwGn5x7g7CcI6fA95TcaeEz5KkQ9H7Xxq9MzTgeiDOhWscXFwJ95yXmghPlMJjF
	pAr9PYfPoBUdk20xhMAb625OIWWKUmJY2nWdJ6E1+DPbCNqXxuJVGsOT+v1NHFsSU0HoPMDi0S+
	HzhaHeSk6GlhRo6lN9vwKhRl0ldcRMu/Nld59+Mz2Rbz6G3qrQ/ipXV+vfW3eYLObd4b7pJYU1+
	LNJzXzYL3OYXyw0m/XhRXhXYpRuzBqwB6Ukeb6wGQhnszKFmwWVKdOWsPVfklxCVXFVq4gRoWeK
	9gpNjjzV+i4gGEGSUKQct6ekayBK3/ueKg7OZM0u8+Oit7T3yd+1V1sScRaTVwBIaflPpjR42op
	KUVUTNz5T5XZBULHcNpcKP4ODSdTj2UkzJX+6eswmuoO04bwM/rAjWKy2huaSDfpJTt8nO2ERAx
	FJmaUakzgnH/zDTBnqNoko0p9syYLxEPh4zepRLpI2yl7JgiKfzNcWzTnV+DAg==
X-Received: by 2002:adf:e014:0:20b0:4a4:ee9f:a3d9 with SMTP id ffacd0b85a97d-4abb3d2c028mr6479804f8f.16.1795202477805;
        Fri, 20 Nov 2026 11:21:17 -0800 (PST)
Received: from [192.168.0.2] ([197.250.160.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6a67f204sm8405703f8f.21.2026.11.20.11.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 11:21:16 -0800 (PST)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Fri, 20 Nov 2026 22:20:51 +0300
Subject: [PATCH 2/6] mfd: zx297520v3: Add socsys to the mfd host driver
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-zx29usb-v1-2-b0433258e51b@gmail.com>
References: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
In-Reply-To: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee@kernel.org>, 
 Ulf Hansson <ulfh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Agustin Santiago Isasmendi <isasmendi.agus@gmail.com>, 
 Navid Ghahremani <ghahramani.navid@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, mfd@lists.linux.dev, 
 linux-pm@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2235;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=haBO5T9O8DxAeLkHhQl6vHvSOM2ApNjiaO+2we2t8aM=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBrAJ2WR3OKSSthkwM8w2YGowPMIiV8WT0ADPYEg
 gyX3RTbznaJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCawCdlhsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiJkcA/8CdzFthVu8Y5p4obuulOSnPPIeLQWVnC
 UpCUT/7T/s39YYU9rQ4pkMeAqBP7ctNWI21AIp9weT6VcqwQYN5x4QtRqXyFUSYTWQh1UnuZzO/
 uGObg2YzD/iK1GSAHk+30Ia3CYmsHJ7m9KuqJ9V6Mt7NNwSiaUTUKbFnk3FVauzrAYWxtpPnzyD
 d1zZ6BANKQVtMIQZQitU5JruOEKaTAqI1iKobUI8TnrqBXgFVzPxvF1Ik5skRlkWGkcYmxp7lhT
 U4nsJy9P/R0FT1hkJdo4AGdrDTkMjHKOh28vHZTGjwwlAePl7Zbt5PzvmiVIIrsBKDAVvbtx9+x
 veAk1nCXL8il4O1ssjB8MBk3Y47cNzVLeV/eZAYSHXacsk2RGACAL4QciW9wPRMS2g9KPy7p/gR
 83CGrOjaPU2i1O+GQq7VhXn9WXWTreWgQGYpPus75EeoBmZJfbtkQw46XMHxMB/0tpuAp3Gwujh
 5d+56Qd4I6w+xqBvuQAJHBCOlGbKKilro5h9H+P+lcy/DvSCQBcqpsm+V+c249lxUykPTWYbMRc
 SGVEQv0O/w42BhSCtahVA2SwKuD7dzvxDl8DL2+OeVCJt8sRgY2To86kbvtoabvrprLodxo8L+0
 ZLJqtiSbQRMUSLLn3do8j1mpqqou+WNLFwjlh/1DQcrHo23Mh454=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_112122_116718_57B44A6B 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: 2.2 (++)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhpcyBwYXRjaCBhZGRzIHRoZSBwYXJ0cyBvZiB0aGUgengyOTc1MjB2MyBzb2NzeXMgY29udHJv
bGxlciwgdGhhdCBjYW4KYmUgZXhwb3NlZCB2aWEgZXN0YWJsaXNoZWQgZHJpdmVyIEFQSXMgdG8g
dGhlIE1GRCBob3N0IGRyaXZlciwgc28gdGhhdApkcml2ZXJzIGluIHRoZSByZXNwZWN0aXZlIHN1
YnN5c3RlbXMgY2FuIGNvbnN1bWUgdGhlbS4gRm9yIG5vdyB0aGVzZSBhcmUKYSByZXNldCBjb250
cm9sbGVyIGZvciBFdGhlcm5ldCBhbmQgbWF5YmUgbW9yZSwgYW5kIGEgcG93ZXIgZG9tYWluCmNv
bnRyb2xsZXIgZm9yIFVTQiwgR1NNIGFuZCBwb3NzaWJseSBhIGNyeXB0b2dyYXBoaWMgZW5naW5l
LgoKU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWls
LmNvbT4KCi0tLQoKVGhpcyBzZXJpZXMgZG9lcyBub3QgY29udGFpbiBhIGRyaXZlciBmb3IgdGhl
IHJlc2V0IGNoaWxkLCBhcwppbXBsZW1lbnRpbmcgRXRoZXJuZXQgaXMgYmV5b25kIHRoZSBzY29w
ZSBvZiB0aGUgc2VyaWVzIGFuZCBuZWVkcyBvdGhlcgpwcmVyZXF1aXNpdGVzIChuYW1lbHkgcGlu
Y29udHJvbCkuCi0tLQogZHJpdmVycy9tZmQvenRlLXp4Mjk3NTIwdjMtY3JtLmMgfCAxMiArKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZmQvenRlLXp4Mjk3NTIwdjMtY3JtLmMgYi9kcml2ZXJzL21mZC96dGUtengyOTc1
MjB2My1jcm0uYwppbmRleCA3YzI5YTg2MGJlM2YuLjNkNTQyZTNkZDdiOCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9tZmQvenRlLXp4Mjk3NTIwdjMtY3JtLmMKKysrIGIvZHJpdmVycy9tZmQvenRlLXp4
Mjk3NTIwdjMtY3JtLmMKQEAgLTIzLDYgKzIzLDcgQEAgZW51bSB6eF9kZXZpY2VfdHlwZSB7CiAJ
VFlQRV9UT1BDUk0sCiAJVFlQRV9NQVRSSVhDUk0sCiAJVFlQRV9MU1BDUk0sCisJVFlQRV9TT0NT
WVMsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG1mZF9jZWxsIHp4Mjk3NTIwdjNfdG9wY3Jt
X2NlbGxzW10gPSB7CkBAIC00Miw2ICs0MywxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1mZF9j
ZWxsIHp4Mjk3NTIwdjNfbHNwY3JtX2NlbGxzW10gPSB7CiAJTUZEX0NFTExfTkFNRSgiengyOTc1
MjB2My1sc3ByZXNldCIpLAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBtZmRfY2VsbCB6eDI5
NzUyMHYzX3NvY3N5c19jZWxsc1tdID0geworCU1GRF9DRUxMX05BTUUoInp4Mjk3NTIwdjMtc29j
c3lzLXJlc2V0IiksCisJTUZEX0NFTExfTkFNRSgiengyOTc1MjB2My1zb2NzeXMtcG93ZXIiKSwK
K307CisKIHN0YXRpYyBpbnQgengyOTc1MjB2M19jcm1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2OwpAQCAtNzcs
NiArODMsMTEgQEAgc3RhdGljIGludCB6eDI5NzUyMHYzX2NybV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCQkJCQkgICAgICJGYWlsZWQgdG8gZGVhc3NlcnQgcmVzZXQgY29u
dHJvbFxuIik7CiAJCWJyZWFrOwogCisJY2FzZSBUWVBFX1NPQ1NZUzoKKwkJY2VsbHMgPSB6eDI5
NzUyMHYzX3NvY3N5c19jZWxsczsKKwkJbnVtX2NlbGxzID0gQVJSQVlfU0laRSh6eDI5NzUyMHYz
X3NvY3N5c19jZWxscyk7CisJCWJyZWFrOworCiAJZGVmYXVsdDoKIAkJcmV0dXJuIC1FTk9ERVY7
CiAJfQpAQCAtODgsNiArOTksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBv
Zl9tYXRjaF96eDI5NzUyMHYzX2NybVtdID0gewogCXsgLmNvbXBhdGlibGUgPSAienRlLHp4Mjk3
NTIwdjMtdG9wY3JtIiwgLmRhdGEgPSAodm9pZCAqKVRZUEVfVE9QQ1JNIH0sCiAJeyAuY29tcGF0
aWJsZSA9ICJ6dGUsengyOTc1MjB2My1tYXRyaXhjcm0iLCAuZGF0YSA9ICh2b2lkICopVFlQRV9N
QVRSSVhDUk0gfSwKIAl7IC5jb21wYXRpYmxlID0gInp0ZSx6eDI5NzUyMHYzLWxzcGNybSIsIC5k
YXRhID0gKHZvaWQgKilUWVBFX0xTUENSTSB9LAorCXsgLmNvbXBhdGlibGUgPSAienRlLHp4Mjk3
NTIwdjMtc29jc3lzIiwgLmRhdGEgPSAodm9pZCAqKVRZUEVfU09DU1lTIH0sCiAJeyB9CiB9Owog
TU9EVUxFX0RFVklDRV9UQUJMRShvZiwgb2ZfbWF0Y2hfengyOTc1MjB2M19jcm0pOwoKLS0gCjIu
NTYuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
